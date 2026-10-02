"""Exact control: an orthogonal 2-by-3 restriction need not force a zero3.

The bottom three rows are evaluated at ALL roots of a real-Cayley cubic.
No numerical roots, frame specialization beyond this stated control, or
claim of a complete mate is used. Run from any directory.
"""
import itertools as it
import json

import sympy as s
from sympy.polys.matrices import DomainMatrix

from compatibility import Exact


def calculate(return_model=False):
    E = Exact(s.QQ.algebraic_field(s.I, s.sqrt(3)))
    K = E.F
    ii = E.scalar(s.I)
    om = E.scalar((-1+s.I*s.sqrt(3))/2)
    x, y = s.symbols('x y')
    ss, sb, t, tb, r, rb = symbols = s.symbols('ss sb t tb r rb')
    phi = s.Poly((x-ss)*(1-tb*y)*(y-r*x)-(1-sb*x)*(y-t)*(x-rb*y), y)
    psi = s.Poly((x-ss)*(1-tb*y)*(y-r*x)-4*x*y
                 +y*(x-ss)*(1-sb*x)+x*(y-t)*(1-tb*y)
                 +(y-r*x)*(x-rb*y), y)
    aa = s.Poly(s.expand(phi.nth(2)*psi.nth(0)-phi.nth(0)*psi.nth(2)), x)
    bb = s.Poly(s.expand(phi.nth(2)*psi.nth(1)-phi.nth(1)*psi.nth(2)), x)
    # Cross-check transcription against the universal companion identity.
    assert s.expand(aa.as_expr()-(r*rb-t*tb)*x*(2*ss-(ss*sb+3)*x+2*sb*x*x)) == 0

    def coeff(a, b, c, d):
        sv, tv, rv = -(1+a+b), -(1+c+d), -(1+c/a+d/b)
        values = (sv, E.bar(sv), tv, E.bar(tv), rv, E.bar(rv))

        def ev(poly):
            poly = s.Poly(poly, *symbols)
            return sum((K.convert(v)*s.prod(z**n for z, n in zip(values, powers))
                        for powers, v in poly.terms()), K.zero)

        av, bv = [[ev(poly.nth(j)) for j in range(4)] for poly in (aa, bb)]
        c6 = -bv[3]*E.bar(bv[0])
        delta = rv*E.bar(rv)-tv*E.bar(tv)
        S = sv*E.bar(sv)
        P = rv*E.bar(rv)+tv*E.bar(tv)
        Q = rv*E.bar(rv)*tv*E.bar(tv)
        L = rv*sv*E.bar(tv)+E.bar(rv)*E.bar(sv)*tv
        nu = (-2*L**2+(P**2+(S-3)*P-2*Q-6*S)*L-P**3
              +(9-S)*P**2-S*(S+9)*P+Q*((3-S)*P+20*S-36))
        assert c6 != K.zero and delta != K.zero
        return sv, av, bv, c6, nu, delta

    h = coeff(om, om**2, ii, ii)
    v = coeff(om, ii, om**2, ii)
    u = E.scalar((44-117*s.I)/125)
    kappa = v[5]*h[3]/(h[5]*v[3])
    m = (-v[4]/v[3]-kappa*h[4]/h[3])/2-kappa*u
    for data, product in ((h, u), (v, m)):
        assert product*E.bar(product) == K.one
        assert data[3]*product**2+data[4]*product+E.bar(data[3]) == K.zero
    root = E.scalar((3-4*s.I)*(s.sqrt(3)+s.I)/10)
    assert root**3 == u and root*E.bar(root) == K.one
    xs = [root*om**j for j in range(3)]
    eval_at = lambda co, z: sum((a*z**j for j, a in enumerate(co)), K.zero)
    assert all(eval_at(h[2], z) != K.zero for z in xs)
    ys = [-eval_at(h[1], z)/eval_at(h[2], z) for z in xs]

    dm = lambda rows: DomainMatrix(rows, (len(rows), len(rows[0])), K).to_sparse()
    corner = dm([[K.one]*3, [K.one, om, om**2], [K.one, ii, ii]])
    bh = dm([[K.one]*3, xs, ys])
    assert all(z*E.bar(z) == K.one for row in bh.to_list() for z in row)
    gram = E.scale(E.eye(3), 6)-corner*E.star(corner)
    assert E.is_zero(bh*E.star(bh)-gram)
    assert corner.det() != K.zero and bh.det() != K.zero

    R = K.poly_ring('p')
    p = R.gens[0]
    cst = lambda z: R.convert(z, K)
    S = v[0]
    q = p**3-cst(S)*p*p+cst(m*E.bar(S))*p-cst(m)
    red = lambda f: f.rem(q)
    pinv = (p*p-cst(S)*p+cst(m*E.bar(S)))/cst(m)
    assert red(p*pinv) == R.one
    conj = lambda f: red(sum((cst(E.bar(c))*pinv**k[0]
                             for k, c in f.to_dict().items()), R.zero))
    T = dm([[K.zero, K.zero, m], [K.one, K.zero, -m*E.bar(S)],
            [K.zero, K.one, S]])
    powers = [E.eye(3), T, T*T, T*T*T]

    def matrix_poly(coefficients):
        ans = E.zero(3)
        for a, power in zip(coefficients, powers):
            ans = ans+power.scalarmul(a)
        return ans

    MB = matrix_poly(v[2])
    assert MB.det() != K.zero
    gam = -(MB.inv()*matrix_poly(v[1]))
    # First column is the polynomial representative applied to 1.
    gamma = sum((cst(row[0])*p**j for j, row in enumerate(gam.to_list())), R.zero)
    cp = [R.one, p, gamma]
    lower_map = -(E.star(corner)*gram.inv()*bh)
    lm = lower_map.to_list()
    row = cp+[red(sum((cp[k]*cst(lm[k][j]) for k in range(3)), R.zero))
              for j in range(3)]
    assert all(red(z*conj(z)) == R.one for z in row)
    top = [a+b for a, b in zip(corner.to_list(), bh.to_list())]

    # Prove all three p-roots are distinct and on the unit circle.
    # The homogeneous Cayley polynomial has a common complex phase.
    plus, minus = R.one+cst(ii)*p, R.one-cst(ii)*p
    cayley = sum((cst(c)*plus**k[0]*minus**(3-k[0])
                  for k, c in q.to_dict().items()), R.zero)
    leading = cayley.to_dict()[(3,)]
    assert leading != K.zero
    cayley = cayley*cst(E.bar(leading))
    assert all(E.bar(c) == c for c in cayley.to_dict().values())
    polynomial = s.Poly(sum(K.to_sympy(c)*x**k[0] for k, c in cayley.to_dict().items()),
                        x, extension=s.sqrt(3))
    discriminant = s.expand(polynomial.discriminant())
    n = discriminant.coeff(s.sqrt(3), 0)
    ell = discriminant.coeff(s.sqrt(3))
    assert n.is_Rational and ell.is_Rational
    positive = ((n > 0 and ell >= 0)
                or (n >= 0 and ell > 0)
                or (n > 0 and ell < 0 and n*n > 3*ell*ell)
                or (n < 0 and ell > 0 and 3*ell*ell > n*n))
    assert positive  # Exact rational sign test for n+ell*sqrt(3).

    def norm(f):
        f = red(f)
        return matrix_poly([f.to_dict().get((j,), K.zero) for j in range(3)]).det()

    def trace(f):
        f = red(f)
        mat = matrix_poly([f.to_dict().get((j,), K.zero) for j in range(3)]).to_list()
        return sum((mat[j][j] for j in range(3)), K.zero)

    # Complete physicality, using the sum over all three distinct roots.
    for i, j in it.product(range(6), repeat=2):
        gram_entry = sum((E.bar(z[i])*z[j] for z in top), K.zero)+trace(conj(row[i])*row[j])
        assert gram_entry == K.convert(6*int(i == j))

    W = [[z.to_dict().get((k,), K.zero) for z in row] for k in range(3)]
    det3 = lambda rows, cols: dm([[rr[j] for j in cols] for rr in rows]).det()
    counts = [0]*4
    for cols in it.combinations(range(6), 3):
        assert det3(top, cols) != K.zero
        counts[0] += 1
        for pair in it.combinations(top, 2):
            f = sum((cst(det3([*pair, W[k]], cols))*p**k for k in range(3)), R.zero)
            assert norm(f) != K.zero
            counts[1] += 3
        for rr in top:
            d01, d02, d12 = [det3([rr, W[i], W[j]], cols)
                            for i, j in ((0, 1), (0, 2), (1, 2))]
            f = cst(d01)+(cst(S)-p)*cst(d02)+cst(m)*pinv*cst(d12)
            assert norm(f) != K.zero
            counts[2] += 3
        assert det3(W, cols) != K.zero
        counts[3] += 1
    assert counts == [20, 180, 180, 20]
    assert 1+om+om**2 == K.zero
    result = {'evidence_label': 'Certified computation', 'field': 'Q(i,sqrt(3)) with all roots of one cubic',
            'seeds': ['omega', 'omega^2', 'i', 'i'], 'u': '(44-117i)/125',
            'm': str(K.to_sympy(m)), 'distinct_unit_circle_roots': 3,
            'entry_flatness_residues': 6, 'full_column_Gram_identities': 36,
            'reconstruction_guards': 13,
            'nonzero_three_minors_by_bottom_row_count': counts,
            'scope': 'one physical Hadamard with an orthogonal 2-by-3 restriction and no zero3; no full mate asserted'}
    if return_model:
        # Reuse the certified construction in optional discovery probes;
        # this does not relax any check or alter the frozen receipt.
        return result, {'field': K, 'top': top, 'bottom_coefficients': W,
                        'vertical_polynomial': q}
    return result


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=2))
