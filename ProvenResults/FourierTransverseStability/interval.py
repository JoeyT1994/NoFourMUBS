"""Directed mpmath/libmp interval arithmetic; binary64 inputs mean exact dyadics.

No numerical midpoint, inverse, eigenvalue or residual alone can accept a cell.
The explicit conjugation avoids mpmath.iv.mpc.conjugate's known API issue.
"""
from fractions import Fraction as Q
from mpmath import iv
import numpy as np, math, time
iv.prec=160

def v(x=0):
 if isinstance(x,np.generic):x=x.item()
 if isinstance(x,Q):return iv.mpf(x.numerator)/x.denominator
 return iv.mpf(x)
def c(x=0,y=None):
 if y is None:
  if hasattr(x,'imag'):return iv.mpc(v(x.real),v(x.imag))
  return iv.mpc(v(x),0)
 return iv.mpc(v(x),v(y))
def cj(z):return iv.mpc(z.real,-z.imag)
def cis(x):return iv.mpc(iv.cos(x),iv.sin(x))
def re(z):return z.real
def im(z):return z.imag
def a2(z):return z.real**2+z.imag**2
def mag(z):
 if isinstance(z,iv.mpc):return iv.sqrt(a2(z)).b
 return abs(v(z)).b

def box(rad):return iv.mpf([-1,1])*v(rad)
def span(lo,hi):return iv.mpf([v(lo).a,v(hi).b])
def mid(x):
 if isinstance(x,iv.mpc):return complex(mid(x.real),mid(x.imag))
 return (float(x.a)+float(x.b))/2

def ceild(x,den=2**30):
 # Float proposal, proved upper bound required.
 n=math.ceil(float(mag(x))*den)+1
 while not v(Q(n,den)) >= mag(x):n+=1
 return Q(n,den)

def mat(A,complex_=False):return np.array([[c(z) if complex_ else v(z) for z in r] for r in A],dtype=object)
def zeros(m,n,complex_=False):return mat(np.zeros((m,n),dtype=int),complex_)
def eye(n,complex_=False):return mat(np.eye(n,dtype=int),complex_)
def transcon(A):return np.array([[cj(z) for z in r] for r in A.T],dtype=object)
def am(A):return np.array([[mag(z) for z in row] for row in A],dtype=object)
def fm(A):return np.array([[mid(z) for z in row] for row in A])
def rn(A):return max(sum(row) for row in am(A))
def mm(A,B):return A@B


def upper_points(A):
    return np.array([[v(z).b for z in row] for row in A], dtype=object)

def as_rational(x):
    """An exact dyadic endpoint, not a decimal or a rounded summary."""
    t = v(x)
    if t.a != t.b:
        raise ValueError("A point interval is required")
    sign, mantissa, exponent, bitcount = t._mpi_[0]
    if bitcount < 0:
        raise ValueError("Nonfinite interval")
    value = Q(int(mantissa)) * (Q(2) ** int(exponent))
    return -value if sign else value

def bounds_text(x):
    t = v(x)
    return [str(as_rational(t.a)), str(as_rational(t.b))]

def require(predicate, message):
    if not bool(predicate):
        raise ValueError(message)
