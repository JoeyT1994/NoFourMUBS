"""Exact identities and independent high-precision reconstruction comparisons.

Also replays the exact fixed-observable identities of FIXED_OBSERVABLE.md
(strict a=-1 section) on which the 20-moment count in REDUCTION.md section 3 rests.

This verifies a reformulation and a ghost exclusion, not 4+1 emptiness.
No nonlinear search or purported 4+1 physical solution is used.
"""
from pathlib import Path
from functools import lru_cache
import json
import random
import sys
import time
import sympy as sp
import mpmath as mp
from targets import (build_system, target_gram, target_gram_inverse,
                     mixed_metric, SEEDS, star, dagger)

sys.path.insert(0, str(Path(__file__).resolve().parents[3]/'MinimalConstruction'/'Implementation'))
from model import Model, inner
from strict_a1_system import b, c, d, seed_data as a1_seed_data

START = time.monotonic()
exact = []


def zero(expression):
    assert sp.cancel(sp.expand(expression)) == 0


def fixed_observable_checks():
    """Exact identities behind FIXED_OBSERVABLE.md (from the archived
    symbolic_three_rays/verify.py, unchanged in substance)."""
    data=a1_seed_data();E=data['E'];g=data['g'];eta=data['eta'];chi=data['chi']
    G=6*sp.eye(3)-E*dagger(E);T=6*sp.eye(3)-dagger(E)*E
    assert G==data['G'];assert T==data['T']
    z0=lambda f: sp.cancel(f)==0
    assert z0(data['V']-(b*c-b+c+1)*star(b*c-b+c+1))
    assert z0(data['alpha']*star(data['alpha'])+data['V']-8)
    for key,K in [('h',G),('v',T)]:
        s_,t_,r_=K[1,0],K[2,0],K[2,1];sb,tb,rb=star(s_),star(t_),star(r_)
        assert z0(s_*sb-1)
        L=t_*tb+r_*rb;J=s_*r_*tb+sb*rb*t_
        assert z0(data['A']-4+(t_-s_*r_)*star(t_-s_*r_))
        assert z0(g-24+3*L-J) and z0(eta-8+L-J)
        assert z0(chi+L*L-26*L+136-(L-14)*J)
        assert z0(data['R']-(4*g*g*eta-chi*chi)) and z0(K.det()-g)
        sd=data[key];c0=9-r_*rb;c1=9-t_*tb;P0=sd['P0'];P1=sd['P1']
        u0=(g*g+c0*c1*eta+(c0+c1)*chi/2)/(star(P0)*P1)
        u1=sp.I*(c1-c0)/(2*star(P0)*P1)
        pi0=(chi/2+c0*eta)/star(P0);pi1=sp.I/(2*star(P0))
        up0=(chi/2+c1*eta)/P1;up1=-sp.I/(2*P1)
        NX0=sp.Matrix([[s_,3,rb],[s_*s_-2*u0*sb,s_,s_*rb-up0],[s_*t_-pi0,t_,s_]])
        NX1=sp.Matrix([[0,0,0],[-2*u1*sb,0,-up1],[-pi1,0,0]])
        for new,old in [(sd['N0'],NX0),(sd['N1'],NX1)]:
            for f in new-sd['denominator']*old:assert z0(f)
        assert sum(q!=0 for q in sd['N1'])==3
    xx,ss,uu=sp.symbols('x s u',nonzero=True)
    assert sp.expand((xx-ss)*(xx*xx+uu/ss)-(xx**3-ss*xx*xx+uu*xx/ss-uu))==0
    return ['fixed observable: |s|=1 and A=4-|t-sr|^2 on both sides',
            'compact g,eta,chi,R identities on both sides',
            'cleared moment matrices equal the generic single-radical matrices',
            'unit-sum cubic factorization (repeated X entries are (s,s,-s))']


exact.extend(fixed_observable_checks())

Gamma = target_gram(); Gamma_inv = target_gram_inverse()
assert Gamma*Gamma_inv == sp.eye(5)
assert Gamma.det() == 2*6**4
exact.append('constant five-ray Gram determinant and explicit inverse')

rr = sp.symbols('r0:5', nonzero=True)
row = sp.Matrix([rr])
diag = 1-(row*Gamma_inv*dagger(row, rr))[0]
delta = sum(rr[:4])-sp.sqrt(6)*rr[4]
zero(diag-(4-delta*star(delta, rr))/12)
exact.append('rank-one defect diagonal equals (4-|sum outer-sqrt(6)*anchor|^2)/12')

c, s = sp.symbols('cos_theta sin_theta', real=True)
F = 6*(1-sp.sqrt(6)*c+sp.I*sp.sqrt(2)*s)
gap = 54+144*(c-sp.sqrt(6)/4)**2
zero(F*sp.conjugate(F)-gap-72*(c*c+s*s-1))
for sign in (-1, 1):
    rho = -2+sign*sp.sqrt(3)
    zero((rho-1)*(1/rho-1)-6)
    zero(6+sp.sqrt(6)*((rho-1)*(c+sp.I*s)+(1/rho-1)*(c-sp.I*s))
         -6*(1-sp.sqrt(6)*c+sign*sp.I*sp.sqrt(2)*s))
exact.append('standard ghost vs physical anchor: exact sum-of-squares gap >=54')

m03, m04, m13, m14 = sp.symbols('m03 m04 m13 m14')
minor = (1/sp.sqrt(6)-m03)*(-1/sp.sqrt(6)-m14)-(1/sp.sqrt(6)-m04)*(1/sp.sqrt(6)-m13)
zero(minor-(m03*m14-m04*m13+(m03+m04+m13-m14)/sp.sqrt(6)-sp.Rational(1,3)))
exact.append('fixed Hadamard 2x2 cross-block minor')

# A universal degree-two moment witness, with the anchor's first entry fixed.
# Raw frame columns have covariance (Gamma/6) tensor I_6. Conditioning the
# anchor coordinate to equal 1 preserves all Hermitian second moments.
Cov = sp.kronecker_product(Gamma/6, sp.eye(6))
anchor_index = 4*6
mu = Cov[:,anchor_index]
conditional_covariance = Cov-mu*mu.T
assert conditional_covariance[anchor_index,:] == sp.zeros(1,30)
assert mu[anchor_index] == 1
assert conditional_covariance+mu*mu.T == Cov
assert all(Cov[i,i] == 1 for i in range(30))
for i in range(5):
    for j in range(5):
        zero(sum(Cov[6*i+r,6*j+r] for r in range(6))-Gamma[i,j])
# Gamma is positive definite: its nontrivial block has eigenvalues 6 +/- 2sqrt(6).
assert sorted(Gamma.eigenvals().values()) == [1,1,3]
for ev in Gamma.eigenvals():
    assert ev.is_positive
exact.append('universal positive covariance with unit diagonal, target Gram, and fixed anchor coordinate')

plain = build_system(False); aligned = build_system(True)
assert (len(plain['ray_symbols']),len(plain['equations'])) == (25,41)
assert (len(aligned['ray_symbols']),len(aligned['equations'])) == (29,45)
assert len(aligned['moment_equations']) == 20
assert sum(eq['label'].startswith('orthogonality.') for eq in aligned['equations']) == 12
assert sum(eq['label'].startswith('unbiasedness.') for eq in aligned['equations']) == 8


def maximal_ray_degree(system):
    symbols = frozenset(system['ray_symbols'])
    @lru_cache(None)
    def degree(expr):
        if expr in symbols:
            return 1
        if not expr.free_symbols.intersection(symbols):
            return 0
        if expr.is_Add:
            return max(map(degree,expr.args))
        if expr.is_Mul:
            return sum(map(degree,expr.args))
        if expr.is_Pow:
            base, power = expr.args
            if base in symbols and power.is_Integer:
                return abs(int(power))
            assert power.is_Integer and power >= 0, expr
            return int(power)*degree(base)
        raise AssertionError(expr)
    return max(degree(eq[key]) for eq in system['equations'] for key in ('A','B'))


assert maximal_ray_degree(plain) == 4
assert maximal_ray_degree(aligned) == 2
assert not aligned['defect'].has(aligned['tau'])
exact.append('correct 4+1 graph; counts 25/41 and 29/45; maximal ray degrees 4 and 2')

mp.mp.dps = 75
rng = random.Random(9214101)
maxima = {}


def check(name, difference, scale=0):
    error = max(map(abs,difference)) if isinstance(difference,mp.matrix) else abs(difference)
    error /= 1+scale
    maxima[name] = max(maxima.get(name,mp.mpf(0)),error)
    assert error < mp.mpf('1e-55'), (name,mp.nstr(error,10))


def phases(n):
    return [mp.exp(2*mp.pi*mp.j*mp.mpf(str(rng.random()))) for _ in range(n)]


def mp_matrix(M):
    return mp.matrix([[mp.mpc(str(sp.re(M[i,j]).evalf(80)),str(sp.im(M[i,j]).evalf(80)))
                       for j in range(M.cols)] for i in range(M.rows)])


GI = mp_matrix(Gamma_inv); GG = mp_matrix(Gamma)


def numeric_metric(E):
    return mp.matrix([[int(i==j) if (i<3)==(j<3) else
                       E[i,j-3]/mp.sqrt(6) if i<3 else
                       mp.conj(E[j,i-3])/mp.sqrt(6)
                       for j in range(6)] for i in range(6)])


def linear_map(H):
    return mp.matrix([[int(i==j) if i<3 else mp.conj(H[j,i-3])/mp.sqrt(6)
                       for j in range(6)] for i in range(6)])


# Gram geometry is checked for both sheets, including general a (not just -1).
gram_cases = 0
for fixed_a in (True, False):
    accepted = 0
    while accepted < 6:
        seeds = [-1,*phases(3)] if fixed_a else phases(4)
        sheet = 1 if accepted%2 == 0 else -1
        try:
            model = Model(seeds,sheet)
        except ValueError:
            continue
        H = model.hadamard(); L = linear_map(H); KK = numeric_metric(model.E)
        check('LLdagger equals seed-linear metric', L*L.H-KK)
        check('metric determinant g/216', mp.det(KK)-model.g/216)
        Q = mp.matrix([[mp.exp(2*mp.pi*mp.j*i*j/6)/mp.sqrt(6)
                        for j in range(6)] for i in range(6)])
        Q = Q*mp.diag(phases(6))*Q
        base = mp.matrix(6,5)
        for j in range(4):
            base[j,j] = mp.sqrt(6); base[j,4] = 1
        base[4,4] = mp.sqrt(2)
        A = Q*base
        check('synthetic aligned Gram', A.H*A-GG)
        W = L*A; D = KK-W*GI*W.H; tail = L*Q[:,5]
        check('Gram implies rank-one defect', D-tail*tail.H)
        check('rank-one construction recovers target Gram', W.H*(KK**-1)*W-GG)
        accepted += 1; gram_cases += 1


# Compare both equation systems with direct flatness and overlaps from H.
equation_cases = {}
for name, system in [('plain', plain), ('aligned', aligned)]:
    evaluate = sp.lambdify((*SEEDS,*system['ray_symbols']),
                          (sp.Matrix([e['A'] for e in system['equations']]),
                           sp.Matrix([e['B'] for e in system['equations']])),
                          modules='mpmath', cse=True)
    den_eval = sp.lambdify(SEEDS,[system['data'][j]['denominator'] for j in ('v','h')],
                          modules='mpmath',cse=True)
    accepted = 0
    while accepted < 8:
        seeds = phases(3); sheet = 1 if accepted%2 == 0 else -1
        try:
            model = Model([-1,*seeds],sheet)
        except ValueError:
            continue
        H = model.hadamard(); coord = []; values = []
        for j in range(5):
            free_phase = name == 'aligned' and j<4
            xx = phases(3 if free_phase else 2); pp = phases(3)
            x = mp.matrix(xx if free_phase else [1,*xx]); p = mp.matrix(pp)
            coord.append((x,p)); values.extend(xx+pp)
        raw = []; expected = []; den = den_eval(*seeds)
        for x,p in coord:
            v,out = model.reconstruct_ray(x,p); raw.append(v)
            ev = [abs(q)**2-1 for q in v[3:]]
            eh = [abs(q)**2-1 for q in out[3:]]
            expected.append(model.g*sum(ev))
            for side, errors, denominator in [(H[3:,:3].H,ev,den[0]),(H[:3,3:],eh,den[1])]:
                moment = model.g**2*denominator*sum(side[1,j]*errors[j] for j in range(3))
                expected.extend([mp.re(moment),mp.im(moment)])
        for i in range(4):
            for j in range(i+1,5):
                overlap = model.g*inner(raw[i],raw[j])
                if j<4:
                    expected.extend([mp.re(overlap),mp.im(overlap)])
                elif name == 'aligned':
                    overlap -= mp.sqrt(6)*model.g
                    expected.extend([mp.re(overlap),mp.im(overlap)])
                else:
                    expected.append(abs(overlap)**2-6*model.g**2)
        a,bcoef = evaluate(*seeds,*values)
        actual = a+sheet*mp.sqrt(model.R)*bcoef
        check(name+' equations vs reconstructed rays',actual-mp.matrix(expected),max(map(abs,expected)))
        accepted += 1
    equation_cases[name] = accepted


# Physical anchors from an independent, explicitly known exact third basis.
N = [[0,0,0,0,0,0],[0,3,2,5,1,4],[0,5,4,3,1,2],
     [0,2,4,0,4,2],[0,3,0,3,3,0],[0,0,2,2,4,4]]
Kexp = [[0,0,0,0,0,0],[1,3,5,7,9,11],[1,11,9,7,5,3],
        [4,8,0,4,8,0],[9,3,9,3,9,3],[4,0,8,4,0,8]]
z6 = mp.exp(mp.pi*mp.j/3); z12 = mp.exp(mp.pi*mp.j/6)
H = mp.matrix([[z6**n for n in row] for row in N])
K = mp.matrix([[z12**n for n in row] for row in Kexp])
check('independent carrier unitarity',H.H*H-6*mp.eye(6))
check('independent third basis unitarity',K.H*K-6*mp.eye(6))
check('independent third basis unbiasedness',(H.H*K/mp.sqrt(6)).apply(lambda q:abs(q)**2-1))
smallest = mp.inf; ghost_cases = 0
for anchor_index in range(6):
    w = K[:,anchor_index]; p = H.H*w/mp.sqrt(6)
    for i in range(6):
        for j in range(6):
            phase = H[i,j]*p[j]/w[i]
            for sign in (-1,1):
                rho = -2+sign*mp.sqrt(3)
                v = H[:,j].copy(); formal_star_v = H[:,j].apply(mp.conj)
                v[i] *= rho; formal_star_v[i] /= rho
                residual = (formal_star_v.T*w)[0]*(w.H*v)[0]-6
                expression = 6+mp.sqrt(6)*((rho-1)*phase+(1/rho-1)/phase)
                check('ghost overlap identity',residual-expression)
                bound = 54+144*(mp.re(phase)-mp.sqrt(6)/4)**2
                check('ghost SOS identity',abs(residual)**2-bound)
                assert abs(residual)**2 >= 54-mp.mpf('1e-60')
                smallest = min(smallest,abs(residual)**2); ghost_cases += 1

result = dict(status='PASS',exact_checks=exact,precision_decimal_digits=mp.mp.dps,
              gram_cases=gram_cases,equation_cases=equation_cases,
              ghost_anchor_cases=ghost_cases,smallest_sampled_squared_ghost_residual=mp.nstr(smallest,12),
              maximum_relative_or_absolute_residuals={k:mp.nstr(v,8) for k,v in maxima.items()},
              elapsed_seconds=round(time.monotonic()-START,3),
              scope='Exact reformulation and standard-ghost exclusion. NOT a certificate of 4+1 emptiness.')
print(json.dumps(result,indent=2))
print('PASS: 4+1 reduction, second-moment witness and standard-ghost gap')
