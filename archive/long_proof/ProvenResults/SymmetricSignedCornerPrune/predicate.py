"""Radical-eliminated signed-corner means; outward rational seed predicate."""
try:
    from .interval_core import *
except ImportError:
    from interval_core import *

def coeffs(A,Cc):
    ai,ci=A.conjugate(),Cc.conjugate()
    # Half of the 12 Laurent coefficients of S=f/i. The other half is
    # -conjugate by the exact phase relations.
    return {(1,1):-(A-Cc)**2*(A+Cc)*ai**2*ci**2,
        (1,-1):(A-Cc)*(A+Cc)*(A*Cc-1)*ai**2*ci,
        (2,-1):(Cc-1)**2*(Cc+1)*ai*ci,
        (0,1):-(A**2-Cc)*(Cc-1)*(Cc+1)*ai*ci**2,
        (-1,2):(A-1)**2*(A+1)*ai*ci,
        (1,0):(A-1)*(A+1)*(A-Cc**2)*ai**2*ci}
def powu(x,k):
    if k<0:return powu(x.conjugate(),-k)
    z=Jet(1)
    for _ in range(k):z=z*x
    return z

def expressions(phases):
    a,b,c,d=phases;s=-1-a-b;t=-1-c-d;r=-1-c*a.conjugate()-d*b.conjugate()
    X,Y,Z=s.abs2(),t.abs2(),r.abs2();p=X+Y+Z;J=2*(s*r*t.conjugate()).real();W=X*Y+X*Z+Y*Z-X*Y*Z
    eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
       t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
       s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
    pp=[P[0].conjugate(),P[1],P[2]]
    invp=[x.inv() for x in pp]
    AA=[chi+2*v*eta for v in [9-Z,9-Y,9-X]]
    xx=[Jet(1),a,b];yy=[Jet(1),c,d];out=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        co=coeffs(xx[k]*xx[j].conjugate(),yy[k]*yy[j].conjugate())
        co={pq:v*powu(xx[j],-pq[0])*powu(yy[j],-pq[1]) for pq,v in co.items()}
        h1,h2,h3=co[1,1]*invp[0],co[2,-1]*invp[1],co[-1,2]*invp[2]
        zz=co[1,0]*s+co[0,1]*t+co[1,-1]*r.conjugate()+co[1,1]*s*t+co[2,-1]*s*r.conjugate()+co[-1,2]*t*r
        zz=zz-(h1*AA[0]+h2*AA[1]+h3*AA[2])/2
        out.append((zz.imag()*V(Fraction(-2,3)),(h1-h2-h3).real()*V(Fraction(1,3))))
    return out

def predicate(centers,radii,transpose=False):
    """Only ok=True certifies absence of strict D0 physical completions.
    Inputs are rational radians (int, Fraction or exact binary float).
    """
    centers=list(centers);radii=list(radii)
    check_seed_box(centers,radii)
    if transpose:
        centers=[centers[i] for i in [0,2,1,3]];radii=[radii[i] for i in [0,2,1,3]]
    cp=seed_jets(centers,[0]*4);bp=seed_jets(centers,radii)
    rb=taylor_bound(R_expression(cp),R_expression(bp),radii)
    if rb.b<=0:return dict(ok=True,reason='R_nonpositive',R=bounds(rb),transpose=transpose)
    try:c=expressions(cp);b=expressions(bp)
    except (ValueError,ZeroDivisionError):return dict(ok=False,reason='denominator',R=bounds(rb),transpose=transpose)
    ab=[(taylor_bound(x[0],y[0],radii),taylor_bound(x[1],y[1],radii)) for x,y in zip(c,b)]
    qr=iv.sqrt(hull(max(V(0),rb.a),rb.b))
    means=[[A+sg*B*qr for A,B in ab] for sg in [1,-1]]
    witnesses=[]
    for mm in means:
        witnesses.append(next((j for j,x in enumerate(mm) if (x**2).a>rb.b),None))
    return dict(ok=all(j is not None for j in witnesses),reason='signed_mean' if all(j is not None for j in witnesses) else 'unresolved',
        R=bounds(rb),means=[[bounds(x) for x in mm] for mm in means],AB=[[bounds(a),bounds(b)] for a,b in ab],witnesses=witnesses,transpose=transpose)

if __name__=='__main__':
    import argparse,json
    ap=argparse.ArgumentParser(description='Outward strict-D0 exclusion on a rational seed box')
    ap.add_argument('--centers',nargs=4,required=True,help='four rational radians, e.g. -3/2')
    ap.add_argument('--radii',nargs=4,required=True,help='four positive rational seed radii')
    ap.add_argument('--transpose',action='store_true')
    args=ap.parse_args()
    print(json.dumps(predicate([Fraction(x) for x in args.centers],[Fraction(x) for x in args.radii],args.transpose),allow_nan=False))
