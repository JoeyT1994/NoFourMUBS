"""A short division-free consequence of complementary-corner maximality.

For a physical maximal corner with J<0, necessarily
    4 J^2 <= (9-p)^3 (p-5).
No small-cutoff assumption is used in this implication.
"""
from reconstruction_polynomials import LP

def polynomials():
    a,b,c,d=[LP.variable(j) for j in range(4)]
    s=-1-a-b;t=-1-c-d;r=-1-c/a-d/b
    p=sum(z*z.conjugate() for z in [s,t,r]);J=2*(s*r*t.conjugate()).real
    return dict(J=J,p_minus_5=p-5,negative_branch=(9-p)**3*(p-5)-4*J**2)

def verify_identity():
    import sympy as sp
    t,j,c=sp.symbols('t j c',real=True)
    rp=4*(3*t+j)**2*(t+j)-(c-(t+6)*j)**2
    rm=4*(3*t-j)**2*(t-j)-(c+(t+6)*j)**2
    u=(rp+rm)/2;v=(rp-rm)/2;z=j*j;p=9-t
    identity=4*z*(z-t**3*(4-t)/4)*(z+36*p)+u*z*(t+6)**2-v*j*(2*z+30*t*t)+v*v/4
    assert sp.expand(identity)==0
    return True

if __name__=='__main__':
    import gzip,json,time
    from pathlib import Path
    from scalar_bernstein import ScalarBernstein
    from flint import arb
    here=Path(__file__).resolve().parent;assert verify_identity()
    with gzip.open(here/'global_scalar24_open.jsonl.gz','rt') as f:paths=[json.loads(x)['path'] for x in f]
    paths=paths[::max(1,len(paths)//1024)][:1024]
    polys=polynomials();bounds={};start=time.monotonic()
    for name,poly in polys.items():
        T=ScalarBernstein(6,poly);bounds[name]=[]
        for k in range(0,len(paths),128):
            batch=paths[k:k+128];co=T.coefficients(batch)
            if k==0:T.audit_coefficients(batch[0],co[0])
            bounds[name]+=T.enclosures(co,audit=k==0)
        print(name,'terms',len(poly.d),'seconds',time.monotonic()-start,flush=True)
    rejected=[]
    for k,path in enumerate(paths):
        if bounds['J'][k][1]<0 and (bounds['p_minus_5'][k][1]<0 or bounds['negative_branch'][k][1]<0):rejected.append(path)
    print('Verified sample exclusions',len(rejected),'/',len(paths),flush=True)
    (here/'complementary_scalar_probe.json').write_text(json.dumps(dict(exact_identity_verified=True,sample_size=len(paths),excluded_paths=rejected,global_cover_updated=False),indent=2)+'\n')
