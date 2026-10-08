"""Two exact small-maximal-R carriers outside the certified Fourier tube.

Physicality uses accepted sign-selected reconstruction identities. All guards,
400 corner bounds, and 400 minor bounds per example use outward Arb balls.
"""
from fractions import Fraction as Q
from itertools import combinations
from flint import acb, arb, acb_mat, ctx

ctx.prec = 256
I = acb(0, 1)
eye = acb_mat([[int(i == j) for j in range(3)] for i in range(3)])


def star(A):
    return A.transpose().conjugate()


def aq(z):
    return (z*z.conjugate()).real


def invariants(E):
    G = 6*eye-E*star(E)
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = aq(s), aq(t), aq(r)
    p = X+Y+Z
    J = 2*(s*r*t.conjugate()).real
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g, eta = 27-3*p+J, 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    return G, g, chi, 4*g*g*eta-chi*chi


def side(G, z, g):
    # Direct port of the accepted sign-selected recipe, with strict guards.
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = aq(s), aq(t), aq(r)
    P = [r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
         t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
         s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
    assert g > 0 and all(not v.contains(0) for v in P)
    lam = [(g+c*z.conjugate())/v.conjugate() for c, v in zip((9-Z, 9-Y, 9-X), P)]
    u = lam[0]*lam[1].conjugate()
    mu, nu = s/3, t/3
    n = 1-aq(mu)
    k = r/3-nu*mu.conjugate()
    alpha = mu*mu-u*mu.conjugate()
    gamma = 2*mu*nu-z*lam[0]/3
    delta = (g/27*lam[0]*lam[1].conjugate()*lam[2].conjugate()).sqrt()
    dF = (27/g*(n*gamma-2*alpha*k)*delta.conjugate()).real
    if dF < 0:
        delta, dF = -delta, -dF
    assert dF > 0 and n > 0
    rho = (n+dF)/2
    assert rho > 0
    q = alpha/rho
    cp, cm = (k-delta*q.conjugate())/n, (k*q+delta)/n
    sigma = u+mu*q
    xi = sigma*sigma/rho
    M = acb_mat([[1, 0, 0], [mu, sigma, q*sigma.conjugate()],
                 [nu, cp*sigma, cm*sigma.conjugate()]])
    return M, xi


def carrier(angle_numerators, denominator):
    seeds = [acb(0, arb.pi()*n/denominator).exp() for n in angle_numerators]
    a, b, c, d = seeds
    E = acb_mat([[1, 1, 1], [1, a, b], [1, c, d]])
    G, g, chi, R = invariants(E)
    T = 6*eye-star(E)*E
    assert R > 0 and g > 0
    for gram in (G, T):
        for size in (1, 2, 3):
            assert acb_mat([[gram[i, j] for j in range(size)]
                           for i in range(size)]).det().real > 0
    z = acb(chi, R.sqrt())/(2*g)
    Mh, xh = side(G, z, g)
    Mv, xv = side(T.transpose(), z.conjugate(), g)
    omega = acb(-arb(1)/2, arb(3).sqrt()/2)
    F = acb_mat([[omega**(i*j) for j in range(3)] for i in range(3)])
    wh, wv = xh.root(3), xv.root(3)
    Ph = acb_mat([[1, 0, 0], [0, wh.conjugate(), 0], [0, 0, wh]])
    Pv = acb_mat([[1, 0, 0], [0, wv.conjugate(), 0], [0, 0, wv]])
    B, C = Mh*Ph*F, F*Pv*Mv.transpose()
    D = -C*star(E)*G.inv()*B
    H = acb_mat([[E[i, j] if i < 3 and j < 3 else
                  B[i, j-3] if i < 3 else C[i-3, j] if j < 3 else D[i-3, j-3]
                  for j in range(6)] for i in range(6)])
    return H, R


def verify_case(name, angles, denominator, Rlo, Rcap, minor, distance):
    H, R = carrier(angles, denominator)
    assert R > Rlo
    count = 0
    for rows in combinations(range(6), 3):
        for cols in combinations(range(6), 3):
            E = acb_mat([[H[i, j] for j in cols] for i in rows])
            assert invariants(E)[3] < Rcap, (name, rows, cols, 'R cap')
            assert abs(E.det()) > minor, (name, rows, cols, 'minor')
            count += 1
    assert count == 400
    # Minor telescope: any Fourier match at distance d has one minor <=18sqrt(3)d.
    assert minor**2 > 972*distance**2
    assert distance > arb(1)/16384
    print(name, 'angles/pi =', angles, '/', denominator)
    print('leading R:', R)
    print('PASS: all 400 corner R <', Rcap, '; all 400 minor moduli >', minor)
    print('PASS: some maximal strict frame has R >', Rlo, 'and d_Four >', distance)


if __name__ == '__main__':
    verify_case('production-derived', (88, -80, -83, 91), 256,
                arb(17), arb(18), arb(3)/25, arb(1)/300)
    verify_case('small-threshold', (801, -798, -799, 802), 2400,
                arb(1)/500, arb(1)/200, arb(49)/25000, arb(1)/16000)
    assert Q(1, 16000) > Q(1, 16384)
    print('SCOPE: accepted reconstruction inputs; disproves R<1/200 => d_Four<=1/16384 on D0')
    print('SCOPE: does not disprove quartet exclusion or a D0 seed-proximity estimate')
