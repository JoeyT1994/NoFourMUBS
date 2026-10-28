#!/usr/bin/env python3
"""Reconstruct the two crossing preconditioners and certify their norms.

Run in a fresh process: the upstream X-ball and native runners have
same-named bootstrap modules. Exact crossing structure remains a bound
upstream input; all preconditioner and derivative bounds are recomputed.
"""
from pathlib import Path
import argparse
import hashlib
import json
import sys

HERE = Path(__file__).resolve().parent
X = HERE.parent/'xball'
sys.path[:0] = [str(X/'experiments'), str(X)]
import crossing_radius as CR
import run_xball as RX
from flint import arb, ctx


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('output exists')
    ctx.prec = 224
    base = RX.binding()
    exact_path = X/'results/exact_centres.json'
    structure_path = X/'results/crossing_structure_20261028.json'
    exact = json.loads(exact_path.read_text())
    structure = json.loads(structure_path.read_text())
    if exact['base_binding'] != base['id'] or structure['base_binding'] != base['id']:
        raise ArithmeticError('upstream crossing binding mismatch')
    controller = Path(CR.CS.__file__)
    if structure['controller_sha256'] != hashlib.sha256(controller.read_bytes()).hexdigest():
        raise ArithmeticError('crossing structure controller mismatch')
    files = [exact_path, structure_path, controller, Path(CR.__file__), Path(__file__)]
    hashes = {str(p.relative_to(HERE.parent)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
    original = CR.derivative_bounds
    captured = []
    def capture(matrix, phases):
        h2, h3, gram = original(matrix, phases)
        captured.append((CR.Z.spectral(matrix), h2, h3, gram))
        return h2, h3, gram
    CR.derivative_bounds = capture
    patterns = []
    for entry in structure['patterns']:
        captured.clear()
        result = CR.certify(exact['patterns'][entry['number']], entry)
        if len(captured) != 2:
            raise ArithmeticError('unexpected preconditioner capture count')
        (alpha, h2, h3, hg), (beta, g2, g3, gg) = captured
        if not (arb(result['normal_inverse_defect']) < arb(1)/10**14
                and h2 < arb(1167)/500 and h3 < 63
                and g2 < arb(147)/20 and g3 < 105 and hg == gg == 308):
            raise ArithmeticError('enlarged crossing hypotheses not reproduced')
        patterns.append(dict(number=entry['number'],
            normal_inverse_norm_upper_hex=CR.Z.upper(alpha).hex(),
            obstruction_norm_upper_hex=CR.Z.upper(beta).hex(),
            normal_inverse_defect=result['normal_inverse_defect'],
            derivative_bounds={k:str(v) for k, v in dict(h2=h2,h3=h3,g2=g2,g3=g3).items()}))
    if (hashes != {str(p.relative_to(HERE.parent)):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
            or base != RX.binding()):
        raise ArithmeticError('source changed during norm reconstruction')
    result = dict(status='CERTIFIED PRECONDITIONER NORMS AND DERIVATIVE BOUNDS',
                  base_binding=base, sources=hashes, patterns=patterns,
                  residual_normalization='Gram unscaled; mixed divided by 6; horizontal 72 phases',
                  exact_crossing_structure_dependency=str(structure_path.relative_to(HERE.parent)),
                  all_k_or_boundary_cover_certified=False)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps(dict(status=result['status'], patterns=patterns)), flush=True)


if __name__ == '__main__':
    main()
