"""Two-step pattern witness for cells that genuine family triples cross.

L (localise). Column c of a putative completion lies in one of its retained closed fine bins (native PROOF.md section
9). The anisotropic annulus lemma of the tail return (PROOF_815.md sections 4-7): 28 strong and 2 weak K coordinates
around a reference completion y*, two norm variables (S, W), split until every box is discharged. If no box is left
near y*, the pattern is EXCLUDED; otherwise every zero lies within phase radius |T| t of y*.

F (force symmetry). The frozen native averaged moving contraction (family_neighbourhoods/moving_symmetry.py,
PROOF.md section 6) on that tube: q < 1 means every zero has the balanced order-three symmetry (CLASSIFIED).

Floats only propose (y*, T, B, flattenings, windings); every acceptance is an Arb strict inequality. PROOFS.md.
"""
import base64
import math
import numpy as np
from flint import arb, acb, arb_mat
import native_columns as C
import moving as MV

PAIRS = [(a, b) for a in range(6) for b in range(a + 1, 6)]
Z = C.Z
GROUPS = (range(28), range(28, 30))


def up(x): return arb(x.upper())
def frob(a): return C.norm([a[i, j] for i in range(a.nrows()) for j in range(a.ncols())])
def sub(a, rows, cols): return arb_mat([[a[i, j] for j in cols] for i in rows])
def spectral(a): return up(Z.spectral(a))
def fmax(xs):
    """A certified maximum: the largest outward upper endpoint (REVIEW §2). Floats must not choose a maximum."""
    bounds = [up(x) for x in xs]
    if not bounds: raise ArithmeticError('empty maximum')
    if any(not x.is_finite() for x in bounds): raise ArithmeticError('nonfinite maximum')
    return max(bounds)


def helmert():
    """w6 (6x5 isometry onto mean-zero vectors) and E: R^30 -> column-centred phases (row-major index 6r+c)."""
    w = arb_mat(6, 5)
    for j in range(5):
        a = arb((j + 1) * (j + 2)).sqrt()
        for r in range(j + 1): w[r, j] = 1 / a
        w[j + 1, j] = -(j + 1) / a
    e = arb_mat(36, 30)
    for c in range(6):
        for r in range(6):
            for j in range(5): e[6 * r + c, 5 * c + j] = w[r, j]
    return w, e


W6, E = helmert()


# ---- floats: proposals only ---------------------------------------------------------------------------------------

def residual(q, y):
    """66 residuals: K Gram (real parts, imaginary parts; a<b) and |H*K|^2/6 - 1 (index 30+6a+b)."""
    h, k = np.exp(1j * q.reshape(6, 6)), np.exp(1j * y.reshape(6, 6))
    g = k.conj().T @ k; o = np.array([g[a, b] for a, b in PAIRS])
    return np.r_[o.real, o.imag, (np.abs(h.conj().T @ k) ** 2 / 6 - 1).ravel()]


def propose(q, columns, steps=20, chord=60):
    """y*: from the colour centres, Gauss-Newton steps on F(q, .), then the strong/weak split at that point
    (T: right singular vectors of the K Jacobian, weak pair last; B: the left inverse), then chord steps on the
    square system BF(q, y) = 0, so that G(0) = BF(q, y*) is small even where F(q, .) has no zero."""
    y = np.array(columns).T.ravel().copy()
    jac = lambda y: np.array([(residual(q, y + d) - residual(q, y - d)) / 2e-7 for d in np.eye(36) * 1e-7]).T
    for _ in range(steps): y -= np.linalg.lstsq(jac(y), residual(q, y), rcond=None)[0]
    y = y.reshape(6, 6); y -= y.mean(axis=0); y = y.ravel()
    e = Z.mid_np(E); jk = jac(y) @ e
    _, s, vt = np.linalg.svd(jk); t = vt.T; b = np.linalg.pinv(jk @ t)
    for _ in range(chord): y -= e @ t @ (b @ residual(q, y))
    return dict(y=y, T=t, B=b, sigma=s, residual=float(np.linalg.norm(residual(q, y))),
                g0=float(np.linalg.norm(b @ residual(q, y))))


# ---- Arb: one expansion of the lemma ------------------------------------------------------------------------------

def expansion(model, q, y, T, B, moving=True, Lam=None, kinds=None):
    """Constants of lemma P1 (PROOFS.md) for the reference y*(u) = y* + ET Lam u (Lam = 0 if not moving), with
    coordinates y = y*(u) + ETz. Every zero over the H cell has, for each block a, with rho = |z|,
        |z_a| <= |G_a(0)| + eta_a + beta_a rho + gamma_a(rho) + P_a(S + lam_s r, W + lam_w r)."""
    ET = E * T; yref = y
    U, H2, X, r = model['U'], model['H2'], model['X'], up(model['r'])
    hrem = up(frob(model['Q0'] - q) + spectral(H2) * r * r / 2 + spectral(X) * model['tau'])
    D = up(spectral(U) * r + hrem)
    H = [[acb(0, q[6 * a + j, 0]).exp() for j in range(6)] for a in range(6)]
    K = [[acb(0, yref[6 * a + j, 0]).exp() for j in range(6)] for a in range(6)]
    HK = [[sum((H[s][a].conjugate() * K[s][b] for s in range(6)), acb(0)) for b in range(6)] for a in range(6)]
    JH = arb_mat(66, 36)
    for a in range(6):
        for b in range(6):
            for s in range(6): JH[30 + 6 * a + b, 6 * s + a] = (HK[a][b].conjugate() * H[s][a].conjugate() * K[s][b]).imag / 3
    # The exact 180-ridge Fourier form of F(q*, y* + ETz) (PROOF_815.md section 5).
    feats, rc, rs = [], [], []
    for j, (a, b) in enumerate(PAIRS):
        for s in range(6):
            feats.append([ET[6 * s + b, k] - ET[6 * s + a, k] for k in range(30)])
            phi = yref[6 * s + b, 0] - yref[6 * s + a, 0]; cc = [arb(0)] * 66; ss = [arb(0)] * 66
            cc[j], cc[15 + j], ss[j], ss[15 + j] = phi.cos(), phi.sin(), -phi.sin(), phi.cos()
            rc.append(cc); rs.append(ss)
    for b in range(6):
        for s, u in PAIRS:
            feats.append([ET[6 * s + b, k] - ET[6 * u + b, k] for k in range(30)])
            cc = [arb(0)] * 66; ss = [arb(0)] * 66
            for a in range(6):
                phi = -q[6 * s + a, 0] + yref[6 * s + b, 0] + q[6 * u + a, 0] - yref[6 * u + b, 0]
                cc[30 + 6 * a + b] = phi.cos() / 3; ss[30 + 6 * a + b] = -phi.sin() / 3
            rc.append(cc); rs.append(ss)
    A = arb_mat(feats); Craw = arb_mat(rc).transpose(); Sraw = arb_mat(rs).transpose()
    Cf, Sf = B * Craw, B * Sraw
    G0 = B * (Craw * arb_mat(180, 1, [1] * 180))
    lin = Sf * A - Z.eye(30)
    AS, AW = sub(A, range(180), range(28)), sub(A, range(180), range(28, 30))
    KS, KW = AS * AS.transpose(), AW * AW.transpose()
    nT = spectral(T); BJ = B * JH
    # Lam: the reference's slope in u (a proposal); Ku: the first-order u-term left after it (PROOFS.md, P1).
    if Lam is None: Lam = Z.mat(-Z.mid_np(BJ * U)) if moving else arb_mat(30, 4)
    Ku = (Sf * A) * Lam + BJ * U
    # Cj = B F_HK(q*, y*)[U e_j, ET .]: the exact mixed second derivative, from the mixed ridges.
    Cj = []
    for j in range(4):
        F = arb_mat(66, 30)
        for b in range(6):
            for m, (s, t) in enumerate(PAIRS):
                row = feats[90 + 15 * b + m]
                for a in range(6):
                    phi = -q[6 * s + a, 0] + yref[6 * s + b, 0] + q[6 * t + a, 0] - yref[6 * t + b, 0]
                    c = -phi.cos() / 3 * (U[6 * t + a, j] - U[6 * s + a, j])
                    for k in range(30): F[30 + 6 * a + b, k] += c * row[k]
        Cj.append(B * F)
    M = arb_mat([[(Cj[j] * Lam)[i, k] for j in range(4) for k in range(4)] for i in range(30)])
    ex = dict(g0=[], eta=[], beta=[], gB=[], coef=[], kinds=[], lam=up(spectral(Lam)), r=r, nT=nT, eH=hrem, D=D,
              Lam=Lam, ET_Lam=ET * Lam, Cj=Cj, lam_a=[up(spectral(sub(Lam, rows, range(4)))) for rows in GROUPS])
    for g, rows in enumerate(GROUPS):
        bn = spectral(sub(B, rows, range(66)))
        ex['g0'].append(C.norm([G0[i, 0] for i in rows]))
        ex['eta'].append(up(spectral(sub(Ku, rows, range(4))) * r + spectral(sub(BJ, rows, range(36))) * hrem
                            + spectral(sub(M, rows, range(16))) * r * r + arb(6).sqrt() * bn * D * D))
        ex['beta'].append(up(spectral(sub(lin, rows, range(30))) + spectral(arb_mat([[Cj[j][i, k] for j in range(4) for k in range(30)] for i in rows])) * r))
        ex['gB'].append(bn)
        coef, used = tensor_bounds(sub(Cf, rows, range(180)), sub(Sf, rows, range(180)), AS, AW, KS, KW, kinds[g] if kinds else None)
        ex['coef'].append(coef); ex['kinds'].append(used)
    ex['ns'] = [up(C.norm([A[i, j] for j in range(28)])) for i in range(180)]
    ex['nw'] = [up(C.norm([A[i, j] for j in range(28, 30)])) for i in range(180)]
    ex['amp'] = [[up((Cf[i, l] ** 2 + Sf[i, l] ** 2).sqrt()) for l in range(180)] for i in range(30)]
    return ex


def slack(ex, s, w):
    """Upper bounds of eta_a + beta_a rho + gamma_a(rho) + P_a(s + lam_s r, w + lam_w r) for both blocks
    (PROOFS.md, P1; P_a: PROOF_815.md (7), increasing in both arguments)."""
    rho = (s * s + w * w).sqrt(); zeta = rho + ex['lam'] * ex['r']
    s, w = s + ex['lam_a'][0] * ex['r'], w + ex['lam_a'][1] * ex['r']
    v = [(ex['ns'][l] * s + ex['nw'][l] * w) ** 9 / math.factorial(9) for l in range(180)]
    out = []
    for g, rows in enumerate(GROUPS):
        tail = C.norm([sum((ex['amp'][i][l] * v[l] for l in range(180)), arb(0)) for i in rows])
        poly = sum((cf * s ** (n - k) * w ** k for (n, k), cf in ex['coef'][g].items()), arb(0))
        gamma = 2 * ex['gB'][g] * ex['nT'] * ex['eH'] * zeta + arb(2).sqrt() * ex['gB'][g] * ex['nT'] ** 2 * ex['D'] * zeta ** 2
        out.append(up(ex['eta'][g] + ex['beta'][g] * rho + gamma + poly + tail))
    return out


def tensor_bounds(Cg, Sg, AS, AW, KS, KW, kinds=None):
    """h_{n,k}/((n-k)! k!) for n = 2..8: norms of the order-n derivative tensors of one block, bounded through the
    smallest of three Gram flattenings (PROOF_815.md (5), (6)). Floats choose the flattening; Arb bounds it."""
    out, cache, used = {}, {}, {}
    def power(key, Kx, m):
        if (key, m) not in cache: cache[key, m] = arb_mat([[Kx[i, j] ** m for j in range(180)] for i in range(180)])
        return cache[key, m]
    def had(*ms): return arb_mat([[math.prod(m[i, j] for m in ms) for j in range(180)] for i in range(180)])
    fV = [Z.mid_np(Cg), Z.mid_np(Sg)]; fS, fW = Z.mid_np(AS), Z.mid_np(AW); fKS, fKW = fS @ fS.T, fW @ fW.T
    for n in range(2, 9):
        V = [Cg, Sg, -Cg, -Sg][n % 4]; fv = fV[n % 2]
        for k in range(n + 1):
            ns, nw = n - k, k
            if kinds: kind = kinds[n, k]                         # a replayed choice; any valid one is sound
            else:
                cands = [('output', np.linalg.norm(fv @ (fKS ** ns * fKW ** nw) @ fv.T, 2))]
                if ns: cands.append(('strong', np.linalg.norm(fS.T @ ((fv.T @ fv) * fKS ** (ns - 1) * fKW ** nw) @ fS, 2)))
                if nw: cands.append(('weak', np.linalg.norm(fW.T @ ((fv.T @ fv) * fKS ** ns * fKW ** (nw - 1)) @ fW, 2)))
                kind = min(cands, key=lambda x: x[1])[0]
            if not (kind == 'output' or (kind == 'strong' and ns) or (kind == 'weak' and nw)): raise ArithmeticError('invalid flattening')
            used[n, k] = kind
            if kind == 'output': g = V * had(power('s', KS, ns), power('w', KW, nw)) * V.transpose()
            elif kind == 'strong': g = AS.transpose() * had(V.transpose() * V, power('s', KS, ns - 1), power('w', KW, nw)) * AS
            else: g = AW.transpose() * had(V.transpose() * V, power('s', KS, ns), power('w', KW, nw - 1)) * AW
            out[n, k] = up(arb(Z.spectral(g).upper()).sqrt()) / (math.factorial(ns) * math.factorial(nw))
    return out, used


# ---- Arb: the colour product --------------------------------------------------------------------------------------

def colour_product(y, Ti, columns, rho):
    """The K enclosure of one pattern in Helmert coordinates relative to y*: column c lies in one of its retained
    closed fine bins (native PROOF.md section 9), centres 2 pi (0, k)/192 and mean-zero radius rho. Returns the initial
    radius R of z and a cap on |z_w| (the support bound PROOF_815.md (8)-(9), p = 0, over a union of bins).
    Windings of the bin centres relative to y* are proposals."""
    pts, reach = [], []
    for c, bins in enumerate(columns):
        P = []
        for k in bins:
            v = [arb(0)] + [2 * arb.pi() * int(j) / 192 for j in k]
            wind = [round((float(v[a].mid()) - float(y[6 * a + c, 0].mid())) / (2 * math.pi)) for a in range(6)]
            d = [v[a] - 2 * arb.pi() * wind[a] - y[6 * a + c, 0] for a in range(6)]; m = sum(d, arb(0)) / 6
            dd = W6.transpose() * arb_mat([[d[a] - m] for a in range(6)]); P.append([dd[i, 0] for i in range(5)])
        pts.append(P); reach.append(up(fmax([C.norm(p) for p in P]) + rho))
    R = up(spectral(Ti) * C.norm(reach))
    caps = []
    for j in range(64):
        ang = 2 * arb.pi() * j / 64
        a = Ti.transpose() * arb_mat(30, 1, [arb(0)] * 28 + [ang.cos(), ang.sin()])
        a = [a[i, 0] for i in range(30)]
        caps.append(up(sum((fmax([sum((ac * pc for ac, pc in zip(a[5 * c:5 * c + 5], p)), arb(0)) for p in P])
                            + rho * C.norm(a[5 * c:5 * c + 5]) for c, P in enumerate(pts)), arb(0))))
    return R, up(fmax(caps) / (arb.pi() / 64).cos())


def search(ex, R, wcap, target, budget=4000):
    """Discharge every closed (S, W) box of [0, R]^2 (PROOF_815.md section 7): outside the initial ball, above the
    weak cap, a strict violation of either inequality of the lemma at the box's upper corner, or inside |z| < target
    ('localised'). Raises if a box stays open."""
    stack, nodes, leaves = [(arb(0), R, arb(0), R, 0)], 0, {}
    while stack:
        sl, su, wl, wu, dep = stack.pop(); nodes += 1; why = None
        if sl * sl + wl * wl > R * R: why = 'outside initial ball'
        elif wl > wcap: why = 'outside colour product'
        else:
            qs, qw = slack(ex, su, wu)
            if sl > ex['g0'][0] + qs: why = 'strong residual'
            elif wl > ex['g0'][1] + qw: why = 'weak residual'
            elif su * su + wu * wu < target * target: why = 'localised'
        if why: leaves[why] = leaves.get(why, 0) + 1; continue
        if dep >= 30 or nodes >= budget: raise ArithmeticError('open box S<=%s W<=%s' % (su.str(3), wu.str(3)))
        if su - sl >= wu - wl: m = (sl + su) / 2; stack += [(sl, m, wl, wu, dep + 1), (m, su, wl, wu, dep + 1)]
        else: m = (wl + wu) / 2; stack += [(sl, su, wl, m, dep + 1), (sl, su, m, wu, dep + 1)]
    return nodes, leaves


# ---- the witness --------------------------------------------------------------------------------------------------

TARGETS = (0.005, 0.0075, 0.01, 0.015, 0.02, 0.025)
FIRST = (0.15, 0.2, 0.3, 0.4)                              # stage-1 radii (fixed reference)


def prepare(model, prop, stored=None):
    """Everything that depends on the completion y* only, shared by all patterns that carry it: the two expansions and
    step F on each tube (computed when first needed). `stored` replays a certificate's proposals exactly."""
    q = arb_mat([[arb(float(model['Q0'][i, 0].mid()))] for i in range(36)])
    y = arb_mat([[arb(v)] for v in prop['y']]); T = Z.mat(prop['T']); B = Z.mat(prop['B'])
    st = stored or {}
    fixed = expansion(model, q, y, T, B, moving=False, kinds=st.get('kinds_fixed'))
    centre = expansion(model, q, y, T, B, Lam=Z.mat(st['Lam']) if 'Lam' in st else None, kinds=st.get('kinds_centre'))
    return dict(prop=prop, y=y, T=T, B=B, q=q, model=model, Ti=T.inv(), fixed=fixed, centre=centre, forced={},
                native=dict(st.get('native', {})))


def force(shared, t):
    """Step F on the tube K = y*(u) + e, |e| <= |T| t (cached): the native moving contraction with carrier ET Lam
    (column c: rows 6r+c), accepted by its own bound or by P2. Each column's centred error is at most the whole
    matrix's, so every column gets epsilon = |T| t."""
    if t not in shared['forced']:
        tube = up(spectral(shared['T']) * arb(t)); yy = shared['prop']['y'].reshape(6, 6); model = shared['model']
        L = shared['centre']['ET_Lam']
        prepared = {c: dict(model=model, v0=arb_mat([[arb(yy[a, c])] for a in range(6)]),
                            T=arb_mat([[L[6 * a + c, j] for j in range(4)] for a in range(6)])) for c in range(6)}
        row = MV.classify(model, prepared, {c: dict(epsilon=tube) for c in range(6)}, list(range(6)), stored=shared['native'].get(t))
        if row['status'] == 'CERTIFIED': shared['native'][t] = row['proposal']
        shared['forced'][t] = row
    return shared['forced'][t]


def pattern(shared, columns, rho, plan=None):
    """One pattern (each column's retained fine bins, in the column order of y*): EXCLUDED, CLASSIFIED or OPEN.
    `plan` = (stage-1 radius or None, tube) replays a certificate's choices instead of trying the lists."""
    R, wcap = colour_product(shared['y'], shared['Ti'], columns, rho); rho1 = None
    # Stage 1: the fixed reference (Lam = 0) localises zeta = z + Lam u to |zeta| < R1, or excludes the pattern.
    for t1 in ([plan[0]] if plan and plan[0] else [] if plan else FIRST):
        try: n1, lv1 = search(shared['fixed'], R, wcap, arb(t1))
        except ArithmeticError: continue
        if 'localised' not in lv1: return dict(status='EXCLUDED', route='annulus', plan=[t1, None], R=R.str(3), wcap=wcap.str(3))
        R, wcap, rho1 = arb(t1), (wcap if wcap < t1 else arb(t1)), t1; break
    ex = shared['centre']; R, wcap = up(R + ex['lam'] * ex['r']), up(wcap + ex['lam_a'][1] * ex['r'])   # bounds on z
    info, last = dict(R=R.str(3), wcap=wcap.str(3)), dict(status='OPEN', step='L', reason='no tube')
    for t in ([plan[1]] if plan else TARGETS):            # smallest tube first
        try: nodes, leaves = search(shared['centre'], R, wcap, arb(t))
        except ArithmeticError as exc: last = dict(status='OPEN', step='L', reason=str(exc)); continue
        info.update(nodes=nodes, leaves=leaves, plan=[rho1, t])
        if 'localised' not in leaves: return dict(status='EXCLUDED', route='annulus', **info)
        row = force(shared, t)
        if row['status'] == 'CERTIFIED': return dict(status='CLASSIFIED', q=row['q'], q_native=row['q_native'], q_p2=row['q_p2'], **info)
        last = dict(status='OPEN', step='F', reason=[{k: a.get(k, '')[:60] for k in ('q_native', 'q_p2', 'reason')} for a in row['attempts']])
    return dict(**last, **info)


# ---- certificates: exact proposals, so that a replay needs no floating-point decision ----------------------------

def pack(a):
    a = np.ascontiguousarray(a, dtype='<f8'); return dict(shape=list(a.shape), f8=base64.b64encode(a.tobytes()).decode())


def unpack(d): return np.frombuffer(base64.b64decode(d['f8']), dtype='<f8').reshape(d['shape'])


def completion_record(shared):
    """The exact proposals of one completion (binary64, exact dyadics)."""
    kinds = lambda ex: [[[n, k, v] for (n, k), v in sorted(g.items())] for g in ex['kinds']]
    return dict(y=pack(shared['prop']['y']), T=pack(shared['prop']['T']), B=pack(shared['prop']['B']),
                Lam=pack(Z.mid_np(shared['centre']['Lam'])), kinds_fixed=kinds(shared['fixed']), kinds_centre=kinds(shared['centre']),
                native={str(t): dict(action=p['action'], wind=p['wind'], pinv=pack(p['pinv'])) for t, p in shared['native'].items()})


def from_record(model, rec):
    """`prepare` from a certificate's completion record."""
    kinds = lambda g: [{(n, k): v for n, k, v in grp} for grp in g]
    st = dict(Lam=unpack(rec['Lam']), kinds_fixed=kinds(rec['kinds_fixed']), kinds_centre=kinds(rec['kinds_centre']),
              native={float(t): dict(action=p['action'], wind=p['wind'], pinv=unpack(p['pinv'])) for t, p in rec['native'].items()})
    prop = dict(y=unpack(rec['y']), T=unpack(rec['T']), B=unpack(rec['B']))
    return prepare(model, prop, st)


def match(y, cache, tol=0.05):
    """A cached completion whose six columns are within tol (max phase, as rays) of those of y, and the column
    permutation onto it. Reusing a nearby reference is only a choice of proposal."""
    cols = y.reshape(6, 6).T
    for key, shared in cache.items():
        other = shared['prop']['y'].reshape(6, 6).T; perm = []
        for v in cols:
            hit = []
            for j, u in enumerate(other):
                d = np.angle(np.exp(1j * (v - u))); d -= d.mean()
                if np.abs(np.angle(np.exp(1j * d))).max() < tol: hit.append(j)
            if len(hit) != 1: break
            perm.append(hit[0])
        if len(perm) == 6 and sorted(perm) == list(range(6)): return key, perm
    return None, None
