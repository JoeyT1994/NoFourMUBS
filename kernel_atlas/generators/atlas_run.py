"""Kernel-check whole Records of the atlas on one machine: generate, compile, check axioms, archive (a node driver).

Usage (repository root; the shared modules built once with `lake build`, see CORE):
  python3 kernel_atlas/generators/atlas_run.py --out DIR [--mem-gb 1300] [--gen-workers 16] [--keep] idx ...
  python3 kernel_atlas/generators/atlas_run.py --out DIR --idx-file FILE ...

Per Record `n`, in `kernel_atlas/lean/KernelAtlas/Rec<n>/`:
  1. generate: export_record.py (Data.lean), export_v2.py --all --labels --search (bin tree with label hints and the
     clustering-variant search), export_joint.py (graph, joint edges, clique step), knormal.py --v2 (normal bound);
  2. compile the Record's modules with `lean -o` (not `lake`, so that the modules of many Records share one memory
     budget: a slab takes about 20 GB), in dependency order, with per-module CPU time and peak memory;
  3. `#print axioms NoFourMUBs.KernelAtlas.Rec<n>.cert` must name only propext, Classical.choice, Quot.sound;
  4. archive the generated sources (DIR/src/Rec<n>.tar.gz), write a row to DIR/rows.jsonl, and delete the build
     outputs and sources (unless --keep).
Rows already in DIR/rows.jsonl are skipped (resumable).  A Record that fails at any stage gets a row with the stage
and the end of the log; nothing is weakened or skipped silently.
"""
import argparse, concurrent.futures as CF, glob, json, os, platform, re, shutil, subprocess, sys, tarfile, threading
import time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
LEAN = os.path.join(ROOT, 'lean')
SRC = os.path.join(ROOT, 'kernel_atlas', 'lean')
OLEAN = os.path.join(LEAN, '.lake', 'build', 'lib', 'lean')
PY = sys.executable
CORE = ['KernelAtlas.E0K', 'KernelAtlas.FrameK', 'KernelAtlas.Joint2K', 'KernelAtlas.Joint2S', 'KernelAtlas.Labels',
        'KernelAtlas.NormalK', 'KernelAtlas.StageCK2B', 'KernelAtlas.Tables', 'KernelAtlas.Tangent2K',
        'KernelAtlas.Tangent2S', 'KernelAtlas.Tangent2L', 'KernelAtlas.SigmaK', 'KernelAtlas.BoundaryK',
        'KernelAtlas.Assembly', 'KernelAtlas.Pack', 'KernelAtlas.Table.All']
AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}


def mem_gb(mod):
    """Peak memory estimates per module (GB), from Records 100, 146 and 4015 on the laptop."""
    name = mod.rsplit('.', 1)[1]
    if name.startswith('H2Slab'):
        return 22
    if name.startswith(('Clq', 'Edg')) or name in ('Graph2', 'Sigma'):
        return 15
    if name == 'Boundary':
        return 12
    return 10


def lean_env():
    r = subprocess.run(['lake', 'build'] + CORE, cwd=LEAN, capture_output=True, text=True)    # no-op when current
    if r.returncode:
        raise RuntimeError('building the shared modules failed:\n' + (r.stdout + r.stderr)[-3000:])
    out = subprocess.run(['lake', 'env', 'printenv', 'LEAN_PATH'], cwd=LEAN, capture_output=True, text=True, check=True)
    lean = subprocess.run(['lake', 'env', 'which', 'lean'], cwd=LEAN, capture_output=True, text=True, check=True)
    env = dict(os.environ, LEAN_PATH=out.stdout.strip())
    return env, lean.stdout.strip()


def timed(cmd):
    """Prefix for CPU time and peak memory (GNU time on Linux, BSD time on macOS)."""
    return (['/usr/bin/time', '-v'] if platform.system() == 'Linux' else ['/usr/bin/time', '-l']) + cmd


def parse_time(text):
    cpu = rss = None
    m = re.search(r'User time \(seconds\): ([\d.]+)', text)
    if m:                                                               # GNU
        s = re.search(r'System time \(seconds\): ([\d.]+)', text)
        cpu = float(m.group(1)) + float(s.group(1))
        rss = int(re.search(r'Maximum resident set size \(kbytes\): (\d+)', text).group(1)) / 2 ** 20
    else:                                                               # BSD
        m = re.search(r'([\d.]+) real\s+([\d.]+) user\s+([\d.]+) sys', text)
        if m:
            cpu = float(m.group(2)) + float(m.group(3))
        r = re.search(r'(\d+)\s+maximum resident set size', text)
        rss = int(r.group(1)) / 2 ** 30 if r else None
    return cpu, rss


def generate(idx, log):
    """Step 1, in a worker thread.  Returns a dict of generation facts."""
    d = os.path.join(SRC, 'KernelAtlas', 'Rec%d' % idx)
    os.makedirs(d, exist_ok=True)
    t0 = time.time()
    steps = [[PY, '-W', 'ignore', os.path.join(HERE, 'export_record.py'), str(idx), d],
             [PY, '-W', 'ignore', os.path.join(HERE, 'export_v2.py'), str(idx), d, '--all', '--labels', '--search'],
             [PY, '-W', 'ignore', os.path.join(HERE, 'export_joint.py'), str(idx), d],
             [PY, '-W', 'ignore', os.path.join(HERE, 'knormal.py'), str(idx), d, '--v2'],
             [PY, '-W', 'ignore', os.path.join(HERE, 'export_boundary.py'), str(idx), d, '--v2']]
    out = []
    with open(log, 'a') as f:
        for k, cmd in enumerate(steps):
            r = subprocess.run(cmd, cwd=ROOT, capture_output=True, text=True)
            f.write('$ %s\n%s%s\n' % (' '.join(cmd[2:4]), r.stdout, r.stderr))
            if r.returncode:
                raise RuntimeError('generate step %d (%s) failed: %s' % (k, os.path.basename(cmd[3]),
                                                                         (r.stdout + r.stderr)[-1500:]))
            out.append(r.stdout)
            if k == 0:                                                  # v1 bin tree files of export_record
                for p in glob.glob(os.path.join(d, 'Slab*.lean')) + [os.path.join(d, 'Cover.lean')]:
                    if os.path.exists(p):
                        os.remove(p)
    import kpack
    kpack.seal(d)                                   # noncomputable data, packed lists (smaller oleans)
    info = dict(gen_s=round(time.time() - t0, 1))
    m = re.search(r'label hints: (\d+) hints \((\d+) leaf, (\d+) scalar, (\d+) linear, (\d+) none\)', out[1])
    if m:
        info['hints'] = dict(zip(('all', 'leaf', 'scalar', 'linear', 'none'), map(int, m.groups())))
    m = re.search(r'labels: (\d+)', out[1])
    info['labels'] = int(m.group(1)) if m else None
    m = re.search(r'Record \d+: \d+ labels for the \d+ depth-0 survivors .*?; (.*?)\). -/',
                  open(os.path.join(d, 'L2Data.lean')).read())
    info['variant'] = m.group(1) if m else None
    m = re.search(r'bitset search: (\d+) calls in (\d+) kernel decisions', out[2])
    info['clique'] = dict(bitset=True, calls=int(m.group(1)), decisions=int(m.group(2))) if m else dict(bitset=False)
    return info


def modules(idx):
    """The Record's modules and their Record-local imports (the closure of Record2)."""
    d = os.path.join(SRC, 'KernelAtlas', 'Rec%d' % idx)
    pre = 'KernelAtlas.Rec%d.' % idx
    deps = {}
    for p in glob.glob(os.path.join(d, '*.lean')):
        m = pre + os.path.basename(p)[:-5]
        deps[m] = [l.split()[1] for l in open(p) if l.startswith('import ' + pre)]
    need, todo = set(), [pre + 'Record2', pre + 'BoundaryCover']
    while todo:
        m = todo.pop()
        if m not in need:
            need.add(m)
            todo += deps[m]
    return {m: deps[m] for m in need}


class Node:
    """Compiles modules of many Records under one memory budget."""

    def __init__(self, args):
        self.args = args
        self.env, self.lean = lean_env()
        self.lock = threading.Lock()
        self.used = 0
        self.running = {}                       # Popen -> (idx, module, gb, t0, log)
        self.recs = {}                          # idx -> state
        self.rows = open(os.path.join(args.out, 'rows.jsonl'), 'a')

    def path(self, mod):
        rel = mod.split('.')
        return os.path.join(SRC, *rel) + '.lean', os.path.join(OLEAN, *rel)

    def start(self, idx, mod):
        src, ob = self.path(mod)
        os.makedirs(os.path.dirname(ob), exist_ok=True)
        log = os.path.join(self.args.out, 'logs', 'Rec%d' % idx, mod.rsplit('.', 1)[1] + '.log')
        os.makedirs(os.path.dirname(log), exist_ok=True)
        f = open(log, 'w')
        p = subprocess.Popen(timed([self.lean, '-R', SRC, '-o', ob + '.olean', '-i', ob + '.ilean', src]),
                             cwd=LEAN, env=self.env, stdout=f, stderr=subprocess.STDOUT)
        gb = mem_gb(mod)
        self.used += gb
        self.running[p] = (idx, mod, gb, time.time(), log, f)

    def axioms(self, idx):
        f = os.path.join(self.args.out, 'logs', 'Rec%d' % idx, 'Axioms.lean')
        with open(f, 'w') as g:
            g.write('import KernelAtlas.Rec%d.BoundaryCover\n#print axioms NoFourMUBs.KernelAtlas.Rec%d.cert\n'
                    '#print axioms NoFourMUBs.KernelAtlas.Rec%d.boundaryT\n' % (idx, idx, idx))
        r = subprocess.run([self.lean, f], cwd=LEAN, env=self.env, capture_output=True, text=True)
        ms = re.findall(r'depends on axioms: \[(.*?)\]', r.stdout, re.S)
        ax = sorted({a.strip() for m in ms for a in m.split(',')}) if len(ms) == 2 else None
        return ax, r.stdout[-800:]

    def finish(self, idx, status, **kw):
        st = self.recs.pop(idx)
        row = dict(idx=idx, status=status, **st['info'], modules=st['done'], **kw)
        row['cpu_s'] = round(sum(v['cpu_s'] or 0 for v in st['done'].values()), 1)
        row['peak_gb'] = round(max([v['peak_gb'] or 0 for v in st['done'].values()] or [0]), 1)
        row['wall_s'] = round(time.time() - st['t0'], 1)
        d = os.path.join(SRC, 'KernelAtlas', 'Rec%d' % idx)
        if os.path.isdir(d):
            with tarfile.open(os.path.join(self.args.out, 'src', 'Rec%d.tar.gz' % idx), 'w:gz') as t:
                for p in sorted(glob.glob(os.path.join(d, '*.lean'))):
                    t.add(p, arcname='Rec%d/%s' % (idx, os.path.basename(p)))
            if not self.args.keep:
                shutil.rmtree(d, ignore_errors=True)
                shutil.rmtree(os.path.join(OLEAN, 'KernelAtlas', 'Rec%d' % idx), ignore_errors=True)
        self.rows.write(json.dumps(row) + '\n'); self.rows.flush()
        print('%s Rec%d %s cpu %.0fs peak %.1f GB wall %.0fs' % (time.strftime('%H:%M:%S'), idx, status, row['cpu_s'],
                                                                row['peak_gb'], row['wall_s']), flush=True)

    def run(self, idxs):
        os.makedirs(os.path.join(self.args.out, 'src'), exist_ok=True)
        pool = CF.ThreadPoolExecutor(self.args.gen_workers)
        pending = list(idxs)
        gens = {}
        budget = self.args.mem_gb
        while pending or gens or self.recs or self.running:
            # keep the generators ahead of the compiler, but not too far
            while pending and len(gens) < self.args.gen_workers and len(self.recs) < self.args.max_records:
                idx = pending.pop(0)
                log = os.path.join(self.args.out, 'logs', 'Rec%d' % idx, 'generate.log')
                os.makedirs(os.path.dirname(log), exist_ok=True)
                gens[idx] = (pool.submit(generate, idx, log), time.time())
            for idx, (fu, t0) in list(gens.items()):
                if fu.done():
                    del gens[idx]
                    self.recs[idx] = dict(info={}, done={}, t0=t0, left=None)
                    try:
                        self.recs[idx]['info'] = fu.result()
                        self.recs[idx]['left'] = modules(idx)
                    except Exception as e:                              # noqa: BLE001
                        self.finish(idx, 'generate_failed', error=str(e)[-2000:])
            # finished compilations
            for p in list(self.running):
                if p.poll() is None:
                    continue
                idx, mod, gb, t0, log, f = self.running.pop(p)
                f.close()
                self.used -= gb
                text = open(log).read()
                cpu, rss = parse_time(text)
                if idx not in self.recs:
                    continue
                st = self.recs[idx]
                st['done'][mod.rsplit('.', 1)[1]] = dict(cpu_s=cpu, peak_gb=rss and round(rss, 2),
                                                         wall_s=round(time.time() - t0, 1))
                if p.returncode:
                    st['left'] = {}
                    self.finish(idx, 'compile_failed', module=mod, log=text[-3000:])
                    continue
                del st['left'][mod]
                if not st['left'] and not any(r[0] == idx for r in self.running.values()):
                    ax, out = self.axioms(idx)
                    if ax is not None and set(ax) <= AXIOMS:
                        self.finish(idx, 'ok', axioms=ax)
                    else:
                        self.finish(idx, 'axioms_failed', axioms=ax, log=out)
            # start ready modules, oldest Record first, within the memory budget
            started = True
            while started:
                started = False
                for idx in sorted(self.recs, key=lambda i: self.recs[i]['t0']):
                    st = self.recs[idx]
                    if not st['left']:
                        continue
                    busy = {r[1] for r in self.running.values()}
                    for mod, deps in sorted(st['left'].items()):
                        if mod in busy or any(dd in st['left'] for dd in deps):
                            continue
                        if self.used + mem_gb(mod) > budget or len(self.running) >= self.args.max_procs:
                            break
                        self.start(idx, mod)
                        started = True
                        break
            time.sleep(1)
        pool.shutdown()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('idx', nargs='*', type=int)
    ap.add_argument('--idx-file')
    ap.add_argument('--out', required=True)
    ap.add_argument('--mem-gb', type=float, default=1300)
    ap.add_argument('--gen-workers', type=int, default=16)
    ap.add_argument('--max-records', type=int, default=40, help='Records generated but not yet finished')
    ap.add_argument('--keep', action='store_true', help='keep sources and build outputs')
    ap.add_argument('--max-procs', type=int, default=10 ** 6, help='at most this many Lean processes at once')
    args = ap.parse_args()
    idxs = list(args.idx)
    if args.idx_file:
        idxs += [int(x) for x in open(args.idx_file).read().split()]
    os.makedirs(args.out, exist_ok=True)
    rp = os.path.join(args.out, 'rows.jsonl')
    done = {json.loads(l)['idx'] for l in open(rp)} if os.path.exists(rp) else set()
    idxs = [i for i in idxs if i not in done]
    print('%d Records to do (%d already done)' % (len(idxs), len(done)), flush=True)
    Node(args).run(idxs)


if __name__ == '__main__':
    main()
