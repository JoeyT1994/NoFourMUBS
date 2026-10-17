"""Phase 3 of the assembly pilot (`docs/KERNEL_ASSEMBLY.md`): what importing many kernel-checked Records costs.

Usage (repository root, after atlas_run.py with --keep):
  python3 kernel_atlas/generators/pilot_import.py --first 0 --last 999 --out kernel_atlas/results/pilot [--jobs 8]

1. olean volume of the Records that finished `ok` (rows in <out>/node*/rows.jsonl);
2. one Lean process importing every such Record's `BoundaryCover` (hence its `cert`): wall time, peak memory,
   constants and modules, against a baseline process importing only the shared modules;
3. the assembly chunks (`export_assembly.py`) for every complete chunk in the range, compiled with `lean -o`, and one
   process importing all of them.
Writes <out>/import.json.
"""
import argparse, concurrent.futures as CF, glob, gzip, json, os, re, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
LEAN = os.path.join(ROOT, 'lean')
SRC = os.path.join(ROOT, 'kernel_atlas', 'lean')
OLEAN = os.path.join(LEAN, '.lake', 'build', 'lib', 'lean')
sys.path.insert(0, HERE)
import export_assembly as EA
from atlas_run import lean_env, parse_time, timed

STATS = """open Lean in
#eval show CoreM Unit from do
  let env ← getEnv
  IO.println s!"STATS constants {env.constants.toList.length} modules {env.header.moduleNames.size}"
"""


def run_lean(env, lean, path, out=None):
    cmd = [lean, '-R', SRC] + (['-o', out + '.olean', '-i', out + '.ilean'] if out else []) + [path]
    t0 = time.time()
    r = subprocess.run(timed(cmd), cwd=LEAN, env=env, capture_output=True, text=True)
    cpu, rss = parse_time(r.stdout + r.stderr)
    m = re.search(r'STATS constants (\d+) modules (\d+)', r.stdout)
    return dict(ok=r.returncode == 0, wall_s=round(time.time() - t0, 1), cpu_s=cpu, peak_gb=rss and round(rss, 2),
                constants=int(m.group(1)) if m else None, modules=int(m.group(2)) if m else None,
                tail=(r.stdout + r.stderr)[-1500:] if r.returncode else '')


def du(path):
    tot = n = 0
    for p in glob.glob(os.path.join(path, '**', '*'), recursive=True):
        if os.path.isfile(p):
            tot += os.path.getsize(p); n += 1
    return tot, n


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--first', type=int, default=0)
    ap.add_argument('--last', type=int, default=999)
    ap.add_argument('--out', required=True)
    ap.add_argument('--jobs', type=int, default=8)
    a = ap.parse_args()
    env, lean = lean_env()
    rows = {}
    for f in glob.glob(os.path.join(a.out, 'node*', 'rows.jsonl')):
        for l in open(f):
            r = json.loads(l)
            rows[r['idx']] = r
    ok = sorted(i for i, r in rows.items() if r['status'] == 'ok' and a.first <= i <= a.last)
    res = dict(first=a.first, last=a.last, rows=len(rows), ok=len(ok),
               status={s: sum(1 for r in rows.values() if r['status'] == s) for s in {r['status'] for r in rows.values()}})
    # 1. olean volume
    vol = []
    for i in ok:
        b, n = du(os.path.join(OLEAN, 'KernelAtlas', 'Rec%d' % i))
        ol = sum(os.path.getsize(p) for p in glob.glob(os.path.join(OLEAN, 'KernelAtlas', 'Rec%d' % i, '*.olean')))
        vol.append((i, b, ol, n))
    res['olean_bytes_total'] = sum(v[2] for v in vol)
    res['build_bytes_total'] = sum(v[1] for v in vol)
    res['olean_mb_per_record'] = dict(mean=round(sum(v[2] for v in vol) / max(1, len(vol)) / 2 ** 20, 2),
                                      max=round(max([v[2] for v in vol] or [0]) / 2 ** 20, 2))
    res['files_per_record'] = round(sum(v[3] for v in vol) / max(1, len(vol)), 1)
    print('olean volume: %.2f GB over %d Records' % (res['olean_bytes_total'] / 2 ** 30, len(vol)), flush=True)
    # 2. one process importing every Record
    d = os.path.join(SRC, 'KernelAtlas', 'Pilot')
    os.makedirs(d, exist_ok=True)
    base = os.path.join(d, 'Base.lean')
    with open(base, 'w') as f:
        f.write('import KernelAtlas.Assembly\nimport KernelAtlas.Table.All\n\n' + STATS)
    res['import_baseline'] = run_lean(env, lean, base)
    imp = os.path.join(d, 'ImportAll.lean')
    with open(imp, 'w') as f:
        f.write(''.join('import KernelAtlas.Rec%d.BoundaryCover\n' % i for i in ok) + '\n' + STATS)
    res['import_all'] = run_lean(env, lean, imp)
    print('import of %d Records: %s' % (len(ok), res['import_all']), flush=True)
    # 3. complete chunks
    N = len(json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))['records'])
    oks = set(ok)
    ks = [k for k in range(a.first // 100, a.last // 100 + 1)
          if all(n in oks for n in range(100 * k, min(N, 100 * (k + 1))))]
    cd = os.path.join(SRC, 'KernelAtlas', 'Atlas')
    os.makedirs(cd, exist_ok=True)
    os.makedirs(os.path.join(OLEAN, 'KernelAtlas', 'Atlas'), exist_ok=True)
    jobs = {}
    with CF.ThreadPoolExecutor(a.jobs) as ex:
        for k in ks:
            p = os.path.join(cd, 'Chunk%d.lean' % k)
            with open(p, 'w') as f:
                f.write(EA.chunk_file(k, N))
            jobs[k] = ex.submit(run_lean, env, lean, p, os.path.join(OLEAN, 'KernelAtlas', 'Atlas', 'Chunk%d' % k))
    res['chunks'] = {k: jobs[k].result() for k in ks}
    good = [k for k in ks if res['chunks'][k]['ok']]
    print('chunks %s: ok %s' % (ks, good), flush=True)
    if good:
        ci = os.path.join(d, 'ImportChunks.lean')
        with open(ci, 'w') as f:
            f.write(''.join('import KernelAtlas.Atlas.Chunk%d\n' % k for k in good) + '\n' + STATS)
        res['import_chunks'] = run_lean(env, lean, ci)
    with open(os.path.join(a.out, 'import.json'), 'w') as f:
        json.dump(res, f, indent=1)
    print(json.dumps({k: v for k, v in res.items() if k != 'chunks'}, indent=1))


if __name__ == '__main__':
    main()
