#!/usr/bin/env python3
"""Exact, standard-library replay of the D=diag(1,1,i) Fourier fibre.

Floating-point numbers are not used in any verification decision.  Dyadic
intervals enclose algebraic radicals and the eight selected cubic roots.
The stored cubic centres are merely proposals, validated here by Rouche.
"""
from fractions import Fraction as Q
from itertools import permutations, combinations, product
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parent
BITS = 100
GRID = 1 << BITS
if not __debug__:
    raise RuntimeError('Run without Python -O: exact verification requires assertions.')


def floor_grid(x):
    return Q((x.numerator * GRID) // x.denominator, GRID)


def ceil_grid(x):
    return -floor_grid(-x)


class R:
    def __init__(self, a, b=None):
        self.lo = Q(a)
        self.hi = Q(a if b is None else b)
        assert self.lo <= self.hi

    @classmethod
    def outward(cls, a, b):
        return cls(floor_grid(a), ceil_grid(b))

    def __add__(self, b):
        b = rr(b)
        return R.outward(self.lo + b.lo, self.hi + b.hi)

    __radd__ = __add__

    def __neg__(self):
        return R(-self.hi, -self.lo)

    def __sub__(self, b):
        return self + (-rr(b))

    def __rsub__(self, b):
        return rr(b) - self

    def __mul__(self, b):
        b = rr(b)
        p = [self.lo*b.lo, self.lo*b.hi, self.hi*b.lo, self.hi*b.hi]
        return R.outward(min(p), max(p))

    __rmul__ = __mul__

    def __truediv__(self, b):
        b = rr(b)
        assert not b.lo <= 0 <= b.hi
        return self * R.outward(1/b.hi, 1/b.lo)

    def __rtruediv__(self, b):
        return rr(b)/self

    def __pow__(self, n):
        assert isinstance(n, int) and n >= 0
        out = R(1)
        for _ in range(n):
            out = out*self
        return out

    def sq(self):
        lower = 0 if self.lo <= 0 <= self.hi else min(self.lo**2, self.hi**2)
        return R.outward(lower, max(self.lo**2, self.hi**2))

    def abs_upper(self):
        return max(abs(self.lo), abs(self.hi))

    def abs_lower(self):
        return 0 if self.lo <= 0 <= self.hi else min(abs(self.lo), abs(self.hi))

    def sqrt(self):
        assert self.lo >= 0
        from math import isqrt
        a = isqrt((self.lo.numerator*GRID*GRID)//self.lo.denominator)
        b = isqrt((self.hi.numerator*GRID*GRID)//self.hi.denominator)
        while Q(b*b, GRID*GRID) < self.hi:
            b += 1
        out = R(Q(a, GRID), Q(b, GRID))
        assert out.lo**2 <= self.lo and out.hi**2 >= self.hi
        return out


def rr(x):
    return x if isinstance(x, R) else R(x)


class C:
    def __init__(self, re=0, im=0):
        self.re, self.im = rr(re), rr(im)

    def __add__(self, z):
        z = cc(z)
        return C(self.re+z.re, self.im+z.im)

    __radd__ = __add__

    def __neg__(self):
        return C(-self.re, -self.im)

    def __sub__(self, z):
        return self+(-cc(z))

    def __rsub__(self, z):
        return cc(z)-self

    def __mul__(self, z):
        z = cc(z)
        return C(self.re*z.re-self.im*z.im, self.re*z.im+self.im*z.re)

    __rmul__ = __mul__

    def conj(self):
        return C(self.re, -self.im)

    def abs2(self):
        return self.re.sq()+self.im.sq()

    def __truediv__(self, z):
        z = cc(z)
        n = z.abs2()
        assert n.lo > 0
        p = self*z.conj()
        return C(p.re/n, p.im/n)

    def __rtruediv__(self, z):
        return cc(z)/self

    def __pow__(self, n):
        ans = C(1)
        for _ in range(n):
            ans = ans*self
        return ans


def cc(z):
    return z if isinstance(z, C) else C(z)


I = C(0, 1)


def sparse_add(p, q):
    r = p.copy()
    for m, c in q.items():
        r[m] = r.get(m, 0)+c
        if not r[m]:
            del r[m]
    return r


def sparse_mul(p, q):
    r = {}
    for m, c in p.items():
        for n, d in q.items():
            k = tuple(a+b for a, b in zip(m, n))
            r[k] = r.get(k, 0)+c*d
            if not r[k]:
                del r[k]
    return r


class P:
    """Three-variable polynomials over the integers, for universal identities."""
    def __init__(self, value=0):
        self.d = value if isinstance(value, dict) else ({(0, 0, 0): value} if value else {})

    def __add__(self, b):
        b = pp(b)
        return P(sparse_add(self.d, b.d))

    __radd__ = __add__

    def __neg__(self):
        return P({k: -v for k, v in self.d.items()})

    def __sub__(self, b):
        return self+(-pp(b))

    def __rsub__(self, b):
        return pp(b)-self

    def __mul__(self, b):
        return P(sparse_mul(self.d, pp(b).d))

    __rmul__ = __mul__

    def __pow__(self, n):
        out = P(1)
        for _ in range(n):
            out = out*self
        return out

    def at(self, a, b, c):
        out = P(0)
        for (i, j, k), v in self.d.items():
            out += v*pp(a)**i*pp(b)**j*pp(c)**k
        return out


def pp(x):
    return x if isinstance(x, P) else P(x)


def eq(a, b):
    assert not (pp(a)-pp(b)).d


def polynomial_identities():
    x, y, z = (P({tuple(int(i == j) for i in range(3)): 1}) for j in range(3))
    F = 3+x*x+y*y+z*z-x*x*y*y-y*y*z*z-z*z*x*x-3*x*x*y*y*z*z
    G = x*x*(y+z)**2*(1+y*y)-y*y*(x*x+z*z)*(1+x*x)
    H = x*x*(y+z)**2*(1+z*z)-z*z*(x*x+y*y)*(1+x*x)
    eq(G-H, -x*x*(y-z)*(y+z)*(x*x-(y+z)**2+1))
    eq(G.at(x, z, z), z*z*(-x**4+3*x*x+3*x*x*z*z-z*z))
    eq(F.at(x, z, z), 3+x*x+2*z*z-2*x*x*z*z-z**4-3*x*x*z**4)
    eq(G.at(x, -z, z), -z*z*(x*x+1)*(x*x+z*z))
    X = x
    den, num = 3*X-1, X*(X-3)
    eliminated = (3+X)*den**2+(2-2*X)*num*den-(1+3*X)*num**2
    eq(eliminated, -(X-1)*(X+1)**2*(3*X**2-14*X+3))
    # Third branch: substituting x^2=(y+z)^2-1 is legitimate as F,G
    # contain only even powers of x.
    def substitute_x2(poly, value):
        ans = P(0)
        for (i, j, k), c in poly.d.items():
            assert i % 2 == 0
            ans += c*value**(i//2)*y**j*z**k
        return ans
    p, q = y+z, y*z
    G2 = -p*p*(q*q-p*p+1)
    F2 = -p**4-3*p*p*q*q+2*p*p*q+3*p*p+2*q*q-4*q+2
    eq(substitute_x2(G, p*p-1), G2)
    eq(substitute_x2(F, p*p-1), F2)
    Qv = x
    F3 = -(Qv*Qv+1)**2-3*(Qv*Qv+1)*Qv*Qv+2*(Qv*Qv+1)*Qv+3*(Qv*Qv+1)+2*Qv*Qv-4*Qv+2
    eq(F3, -2*(Qv*Qv-1)*(2*Qv*Qv-Qv+2))
    # This also records the positive quadratic's exact negative discriminant.
    assert 1-4*2*2 == -15
    return 8


def slope_profiles():
    ten, two, six = R(10).sqrt(), R(2).sqrt(), R(6).sqrt()
    out = []
    # Write x=h2,y=h0,z=h1.  Select the eight profiles with h2>0.
    for e in (-1, 1):
        x = ((7+2*e*ten)/3).sqrt()
        t = ((11-2*e*ten)/9).sqrt()
        for sign in (-1, 1):
            out.append([sign*t, sign*t, x])
    for sign, swap in product((-1, 1), repeat=2):
        p = sign*two
        out.append([(p+swap*six)/2, (p-swap*six)/2, R(1)])
    assert len(out) == 8
    for h in out:
        assert all(t.abs_lower() > 0 for t in h)
        assert h[2].lo > 0
    return out


def certified_cubic(target, proposal):
    mu_re, mu_im = Q(proposal['re']), Q(proposal['im'])
    radius = Q(proposal['radius'])
    assert radius > 0
    mu = C(mu_re, mu_im)
    # On |z-mu|=radius, the linear term of z^3-target dominates the
    # constant and higher terms, uniformly over the target enclosure.
    residual = mu**3-target
    error = residual.re.abs_upper()+residual.im.abs_upper()
    mu_abs_upper = abs(mu_re)+abs(mu_im)
    lhs = error+3*mu_abs_upper*radius**2+radius**3
    rhs = 3*(mu_re**2+mu_im**2)*radius
    assert lhs < rhs
    return C(R(mu_re-radius, mu_re+radius), R(mu_im-radius, mu_im+radius))


def make_bases(proposals):
    d = [C(1), C(1), I]
    delta = [d[(j+1)%3]/d[j] for j in range(3)]
    omega = C(Q(-1, 2), R(3).sqrt()/2)
    bases = []
    for h, proposal in zip(slope_profiles(), proposals):
        t = [(1+I*x)/(1-I*x) for x in h]
        A = [(1+t[j])*(1+t[(j+1)%3].conj()) for j in range(3)]
        B = [delta[j]*(1-t[j])*(1-t[(j+1)%3].conj()) for j in range(3)]
        cross = [A[(j+1)%3]*B[(j+2)%3]-A[(j+2)%3]*B[(j+1)%3] for j in range(3)]
        assert all(c.abs2().lo > 0 for c in cross)
        target = cross[0]**2/(cross[1]*cross[2])
        eta = certified_cubic(target, proposal)
        a = [eta*c/cross[0] for c in cross]
        r = [C(1), a[0].conj(), a[2]]
        s = [r[j]*t[j] for j in range(3)]
        v = r+s
        Jv = [d[j]*s[j].conj() for j in range(3)]+[-d[j]*r[j].conj() for j in range(3)]
        bases.append([[u*omega**((j%3)*k) for j, u in enumerate(vec)] for vec in (v, Jv) for k in range(3)])
    assert len(bases) == 8
    return bases


def overlap(v, w):
    return sum((a.conj()*b for a, b in zip(v, w)), C(0))/6


def possible_graph(bases):
    vs = [v for basis in bases for v in basis]
    adj = [set() for _ in vs]
    excluded = []
    retained_cross = []
    lower = None
    threshold = Q(4, 25)**2
    for a, b in combinations(range(48), 2):
        if a//6 == b//6:
            # Exact canonical orthogonality is proved analytically in REPORT.
            keep = True
        else:
            n = overlap(vs[a], vs[b]).abs2()
            keep = n.lo <= threshold
            if keep:
                retained_cross.append([a, b])
            else:
                excluded.append([a, b])
                lower = n.lo if lower is None else min(lower, n.lo)
        if keep:
            adj[a].add(b)
            adj[b].add(a)
    cliques = []

    def visit(prefix, remaining):
        if len(prefix) == 6:
            cliques.append(prefix)
            return
        if len(prefix)+len(remaining) < 6:
            return
        remaining = set(remaining)
        while remaining:
            a = min(remaining)
            remaining.remove(a)
            visit(prefix+[a], remaining & adj[a])

    visit([], set(range(48)))
    expected = [list(range(6*j, 6*j+6)) for j in range(8)]
    assert cliques == expected
    assert len(excluded) == 960 and len(retained_cross) == 48
    assert lower > threshold
    return {'retained_cross_edges': retained_cross, 'excluded_cross_edges': len(excluded),
            'six_cliques': cliques, 'normalized_nonzero_overlap_lower_bound': '4/25',
            'certified_squared_overlap_lower_bound': str(lower),
            'possible_graph_degrees': sorted(set(map(len, adj)))}


def det_interval(M):
    n = len(M)
    ans = R(0)
    for p in permutations(range(n)):
        inv = sum(p[i] > p[j] for i in range(n) for j in range(i+1, n))
        term = R(-1 if inv % 2 else 1)
        for i, j in enumerate(p):
            term *= M[i][j]
        ans += term
    return ans


def simple_ray_determinants(bases):
    d = [C(1), C(1), I]
    vals = []
    for raw in (v for B in bases for v in B):
        # Remove the global phase.  The five phase coordinates are entries 1..5.
        v = [z/raw[0] for z in raw]
        r, s = v[:3], v[3:]
        matrix_cols = []
        for k in range(1, 6):
            dv = [I*z if j == k else C(0) for j, z in enumerate(v)]
            dr, ds = dv[:3], dv[3:]
            e0 = sum((dr[j]*s[j].conj()+r[j]*ds[j].conj() for j in range(3)), C(0))
            plus = [r[j]+s[j] for j in range(3)]
            dplus = [dr[j]+ds[j] for j in range(3)]
            minus = [d[j].conj()*(r[j]-s[j]) for j in range(3)]
            dminus = [d[j].conj()*(dr[j]-ds[j]) for j in range(3)]
            ep = sum((dplus[j]*plus[(j+1)%3].conj()+plus[j]*dplus[(j+1)%3].conj() for j in range(3)), C(0))
            em = sum((dminus[j]*minus[(j+1)%3].conj()+minus[j]*dminus[(j+1)%3].conj() for j in range(3)), C(0))
            matrix_cols.append([e0.re, ep.re, ep.im, em.re, em.im])
        M = [[matrix_cols[j][i] for j in range(5)] for i in range(5)]
        determinant = det_interval(M)
        assert determinant.abs_lower() > 0
        vals.append({'lower': str(determinant.lo), 'upper': str(determinant.hi)})
    assert len(vals) == 48
    return vals


def main():
    identity_count = polynomial_identities()
    proposals_path = ROOT/'cubic_centres.json'
    proposals = json.loads(proposals_path.read_text())
    assert len(proposals) == 8
    bases = make_bases(proposals)
    graph = possible_graph(bases)
    dets = simple_ray_determinants(bases)
    receipt = {'status': 'PASS', 'parameter': {'z': '1', 'w': 'i'},
               'normalization': 'U=([F3,D F3],[F3,-D F3])/sqrt(6)',
               'arithmetic': 'outward rounded dyadic rational intervals, 100 bits',
               'universal_polynomial_identities': identity_count,
               'slope_profiles': 16, 'common_unbiased_rays': 48,
               'complete_basis_count': 8, 'cube_roots_certified_by_rouche': 8,
               'graph': graph, 'phase_jacobian_determinants': dets,
               'verifier_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
               'input_sha256': hashlib.sha256(proposals_path.read_bytes()).hexdigest()}
    (ROOT/'FOURIER_FIBRE_RECEIPT.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print('PASS: exact radical profile classification; 48 rays; 8 bases; 960 excluded cross edges.')
    print('PASS: all 48 five-phase Jacobian determinants exclude zero.')
    print('Analytic classification and locality arguments are stated separately in REPORT.md.')


if __name__ == '__main__':
    main()
