"""Real-certificate replay and requested mutation regressions for ZC2a.

Only Arb/integers decide acceptance.  --compare-local additionally generates
untrusted local_sphere proposals and independently replays each one.
"""
import argparse
import copy
import gzip
import json
from pathlib import Path
import sys
import time

ROOT = Path(__file__).resolve().parent
for directory in (ROOT/'atlas', ROOT/'cert', ROOT/'ZC'):
    sys.path.insert(0, str(directory))

import caps as CAPS
import cap_coverage as COV
import edge_wholeball as EW
import seedcert as S


def load(path):
    opener = gzip.open if str(path).endswith('.gz') else open
    with opener(path, 'rt') as handle:
        return json.load(handle)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', default='data/xball_headers.json.gz')
    parser.add_argument('--caps', required=True)
    parser.add_argument('--receipt', default='results/verifier_tests.json')
    parser.add_argument('--compare-local', action='store_true')
    args = parser.parse_args()
    started = time.perf_counter()
    data, certificate = load(args.input), load(args.caps)
    source = data['edge'][0]
    groups = source['transfers']
    seeds = [S.Ball(s) for s in data['seed_headers']]
    model = EW.edge_model(source)
    transfers = {}
    def transfer(gi):
        if gi not in transfers:
            group = groups[gi]
            transfers[gi] = EW.EdgeTransfer(model, seeds[group['target']], group)
        return transfers[gi]
    cap_list = certificate.get('caps', [certificate.get('cap')])
    positives, local_caps = [], []
    for index, cap in enumerate(cap_list):
        tick = time.perf_counter()
        result = CAPS.check_cap(model, transfer(cap['group_index']), cap)
        positive = dict(index=index, group_index=cap['group_index'], replay=result,
                        seconds=time.perf_counter()-tick)
        print(json.dumps(dict(index=index, **result)), flush=True)
        if args.compare_local:
            import xball_construct as XC
            tick = time.perf_counter()
            nt = XC.EdgeNumericTransfer(model, seeds[groups[cap['group_index']]['target']],
                                       groups[cap['group_index']], cap['group_index'])
            nt.enable_weighting()
            proposed = nt.cap(cap['v'], mode='local_sphere')
            if proposed is not None:
                local_result = CAPS.check_cap(model, transfer(cap['group_index']), proposed)
                positive['local_sphere'] = dict(cap=proposed, replay=local_result,
                                               seconds=time.perf_counter()-tick)
                if local_result['ok']:
                    local_caps.append(proposed)
                print(json.dumps(dict(index=index, comparison='local_sphere',
                                      numerical_radius=proposed['info']['numerical_radius'],
                                      seconds=time.perf_counter()-tick, **local_result)), flush=True)
            else:
                positive['local_sphere'] = dict(status='NOT ESTABLISHED', reason='no proposal')
        positives.append(positive)
    first = cap_list[0]
    negatives = []
    enlarged = copy.deepcopy(first)
    h = float.fromhex(first['h']) if isinstance(first['h'], str) else first['h']
    enlarged['h'] = float(h/2).hex()
    result = CAPS.check_cap(model, transfer(first['group_index']), enlarged)
    negatives.append(dict(test='enlarged cap', changed_h=enlarged['h'],
                          rejected=not result['ok'], replay=result))
    tampered = copy.deepcopy(first)
    tampered['s'] = 0
    result = CAPS.check_cap(model, transfer(first['group_index']), tampered)
    negatives.append(dict(test='tampered witness', changed_s=0,
                          rejected=not result['ok'], replay=result))
    # A different valid index is tested against its actual new descriptor.
    # An alternative descriptor that also proves the cap must remain valid.
    for gi in range(min(len(groups), 20)):
        if gi == first['group_index']:
            continue
        wrong = copy.deepcopy(first)
        wrong['group_index'] = gi
        result = CAPS.check_cap(model, transfer(gi), wrong)
        if not result['ok']:
            negatives.append(dict(test='wrong group_index', original_group=first['group_index'],
                                  changed_group=gi, rejected=True, replay=result))
            break
    else:
        negatives.append(dict(test='wrong group_index', rejected=False,
                              reason='all attempted alternative descriptors also accepted'))
    coverage = None
    if certificate.get('coverage'):
        geometries = [{'v': c['v'], 'h': c['h']} for c in cap_list]
        coverage = COV.verify_coverage(geometries, certificate['coverage'])
        result = COV.verify_coverage(geometries[1:], certificate['coverage'])
        negatives.append(dict(test='dropped cap', dropped_index=0,
                              rejected=not (result.get('passed') and result.get('covers')),
                              replay=result))
    else:
        negatives.append(dict(test='dropped cap', status='NOT RUN',
                              reason='input has no complete sphere coverage certificate'))
    out = dict(positive_replays=positives, coverage=coverage, negative_tests=negatives,
               local_caps=local_caps, seconds=time.perf_counter()-started)
    out['status'] = ('PASS' if all(p['replay']['ok'] for p in positives)
                     and all(n.get('rejected', False) for n in negatives)
                     and coverage and coverage.get('passed') and coverage.get('covers')
                     else 'PARTIAL' if all(p['replay']['ok'] for p in positives) else 'FAIL')
    Path(args.receipt).write_text(json.dumps(out, indent=2)+'\n')
    print(json.dumps(dict(status=out['status'], seconds=out['seconds'],
                         negative_tests=negatives)), flush=True)
    return 0 if out['status'] != 'FAIL' else 1


if __name__ == '__main__':
    raise SystemExit(main())
