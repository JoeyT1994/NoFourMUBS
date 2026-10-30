#!/usr/bin/env python3
"""PROVED local ingredient: uniform 3-strong-direction contraction bound.

This does NOT prove complete column root coverage or pattern exclusion. It only
certifies the explicitly stated derivative inequality over the complete supplied
phase ball and H normal-form enclosure. Floating matrices are arbitrary exact
preconditioner/coordinate proposals; no orthogonality is assumed in the bound.
"""
import argparse,gzip,itertools,json,time,hashlib
from flint import arb,ctx

def A(x):
    y=arb(x) if isinstance(x,(int,float)) else arb(str(x))
    if not y.is_finite():raise ValueError('nonfinite Arb input')
    return y
def uppernorm(v):return sum((x.abs_upper()**2 for x in v),arb(0)).sqrt().upper()
def gram_bound(M):
    """||M||_2 <= sqrt(||M M^T||_infinity), verified with Arb."""
    rows=[]
    for r in M:
        rows.append(sum((sum((a*b for a,b in zip(r,s)),arb(0)).abs_upper() for s in M),arb(0)))
    return max(x.upper() for x in rows).sqrt().upper()
def mm(M,N):return [[sum((M[i][k]*N[k][j] for k in range(len(N))),arb(0)) for j in range(len(N[0]))] for i in range(len(M))]
def trans(M):return list(map(list,zip(*M)))
def helmert():
    B=[[arb(0) for j in range(5)] for i in range(6)]
    for j in range(5):
        d=arb((j+1)*(j+2)).sqrt()
        for i in range(j+1):B[i][j]=1/d
        B[j+1][j]=-(j+1)/d
    return B

def certify(snapshot,proposals,ci,prec=160):
    ctx.prec=prec;t0=time.monotonic();s=snapshot;m=s['model'];c=s['columns'][ci];prop=proposals['columns'][ci]['cover_rotation_proposal']
    R=A(c['phase_radius']).upper();r=A(m['r']).upper();tau=A(m['tau']).upper();v=[A(x) for x in c['v0']]
    O=[[A(x) for x in row] for row in prop['orthogonal_columns_weak_first']]
    V=[row[2:] for row in O];L=[[A(x) for x in row] for row in prop['strong_preconditioner']]
    B=helmert();ab=list(itertools.combinations(range(6),2));P=[[B[a][k]-B[b][k] for k in range(5)] for a,b in ab];PV=mm(P,V)
    Cre=[[arb(0) for a in ab] for k in range(3)];Cim=[[arb(0) for a in ab] for k in range(3)]
    for z,(a,b) in enumerate(ab):
        for j in range(6):
            aa=6*a+j;bb=6*b+j
            ur=[A(x)-A(y) for x,y in zip(m['U'][aa],m['U'][bb])]
            hr=[A(x)-A(y) for x,y in zip(m['H2'][aa],m['H2'][bb])]
            xr=[A(x)-A(y) for x,y in zip(m['X'][aa],m['X'][bb])]
            rad=(r*uppernorm(ur)+r*r/2*uppernorm(hr)+tau*uppernorm(xr)).upper()
            th=v[a]-v[b]-A(m['Q0'][aa])+A(m['Q0'][bb])+arb(0,rad)
            co,si=th.cos(),th.sin()
            for k in range(3):Cre[k][z]+=L[k][j]*co;Cim[k][z]+=L[k][j]*si
    G0=[[ -sum((Cim[k][z]*PV[z][i] for z in range(15)),arb(0))/3 for i in range(3)] for k in range(3)]
    E0=[[arb(k==i)-G0[k][i] for i in range(3)] for k in range(3)]
    T=[[-sum((Cre[k][z]*PV[z][i]*P[z][j] for z in range(15)),arb(0))/3 for j in range(5)] for k in range(3) for i in range(3)]
    W=[[sum((Cim[k][z]*PV[z][i]*P[z][j]*P[z][l] for z in range(15)),arb(0))/6 for j in range(5) for l in range(5)] for k in range(3) for i in range(3)]
    # This nonnegative matrix bounds every entry of the third-order Taylor remainder.
    M=[[sum(((Cre[k][z].abs_upper()**2+Cim[k][z].abs_upper()**2).sqrt().upper()*PV[z][i].abs_upper() for z in range(15)),arb(0)) for i in range(3)] for k in range(3)]
    terms=[gram_bound(E0),R*gram_bound(T),R*R*gram_bound(W),arb(8).sqrt()*R**3*gram_bound(M)/18]
    q=sum(terms,arb(0)).upper()
    return dict(status='PROVED derivative contraction ingredient' if q<arb(1) else 'NOT ESTABLISHED',snapshot=proposals['snapshot'],column=ci,scope='every H in supplied normal-form enclosure and every x with Euclidean norm at most supplied column phase radius',phase_radius=R.str(radius=True,more=True),q_upper=q.str(radius=True,more=True),terms=[t.upper().str(radius=True,more=True) for t in terms],statement='||I_3 - L D_x F_H(x) V||_2 <= q_upper',basis='exact Helmert B, phase column v0+B*x; V is last 3 columns of supplied exact 5x5 matrix O; L supplied exact 3x6 matrix',L=[[str(x) for x in row] for row in L],V=[[str(x) for x in row] for row in V],precision_bits=prec,wall_seconds=time.monotonic()-t0)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('snapshot');ap.add_argument('proposals');ap.add_argument('--out',required=True);ap.add_argument('--columns',type=int,nargs='*',default=list(range(6)));ap.add_argument('--precision',type=int,default=160);args=ap.parse_args()
    op=gzip.open if args.snapshot.endswith('.gz') else open
    with op(args.snapshot,'rt') as f:s=json.load(f)
    p=json.load(open(args.proposals));out=dict(status='DERIVATIVE INGREDIENT ONLY, no completeness or exclusion claim',snapshot_sha256=hashlib.sha256(open(args.snapshot,'rb').read()).hexdigest(),rows=[])
    for c in args.columns:
        rr=certify(s,p,c,args.precision);out['rows'].append(rr);print(c,rr['status'],rr['q_upper'],flush=True)
    json.dump(out,open(args.out,'w'),indent=2)
if __name__=='__main__':main()
