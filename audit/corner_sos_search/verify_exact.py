"""Exact standalone replay of a future rational SOS candidate, not an atlas.

Expected identity: bound - target = sum weight*|q|^2 + sum a*f
                                  + sum weight*(1 +/- Re(z^e)).
Only bound <= 0 proves the requested conclusion. A positive bound is rejected.
Each q has rational coefficients in one of the recorded Gram bases. The last
terms are nonnegative because |z^e|=1. All equalities and Gram indices are
reconstructed from the physical equations rather than trusted from the export.
"""
import argparse
from fractions import Fraction as Q
import gzip
import hashlib
import importlib.util
import json
from pathlib import Path
import sys

import search as s
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
from sos_linear import add_scaled


def rational(v):
    if type(v) not in (str, int):
        raise ValueError('Exact certificates require rational strings or integers.')
    return Q(v)


def replay(model_path, certificate_path):
    raw = gzip.open(model_path, 'rb').read()
    model = json.loads(raw)
    cert = json.loads(Path(certificate_path).read_text())
    if cert['model_sha256'] != hashlib.sha256(raw).hexdigest():
        raise ValueError('Certificate is for a different model.')
    bound = rational(cert['bound'])
    if bound > 0:
        raise ValueError('A positive upper bound does not force corner reality.')
    keys = [tuple(map(tuple, e)) for e in model['moments']]
    lifted = model['metadata'].get('rational_transition_lift', False)
    matrix_count = 6 if lifted else 3
    variable_count = 36*matrix_count
    case = model['metadata'].get('classification_case')
    if (len(set(keys)) != len(keys) or
        any(s.real_key(e) != e or s.exponent(e) != e or
            any(type(i) != int or type(v) != int or not 0 <= i < variable_count for i,v in e)
            for e in keys)):
        raise ValueError('Invalid moment coordinates.')
    index = {e: i for i, e in enumerate(keys)}
    zero = index[s.ZERO]
    _, _, _, target, scale, _ = s.load_inputs()
    target = {index[e]: Q(c, scale) for e, c in target.items()}
    if target != {int(i): rational(v) for i, v in model['target'].items()}:
        raise ValueError('Incorrect target.')
    equations = dict(s.quartet_equations())
    if lifted:
        equations.update(s.transition_relations()[0])
    if case is not None:
        equations.update(s.classification_relations(case)[0])
    uses_fourier = model['metadata'].get('uses_upstream_fourier_theorem_with_tao_case_retained', False)
    if uses_fourier:
        equations.update(s.fourier_relations(matrix_count)[0])
    uses_norm = model['metadata'].get('uses_upstream_seven_cofactor_moment_norm_identity', False)
    if uses_norm:
        # Reuse the upstream checker and its exact existing seven-cofactor
        # certificate. Do not rederive its reduction or enumerate its anchors.
        upstream = s.upstream_path()
        for rel, expected in (
            ('verify.py','1704c7dde9a0f5d6840eae6a49c62e6d2810a4a1ba2bfa1330fac2c580ca9f06'),
            ('laurent.py','542829d7fbd80ee567efede42c907e5db3650ea72723d96fece3869e1258b0c5'),
            ('exact_anchors.py','b47f0c733ae40291d035f3551fa1a4ef984dcd799490ecc7a2ed6efea21f6116'),
            ('certificates/scalar_identities.json','b5e23ab511f72c4f188ab7a172014cb3abe682869771f2bb694570643d5f7cd1')):
            if hashlib.sha256((upstream/rel).read_bytes()).hexdigest() != expected:
                raise ValueError('Upstream scalar certificate/checker changed; review required.')
        spec = importlib.util.spec_from_file_location('corner_sos_upstream_verify', upstream/'verify.py')
        checker = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(checker)
        data = json.loads((upstream/'certificates/scalar_identities.json').read_text())
        if checker.expand_certificate(data['moment_norm']) != checker.L.scalar_targets()['moment_norm']:
            raise ValueError('Reused seven-cofactor certificate failed.')
        equations.update(s.moment_norm_relations(matrix_count)[0])
    rows = []
    if len(model['rows']) != len(model['row_provenance']):
        raise ValueError('Missing localizer provenance.')
    for exported, provenance in zip(model['rows'], model['row_provenance']):
        shift = tuple(map(tuple, provenance['multiplier']))
        if any(type(i) != int or type(v) != int or i < 0 or i >= variable_count for i, v in shift):
            raise ValueError('Invalid Laurent exponent.')
        f = equations[provenance['equation']]
        row = s.fold({s.plus(e, shift): v for e, v in f.items()})
        factor = rational(provenance['normalization'])
        row = {index[e]: factor*v for e, v in row.items()}
        if row != {int(i): rational(v) for i, v in exported.items()}:
            raise ValueError('Localizer is not the recorded physical equation.')
        rows.append(row)
    blocks = []
    for _, basis, exported in model['blocks']:
        basis = [tuple(map(tuple, e)) for e in basis]
        if any(any(type(i) != int or type(v) != int or i < 0 or i >= variable_count for i,v in e)
               for e in basis):
            raise ValueError('Invalid Gram exponent.')
        actual = [[index[s.real_key(s.plus(s.neg(a), b))] for b in basis] for a in basis]
        if actual != exported:
            raise ValueError('Incorrect Gram matrix indices.')
        blocks.append(actual)
    rhs = {}
    for block_id, weight, terms in cert.get('squares', []):
        weight = rational(weight)
        if weight < 0 or not 0 <= block_id < len(blocks):
            raise ValueError('Invalid nonnegative square weight or block index.')
        if len({j for j, _ in terms}) != len(terms):
            raise ValueError('Repeated factor index.')
        q = {j: rational(c) for j, c in terms}
        block = blocks[block_id]
        for i, a in q.items():
            for j, b in q.items():
                if not (0 <= i < len(block) and 0 <= j < len(block)):
                    raise ValueError('Factor index outside Gram basis.')
                add_scaled(rhs, {block[i][j]: a*b}, weight)
    for i, c in cert.get('ideal', []):
        if not 0 <= i < len(rows):
            raise ValueError('Invalid equation index.')
        add_scaled(rhs, rows[i], rational(c))
    for i, sign, weight in cert.get('unit_bounds', []):
        weight = rational(weight)
        if weight < 0 or sign not in (-1, 1) or not 0 <= i < len(keys):
            raise ValueError('Invalid unit-monomial bound.')
        add_scaled(rhs, {zero: 1}, weight)
        add_scaled(rhs, {i: sign}, weight)
    lhs = {zero: bound} if bound else {}
    add_scaled(lhs, target, -1)
    if lhs != rhs:
        residual = dict(lhs)
        add_scaled(residual, rhs, -1)
        raise ValueError(f'Exact identity failed: {len(residual)} nonzero coefficients.')
    conclusion = 'Im Psi = 0' if not bound else 'No quartet'
    conclusion += (f' within classification case {case}; other cases still required'
                   if case else ' for every quartet')
    return dict(status='EXACT_RATIONAL_SOS_IDENTITY_CHECKED_NOT_LEAN', bound=str(bound),
                conclusion=conclusion, classification_case=case,
                rational_transition_lift=lifted,
                atlas_used=False, uses_upstream_fourier_theorem=uses_fourier or case is not None,
                uses_upstream_classification=case is not None,
                uses_upstream_moment_norm_identity=uses_norm,
                model_sha256=hashlib.sha256(raw).hexdigest())


if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('model', type=Path)
    p.add_argument('certificate', type=Path)
    args = p.parse_args()
    print(json.dumps(replay(args.model, args.certificate), indent=2))
