"""Wide F6 tube, covering part: every Hadamard within d_F <= r_T of the F6 orbit lies, column by column, within
projector distance delta <= 1/40 of one of finitely many explicit reference matrices.

Setting (all rigorous, Arb):
 * Gauge.  If d_F(H) <= r then H ~ F o e^{iu} with u horizontal (row and column sums zero) and ||u||_F <= RHO(r):
   align H to F by the minimizing monomials, rephase each column so <h_j, f_j> >= 0; then
   sum_i |e^{i phi_ij} - 1|^2 = 12 - 12 sqrt(1 - d_j^2) <= 12(1 - sqrt(1 - r^2)); phases from chords (factor
   arcsin), and the horizontal projection does not increase the Frobenius norm.
 * Normal form.  Phi(u) = the 30 real coordinates of the 15 off-diagonal entries of (F o e^{iu})(F o e^{iu})^dagger;
   J = Phi'(0); J J^T has eigenvalues {0, 3, 9, 12}; K = J^T p(J J^T) with p(0) = 0, p(l) = 1/l (exact), so
   K J = P_N (N = horizontal space minus the tangent space T = span of the horizontal t1, t2, t1^T, t2^T) and
   ||K|| = 1/sqrt3.  For u = v + n (v in T, n in N) a Hadamard satisfies n = T_v(n) := -K (Phi(v+n) - J(v+n)).
   ||Phi''(x)[w,w']|| <= 2^{3/2} ||w|| ||w'|| on horizontal directions (PRACTICAL_LOCAL.tex), so on
   {||x|| <= rho'} the map n -> T_v(n) is a contraction with q = (2/sqrt3) sqrt2 rho' < 1 and the fixed point is
   unique there.
 * Cells.  v = Tb y, y in a cube y_c +- h (Tb = the four horizontal tangent patterns, rational).  With nh = the
   numerical fixed point at v_c, every true n for v in the cell satisfies
       ||n - nh|| <= (||T_{v_c}(nh) - nh|| + ||K R'(X) Tb [-h,h]^4||) / (1 - q),     R = Phi - J,
   (mean-value form with the interval Jacobian over the box X), so each column of u - u_c, u_c = v_c + nh, is
   bounded, and so is the column projector distance delta to the table-rounded reference F o e^{i u_c}.
 * A cell is accepted when delta <= 1/40 and the reference certificate (reference.py: ray cover + exact graph,
   tau = rho = 3/20 >= 6 delta) passes.
Usage: python3 cells.py R_T H0 [maxcells] [outdir]
"""
import itertools, json, math, os, sys, time, hashlib
from fractions import Fraction as Fr
import numpy as np
from flint import arb, acb, arb_mat, ctx
ctx.prec = 80
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import reference as REF

PAIRS = list(itertools.combinations(range(6), 2))
PI = arb.pi()
# exact F6 data: F[i][c] = e^{i pi i c / 3}; overlap coefficient F_ic conj(F_jc) = e^{i pi (i-j) c / 3}
def cs(k):   # cos, sin of k pi / 3 as exact arb
    k %= 6; c = [1, arb(1) / 2, -arb(1) / 2, -1, -arb(1) / 2, arb(1) / 2][k]; s3 = arb(3).sqrt() / 2
    s = [0, s3, s3, 0, -s3, -s3][k]
    return arb(c), arb(s)

# J: 30 x 36; rows: Re then Im of the 15 pairs; column index 6*row + col.
# d/dx_ic of e^{i(x_ic - x_jc)} * a  (a = e^{i pi (i-j)c/3}) at 0 is i a; d/dx_jc is -i a.
def jacobian_exact():
    J = [[arb(0)] * 36 for _ in range(30)]
    for p, (i, j) in enumerate(PAIRS):
        for c in range(6):
            ca, sa = cs((i - j) * c)          # a = ca + i sa ; i a = -sa + i ca
            for who, sg in ((i, 1), (j, -1)):
                J[p][6 * who + c] += sg * (-sa); J[15 + p][6 * who + c] += sg * ca
    return arb_mat(J)
J = jacobian_exact()
JJ = J * J.transpose()
# p(x) = x (a + b x + c x^2) with p(3)=1/3, p(9)=1/9, p(12)=1/12
M3 = [[3, 9, 27], [9, 81, 729], [12, 144, 1728]]
import sympy as _sp
_sol = _sp.Matrix(M3).LUsolve(_sp.Matrix([_sp.Rational(1, 3), _sp.Rational(1, 9), _sp.Rational(1, 12)]))
pa, pb, pc = [arb(int(_sp.fraction(x)[0])) / int(_sp.fraction(x)[1]) for x in _sol]
I30 = arb_mat(30, 30); [I30.__setitem__((k, k), 1) for k in range(30)]
PJJ = JJ * (I30 * pa + JJ * pb + JJ * JJ * pc)
K = J.transpose() * PJJ                            # 36 x 30
# exact spectrum check: JJ (JJ - 3)(JJ - 9)(JJ - 12) = 0, so p(JJ) = (JJ)^+ and ||K||^2 = 1/3
_S = JJ * (JJ - I30 * 3) * (JJ - I30 * 9) * (JJ - I30 * 12)
assert all(_S[a, b].contains(0) and abs(_S[a, b]).upper() < 1e-15 for a in range(30) for b in range(30)), 'spectrum'
# tangent patterns (horizontal projections, rational)
def hproj(M):
    M = [[Fr(x) for x in r] for r in M]; rm = [sum(r) / 6 for r in M]; cm = [sum(M[i][j] for i in range(6)) / 6 for j in range(6)]
    tm = sum(rm) / 6; return [[M[i][j] - rm[i] - cm[j] + tm for j in range(6)] for i in range(6)]
t1 = [[1 if (r % 2 == 1 and c in (1, 4)) else 0 for c in range(6)] for r in range(6)]
t2 = [[1 if (r % 2 == 1 and c in (2, 5)) else 0 for c in range(6)] for r in range(6)]
tr = lambda M: [list(x) for x in zip(*M)]
TB = [hproj(t) for t in (t1, t2, tr(t1), tr(t2))]
Tb = arb_mat([[arb(TB[k][e // 6][e % 6].numerator) / TB[k][e // 6][e % 6].denominator for k in range(4)] for e in range(36)])
COLT = [math.sqrt(sum(float(TB[k][i][c]) ** 2 for i in range(6) for k in range(4))) * 1.0000001 for c in range(6)]
PN_np = None
Tbn = np.array([[float(TB[k][e // 6][e % 6]) for k in range(4)] for e in range(36)])
GT = [[sum(TB[a][i][j] * TB[b][i][j] for i in range(6) for j in range(6)) for b in range(4)] for a in range(4)]   # exact Gram
# exact projector onto N: P_N = P_hor - Tb (Tb^T Tb)^{-1} Tb^T
_Ph = [[(1 if a == b else 0) - (Fr(1, 6) if a // 6 == b // 6 else 0) - (Fr(1, 6) if a % 6 == b % 6 else 0) + Fr(1, 36)
        for b in range(36)] for a in range(36)]
_GTi = _sp.Matrix(GT).inv()
_TBm = _sp.Matrix([[TB[k][e // 6][e % 6] for k in range(4)] for e in range(36)])
_PT = _TBm * _GTi * _TBm.T
PN = arb_mat([[arb(int(_sp.fraction(_Ph[a][b] - _PT[a, b])[0])) / int(_sp.fraction(_Ph[a][b] - _PT[a, b])[1]) for b in range(36)] for a in range(36)])
SQRT_LMAX_GT = math.sqrt(max(np.linalg.eigvalsh(np.array(GT, float)))) * 1.000001
# float versions
Jn = np.array([[float(J[r, c].mid()) for c in range(36)] for r in range(30)]); Kn = np.array([[float(K[r, c].mid()) for c in range(30)] for r in range(36)])
Fn = np.array([[np.exp(1j * np.pi * i * c / 3) for c in range(6)] for i in range(6)])

def Phi_n(x):
    H = Fn * np.exp(1j * x.reshape(6, 6)); G = H @ H.conj().T
    return np.r_[[G[i, j].real for i, j in PAIRS], [G[i, j].imag for i, j in PAIRS]]
def fixed_point(v, iters=400):
    n = np.zeros(36)
    for _ in range(iters):
        nn = -Kn @ (Phi_n(v + n) - Jn @ (v + n))
        if np.abs(nn - n).max() < 1e-16: break
        n = nn
    return nn

def Phi_arb(x):   # x: list of 36 arb (balls allowed)
    out_re, out_im = [], []
    for i, j in PAIRS:
        sr = arb(0); si = arb(0)
        for c in range(6):
            ang = PI * ((i - j) * c) / 3 + x[6 * i + c] - x[6 * j + c]
            sr += ang.cos(); si += ang.sin()
        out_re.append(sr); out_im.append(si)
    return out_re + out_im
def Rprime_box(X):  # interval Jacobian of R = Phi - J over the box X (list of 36 arb balls); 30 x 36
    M = [[arb(0)] * 36 for _ in range(30)]
    for p, (i, j) in enumerate(PAIRS):
        for c in range(6):
            ang = PI * ((i - j) * c) / 3 + X[6 * i + c] - X[6 * j + c]
            dre = -ang.sin(); dim = ang.cos()       # d/dx_ic of (cos ang, sin ang)
            for who, sg in ((i, 1), (j, -1)):
                M[p][6 * who + c] += sg * dre; M[15 + p][6 * who + c] += sg * dim
    return arb_mat(M) - J

def upper(x): return float(abs(x).upper())

def opnorm_upper(M):
    """rigorous upper bound of the spectral norm of an interval matrix: ||mid||_2 + ||rad||_F, with
    ||mid||_2^2 <= ||mid^T mid||_inf (exact product of the float midpoints in arb)."""
    r, c = M.nrows(), M.ncols()
    A = arb_mat([[arb(float(M[i, j].mid())) for j in range(c)] for i in range(r)])
    rad = math.sqrt(sum((float(M[i, j].rad()) + abs(float(M[i, j].mid()) - float(arb(float(M[i, j].mid())).mid()))) ** 2
                        for i in range(r) for j in range(c)))
    # midpoints were rounded to floats: |M - A| <= rad(M) + |mid(M) - A|, entrywise (second term is 0 here)
    B = A.transpose() * A
    rowmax = max(sum(abs(B[i, j]).upper() for j in range(c)) for i in range(c))
    return float(arb(rowmax).sqrt().upper()) + rad * 1.000001

def RHO(r):
    """||u||_F bound for d_F <= r (see docstring)."""
    r = arb(r); chord2 = 12 * (1 - (1 - r * r).sqrt())         # per column sum of chord^2
    cmax = chord2.sqrt()                                        # largest single chord
    s = cmax / 2; f = s.asin() / s                              # phase <= f * chord for chords <= cmax
    return upper(f * (6 * chord2).sqrt())

def cell(yc, h, rho, q, tau_delta=Fr(1, 40), run_ref=True, work=None):
    """Rigorous column-distance bound for one cell; optionally run the reference certificate."""
    vc = Tbn @ yc
    nh = fixed_point(vc)
    xc = vc + nh
    # rigorous residual ||T_{v_c}(nh) - nh||, exact float inputs
    xa = [arb(float(t)) for t in xc]
    Ph = Phi_arb(xa)
    Rv = arb_mat([[Ph[k] - sum((J[k, e] * xa[e] for e in range(36)), arb(0))] for k in range(30)])
    Tn = -(K * Rv)
    res = math.sqrt(sum(upper(Tn[e, 0] - arb(float(nh[e]))) ** 2 for e in range(36)))
    # box X = xc + Tb [-h, h]^4 (the n-part is fixed at nh: mean value in v only)
    dy = [arb(0, h) for _ in range(4)]
    dv = Tb * arb_mat([[d] for d in dy])
    X = [xa[e] + dv[e, 0] for e in range(36)]
    Rp = Rprime_box(X)
    Mv = K * (Rp * Tb)                                  # 36 x 4 interval matrix; ||Delta y||_2 <= 2h
    var = opnorm_upper(Mv) * 2 * h
    # Uniqueness: on {||x|| <= rho'} the map n -> T_v(n) is a contraction with the global q (PRACTICAL_LOCAL bound),
    # so it has at most one fixed point there; the true normal part of any H in the tube is that fixed point.
    normxc = math.sqrt(sum(upper(xa[k]) ** 2 for k in range(36))) * 1.000001
    rv_ = SQRT_LMAX_GT * 2 * h
    rho_p0 = max(rho, normxc + rv_)
    qq = upper(2 / arb(3).sqrt() * arb(2).sqrt() * arb(rho_p0))
    if qq >= 1:
        return dict(ok=False, reason='no contraction', q=qq)
    # Enclosure (Krawczyk-type): find e with (res + var) <= (1 - q_loc(e)) e, where q_loc(e) bounds ||K R'(x)||
    # on the box X_e = x_c + Tb[-h,h]^4 + [-e,e]^36.  Then T_v maps the ball B(nh, e) into itself and contracts it,
    # so its fixed point (the true n, by uniqueness, provided B lies in {||x|| <= rho'}) is within e of nh.
    # q_loc(e) = ||K R'(x_c) P_N|| + (2 sqrt2/sqrt3) (e + r_v): for x within e + r_v of x_c,
    # ||K (R'(x) - R'(x_c))|| <= ||K|| sup||Phi''|| ||x - x_c|| = (1/sqrt3) 2^{3/2} ||x - x_c||.
    q0 = opnorm_upper(K * Rprime_box(xa) * PN)
    r_v = SQRT_LMAX_GT * 2 * h
    L2 = float((2 * arb(2).sqrt() / arb(3).sqrt()).upper())
    # smallest e with L2 e^2 - (1 - q0 - L2 r_v) e + (res + var) <= 0
    bq = 1 - q0 - L2 * r_v; cq = res + var
    disc = bq * bq - 4 * L2 * cq
    ok_e = bq > 0 and disc > 0
    if ok_e:
        e = (bq - math.sqrt(disc)) / (2 * L2) * (1 + 1e-9) + 1e-15
        qloc = q0 + L2 * (e + r_v)
        ok_e = qloc < 1 and cq <= (1 - qloc) * e
    if not ok_e:
        return dict(ok=False, reason='enclosure', q=qq)
    rho_p = normxc + rv_ + e
    if rho_p > rho_p0 and upper(2 / arb(3).sqrt() * arb(2).sqrt() * arb(rho_p)) >= 1:
        return dict(ok=False, reason='no contraction', q=qq)
    # column bounds of Delta v
    colv = [COLT[c] * 2 * h for c in range(6)]      # ||col_c(Tb Delta y)|| <= ||Tb restricted to column c||_F ||Delta y||
    # reference: table-rounded F o e^{i u_c}
    Kref = Fn * np.exp(1j * xc.reshape(6, 6))
    psi, Kt = REF.table_reference(Kref)
    # rounding: dephasing is a gauge; rounding error per entry <= pi/L (half a table step) -> column <= sqrt6 pi/L
    rnd = math.sqrt(6) * math.pi / REF.L
    delta = (max(colv) + e + rnd) / math.sqrt(6) * 1.000001
    out = dict(yc=[float(t) for t in yc], h=h, res=res, var=var, q=qq, qloc=qloc, e=e, delta=delta, normx=float(np.linalg.norm(xc)))
    taus = [t for t in (Fr(3, 20), Fr(1, 6)) if 6 * delta <= float(t)]
    if not taus:
        out.update(ok=False, reason='delta'); return out
    if run_ref:
        for tau in taus:
            rep = REF.certify(Kref, tau, tau, work)
            if rep.get('ok'): break
        out.update(ok=bool(rep.get('ok')), ref=rep)
        if not rep.get('ok'): out['reason'] = 'reference'
    else:
        out['ok'] = True
    return out

def cubes(rho, h):
    """Cubes y_c +- h (grid of step 2h) meeting the ellipsoid y^T GT y <= rho^2 (interval test, exact Gram)."""
    G = np.array(GT, float); lam = np.linalg.eigvalsh(G).min() * (1 - 1e-12)
    R = rho / math.sqrt(lam)                         # bounding box of the ellipsoid
    m = int(math.ceil(R / (2 * h))) + 1
    Ga = [[arb(GT[a][b].numerator) / GT[a][b].denominator for b in range(4)] for a in range(4)]
    out = []
    for idx in itertools.product(range(-m, m + 1), repeat=4):
        yc = np.array(idx, float) * 2 * h
        if np.linalg.norm(yc) > R + 2 * h * 2: continue
        Y = [arb(float(yc[k]), h) for k in range(4)]
        quad = sum(Ga[a][b] * Y[a] * Y[b] for a in range(4) for b in range(4))
        if quad.lower() > rho * rho * (1 + 1e-12): continue
        out.append(yc)
    return out

def run_cell(yc, h, rho, work, depth=0, maxdepth=4):
    """Certify a cube, splitting into 16 children on failure.  Returns (ok, list of leaf records)."""
    out = cell(yc, h, rho, None, run_ref=True, work=work)
    if out.get('ok'):
        out['depth'] = depth; return True, [out]
    if depth >= maxdepth:
        out['depth'] = depth; return False, [out]
    recs = []
    for sg in itertools.product((-1, 1), repeat=4):
        ok, r = run_cell(yc + np.array(sg, float) * h / 2, h / 2, rho, work, depth + 1, maxdepth)
        recs += r
        if not ok: return False, recs
    return True, recs

if __name__ == '__main__' and len(sys.argv) > 1 and sys.argv[1] == 'run':
    # python3 cells.py run R_T H0 WORKER NWORKERS OUTDIR
    r_T, h0, W_, NW = float(sys.argv[2]), float(sys.argv[3]), int(sys.argv[4]), int(sys.argv[5]); outdir = sys.argv[6]
    rho = RHO(r_T); work = os.path.join(outdir, 'work%d' % W_); os.makedirs(work, exist_ok=True)
    C = cubes(rho, h0)
    if W_ == 0: print('cubes', len(C), 'rho', rho, flush=True)
    outp = os.path.join(outdir, 'cells_w%d.jsonl' % W_)
    done = set()
    if os.path.exists(outp):
        for l in open(outp): done.add(json.loads(l)['root'])
    with open(outp, 'a') as f:
        for k, yc in enumerate(C):
            if k % NW != W_ or k in done: continue
            t0 = time.time(); ok, recs = run_cell(yc, h0, rho, work)
            f.write(json.dumps(dict(root=k, ok=ok, leaves=len(recs), maxdelta=max(r.get('delta', 9) for r in recs),
                                    nodes=sum(r.get('ref', {}).get('nodes', 0) for r in recs),
                                    fail=None if ok else {kk: vv for kk, vv in recs[-1].items() if kk != 'ref'},
                                    t=round(time.time() - t0, 1))) + '\n'); f.flush()
    sys.exit(0)

if __name__ == '__main__':
    r_T = float(sys.argv[1]); h0 = float(sys.argv[2])
    rho = RHO(r_T)
    print('r_T = %.4f  ->  rho = %.4f,  contraction q at rho = %.3f' % (r_T, rho, 2 / math.sqrt(3) * math.sqrt(2) * rho))
    # pilot: random cells
    rng = np.random.default_rng(0); W = os.environ.get('WIDETUBE_WORK', os.path.join(os.path.dirname(__file__), 'work'))
    for k in range(int(sys.argv[3]) if len(sys.argv) > 3 else 5):
        y = rng.normal(size=4); y /= math.sqrt(y @ np.array(GT, float) @ y); y *= rho * rng.uniform(0.2, 1.0)
        t0 = time.time(); out = cell(y, h0, rho, None, run_ref=True, work=W)
        print({k: (round(v, 5) if isinstance(v, float) else v) for k, v in out.items() if k != 'ref'}, out.get('ref', {}).get('ok'), '%.1fs' % (time.time() - t0), flush=True)
