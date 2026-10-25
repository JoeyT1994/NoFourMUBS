"""Exact kernel data for the seed-ball frame bounds, T0, T1 by corner symmetry and the coverage traversals
(KERNEL_SEED.md sections 4, 6), with exact Python mirrors of `KernelAtlas/Seed/Frame.lean`, `T0.lean`, `T1Sym.lean`
and `Cover.lean` (every integer operation identical), and a test-data emitter.

Grid: every datum of a seed ball is an integer on 2^-60 (`SeedD`): theta0 (reduced to (-pi, pi]), Mth, P, U rounded to
nearest, r rounded down, t >= max_i |U_(i)|_2 and lambda_F >= |U|_2 (with a relative margin, rounded up), n rounded up.
`InvD` is the exact adjugate and determinant of the integer matrix 2^60 Mth.  Nothing here is trusted: the kernel
re-checks everything.

Usage (from the repository root):
  python3 kernel_atlas/generators/seed_exact.py BALLS.json --emit DIR [--maxl 4]
writes DIR/SeedExactData.lean (the four test balls with their adjugates, a synthetic T0 target, a synthetic
corner-symmetry T1 target, sphere/ball/shell covers sorted in preorder) and prints the mirror's verdicts and the
traversal sizes.  Listed boxes must be sorted by `preorder_key` for the kernel traversal.
"""
import argparse, json, math, os, sys
from fractions import Fraction as Fr
import numpy as np

PP = 60
SC = 1 << PP
PIQ = 10 ** 20
PIN0 = 314159265358979323846


def gz(x): return int(round(x * SC))
def gup(x): return int(math.ceil(x * SC))
def gdown(x): return int(math.floor(x * SC))
def gi(l, i): return l[i] if 0 <= i < len(l) else 0


# ------------------------------------------------------------------------------------------- the ball data
def seedD(d, margin=1e-9):
    fh = lambda x: float.fromhex(x) if isinstance(x, str) else float(x)
    red = lambda x: x - 2 * math.pi * round(x / (2 * math.pi))
    th0 = [gz(red(fh(x))) for x in d['theta0']]
    Mth = [gz(fh(x)) for x in d['Mth']]
    P = [gz(fh(x)) for x in d['P']]
    U = [gz(fh(x)) for x in d['U']]
    r = (gdown(fh(d['r'])) >> 20) << 20                 # a multiple of 2^20: 2^m | r for C1 boxes
    n = gup(fh(d['n']))
    Uf = np.array(U, float).reshape(36, 4) / SC          # row e = 6a + b, column k
    col = max(np.linalg.norm(Uf[[6 * a + i for a in range(6)], :], 2) for i in range(6))
    lam = np.linalg.norm(Uf, 2)
    t = gup(col * (1 + margin) + 1e-15)
    lamF = gup(lam * (1 + margin) + 1e-15)
    return dict(th0=th0, Mth=Mth, P=P, U=U, n=n, o=int(d['o']), r=r, t=t, lamF=lamF)


# ------------------------------------------------------------------------------------------- Frame.lean mirror
def gramC(U, i, k, l): return sum(gi(U, 4 * (6 * a + i) + k) * gi(U, 4 * (6 * a + i) + l) for a in range(6))
def gramF(U, k, l): return sum(gramC(U, i, k, l) for i in range(6))
def shiftA(s, G): return lambda k, l: Fr((s * s if k == l else 0) - G(k, l))


def ldl4(a):
    d0 = a(0, 0)
    q = lambda x, y: x / y if y != 0 else Fr(0)          # Lean: x / 0 = 0
    l10, l20, l30 = q(a(1, 0), d0), q(a(2, 0), d0), q(a(3, 0), d0)
    d1 = a(1, 1) - l10 * l10 * d0
    l21 = q(a(2, 1) - l20 * l10 * d0, d1); l31 = q(a(3, 1) - l30 * l10 * d0, d1)
    d2 = a(2, 2) - l20 * l20 * d0 - l21 * l21 * d1
    l32 = q(a(3, 2) - l30 * l20 * d0 - l31 * l21 * d1, d2)
    d3 = a(3, 3) - l30 * l30 * d0 - l31 * l31 * d1 - l32 * l32 * d2
    L = [[1, 0, 0, 0], [l10, 1, 0, 0], [l20, l21, 1, 0], [l30, l31, l32, 1]]
    return L, [d0, d1, d2, d3]


def psdOK(a):
    L, d = ldl4(a)
    return all(x >= 0 for x in d) and all(
        a(k, l) == sum(L[k][m] * d[m] * L[l][m] for m in range(4)) for k in range(4) for l in range(4))


def det3(m):
    return (m[0][0] * (m[1][1] * m[2][2] - m[1][2] * m[2][1]) - m[0][1] * (m[1][0] * m[2][2] - m[1][2] * m[2][0])
            + m[0][2] * (m[1][0] * m[2][1] - m[1][1] * m[2][0]))


def adjugate(M):
    """adj(M) for a 4 x 4 integer matrix (row-major list of 16), and det(M)."""
    A = [[M[4 * a + b] for b in range(4)] for a in range(4)]
    adj = [[0] * 4 for _ in range(4)]
    for i in range(4):
        for j in range(4):
            minor = [[A[r][c] for c in range(4) if c != i] for r in range(4) if r != j]
            adj[i][j] = (-1) ** (i + j) * det3(minor)
    det = sum(A[0][b] * adj[b][0] for b in range(4))
    return [adj[i][j] for i in range(4) for j in range(4)], det


def invOK(Mth, adj, det):
    return det != 0 and all(sum(gi(Mth, 4 * a + b) * gi(adj, 4 * b + c) for b in range(4)) == (det if a == c else 0)
                            for a in range(4) for c in range(4))


def frameOK(D, I):
    U = D['U']
    col = all(psdOK(shiftA(D['t'], lambda k, l, i=i: gramC(U, i, k, l))) for i in range(6))
    frob = psdOK(shiftA(D['lamF'], lambda k, l: gramF(U, k, l)))
    return col and frob and invOK(D['Mth'], I['adj'], I['det'])


# ------------------------------------------------------------------------------------------- Cover.lean mirror
def bL(b, a): return 2 * b[1 + a] - (1 << b[0])


def child(b, c):
    m, i0, i1, i2, i3 = b
    return (m + 1, 2 * i0 + c % 2, 2 * i1 + c // 2 % 2, 2 * i2 + c // 4 % 2, 2 * i3 + c // 8 % 2)


def under(x, y):
    if x[0] > y[0]: return False
    d = y[0] - x[0]
    return all((y[1 + a] >> d) == x[1 + a] for a in range(4))


def dmin(L): return L if L > 0 else (-(L + 2) if L + 2 < 0 else 0)
def dmax2(L): return max(L * L, (L + 2) * (L + 2))
def minSq(b): return sum(dmin(bL(b, a)) ** 2 for a in range(4))
def maxSq(b): return sum(dmax2(bL(b, a)) for a in range(4))
def sphMiss(b): return 4 ** b[0] < minSq(b) or maxSq(b) < 4 ** b[0]
def ballMiss(b): return 4 ** b[0] < minSq(b)


def shellMiss(S, b):
    M = [bL(b, a) + 1 for a in range(4)]
    GZ = S['GZ']
    GM = [sum(GZ[4 * i + a] * M[a] for a in range(4)) for i in range(4)]
    mgm = sum(M[i] * GM[i] for i in range(4))
    a1 = sum(abs(x) for x in GM)
    aG = sum(abs(x) for x in GZ)
    sc = S['E'] ** 2 / (S['Gd'] * 4 ** b[0])
    return ((mgm + 2 * a1 + aG) * sc < S['lo'] or S['hi'] < (mgm - 2 * a1) * sc
            or S['rH'] ** 2 * 4 ** b[0] < S['E'] ** 2 * minSq(b))


def preorder_key(b):
    m = b[0]
    return tuple(sum(((b[1 + a] >> (m - l)) & 1) << a for a in range(4)) for l in range(1, m + 1))


def walk(miss, maxl, Ls):
    """The kernel traversal on the stream Ls; returns (ok, nodes)."""
    s = list(Ls); pos = [0]; nodes = [0]

    def drop(x):
        while pos[0] < len(s) and under(x, s[pos[0]]): pos[0] += 1

    def go(f, x):
        if f == 0: return False
        nodes[0] += 1
        if (pos[0] < len(s) and s[pos[0]] == x) or miss(x):
            drop(x); return True
        return all(go(f - 1, child(x, c)) for c in range(16))

    ok = go(maxl + 1, (0, 0, 0, 0, 0))
    return ok, nodes[0]


def make_cover(miss, maxl, rule):
    """A hand-made cover: list a node when `rule(box)` holds (and it is not missed), else split."""
    out = []

    def go(x):
        if miss(x): return
        if x[0] >= maxl or rule(x):
            out.append(x); return
        for c in range(16): go(child(x, c))

    go((0, 0, 0, 0, 0))
    return sorted(out, key=preorder_key)


# ------------------------------------------------------------------------------------------- T0.lean mirror
def t0c(Bj, Bl, adj, i): return sum(gi(adj, 4 * i + k) * (gi(Bj['th0'], k) - gi(Bl['th0'], k)) for k in range(4))
def t0K(Bj, adj, i, a): return sum(gi(adj, 4 * i + k) * gi(Bj['Mth'], 4 * k + a) for k in range(4))
def t0z(adj, N, i): return sum(gi(adj, 4 * i + k) * gi(N, k) for k in range(4))


def t0Y(Dj, Dl, I, N, b, s, i):
    m = b[0]
    return ((1 << PP) * (1 << m) * PIQ * t0c(Dj, Dl, I['adj'], i)
            + Dj['r'] * PIQ * sum(t0K(Dj, I['adj'], i, a) * (bL(b, a) + (2 if s[a] else 0)) for a in range(4))
            + 2 * PIN0 * (1 << (2 * PP)) * (1 << m) * t0z(I['adj'], N, i))


def t0OK(Dj, Dl, I, N, b):
    """`t0OK` of T0.lean: pi = (p0 + t)/q, t in [0, 1]; vertices at p0 with the margin zeta = sum |Z_i|."""
    if Dl['o'] != Dj['o']: return False
    m = b[0]
    zeta = sum(abs(2 * (1 << (2 * PP)) * (1 << m) * t0z(I['adj'], N, i)) for i in range(4))
    B = Dl['r'] * abs(I['det']) * (1 << m) * PIQ
    if zeta > B: return False
    for v in range(16):
        s = [(v >> a) & 1 for a in range(4)]
        if not sum(t0Y(Dj, Dl, I, N, b, s, i) ** 2 for i in range(4)) < (B - zeta) ** 2: return False
    return True


# ------------------------------------------------------------------------------------------- T1Sym.lean mirror
def phiC(x, y, m):
    return 1 if (x, y, m) in ((1, 1, 0), (1, 2, 1), (2, 1, 2), (2, 2, 3)) else 0


def gphiC(k, x, y, m):
    return (-1 if k in (1, 3) else 1) * (phiC(y, x, m) if k in (2, 3) else phiC(x, y, m))


def symL(k, I, J, c, m):
    a, b = c // 2 + 1, c % 2 + 1
    return gphiC(k, I[a], J[b], m) - gphiC(k, I[a], J[0], m) - gphiC(k, I[0], J[b], m) + gphiC(k, I[0], J[0], m)


def symBall(k, I, J, D):
    """The virtual source ball of a corner-symmetry T1 (theta0 -> L theta0, Mth -> L Mth, orientation +-o)."""
    L = [[symL(k, I, J, c, m) for m in range(4)] for c in range(4)]
    th0 = [sum(L[c][m] * D['th0'][m] for m in range(4)) for c in range(4)]
    Mth = [sum(L[e // 4][m] * D['Mth'][4 * m + e % 4] for m in range(4)) for e in range(16)]
    return dict(D, th0=th0, Mth=Mth, o=(D['o'] if k in (0, 3) else -D['o']))


# ------------------------------------------------------------------------------------------- Lean emitter
def lst(l): return '[' + ', '.join(str(int(x)) for x in l) + ']'
def lrat(x): x = Fr(x); return '(%d : ℚ)' % x.numerator if x.denominator == 1 else '((%d : ℚ) / %d)' % (x.numerator, x.denominator)


def lean_seed(name, D):
    return ('noncomputable def %s : SeedD where\n  B := { th0 := %s, Mth := %s, P := %s, U := %s, n := %d, o := %d }\n'
            '  r := %d\n  t := %d\n  lamF := %d\n') % (
        name, lst(D['th0']), lst(D['Mth']), lst(D['P']), lst(D['U']), D['n'], D['o'], D['r'], D['t'], D['lamF'])


def lean_inv(name, I):
    return 'noncomputable def %s : InvD where\n  adj := %s\n  det := %d\n' % (name, lst(I['adj']), I['det'])


def lean_boxes(name, Ls):
    return 'noncomputable def %s : List Bx := [%s]\n' % (name, ', '.join('⟨%d, %d, %d, %d, %d⟩' % b for b in Ls))


def lean_shell(name, S):
    return ('noncomputable def %s : ShellD where\n  E := %s\n  rH := %s\n  lo := %s\n  hi := %s\n  GZ := %s\n  Gd := %d\n') % (
        name, lrat(S['E']), lrat(S['rH']), lrat(S['lo']), lrat(S['hi']), lst(S['GZ']), S['Gd'])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('balls')
    ap.add_argument('--emit', default='')
    ap.add_argument('--maxl', type=int, default=4)
    ap.add_argument('--big', type=int, default=0, help='also emit a level-BIG full sphere cover of ball 0')
    a = ap.parse_args()
    seeds = json.load(open(a.balls))['seeds']
    Ds = [seedD(d) for d in seeds]
    Is = []
    for k, D in enumerate(Ds):
        adj, det = adjugate(D['Mth'])
        I = dict(adj=adj, det=det); Is.append(I)
        print('ball %d: r=%.4g t=%.6g lamF=%.6g det~2^%d frameOK=%s' % (
            k, D['r'] / SC, D['t'] / SC, D['lamF'] / SC, abs(det).bit_length(), frameOK(D, I)))
    # a synthetic T0 target: theta0_l = theta0_j + 2 pi N0 (on the grid), the same Mth, r_l = 2 r_j
    Dj = Ds[0]; N0 = [1, 0, -1, 2]
    Dl = dict(Dj); Dl['th0'] = [Dj['th0'][k] + gz(2 * math.pi * N0[k]) for k in range(4)]; Dl['r'] = 2 * Dj['r']
    Il = Is[0]
    # covers
    maxl = a.maxl
    rule = lambda b: b[0] >= 2 and (b[1] + 2 * b[2] + 3 * b[3] + 5 * b[4] + b[0]) % 3 == 0
    sph = make_cover(sphMiss, maxl, rule)
    ok, nodes = walk(sphMiss, maxl, sph)
    levels = {m: sum(1 for b in sph if b[0] == m) for m in range(maxl + 1)}
    print('sphere cover: %d boxes %s, traversal ok=%s, %d nodes' % (len(sph), levels, ok, nodes))
    bal = make_cover(ballMiss, 3, lambda b: b[0] >= 2 and b[1] % 2 == 0)
    ok, nodes = walk(ballMiss, 3, bal)
    print('ball cover: %d boxes, traversal ok=%s, %d nodes' % (len(bal), ok, nodes))
    # a synthetic corner-symmetry target: g = conjT (k = 3), I = (1, 0, 2), J = (2, 0, 1)
    kS, IS, JS, NS = 3, [1, 0, 2], [2, 0, 1], [0, 1, 0, -1]
    DS = dict(symBall(kS, IS, JS, Dj)); DS['th0'] = [DS['th0'][k] + gz(2 * math.pi * NS[k]) for k in range(4)]
    DS['r'] = 2 * Dj['r']
    adjS, detS = adjugate(DS['Mth']); IS_ = dict(adj=adjS, det=detS)
    t1 = [t0OK(symBall(kS, IS, JS, Dj), DS, IS_, NS, b) for b in sph]
    print('T1 corner symmetry (k=%d, I=%s, J=%s, L=%s): %d/%d boxes pass' % (
        kS, IS, JS, [[symL(kS, IS, JS, c, m) for m in range(4)] for c in range(4)], sum(t1), len(t1)))
    t0 = [t0OK(Dj, Dl, Il, N0, b) for b in sph]
    print('T0 (synthetic target, N0=%s): %d/%d boxes pass; wrong winding passes: %s' % (
        N0, sum(t0), len(t0), t0OK(Dj, Dl, Il, [0, 0, 0, 0], sph[0])))
    # a synthetic record shell: T_k = U_k of ball 0 on the grid 2^-30 (exact rationals)
    Tint = [round((Dj['U'][4 * (e // 4) + e % 4] + 3 * Dj['U'][4 * (e // 4) + (e % 4 + 1) % 4] // 10) / (1 << 30))
            for e in range(144)]                   # T_k = U_k + 0.3 U_{k+1}, on the grid 2^-30
    Tq = [[[Fr(Tint[4 * (6 * x + y) + k], 1 << 30) for y in range(6)] for x in range(6)] for k in range(4)]
    Gd = 1 << 60
    G = [[sum(Tq[k][x][y] * Tq[l][x][y] for x in range(6) for y in range(6)) for l in range(4)] for k in range(4)]
    GZ = [int(G[k][l] * Gd) for k in range(4) for l in range(4)]
    assert all(G[k][l] * Gd == GZ[4 * k + l] for k in range(4) for l in range(4))
    ev = np.linalg.eigvalsh(np.array(G, float))
    R = Fr(1, 20); n = Fr(1, 200)
    rH = Fr(R) / Fr(math.sqrt(ev[0])).limit_denominator(1000) * Fr(11, 10)
    E = Fr(math.ceil(float(rH) * 64), 64)
    S = dict(E=E, rH=rH, lo=R * R - n * n, hi=R * R, GZ=GZ, Gd=Gd)
    shl = make_cover(lambda b: shellMiss(S, b), maxl, lambda b: b[0] >= 3)
    ok, nodes = walk(lambda b: shellMiss(S, b), maxl, shl)
    print('shell (eig %s, E=%.4g, rH=%.4g): %d boxes, traversal ok=%s, %d nodes' % (
        np.round(ev, 4), float(E), float(rH), len(shl), ok, nodes))
    big = None
    if a.big:
        big = make_cover(sphMiss, a.big, lambda b: False)
        ok, nodes = walk(sphMiss, a.big, big)
        print('big sphere cover (level %d): %d boxes, ok=%s, %d nodes' % (a.big, len(big), ok, nodes))
    if not a.emit: return
    os.makedirs(a.emit, exist_ok=True)
    mod = os.path.basename(os.path.normpath(a.emit))
    with open(os.path.join(a.emit, 'SeedExactData.lean'), 'w') as f:
        f.write('import KernelAtlas.Seed.T0\n\nnamespace NoFourMUBs.KernelAtlas.Seed.%s\n\nopen NoFourMUBs.KernelAtlas.Seed Hadamard6\n\n' % mod)
        for k, (D, I) in enumerate(zip(Ds, Is)):
            f.write(lean_seed('ball%d' % k, D) + '\n' + lean_inv('inv%d' % k, I) + '\n')
        f.write(lean_seed('ballT', Dl) + '\n')
        f.write(lean_seed('ballS', DS) + '\n' + lean_inv('invS', IS_) + '\n')
        f.write('def windS : List ℤ := %s\n\n' % lst(NS))
        f.write('def windT : List ℤ := %s\n\n' % lst(N0))
        f.write('def maxl : ℕ := %d\n\n' % maxl)
        f.write(lean_boxes('sph', sph) + '\n' + lean_boxes('bal', bal) + '\n')
        f.write('noncomputable def frameT : Fin 4 → I6 → I6 → ℚ := fun k a c => (%s.getD (4 * (6 * sidx a + sidx c) + k) 0 : ℤ) / 2 ^ 30\n\n'
                % lst(Tint))
        f.write(lean_shell('shell', S) + '\n' + lean_boxes('shl', shl) + '\n')
        if big is not None:
            f.write('def bigl : ℕ := %d\n\n' % a.big + lean_boxes('big', big) + '\n')
        f.write('end NoFourMUBs.KernelAtlas.Seed.%s\n' % mod)
    print('wrote', os.path.join(a.emit, 'SeedExactData.lean'))


if __name__ == '__main__':
    main()
