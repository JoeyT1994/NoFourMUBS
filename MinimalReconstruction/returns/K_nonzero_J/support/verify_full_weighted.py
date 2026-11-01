"""Independently regenerate the whole-strip weighted D identity and boundaries.

D is the phase-corner invariant perm(E)det(E)^2/prod(E) minus its star.
The weight is the sum of x_j*y_j over the selected three columns.
The expansion below regenerates its six whole-strip moment monomials
without using the differentiation argument or the prior square-sum data.
"""
from collections import defaultdict
from fractions import Fraction
from itertools import permutations
import json
from pathlib import Path


def _add(a,b,scale=1):
    ans=dict(a)
    for e,c in b.items():
        ans[e]=ans.get(e,0)+scale*c
        if not ans[e]:del ans[e]
    return ans


def _mul(a,b):
    ans=defaultdict(int)
    for e,c in a.items():
        for f,d in b.items():
            ans[tuple(x+y for x,y in zip(e,f))]+=c*d
    return {e:c for e,c in ans.items() if c}


def weighted_coefficients():
    one={(0,0,0,0):1}
    a,b,c,d=[{tuple(int(i==j) for j in range(4)):1} for i in range(4)]
    E=[[one,one,one],[one,a,b],[one,c,d]]
    det={};per={}
    for p in permutations(range(3)):
        term=_mul(_mul(E[0][p[0]],E[1][p[1]]),E[2][p[2]])
        per=_add(per,term)
        inv=sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
        det=_add(det,term,(-1)**inv)
    t={tuple(i-1 for i in e):v for e,v in _mul(per,_mul(det,det)).items()}
    D=_add(t,{tuple(-i for i in e):v for e,v in t.items()},-1)
    zeros={(1,0),(-1,0),(0,1),(0,-1),(1,-1),(-1,1)}
    ans=defaultdict(Fraction)
    for (a,b,c,d),co in D.items():
        points=[(-a-b,-c-d),(a,c),(b,d)]
        for j in range(3):
            shifted=points[:]
            shifted[j]=tuple(v+1 for v in shifted[j])
            if any(t in zeros for t in shifted):continue
            value=Fraction(co,6)*6**shifted.count((0,0))
            key=tuple(sorted(t for t in shifted if t!=(0,0)))
            ans[key]+=value
    ans={p:c for p,c in ans.items() if c}
    expected={
        ((-1,2),(2,-1)):6,
        ((-1,-1),(-1,2),(3,0)):1,
        ((-1,-1),(0,3),(2,-1)):1,
        ((-2,1),(1,-2),(2,2)):-1,
        ((-2,1),(1,1),(2,-1)):-1,
        ((-1,2),(1,-2),(1,1)):-1,
    }
    assert ans==expected,(ans,expected)
    return ans



def nine_moments(s,S,t,T,r,q,u,v,w,U,V,W,pi,PI,up,vp,UP,VP):
    """Generic Newton builder; exact function independently tested on Laurent phases."""
    A=s*t-pi;Abar=S*T-PI
    return {(1,1):A,(-1,-1):Abar,
            (2,-1):s*q-up,(-2,1):S*r-UP,
            (-1,2):t*r-vp,(1,-2):T*q-VP,
            (3,0):s**3-3*s*u*S+3*u,
            (0,3):t**3-3*t*v*T+3*v,
            (2,2):A*A-2*u*v*Abar}


def side_low(s,S,t,T,r,q,X,Y,Z,g,z):
    # The six lambda numerators and their formal stars.
    P0=r*s*s+q*t*t+s*t*(3-Z)
    P1=t*S*S+r*r*T+r*S*(3-Y)
    P2=s*T*T+q*q*S+q*T*(3-X)
    B0=q*S*S+r*T*T+S*T*(3-Z)
    B1=T*s*s+q*q*t+q*s*(3-Y)
    B2=S*t*t+r*r*s+r*t*(3-X)
    L0=g+(9-Z)*z;L1=g+(9-Y)*z;L2=g+(9-X)*z
    la,lb,lc=P0/L0,P1/L1,P2/L2
    ba,bb,bc=B0/L0,B1/L1,B2/L2
    U,V=la*bb,la*bc
    return nine_moments(s,S,t,T,r,q,U,V,None,None,None,None,
                        la*z,ba*z,bb*z,bc*z,lb*z,lc*z)


def verify(outpath=None,integer_path=None):
    from exact_rational import F,CTX,common_sum
    r,Y0,k,_=[F(v) for v in CTX.gens()]
    h=1+k*k;p=9-4/h;J=8*k/h**2
    coeffs=weighted_coefficients()

    def sides(X,Y,Z,r,q):
        M=side_low(F(1),X,F(1),Y,r,q,X,Y,Z,
                   3*(9-p)+J,-2*(1+k)/h)
        N=side_low(F(-1),-X,F(-1),-Y,-r,-q,X,Y,Z,
                   3*(9-p)-J,-2*(1-k)/h)
        return {ij:M[ij]+N[ij] for ij in M}

    def weighted(M):
        terms=[]
        for powers,c in coeffs.items():
            term=F(int(c))
            for ij in powers:term=term*M[ij]
            terms.append(term)
        return common_sum(terms)

    cert={'type':'whole_strip_weighted_D_boundary_identities_v2',
          'coefficients':[{'moments':pts,'coefficient':int(v)} for pts,v in sorted(coeffs.items())],
          'boundaries':{}}
    specs=[
        ('K0',2/h,(9*k*k+1)/h,
         32*k*k*(3*k**4+2*k*k+3)/h**3),
        ('Kplus',(3*k*k+2*k+1)/h,(3*k*k-4*k+3)/h,
         -64*k*k*(3*k*k+1)**2/(h**4*(3*k*k+2*k+1))),
        ('Kminus',(3*k*k-2*k+1)/h,(3*k*k+4*k+3)/h,
         -64*k*k*(3*k*k+1)**2/(h**4*(3*k*k-2*k+1))),
    ]

    def record(name,actual,expected,modulus,description,denominator_target):
        # All inputs here are unreduced rational functions of the independent
        # variables. Only this final explicit polynomial quotient uses the
        # physical Gram relation. The integer DAG binds the original moment
        # expression to expected + modulus_numerator*quotient/error_denominator.
        error=actual-expected
        quotient=error.n/modulus.n
        assert error.n==quotient*modulus.n,name
        assert not (F(error.d)-denominator_target).n,name+" denominator"
        cert['boundaries'][name]={
            **description,'value':expected.record(),'raw_value':actual.record(),
            'modulus':str(modulus.n),'cleared_error_numerator':str(error.n),
            'cleared_error_denominator':str(error.d),'quotient':str(quotient),
            'remainder':'0','denominator_factorization_verified':True,
            'polynomial_statistics':{
                'error_numerator_terms':len(error.n),
                'error_numerator_degrees':list(map(int,error.n.degrees())),
                'error_denominator_terms':len(error.d),
                'quotient_terms':len(quotient),
                'quotient_degrees':list(map(int,quotient.degrees()))}}

    repeated_denominators={
        'K0':(3*k-1)**4*(3*k+1)**4*h**3*(3*k*k+1)**4/3**12,
        'Kplus':(3*k-1)**4*h**4*(3*k*k+2*k+1)**3*(3*k**3-k*k+k+1)**4/3**11,
        'Kminus':(3*k+1)**4*h**4*(3*k*k-2*k+1)**3*(3*k**3+k*k+k-1)**4/3**11}
    for name,X,Z,expected in specs:
        actual=weighted(sides(X,X,Z,r,J/X-r))
        modulus=r*r-(J/X)*r+Z
        record(name,actual,expected,modulus,{
            'X_equals_Y':X.record(),'Z':Z.record(),
            'r_modulus_R1':(J/X).record(),'r_modulus_R2':(-Z).record()},repeated_denominators[name])

    X=4*k*k/h**2;Y=Y0;Z=p-X-Y
    actual=weighted(sides(X,Y,Z,J/(2*Y),J/(2*X)))
    expected=-64*k*k*(1+k*k*Z)/(h*(3*k*k+1))
    modulus=h**2*Y**2-(9*k**4+10*k*k+5)*Y+4
    assert modulus.d==CTX.constant(1)
    den_target=-h**41*Y**5*(3*k*k+1)/(2**14*3**9)
    for x,power in [(X,2),(Y,2),(Z,3)]:
        for sign in [1,-1]:
            den_target=den_target*(3*(9-p)+sign*J-2*(9-x)*(1+sign*k)/h)**power
    record('Kmin',actual,expected,modulus,{'X':X.record(),'Z':Z.record()},den_target)
    cert['normalization']='s=t=1; formal conjugates S=X,T=Y; k>0; all six L nonzero'
    cert['positivity']='h>0; 3*k^2 +/- 2*k +1 >0; X,Y,Z>0 on actual nonzero-J strips'
    if outpath is not None:
        Path(outpath).write_text(json.dumps(cert,indent=2)+'\n')
    if integer_path is not None:
        emit_integer_certificate(cert,integer_path)
    return cert


def emit_integer_certificate(cert,path):
    """Bind original nine-moment expressions to the four polynomial quotients.

    Every emitted target is an integer polynomial identity after clearing
    the displayed rational denominators. It retains the original moment
    expression DAG, rather than certifying only already-zero remainders.
    """
    import sympy as sp
    from audit_scalar import write_integer_certificate
    r,Y,k=sp.symbols('a b c')
    h=1+k*k;p=9-4/h;J=8*k/h**2
    coeffs=weighted_coefficients()
    def parse(text):return sp.sympify(text.replace('^','**'))
    def rational(data):return parse(data['numerator'])/parse(data['denominator'])
    targets=[];target_names=[];denominator_targets=[]
    for name,data in cert['boundaries'].items():
        X=rational(data.get('X',data.get('X_equals_Y')))
        Z=rational(data['Z'])
        if name=='Kmin':
            y=Y;rr=J/(2*Y);qq=J/(2*X)
        else:
            y=X;rr=r;qq=J/X-r
        M=side_low(sp.Integer(1),X,sp.Integer(1),y,rr,qq,X,y,Z,
                   3*(9-p)+J,-2*(1+k)/h)
        N=side_low(sp.Integer(-1),-X,sp.Integer(-1),-y,-rr,-qq,X,y,Z,
                   3*(9-p)-J,-2*(1-k)/h)
        M={ij:M[ij]+N[ij] for ij in M}
        original=sum(sp.Integer(c)*sp.prod(M[ij] for ij in powers)
                     for powers,c in coeffs.items())
        target=rational(data['value'])+parse(data['modulus'])*parse(data['quotient'])/parse(data['cleared_error_denominator'])
        targets.append((original,target));target_names.append('weighted_'+name)
        if name=='K0':
            den_target=(3*k-1)**4*(3*k+1)**4*h**3*(3*k*k+1)**4/3**12
        elif name=='Kplus':
            den_target=(3*k-1)**4*h**4*(3*k*k+2*k+1)**3*(3*k**3-k*k+k+1)**4/3**11
        elif name=='Kminus':
            den_target=(3*k+1)**4*h**4*(3*k*k-2*k+1)**3*(3*k**3+k*k+k-1)**4/3**11
        else:
            den_target=-h**41*Y**5*(3*k*k+1)/(2**14*3**9)
            for x,power in [(X,2),(Y,2),(Z,3)]:
                for sign in [1,-1]:
                    den_target=den_target*(3*(9-p)+sign*J-2*(9-x)*(1+sign*k)/h)**power
        denominator_targets.append((parse(data['cleared_error_denominator']),den_target))
    targets+=denominator_targets
    target_names+=['denominator_'+name for name in cert['boundaries']]
    write_integer_certificate(targets,path)
    dag=json.loads(Path(path).read_text())
    for item,name in zip(dag['certificates'],target_names):
        item['id']=name
        if name.startswith('weighted_'):
            item['interpretation']='original weighted moment = target value + Gram modulus * explicit quotient / cleared error denominator'
        else:
            item['interpretation']='cleared error denominator equals displayed factorization; factors nonzero off the six lambda poles'
    Path(path).write_text(json.dumps(dag,separators=(',',':'))+'\n')


def build(output_path):
    """Portable final-certificate entry point; regenerate every datum internally."""
    cert=verify(integer_path=output_path)
    return {'status':'PASS','weighted_boundaries':len(cert['boundaries']),
            'integer_identities':8,'certificate_bytes':Path(output_path).stat().st_size}


if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser()
    ap.add_argument('--out',default=None)
    ap.add_argument('--integer-certificate',default=None)
    args=ap.parse_args()
    cert=verify(args.out,args.integer_certificate)
    print('PASS: independently regenerated six-term weighted Laurent identity and all four boundaries')
    print('Certificate bytes:',len((json.dumps(cert,indent=2)+'\n').encode()))
    print('Kmin:',cert['boundaries']['Kmin']['polynomial_statistics'])
