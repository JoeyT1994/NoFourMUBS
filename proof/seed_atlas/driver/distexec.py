"""A multi-node drop-in for concurrent.futures.ProcessPoolExecutor, standard library only.

The master serves two queues (tasks, results) with multiprocessing.managers.  Each node runs `distworker.py`, which
starts P processes; every process connects, takes (task id, function name, pickled args), runs driver.<function> and
returns the pickled result.  Atlas snapshots are not sent through the queues: an argument that is a snapshot dict is
replaced by a reference to a versioned file on the shared filesystem (written at most every SNAP_EVERY seconds, so
workers see a slightly stale snapshot, which only costs efficiency: the master de-duplicates against newer balls).
"""
import concurrent.futures as cf
import os, pickle, queue, threading, time
from multiprocessing.managers import BaseManager

SNAP_EVERY = 20.0
SNAP_KEEP = 6


class _QM(BaseManager):
    pass


class DistExecutor(cf.Executor):
    def __init__(self, port, authkey, snapdir):
        self.tq, self.rq = queue.Queue(), queue.Queue()
        _QM.register('tasks', callable=lambda: self.tq)
        _QM.register('results', callable=lambda: self.rq)
        self.mgr = _QM(address=('', port), authkey=authkey)
        self.server = self.mgr.get_server()
        threading.Thread(target=self.server.serve_forever, daemon=True).start()
        self.futs, self.n, self.lock = {}, 0, threading.Lock()
        self.snapdir = snapdir; os.makedirs(snapdir, exist_ok=True)
        self.snap_t, self.snap_ver, self.snap_files = 0.0, None, []
        threading.Thread(target=self._collect, daemon=True).start()

    def _snapref(self, d):
        now = time.time()
        if self.snap_ver is None or now - self.snap_t > SNAP_EVERY:
            ver = '%d_%d' % (len(d['r']), int(now))
            path = os.path.join(self.snapdir, 'snap_%s.pkl' % ver)
            with open(path + '.tmp', 'wb') as f: pickle.dump(d, f, protocol=4)
            os.replace(path + '.tmp', path)
            self.snap_files.append(path); self.snap_ver, self.snap_t = path, now
            while len(self.snap_files) > SNAP_KEEP:
                try: os.remove(self.snap_files.pop(0))
                except OSError: pass
        return ('__SNAP__', self.snap_ver)

    def submit(self, fn, *args, **kw):
        args = tuple(self._snapref(x) if isinstance(x, dict) and 'Minv' in x and 'theta0' in x else x for x in args)
        f = cf.Future()
        with self.lock:
            self.n += 1; tid = self.n; self.futs[tid] = f
        self.tq.put((tid, fn.__name__, pickle.dumps((args, kw), protocol=4)))
        return f

    def _collect(self):
        while True:
            tid, ok, payload = self.rq.get()
            with self.lock: f = self.futs.pop(tid, None)
            if f is None: continue
            if ok: f.set_result(pickle.loads(payload))
            else: f.set_exception(RuntimeError(payload))

    def shutdown(self, wait=True, cancel_futures=False):
        for _ in range(10000): self.tq.put(None)
