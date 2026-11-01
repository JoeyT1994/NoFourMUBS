"""Exact source checks for rational formulas used by the L-id verifier.

These checks concern identities implicit in the optimized moment entries;
none assumes the fourth-moment flatness identity.
"""
from verify_factored_rational import F,CTX,adj,mul,tr


def same(a,b,msg):
    if (a-b).n: raise AssertionError(msg)


def main():
    a,b,c,d=[F(x) for x in CTX.gens()]
    E=[[F(1)]*3,[F(1),a,b],[F(1),c,d]]
    def gram(E):
        m=mul(E,adj(E))
        return [[6*(i==j)-x for j,x in enumerate(row)] for i,row in enumerate(m)]
    Gh,Gv=gram(E),gram(tr(E))
    outputs=[]
    for tag,G in [('horizontal',Gh),('vertical',Gv)]:
        s,t,r=G[1][0],G[2][0],G[2][1]
        S,T,Q=s.star(),t.star(),r.star()
        X,Y,Z=s*S,t*T,r*Q;p=X+Y+Z;J=s*r*T+S*Q*t
        g=27-3*p+J;eta=9-p+J
        chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
        h=chi/g
        for x,label in [(g,'g'),(eta,'eta'),(chi,'chi')]:same(x.star(),x,tag+' '+label+' star')
        det=(G[0][0]*(G[1][1]*G[2][2]-G[1][2]*G[2][1])
             -G[0][1]*(G[1][0]*G[2][2]-G[1][2]*G[2][0])
             +G[0][2]*(G[1][0]*G[2][1]-G[1][1]*G[2][0]))
        same(det,g,tag+' Gram determinant')
        P0=r*s*s+Q*t*t+(3-Z)*s*t
        P1=t*S*S+r*r*T+(3-Y)*r*S
        P2=s*T*T+Q*Q*S+(3-X)*Q*T
        c0,c1,c2=9-Z,9-Y,9-X
        def ratio(ci,cj,Pi,Pj):
            den=Pj*Pi.star()
            return ((g*g+ci*cj*eta+ci*chi)/den,g*(cj-ci)/den)
        u=ratio(c0,c1,P0,P1);v=ratio(c0,c2,P0,P2);uv=ratio(c2,c1,P2,P1)
        pi=(c0*eta/P0.star(),g/P0.star())
        def qm(a,b):
            return (a[0]*b[0]-eta*a[1]*b[1],a[0]*b[1]+a[1]*b[0]+h*a[1]*b[1])
        def qs(a):
            return (a[0].star()+h*a[1].star(),-a[1].star())
        def qe(a,b,label):
            same(a[0],b[0],tag+' '+label+' constant')
            same(a[1],b[1],tag+' '+label+' linear')
        for value,label in [(u,'u'),(v,'v'),(uv,'u/v')]:qe(qm(value,qs(value)),(F(1),F(0)),label+' unit')
        qe(qm(uv,v),u,'u/v quotient')
        qe(qm(u,qs(pi)),((chi+c1*eta)/P1,-g/P1),'u conjugate(permanent)')
        qe(qm(v,qs(pi)),((chi+c2*eta)/P2,-g/P2),'v conjugate(permanent)')
        outputs.append((g,eta,chi))
        print('PASS',tag,'source formula translation',flush=True)
    for x,y,label in zip(*outputs,['g','eta','chi']):same(x,y,'horizontal/vertical '+label)
    print('PASS invariants agree horizontally and vertically',flush=True)

if __name__=='__main__':main()
