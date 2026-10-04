"""Seed-only radial deflation of the cleared signed-mean circuit."""
from fractions import Fraction as Q
from intervals import IV,CX,I,OMEGA,exprel,SCALE
from formal import coefficients

RADIUS=Q(3,50)

def phase_power(z,n):return (z.star()**(-n)) if n<0 else z**n

def scaled(v,rho):
    v=list(map(IV,v));rho=IV(rho)
    if rho.lo<0:raise ValueError('radial parameter must be nonnegative')
    roots=[OMEGA,OMEGA.star(),OMEGA.star(),OMEGA]
    ph=[w*(1+exprel(x,rho)*rho) for w,x in zip(roots,v)]
    s=-OMEGA*exprel(v[0],rho)-OMEGA.star()*exprel(v[1],rho)
    t=-OMEGA.star()*exprel(v[2],rho)-OMEGA*exprel(v[3],rho)
    r=-OMEGA*exprel(v[2]-v[0],rho)-OMEGA.star()*exprel(v[3]-v[1],rho)
    X=s.abs2();Y=t.abs2();Z=r.abs2();p=X+Y+Z
    j=(s*r*t.star()).re*2;w=X*Y+X*Z+Y*Z;h=X*Y*Z
    R=324*w-81*p**2+54*rho*p*j+rho**2*(27*j**2+18*p**3-54*p*w-324*h)+rho**3*(-24*p**2*j+30*j*w)+rho**4*(2*p*j**2-p**4+2*p**2*w+54*p*h-w**2)+rho**5*(4*j**3+2*p**3*j-2*p*j*w-30*j*h)+rho**6*(-p**2*j**2-2*p**2*h+2*w*h)+rho**7*(2*p*j*h)-rho**8*h**2
    Ps=[3*s*t+(r*s*s+r.star()*t*t)*rho-s*t*(rho**2*Z),
        3*r*s.star()+(t*s.star()**2+r*r*t.star())*rho-r*s.star()*(rho**2*Y),
        3*r.star()*t.star()+(s*t.star()**2+r.star()**2*s.star())*rho-r.star()*t.star()*(rho**2*X)]
    ns=[P.abs2() for P in Ps];delta=ns[0]*ns[1]*ns[2]
    U=[Ps[0]*(ns[1]*ns[2]/2),Ps[1].star()*(ns[0]*ns[2]/2),Ps[2].star()*(ns[0]*ns[1]/2)]
    Aj=[9*p-18*z+3*rho*j+rho**2*(w-p**2+2*z*p)+rho**3*(p-2*z)*j-rho**4*h for z in [Z,Y,X]]
    M=[s*t*(rho**2*delta)-U[0]*Aj[0],r.star()*(rho*delta),s*r.star()*(rho**2*delta)-U[1]*Aj[1],t*(rho*delta),t*r*(rho**2*delta)-U[2]*Aj[2],s*(rho*delta)]
    MB=[-I*U[0],CX(0),I*U[1],CX(0),I*U[2],CX(0)]
    a,b,c,d=ph;xx=[CX(1),a,b];yy=[CX(1),c,d];pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)];AB=[]
    for u,k in [(0,1),(0,2),(1,2)]:
        cs=coefficients(xx[k]*xx[u].star(),yy[k]*yy[u].star())
        co=[z*phase_power(xx[u],-e)*phase_power(yy[u],-f) for z,(e,f) in zip(cs,pq)]
        sa=sum((z*m for z,m in zip(co,M)),CX(0));sb=sum((z*m for z,m in zip(co,MB)),CX(0))
        AB.append((-2*sa.im,-2*sb.im))
    return R,delta,AB

def prove_cell(v,rho,record=False):
    rho=IV(rho); R,d,ab=scaled(v,rho);Rmax=(rho**4*R).hi
    # R is rho^-4 times the original invariant; at positive rho its sign agrees.
    if R.hi<=0:return {'ok':True,'kind':'R_nonpositive','Rbar':R.record()}
    allsg=[];wits=[]
    for tr in (False,True):
        if tr:
            vv=[v[0],v[2],v[1],v[3]];Rt,dt,abt=scaled(vv,rho)
            Rmax=min(Rmax,(rho**4*Rt).hi);rr,dd,AA=Rt,dt,abt
        else:rr,dd,AA=R,d,ab
        signs=set()
        for j,(A,B) in enumerate(AA):
            # The noncancelling sign exceeds the allowed mean whenever |B|>3 rho^2 delta.
            gap=B.abs()-3*rho**2*dd
            if gap.lo>0:
                if A.lo>=0 and B.lo>0:signs.add(1)
                if A.hi<=0 and B.hi<0:signs.add(1)
                if A.lo>=0 and B.hi<0:signs.add(-1)
                if A.hi<=0 and B.lo>0:signs.add(-1)
            # Both signs can also be excluded without sqrt when |A|>(|B|+3rho^2delta)sqrt(Rbar).
            agap=A.abs()**2-(B.abs()+3*rho**2*dd)**2*IV(0,max(0,rr.hi),raw=True)
            if agap.lo>0:signs.update([-1,1])
            if record:wits.append({'transpose':tr,'pair':j,'Abar':A.record(),'Bbar':B.record(),'beta_gap':gap.record(),'alpha_gap':agap.record()})
        if len(signs)==2:return {'ok':True,'kind':'single_orientation','transpose':tr,'witnesses':wits}
        allsg.append(signs)
    if Rmax<243*SCALE and allsg[0].intersection(allsg[1]):
        return {'ok':True,'kind':'coupled_non_cancelling_signs','signs':[sorted(x) for x in allsg],'witnesses':wits}
    return {'ok':False,'kind':'inconclusive','signs':[sorted(x) for x in allsg],'witnesses':wits}

if __name__=='__main__':
    import time,sys
    v0=[Q(-1),Q(0),Q(0),Q(-1)]
    eps=Q(sys.argv[1]) if len(sys.argv)>1 else Q(1,1000)
    vv=[IV(x-eps,x+eps) for x in v0]
    st=time.process_time()
    for k in range(6):
        rho=IV(Q(k,100),Q(k+1,100));z=prove_cell(vv,rho)
        print(k,z,flush=True)
    print('CPU',time.process_time()-st)
