"""Export the existing SOS verifier's equations, without another proof route.

The original target construction and primitive equations are executed unchanged.
We also evaluate that same target before its stored projection, so a direct
rational linear-combination witness can replace the rank argument in Lean.
This export is not itself a Lean certificate or a semantic proof.
"""
from pathlib import Path
from fractions import Fraction
import gzip
import hashlib
import json
import textwrap
from reuse_preflight import require_reuse_review

require_reuse_review('sos_witness')

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT.parent / 'lean_proof_2026_10_09' / 'verify_one_identity.py'
EXPECTED = '507f465f740fa9c30d0cee1f7b2e5cd39dc3ef7ef038b1ad0f106362ad925573'
assert hashlib.sha256(SOURCE.read_bytes()).hexdigest() == EXPECTED
source = SOURCE.read_text()
marker = '    residual=final(v)\n'
assert source.count(marker) == 1
source = source.replace(marker, '    capture(locals())\n    return\n' + marker)
namespace = {'__file__': str(SOURCE), '__name__': 'sos_export'}
exec(compile(source, str(SOURCE), 'exec'), namespace)

captured = {}
systems = []
original_verify = namespace['verify_projection']


def verify_and_record(P, free, witnesses, equation, select):
    rows = []

    def record(w):
        row = equation(w)
        rows.append(row)
        return row

    result = original_verify(P, free, witnesses, record, select)
    systems.append({'rows': rows, 'witnesses': witnesses})
    return result


namespace['verify_projection'] = verify_and_record
namespace['capture'] = lambda state: captured.update(state)
namespace['main'](None)
assert len(systems) == 2

lin, ev, canon = (namespace[k] for k in ('lin', 'ev', 'canon'))
initial = captured['initial']


def raw_moment(A):
    return lin(ev(canon(A)), initial)


# Reuse the verifier's complementary-equation function with its projection
# removed. No primitive mathematical equation is invented here.
n_equation = captured['n_equation']
moment_cell = dict(zip(n_equation.__code__.co_freevars, n_equation.__closure__))['moment']
moment_cell.cell_contents = raw_moment
raw_same = [n_equation(w) for w in captured['nws']]

# Execute exactly the existing target expansion, changing only the moment map.
target_start = source.index('    # Direct scalar construction,')
target_end = source.index('    capture(locals())', target_start)
target_code = textwrap.dedent(source[target_start:target_end])
target_scope = {**namespace, **captured, 'moment': raw_moment}
exec(compile(target_code, str(SOURCE) + ':unprojected-target', 'exec'), target_scope)
target = target_scope['v']

# Check that the raw equations and target project to precisely the quantities
# already checked by the original verifier.
P = captured['P']
project = lambda row: lin(row, lambda A: P.get(A, {A: Fraction(1)}))
assert all(project(a) == b for a, b in zip(raw_same, systems[1]['rows']))
assert project(target) == captured['v']
assert not captured['final'](captured['v'])

rows = systems[0]['rows'] + raw_same
coordinates = sorted(set(target).union(*(set(row) for row in rows)))
number = {A: i for i, A in enumerate(coordinates)}


def encode(row):
    return [[number[A], str(c)] for A, c in sorted(row.items()) if c]


output = {
    'status': 'EXPORTED_EXACT_SYSTEM_NOT_A_LEAN_PROOF',
    'source_sha256': EXPECTED,
    'source': str(SOURCE.relative_to(ROOT.parent)),
    'coordinates': coordinates,
    'rows': [encode(row) for row in rows],
    'target': encode(target),
    'base_row_count': len(systems[0]['rows']),
    'complementary_row_count': len(raw_same),
    'witnesses': systems[0]['witnesses'] + captured['nws'],
    'remaining_semantics': [
        'Interpret target as the actual conditional SOS.',
        'Prove canonicalization and all primitive equations for actual moments.',
        'Kernel-check a direct rational combination of these equations.',
    ],
}
directory = ROOT / 'audit' / 'sos'
directory.mkdir(exist_ok=True)
if not globals().get('CAPTURE_ONLY', False):
    with gzip.open(directory / 'primitive_system.json.gz', 'wt') as f:
        json.dump(output, f, separators=(',', ':'))
print(json.dumps({
    'coordinates': len(coordinates), 'equations': len(rows),
    'equation_terms': sum(map(len, rows)), 'target_terms': len(target),
    'output': 'audit/sos/primitive_system.json.gz',
}), flush=True)
