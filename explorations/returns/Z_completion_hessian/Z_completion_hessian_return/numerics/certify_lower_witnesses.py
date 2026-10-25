"""CERTIFIED directional Hessian lower bounds at points inside exact seed ellipsoids.

Numerical directions propose witnesses only. Arb certifies the side roots,
exact seed-ellipsoid membership, directional derivatives and norm lower bounds.
The matched-flatness/analytic-germ theorem is the same supplied dependency as
../fullphase/certify.py. This is independent of a sampled-supremum claim.
"""
from pathlib import Path
import argparse,csv,json,sys,time
import numpy as np
BASE=Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'fullphase'))
from certify import (arb,acb,arb_mat,acb_mat,ctx,mat,mid_np,geometry,certified_side,
                     signature,real_jac,differences,derivative2,frob,lower,upper,PAIRS,left_inverse)
import core


def make_center(theta,guess,o=1):
    B,bh=certified_side(theta,guess['phih'])
    V,bv=certified_side([theta[k] for k in [0,2,1,3]],guess['phiv']);C=V.transpose()
    E=acb_mat([[1,1,1],[1,acb(0,theta[0]).exp(),acb(0,theta[1]).exp()],
               [1,acb(0,theta[2]).exp(),acb(0,theta[3]).exp()]])
    D=-(C*E.conjugate().transpose()*B.conjugate().transpose().inv())
    H=acb_mat(6,6)
    for i in range(3):
      for j in range(3):
        H[i,j]=E[i,j];H[i,3+j]=B[i,j];H[3+i,j]=C[i,j];H[3+i,3+j]=D[i,j]
    sh=signature(B).imag;sv=signature(V).imag
    if not o*sh>0 or not o*sv<0:raise ArithmeticError('orientation not certified')
    return H,dict(h=bh,v=bv,ImPsi_h_lower=lower(sh),ImPsi_v_upper=upper(sv))


def derivative_witness(theta,guess,M,v,V,X):
    H,meta=make_center(theta,guess)
    z=[H[i,k]*H[l,k].conjugate() for i,l in PAIRS for k in range(6)]
    J=real_jac(z);W=left_inverse(J,X)
    T=V-X*W*J*V
    U=T*M;dv=differences(U*v)
    hv=-(X*W*derivative2(z,dv,dv))
    v2=sum((v[i,0]**2 for i in range(v.nrows())),arb(0))
    norm=frob(hv)/v2
    return lower(norm),meta


def raw_witness(row,co,Mfloat,V,X):
    theta=[arb(row['theta0_'+str(i)]) for i in range(1,5)]
    direction=[0,0,0,1] if int(row['j'])==4 else [1,0,0,0]
    v=arb_mat([[x] for x in direction]);M=mat(Mfloat)
    h,meta=derivative_witness(theta,co,arb_mat([[int(i==j) for j in range(4)] for i in range(4)]),v,V,X)
    _,_,vh=np.linalg.svd(Mfloat);a=mat(vh[0].reshape(4,1))
    Mnorm=frob(M*a)/frob(a)
    r=arb(row['r']);n=arb(h)*Mnorm**2*r*r/2
    return dict(status='CERTIFIED',j=int(row['j']),seed_direction=direction,raw_hessian_lower=h,
                M_norm_lower=lower(Mnorm),scalar_recipe_n_lower=lower(n),M_norm_input_direction_hex=[float(x).hex() for x in vh[0]],center=meta)


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int,default=300);ap.add_argument('--precision',type=int,default=224);args=ap.parse_args();ctx.prec=args.precision
    rows=list(csv.DictReader((BASE.parent/'Z_completion_hessian/context/ball_table.csv').open()))
    data=np.load(BASE/'centres.npz');wit=np.load(BASE/'sample_witnesses.npz');V,X=geometry()
    scale=arb(999999999999)/1000000000000;started=time.time()
    with (BASE/'lower_witnesses.tmp.jsonl').open('w') as f:
      for i,row in enumerate(rows[:args.limit]):
        try:
          r=arb(row['r']);M=mat(data['M'][i]);w=mat(wit['w_hess_w'][i].reshape(4,1))*scale
          v=mat(wit['w_hess_dir'][i].reshape(4,1));w2=sum((w[k,0]**2 for k in range(4)),arb(0))
          if not w2<r*r:raise ArithmeticError('point not certified inside seed ball')
          dt=M*w;theta=[arb(row['theta0_'+str(k+1)])+dt[k,0] for k in range(4)]
          co={k:data[k][i] for k in ['H','theta','phih','phiv']}
          guess=core.completion(np.array([float(x.mid()) for x in theta]),previous=co)
          bound,meta=derivative_witness(theta,guess,M,v,V,X)
          out=dict(j=int(row['j']),status='CERTIFIED',hessian_w_lower=bound,point_inside_margin_lower=lower(r*r-w2),
                   w_unscaled_hex=[float(x).hex() for x in wit['w_hess_w'][i]],w_scale_numerator=999999999999,w_scale_denominator=1000000000000,
                   direction_hex=[float(x).hex() for x in wit['w_hess_dir'][i]],center=meta)
          wt=mat(wit['theta_hess_w'][i].reshape(4,1))*scale
          wt2=sum((wt[k,0]**2 for k in range(4)),arb(0))
          if not wt2<r*r:raise ArithmeticError('raw-theta witness not inside seed ball')
          dt=M*wt;thetat=[arb(row['theta0_'+str(k+1)])+dt[k,0] for k in range(4)]
          vt=mat(wit['theta_hess_dir'][i].reshape(4,1))
          guesst=core.completion(np.array([float(x.mid()) for x in thetat]),previous=co)
          I4=arb_mat([[int(k==l) for l in range(4)] for k in range(4)])
          rawbound,metat=derivative_witness(thetat,guesst,I4,vt,V,X)
          out.update(hessian_theta_lower=rawbound,theta_point_inside_margin_lower=lower(r*r-wt2),
                     theta_w_unscaled_hex=[float(x).hex() for x in wit['theta_hess_w'][i]],
                     theta_direction_hex=[float(x).hex() for x in wit['theta_hess_dir'][i]],theta_center=metat)
        except Exception as e:out=dict(j=int(row['j']),status='ERROR',error=repr(e))
        f.write(json.dumps(out)+'\n');f.flush()
        if (i+1)%25==0 or out['status']=='ERROR':print(i+1,out['j'],out['status'],round(time.time()-started,2),out.get('error',''),flush=True)
    (BASE/'lower_witnesses.tmp.jsonl').replace(BASE/'lower_witnesses.jsonl')
    raw=[]
    for j in [4,235]:
      idx=int(np.flatnonzero(data['j']==j)[0]);co={k:data[k][idx] for k in ['H','theta','phih','phiv']}
      raw.append(raw_witness(rows[idx],co,data['M'][idx],V,X))
    (BASE/'raw_scalar_witnesses.json').write_text(json.dumps(raw,indent=2))
    print(json.dumps(raw,indent=2),flush=True)
if __name__=='__main__':main()
