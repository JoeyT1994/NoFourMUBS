"""Exact structural checks and independent high-precision strip controls.

The exact generator is strip_scalar_exact.py. Point comparisons below are
controls only; they are never used as a whole-box or global certificate.
"""
import json,hashlib,time,sys
import mpmath as mp
from flint import fmpq_mpoly
from strip_scalar_exact import HERE,CTX,F,Y,J
from strip_average import two_strips,coefficients,primitive
from verify_critical_square_sums import universal_moments

def run():
    start=time.monotonic();mp.mp.dps=120
    raw=json.loads((HERE/'strip_scalar_exact.json').read_text());assert raw['complete']
    values={k:F(fmpq_mpoly(v['numerator'],CTX),fmpq_mpoly(v['denominator'],CTX),False) for k,v in raw['coefficients'].items()}
    assert not values['1'].n and not values['7'].n
    assert not (2*Y*values['2']+J*values['3']).n
    assert not (2*Y*values['4']+J*values['5']).n
    def flip(poly):return CTX.from_dict({e:c*(-1)**e[3] for e,c in poly.terms()})
    for key in ['0','6']:assert values[key].n==flip(values[key].n) and values[key].d==flip(values[key].d)
    assert values['5'].n==-flip(values['3'].n) and values['5'].d==flip(values['3'].d)
    moment_count=universal_moments();assert moment_count==43
    print('PASS exact moment and radical-symmetry checks',flush=True)
    def terms(poly):return [(e,mp.mpf(int(c.p))/int(c.q)) for e,c in poly.terms()]
    numerators={k:terms(values[k].n) for k in ['0','3','5','6']}
    denominator=terms(values['0'].d)
    assert all(values[k].d==values['0'].d for k in numerators)
    def evaluate(terms,powers):return mp.fsum(c*mp.fprod(powers[j][e[j]] for j in range(4)) for e,c in terms)
    co=coefficients();controls=[]
    rows=json.loads((HERE/'unresolved_admissible_probe_seeds.json').read_text())['rows'][:6]
    for row in rows:
        path=row['path'];seeds=[mp.exp(mp.j*mp.pi*(2*int(path[j::4],2)+1-64)/64) for j in range(4)]
        a,b,c,d=seeds;s,t,r,X,Yv,Z,g,eta,chi,R=primitive(*seeds)
        X,Yv,Z=[mp.re(x) for x in [X,Yv,Z]];p=X+Yv+Z;Jv=mp.re(g-27+3*p);W=X*Yv+X*Z+Yv*Z-X*Yv*Z
        tau=2*mp.im(s*r*t.conjugate());hp=mp.sqrt(mp.re(R))
        sm,tm,rm=-s,-t,-r
        pm=rm*sm*sm+rm.conjugate()*tm*tm+(3-Z)*sm*tm
        pi=sm*tm-(1+a*c+b*d)
        cm=W-(p-9)*(p-18)-(p-15)*Jv;em=9-p-Jv
        hm_complex=2*pm.conjugate()*pi-(cm+2*(9-Z)*em)
        hm=mp.im(hm_complex);Rminus=4*(27-3*p-Jv)**2*em-cm*cm
        assert abs(mp.re(hm_complex))<mp.mpf('1e-100') and abs(hm*hm-Rminus)<mp.mpf('1e-100')
        powers=[[v**k for k in range(40)] for v in [X,Yv,Z,Jv]]
        den=evaluate(denominator,powers);assert abs(den)>mp.mpf('1e-100')
        cc={k:evaluate(n,powers)/den for k,n in numerators.items()}
        horizontal,vertical,R=two_strips(*seeds,co);errors=[]
        for sign in [1,-1]:
            predicted=cc['0']-tau*(cc['3']*sign*hp+cc['5']*hm)/(2*Yv)-cc['6']*sign*hp*hm
            reference=horizontal.a+sign*hp*horizontal.b
            error=abs(predicted-reference);assert error<mp.mpf('1e-70'),(path,sign,mp.nstr(error))
            errors.append(mp.nstr(error,5))
        controls.append(dict(path=path,errors=errors));print('PASS',path,errors,flush=True)
    files=['strip_scalar_exact.py','strip_scalar_exact.json','strip_scalar_symmetric.py','strip_scalar_symmetric.json','strip_average.py','verify_strip_scalar.py']
    result=dict(status='PASS_STRUCTURAL_CHECKS_AND_NUMERICAL_CONTROLS',universal_moments_exact=43,
        radical_coefficient_relations_exact=True,controls=controls,global_confinement_proved=False,
        scope='Exact moment identities and radical symmetries; twelve independent high-precision point comparisons, not interval exclusions',
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in files},seconds=time.monotonic()-start)
    (HERE/'strip_scalar_checks.json').write_text(json.dumps(result,indent=2)+'\n')

if __name__=='__main__':run()
