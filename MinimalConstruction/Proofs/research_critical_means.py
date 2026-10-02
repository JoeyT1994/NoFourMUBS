"""Exact exploratory equations for an all-critical physical carrier.

Not a global proof: the rational expressions use nonzero P0,P1,P2.
Their boundary justification and the pole strata need separate treatment.
"""
import argparse,itertools,json,signal,time
from pathlib import Path
from research_nonmatched_residual import F,CTX


def equations(a,b,c,d):
    s,t,r=-1-a-b,-1-c-d,-1-c/a-d/b
    S,T,Q=s.star(),t.star(),r.star()
    X,Y,Z=s*S,t*T,r*Q
    p=X+Y+Z;J=s*r*T+S*Q*t
    g=27-3*p+J;eta=9-p+J
    W=X*Y+X*Z+Y*Z-X*Y*Z
    chi=W-(p-9)*(p-18)+(p-15)*J
    R=4*g*g*eta-chi*chi
    P=[r*s*s+Q*t*t+(3-Z)*s*t,
       t*S*S+r*r*T+(3-Y)*r*S,
       s*T*T+Q*Q*S+(3-X)*Q*T]
    A=[chi+2*k*eta for k in (9-Z,9-Y,9-X)]
    xx,yy=[F(1),a,b],[F(1),c,d]
    ans={'R':R}
    for j,k in itertools.combinations(range(3),2):
        u,v=xx[k]/xx[j],yy[k]/yy[j]
        co={(1,1):-(u-v)**2*(u+v)/(u*u*v*v),
            (1,-1):(u-v)*(u+v)*(u*v-1)/(u*u*v),
            (2,-1):(v-1)**2*(v+1)/(u*v),
            (0,1):-(u*u-v)*(v-1)*(v+1)/(u*v*v),
            (-1,2):(u-1)**2*(u+1)/(u*v),
            (1,0):(u-1)*(u+1)*(u-v*v)/(u*u*v)}
        co={pq:f*xx[j]**(-pq[0])*yy[j]**(-pq[1]) for pq,f in co.items()}
        h=[co[1,1]/P[0].star(),co[2,-1]/P[1],co[-1,2]/P[2]]
        z=(co[1,0]*s+co[0,1]*t+co[1,-1]*Q+co[1,1]*s*t+
           co[2,-1]*s*Q+co[-1,2]*t*r-sum(x*y for x,y in zip(h,A))/2)
        ans[f'mean{j}{k}']=z-z.star()
    return ans,P


if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--export',action='store_true',help='Retain the large exact polynomial expressions')
    args=parser.parse_args()
    signal.alarm(180)
    start=time.process_time()
    a,b,c,d=[F(x) for x in CTX.gens()]
    out={};poles={}
    for tag,seed in [('h',(a,b,c,d)),('v',(a,c,b,d))]:
        eq,P=equations(*seed)
        for name,f in eq.items():
            out[tag+name]=f.record()
            print(tag+name,len(f.n),f.n.degrees(),flush=True)
            unit,factors=f.n.factor()
            print('factor sizes:',[(len(q),q.degrees(),e) for q,e in factors],flush=True)
        poles[tag]=[p.record() for p in P]
    if args.export:
        dest=Path(__file__).with_name('Research')/'critical_mean_equations.json'
        dest.write_text(json.dumps({'status':'RESEARCH_ONLY','equations':out,'poles':poles},indent=2)+'\n')
    print('CPU seconds:',time.process_time()-start,flush=True)
