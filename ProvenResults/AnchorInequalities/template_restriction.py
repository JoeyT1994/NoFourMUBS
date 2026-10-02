"""Anchor-eliminated global restriction from the supplied fixed templates.

The map P_a -> C_alpha is affine in nine rank-one projector matrices. The
functions below use exact Q(sqrt(3),i) inputs; the mathematical formula works
over all complex entries. For generic floating-point inputs, coefficient
values alone are diagnostics, not rigorous bounds. Use validated intervals
or exact algebraic arithmetic to certify a sign.
"""
from exact_algebra import (ZERO,Q3i,add_term,poly_add,poly_mul,sos_polynomial,
                           multiplier_polynomials,root3_interval,real_interval,abs_upper)


def form_from_projector(projector):
    """On w=(1,z), return w^dagger P w-1 when Tr P=1.

    P is 6x6 Hermitian and exact, with entries in Q(sqrt(3),i).
    Rank one is a hypothesis of its measurement interpretation, not used
    for this polynomial expansion.
    """
    if len(projector)!=6 or any(len(r)!=6 for r in projector):
        raise ValueError('a 6-by-6 projector matrix is required')
    if any(projector[r][s]!=projector[s][r].conj()for r in range(6)for s in range(6)):
        raise ValueError('matrix must be Hermitian')
    if sum((projector[r][r]for r in range(6)),ZERO)!=Q3i(1):
        raise ValueError('trace must equal one exactly')
    exponents=[(0,)*5]+[tuple(int(i==j)for i in range(5))for j in range(5)]
    result={}
    for r in range(6):
        for s in range(6):
            if r==s:continue
            add_term(result,tuple(y-x for x,y in zip(exponents[r],exponents[s])),projector[r][s])
    return result


def coefficients(certificate,projectors):
    """Return C_alpha in P(z)=sum h_a(z) f_a(z)-sigma(z).

    projector order is the same as certificate['multipliers']:
    five carrier projectors, then the four indicated outer projectors.
    """
    if len(projectors)!=9:raise ValueError('exactly nine projectors are required')
    hs=multiplier_polynomials(certificate);P={}
    for h,A in zip(hs,projectors):P=poly_add(P,poly_mul(h,form_from_projector(A)))
    return poly_add(P,sos_polynomial(certificate),-1)


def certified_margin(C,digits=60):
    """A rational lower bound for C_0-sum_{alpha != 0}|C_alpha|.

    A positive return value rigorously excludes a common flat anchor.
    A nonpositive value is inconclusive, not evidence of feasibility.
    """
    zero=(0,)*5;p0=C.get(zero,ZERO)
    if p0.c or p0.d:raise ValueError('constant coefficient must be real')
    bounds=root3_interval(digits);lo,_=real_interval(p0.a,p0.b,bounds)
    return lo-sum((abs_upper(v,bounds)for k,v in C.items()if k!=zero),start=lo*0)


def quadratic_margin(C):
    """Return C0 and Q=C0^2-680*sum_{alpha!=0}|C_alpha|^2.

    A physical anchor necessarily has C0<=0 OR Q<=0. Thus C0>0,Q>0
    is a rigorous exclusion. This weaker, polynomial version of coefficient
    dominance is quadratic in the nine projector entries. There are 680
    possible nonconstant exponents of l1 norm at most four in five variables.
    """
    zero=(0,)*5;p0=C.get(zero,ZERO)
    if p0.c or p0.d:raise ValueError('constant coefficient must be real')
    if any(sum(map(abs,e))>4 for e in C):raise ValueError('unexpected Fourier degree')
    norm2=sum((v*v.conj()for k,v in C.items()if k!=zero),ZERO)
    return p0,p0*p0-680*norm2
