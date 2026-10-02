"""Exact algebra for BRANCH_LEMMA.md, followed by labelled numerical regressions.

The seed-to-side identities remain accepted inputs. This check verifies the
branch identities conditional on them; the written proof supplies the domain.
"""
from pathlib import Path
import inspect
import random
import sys

import mpmath as mp
import sympy as sp


def exact_checks():
    mu, mb, u, rho = sp.symbols('mu mb u rho', nonzero=True)
    nu, k, delta = sp.symbols('nu k delta')
    n = 1 - mu*mb
    alpha, ab = mu**2 - u*mb, mb**2 - mu/u
    # Formal conjugates: conj(mu)=mb, conj(u)=1/u, rho real.
    # rho*(n-rho)=|alpha|^2 follows from the accepted row norm.
    relation = rho**2 - n*rho + alpha*ab
    count = 0

    def zero(expr):
        nonlocal count
        numerator = sp.cancel(expr).as_numer_denom()[0]
        assert sp.cancel(sp.rem(numerator, relation, rho)) == 0
        count += 1

    q, qb = alpha/rho, ab/rho
    sigma, sb = u + mu*q, 1/u + mb*qb
    rp = n-rho
    qp, qpb = alpha/rp, ab/rp
    sigp, sigpb = u + mu*qp, 1/u + mb*qpb
    cp, cm = (k-delta*qb)/n, (k*q+delta)/n
    cpp, cmp = (k+delta*qpb)/n, (k*qp-delta)/n
    t = q/qb
    zero(sigma*sb-rho)
    zero(rp-rho*q*qb)
    zero(qp-1/qb)
    zero(mu*(1+q*qb)+u*qb+q*mb)
    zero(mb+mu*qb+q*sb)
    zero(sigp-q*q*sb/qb)
    zero(cpp-cm/q)
    zero(cmp-cp/qb)
    mat = sp.Matrix([[1,0,0], [mu,sigma,q*sb],
                     [nu,cp*sigma,cm*sb]])
    matp = sp.Matrix([[1,0,0], [mu,sigp,qp*sigpb],
                      [nu,cpp*sigp,cmp*sigpb]])
    swap = sp.Matrix([[1,0,0], [0,0,1], [0,1,0]])
    for entry in matp-mat*swap*sp.diag(1,t,1/t):
        zero(entry)
    zero(sigp**2/rp-t**3*sb**2/rho)
    w = sp.symbols('w', nonzero=True)
    # conj(w)=1/w and w'=t/w, so conj(w')=w/t.
    for entry in matp*sp.diag(1,w/t,t/w)-mat*sp.diag(1,1/w,w)*swap:
        zero(entry)

    # A specialization of the exact side algebra at dF=0: both rho's > 0.
    equal_rho = {mu: -sp.Rational(1,3), mb: -sp.Rational(1,3),
                 u: 1, rho: sp.Rational(4,9)}
    assert sp.simplify(relation.subs(equal_rho)) == 0
    assert sp.simplify((2*rho-n).subs(equal_rho)) == 0
    assert sp.simplify(q.subs(equal_rho)) == 1
    for entry in matp-mat*swap:
        assert sp.simplify(entry.subs(equal_rho)) == 0

    omega = (-1+sp.I*sp.sqrt(3))/2
    fourier = sp.Matrix(3,3,lambda j,l: omega**(j*l))
    for entry in swap*fourier-fourier*swap:
        assert sp.simplify(entry) == 0
    for b in range(3):
        cyclic = fourier[:, [(j-b) % 3 for j in range(3)]]
        reflect = fourier[:, [(b-j) % 3 for j in range(3)]]
        for entry in sp.diag(1,omega**(-b),omega**b)*fourier-cyclic:
            assert sp.simplify(entry) == 0
        for entry in swap*sp.diag(1,omega**(-b),omega**b)*fourier-reflect:
            assert sp.simplify(entry) == 0
    print(f'EXACT PASS: {count} rational identities, dF=0 specialization, Fourier permutations')

    E = sp.Matrix([[1,1,1], [1,omega,sp.conjugate(omega)],
                   [1,sp.I,(3+4*sp.I)/5]])
    G = (6*sp.eye(3)-E*E.conjugate().T).applyfunc(sp.simplify)
    s, t0, r = G[1,0], G[2,0], G[2,1]
    X,Y,Z = [sp.simplify(x*sp.conjugate(x)) for x in (s,t0,r)]
    p = X+Y+Z
    J = sp.simplify(2*sp.re(s*r*sp.conjugate(t0)))
    W = X*Y+X*Z+Y*Z-X*Y*Z
    g = 27-3*p+J
    eta = 9-p+J
    chi = W-(p-9)*(p-18)+(p-15)*J
    R = sp.simplify(4*g*g*eta-chi*chi)
    assert s == 0
    assert sp.simplify(g-(24+6*sp.sqrt(3))/5) == 0
    assert R == sp.Rational(5184,625)
    print('EXACT PASS: strict s=0 seed, R=5184/625 (reversed chart is undefined)')


def numerical_regressions():
    sys.path.insert(0, str(Path(__file__).resolve().parents[2]
                           / 'MinimalConstruction' / 'Implementation'))
    import model
    # Exercise the actual production formula with only its sign rule reversed.
    source = inspect.getsource(model.side)
    sign_rule = 'if mp.re(dF)<0:delta=-delta;dF=-dF'
    assert source.count(sign_rule) == 1
    namespace = dict(vars(model))
    exec(source.replace(sign_rule, 'if mp.re(dF)>0:delta=-delta;dF=-dF')
         .replace('def side(', 'def side_flip(', 1), namespace)
    flip = namespace['side_flip']
    rng = random.Random(28092026)
    worst = mp.mpf(0)
    comparisons = 0

    def close(A, B):
        nonlocal worst, comparisons
        error = max(abs(x) for x in A-B)
        worst = max(worst, error)
        comparisons += 1
        assert error < mp.mpf('1e-45'), mp.nstr(error)

    omega = mp.exp(2*mp.pi*mp.j/3)
    seeds_list = []
    while len(seeds_list) < 16:
        seeds = [mp.exp(mp.j*mp.mpf(rng.uniform(-3.14,3.14))) for _ in range(4)]
        try:
            model.Model(seeds)
        except ValueError:
            continue
        seeds_list.append(seeds)
    # Approach the exact exceptional chart from both sides without evaluating 0/0.
    for epsilon in ('1e-6', '-1e-6', '1e-10', '-1e-10'):
        seeds_list.append([omega*mp.exp(mp.j*mp.mpf(epsilon)), omega**2,
                           mp.j, (3+4*mp.j)/5])
    for seeds in seeds_list:
        for sheet in (-1,1):
            carrier = model.Model(seeds, sheet=sheet)
            H = carrier.hadamard()
            G = carrier.Gh
            s,t0,r = G[1,0],G[2,0],G[2,1]
            X,Y,Z = abs(s)**2,abs(t0)**2,abs(r)**2
            p = X+Y+Z
            J = 2*mp.re(s*r*mp.conj(t0))
            W = X*Y+X*Z+Y*Z-X*Y*Z
            chi = W-(p-9)*(p-18)+(p-15)*J
            z = (chi+sheet*mp.j*mp.sqrt(carrier.R))/(2*carrier.g)
            for side, gram, zz in (('h',G,z), ('v',carrier.T.T,mp.conj(z))):
                original = getattr(carrier, side)
                q = original.M[1,2]/mp.conj(original.M[1,1])
                phase = q/mp.conj(q)
                old_w = mp.exp(mp.j*mp.arg(original.xi)/3)
                for b in (1,2):
                    Hcycle = carrier.hadamard(b if side == 'h' else 0,
                                               b if side == 'v' else 0)
                    indices = list(range(3))+[3+(j-b)%3 for j in range(3)]
                    expected = mp.matrix(6,6)
                    for i in range(6):
                        for j in range(6):
                            expected[i,j] = H[i,indices[j]] if side == 'h' else H[indices[i],j]
                    close(Hcycle, expected)
                changed = flip(gram,zz,carrier.g)
                close(mp.matrix([changed.xi]), mp.matrix([phase**3*mp.conj(original.xi)]))
                setattr(carrier, side, changed)
                try:
                    for branch in range(3):
                        new_w = mp.exp(mp.j*mp.arg(changed.xi)/3)*omega**branch
                        b = min(range(3), key=lambda b: abs(new_w-omega**b*phase*mp.conj(old_w)))
                        Hflip = carrier.hadamard(branch if side == 'h' else 0,
                                                 branch if side == 'v' else 0)
                        indices = list(range(3))+[3+(b-j)%3 for j in range(3)]
                        expected = mp.matrix(6,6)
                        for i in range(6):
                            for j in range(6):
                                expected[i,j] = H[i,indices[j]] if side == 'h' else H[indices[i],j]
                        close(Hflip, expected)
                finally:
                    setattr(carrier, side, original)
    print(f'NUMERICAL PASS: {len(seeds_list)} strict seeds, both sheets and sides; '
          f'{comparisons} comparisons at {mp.mp.dps} digits; max error {mp.nstr(worst,5)}')


if __name__ == '__main__':
    exact_checks()
    with mp.workdps(80):
        numerical_regressions()
    print('PASS: side branch lemma (conditional exact algebra + numerical regression)')
