"""Find and exactly verify one direct witness for the existing SOS target.

Sparse elimination is only certificate discovery. The output is independently
checked by multiplying its rational coefficients into the exported equations.
Its Lean semantics and kernel arithmetic remain separate proof obligations.
"""
from pathlib import Path
from fractions import Fraction as Q
import gzip
import hashlib
import json
import time
from reuse_preflight import require_reuse_review

require_reuse_review('sos_witness')

ROOT = Path(__file__).resolve().parent / 'sos'
source = ROOT / 'primitive_system.json.gz'
with gzip.open(source, 'rt') as f:
    system = json.load(f)
rows = [{i: Q(c) for i, c in row} for row in system['rows']]
target = {i: Q(c) for i, c in system['target']}
from sos_linear import combination
start = time.monotonic()
coefficients = combination(rows, target, log_every=250)

output = {
    'status': 'EXACT_DIRECT_COMBINATION_CHECKED_NOT_YET_LEAN',
    'primitive_system_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
    'identity': 'target = sum_i coefficients[i] * primitive_equation[i]',
    'coefficients': [[i, str(c)] for i, c in sorted(coefficients.items())],
    'used_equations': len(coefficients),
    'total_equations': len(rows),
    'used_primitive_terms': sum(len(rows[i]) for i in coefficients),
    'target_terms': len(target),
    'maximum_coefficient_digits': max(len(str(c)) for c in coefficients.values()),
    'seconds': time.monotonic() - start,
}
(ROOT / 'direct_witness.json').write_text(json.dumps(output, indent=2) + '\n')
print(json.dumps({k: v for k, v in output.items() if k != 'coefficients'}), flush=True)
