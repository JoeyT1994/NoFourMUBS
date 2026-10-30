#!/usr/bin/env python3
"""Exhaustive, correlated-parameter column cover for TC pattern snapshots.

Only Arb inequalities decide exclusions.  Numerical inverses and candidate
centres select multipliers and capture sets; neither is assumed correct.
The tree absorbs complete boxes inside supplied capture balls.  Consequently
it never resolves a moving root tube into arbitrarily small terminal boxes.
"""
import os
for _key in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[_key] = '1'
import argparse
import gzip
import hashlib
import json
import math
import time
from pathlib import Path
import numpy as np
from flint import arb, arb_mat, ctx

PAIRS = [(a,b) for a in range(6) for b in range(a+1,6)]

def A(x):
    z = arb(float.fromhex(x)) if isinstance(x,str) and '0x' in x.lower() else arb(x)
    if not z.is_finite():
        raise ValueError('nonfinite input')
    return z

def text(x): return x.str(radius=True, more=True)
def norm(v): return sum((x.abs_upper()**2 for x in v),arb(0)).sqrt().upper()
def col(v): return arb_mat([[x] for x in v])
def eye(n): return arb_mat([[int(i==j) for j in range(n)] for i in range(n)])
def numeric(M): return np.array([[float(M[i,j].mid()) for j in range(M.ncols())] for i in range(M.nrows())])
def helmert():
    E=arb_mat(6,5)
    for j in range(5):
        d=arb((j+1)*(j+2)).sqrt()
        for a in range(j+1): E[a,j]=1/d
        E[j+1,j]=-(j+1)/d
    return E

def ballbox(lo,hi): return (lo+hi)/2 + arb(0,((hi-lo)/2).upper())

def load_snapshot(path):
    raw=Path(path).read_bytes()
    doc=json.loads(gzip.decompress(raw) if raw[:2]==b'\x1f\x8b' else raw)
    if doc.get('schema')!='tc-pattern-snapshot-v1' or len(doc.get('columns',[]))!=6:
        raise ValueError('expected tc-pattern-snapshot-v1 with six columns')
    h=hashlib.sha256(json.dumps(doc['record'],sort_keys=True).encode()).hexdigest()
    if h!=doc['record_sha256']:
        raise ValueError('record hash mismatch')
    return doc,hashlib.sha256(raw).hexdigest()

class ColumnCover:
    def __init__(self,model,column,roots,capture_radius,rotate=True):
        self.r=A(model['r']).upper(); self.tau=A(model['tau']).upper()
        self.radius=A(column['phase_radius']).upper()
        if not (self.r>=0 and self.tau>=0 and self.radius>0):
            raise ValueError('invalid radius')
        if len(column['v0'])!=6 or any(len(root)!=5 for root in roots):
            raise ValueError('invalid column centre or candidate dimensions')
        self.E=helmert(); self.rotation=eye(5)
        self.root_original=[list(map(A,root)) for root in roots]
        if rotate:
            q=np.array([float(A(t).mid()) for t in model['Q0']]).reshape(6,6)
            v=np.array([float(A(t).mid()) for t in column['v0']])
            center=np.mean([[float(A(t).mid()) for t in root] for root in roots],axis=0) if roots else np.zeros(5)
            En=numeric(self.E)
            z=np.exp(1j*((v+En@center)[:,None]-q)); sm=z.sum(0)
            Jn=(2*np.real(np.conj(sm)[None,:]*1j*z)).T@En/6
            _,_,vh=np.linalg.svd(Jn,full_matrices=False)
            proposed=vh.T[:,::-1]
            qs=[]
            for j in range(5):
                vv=col([A(float(t)) for t in proposed[:,j]])
                for old in qs:vv-=old*(old.transpose()*vv)[0,0]
                norm2=(vv.transpose()*vv)[0,0]
                if not norm2>0:raise ArithmeticError('Cannot certify a nonzero Gram-Schmidt denominator')
                vv=vv/norm2.sqrt()
                if any(not vv[i,0].is_finite() for i in range(5)):
                    raise ArithmeticError('Nonfinite orthogonal basis enclosure')
                qs.append(vv)
            self.rotation=arb_mat([[qs[j][i,0] for j in range(5)] for i in range(5)])
        self.B=self.E*self.rotation
        self.ell=arb_mat([[self.B[a,k]-self.B[b,k] for k in range(5)] for a,b in PAIRS])
        self.ell_np=numeric(self.ell)
        self.root_coordinates=[]
        for root in self.root_original:
            q=self.rotation.transpose()*col(root)
            self.root_coordinates.append([q[k,0] for k in range(5)])
        self.caps=[A(x) for x in capture_radius] if isinstance(capture_radius,list) else [A(capture_radius) for _ in roots]
        if len(self.caps)!=len(roots) or any(not t>0 for t in self.caps):
            raise ValueError('invalid capture radii')
        v0=list(map(A,column['v0'])); q0=list(map(A,model['Q0']))
        U=[[A(x) for x in row] for row in model['U']]
        H2=[[A(x) for x in row] for row in model['H2']]
        X=[[A(x) for x in row] for row in model['X']]
        if len(q0)!=36 or len(U)!=36 or len(H2)!=36 or len(X)!=36:
            raise ValueError('invalid model dimensions')
        if any(len(row)!=4 for row in U) or any(len(row)!=16 for row in H2):
            raise ValueError('invalid derivative dimensions')
        if not X or any(len(row)!=len(X[0]) for row in X):
            raise ValueError('invalid remainder dimensions')
        self.re=arb_mat(6,15); self.im=arb_mat(6,15)
        self.gr=arb_mat(24,15); self.gi=arb_mat(24,15)
        self.qr=arb_mat(96,15);self.qi=arb_mat(96,15)
        self.normal_dim=len(X[0]);self.nr=arb_mat(6*self.normal_dim,15);self.ni=arb_mat(6*self.normal_dim,15)
        self.higher_mixed=[[arb(0) for p in range(15)] for j in range(6)]
        self.higher_cubic=[[arb(0) for p in range(15)] for j in range(6)]
        self.remainder=arb_mat(6,1); self.jdrift=arb_mat(6,5)
        self.phase_delta=[[arb(0) for p in range(15)] for j in range(6)]
        self.phase_remainder=[[arb(0) for p in range(15)] for j in range(6)]
        self.phase0=[[arb(0) for p in range(15)] for j in range(6)]
        for j in range(6):
            for p,(a,b) in enumerate(PAIRS):
                ai=6*a+j; bi=6*b+j
                phi=v0[a]-v0[b]-q0[ai]+q0[bi]
                self.phase0[j][p]=phi
                sn,cs=phi.sin_cos()
                self.re[j,p]=cs/3; self.im[j,p]=sn/3
                g=[U[bi][k]-U[ai][k] for k in range(4)]
                h2=[H2[bi][k]-H2[ai][k] for k in range(16)]
                xn=[X[bi][k]-X[ai][k] for k in range(len(X[0]))]
                rem=(self.r*self.r*norm([H2[bi][k]-H2[ai][k] for k in range(16)])/2
                     +self.tau*norm([X[bi][k]-X[ai][k] for k in range(len(X[0]))])).upper()
                delta=(self.r*norm(g)+rem).upper()
                self.phase_delta[j][p]=delta
                self.phase_remainder[j][p]=rem
                linear=self.r*norm(g)
                self.higher_mixed[j][p]=(linear*rem+rem*rem/2).upper()
                self.higher_cubic[j][p]=(delta**3/18).upper()
                for k in range(4):
                    for l in range(4):
                        hs=(h2[4*k+l]+h2[4*l+k])/2;gg=g[k]*g[l]
                        self.qr[16*j+4*k+l,p]=(sn*hs+cs*gg)/3
                        self.qi[16*j+4*k+l,p]=(cs*hs-sn*gg)/3
                for k in range(self.normal_dim):
                    self.nr[self.normal_dim*j+k,p]=cs*xn[k]/3
                    self.ni[self.normal_dim*j+k,p]=sn*xn[k]/3
                self.remainder[j,0]+=(rem+delta*delta/2)/3
                for k in range(4):
                    self.gr[4*j+k,p]=cs*g[k]/3; self.gi[4*j+k,p]=sn*g[k]/3
                for k in range(5):
                    self.jdrift[j,k]+=delta*self.ell[p,k].abs_upper()/3
        self.re_np=numeric(self.re);self.im_np=numeric(self.im)
        self.stats={k:0 for k in ('nodes','splits','radial_prunes','newton_prunes','residual_prunes','parameter_prunes','captures','contractions','preconditioner_failures')}
        self.capture_counts=[0]*len(roots)
        self.leaf_digest=hashlib.sha256()

    def radial_out(self,x):
        return sum((z.abs_lower()**2 for z in x),arb(0))>self.radius*self.radius

    def captured(self,x):
        for i,root in enumerate(self.root_coordinates):
            if sum(((x[k]-root[k]).abs_upper()**2 for k in range(5)),arb(0)) <= self.caps[i]*self.caps[i]:
                return i
        return None

    def residual_out(self,x):
        arg=self.ell*col(x)
        for j in range(6):
            f=sum(((self.phase0[j][p]+arg[p,0]+arb(0,self.phase_delta[j][p])).cos()/3 for p in range(15)),arb(0))
            if not f.contains(0): return True
        return False

    def parameter_out(self,x):
        """Separate residual from the shared four-dimensional parameter ball.

        F(c+d,H)=F0+J0*d+W0*w+error.  Multipliers can be arbitrary;
        only the final Arb scalar separation accepts a prune.
        """
        c=col([v.mid() for v in x]);h=[(x[i]-c[i,0]).abs_upper() for i in range(5)]
        arg=self.ell*c;sc=[arg[p,0].sin_cos() for p in range(15)]
        sv=col([v[0] for v in sc]);cv=col([v[1] for v in sc])
        F=self.re*cv-self.im*sv
        coeff=arb_mat([[self.im[j,p]*sc[p][1]+self.re[j,p]*sc[p][0] for p in range(15)] for j in range(6)])
        J=-(coeff*self.ell)
        fwlong=-(self.gi*cv+self.gr*sv)
        W=arb_mat([[fwlong[4*j+k,0] for k in range(4)] for j in range(6)])
        fn=numeric(F)[:,0];wn=numeric(W)
        try:
            u,sg,vh=np.linalg.svd(wn,full_matrices=True)
            wp=np.linalg.pinv(wn,rcond=1e-12)
            residual=fn-wn@(wp@fn)
            candidates=[u[:,4],u[:,5],residual,wp.T@(wp@fn)]
        except np.linalg.LinAlgError:return False
        dx=[sum((self.ell[p,k].abs_upper()*h[k] for k in range(5)),arb(0)).upper() for p in range(15)]
        err=col([sum(((self.phase_remainder[j][p]+(dx[p]+self.phase_delta[j][p])**2/2)/3 for p in range(15)),arb(0)).upper() for j in range(6)])
        multipliers=[]
        for candidate in candidates:
            cn=np.linalg.norm(candidate)
            if not math.isfinite(cn) or cn<1e-15:continue
            lam=arb_mat([[A(float(t/cn)) for t in candidate]])
            multipliers.append(lam)
            lf=(lam*F)[0,0];lj=lam*J;lw=lam*W
            le=sum((lam[0,j].abs_upper()*err[j,0] for j in range(6)),arb(0))
            bound=sum((lj[0,k].abs_upper()*h[k] for k in range(5)),arb(0))+self.r*norm([lw[0,k] for k in range(4)])+le
            if lf.abs_lower()>bound:
                return True
        # At small phase boxes, retain the signed quadratic H tensor and
        # common normal remainder before taking absolute bounds.
        if max(float(t) for t in h)>.04:return False
        qlong=-(self.qr*cv+self.qi*sv)
        qall=arb_mat([[qlong[16*j+k,0] for k in range(16)] for j in range(6)])
        nlong=-(self.ni*cv+self.nr*sv)
        nall=arb_mat([[nlong[self.normal_dim*j+k,0] for k in range(self.normal_dim)] for j in range(6)])
        e2=[sum(((self.re[j,p]*sc[p][1]-self.im[j,p]*sc[p][0]).abs_upper()*self.higher_mixed[j][p]+self.higher_cubic[j][p] for p in range(15)),arb(0)).upper() for j in range(6)]
        da=self.ell*col([x[k]-c[k,0] for k in range(5)])
        dsc=[da[p,0].sin_cos() for p in range(15)]
        for lam in multipliers:
            lf=(lam*F)[0,0];lw=lam*W;lq=lam*qall;ln=lam*nall
            qnorm=max(sum((lq[0,4*k+l].abs_upper() for l in range(4)),arb(0)).upper() for k in range(4))
            ph=self.r*norm([lw[0,k] for k in range(4)])+self.r*self.r*qnorm/2+self.tau*norm([ln[0,k] for k in range(self.normal_dim)])
            ph+=sum((lam[0,j].abs_upper()*e2[j] for j in range(6)),arb(0))
            cr=lam*self.re;ci=lam*self.im;pc=arb_mat(1,15)
            for p in range(15):
                re=cr[0,p]*sc[p][1]-ci[0,p]*sc[p][0]
                im=ci[0,p]*sc[p][1]+cr[0,p]*sc[p][0]
                pc[0,p]=-im*dsc[p][1]-re*dsc[p][0]
            lj=pc*self.ell
            la=arb_mat([[lam[0,j].abs_upper() for j in range(6)]])
            drift=la*self.jdrift
            xloss=sum(((lj[0,k].abs_upper()+drift[0,k].upper())*h[k] for k in range(5)),arb(0))
            if lf.abs_lower()>ph+xloss:return True
        return False

    def contract(self,x):
        c=[z.mid() for z in x]; d=col([x[k]-c[k] for k in range(5)])
        cn=np.array([float(z) for z in c]); an=self.ell_np@cn
        sm=np.sin(an); cm=np.cos(an)
        Jn=-(self.im_np*cm[None,:]+self.re_np*sm[None,:])@self.ell_np
        try:
            pn=np.linalg.pinv(Jn,rcond=1e-12)
            if not np.all(np.isfinite(pn)) or np.max(np.abs(pn))>1e10:
                self.stats['preconditioner_failures']+=1; return x
        except np.linalg.LinAlgError:
            self.stats['preconditioner_failures']+=1; return x
        P=arb_mat([[A(float(pn[i,j])) for j in range(6)] for i in range(5)])
        PA=arb_mat([[P[i,j].abs_upper() for j in range(6)] for i in range(5)])
        arg=self.ell*col(c)
        sc=[arg[p,0].sin_cos() for p in range(15)]
        sv=col([v[0] for v in sc]);cv=col([v[1] for v in sc])
        f0=P*(self.re*cv-self.im*sv)
        fwlong=-(self.gi*cv+self.gr*sv)
        fw=arb_mat([[fwlong[4*j+k,0] for k in range(4)] for j in range(6)])
        D=P*fw; rem=PA*self.remainder
        f=col([f0[i,0]+arb(0,(self.r*norm([D[i,k] for k in range(4)])+rem[i,0]).upper()) for i in range(5)])
        cr=P*self.re;ci=P*self.im
        ar= self.ell*d
        sd=[ar[p,0].sin_cos() for p in range(15)]
        # Precondition before interval phase expansion: all six equations for
        # one row pair share the same unknown column phase difference.
        coeff=arb_mat(5,15)
        for i in range(5):
            for p in range(15):
                re=cr[i,p]*sc[p][1]-ci[i,p]*sc[p][0]
                im=ci[i,p]*sc[p][1]+cr[i,p]*sc[p][0]
                coeff[i,p]=-im*sd[p][1]-re*sd[p][0]
        JP=coeff*self.ell; jd=PA*self.jdrift
        for i in range(5):
            for k in range(5): JP[i,k]+=arb(0,jd[i,k].upper())
        K=col(c)-f+(eye(5)-JP)*d
        out=[]
        for k in range(5):
            if not x[k].overlaps(K[k,0]): return None
            out.append(x[k].intersection(K[k,0]))
        return out

    def cover(self,max_nodes=200000,contract_steps=3,progress=False):
        started=time.monotonic()
        stack=[([arb(0,self.radius) for _ in range(5)],0)]
        maxdepth=0
        while stack and self.stats['nodes']<max_nodes:
            x,depth=stack.pop();maxdepth=max(maxdepth,depth);self.stats['nodes']+=1
            if depth>100:
                print(json.dumps({'unresolved_box':[text(z) for z in x],'depth':depth,'distances':[float(norm([x[k]-root[k] for k in range(5)])) for root in self.root_coordinates]}),flush=True)
                stack.append((x,depth));break
            if self.radial_out(x): self.stats['radial_prunes']+=1;continue
            hit=self.captured(x)
            if hit is not None:
                self.stats['captures']+=1; self.capture_counts[hit]+=1;continue
            if self.residual_out(x):
                self.stats['residual_prunes']+=1;continue
            if self.parameter_out(x):
                self.stats['parameter_prunes']+=1;continue
            deleted=False
            for it in range(contract_steps):
                oldwidth=max(float(z.rad()) for z in x)
                new=self.contract(x)
                if new is None:
                    self.stats['newton_prunes']+=1;deleted=True;break
                newwidth=max(float(z.rad()) for z in new)
                if newwidth<.99*oldwidth:self.stats['contractions']+=1
                x=new
                if self.radial_out(x):self.stats['radial_prunes']+=1;deleted=True;break
                hit=self.captured(x)
                if hit is not None:
                    self.stats['captures']+=1;self.capture_counts[hit]+=1;deleted=True;break
                if newwidth>.8*oldwidth:break
            if deleted:continue
            widths=[float(z.rad()) for z in x]; k=int(np.argmax(widths))
            lo,hi=x[k].lower(),x[k].upper(); mid=((lo+hi)/2).mid()
            if not (lo<mid and mid<hi):
                stack.append((x,depth));break
            left=x.copy();right=x.copy()
            left[k]=ballbox(lo,mid);right[k]=ballbox(mid,hi)
            stack.extend([(right,depth+1),(left,depth+1)])
            self.stats['splits']+=1
            if progress and self.stats['nodes']%10000==0:
                print(json.dumps({'nodes':self.stats['nodes'],'pending':len(stack),'elapsed':time.monotonic()-started}),flush=True)
        return {'complete_coverage':not stack,'stats':self.stats,'capture_counts':self.capture_counts,
                'capture_radii':[text(t) for t in self.caps],'root_centres':[[text(z) for z in root] for root in self.root_original],
                'pending_boxes':len(stack),'maximum_depth':maxdepth,'wall_seconds':time.monotonic()-started,
                'parameter_radius':text(self.r),'normal_remainder_radius':text(self.tau),
                'column_radius':text(self.radius),'rotation':[[text(self.rotation[i,j]) for j in range(5)] for i in range(5)]}

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('snapshot');ap.add_argument('proposal');ap.add_argument('--out',required=True)
    ap.add_argument('--columns',default='0,5');ap.add_argument('--capture-radius',default='0.06')
    ap.add_argument('--precision',type=int,default=128);ap.add_argument('--max-nodes',type=int,default=200000)
    ap.add_argument('--contract-steps',type=int,default=3);ap.add_argument('--no-rotate',action='store_true')
    ap.add_argument('--progress',action='store_true')
    args=ap.parse_args();ctx.prec=args.precision
    s,sha=load_snapshot(args.snapshot);p=json.loads(Path(args.proposal).read_text())
    rec={'schema':'tc-correlated-root-cover-v1','status':'NOT_ESTABLISHED','snapshot_sha256':sha,
         'checker_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'precision_bits':ctx.prec,
         'options':vars(args),'column_results':[],'scope':'Entire supplied H model and closed column phase balls; upstream model/cover validity is a premise.'}
    for c in map(int,args.columns.split(',')):
        roots=[r['x'] for r in p['columns'][c]['roots']]
        model=ColumnCover(s['model'],s['columns'][c],roots,args.capture_radius,rotate=not args.no_rotate)
        result=model.cover(args.max_nodes,args.contract_steps,args.progress);result['column']=c
        rec['column_results'].append(result)
        print(json.dumps({'column':c,**{k:v for k,v in result.items() if k not in ('rotation','root_centres')}}),flush=True)
        Path(args.out).write_text(json.dumps(rec,indent=2)+'\n')
        if not result['complete_coverage']:break
    if len(rec['column_results'])==len(args.columns.split(',')) and all(r['complete_coverage'] for r in rec['column_results']):
        rec['status']='COLUMNS_CAPTURED'
    Path(args.out).write_text(json.dumps(rec,indent=2)+'\n')

if __name__=='__main__':main()
