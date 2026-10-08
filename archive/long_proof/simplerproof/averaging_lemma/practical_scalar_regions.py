"""Macroscopic scalar consequences of M<5.

For EVERY corner, |J|<21/8. After choosing the larger complementary R,
0<p<5 implies J>=0 and 12 J p(9-p)(5-p)<25. These are necessary conditions,
not the final Fourier-confinement theorem.
"""
from fractions import Fraction as F
import math,json,hashlib
from pathlib import Path
import sympy as sp
from positive_scalar_rule import coefficients
from complementary_scalar_rule import verify_identity
HERE=Path(__file__).resolve().parent

def certificate():
    assert verify_identity();p,j,t=sp.symbols('p j t')
    Q=sum(c*p**a*j**b for (a,b),c in coefficients())
    target=Q.subs({p:9-t})
    grouped=150*t*t-5*j*(t+6)**2+2*j*j*(5-4*j*(j*j+36*(9-t)))-2*j**3*t**3*(t-4)-72*j*(9-t)*t**3*(t-4)
    assert sp.expand(target-grouped)==0
    assert sp.expand(27-t**3*(4-t)-(t-3)**2*(t*t+2*t+3))==0
    # Exact six Bernstein coefficients of Q(p,21/8) on each of four
    # intervals partitioning [5,51/8]. Each entry is rounded UP to an integer.
    univariate=sp.Poly(Q.subs(j,sp.Rational(21,8)),p)
    power={a[0]:F(int(c.p),int(c.q)) for a,c in univariate.terms()}
    rows=[]
    for k in range(4):
        lo=F(5)+F(11,32)*k;hi=lo+F(11,32);width=hi-lo
        shifted=[sum(c*math.comb(a,i)*lo**(a-i)*width**i for a,c in power.items() if a>=i) for i in range(6)]
        controls=[sum(shifted[i]*F(math.comb(b,i),math.comb(5,i)) for i in range(b+1)) for b in range(6)]
        integer_upper=[math.ceil(v) for v in controls]
        assert max(integer_upper)<0
        # Independent exact reconstruction of the polynomial in the
        # Bernstein basis, not a check at sampled points.
        u=sp.symbols('u')
        reconstructed=sum(sp.Rational(v.numerator,v.denominator)*math.comb(5,i)*u**i*(1-u)**(5-i) for i,v in enumerate(controls))
        assert sp.expand(reconstructed-Q.subs({p:sp.Rational(lo.numerator,lo.denominator)+sp.Rational(width.numerator,width.denominator)*u,j:sp.Rational(21,8)}))==0
        rows.append(dict(interval=[str(lo),str(hi)],exact_controls=[str(v) for v in controls],integer_upper=integer_upper))
    # On [1,4], p(9-p)(5-p)>=20 by a factorization with nonnegative factors.
    # f(p)-20=(4-p)(-p^2+10p-5), and the second factor is >=4 on [1,4].
    f=p*(9-p)*(5-p)
    assert sp.expand(f-20-(4-p)*(-p*p+10*p-5))==0
    assert sp.expand(-p*p+10*p-5-4-(p-1)*(9-p))==0
    return dict(status='PASS_EXACT_SCALAR_REGION_CERTIFICATE',global_confinement_proved=False,
        cutoff=5,all_corner_absolute_J_bound='21/8',oriented_p_interval=['1','4'],oriented_J_bound='5/48',
        exact_identity=True,small_p_factorizations=True,univariate_Bernstein_rows=rows,
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in ['practical_scalar_regions.py','positive_scalar_rule.py','complementary_scalar_rule.py']})

def f_value(p):return p*(9-p)*(5-p)

if __name__=='__main__':
    out=certificate();(HERE/'practical_scalar_regions.json').write_text(json.dumps(out,indent=2)+'\n')
    for row in out['univariate_Bernstein_rows']:print(row['interval'],row['integer_upper'])
