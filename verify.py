"""Replay the minimal proof (PROOF.md).  Exits nonzero if any check fails.

  python3 verify.py                 Steps 1-2 (two exact replays), MC1-MC5, sheet lemmas, S6 as a zero-dimensional Record,
                                    Stage C Arb sample
  python3 verify.py --atlas [-j N]  additionally certify every Record of the atlas (Step 4), F6 and the anchor H0
  python3 verify.py --lean          additionally build the Lean formalisation and audit its axioms
"""
import argparse, os, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parent
CHECKS = [
    ('step1_saddle_census',     'proof/coverage/returns/C_step1_lean/verify_certificates.py', []),
    ('step1_2_deltoid_return',  'proof/coverage/returns/A_deltoid/verify_all.py', []),
    ('step1_2_exact_quotient',  'proof/coverage/returns/B_exact_quotient/verify_all.py', []),
    ('mc_reconstruction_proofs', 'MinimalConstruction/Proofs/verify_dossier.py', []),
    ('mc_reconstruction',       'MinimalConstruction/Implementation/verify.py', []),
    ('mc_single_radical',       'MinimalConstruction/Implementation/verify_single_radical.py', []),
    ('mc5_sheet_conjugation',   'MinimalConstruction/Sheets/verify.py', []),
    ('mc3_side_branch_lemma',   'MinimalConstruction/Sheets/verify_branch_lemma.py', []),
    ('tao_zero_dim_record',     'proof/atlas/tao.py', ['0.08']),
    ('step3_stagec_arb_replay', 'proof/atlas/arb_replay.py', ['centre_fold52.json', '0.08', '100']),
]


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
    ap.add_argument('-j', '--jobs', type=int, default=4)
    ap.add_argument('--log-dir', type=Path, default=None)
    a = ap.parse_args()
    jobs = list(CHECKS)
    if a.atlas:
        pkl = ROOT / 'proof/atlas/results/atlas_certificate.json.gz'
        if not pkl.exists(): sys.exit('no atlas at %s' % pkl)
        sys.path.insert(0, str(ROOT / 'proof/atlas'))
        from export import load_certificate
        n = len(load_certificate(str(pkl)).recs); ch = (n + 4 * a.jobs - 1) // (4 * a.jobs)
        jobs += [('step4_certify_%06d' % lo, 'proof/atlas/certify.py', ['results/atlas_certificate.json.gz', str(lo), str(min(n, lo + ch))])
                 for lo in range(0, n, ch)]
        jobs += [('step4_nonempty_F6', 'proof/atlas/nonempty.py', ['results/atlas_certificate.json.gz'])]
        jobs += [('step4_anchor_H0', 'proof/atlas/anchor.py', ['results/atlas_certificate.json.gz'])]
    if a.lean:
        jobs += [('lean_build_and_axioms', 'lean/check_axioms.py', [])]
    fails = 0
    with ThreadPoolExecutor(a.jobs) as pool:
        for name, code, dt, out in pool.map(lambda c: run(*c, timeout=6 * 3600 if c[0].startswith('step4') else 3600), jobs):
            print('%s: %s (%.0fs)' % ('PASS' if code == 0 else 'FAIL', name, dt), flush=True)
            if a.log_dir:
                a.log_dir.mkdir(parents=True, exist_ok=True); (a.log_dir / (name + '.txt')).write_text(out)
            if code: fails += 1; print('\n'.join(out.splitlines()[-15:]))
    print('ALL PASS' if fails == 0 else '%d FAILED' % fails)
    sys.exit(1 if fails else 0)


if __name__ == '__main__':
    main()
