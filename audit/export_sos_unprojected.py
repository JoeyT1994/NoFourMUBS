"""Expose and eliminate the earlier pair-table projection dependency.

The 668-equation witness initially uses normalized rows from the old pair-table
projection. Here those rows are expanded before that projection. Its remaining
residual is discharged by a direct combination of the ORIGINAL seven-row
equations, so no universal projection/rank theorem needs to be formalized.
"""
from pathlib import Path
from fractions import Fraction as Q
import gzip
import hashlib
import json
import runpy
from sos_linear import add_scaled, combination
from reuse_preflight import require_reuse_review

require_reuse_review('sos_witness')

ROOT = Path(__file__).resolve().parents[1]
DATA = ROOT / 'audit' / 'sos'
state = runpy.run_path(str(ROOT / 'audit' / 'export_sos_system.py'),
                      init_globals={'CAPTURE_ONLY': True})
captured, namespace = state['captured'], state['namespace']
ns = namespace['ns']
witness = json.loads((DATA / 'direct_witness.json').read_text())
selected = {i: Q(c) for i, c in witness['coefficients']}
source_system = json.load(gzip.open(DATA / 'primitive_system.json.gz', 'rt'))

shrink = namespace['shrink']
lin, ev, canon = (namespace[k] for k in ('lin', 'ev', 'canon'))


def no_projection_moment(A):
    return lin(ev(canon(A)), shrink)


# Switch only the intermediate linear map. Primitive equations and the SOS
# target expansion remain the existing verifier's code.
base_equation, n_equation = captured['base_equation'], captured['n_equation']
dict(zip(base_equation.__code__.co_freevars, base_equation.__closure__))['initial'].cell_contents = shrink
dict(zip(n_equation.__code__.co_freevars, n_equation.__closure__))['moment'].cell_contents = no_projection_moment
scope = {**namespace, **captured, 'moment': no_projection_moment}
exec(compile(state['target_code'], 'existing-SOS-target-before-pair-projection', 'exec'), scope)
target = scope['v']
rows = []
residual = dict(target)
base_count = source_system['base_row_count']
for i, coefficient in selected.items():
    primitive = source_system['witnesses'][i]
    row = base_equation(primitive) if i < base_count else n_equation(primitive)
    rows.append(row)
    add_scaled(residual, row, -coefficient)
assert not lin(residual, lambda A: captured['E'].get(A, {A: Q(1)}))
print('Residual before the old projection:', len(residual), 'moment terms.', flush=True)

old_witnesses = []
original_allAB = ns['allAB']


def record_allAB(r, c, output):
    def record(A):
        old_witnesses.append({'seven_row_array': A})
        output(A)
    return original_allAB(r, c, record)


ns['allAB'] = record_allAB
ns['eliminate'] = lambda rows, keys=None: rows
old_rows = ns['pairtable']()
assert len(old_rows) == len(old_witnesses)
old_coefficients = combination(old_rows, residual, log_every=2000)
print('Old primitive equations actually needed:', len(old_coefficients), flush=True)

all_rows = rows + [old_rows[i] for i in sorted(old_coefficients)]
all_coefficients = list(selected.values()) + [old_coefficients[i] for i in sorted(old_coefficients)]
all_witnesses = [source_system['witnesses'][i] for i in selected] + [
    old_witnesses[i] for i in sorted(old_coefficients)]
check = {}
for row, coefficient in zip(all_rows, all_coefficients):
    add_scaled(check, row, coefficient)
assert check == target
coordinates = sorted(set(target).union(*(set(row) for row in all_rows)))
number = {A: i for i, A in enumerate(coordinates)}
encode = lambda row: [[number[A], str(Q(c))] for A, c in sorted(row.items()) if c]
output = {
    'status': 'EXACT_UNPROJECTED_DIRECT_COMBINATION_NOT_YET_LEAN',
    'source': 'Existing SOS target, primitive equations and original pair-table equations',
    'coordinates': coordinates,
    'rows': [encode(row) for row in all_rows],
    'target': encode(target),
    'witnesses': all_witnesses,
    'coefficients': [[i, str(c)] for i, c in enumerate(all_coefficients)],
    'degree12_equations': len(rows),
    'old_pair_equations': len(old_coefficients),
    'normalization': 'Canonicalization, degree-one contraction and six-row shrink only; NO pair-table projection.',
}
path = DATA / 'unprojected_system.json.gz'
with path.open('wb') as raw:
    with gzip.GzipFile(filename='', mode='wb', fileobj=raw, mtime=0) as gz:
        gz.write(json.dumps(output, separators=(',', ':')).encode())
print(json.dumps({
    'equations': len(all_rows), 'coordinates': len(coordinates),
    'target_terms': len(target), 'primitive_terms': sum(map(len, all_rows)),
    'sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
}), flush=True)
