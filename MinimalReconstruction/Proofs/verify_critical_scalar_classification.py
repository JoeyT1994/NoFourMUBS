"""Exact Bernstein/Sturm classification of the nonzero-J scalar candidates."""
import functools,json,time
from pathlib import Path
import sympy as sp

HERE=Path(__file__).resolve().parent


def run():
    start=time.process_time();k,K,T=sp.symbols('c d T')
    data=json.loads((HERE/'critical_quartic.json').read_text())
    Q=sp.sympify(data['factors'][0][0].replace('^','**'))
    assert sp.degree(Q,K)==4
    h=1+k*k;q=4/h;J=8*k/h**2;p=9-q;W=q*(q*q-8*q+18)/2
    km=J*J/4;ko=4*(9*k*k+1)/h**3
    kp=(27*k**6+9*k**4+17*k*k+3+8*k*h)/h**3
    kn=(27*k**6+9*k**4+17*k*k+3-8*k*h)/h**3
    f=T**3-p*T*T+(W+K)*T-K
    assert sp.cancel(sp.discriminant(f,T)+4*(K-ko)*(K-kp)*(K-kn))==0
    assert sp.cancel(kp-ko-(k+1)*(3*k-1)**3/h**2)==0
    assert sp.cancel(kn-ko-(k-1)*(3*k+1)**3/h**2)==0
    assert sp.cancel(kp-kn-16*k/h**2)==0
    kap=3*k**3+k*k+k-1;other=3*k**3-k*k+k+1
    assert sp.cancel(ko-km-4*(3*k*k+1)**2/h**4)==0
    assert sp.cancel(kp-km-(3*k*k+2*k+3)*other**2/h**4)==0
    assert sp.cancel(kn-km-(3*k*k-2*k+3)*kap**2/h**4)==0
    assert sp.Poly(kap,k).count_roots(0,sp.oo)==1
    assert sp.Poly(kap,k).is_irreducible
    assert sp.Poly(other,k).count_roots(0,sp.oo)==0
    # Open interval root count: Sympy includes its finite endpoints.
    def roots(poly,lo,hi):
        pp=sp.Poly(poly,k);n=pp.count_roots(lo,hi)
        if pp.eval(lo)==0:n-=1
        if hi!=sp.oo and pp.eval(hi)==0:n-=1
        return n
    def without_kappa(poly):
        pp=sp.Poly(poly,k);kk=sp.Poly(kap,k)
        while not pp.is_zero and pp.rem(kk).is_zero:pp=pp.exquo(kk)
        return pp.as_expr()
    cases=[('low01',km,kn,0,1,sp.Rational(1,2),True),
           ('low1inf',km,ko,1,sp.oo,sp.Integer(2),False),
           ('high013',kp,ko,0,sp.Rational(1,3),sp.Rational(1,6),False),
           ('high131',ko,kp,sp.Rational(1,3),1,sp.Rational(1,2),False),
           ('high1inf',kn,kp,1,sp.oo,sp.Integer(2),False)]
    co=sp.Poly(Q,K).all_coeffs()[::-1];records=[]
    for name,left,right,lo,hi,sample,allow_kappa in cases:
        power=[sp.cancel(sum(co[n]*sp.binomial(n,j)*left**(n-j)*(right-left)**j
                             for n in range(j,5))) for j in range(5)]
        bern=[sp.factor(sum(power[j]*sp.binomial(i,j)/sp.binomial(4,j)
                            for j in range(i+1))) for i in range(5)]
        nums=[]
        for value in bern:
            num,den=sp.fraction(value);nums.append(num)
            assert roots(den,lo,hi)==0
            assert value.subs(k,sample)<0
            for factor,multiplicity in sp.factor_list(num,k)[1]:
                if multiplicity%2:assert roots(factor,lo,hi)==0
        # Every coefficient is nonpositive. In the interior of the K
        # interval their weighted sum is strictly negative unless all vanish.
        gcd=functools.reduce(sp.gcd,nums)
        assert roots(without_kappa(gcd) if allow_kappa else gcd,lo,hi)==0
        for endpoint in (nums[0],nums[-1]):
            assert roots(without_kappa(endpoint) if allow_kappa else endpoint,lo,hi)==0
        records.append(dict(region=name,bernstein_coefficients=5,
                            sign='nonpositive; common/boundary zeros only as stated'))
    # At kappa the only allowed low interval has collapsed to km=kn.
    assert sp.rem(sp.together(kn-km).as_numer_denom()[0],kap,k)==0
    # k=1/3: the high interval collapses to 729/125; low01 already
    # gives strict negativity on its separate low interval.
    assert kp.subs(k,sp.Rational(1,3))==ko.subs(k,sp.Rational(1,3))==sp.Rational(729,125)
    assert Q.subs({k:sp.Rational(1,3),K:sp.Rational(729,125)})==0
    assert sp.expand(Q.subs(k,1)-2**30*(K-21)*(K-5)**2)==0
    assert [v.subs(k,1) for v in (km,kn,ko,kp)]==[1,5,5,9]
    # Identify the two remaining numerator factors with the products
    # of actual moment denominators L_i=g+(9-X_i)z.
    pole_records=[]
    for sign,idx,scale in ((1,4,-16),(-1,3,16)):
        z=-2*(1+sign*k)/h;g=3*q+sign*J;v=g+9*z
        product=v**3-v*v*z*p+v*z*z*(W+K)-z**3*K
        stored=sp.sympify(data['factors'][idx][0].replace('^','**'))
        assert sp.cancel(product-scale*stored/h**7)==0
        alpha=9+g/z
        for label,bound in [('Cauchy',km),('K0',ko),('Kplus',kp),('Kminus',kn)]:
            num,den=sp.fraction(sp.factor(f.subs({T:alpha,K:bound})))
            for kval,expected in ((sp.Rational(1,3),sp.Rational(729,125)),(sp.Integer(1),sp.Integer(5))):
                if sign==-1 and kval==1:continue # z=0, all L_i=g>0
                if num.subs(k,kval)==0:assert bound.subs(k,kval)==expected
            if sp.rem(num,kap,k)==0:
                assert sp.rem(sp.together(bound-km).as_numer_denom()[0],kap,k)==0
            # Every positive numerator zero is 1/3, 1, or kappa.
            num=without_kappa(num)
            for linear in (k-1,3*k-1):
                while sp.rem(num,linear,k)==0:num=sp.div(num,linear,k)[0]
            assert roots(num,0,sp.oo)==0
            pole_records.append(dict(sign=sign,bound=label))
    return dict(status='PASS_EXACT_CRITICAL_SCALAR_CLASSIFICATION',
                bernstein_regions=records,pole_substitutions=len(pole_records),
                candidates=['k=1/3, K=729/125','k=1, K=5',
                            '3k^3+k^2+k-1=0, k>0, K=J^2/4'],
                cpu_seconds=time.process_time()-start,
                scope='Exact scalar classification; physical application uses the separately proved moment and pole identities.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
