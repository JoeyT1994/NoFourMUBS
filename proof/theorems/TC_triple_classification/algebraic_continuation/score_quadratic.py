"""Retain the direction of linear phase errors in an aligned Fourier score."""
import math
from flint import arb,arb_mat
import unitary_score as U
from intervals import quadratic_lower


def upper(phases,direction,groups):
    """Bound Gamma_F(exp(i*(phases+direction*x))) for ||x_group||<=1.

    The alignment and dual multipliers are numerical proposals. Every
    accepted quadratic upper bound is checked by the inherited Arb dual.
    Failure to verify a dual returns None.
    """
    n=direction.ncols()
    if (len(phases)!=6 or any(len(row)!=6 for row in phases) or
        direction.nrows()!=36 or n<1 or not groups or any(not group for group in groups) or
        sorted(i for group in groups for i in group)!=list(range(n))):
        raise ValueError('invalid phase map or variable partition')
    if any(not x.is_finite() for x in direction.entries()) or any(
            not x.is_finite() for row in phases for x in row):
        raise ArithmeticError('nonfinite phase map')
    aa,bb=U.alignment(phases);gradient=arb_mat(36,1);constant=arb(0)
    for i,k in U.PAIRS:
        for j,l in U.PAIRS:
            value=phases[i][j]+phases[k][l]-phases[i][l]-phases[k][j]
            value-=arb.pi()*(aa[i]-aa[k])*(bb[j]-bb[l])/3
            value-=2*round(float(value.mid())/(2*math.pi))*arb.pi()
            constant+=value*value/225
            for row,col,sign in ((i,j,1),(k,l,1),(i,l,-1),(k,j,-1)):
                gradient[6*row+col,0]+=sign*value/225
    q=arb(8)/25*direction.transpose()*U.horizontal_projection()*direction
    g=2*direction.transpose()*gradient
    lower=quadratic_lower(-q,-g,groups)
    if lower is None:return None
    squared=U.up(constant-lower[0])
    if not squared>=0:raise ArithmeticError('negative squared score enclosure')
    return U.up(squared.sqrt())
