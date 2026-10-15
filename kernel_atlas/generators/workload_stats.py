"""Per-Record workload statistics on a random sample (single process)."""
import os, sys, gzip, json, time, math, random, itertools
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'proof', 'atlas'))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import numpy as np
from fractions import Fraction as Fr
import stagec as SC, atlas as AT, certify as CE
from ballrecord import BallRecord
import kbins as KB
from export import split
d = json.load(gzip.open(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'proof', 'atlas', 'results', 'atlas_certificate.json.gz'),'rt'))
recs = d['records']
random.seed(int(sys.argv[2]) if len(sys.argv) > 2 else 1)
N = int(sys.argv[1])
idxs = random.sample(range(len(recs)), N)
stats = []
orig_single, orig_tang, oe, oj, otc = SC.single_tests, SC.tangent_tests, SC.edges, SC.joint_filter, SC.two_cliques
cur = {}
def single(U, P, rr, M, K, eP, rF):
    ok = orig_single(U, P, rr, M, K, eP, rF); cur['single'] = cur.get('single', 0) + len(U); return ok
def tang(U, P, rr, M, K, eP, rF, T, rH, nN):
    ok = orig_tang(U, P, rr, M, K, eP, rF, T, rH, nN); cur['tang'] = cur.get('tang', 0) + len(U); return ok
def edges(C, s, chunk=256):
    O, U = oe(C, s, chunk); cur['labels'] = len(C); cur['pairs'] = len(C) * (len(C) - 1) // 2
    cur['O0'] = int(O.sum() // 2); cur['U0'] = int(U.sum() // 2); return O, U
def joint(C, s, O, Ub, *a):
    O2, U2 = oj(C, s, O, Ub, *a); cur['O1'] = int(O2.sum() // 2); cur['U1'] = int(U2.sum() // 2); return O2, U2
SC.single_tests, SC.tangent_tests, SC.edges, SC.joint_filter = single, tang, edges, joint

class MiniAtlas:
    pass

def boundary_counts(s):
    """Replay certify_boundary counting box evaluations and (box, target) transfer tests."""
    A = MiniAtlas(); A.recs = {}; A.transfers = {}
    r = recs[s]
    def mk(i):
        ri = recs[i]
        return dict(phi=np.array([float.fromhex(x) for x in ri['phi']]).reshape(6, 6), R=ri['R'])
    A.recs = {s: mk(s)}
    tg = []
    for (t, sg, tr, rp, cp) in r['targets']:
        A.recs[t] = mk(t)
        tg.append((t, sg, list(AT.to_sp('tr' if tr else 'id', np.array(rp), np.array(cp))[1])))
    A.transfers[s] = dict(targets=tg)
    B = BallRecord(A.recs[s]['phi'].reshape(36), Tint=r.get('Tint'))
    rH, n0 = B.normal_bound(r['R'])
    A.recs[s]['Tcert'] = np.array(B.rec.Tbn, float)
    T = A.recs[s]['Tcert']; R = r['R']; nT = AT.mnorm(T)
    class L(list):
        pass
    tdat = [(t, CE.transfer_data((sg, tuple(pi)), A.recs[s]['phi'], A.recs[t]['phi'], T)) for (t, sg, pi) in tg]
    w = rH / 2
    E = np.array(list(itertools.product(np.array([-0.75, -0.25, 0.25, 0.75]) * rH, repeat=4)))
    boxes = 0; pairs = 0; leaves = 0; offs = 0
    while len(E):
        boxes += len(E)
        keep = ~AT.offshell(E, w, T, nT, R, n0, rH, margin=CE.MARGIN)
        offs += int((~keep).sum()); E = E[keep]
        done = np.zeros(len(E), bool)
        for t, (cf, cr, M) in tdat:
            pairs += int((~done).sum())
            sup = np.linalg.norm(cf[None, :] + E @ M.T, axis=1) + cr + nT * w + 1e-12
            done |= sup + n0 < A.recs[t]['R'] - CE.MARGIN
        leaves += int(done.sum()); E = E[~done]
        if len(E): E, w = AT.children(E, w)
    return dict(boxes=boxes, offshell=offs, transfer_tests=pairs, transfer_leaves=leaves, targets=len(tg))

for s in idxs:
    r = recs[s]; cur.clear()
    t0 = time.time()
    P = np.array([float.fromhex(x) for x in r['phi']])
    B = BallRecord(P, Tint=r.get('Tint'))
    o = B.stage_c(r['R'], radius=r['label_radius'])
    t1 = time.time()
    st = dict(idx=s, R=r['R'], ok=bool(o.get('ok')), steps=o.get('steps'), t_stagec=round(t1 - t0, 2), **cur)
    try:
        st.update(boundary_counts(s))
    except Exception as ex:
        st['boundary_error'] = str(ex)[:80]
    st['t_total'] = round(time.time() - t0, 2)
    print(json.dumps(st), flush=True)
