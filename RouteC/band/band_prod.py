"""Production driver for the band certificate (approach A) on a list of seed boxes.

  python3 band_prod.py INPUT.jsonl OUTDIR [procs]

INPUT rows: {"id", "centers", "radii"} (exact rational strings, radians).  For each box:
  1. cert.certify(row, arc=True, tape=...)   float search, writes the decision tape (arc reduction only if its
                                             hypothesis is certified on the box, else the full label domain);
  2. verify.verify(tape, k)                  Arb re-derivation of every node and leaf decision from the seed box
                                             alone, against the Arb Taylor cap M of R(E) on the box;
  3. exact coverage of every recorded bisection and of the label roots (cover_check.check_split/check_roots).
A box is accepted only if all three pass.  Output: OUTDIR/results.jsonl (one record per box, with the tape sha256)
and OUTDIR/tapes/<id>.npz.  Statement certified for an accepted box: every order-6 complex Hadamard whose dephased
top-left corner is E(theta), theta in the box, has a corner with R > sup_box R(E); hence the box has no point of D0.
"""
import sys, os, json, time, hashlib
import numpy as np
from multiprocessing import Pool
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
import cert, verify as V, cover_check as CC

INPUT, OUT = sys.argv[1], sys.argv[2]
PROCS = int(sys.argv[3]) if len(sys.argv) > 3 else 64
ROWS = [json.loads(l) for l in open(INPUT) if l.strip()]
V.HB = INPUT


def sha(p):
    return hashlib.sha256(open(p, 'rb').read()).hexdigest()


def coverage(tape):
    T = np.load(tape); arc = bool(T['arc']); CC.check_roots(arc); n = 0
    for pre in ('lB', 'lC'):
        a = T[pre + '_a']; m = a >= 2
        n += CC.check_split(T[pre + '_c'][m], T[pre + '_r'][m], a[m] - 2)
    a = T['n_a']; m = a >= 10
    n += CC.check_split(T['n_c'][m], T['n_r'][m], a[m] - 10)
    return n


def one(k):
    row = ROWS[k]; t0 = time.time(); tape = os.path.join(OUT, 'tapes', '%d.npz' % row['id'])
    rec = dict(id=row['id'], index=k)
    logf = open(os.path.join(OUT, 'logs', '%d.log' % row['id']), 'w')
    def log(*a): print(*a, file=logf, flush=True)
    try:
        r = cert.certify(row, arc=True, tape=tape, log=log)
        rec.update(search_ok=bool(r['ok']), reason=r['reason'], nodes=r['nodes'], t_search=round(r['time'], 1))
        if r['ok']:
            v = V.verify(tape, k, None, log=log)
            rec.update(verify_ok=bool(v['ok']), M=v.get('M'), leaves=v.get('leaves'))
            rec['splits_checked'] = coverage(tape)
            rec['accepted'] = bool(v['ok'])
            rec['tape_sha256'] = sha(tape)
        else:
            rec['accepted'] = False
    except AssertionError as e:
        rec.update(accepted=False, error='assert: ' + str(e))
    except Exception as e:
        rec.update(accepted=False, error='%s: %s' % (type(e).__name__, e))
    rec['t'] = round(time.time() - t0, 1)
    return rec


if __name__ == '__main__':
    os.makedirs(os.path.join(OUT, 'tapes'), exist_ok=True); os.makedirs(os.path.join(OUT, 'logs'), exist_ok=True)
    done = set()
    rp = os.path.join(OUT, 'results.jsonl')
    if os.path.exists(rp):
        done = {json.loads(l)['id'] for l in open(rp) if l.strip()}
    todo = [k for k in range(len(ROWS)) if ROWS[k]['id'] not in done]
    with Pool(PROCS, maxtasksperchild=1) as pool, open(rp, 'a') as f:
        for rec in pool.imap_unordered(one, todo):
            f.write(json.dumps(rec) + '\n'); f.flush()
    recs = [json.loads(l) for l in open(rp) if l.strip()]
    print(json.dumps(dict(boxes=len(recs), accepted=sum(r.get('accepted', False) for r in recs))))
