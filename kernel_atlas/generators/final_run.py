"""Phase 3 of the full run (`docs/KERNEL_ASSEMBLY.md`): the final module and its axioms.

Usage (repository root, in a staged copy on node-local disk with NoFourMUBs.Final, RecTao and Special built; see
run_katlas_final.sh):
  python3 kernel_atlas/generators/final_run.py --archive ADIR [--stubs] [--name NAME]

Unpacks every chunk tarball ADIR/chunks/Chunk<k>.tar into the local build directory (never on ceph), generates
`Atlas/Final.lean` (export_assembly.py), compiles it with `lean -o` and prints the axioms of
`no_four_mubs_kernel` and `atlasCert`.  With --stubs, missing chunks are replaced by one module of `sorry` stubs with
the chunks' exact statements (a smoke test of Final.lean against real chunks; the axioms then include sorryAx).
Writes ADIR/final/<name>.json.
"""
import argparse, glob, json, os, re, subprocess, sys, tarfile, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import export_assembly as EA
from atlas_run import LEAN, OLEAN, SRC, lean_env, parse_time, timed
from chunk_run import CHUNK, N, chunk_done

K = (N + CHUNK - 1) // CHUNK


def stub_module(ks):
    L = ['import KernelAtlas.Assembly', 'import KernelAtlas.Table.All', '',
         '/-! Stubs (`sorry`) for chunks %s: test only, never part of the result. -/' % ks, '',
         'namespace NoFourMUBs.KernelAtlas.Atlas', '', 'open Hadamard6 NoFourMUBs NoFourMUBs.KernelAtlas', '']
    for k in ks:
        real = EA.chunk_file(k, N)
        L += ['noncomputable def cert%d (i : ℕ) : RecordCert := sorry' % k,
              'theorem cert%d_P (i : ℕ) : (cert%d i).P = Pmat (pqL (Table.cen%d i)) := sorry' % (k, k, k),
              'theorem cert%d_R (i : ℕ) : (cert%d i).R = ((Table.rad%d i : ℚ) : ℝ) := sorry' % (k, k, k)]
        m = re.search(r'(theorem bnd%d .*?):= by' % k, real, re.S)
        L += [m.group(1) + ':= sorry', '']
    L.append('end NoFourMUBs.KernelAtlas.Atlas')
    return '\n'.join(L) + '\n'


def compile_(env, lean, mod, text, threads):
    src = os.path.join(SRC, *mod.split('.')) + '.lean'
    os.makedirs(os.path.dirname(src), exist_ok=True)
    with open(src, 'w') as f:
        f.write(text)
    ob = os.path.join(OLEAN, *mod.split('.'))
    os.makedirs(os.path.dirname(ob), exist_ok=True)
    t0 = time.time()
    cmd = [lean, '-R', SRC, '-o', ob + '.olean'] + (['-j', str(threads)] if threads else []) + [src]
    r = subprocess.run(timed(cmd), cwd=LEAN, env=env, capture_output=True, text=True)
    cpu, rss = parse_time(r.stdout + r.stderr)
    return dict(ok=r.returncode == 0, wall_s=round(time.time() - t0, 1), cpu_s=cpu, peak_gb=rss and round(rss, 2),
                tail=(r.stdout + r.stderr)[-3000:] if r.returncode else '')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--archive', required=True)
    ap.add_argument('--stubs', action='store_true')
    ap.add_argument('--name', default='final')
    ap.add_argument('--lean-threads', type=int, default=0)
    a = ap.parse_args()
    os.makedirs(os.path.join(a.archive, 'final'), exist_ok=True)
    res = dict(name=a.name, stubs=a.stubs)
    done = chunk_done(a.archive)
    missing = [k for k in range(K) if k not in done]
    res['chunks_real'], res['chunks_stubbed'] = sorted(done), missing
    if missing and not a.stubs:
        res['status'] = 'chunks_missing'
    else:
        t0 = time.time()
        for k in sorted(done):
            with tarfile.open(os.path.join(a.archive, 'chunks', 'Chunk%d.tar' % k)) as t:
                t.extractall(OLEAN)
        res['unpack_s'] = round(time.time() - t0, 1)
        env, lean = lean_env()
        text = EA.final_file(K)
        if missing:
            res['stubs_compile'] = compile_(env, lean, 'KernelAtlas.Atlas.Stubs', stub_module(missing), a.lean_threads)
            text = re.sub(r'(import KernelAtlas\.Atlas\.Chunk\d+\n)+',
                          ''.join('import KernelAtlas.Atlas.Chunk%d\n' % k for k in sorted(done)) +
                          'import KernelAtlas.Atlas.Stubs\n', text)
        res['final_compile'] = compile_(env, lean, 'KernelAtlas.Atlas.Final', text, a.lean_threads)
        if res['final_compile']['ok']:
            ax = os.path.join(SRC, 'KernelAtlas', 'Atlas', 'Axioms.lean')
            with open(ax, 'w') as f:
                f.write('import KernelAtlas.Atlas.Final\n#print axioms NoFourMUBs.KernelAtlas.Atlas.no_four_mubs_kernel\n'
                        '#print axioms NoFourMUBs.KernelAtlas.Atlas.atlasCert\n'
                        '#check (NoFourMUBs.KernelAtlas.Atlas.no_four_mubs_kernel : ¬ NoFourMUBs.FourMUBs)\n')
            t0 = time.time()
            r = subprocess.run(timed([lean, ax]), cwd=LEAN, env=env, capture_output=True, text=True)
            cpu, rss = parse_time(r.stdout + r.stderr)
            res['axioms_run'] = dict(wall_s=round(time.time() - t0, 1), cpu_s=cpu, peak_gb=rss and round(rss, 2))
            res['axioms_output'] = r.stdout[-3000:]
            res['axioms'] = re.findall(r"'([^']+)' depends on axioms: \[(.*?)\]", r.stdout, re.S)
            res['status'] = 'ok' if r.returncode == 0 else 'axioms_failed'
        else:
            res['status'] = 'final_failed'
    with open(os.path.join(a.archive, 'final', a.name + '.json'), 'w') as f:
        json.dump(res, f, indent=1)
    print(json.dumps({k: v for k, v in res.items() if k not in ('chunks_real', 'chunks_stubbed')}, indent=1))


if __name__ == '__main__':
    main()
