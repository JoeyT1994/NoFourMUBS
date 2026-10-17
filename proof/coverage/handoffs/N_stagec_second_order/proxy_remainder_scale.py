"""NUMERICAL experiment (not rigorous): how much would a sharper (higher-order) remainder in Stage C buy?
Scale the second-order remainder terms of the tangent test by lam and count survivors / labels / pass."""
import sys, time, math, json
sys.path.insert(0,'/Users/jtindall/Projects/NoFourMUBs/proof/atlas')
import numpy as np
import stagec as SC
from export import load_certificate
from ballrecord import BallRecord
A=load_certificate('/Users/jtindall/Projects/NoFourMUBs/proof/atlas/results/atlas_certificate.json.gz')
orig_rem=SC.remainder
def run(s, R, lam, levels):
    rec=A.recs[s]
    B=BallRecord(rec['phi'].reshape(36), Tint=rec.get('Tint'))
    SC.remainder=lambda *a, **k: lam*orig_rem(*a, **k)
    nb=B.normal_bound(R); rH,n=nb
    from record import opnorm_upper
    from flint import arb_mat
    if not hasattr(B,'tcol'):
        B.tcol=max(opnorm_upper(arb_mat([[B.rec.Tb[6*j+i,k] for k in range(4)] for j in range(6)])) for i in range(6))
    rcol=min(R,B.tcol*rH+n); rF=min(R,math.sqrt(B.lam_max)*rH+n)
    P=B.rec.phi.reshape(6,6)/SC.TWO_PI
    t0=time.time()
    # count survivors per level
    out={}
    for lv in [levels[:i] for i in range(1,len(levels)+1)]:
        U,M=SC.bins(P, rcol/SC.TWO_PI, levels=tuple(lv), tang=(B.rec.Tbn, rH/SC.TWO_PI, n/SC.TWO_PI), rF=rF/SC.TWO_PI, cap=3_000_000)
        out[lv[-1]]=None if U is None else len(U)
    cl=SC.cluster(U,M,radius=rec['label_radius']) if U is not None else None
    res=dict(rec=s,R=R,lam=lam,levels=levels,surv=out,rH=round(rH,4),n=float('%.3g'%n))
    if cl is not None:
        C,sr=cl; O,Ub=SC.edges(C,sr)
        O,Ub=SC.joint_filter(C,sr,O,Ub,P,rcol/SC.TWO_PI,SC.opnorm_bound(P),SC.cis_centre(P),rF/SC.TWO_PI,B.rec.Tbn,rH/SC.TWO_PI,n/SC.TWO_PI)
        try: ok,steps=SC.two_cliques(O,Ub)
        except RuntimeError: ok,steps='cap',None
        res.update(labels=len(C),smax=float('%.3g'%max(sr)),O=int(O.sum()//2),U=int(Ub.sum()//2),ok=ok)
    else: res.update(cluster='fail')
    res['t']=round(time.time()-t0,1)
    SC.remainder=orig_rem
    print(json.dumps(res),flush=True)
s=int(sys.argv[1])
for R in [float(x) for x in sys.argv[2].split(',')]:
    for lam in [float(x) for x in sys.argv[3].split(',')]:
        for lv in [(12,24,48,96),(12,24,48)]:
            run(s,R,lam,lv)
