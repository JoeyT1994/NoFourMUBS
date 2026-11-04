"""Radius-1/50 crossing receipt from the crossing continuation of 28 October 2026 (reference/crossing_continuation_20261028).

The continuation (`larger_crossing.md`, `CONTINUATION.md` section 3) proves: for both recorded crossing patterns, every
actual zero in the full horizontal phase ball ||x|| <= 1/50 has one of the two balanced order-three symmetries, so it is
classified by recognition.  Its inputs are this branch's exact structure receipt, the v3 radius receipt (whose Arb
derivative bounds it dominates by rationals), the equivariant normal inverse and the coefficient-amplitude cubic
construction of crossing_radius.py; the qualitative crossing-surface input of CORE_LEMMA.md is no longer used.

This script (1) checks that the continuation's copies of its inputs are byte-identical to this branch's files, (2)
re-runs its standard-library verifiers: the rational domination of the v3 Arb bounds, both exact Q(sqrt 3) restricted
frequency certificates, and the exact scalar inequalities, and (3) writes a receipt in the v3 schema whose `success`
carries the new radii, for core_crossing.py.  Nothing is decided in floating point.
"""
import argparse, hashlib, json, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent                                   # the xball directory
REF = ROOT / 'reference/crossing_continuation_20261028'
COPIES = {'input/crossing/crossing_structure_20261028.json': 'results/crossing_structure_20261028.json',
          'input/crossing/crossing_radius_20261028_v3.json': 'results/crossing_radius_20261028_v3.json',
          'input/crossing/prior_local_CHECKPOINT.md': 'reference/prior_local_CHECKPOINT.md',
          'input/crossing/crossing_radius.py': 'experiments/crossing_radius.py',
          'input/crossing/crossing_structure.py': 'experiments/crossing_structure.py',
          'input/crossing/QUANTITATIVE_CROSSING.md': 'experiments/QUANTITATIVE_CROSSING.md'}
VERIFIERS = ['verify_all.py', 'crossing_scalar_certificate.py', 'projected_frequency_bounds.py', 'interval_support.py',
             'larger_crossing.md', 'lemma_audit.md', 'CONTINUATION.md']


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, default=ROOT / 'results/crossing_radius_20261028_v4.json')
    args = p.parse_args()
    if args.output.exists(): p.error('output exists')
    for theirs, ours in COPIES.items():
        if digest(REF / theirs) != digest(ROOT / ours):
            raise ArithmeticError('continuation input differs from this branch: ' + ours)
    sys.path.insert(0, str(REF))
    import verify_all as VA, projected_frequency_bounds as PF, crossing_scalar_certificate as CS
    structure, bindings = VA.check_input_bindings()                  # asserts; rational domination of the v3 bounds
    frequency = [PF.verify_pattern(q) for q in structure['patterns']]  # raises unless both strict bounds hold
    scalar = CS.certify()                                            # asserts every exact scalar inequality
    if not scalar['all_exact_scalar_checks_passed']: raise ArithmeticError('scalar certificate failed')
    sys.path.insert(0, str(ROOT))
    import run_xball as RX
    v3 = json.loads((ROOT / 'results/crossing_radius_20261028_v3.json').read_text())
    sources = {str((REF / name).relative_to(ROOT)): digest(REF / name) for name in VERIFIERS}
    sources.update({ours: digest(ROOT / ours) for ours in COPIES.values()})
    sources['experiments/crossing_radius_v4.py'] = digest(__file__)
    success = dict(ambient_radius_fraction=[201, 10000], ambient_radius=scalar['ambient_radius']['decimal_upper'],
                   kernel_radius='0.02', normal_radius='0.001', full_phase_ball_radius_fraction=[1, 50],
                   full_phase_ball_radius='0.02', q=scalar['graph_majorants']['normal_q']['decimal_upper'],
                   normal_image_bound=scalar['graph_majorants']['normal_image']['decimal_upper'],
                   mixed_rank_one_defect_bound=scalar['mixed_defect_upper']['decimal_upper'])
    patterns = []
    for old in v3['patterns']:
        patterns.append(dict(number=old['number'], status='CERTIFIED LOCAL PHASE NEIGHBOURHOOD',
                             conditional_on=['exact structure receipt (crossing_structure_20261028.json)',
                                             'equivariant normal inverse and coefficient-amplitude cubic bounds of '
                                             'crossing_radius.py (v3 receipt, dominated by rationals)',
                                             'recognition theorem (seed_method/reference/r0153/CHECKPOINT.md section 8)',
                                             'larger_crossing.md (radius-1/50 theorem; no qualitative surface input)'],
                             physical_actions_exact=old['physical_actions_exact'], success=success,
                             classification_phase_radius='0.02 (full horizontal phase ball)'))
    receipt = dict(status='CERTIFIED LOCAL PHASE NEIGHBOURHOODS', base_binding=v3['base_binding'],
                   current_base_binding=RX.binding()['id'], sources_sha256=sources, patterns=patterns,
                   verification=dict(bindings=bindings, frequency=frequency,
                                     scalar_checks=scalar['checks']))
    if receipt['current_base_binding'] != receipt['base_binding']: raise ArithmeticError('base binding changed')
    args.output.write_text(json.dumps(receipt, indent=1) + '\n')
    print(json.dumps(dict(status=receipt['status'], radius='1/50', mixed_defect=success['mixed_rank_one_defect_bound'])))


if __name__ == '__main__':
    main()
