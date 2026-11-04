#!/usr/bin/env python3
"""Transfer the supplied all-K theorem to an unchanged native seed ball.

Default: replay the supplied local theorem, freshly certify native C1,
then prove inclusion in its radius-153/1000 horizontal phase ball.
--check-receipt checks a previously replayed, source-bound local receipt.
No numerical distance, proposed winding, or radius comparison accepts.
"""
import argparse
import gzip
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys

from flint import acb, arb, arb_mat, ctx

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
sys.path[:0] = [str(HERE), str(ROOT/'proof/seed_atlas/cert')]
import seedcert as SC
import wholeball as Z
from certify_seed_atlas import bound_sources

THEOREM = 'research/h_ball_radius_0153_2026_10_27'
EXACT = 'research/h_ball_completeness_2026_10_27/exact_fibre.py'
HSTAR = [[0,0,0,0,0,0], [0,2,3,1,3,1], [0,3,2,3,1,1],
         [0,1,3,2,1,3], [0,3,1,1,2,3], [0,1,1,3,3,2]]
ROWS = [0,1,2,4,3,5]
COLUMNS = [3,5,4,2,1,0]
STATUSES = {'normal_verified.json':'SHARP_NORMAL_PASS',
            'cover_verified.json':'COMPLETE_COVER_PASS',
            'special_verified.json':'SPECIAL_AFFINE_PASS',
            'conditioned_verified.json':'CONDITIONED_AFFINE_PASS',
            'affine_verified.json':'COUPLED_AFFINE_PASS',
            'filtered_cover_verified.json':'FILTERED_COVER_PASS',
            'reference_balls_verified.json':'REFERENCE_BALLS_PASS'}


def need(condition, message):
    if not condition:
        raise ArithmeticError(message)


def sha(path):
    with Path(path).open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def check_hashes(root, binding):
    for name, expected in binding.items():
        p = Path(name)
        need(not p.is_absolute() and '..' not in p.parts, 'invalid bound path')
        need(sha(root/p) == expected, 'source/input hash mismatch: '+name)


def check_sources(root):
    expected = json.loads((HERE/'r0153_binding.json').read_text())
    need(sha(root/'MANIFEST_SHA256.json') == expected['manifest_sha256'],
         'different handoff manifest')
    check_hashes(root, expected['sources'])
    return expected


def check_local_receipt(root, expected):
    local = root/THEOREM
    receipt = json.loads((local/'verification.json').read_text())
    need(receipt.get('status') == 'LOCAL_H_BALL_COMPLETENESS_PASS',
         'the complete all-K theorem did not pass')
    need(receipt.get('H_radius_radians') == '153/1000', 'wrong theorem radius')
    need(receipt.get('quantifier') ==
         'Every completing K for every Hadamard in this horizontal H-phase ball.',
         'wrong theorem quantifier')
    need(receipt.get('source_and_input_sha256') == expected['theorem_sources'],
         'incomplete or different theorem source binding')
    need(receipt.get('reports') == STATUSES, 'incomplete theorem reports')
    reports = {name:json.loads((local/name).read_text()) for name in STATUSES}
    for name, status in STATUSES.items():
        need(reports[name].get('status') == status, 'failed theorem step: '+name)
        need(reports[name].get('H_radius') == '153/1000', 'step radius mismatch')
    need(reports['normal_verified.json']['normal_bound'] == '11/1250' ==
         reports['cover_verified.json']['normal_bound'], 'normal interface mismatch')
    for left, lk, right, rk in [
        ('cover_verified.json','special_column_initial_radius','special_verified.json','initial_radius'),
        ('special_verified.json','special_radius','filtered_cover_verified.json','special_column_radius'),
        ('filtered_cover_verified.json','other_column_initial_radius','conditioned_verified.json','initial_radius'),
        ('affine_verified.json','tube_radius','reference_balls_verified.json','covered_tube_radius')]:
        need(reports[left][lk] == reports[right][rk], 'theorem interface mismatch')
    return receipt


def check_exact_centre(root):
    """Compare the theorem's actual algebraic centre with our fourth-root codes."""
    spec = importlib.util.spec_from_file_location('transfer_exact_fibre', root/EXACT)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    units = [module.ONE, module.II, module.neg(module.ONE), module.neg(module.II)]
    need(module.center()[0] == [[units[c] for c in row] for row in HSTAR],
         'theorem centre differs from the displayed exact matrix')


def anchor_codes(rows=ROWS, columns=COLUMNS, conjugate=True):
    need(sorted(rows) == list(range(6)) and sorted(columns) == list(range(6)),
         'invalid anchor permutation')
    need(isinstance(conjugate, bool), 'invalid conjugation')
    sign = -1 if conjugate else 1
    a = [[sign*HSTAR[r][c] for c in columns] for r in rows]
    return [[(a[r][c]-a[r][0]-a[0][c]+a[0][0]) % 4
             for c in range(6)] for r in range(6)]


def inclusion(ball, rows=ROWS, columns=COLUMNS, conjugate=True):
    """The C1 enclosure is a premise; this verifies its entire image inclusion.

    Winding choices only propose an equivalent exact anchor. If poor, the
    strict Arb norm comparison fails. No claim of nearest winding is used.
    """
    need(ball.gauge == 'hor', 'this transfer requires the horizontal C1 gauge')
    codes = anchor_codes(rows, columns, conjugate)
    quarter_turns = []
    for r in range(6):
        for c in range(6):
            k = codes[r][c]
            turns = round(float((ball.Pg_a[6*r+c]-k*arb.pi()/2)/(2*arb.pi())))
            quarter_turns.append(k+4*turns)
    qg = arb_mat([[k*arb.pi()/2] for k in quarter_turns])
    anchor = Z.horizontal_vector(qg)
    centre = arb_mat([[arb(float(v))] for v in ball.P])
    distance = Z.frob(centre-anchor)
    frame_norm = Z.spectral(Z.mat(ball.U))
    radius = frame_norm*arb(ball.r)+arb(ball.n)
    total = distance+radius
    need(total < arb(153)/1000, 'whole original image does not fit the theorem ball')
    return dict(centre_distance_upper_hex=Z.upper(distance).hex(),
                frame_norm_upper_hex=Z.upper(frame_norm).hex(),
                image_radius_upper_hex=Z.upper(radius).hex(),
                total_upper_hex=Z.upper(total).hex(),
                total_interval=str(total),
                margin_lower_hex=Z.lower(arb(153)/1000-total).hex(),
                anchor_quarter_turns=quarter_turns,
                rows=list(rows), columns=list(columns), conjugate=conjugate,
                target_radius='153/1000')


def run(atlas, root, index, replay, log):
    need(not sys.flags.optimize and not os.environ.get('PYTHONOPTIMIZE'),
         'the supplied replay requires Python assertions enabled')
    expected = check_sources(root)
    if replay:
        with log.open('w') as stream:
            subprocess.run([sys.executable, str(root/THEOREM/'verify_all.py')],
                           cwd=root, stdout=stream, stderr=subprocess.STDOUT, check=True)
    receipt = check_local_receipt(root, expected)
    check_sources(root)
    check_exact_centre(root)
    ctx.prec = 192  # imported external modules may have set their own precision
    document = json.loads(gzip.decompress(atlas.read_bytes()))
    need(document['format'] == 'seed-atlas-v1', 'wrong atlas format')
    need(0 <= index < len(document['seeds']), 'invalid seed index')
    ball = SC.Ball(document['seeds'][index])
    # Fresh C1: do not infer geometric validity from a stored float radius.
    c1 = SC.certify_c1(ball)
    need(c1['ok'] and arb(c1['n_cert']) <= arb(ball.n), 'native C1 did not pass')
    containment = inclusion(ball)
    sources = bound_sources()
    for p in [Path(__file__), HERE/'r0153_binding.json', HERE/'TRANSFER_R0153.md']:
        sources[str(p.relative_to(ROOT))] = sha(p)
    return dict(status='CERTIFIED', seed_index=index,
                domain='Every w in the unchanged native ball ||w||_2 <= r.',
                quantifier='Every completing K for every H on this native seed chart.',
                conclusion='Conjecture 1 continuous construction or isolated Fourier/product type.',
                native_radius_hex=ball.r.hex(), native_centre_w=[0,0,0,0],
                theta0=document['seeds'][index]['theta0'], Mth=document['seeds'][index]['Mth'],
                native_C1=c1, inclusion=containment,
                local_theorem_status=receipt['status'], local_replayed_now=replay,
                analytic_dependencies=receipt['analytic_dependencies'],
                local_receipt_sha256=sha(root/THEOREM/'verification.json'),
                local_report_sha256={p:sha(root/THEOREM/p) for p in STATUSES},
                handoff_archive_sha256=expected['archive_sha256'],
                handoff_source_checks=len(expected['sources']),
                atlas_sha256=sha(atlas), source_sha256=sources,
                global_atlas_classification='NOT ESTABLISHED')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--handoff-root', type=Path, required=True)
    parser.add_argument('--atlas', type=Path,
                        default=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz')
    parser.add_argument('--index', type=int, default=1879)
    parser.add_argument('--check-receipt', action='store_true',
                        help='check an already replayed local receipt instead of rerunning verify_all.py')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    try:
        result = run(args.atlas.resolve(), args.handoff_root.resolve(), args.index,
                     not args.check_receipt, args.output.with_suffix('.log'))
    except Exception as error:
        args.output.write_text(json.dumps(dict(status='NOT ESTABLISHED', reason=str(error)),indent=2)+'\n')
        raise
    args.output.write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','seed_index','native_radius_hex','inclusion')}, indent=2))


if __name__ == '__main__':
    main()
