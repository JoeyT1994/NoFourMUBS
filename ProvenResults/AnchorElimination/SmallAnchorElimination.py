#!/usr/bin/env python3
"""Exact circle reduction for the ALIGNED quartet gauge; not seed elimination.

All computations below use SymPy exact algebraic arithmetic. Numerical output,
if any, is labelled diagnostic. No flat completion is assumed. The mathematical
scope and all three rank strata are proved in SmallAnchorElimination.md.
"""
from pathlib import Path
import argparse
import json
import sympy as s

ROOT = Path(__file__).resolve().parent


def canon(x):
    return s.expand(x)


def clean(A):
    return A.applyfunc(canon)


def circle_data(U, V):
    """U unitary; V has four orthonormal normalized I-flat columns.

    V retains its actual overlap-aligned column phases; it is NOT a list of
    projectors. Replacing these phases arbitrarily changes the tested gauge.
    Formula validity does not require I and U to be mutually unbiased, but
    that additional hypothesis belongs to the physical MUB6 application.
    """
    if U.shape != (6, 6) or V.shape != (6, 4):
        raise ValueError('Expected normalized U(6x6), V(6x4)')
    one = s.ones(4, 1)
    e0 = s.eye(6)[:, 0]
    Pi = clean(s.eye(6) - V*V.adjoint())
    u = clean(V*one/s.sqrt(6))
    v = Pi*e0
    delta = canon(1/s.sqrt(6) - u[0])
    h = clean(u+3*delta*v)
    J = clean(Pi-3*v*v.adjoint())
    rho = canon(s.Rational(1,3)-3*delta*s.conjugate(delta))
    # I coordinate zero is fixed already; the fifth I and sixth U equations
    # follow from the norm and the remaining probabilities in each basis.
    measurements = [s.eye(6)[:, j]*s.eye(6)[:, j].T for j in range(1, 5)]
    measurements += [clean(U[:, j]*U[:, j].adjoint()) for j in range(5)]
    b = s.Matrix([canon(s.Rational(1,6)-(h.adjoint()*P*h)[0]
                         -rho*s.trace(P*J)) for P in measurements])
    a = [clean(P*h) for P in measurements]
    G = s.Matrix(9, 9, lambda j,k: canon(4*s.re((a[j].adjoint()*J*a[k])[0])))
    t = canon(s.trace(G))
    e = canon((t*t-s.trace(G*G))/2)
    B = canon((b.T*b)[0])
    Gb = clean(G*b)
    C = canon((b.T*Gb)[0])
    D = canon((Gb.T*Gb)[0])
    return {'Pi':Pi,'u':u,'delta':delta,'h':h,'J':J,'rho':rho,
            'measurements':measurements,'b':b,'G':G,'t':t,'e':e,
            'B':B,'C':C,'D':D,
            'rank2_range_equation':canon(e*B-t*C+D),
            'rank2_circle_equation':canon(t*B-C-rho*e),
            'rank1_range_equation':canon(t*B-C),
            'rank1_circle_margin':canon(rho*t-B)}


def branch_predicate(G, b, rho):
    """Exact rational/algebraic test when SymPy can decide the scalar signs."""
    G,b=s.Matrix(G),s.Matrix(b)
    rho=canon(rho)
    t=canon(s.trace(G));e=canon((t*t-s.trace(G*G))/2)
    B=canon((b.T*b)[0]);C=canon((b.T*G*b)[0]);D=canon((b.T*G*G*b)[0])
    if rho.is_negative:
        return False
    if rho.is_nonnegative is not True:
        raise ValueError('Exact sign of rho unresolved')
    if e.is_positive:
        return canon(e*B-t*C+D)==0 and canon(t*B-C-rho*e)==0
    if e==0 and t.is_positive:
        margin=canon(rho*t-B)
        if margin.is_nonnegative is None:
            raise ValueError('Exact rank-one margin sign unresolved')
        return canon(t*B-C)==0 and bool(margin.is_nonnegative)
    if e==0 and t==0:
        return B==0
    raise ValueError('Not a decided positive-semidefinite rank-at-most-two Gram matrix')


def unified_predicate(G, b, rho, *, physical_flat_quartet=False):
    """Two equations and one inequality, without a rank case split.

    G must be positive semidefinite of rank<=2. For a generic circle problem
    rho>=0 is also checked. Under the physical flat-quartet hypotheses the
    rank-zero case is impossible, so the same inequality already implies
    rho>=0; physical_flat_quartet=True uses exactly those three conditions.
    This flag is a mathematical premise, NOT a test of the supplied data.
    """
    G,b=s.Matrix(G),s.Matrix(b);rho=canon(rho)
    if not physical_flat_quartet:
        if rho.is_negative:
            return False
        if rho.is_nonnegative is not True:
            raise ValueError('Exact sign of rho unresolved')
    t=canon(s.trace(G));e=canon((t*t-s.trace(G*G))/2)
    B=canon((b.T*b)[0]);C=canon((b.T*G*b)[0]);D=canon((b.T*G*G*b)[0])
    if canon(e*B-t*C+D)!=0 or canon(t*B-C-rho*e)!=0:
        return False
    margin=canon(rho*t-B)
    if margin.is_nonnegative is None:
        raise ValueError('Exact circle margin sign unresolved')
    return bool(margin.is_nonnegative)


def zero(value):
    if isinstance(value, s.MatrixBase):
        assert all(canon(x)==0 for x in value), value
    else:
        assert canon(value)==0, value


def verify():
    tests=[]
    # Independent rational tests of all rank strata and the circle boundary.
    A=s.Matrix([[1,0],[0,2],[1,2]]);G=A*A.T;q=s.Matrix([3,4]);b=A*q
    assert branch_predicate(G,b,s.Integer(25))
    assert not branch_predicate(G,b+s.Matrix([0,0,1]),s.Integer(25))
    assert not branch_predicate(G,s.zeros(3,1),s.Integer(25))
    assert branch_predicate(G,s.zeros(3,1),s.Integer(0))
    tests.append('rank_two_circle_and_off_range_negative_controls')
    # Check the low characteristic coefficients of the augmented Gram
    # matrix independently of the spectral proof in the note.
    for AA,bb,rr in ((A,b,s.Integer(25)),
                     (A,b+s.Matrix([0,0,1]),s.Integer(25)),
                     (s.Matrix([[1,0],[2,0],[0,0]]),s.Matrix([3,6,0]),s.Integer(8))):
        GG=AA*AA.T;TT=s.trace(GG);EE=(TT*TT-s.trace(GG*GG))/2
        BB=(bb.T*bb)[0];CC=(bb.T*GG*bb)[0];DD=(bb.T*GG*GG*bb)[0]
        Omega=GG.row_join(bb).col_join(bb.T.row_join(s.Matrix([[rr]])))
        cp=Omega.charpoly().all_coeffs()
        zero(cp[4]+EE*BB-TT*CC+DD)
        zero(-cp[3]+TT*BB-CC-rr*EE)
    tests.append('augmented_gram_characteristic_coefficients')
    A=s.Matrix([[1,0],[2,0],[0,0]]);G=A*A.T;b=s.Matrix([3,6,0])
    assert branch_predicate(G,b,s.Integer(25))
    assert not branch_predicate(G,b,s.Integer(8))
    assert not branch_predicate(G,s.Matrix([3,6,1]),s.Integer(25))
    tests.append('rank_one_kernel_slack_and_negative_controls')
    assert branch_predicate(s.zeros(3),s.zeros(3,1),s.Integer(25))
    assert not branch_predicate(s.zeros(3),s.Matrix([1,0,0]),s.Integer(25))
    assert not branch_predicate(s.zeros(3),s.zeros(3,1),s.Integer(-1))
    tests.append('rank_zero_and_negative_radius_controls')

    # Rank-free test agrees with every explicit rank case, including the
    # generic rank-zero and negative-radius cases outside physical quartets.
    cases=[]
    A2=s.Matrix([[1,0],[0,2],[1,2]]);G2=A2*A2.T;b2=A2*s.Matrix([3,4])
    cases += [(G2,b2,s.Integer(25)),(G2,b2+s.Matrix([0,0,1]),s.Integer(25)),
              (G2,s.zeros(3,1),s.Integer(25)),(G2,s.zeros(3,1),s.Integer(0))]
    A1=s.Matrix([[1,0],[2,0],[0,0]]);G1=A1*A1.T
    cases += [(G1,s.Matrix([3,6,0]),s.Integer(25)),
              (G1,s.Matrix([3,6,0]),s.Integer(8)),
              (G1,s.Matrix([3,6,1]),s.Integer(25))]
    cases += [(s.zeros(3),s.zeros(3,1),s.Integer(25)),
              (s.zeros(3),s.Matrix([1,0,0]),s.Integer(25)),
              (s.zeros(3),s.zeros(3,1),s.Integer(-1))]
    for GG,bb,rr in cases:
        assert unified_predicate(GG,bb,rr)==branch_predicate(GG,bb,rr)
    tests.append('unified_predicate_agrees_on_all_rank_strata_and_controls')

    # Positive exact algebraic example with repeated references U=I. It is
    # deliberately NOT claimed to be a MUB6 4+1 example: it tests reconstruction
    # and sufficiency without presupposing existence of the research target.
    z=(s.sqrt(3)+s.I)/2
    rawF=s.Matrix(6,6,lambda r,j:canon(z**(2*r*j)))
    raww=s.Matrix([canon(z**(r*r)) for r in range(6)])
    w=raww/s.sqrt(6)
    V=rawF[:,0:4]/s.sqrt(6)
    phases=[canon(s.sqrt(6)*(V[:,j].adjoint()*w)[0]) for j in range(4)]
    V=clean(V*s.diag(*phases))
    zero(V.adjoint()*V-s.eye(4))
    zero(V.adjoint()*w-s.ones(4,1)/s.sqrt(6))
    assert all(canon(abs(w[j])**2-s.Rational(1,6))==0 for j in range(6))
    data=circle_data(s.eye(6),V)
    Pi,h,J,rho=[data[k] for k in ('Pi','h','J','rho')]
    zero(Pi*Pi-Pi);zero(J*J-J);zero(s.trace(J)-1)
    zero(V.adjoint()*h-s.ones(4,1)/s.sqrt(6));zero(h[0]-1/s.sqrt(6))
    zero(J*h);zero(h.adjoint()*h+s.Matrix([[rho-1]]))
    y=clean(w-h);zero(J*y-y);zero((y.adjoint()*y)[0]-rho)
    for P,bj in zip(data['measurements'],data['b']):
        zero(2*s.re((h.adjoint()*P*y)[0])-bj)
    zero(data['G']**3-data['t']*data['G']**2+data['e']*data['G'])
    assert branch_predicate(data['G'],data['b'],rho)
    assert unified_predicate(data['G'],data['b'],rho,physical_flat_quartet=True)
    recovered = False
    for j in range(9):
        for k in range(j+1,9):
            G,b=data['G'],data['b']
            determinant=canon(G[j,j]*G[k,k]-G[j,k]**2)
            if determinant==0:
                continue
            qj=clean(J*data['measurements'][j]*h)
            qk=clean(J*data['measurements'][k]*h)
            yr=clean(2*(qj*(G[k,k]*b[j]-G[j,k]*b[k])
                        +qk*(G[j,j]*b[k]-G[j,k]*b[j]))/determinant)
            zero((yr-y).applyfunc(s.radsimp))
            recovered=True
            break
        if recovered:
            break
    assert recovered
    tests.append('exact_positive_circle_reconstruction_and_finite_recovery_with_repeated_references')

    # An exact physical carrier/quartet fixture in the current strict section.
    # This excludes only the supplied aligned phases, NOT every phase gauge.
    N=[[0,0,0,0,0,0],[0,3,2,5,1,4],[0,5,4,3,1,2],
       [0,2,4,0,4,2],[0,3,0,3,3,0],[0,0,2,2,4,4]]
    L=[[0,0,0,0,0,0],[1,3,5,7,9,11],[1,11,9,7,5,3],
       [4,8,0,4,8,0],[9,3,9,3,9,3],[4,0,8,4,0,8]]
    H=s.Matrix(6,6,lambda i,j:canon(z**(2*N[i][j])))
    K=s.Matrix(6,6,lambda i,j:canon(z**L[i][j]))
    U=H/s.sqrt(6);V=K[:,0:4]/s.sqrt(6)
    zero(U.adjoint()*U-s.eye(6));zero(V.adjoint()*V-s.eye(4))
    for value in V:
        zero(value*s.conjugate(value)-s.Rational(1,6))
    for value in clean(U.adjoint()*V):
        zero(value*s.conjugate(value)-s.Rational(1,6))
    actual=circle_data(U,V)
    # G is positive semidefinite with rank<=2 by construction. Thus e!=0
    # proves rank2 without any floating-point sign inference.
    assert actual['e'] != 0
    assert actual['rank2_range_equation'] != 0 or actual['rank2_circle_equation'] != 0
    assert not unified_predicate(actual['G'],actual['b'],actual['rho'],physical_flat_quartet=True)
    tests.append('exact_strict_physical_quartet_fixed_gauge_exclusion')
    return {'status':'PASS','arithmetic':'exact SymPy algebraic arithmetic',
            'tests':tests,'positive_example_scope':'U=I: repeated reference basis; NOT a physical MUB6 4+1 configuration',
            'anchor_elimination_scope':'Existing overlap-aligned quartet gauge; four quartet column phases remain part of input',
            'seed_only_restriction_proved':False,
            'positive_example_invariants':{k:str(data[k]) for k in ('rho','t','e','B','C','D')},
            'strict_fixed_gauge_invariants':{k:str(actual[k]) for k in ('rho','t','e','rank2_range_equation','rank2_circle_equation')}}


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    report=verify()
    if args.output:
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))


if __name__=='__main__':
    main()
