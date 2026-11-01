"""Cross-check exact support hierarchy against all-point integer verification.

The fixture is proposed numerically and then checked independently by both
exact paths.  It tests a large hull, a supporting-halfspace violation, and
a duplicated polar point.  It is not an X-ball transfer certificate.
"""
from copy import deepcopy
import json
from pathlib import Path
import sys
import time
sys.path.insert(0, str(Path(__file__).resolve().parent))
import cap_coverage as C


def run(count=512):
    import numpy as np
    rng = np.random.default_rng(20261026)
    vec = rng.normal(size=(count, 4))
    vec /= np.linalg.norm(vec, axis=1)[:, None]
    iv = np.rint(vec * (1 << 24)).astype(np.int64)
    caps = [{'v': list(map(int, vv)), 'h': 1 << 23} for vv in iv]
    certificate = C.construct_coverage_certificate(caps, compact=True)
    results = {}
    for mode in ('direct', 'bvh'):
        started = time.perf_counter()
        result = C.verify_coverage(caps, certificate, support_mode=mode)
        result['seconds'] = time.perf_counter() - started
        assert result['passed'] and result['covers']
        results[mode] = result
    omit = {'support_method', 'support_node_tests', 'support_point_tests', 'seconds'}
    assert {k: v for k, v in results['direct'].items() if k not in omit} == \
           {k: v for k, v in results['bvh'].items() if k not in omit}
    vertices = certificate['simplices'][0]
    numerator, denominator = C.exact_dual_vertex(C.integer_rows(caps), vertices)
    nonmember = next(i for i in range(count) if i not in vertices)
    kk = max(range(4), key=lambda k: abs(numerator[k]))
    altered = deepcopy(caps)
    newv = [0] * 4
    newv[kk] = (1 if numerator[kk] > 0 else -1) * 10 * denominator
    altered[nonmember] = {'v': newv, 'h': 1}
    negatives = {}
    for label, candidate in [('support_violation', altered),
                             ('duplicate_point', caps[:-1] + [deepcopy(caps[0])])]:
        negatives[label] = {}
        for mode in ('direct', 'bvh'):
            result = C.verify_coverage(candidate, certificate, support_mode=mode)
            assert not result['passed'], (label, mode)
            negatives[label][mode] = result
    results['negative_tests'] = negatives
    results['status'] = 'CERTIFIED exact cross-checks on numerical fixture'
    return results


if __name__ == '__main__':
    print(json.dumps(run(), indent=2))
