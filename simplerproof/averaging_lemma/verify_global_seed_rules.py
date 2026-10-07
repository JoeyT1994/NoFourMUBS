"""Exact algebra and physical controls for the global seed reductions."""
import sys,json,itertools,hashlib
from pathlib import Path
from fractions import Fraction as Q
import sympy as S
import numpy as np
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierCornerRigidity'))
from exact_algebra import determinant_terms,corner_polynomials,terms
sys.path.insert(0,str(ROOT/'RouteC/averaging'))
from common import R_all,CORNERS
from global_seed_cover import evaluate

def main():
    a,b,c,d=S.symbols('a b c d',nonzero=True);variables=(a,b,c,d)
    x=[S.Integer(1),a,b];y=[S.Integer(1),c,d];z=[yy/xx for xx,yy in zip(x,y)]
    sine=lambda t:(t-1/t)/(2*S.I)
    q=0
    for i,j in itertools.permutations(range(3),2):
        e,f=[v for v in range(3) if v!=i];m,n=[v for v in range(3) if v!=j]
        seq=[2*e,2*f,2*m+1,2*n+1,2*i,2*j+1]
        sign=(-1)**sum(seq[k]>seq[l] for k,l in itertools.combinations(range(6),2))
        q+=sign*sine(x[f]/x[e])*sine(y[n]/y[m])*sine(z[i]/z[j])
    signed=terms(S.expand(8*S.I*q),variables);D=determinant_terms()
    assert signed==D or signed=={k:-v for k,v in D.items()}
    corner_polynomials() # Independently checks R_minus=-D^2.
    p,J,W=S.symbols('p J W')
    r=lambda j:4*(27-3*p+j)**2*(9-p+j)-(W-(p-9)*(p-18)+(p-15)*j)**2
    assert S.expand(r(J)-r(-J)-4*J*(2*J**2-W*p+15*W+p**3-12*p**2+27*p))==0
    controls=0
    for a,b in [(Q(1,160),Q(-1,160)),(Q(1,160),Q(0)),(Q(1,160),Q(1,160))]:
        phase=[[Q(i*j,3)+(a if i%2 and j%3==1 else b if i%2 and j%3==2 else 0) for j in range(6)] for i in range(6)]
        for transpose in [False,True]:
            ph=np.array(phase,dtype=object);ph=ph.T if transpose else ph
            H=np.exp(1j*np.pi*np.array(ph,float));rvals=R_all(H)
            assert rvals.max()<5 and np.max(np.abs(H@H.conj().T-6*np.eye(6)))<1e-12
            rr,cc=CORNERS[int(rvals.argmax())];seed=None
            for pr,pc,tr in itertools.product(itertools.permutations(rr),itertools.permutations(cc),[False,True]):
                ep=ph[np.ix_(pr,pc)];ep=ep.T if tr else ep
                E=np.exp(1j*np.pi*np.array(ep,float));G=6*np.eye(3)-E@E.conj().T;V=6*np.eye(3)-E.T@E.conj()
                h=np.abs(G[[1,2,2],[0,0,1]])**2;v=np.abs(V[[1,2,2],[0,0,1]])**2
                if min(h[0]-h[1],h[1]-h[2],v[0]-v[1],v[1]-v[2],h[0]-v[0])>=-1e-10:
                    seed=[(ep[i,j]-ep[i,0]-ep[0,j]+ep[0,0]+1)%2-1 for i in [1,2] for j in [1,2]];break
            assert seed is not None
            center=[Q(0)]*4;radius=[Q(1)]*4;path=''
            for k in range(44):
                j=k%4;bit=int(seed[j]>=center[j]);radius[j]/=2;center[j]+=(1 if bit else -1)*radius[j];path+=str(bit)
                if len(path) in [20,32,44]:assert evaluate(path) is None;controls+=1
    report=dict(status='PASS',exact_sine_determinant_identity=True,exact_R_difference_identity=True,
        numerical_physical_controls=controls,scope='Rules and controls only; not global confinement',
        source_sha256={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),HERE/'global_seed_cover.py']})
    (HERE/'global_seed_rules_receipt.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
if __name__=='__main__':main()
