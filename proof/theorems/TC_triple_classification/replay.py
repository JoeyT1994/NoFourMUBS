#!/usr/bin/env python3
"""Replay two local triple-classification patches; never claim atlas coverage."""
import argparse
import hashlib
import json
from pathlib import Path

import sympy as sp
from flint import acb, arb, arb_mat, ctx

from local import H_POS, contraction, norm_inf, residual_jacobian

HERE = Path(__file__).resolve().parent
PRODUCT_ROWS = [66,73,82,87,83,93,68,72,89,94,74,67,81,88,95,91,86,71,76,85,92,84,79,90,75,78,80,77,69,70,62,61,60,65,63,6,10,39,34,21,25,22,53,56,54,48,33,47,17,23,38,31,46,43,18]
BICIRC_ROWS = [82,89,95,66,75,67,81,94,69,74,88,68,93,73,83,87,72,78,84,90,70,60,61,62,85,80,77,91,76,92,71,63,86,64,79,33,39,36,34,47,54,20,51,48,23,49,50,0,1,22,57,46,19]


def exact_anchors():
    """Exact algebraic existence, separate from interval uniqueness."""
    i, w = sp.I, (-1+sp.I*sp.sqrt(3))/2
    clean = lambda m: m.applyfunc(lambda z: sp.simplify(sp.expand(z)))
    f2 = sp.Matrix([[1,1],[1,-1]])
    f3 = clean(sp.Matrix([[w**(r*c) for c in range(3)] for r in range(3)]))
    h = sp.kronecker_product(f2,f3)
    k = sp.kronecker_product(sp.diag(1,i)*f2,sp.diag(1,w,w)*f3)
    circ = lambda a,b,c: sp.Matrix([[a,b,c],[c,a,b],[b,c,a]])
    a,b = circ(1,i,i),circ(1,1,-1)
    hb = a.row_join(b).col_join(b.H.row_join(-a.H))
    lam = [sp.expand(1+i*w**q+i*w**(2*q)) for q in range(3)]
    mu = [sp.expand(1+w**q-w**(2*q)) for q in range(3)]
    z = [sp.simplify(i*sp.conjugate(x*y)/sp.sqrt(sp.expand(x*sp.conjugate(x)*y*sp.conjugate(y))))
         for x,y in zip(lam,mu)]
    kb = f3.row_join(f3).col_join((f3*sp.diag(*z)).row_join(-f3*sp.diag(*z)))
    row, col = sp.diag(*[sp.conjugate(hb[r,0]) for r in range(6)]), sp.diag(*[sp.conjugate(hb[0,c]) for c in range(6)])
    hb,kb = clean(row*hb*col),clean(row*kb)
    pairs = {'product':(clean(h),clean(k)), 'bicirculant':(hb,kb)}
    for name,(h,k) in pairs.items():
        for matrix in (h,k):
            if any(sp.simplify(x*sp.conjugate(x)-1) != 0 for x in matrix):
                raise ValueError(name+': nonflat anchor')
            if clean(matrix.H*matrix-6*sp.eye(6)) != sp.zeros(6):
                raise ValueError(name+': nonorthogonal anchor')
        s = clean(h.H*k)
        if any(sp.simplify(x*sp.conjugate(x)-6) != 0 for x in s):
            raise ValueError(name+': anchor not unbiased')
    return pairs


def to_acb(z):
    """Evaluate these exact radical expressions in Arb without decimal conversion."""
    if z == sp.I:
        return acb(0,1)
    if z.is_Rational:
        return acb(arb(int(z.p))/int(z.q))
    if z.is_Add:
        return sum((to_acb(x) for x in z.args),acb(0))
    if z.is_Mul:
        out=acb(1)
        for x in z.args:
            out *= to_acb(x)
        return out
    if z.is_Pow:
        base,power=z.args
        if power.is_Integer:
            return to_acb(base)**int(power)
        if base.is_Rational and base > 0 and power.is_Rational and power.q == 2:
            return acb((arb(int(base.p))/int(base.q)).sqrt()**int(power.p))
    raise ValueError('unsupported exact algebraic expression: '+str(z))


def family_patch(rho):
    """Uniform contraction for (Re F, Im F, beta-2gamma, -gamma+eps-phi).

    Parameters are increments at (pi/2,pi/2,0,pi). The last two outputs
    are H[1,2] and H[1,5] phase increments after common row gauging.
    """
    if not rho.is_finite() or not rho > 0:
        raise ValueError('family radius must be positive and finite')
    a = arb_mat([[-1,-1,0,0],[-1,1,2,0],[1,-2,0,0],[0,-1,1,-1]])
    # Exact rational inverse encoded as integer numerators / 6.
    numer = [[-4,0,2,0],[-2,0,-2,0],[-1,3,2,0],[1,3,4,-6]]
    b = arb_mat([[arb(x)/6 for x in row] for row in numer])
    eye = arb_mat([[int(r == c) for c in range(4)] for r in range(4)])
    q0 = norm_inf(eye-b*a)
    parameter_radius = 4*rho
    lipschitz = max((12*(abs(b[r,0])+abs(b[r,1]))).upper() for r in range(4))
    q = q0 + lipschitz*parameter_radius
    displacement = max((abs(b[r,2])+abs(b[r,3])).upper() for r in range(4))*rho
    if not q < 1 or not displacement+q*parameter_radius < parameter_radius:
        raise ValueError('family existence not certified')
    # |lambda0|, |mu0| >= 1. Changes <= 2*parameter_radius < 1/2.
    if not 2*parameter_radius < arb(1)/2:
        raise ValueError('spectral phase chart not certified')
    # Each gauged H phase <=4p; each gauged K phase <=9p, p=4rho.
    if not 9*parameter_radius < 40*rho:
        raise ValueError('family not enclosed in transverse box')
    return dict(status='CERTIFIED', input_radius=str(rho), parameter_radius=str(parameter_radius),
                q_upper=str(q), self_map_bound=str(displacement+q*parameter_radius),
                family_phase_bound=str(9*parameter_radius), transverse_radius=str(40*rho))


def run():
    ctx.prec = 160
    exact = exact_anchors()
    result = {'status':'CERTIFIED', 'scope':'two local patches only; NOT an atlas classification',
              'precision_bits':ctx.prec, 'exact_anchor_checks':list(exact)}
    for name,rows,free,radius in (
            ('product',PRODUCT_ROWS,[],arb(1)/8192),
            ('bicirculant',BICIRC_ROWS,[H_POS.index((1,2)),H_POS.index((1,5))],arb(40)/1048576)):
        h,k = ([[to_acb(matrix[r,c]) for c in range(6)] for r in range(6)]
               for matrix in exact[name])
        f,j = residual_jacobian(h,k)
        if any(not x.contains(0) for x in f):
            raise ValueError('Arb anchor disagrees with exact residual check')
        result[name] = contraction(j,free,radius,rows)
    result['bicirculant']['family'] = family_patch(arb(1)/1048576)
    result['source_sha256'] = {name:hashlib.sha256((HERE/name).read_bytes()).hexdigest()
                               for name in ('local.py','replay.py')}
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    result = run()
    text = json.dumps(result,indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    print(text,end='')
