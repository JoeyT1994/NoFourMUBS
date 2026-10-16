"""Read existing SOS data; extract supports without solving/replaying it."""
import ast
from collections import Counter
import gzip
import hashlib
from itertools import permutations, product
import json
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent))
from reuse_preflight import require_reuse_review


def main():
    require_reuse_review('quartet_corner_sos_search')
    root = HERE.parents[2]
    source = root/'paper_two_results_2026_10_15_v7/supporting/moment_identity/verify_one_identity.py'
    witness = HERE.parent/'sos/direct_witness.json'
    primitive = HERE.parent/'sos/primitive_system.json.gz'
    assert hashlib.sha256(source.read_bytes()).hexdigest() == '507f465f740fa9c30d0cee1f7b2e5cd39dc3ef7ef038b1ad0f106362ad925573'
    assert hashlib.sha256(witness.read_bytes()).hexdigest() == '7a934207e1d41076ec1f8860483c3d2c89963027fd70b7bb940bdd462f3e3415'
    tree = ast.parse(source.read_text())
    psi = next(n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name == 'psi')
    # Only this existing pure function is executed. No verifier main, witness
    # solver, projections, numerical atlas or certificate replay is imported.
    module = ast.fix_missing_locations(ast.Module(body=[psi], type_ignores=[]))
    namespace = dict(Counter=Counter, permutations=permutations, product=product)
    exec(compile(module, str(source), 'exec'), namespace)
    coefficients = dict(json.loads(witness.read_text())['coefficients'])
    with gzip.open(primitive, 'rt') as f:
        system = json.load(f)
    base = system['base_row_count']
    records = []
    for i in sorted(coefficients):
        if i >= base:
            records.append(dict(primitive_row=i, old_coefficient=coefficients[i],
                                **system['witnesses'][i]))
    assert len(records) == 9
    data = dict(status='REUSED_SUPPORTS_ONLY_NO_COMPLEMENTARY_EQUALITY_ASSUMED',
                main_commit='0636c223da1a0879b515fc69812332326136829e',
                psi=sorted(namespace['psi']().items()), witness_seeds=records,
                sources=[dict(path=str(p.relative_to(root)),
                              sha256=hashlib.sha256(p.read_bytes()).hexdigest())
                         for p in (source, witness, primitive)])
    path = HERE/'inputs.json'
    content = json.dumps(data, indent=2)+'\n'
    if path.exists() and path.read_text() != content:
        raise RuntimeError('Refusing to replace existing inputs with different data.')
    path.write_text(content)
    print('Reused 55 Psi terms and nine selected witness seeds; no witness regenerated.')


if __name__ == '__main__':
    main()
