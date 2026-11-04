"""Required real-data rejection controls for an X-ball cap certificate.

The untampered selected cap and complete sphere cover must first pass.
The controls then enlarge that cap, remove a cap while retaining its
coverage record, change its group index, and tamper with its witness.
A redundant cap could validly be removed with a recomputed certificate;
this script deliberately tests binding to the retained original record.
"""
from __future__ import annotations
import argparse
from copy import deepcopy
import gzip
from hashlib import sha256
import json
from pathlib import Path
import sys
import time
ROOT = Path(__file__).resolve().parent.parent
sys.path[:0] = [str(ROOT / 'cert'), str(ROOT / 'atlas')]
from flint import ctx
import cap_coverage as COV
import caps as CAPS
import edge_wholeball as EW
import edgecaps as EC
import seedcert as SC


def load(path):
    with (gzip.open(path, 'rt') if str(path).endswith('.gz') else open(path)) as f:
        return json.load(f)


def geometry(caps):
    return [{'v': cap['v'], 'h': cap['h']} for cap in caps]


def run(input_path, certificate_path, precision=224, cap_index=0, check_coverage=True):
    started = time.perf_counter()
    data, certificate = load(input_path), load(certificate_path)
    if 'edge' in certificate:
        certificate = certificate['edge'][0]['caps']
    ctx.prec = precision
    source = data['edge'][0]
    groups = source['transfers']
    seeds = [SC.Ball(row) for row in data['seed_headers']]
    model = EW.edge_model(source, prec=precision)
    if model['summary'].get('ok') is not True:
        raise AssertionError('untampered whole-ball model failed')
    cap = certificate['caps'][cap_index]
    gi = cap['group_index']
    def transfer(index):
        group = groups[index]
        return EW.EdgeTransfer(model, seeds[group['target']], group)
    tr = transfer(gi)
    baseline = CAPS.check_cap(model, tr, cap)
    if baseline.get('ok') is not True:
        raise AssertionError('untampered selected cap failed: ' + str(baseline))
    if check_coverage:
        coverage = COV.verify_coverage(geometry(certificate['caps']), certificate['coverage'])
        if not coverage['passed'] or not coverage['covers']:
            raise AssertionError('untampered complete sphere coverage failed: ' + str(coverage))
    else:
        coverage = {'replayed_in_this_command': False,
                    'status': 'NOT REPLAYED: complete exact sphere coverage is a separate verification gate'}
    tests = {}
    def require_rejected(name, result):
        if result.get('ok') is True or result.get('passed') is True:
            raise AssertionError(name + ' unexpectedly accepted')
        tests[name] = dict(rejected=True, result=result)

    enlarged = deepcopy(cap)
    old_h = float.fromhex(cap['h']) if isinstance(cap['h'], str) else float(cap['h'])
    enlarged['h'] = 1 if old_h > 1 else float(old_h / 4).hex()
    require_rejected('enlarged_cap', CAPS.check_cap(model, tr, enlarged))
    tests['enlarged_cap']['old_threshold'] = cap['h']
    tests['enlarged_cap']['new_threshold'] = enlarged['h']

    dropped = deepcopy(certificate['caps'])
    dropped.pop(cap_index)
    require_rejected('dropped_cap_stale_coverage',
                     COV.verify_coverage(geometry(dropped), certificate['coverage']))

    wrong_range = deepcopy(cap)
    wrong_range['group_index'] = len(groups)
    try:
        EC.check_edge_caps(source, seeds, groups, {'caps': [wrong_range], 'coverage': {}},
                           model=model, precision=precision)
    except SC.CertError as exc:
        tests['wrong_group_out_of_range'] = dict(rejected=True, result={'error': str(exc)},
                                                group_index=wrong_range['group_index'])
    else:
        raise AssertionError('out-of-range group accepted')

    candidates = list(dict.fromkeys([0, len(groups)//4, len(groups)//2,
                                    3*len(groups)//4, len(groups)-1, (gi+1)%len(groups)]))
    wrong_result = None
    for wrong_gi in candidates:
        if wrong_gi == gi:
            continue
        candidate = deepcopy(cap)
        candidate['group_index'] = wrong_gi
        try:
            result = CAPS.check_cap(model, transfer(wrong_gi), candidate)
        except (ArithmeticError, SC.CertError, ValueError, KeyError) as exc:
            result = {'ok': False, 'error': str(exc)}
        if result.get('ok') is not True:
            wrong_result = result
            require_rejected('wrong_group_in_range', result)
            tests['wrong_group_in_range']['original_group_index'] = gi
            tests['wrong_group_in_range']['wrong_group_index'] = wrong_gi
            break
    if wrong_result is None:
        raise AssertionError('all chosen alternative groups accepted; no wrong-group rejection established')

    zero_bound = deepcopy(cap)
    zero_bound['s'] = 0
    require_rejected('tampered_target_witness', CAPS.check_cap(model, tr, zero_bound))
    negative_mu = deepcopy(cap)
    negative_mu['mu'] = -1
    require_rejected('tampered_negative_multiplier', CAPS.check_cap(model, tr, negative_mu))
    return dict(status='CERTIFIED negative controls', passed=True,
                input_sha256=sha256(Path(input_path).read_bytes()).hexdigest(),
                certificate_sha256=sha256(Path(certificate_path).read_bytes()).hexdigest(),
                precision_bits=precision, selected_cap=cap_index, original_group_index=gi,
                baseline_cap=baseline, baseline_coverage=coverage, tests=tests,
                seconds=time.perf_counter()-started)


if __name__ == '__main__':
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('input')
    ap.add_argument('certificate')
    ap.add_argument('--output', type=Path)
    ap.add_argument('--precision', type=int, default=224)
    ap.add_argument('--cap-index', type=int, default=0)
    ap.add_argument('--skip-baseline-coverage', action='store_true',
                    help='use when the same frozen family has already passed independent full coverage; do not duplicate its support checks')
    args = ap.parse_args()
    try:
        result = run(args.input, args.certificate, args.precision, args.cap_index,
                     not args.skip_baseline_coverage)
    except (AssertionError, ArithmeticError, SC.CertError, ValueError, KeyError, OSError) as exc:
        result = dict(status='NOT ESTABLISHED', passed=False, error=str(exc))
    text = json.dumps(result, indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    print(text, end='')
    raise SystemExit(0 if result['passed'] else 1)
