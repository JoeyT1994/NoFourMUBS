"""Exact positive and negative checks for optional compact coverage schema.

Run from any directory: python cert/test_cap_coverage_compact.py
These finite checker tests do not certify an X-ball cap-transfer theorem.
"""
from copy import deepcopy
from itertools import product
import json
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parent))
import cap_coverage as C


def run():
    caps = []
    for i, sign in product(range(4), [-1, 1]):
        normal = [0] * 4
        normal[i] = sign
        caps.append({'v': normal, 'h': '1/2'})
    results = {}
    for threshold in ('1/2', '49/100', '51/100'):
        cc = deepcopy(caps)
        for cap in cc:
            cap['h'] = threshold
        original = C.construct_coverage_certificate(cc)
        compact = C.construct_coverage_certificate(cc, compact=True)
        result_original = C.verify_coverage(cc, original)
        result_compact = C.verify_coverage(cc, compact)
        assert result_original == result_compact
        assert result_compact['passed'] == (threshold != '51/100')
        results[threshold] = result_compact
    original = C.construct_coverage_certificate(caps)
    compact = C.compact_coverage_certificate(original)
    assert C.verify_coverage(caps, compact)['passed']
    negatives = {}
    for name in ('missing_facet', 'duplicate_facet', 'wrong_index',
                 'missing_cap', 'mixed_schema'):
        cc, certificate = deepcopy(caps), deepcopy(compact)
        if name == 'missing_facet':
            certificate['simplices'].pop()
        elif name == 'duplicate_facet':
            certificate['simplices'].append(certificate['simplices'][0])
        elif name == 'wrong_index':
            certificate['simplices'][0][0] = 100
        elif name == 'missing_cap':
            cc.pop()
        elif name == 'mixed_schema':
            certificate['facets'] = original['facets']
        result = C.verify_coverage(cc, certificate)
        assert not result['passed'], name
        negatives[name] = result
    results['negative_tests'] = negatives
    results['status'] = 'CERTIFIED exact integer replay'
    return results


if __name__ == '__main__':
    print(json.dumps(run(), indent=2))
