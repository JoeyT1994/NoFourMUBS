#!/usr/bin/env python3
"""Fixed, denominator-free circuits for arbitrary-Gram side existence.

All polynomial arithmetic is over QQ in seven INDEPENDENT variables.
The last variable y denotes zeta=g*z, not a phase-side entry.
No side parametrization or density/irreducibility argument occurs here.
"""
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
import sympy as sp

VARIABLES = ['s', 'S', 't', 'T', 'r', 'Q', 'y']
RG, s, S, t, T, r, Q, y = ring(','.join(VARIABLES), QQ)
X, Y, Z = s*S, t*T, r*Q
p = X+Y+Z
J = s*r*T+S*Q*t
g = 27-3*p+J
eta = 9-p+J
chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
c0, c1, c2 = 9-Z, 9-Y, 9-X
P0 = r*s*s+Q*t*t+(3-Z)*s*t
B0 = Q*S*S+r*T*T+(3-Z)*S*T
P1 = t*S*S+r*r*T+(3-Y)*r*S
B1 = T*s*s+Q*Q*t+(3-Y)*Q*s
P2 = s*T*T+Q*Q*S+(3-X)*Q*T
B2 = S*t*t+r*r*s+(3-X)*r*t
MODULUS = y*y-chi*y+g*g*eta

# Compact numerators of u, v, e, alpha, beta, gamma, conjugate(alpha),
# and conjugate(gamma), derived from lambda formulas by bridge certificates.
U1 = g*g+c0*chi+c0*c1*eta+(c1-c0)*y
U2 = g*g+c0*chi+c0*c2*eta+(c2-c0)*y
EN = g*g*(g*g+c0*chi+(c0*c1+c0*c2-c1*c2)*eta) + \
     ((c1+c2-c0)*g*g+c1*c2*chi+c0*c1*c2*eta)*y
AN = s*s*B0*P1-3*S*U1
BN = t*t*B0*P2-3*T*U2
GN = 2*s*t*B0-3*(y+c0*eta)
U1bar = g*g+c1*chi+c0*c1*eta-(c1-c0)*y
ABN = S*S*P0*B1-3*s*U1bar
GBN = 2*S*T*P0-3*(chi-y+c0*eta)
KN, KBN = 3*r-t*S, 3*Q-T*s

AUX_NAMES = ['n', 'k', 'K', 'a', 'A', 'c', 'e', 'h', 'u', 'mu', 'nu', 'Nu']
AUX = sp.symbols(' '.join(AUX_NAMES))

def y_conditions():
    """Two small, explicit polynomial circuits, agreeing with algebra/y_model.py.

    a=alpha, A=conjugate(alpha), c=gamma, e=delta^2, h=g/27.
    K=conjugate(k), Nu=conjugate(nu).  All inputs are independent here.
    """
    n,k,K,a,A,c,e,h,u,mu,nu,Nu = AUX
    D = n*c-2*a*k
    t3 = n*nu*K
    t2 = n*Nu*k*a+A*(k*K-h)*u
    t1 = A*(k*K-h)*mu*a
    u3 = e*n*Nu+h*k*u
    u2 = h*a*(k*mu-n*nu)
    L00 = -u3*n*a*A-u2*a*A-e*K*A*A*mu*a
    L01 = -t3*n*a*A-t2*a*A
    L10 = u3*(n*n-a*A)+u2*n-e*K*A*A*u
    L11 = t3*(n*n-a*A)+t2*n+t1
    return (sp.expand(2*L00+n*L10+D*L11),
            sp.expand(2*e*L01+D*L10+e*n*L11))

# Each denominator is a monomial in [3, bar(P0), P1, P2, P0, bar(P1)].
DENOMINATOR_BASE = [RG(3), B0, P1, P2, P0, B1]
DENOMINATOR_NAMES = ['3', 'bar(P0)', 'P1', 'P2', 'P0', 'bar(P1)']
SPEC = {
 'n': (c2,  (2,0,0,0,0,0)),
 'k': (KN,  (2,0,0,0,0,0)),
 'K': (KBN, (2,0,0,0,0,0)),
 'a': (AN,  (2,1,1,0,0,0)),
 'A': (ABN, (2,0,0,0,1,1)),
 'c': (GN,  (2,1,0,0,0,0)),
 'e': (EN,  (3,1,1,1,0,0)),
 'h': (g,   (3,0,0,0,0,0)),
 'u': (U1,  (0,1,1,0,0,0)),
 'mu': (s,  (1,0,0,0,0,0)),
 'nu': (t,  (1,0,0,0,0,0)),
 'Nu': (T,  (1,0,0,0,0,0)),
}

def clear_auxiliary_polynomial(f):
    """Substitute the fixed rational formulas and clear ONLY listed divisors."""
    terms = []
    for monomial, coefficient in sp.Poly(f, *AUX).terms():
        if coefficient.q != 1:
            raise ValueError('non-integer auxiliary coefficient')
        denom = [0]*6
        factors = []
        for name, power in zip(AUX_NAMES, monomial):
            if power:
                numerator, den = SPEC[name]
                factors.append((numerator, power))
                denom = [a+power*b for a,b in zip(denom, den)]
        terms.append((int(coefficient), tuple(denom), factors))
    common = tuple(max(den[j] for _,den,_ in terms) for j in range(6))
    result = RG.zero
    for coefficient, denom, factors in terms:
        factors = factors + [(p,a-b) for p,a,b in
                    zip(DENOMINATOR_BASE,common,denom) if a != b]
        factors.sort(key=lambda x: len(x[0])**x[1])
        term = RG(coefficient)
        for fct, power in factors:
            term *= fct**power
        result += term
    return result, common

def targets():
    """All five nontrivial arbitrary-Gram obligations and one determinant identity."""
    result = [
        ('hermitian_determinant', 'h=n*m-k*bar(k)',
         3*g-c1*c2+KN*KBN, {'integer_factor':81}),
        ('core_I', 'gamma^2-4*alpha*beta=e',
         GN*GN*P1*P2-4*AN*BN-3*B0*EN,
         {'factor':'81*bar(P0)^2*P1*P2'}),
        ('core_II', 'e*bar(alpha)-n*gamma*k+alpha*k^2+n^2*beta=0',
         3*EN*ABN-c2*GN*KN*P1*P2*P0*B1 +
         AN*KN*KN*P2*P0*B1+c2*c2*BN*P1*P0*B1,
         {'factor':'729*bar(P0)*P1*P2*P0*bar(P1)'}),
        ('core_III', 'e*bar(gamma)-gamma*(n*m+k*bar(k))+2*alpha*k*m+2*beta*n*bar(k)=0',
         3*EN*GBN-GN*(c2*c1+KN*KBN)*P0*P1*P2 +
         2*AN*KN*c1*P0*P2+2*BN*c2*KBN*P0*P1,
         {'factor':'729*bar(P0)*P1*P2*P0'}),
    ]
    for j, f in enumerate(y_conditions()):
        poly, common = clear_auxiliary_polynomial(f)
        result.append(('y_gram_'+str(j), 'Y'+str(j)+'=0', poly,
                       {'bases': DENOMINATOR_NAMES, 'exponents': list(common)}))
    return result

def quotient_by_modulus(poly):
    """Generation only: exact monic division in the LAST independent variable."""
    rem, cofactor = poly, RG.zero
    while rem and max(exponent[-1] for exponent in rem) >= 2:
        degree = max(exponent[-1] for exponent in rem)
        head = RG.from_dict({e[:-1]+(degree-2,):c for e,c in rem.items()
                            if e[-1] == degree})
        cofactor += head
        rem -= head*MODULUS
    if rem:
        raise RuntimeError('nonzero exact remainder')
    return cofactor

def bridge_targets():
    """Small polynomial certificates deriving all compact lambda formulas."""
    BR, gg, cc, ee, yy, b0, b1, b2 = ring('g,chi,eta,y,c0,c1,c2', QQ)
    f = yy*yy-cc*yy+gg*gg*ee
    l0 = gg*gg+b0*(cc-yy)
    l1 = gg*gg+b1*yy
    l2 = gg*gg+b2*yy
    u1 = gg*gg+b0*cc+b0*b1*ee+(b1-b0)*yy
    u2 = gg*gg+b0*cc+b0*b2*ee+(b2-b0)*yy
    en = gg*gg*(gg*gg+b0*cc+(b0*b1+b0*b2-b1*b2)*ee) + \
         ((b1+b2-b0)*gg*gg+b1*b2*cc+b0*b1*b2*ee)*yy
    return BR, f, [
       ('permanent_numerator', yy*l0-gg*gg*(yy+b0*ee), -b0),
       ('u_numerator', l0*l1-gg*gg*u1, -b0*b1),
       ('v_numerator', l0*l2-gg*gg*u2, -b0*b2),
       ('e_numerator', l0*l1*l2-gg*gg*en,
          gg*gg*((b1-b0)*b2-b0*b1)-b0*b1*b2*yy),
    ]
