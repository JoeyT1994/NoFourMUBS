"""Exact 16-number certificate for 2|J|<=p whenever M<5."""
from pathlib import Path
from fractions import Fraction as F
import sympy as sp,math,json,hashlib
from positive_scalar_rule import coefficients
HERE=Path(__file__).resolve().parent

def run():
    p,j,t,u=sp.symbols('p j t u')
    Q=sum(c*p**a*j**b for (a,b),c in coefficients())
    q=sp.Poly(Q.subs(j,p/2),p);power={a[0]:F(int(c.p),int(c.q)) for a,c in q.terms()}
    assert sp.expand((9-t)**2-t**3*(4-t)-(t-3)**2*(t*t+2*t+4)-(45-12*t))==0
    assert F(27,16)*F(4,27)==F(1,4)
    rows=[]
    for lo,hi in [(F(27,16),F(21,4)),(F(21,4),F(6))]:
        width=hi-lo
        shifted=[sum(c*math.comb(a,i)*lo**(a-i)*width**i for a,c in power.items() if a>=i) for i in range(8)]
        bs=[sum(shifted[i]*F(math.comb(k,i),math.comb(7,i)) for i in range(k+1)) for k in range(8)]
        upper=list(map(math.ceil,bs));assert max(upper)<0
        recovered=sum(sp.Rational(v.numerator,v.denominator)*math.comb(7,k)*u**k*(1-u)**(7-k) for k,v in enumerate(bs))
        assert sp.expand(recovered-q.as_expr().subs(p,sp.Rational(lo.numerator,lo.denominator)+sp.Rational(width.numerator,width.denominator)*u))==0
        rows.append(dict(interval=[str(lo),str(hi)],exact_coefficients=list(map(str,bs)),integer_upper=upper))
    result=dict(status='PASS_EXACT_HALF_P_CERTIFICATE',cutoff=5,conclusion='Every corner satisfies 2*abs(J)<=p; strict when p>0',global_confinement_proved=False,
        critical_polynomial_factorization=True,bernstein_degree=7,rows=rows,
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in ['half_p_certificate.py','positive_scalar_rule.py','complementary_scalar_rule.py','HALF_P_BOUND.tex']})
    (HERE/'half_p_certificate.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))

if __name__=='__main__':run()
