"""Certified lower witnesses for the TRUE Taylor-remainder supremum.

The candidate endpoint is identified with the certified chart by verifying its
correction lies in the contraction tube. This is stronger than trusting a
numerical continuation label. Center and frame conventions match certify.py.
"""
from pathlib import Path
import argparse,csv,json,sys,time
import numpy as np
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'fullphase'))
from certify import (arb,acb,arb_mat,ctx,mat,mid_np,geometry,real_jac,differences,
                     derivative2,frob,lower,upper,PAIRS,left_inverse)
from certify_lower_witnesses import make_center
import core


def hvector(phases):
    return arb_mat([[phases[i][j]-sum(phases[i],arb(0))/6-sum((phases[k][j] for k in range(6)),arb(0))/6
                     +sum((x for row in phases for x in row),arb(0))/36] for i in range(6) for j in range(6)])


def replay(row,co,Mfloat,wfloat,record,V,X):
    r=arb(row['r']);M=mat(Mfloat);scale=arb(999999999999)/1000000000000
    w=mat(wfloat.reshape(4,1))*scale
    w2=sum((w[i,0]**2 for i in range(4)),arb(0))
    if not w2<r*r:raise ArithmeticError('point outside ball')
    theta0=[arb(row['theta0_'+str(i)]) for i in range(1,5)]
    H0,meta0=make_center(theta0,co)
    z=[H0[i,k]*H0[l,k].conjugate() for i,l in PAIRS for k in range(6)]
    J=real_jac(z);W=left_inverse(J,X)
    U=(V-X*W*J*V)*M;s=differences(U);H2=-(X*W*derivative2(z,s,s))
    dw=M*w
    if not all(abs(dw[i,0])<arb.pi() for i in range(4)):raise ArithmeticError('seed branch wrapping')
    theta=[theta0[i]+dw[i,0] for i in range(4)]
    guess=core.completion(np.array([float(x.mid()) for x in theta]),previous=co)
    Hp,metap=make_center(theta,guess)
    phases=[[(Hp[i,j]*H0[i,j].conjugate()).arg() for j in range(6)] for i in range(6)]
    if not all(abs(x)<arb.pi() for rr in phases for x in rr):raise ArithmeticError('relative phase hits branch cut')
    qdiff=hvector(phases);rem=qdiff-U*w
    ww=arb_mat([[w[i,0]*w[j,0]] for i in range(4) for j in range(4)])
    delta=rem-H2*ww/2
    Xleft=(X.transpose()*X).solve(X.transpose());zz=Xleft*delta
    zsize=frob(zz)
    # Output tau is an outward dyadic upper bound for the original exact tube.
    # Replay the radii inequality at that (slightly larger) exact dyadic radius.
    tau=arb(record['tau']);u=arb(record['u']);beta=arb(record['beta']);x=arb(record['x'])
    L3=2*arb(6).sqrt()*arb(record['W_norm']);base=u*r+beta*r*r/2
    q=arb(record['qbase'])+(arb(record['d'])+L3*x*x*base)*tau+L3*x**3*tau*tau/2
    slack=tau-arb(record['b0'])-q*tau
    if not q<1 or not slack>0:raise ArithmeticError('stored tube upper bound failed radii replay')
    if not zsize<tau:raise ArithmeticError('candidate endpoint outside contraction tube')
    # Horizontal projection and the no-wrap seed check imply L delta=0 exactly,
    # so delta is in the exact span of X. The certified endpoint is Hadamard.
    # Thus it is the unique projected root in this tube and equals the chart.
    n=frob(rem)
    return dict(j=int(row['j']),status='CERTIFIED',remainder_lower=lower(n),remainder_upper=upper(n),
                point_inside_margin_lower=lower(r*r-w2),tube_correction_upper=upper(zsize),tube_radius=record['tau'],
                tube_slack_lower=lower(tau-zsize),radii_slack_lower=lower(slack),q_replay_upper=upper(q),
                w_unscaled_hex=[float(x).hex() for x in wfloat],w_scale_numerator=999999999999,w_scale_denominator=1000000000000,
                phase_displacement_upper=max(upper(abs(x)) for rr in phases for x in rr),center=meta0,point=metap)


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',default=str(BASE.parent/'fullphase/FINAL_CERTIFICATES.jsonl'));ap.add_argument('--precision',type=int,default=224);args=ap.parse_args();ctx.prec=args.precision
    rows=list(csv.DictReader((BASE.parent/'Z_completion_hessian/context/ball_table.csv').open()))
    data=np.load(BASE/'centres.npz');wit=np.load(BASE/'sample_witnesses.npz');records={int(x['j']):x for x in map(json.loads,open(args.certificates))}
    if len(records)!=len(rows):raise RuntimeError('whole-ball certificate file is incomplete; wait for the 300-row replay')
    V,X=geometry();started=time.time();results=[]
    for i,row in enumerate(rows):
      record=records.get(int(row['j']),{})
      if not record.get('contraction') or not record.get('orientation'):out=dict(j=int(row['j']),status='NOT ESTABLISHED',reason='no strict whole-ball certificate')
      else:
        try:
          co={k:data[k][i] for k in ['H','theta','phih','phiv']}
          out=replay(row,co,data['M'][i],wit['remainder_w'][i],record,V,X)
        except Exception as e:out=dict(j=int(row['j']),status='ERROR',error=repr(e))
      results.append(out)
      if (i+1)%25==0 or out['status']=='ERROR':print(i+1,out['j'],out['status'],round(time.time()-started,2),out.get('error',''),flush=True)
    with (BASE/'remainder_lower_witnesses.jsonl').open('w') as f:
      for x in results:f.write(json.dumps(x)+'\n')
    print('CERTIFIED',sum(x['status']=='CERTIFIED' for x in results),'ERRORS',[x for x in results if x['status']=='ERROR'])
if __name__=='__main__':main()
