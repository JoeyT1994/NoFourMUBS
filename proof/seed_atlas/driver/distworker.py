"""Worker node for distexec.DistExecutor.  Usage: distworker.py HOST PORT AUTHKEY NPROCS"""
import os, sys, pickle, time, traceback, warnings
os.environ.setdefault('OMP_NUM_THREADS', '1'); os.environ.setdefault('OPENBLAS_NUM_THREADS', '1')
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE); sys.path.insert(0, os.path.join(HERE, '../../atlas'))
import multiprocessing as mp
from multiprocessing.managers import BaseManager


class _QM(BaseManager):
    pass


_QM.register('tasks'); _QM.register('results')


def loop(host, port, key):
    warnings.filterwarnings('ignore')
    import driver as DRV
    DRV._init()
    for i in range(600):                          # the master may still be starting
        try:
            m = _QM(address=(host, port), authkey=key); m.connect(); break
        except OSError:
            time.sleep(2)
    else:
        return
    tq, rq = m.tasks(), m.results()
    cache = {}
    while True:
        item = tq.get()
        if item is None: return
        tid, name, blob = item
        try:
            args, kw = pickle.loads(blob)
            args = list(args)
            for i, x in enumerate(args):
                if isinstance(x, tuple) and len(x) == 2 and x[0] == '__SNAP__':
                    if cache.get('path') != x[1]:
                        cache['path'] = x[1]; cache['d'] = pickle.load(open(x[1], 'rb'))
                    args[i] = cache['d']
            res = getattr(DRV, name)(*args, **kw)
            rq.put((tid, True, pickle.dumps(res, protocol=4)))
        except Exception:
            rq.put((tid, False, traceback.format_exc()[-2000:]))


if __name__ == '__main__':
    host, port, key, nprocs = sys.argv[1], int(sys.argv[2]), sys.argv[3].encode(), int(sys.argv[4])
    ps = [mp.Process(target=loop, args=(host, port, key)) for _ in range(nprocs)]
    for p in ps: p.start()
    for p in ps: p.join()
