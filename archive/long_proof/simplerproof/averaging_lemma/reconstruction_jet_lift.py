"""Validated reconstruction Taylor lift with a shared signed radical.

The five real variables are four seed phases and h=+/-sqrt(R).
Both matched sides use this SAME variable with opposite signs. Complex
second derivatives are evaluated by outward automatic differentiation.
"""
from pathlib import Path
import itertools,sys,json,time
from flint import arb,acb,ctx
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
from side_cover_lift import sharp_R_cap
N=5
DOMAIN_WIDTHS=[arb(0)]*N

class Jet:
    def __init__(self,v=0,d=None,h=None,center=None,center_gradient=None):
        if isinstance(v,Jet):self.v,self.d,self.h,self.c,self.cd=v.v,v.d,v.h,v.c,v.cd;return
        self.v=acb(v);self.d=d if d is not None else [acb(0) for _ in range(N)]
        self.h=h if h is not None else [[acb(0) for _ in range(N)] for _ in range(N)]
        self.c=self.v if center is None else acb(center)
        self.cd=[acb(0) for _ in range(N)] if center_gradient is None else center_gradient
        if center is not None and self.v.is_finite():
            if center_gradient is not None:
                for j in range(N):
                    mean=self.cd[j]+sum((acb(arb(0,w))*a for w,a in zip(DOMAIN_WIDTHS,self.h[j])),acb(0))
                    if mean.is_finite() and self.d[j].is_finite():
                        self.d[j]=acb(self.d[j].real.intersection(mean.real),self.d[j].imag.intersection(mean.imag))
            mean=self.c+sum((acb(arb(0,w))*a for w,a in zip(DOMAIN_WIDTHS,self.d)),acb(0))
            if mean.is_finite():self.v=acb(self.v.real.intersection(mean.real),self.v.imag.intersection(mean.imag))
    @classmethod
    def variable(cls,v,j,center=None):
        out=cls(v);out.d[j]=acb(1);out.cd[j]=acb(1);out.c=acb(v if center is None else center);return out
    def __add__(self,b):
        b=Jet(b);return Jet(self.v+b.v,[x+y for x,y in zip(self.d,b.d)],[[x+y for x,y in zip(r,s)] for r,s in zip(self.h,b.h)],self.c+b.c,[x+y for x,y in zip(self.cd,b.cd)])
    __radd__=__add__
    def __neg__(self):return Jet(-self.v,[-x for x in self.d],[[-x for x in r] for r in self.h],-self.c,[-x for x in self.cd])
    def __sub__(self,b):return self+-Jet(b)
    def __rsub__(self,b):return Jet(b)+-self
    def __mul__(self,b):
        b=Jet(b)
        return Jet(self.v*b.v,[x*b.v+self.v*y for x,y in zip(self.d,b.d)],
            [[self.h[i][j]*b.v+self.d[i]*b.d[j]+self.d[j]*b.d[i]+self.v*b.h[i][j] for j in range(N)] for i in range(N)],self.c*b.c,[x*b.c+self.c*y for x,y in zip(self.cd,b.cd)])
    __rmul__=__mul__
    def chain(self,v,first,second,center,center_first):
        return Jet(v,[first*x for x in self.d],[[first*self.h[i][j]+second*self.d[i]*self.d[j] for j in range(N)] for i in range(N)],center,[center_first*x for x in self.cd])
    def reciprocal(self):
        assert not self.v.contains(0),'A reconstruction divisor may vanish on the box'
        inverse=1/self.v
        return self.chain(inverse,-inverse*inverse,2*inverse*inverse*inverse,1/self.c,-1/self.c**2)
    def __truediv__(self,b):return self*Jet(b).reciprocal()
    def __rtruediv__(self,b):return Jet(b)*self.reciprocal()
    def __pow__(self,n):
        assert isinstance(n,int)
        if n<0:return self.reciprocal()**(-n)
        out=Jet(1)
        for _ in range(n):out=out*self
        return out
    def conjugate(self):return Jet(self.v.conjugate(),[x.conjugate() for x in self.d],[[x.conjugate() for x in r] for r in self.h],self.c.conjugate(),[x.conjugate() for x in self.cd])
    @property
    def real(self):return Jet(acb(self.v.real),[acb(x.real) for x in self.d],[[acb(x.real) for x in r] for r in self.h],acb(self.c.real),[acb(x.real) for x in self.cd])
    @property
    def imag(self):return Jet(acb(self.v.imag),[acb(x.imag) for x in self.d],[[acb(x.imag) for x in r] for r in self.h],acb(self.c.imag),[acb(x.imag) for x in self.cd])
    def exp(self):
        v=self.v.exp();return self.chain(v,v,v,self.c.exp(),self.c.exp())
    def sqrt(self):
        assert self.v.real>0,'Square-root branch is not certified in the right half-plane'
        v=self.v.sqrt();inverse=1/v
        return self.chain(v,inverse/2,-inverse*(1/self.v)/4,self.c.sqrt(),1/(2*self.c.sqrt()))
    def log(self):
        assert self.v.real>0,'Logarithm branch is not certified in the right half-plane'
        inverse=1/self.v
        return self.chain(self.v.log(),inverse,-inverse*inverse,self.c.log(),1/self.c)

def mm(A,B):return [[sum((a*b for a,b in zip(row,col)),Jet()) for col in zip(*B)] for row in A]
def trans(A):return list(map(list,zip(*A)))
def star(A):return [[x.conjugate() for x in row] for row in trans(A)]
def scale(A,c):return [[c*x for x in row] for row in A]
def adj(A):
    return [[(-1)**(i+j)*(A[[r for r in range(3) if r!=j][0]][[c for c in range(3) if c!=i][0]]*
            A[[r for r in range(3) if r!=j][1]][[c for c in range(3) if c!=i][1]]-
            A[[r for r in range(3) if r!=j][0]][[c for c in range(3) if c!=i][1]]*
            A[[r for r in range(3) if r!=j][1]][[c for c in range(3) if c!=i][0]]) for j in range(3)] for i in range(3)]

def side(G,z,g,choices=None):
    s,t,r=G[1][0],G[2][0],G[2][1];X,Y,Z=[x*x.conjugate() for x in [s,t,r]]
    P=[r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
       t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
       s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()]
    lam=[(g+k*z.conjugate())/p.conjugate() for k,p in zip([9-Z,9-Y,9-X],P)]
    u=lam[0]*lam[1].conjugate();mu=s/3;nu=t/3;n=1-mu*mu.conjugate()
    k=r/3-nu*mu.conjugate();alpha=mu*mu-u*mu.conjugate();gamma=2*mu*nu-z*lam[0]/3
    square=g/27*lam[0]*lam[1].conjugate()*lam[2].conjugate()
    if choices is None:
        candidates=[acb(0,arb.pi()*j/8).exp() for j in range(8)]
        index=max(range(8),key=lambda j:(square.v/candidates[j]**2).real.lower())
    else:index=choices['square_rotation']
    rotation=acb(0,arb.pi()*index/8).exp();delta=(square/(rotation**2)).sqrt()*rotation
    raw=27/g*(n*gamma-2*alpha*k)*delta.conjugate()
    sign=(1 if raw.v.real>0 else -1) if choices is None else choices['square_sign']
    if choices is None:assert abs(raw.v.real)>0
    delta=sign*delta;dF=(sign*raw).real;assert dF.v.real>0,'Positive side branch is not certified'
    rho=(n+dF)/2
    assert rho.v.real>0
    ratio=alpha/rho;cp_=(k-delta*ratio.conjugate())/n;cm=(k*ratio+delta)/n
    sigma=u+mu*ratio;xi=sigma*sigma/rho
    if choices is None:
        candidates=[acb(0,arb.pi()*j/12).exp() for j in range(8)]
        cube_index=max(range(8),key=lambda j:(xi.v/candidates[j]**3).real.lower())
    else:cube_index=choices['cube_rotation']
    rotation=acb(0,arb.pi()*cube_index/12).exp();w=((xi/rotation**3).log()/3).exp()*rotation
    M=[[Jet(1),Jet(),Jet()],[mu,sigma,ratio*sigma.conjugate()],[nu,cp_*sigma,cm*sigma.conjugate()]]
    phase=[[Jet(1),Jet(),Jet()],[Jet(),w.conjugate(),Jet()],[Jet(),Jet(),w]]
    return M,phase,dict(square_rotation=index,square_sign=sign,cube_rotation=cube_index)

def carrier(centers,widths,choices=None):
    global DOMAIN_WIDTHS
    DOMAIN_WIDTHS=list(widths)
    variables=[Jet.variable(acb(c+arb(0,h)),j,acb(c)) for j,(c,h) in enumerate(zip(centers,widths))]
    a,b,c,d=[(acb(0,1)*v).exp() for v in variables[:4]];q=variables[4]
    E=[[Jet(1),Jet(1),Jet(1)],[Jet(1),a,b],[Jet(1),c,d]]
    EE=mm(E,star(E));EtE=mm(star(E),E)
    G=[[6*int(i==j)-EE[i][j] for j in range(3)] for i in range(3)]
    Gv=trans([[6*int(i==j)-EtE[i][j] for j in range(3)] for i in range(3)])
    s,t,r=G[1][0],G[2][0],G[2][1];X,Y,Z=[x*x.conjugate() for x in [s,t,r]];p=X+Y+Z
    J=2*(s*r*t.conjugate()).real;W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J;eta=9-p+J
    chi=W-(p-9)*(p-18)+(p-15)*J;z=(chi+acb(0,1)*q)/(2*g)
    Mh,Ph,ch=side(G,z,g,None if choices is None else choices[0])
    Mv,Pv,cv=side(Gv,z.conjugate(),g,None if choices is None else choices[1])
    F=[[Jet(acb(0,arb.pi()*2*i*j/3).exp()) for j in range(3)] for i in range(3)]
    B=mm(mm(Mh,Ph),F);C=mm(mm(F,Pv),trans(Mv));D=scale(mm(mm(mm(C,star(E)),adj(G)),B),-1/g)
    H=[E[i]+B[i] for i in range(3)]+[C[i]+D[i] for i in range(3)]
    assert all(x.v.is_finite() for row in H for x in row)
    return H,[ch,cv]

def norm(v):
    assert all(x.is_finite() for x in v),'Nonfinite value or derivative enclosure'
    squares=[abs(x).upper()**2 for x in v]
    assert all(x.is_finite() for x in squares),'Nonfinite squared derivative bound'
    result=sum(squares,arb(0)).upper().sqrt().upper()
    assert result.is_finite() and result>=0,'Nonfinite norm bound'
    return result

def phase_jets(H,reference):
    phase=[[(h/r).log().imag for h,r in zip(row,ref)] for row,ref in zip(H,reference)]
    rows=[sum(row,Jet())/6 for row in phase];cols=[sum(col,Jet())/6 for col in zip(*phase)]
    mean=sum(rows,Jet())/6
    return [phase[i][j]-rows[i]-cols[j]+mean for i in range(6) for j in range(6)]

def certify(halfwidth,qpieces=16,seed_pieces=(1,1,1,1)):
    cc=[arb.pi()*n/3 for n in [1,2,2,4]];h=arb(halfwidth)
    assert isinstance(qpieces,int) and qpieces>0 and h>=0
    assert len(seed_pieces)==4 and all(isinstance(n,int) and n>0 for n in seed_pieces)
    tao_guard=(3*(cc[0]+arb(0,h))).cos()-1
    assert not tao_guard.contains(0),'Matching requires exclusion of Tao corners'
    cap=min(sharp_R_cap(cc,[h]*4),arb(5));assert cap>0
    q=cap.sqrt().upper();centers=cc+[arb(0)];widths=[h]*4+[q]
    H0,choices=carrier(centers,[arb(0)]*5)
    candidates=[]
    for rp,cp_ in itertools.product(itertools.permutations(range(3,6)),repeat=2):
        rows=(0,1,2)+rp;cols=(0,1,2)+cp_
        F=[[acb(0,arb.pi()*i*j/3).exp() for j in cols] for i in rows]
        candidates.append((norm([H0[i][j].v-F[i][j] for i in range(6) for j in range(6)]),F,rows,cols))
    _,F,rows,cols=min(candidates,key=lambda r:r[0]);base=phase_jets(H0,F)
    # A complete one-dimensional partition reduces dependency loss in the
    # derivative enclosure; the Taylor expansion itself stays centred at
    # the Fourier point. All phase coordinates retain their full widths.
    local_bounds=[];excluded_seed_tiles=0
    for indices in itertools.product(*(range(n) for n in seed_pieces)):
        seed_width=[h/n for n in seed_pieces]
        seed_center=[c+h*(2*k+1-n)/n for c,k,n in zip(cc,indices,seed_pieces)]
        tile_cap=min(sharp_R_cap(seed_center,seed_width),arb(5))
        if tile_cap<=0:
            excluded_seed_tiles+=1;continue
        tile_q=tile_cap.sqrt().upper()
        for piece in range(qpieces):
            local_center=seed_center+[tile_q*(2*piece+1-qpieces)/qpieces]
            local_width=seed_width+[tile_q/qpieces]
            H,_=carrier(local_center,local_width,choices);full=phase_jets(H,F)
            local_bounds.append((norm([x.c for x in full])+sum((local_width[j]*norm([x.d[j] for x in full]) for j in range(5)),arb(0))).upper())
    constant=norm([x.v for x in base]);linear=sum((widths[j]*norm([x.d[j] for x in base]) for j in range(5)),arb(0))
    bound=max(local_bounds) if local_bounds else arb(0)
    return dict(ok=bool(bound<=arb(3)/10),phase_norm_upper=str(bound.upper()),constant=str(constant),linear_diagnostic=str(linear),
        radical_cap=str(q),R_cap=str(cap),choices=choices,reference_rows=rows,reference_columns=cols,radical_pieces=qpieces,
        seed_subdivisions=list(seed_pieces),seed_tiles_excluded=excluded_seed_tiles,verified_rectangles=len(local_bounds),
        piecewise_mean_value_bound=str(bound),Tao_absence=str(tao_guard))

if __name__=='__main__':
    ctx.prec=128;out=[]
    for den in [2048,8192,32768]:
        start=time.monotonic()
        try:r=certify(arb(1)/den)
        except AssertionError as e:r=dict(ok=False,reason=str(e))
        out.append(dict(halfwidth='1/'+str(den),result=r,seconds=time.monotonic()-start));print(out[-1],flush=True)
        (HERE/'reconstruction_jet_lift_probe.json').write_text(json.dumps(dict(scope='Finite active Fourier seed cubes only',global_confinement_proved=False,rows=out),indent=2)+'\n')
