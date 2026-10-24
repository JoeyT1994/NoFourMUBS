"""Kernel-check seed balls on one node (KERNEL_SEED.md section 7): generate each ball's modules (`seed_kball.py`,
`seed_stagec.py`), compile them under a memory budget, check the axioms of `cert`, and archive one olean tarball, one
source tarball and one row per ball.  Resumable: balls with an `ok` row are skipped.

  python3 kernel_atlas/generators/seed_run.py --cert CERT.json.gz --idx-file IDX --out /tmp/work --archive ARCH \
      --max-procs 120 --mem-gb 850 --gen-workers 24 [--name TASK] [--drain-min 60]

The shared modules (KernelAtlas.Seed.*, the table KernelAtlas.SeedA.Tab*) must be built in the staged tree.
"""
import argparse, concurrent.futures as cf, gzip, json, os, re, shutil, signal, subprocess, sys, tarfile, time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
LEAN_DIR = os.path.join(ROOT, 'lean')
SRC = os.path.join(ROOT, 'kernel_atlas', 'lean')
OLEAN = os.path.join(LEAN_DIR, '.lake', 'build', 'lib', 'lean')
AXIOMS = {'propext', 'Classical.choice', 'Quot.sound'}

# peak memory per module kind (GB), from the laptop prototype; rusty peaks were ~equal for the old Records
MEM = {'Core': 16, 'H2Slab': 20, 'Graph2': 24, 'Edg': 16, 'Hints2': 16, 'Bnd': 12, 'C1': 10}
MEM_DEFAULT = 9


def mem_of(m):
    leaf = m.rsplit('.', 1)[1]
    for k, v in MEM.items():
        if leaf.startswith(k): return v
    return MEM_DEFAULT


def lean_env():
    out = subprocess.run(['lake', 'env', 'printenv', 'LEAN_PATH'], cwd=LEAN_DIR, capture_output=True, text=True, check=True)
    lean = subprocess.run(['lake', 'env', 'which', 'lean'], cwd=LEAN_DIR, capture_output=True, text=True, check=True)
    return dict(os.environ, LEAN_PATH=out.stdout.strip()), lean.stdout.strip()


def gen_ball(cert_path, j):
    """Generate ball j's modules (in a worker process).  Returns (j, info or error)."""
    try:
        sys.path.insert(0, HERE)
        import seed_kball as K
        op = gzip.open if cert_path.endswith('.gz') else open
        cert = json.load(op(cert_path, 'rt'))
        t0 = time.time()
        G = K.generate(cert, j, log=lambda *a: None)
        d = K.write_ball(G, stagec=True)
        return j, dict(ok=True, gen_s=round(time.time() - t0, 1), stats=G['stats'], cores=len(G['clist']),
                       nodes=G['nodes'], n_needed=G['nworst'] / K.SC, dir=d)
    except Exception as e:                                              # noqa: BLE001
        return j, dict(ok=False, error=repr(e)[:2000])


def modules_of(d, pre):
    deps = {}
    for f in sorted(os.listdir(d)):
        if f.endswith('.lean'):
            deps[pre + f[:-5]] = [l.split()[1] for l in open(os.path.join(d, f)) if l.startswith('import ' + pre)]
    return deps


def parse_time(text):
    u = re.search(r'User time \(seconds\): ([\d.]+)', text)
    if u:
        w = re.search(r'Elapsed \(wall clock\) time.*?: ([\d:.]+)', text)
        wall = sum(float(x) * 60 ** k for k, x in enumerate(reversed(w.group(1).split(':')))) if w else None
        rss = int(re.search(r'Maximum resident set size \(kbytes\): (\d+)', text).group(1)) / 2 ** 20
        return wall, float(u.group(1)), rss
    m = re.search(r'([\d.]+) real\s+([\d.]+) user', text)
    if m:
        r = re.search(r'(\d+)\s+maximum resident set size', text)
        return float(m.group(1)), float(m.group(2)), int(r.group(1)) / 2 ** 30 if r else None
    return None, None, None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--cert', required=True); ap.add_argument('--idx-file', required=True)
    ap.add_argument('--out', required=True); ap.add_argument('--archive', required=True)
    ap.add_argument('--name', default='task'); ap.add_argument('--max-procs', type=int, default=8)
    ap.add_argument('--mem-gb', type=float, default=56); ap.add_argument('--gen-workers', type=int, default=2)
    ap.add_argument('--drain-min', type=float, default=0); ap.add_argument('--hours', type=float, default=1e9)
    a = ap.parse_args()
    t_start = time.time()
    os.makedirs(a.out, exist_ok=True)
    for sub in ('rows', 'oleans', 'src', 'logs'): os.makedirs(os.path.join(a.archive, sub), exist_ok=True)
    rows_path = os.path.join(a.archive, 'rows', a.name + '.jsonl')
    done = set()
    for f in os.listdir(os.path.join(a.archive, 'rows')):
        for line in open(os.path.join(a.archive, 'rows', f)):
            r = json.loads(line)
            if r.get('status') == 'ok': done.add(r['ball'])
    balls = [int(x) for x in open(a.idx_file).read().split() if int(x) not in done]
    print('%d balls to do (%d already ok)' % (len(balls), len(done)), flush=True)
    env, lean = lean_env()
    gen = cf.ProcessPoolExecutor(a.gen_workers)
    pending = {gen.submit(gen_ball, a.cert, j): j for j in balls}
    queue = {}                     # module -> (ball, deps)
    state = {}                     # ball -> dict(mods=set left, info, t0, user, peak)
    running = {}                   # Popen -> (module, ball, log, mem)
    used = 0.0
    stop = [False]
    signal.signal(signal.SIGUSR1, lambda *x: stop.__setitem__(0, True))
    rows = open(rows_path, 'a')

    def finish(j, status, extra=None):
        st = state.pop(j)
        d = st['info']['dir']
        row = dict(ball=j, status=status, gen_s=st['info'].get('gen_s'), user_s=round(st['user'], 1),
                   peak_gb=round(st['peak'], 2), wall_s=round(time.time() - st['t0'], 1), stats=st['info'].get('stats'),
                   cores=st['info'].get('cores'), task=a.name, **(extra or {}))
        if status == 'ok':
            pre = 'KernelAtlas/SeedA/B%d' % j
            with tarfile.open(os.path.join(a.archive, 'oleans', 'B%d.tar' % j), 'w') as t:
                t.add(os.path.join(OLEAN, pre), arcname=pre, filter=lambda ti: None if ti.name.endswith('.ilean') else ti)
            with tarfile.open(os.path.join(a.archive, 'src', 'B%d.tar.gz' % j), 'w:gz') as t:
                t.add(d, arcname=pre)
        rows.write(json.dumps(row) + '\n'); rows.flush()
        print('%s ball %d %s user %.0fs peak %.1f GB' % (time.strftime('%H:%M:%S'), j, status, st['user'], st['peak']),
              flush=True)

    while pending or queue or running:
        # generated balls enter the module queue
        for fut in [f for f in pending if f.done()]:
            j = pending.pop(fut)
            j_, info = fut.result()
            if not info['ok']:
                rows.write(json.dumps(dict(ball=j, status='gen_failed', error=info['error'], task=a.name)) + '\n'); rows.flush()
                continue
            pre = 'KernelAtlas.SeedA.B%d.' % j
            deps = modules_of(info['dir'], pre)
            state[j] = dict(mods=set(deps), info=info, t0=time.time(), user=0.0, peak=0.0)
            for m, dd in deps.items(): queue[m] = (j, dd)
        # finished modules
        for p in list(running):
            if p.poll() is None: continue
            m, j, log, mem = running.pop(p); used -= mem
            wall, user, rss = parse_time(open(log).read())
            if j in state:
                state[j]['user'] += user or 0; state[j]['peak'] = max(state[j]['peak'], rss or 0)
                state[j]['mods'].discard(m)
                if p.returncode:
                    for q in [q for q, v in running.items() if v[1] == j]: q.kill()
                    for mm in [mm for mm, v in queue.items() if v[0] == j]: del queue[mm]
                    finish(j, 'failed', dict(module=m, log=open(log).read()[-2000:]))
                elif not state[j]['mods']:
                    ax = os.path.join(a.out, 'ax_%d.lean' % j)
                    with open(ax, 'w') as f:
                        f.write('import KernelAtlas.SeedA.B%d.Cert\n#print axioms NoFourMUBs.KernelAtlas.SeedA.B%d.cert\n' % (j, j))
                    r = subprocess.run([lean, ax], cwd=LEAN_DIR, env=env, capture_output=True, text=True)
                    mm = re.search(r'depends on axioms: \[(.*?)\]', r.stdout, re.S)
                    axs = sorted(x.strip() for x in mm.group(1).split(',')) if mm else None
                    finish(j, 'ok' if axs is not None and set(axs) <= AXIOMS else 'axioms', dict(axioms=axs))
        # start modules whose dependencies are done
        drain = (time.time() - t_start) / 3600 > a.hours - a.drain_min / 60
        if not stop[0]:
            for m in sorted(queue, key=lambda m: (queue[m][0], -mem_of(m))):
                if len(running) >= a.max_procs: break
                j, dd = queue[m]
                if drain and state[j]['user'] == 0: continue
                if any(x in queue or x in [v[0] for v in running.values()] for x in dd): continue
                mem = mem_of(m)
                if used + mem > a.mem_gb and running: continue
                rel = m.split('.')
                src = os.path.join(SRC, *rel) + '.lean'
                ob = os.path.join(OLEAN, *rel)
                os.makedirs(os.path.dirname(ob), exist_ok=True)
                log = os.path.join(a.out, 'logs', m + '.log'); os.makedirs(os.path.dirname(log), exist_ok=True)
                f = open(log, 'w')
                tcmd = ['/usr/bin/time', '-v'] if sys.platform.startswith('linux') else ['/usr/bin/time', '-l']
                p = subprocess.Popen(tcmd + [lean, '-R', SRC, '-o', ob + '.olean', src], cwd=LEAN_DIR, env=env,
                                     stdout=f, stderr=subprocess.STDOUT)
                running[p] = (m, j, log, mem); used += mem
                del queue[m]
        if stop[0] and not running: break
        time.sleep(1)
    print('done in %.0f s' % (time.time() - t_start), flush=True)


if __name__ == '__main__':
    main()
