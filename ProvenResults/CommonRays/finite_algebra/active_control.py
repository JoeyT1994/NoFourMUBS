"""Interval certificate for the single-minor physical control (Section 9).

The active positive-sheet reconstruction H_(sheet)(a,b,c,d) of
MinimalConstruction/RECONSTRUCTION.md is evaluated in 256-bit ball
arithmetic at the exact rational-phase seed

    (a,b,c,d) = (1, (-24-7i)/25, (-8-15i)/17, -i).

Every branch decision of the explicit formulas is certified (R>0, sqrt(R)>0,
|P_j|^2>0, the sign of Re(dF), n>0, rho>0, nonzero divisors), so the balls
enclose the exact entries of the reconstructed matrix.  That this matrix is a
complex Hadamard is the accepted reconstruction input (positive sheet: H_+;
the opposite matched sheet is checked as well).  The certificate then proves:
exactly one zero 2x2 minor (rows {0,1}, columns {0,1}, the exact identity
1*1-1*1=0); every other 2x2 minor has modulus > 1/50; every 3x3 minor has
modulus > 1/2; every 2x2 permanent has modulus > 1/50 (hence no 2x2 Hadamard
block, so the matrix is not Karlsson/H2-reducible).
"""
import itertools as it
from flint import acb, arb, acb_mat, ctx

ctx.prec = 256
I = acb(0, 1)


def nz(x, what):
    assert not x.contains(0), what
    return x


def pos(x, what):
    assert x > 0, what
    return x


def conj(x):
    return x.conjugate()


def adj3(A):
    return [[(-1)**(i+j)*acb_mat([[A[r][c] for c in range(3) if c != i]
                                   for r in range(3) if r != j]).det()
             for j in range(3)] for i in range(3)]


def mat(A):
    return acb_mat(A)


def side(G, z, g):
    s, t, r = G[1][0], G[2][0], G[2][1]
    X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    P = [r*s*s+conj(r)*t*t+(3-Z)*s*t,
         t*conj(s)**2+r*r*conj(t)+(3-Y)*r*conj(s),
         s*conj(t)**2+conj(r)**2*conj(s)+(3-X)*conj(r)*conj(t)]
    cs = [9-Z, 9-Y, 9-X]
    lam = [P[j]*(g+cs[j]*conj(z))/pos(abs(P[j])**2, 'P_j nonzero') for j in range(3)]
    for x in lam:
        assert (abs(x)**2-1).contains(0)
    u = lam[0]*conj(lam[1]); mu = s/3; nu = t/3
    n = pos(1-abs(mu)**2, 'n>0')
    k = r/3-nu*conj(mu); alpha = mu*mu-u*conj(mu)
    gamma = 2*mu*nu-z*lam[0]/3
    delta = (g/27*lam[0]*conj(lam[1])*conj(lam[2])).sqrt()
    assert delta.rad() < 1e-60, 'square-root ball crossed a branch cut'
    dF = 27/g*(n*gamma-2*alpha*k)*conj(delta)
    assert dF.imag.contains(0)
    if dF.real < 0:
        delta = -delta; dF = -dF
    assert dF.real > 0, 'orientation sign of dF not certified'
    rho = pos((n+dF.real)/2, 'rho>0')
    q = alpha/rho
    cp = (k-delta*conj(q))/n; cm = (k*q+delta)/n
    sigma = u+mu*q; xi = sigma*sigma/rho
    assert (abs(xi)-1).contains(0)
    M = [[acb(1), acb(0), acb(0)], [mu, sigma, q*conj(sigma)], [nu, cp*sigma, cm*conj(sigma)]]
    return M, xi


def cube_root(x):
    w = x.root(3)
    assert w.rad() < 1e-60, 'cube-root ball crossed a branch cut'
    assert (w**3-x).contains(0)
    return w


def reconstruct(seeds, sheet):
    a, b, c, d = seeds
    E = [[acb(1)]*3, [acb(1), a, b], [acb(1), c, d]]
    Em = mat(E)
    EH = [[conj(E[j][i]) for j in range(3)] for i in range(3)]
    EEH = [[sum((E[i][k]*EH[k][j] for k in range(3)), acb(0)) for j in range(3)] for i in range(3)]
    EHE = [[sum((EH[i][k]*E[k][j] for k in range(3)), acb(0)) for j in range(3)] for i in range(3)]
    Gh = [[6*(i == j)-EEH[i][j] for j in range(3)] for i in range(3)]
    T = [[6*(i == j)-EHE[i][j] for j in range(3)] for i in range(3)]
    Gv = [[T[j][i] for j in range(3)] for i in range(3)]
    s, t, r = Gh[1][0], Gh[2][0], Gh[2][1]
    X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    p = X+Y+Z; J = 2*(s*r*conj(t)).real; W = X*Y+X*Z+Y*Z-X*Y*Z
    g = pos(27-3*p+J, 'g>0'); eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    R = pos(4*g*g*eta-chi*chi, 'R>0')
    z = (chi+sheet*I*R.sqrt())/(2*g)
    Mh, xih = side(Gh, z, g)
    Mv, xiv = side(Gv, conj(z), g)
    om = (2*arb.pi()*I/3).exp()
    F = [[om**(j*k) for k in range(3)] for j in range(3)]
    wh, wv = cube_root(xih), cube_root(xiv)
    Ph = [[acb(1), 0, 0], [0, conj(wh), 0], [0, 0, wh]]
    Pv = [[acb(1), 0, 0], [0, conj(wv), 0], [0, 0, wv]]
    MvT = [[Mv[j][i] for j in range(3)] for i in range(3)]
    B = mat(Mh)*mat(Ph)*mat(F)
    C = mat(F)*mat(Pv)*mat(MvT)
    nz(Em.det(), 'det E'); nz(B.det(), 'det B'); nz(C.det(), 'det C')
    D = -C*mat(EH)*mat(adj3(Gh))*B/g
    H = [[E[i][j] if i < 3 and j < 3 else B[i, j-3] if i < 3 else C[i-3, j] if j < 3 else D[i-3, j-3]
          for j in range(6)] for i in range(6)]
    return H, R


def verify():
    seeds = [acb(1), (-24-7*I)/25, (-8-15*I)/17, -I]
    for x in seeds:
        assert (abs(x)**2-1).contains(0)
    out = []
    for sheet in (1, -1):
        H, R = reconstruct(seeds, sheet)
        # Consistency (not a proof of physicality): enclosures of |H_ij|=1, HH*=6I.
        Hm = acb_mat(H)
        G = Hm*Hm.conjugate().transpose()
        assert all(G[i, j].contains(6 if i == j else 0) for i in range(6) for j in range(6))
        assert all((abs(H[i][j])-1).contains(0) for i in range(6) for j in range(6))
        zeros = 0
        for k in (2, 3):
            for rs in it.combinations(range(6), k):
                for cs in it.combinations(range(6), k):
                    if k == 2 and rs == cs == (0, 1):
                        # exact: the E corner has H00=H01=H10=H11=1 because a=1
                        zeros += 1
                        continue
                    det = acb_mat([[H[i][j] for j in cs] for i in rs]).det()
                    assert abs(det) > (arb(1)/50 if k == 2 else arb(1)/2)
        for i, j in it.combinations(range(6), 2):
            for k, l in it.combinations(range(6), 2):
                assert abs(H[i][k]*H[j][l]+H[i][l]*H[j][k]) > arb(1)/50
        assert zeros == 1
        out.append({'sheet': sheet, 'R_lower': float(R.lower()),
                    'zero_2_minors': 1, 'other_2_minors_gt': '1/50',
                    '3_minors_gt': '1/2', '2_permanents_gt': '1/50'})
    print('PASS active-reconstruction single-minor control: both matched sheets, '
          'exactly one zero 2-minor, all 400 3-minors nonzero, no H2 block', flush=True)
    return out


if __name__ == '__main__':
    if not __debug__:
        raise SystemExit('Assertions must remain enabled')
    print(verify())
