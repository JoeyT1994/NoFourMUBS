"""Replay the minimal proof (PROOF.md).  Exits nonzero if any check fails.

  python3 verify.py                 Step 1 certificates, Step 2 replays: matched existence (identity (J) for the sides,
                                    flatness), the converse and exact reach, strict-corner coverage (with return K),
                                    sheet lemmas, S6 as a zero-dimensional Record, a Stage C Arb sample; plus the
                                    earlier radical side construction (return F) as a cross-check
  python3 verify.py --atlas [-j N]  additionally certify every Record of the atlas (Step 4, one pool of N worker
                                    processes), F6 and the anchor H0
  python3 verify.py --lean          additionally build the Lean formalisation and audit its axioms
  python3 verify.py --lean-full     as --lean, and also build matched existence (L1) and NoFourMUBs.Final in Lean (about 25 min with the Mathlib cache)
"""
import argparse, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parent
CHECKS = [
    ('step1_saddle_census',     'lean/Step1Gen/verify_certificates.py', []),
    ('step1_2_deltoid_return',  'proof/coverage/returns/A_deltoid/verify_all.py', []),
    ('step1_2_exact_quotient',  'proof/coverage/returns/B_exact_quotient/verify_all.py', []),
    ('l1_side_existence_identity_J', 'proof/coverage/returns/J_side_existence/check_jacobian.py', []),
    ('crosscheck_F_radical_sides', 'proof/coverage/returns/F_side_existence/verify_all.py', []),
    ('l1_matched_flatness',     'proof/coverage/returns/E_matched_flatness/verify_all.py', []),
    ('step2_prm_exact_reach',   'proof/coverage/returns/G_prm/verify_all.py', []),
    ('mc_reconstruction_proofs', 'MinimalConstruction/Proofs/verify_dossier.py', []),
    ('mc1_nonzero_j_signed_sums', 'proof/coverage/returns/K_nonzero_J/verify.py', []),
    ('mc_reconstruction',       'MinimalConstruction/Implementation/verify.py', []),
    ('mc_single_radical',       'MinimalConstruction/Implementation/verify_single_radical.py', []),
    ('mc5_sheet_conjugation',   'MinimalConstruction/Sheets/verify.py', []),
    ('mc3_side_branch_lemma',   'MinimalConstruction/Sheets/verify_branch_lemma.py', []),
    ('tao_zero_dim_record',     'proof/atlas/tao.py', ['0.08']),
    ('step3_stagec_arb_replay', 'proof/atlas/arb_replay.py', ['centre_fold52.json', '0.08', '100']),
]
# Rough wall seconds of each check (M5 Max, Oct 2026): jobs are started longest first, so the short ones fill in
# around the long ones.  Scheduling only; every check runs and must pass.
COST = {'step4_certify': 1e6, 'lean_build_and_axioms': 1e5, 'step4_anchor_H0': 100, 'step4_nonempty_F6': 95,
        'l1_matched_flatness': 50, 'mc_reconstruction_proofs': 15, 'crosscheck_F_radical_sides': 10}


def run(name, rel, args, timeout=3600):
    script = ROOT / rel; t = time.time()
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1')
    try:
        p = subprocess.run([sys.executable, '-B', script.name] + args, cwd=script.parent, env=env, text=True,
                           stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=timeout)
        code, out = p.returncode, p.stdout
    except subprocess.TimeoutExpired:
        code, out = 124, 'TIMEOUT'
    return name, code, time.time() - t, out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--atlas', action='store_true', help='certify the full atlas (Step 4)')
    ap.add_argument('--lean', action='store_true', help='build the Lean formalisation and audit axioms')
    ap.add_argument('--lean-full', action='store_true', help='as --lean, including L1 and NoFourMUBs.Final (about 25 min with the Mathlib cache)')
    ap.add_argument('-j', '--jobs', type=int, default=4)
    ap.add_argument('--log-dir', type=Path, default=None)
    a = ap.parse_args()
    if a.log_dir: a.log_dir.mkdir(parents=True, exist_ok=True)
    jobs = list(CHECKS)
    if a.atlas:
        pkl = ROOT / 'proof/atlas/results/atlas_certificate.json.gz'
        if not pkl.exists(): sys.exit('no atlas at %s' % pkl)
        tsv = ['--tsv=%s' % (a.log_dir.resolve() / 'step4_certify.tsv')] if a.log_dir else []
        jobs += [('step4_certify', 'proof/atlas/certify.py', ['results/atlas_certificate.json.gz', '-j', str(a.jobs)] + tsv)]
        jobs += [('step4_nonempty_F6', 'proof/atlas/nonempty.py', ['results/atlas_certificate.json.gz'])]
        jobs += [('step4_anchor_H0', 'proof/atlas/anchor.py', ['results/atlas_certificate.json.gz'])]
    if a.lean or a.lean_full:
        jobs += [('lean_build_and_axioms', 'lean/check_axioms.py', ['--full'] if a.lean_full else [])]
    jobs.sort(key=lambda c: -COST.get(c[0], 0))
    fails = 0; t0 = time.time()
    with ThreadPoolExecutor(a.jobs) as pool:
        futures = [pool.submit(run, *c, timeout=6 * 3600 if c[0].startswith(('step4', 'lean')) else 3600) for c in jobs]
        for f in as_completed(futures):
            name, code, dt, out = f.result()
            print('%s: %s (%.0fs)' % ('PASS' if code == 0 else 'FAIL', name, dt), flush=True)
            if a.log_dir: (a.log_dir / (name + '.txt')).write_text(out)
            if code: fails += 1; print('\n'.join(out.splitlines()[-15:]))
    print('%d checks, %.0fs wall' % (len(jobs), time.time() - t0))
    print('ALL PASS' if fails == 0 else '%d FAILED' % fails)
    sys.exit(1 if fails else 0)


if __name__ == '__main__':
    main()
