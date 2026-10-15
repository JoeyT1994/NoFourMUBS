import sys
from sim import *
import common
from common import frac_data
case = sys.argv[1]
if case == 'zero':
    import gen_zero as G
    # vars: 0=z,1=X,2=Y
    z, X, Y = var(0), var(1), var(2)
    cZ = const(9) + z.pw(2) + X + Y
    tab = [X, Y, z, X + Y + z.pw(2) + const(3) * z, const(3) * z + const(9) + Y, const(3) * z + const(9) + X]
    Fr.TABLE = tab; M = 6; QQ.M = M
    QQ.A = Fr(const(0), [0] * M); QQ.B = Fr(const(0) + X * cZ, [0, 1, 0, 0, 0, 0])
    fq = lambda c: QQ(Fr(c, [0] * M), fz(M))
    qX, qY, qZ, qz = fq(X), fq(Y), fq(cZ), fq(z)
    qR = QQ(fz(M), Fr(const(0) + Y, [1, 0, 0, 0, 0, 0]))
    zeta = QQ(fz(M), fc(1, M))
    iL = [QQ(Fr(const(1) * const(1), [0, 0, 1, 1 if j == 0 else 0, 1 if j == 1 else 0, 1 if j == 2 else 0]), fz(M)) for j in range(3)]
    one = qc(1); mone = -one
    dA = halfQ(one, qX, one, qY, zeta, qR, qX, qY, qZ, iL[0], iL[1], iL[2], qz)
    dB = halfQ(mone, -qX, mone, -qY, -zeta, -qR, qX, qY, qZ, iL[0], iL[1], iL[2], qz)
else:
    import gen_nonzero as G
    k, X, Y = var(0), var(1), var(2)
    h = const(1) + k.pw(2)
    chZ = const(9) * h + const(4) + h * X + h * Y
    l0A = const(6) * k.pw(2) + const(2) + (const(1) + k) * h * (X + Y)
    l1A = const(6) * h + const(4) * k + (const(1) + k) * h * (const(9) + Y)
    l2A = const(6) * h + const(4) * k + (const(1) + k) * h * (const(9) + X)
    tab = [X, Y, h, const(2), l0A, l1A, l2A, l0A, l1A, l2A]
    Fr.TABLE = tab; M = 10; QQ.M = M
    e = lambda *ix: [ix.count(i) for i in range(M)]
    QQ.A = Fr(const(8) * k, e(1, 2, 2)); QQ.B = Fr(const(0) + X * chZ, e(1, 2))
    fq = lambda c: QQ(Fr(c, [0] * M), fz(M))
    qX, qY = fq(X), fq(Y)
    qZ = QQ(Fr(chZ, e(2)), fz(M))
    qR = QQ(Fr(const(8) * k, e(0, 2, 2)), Fr(const(0) + Y, e(0)))
    qzA = QQ(Fr(const(0) + const(2) * (const(1) + k), e(2)), fz(M))
    zeta = QQ(fz(M), fc(1, M))
    iL = [QQ(Fr(h.pw(2), e(3, j)), fz(M)) for j in range(4, 10)]
    one = qc(1); mone = -one
    dA = halfQ(one, qX, one, qY, zeta, qR, qX, qY, qZ, iL[0], iL[1], iL[2], qzA)
    dB = halfQ(mone, -qX, mone, -qY, -zeta, -qR, qX, qY, qZ, iL[3], iL[4], iL[5], qzA)


def datafrac(x):
    D, ex = frac_data(x, G.TABLE)
    if not D: return Fr(const(0), [0] * M)
    deg = [max(kk[2] for kk in D), max(kk[0] for kk in D), max(kk[1] for kk in D)]
    return Fr(C(deg, sum(abs(v) for v in D.values())), ex)


tot = 0
for p in G.USED:
    v = G.m[p]
    md = QQ(datafrac(v.a), datafrac(v.b))
    c = mom(dA, p) + mom(dB, p) - md
    for comp in (c.x0, c.x1):
        b, d, w = width(comp.num)
        tot += w
        print(p, 'bits', b, 'deg', d, 'dense width(bits)', w)
print('total', tot)

# sum check
import re
src = open('/Users/jtindall/Files/NoFourMUBS/lean/NoFourMUBs/PRM/CoverageStripMomentData.lean').read()
body = src[src.index('def momentPoly (M'):src.index('/-- The sum over ordered')]
MP = []
for line in body.split('\n')[2:]:
    line = line.strip().rstrip('+').strip()
    if not line: continue
    cc = int(re.match(r'\(?(-?\d+)\)?', line).group(1))
    ms = [(int(a.strip('()')), int(b.strip('()'))) for a, b in re.findall(r'M \((\(?-?\d+\)?), (\(?-?\d+\)?)\)', line)]
    MP.append((cc, ms))
MD = {p: QQ(datafrac(G.m[p].a), datafrac(G.m[p].b)) for p in G.USED}
acc = qc(1728)
for cc, ms in MP:
    term = (-qc(1) if cc == -1 else qc(abs(cc))) if cc < 0 and cc != -1 else qc(cc)
    term = qc(abs(cc))
    for p in ms: term = term * MD[p]
    acc = acc + term
print('sum x0', width(acc.x0.num), acc.x0.den)
print('sum x0 ns=0', width(acc.x0.num, 0))
