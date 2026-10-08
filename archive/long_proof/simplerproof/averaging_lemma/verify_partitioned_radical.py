"""Verify radical-bin algebra and independently replay accepted finite regions."""
from pathlib import Path
from fractions import Fraction as F
import argparse,json,hashlib,itertools,math
import numpy as np
import sympy as sp
from flint import arb,ctx
import partitioned_radical_dual as pd
from reconstruction_polynomials import combined_polynomials,LP
from j_localizing import exact_combined as exact_j
from half_p_localizing import exact_combined as exact_p
from verify_dual_witness import rounded_witness
from eta_bounded_dual import radii
from dual_parent_cover import guard
import conditioned_dual
HERE=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def hashes(obj):
    for key in ['sources','inputs','original_input']:
        for name,h in obj.get(key,{}).items():assert digest(HERE/name)==h,(key,name)

def algebra(AJ,AP,models):
    q,l,u=sp.symbols('q l u')
    assert sp.expand((l+u)*q-l*u-q*q-(q-l)*(u-q))==0
    # Compare the exact, rounded Laurent aggregate to an independent
    # direct matrix contraction for arbitrary dyadic weights at 4 points.
    rng=np.random.default_rng(1871);max_error=0.
    for sg in [1,-1]:
        yy=[]
        for _ in range(37):
            z=(rng.integers(-3,4,(3,3))+1j*rng.integers(-3,4,(3,3)))/64
            yy.append(z@z.conj().T)
        yy=np.array(yy);ll=(rng.integers(-3,4,12)+1j*rng.integers(-3,4,12))/64
        proposal=dict(Y_real=yy.real.tolist(),Y_imag=yy.imag.tolist(),lambda_real=ll.real.tolist(),lambda_imag=ll.imag.tolist(),mu=(rng.integers(0,5,10)/64).tolist(),scalar_names=['radical_chord']+conditioned_dual.NAMES,J_bound='21/8',half_p_localizers=True,q_interval=['1/2','3/2'])
        ps,_=pd.exact_polynomials(*models[sg],AJ,AP,proposal)
        ys,lam,_=rounded_witness(proposal)
        Y=np.array([[[z.evaluate([0]*4) for z in row] for row in y] for y in ys]);lam=np.array([z.evaluate([0]*4) for z in lam])
        for theta in [np.array([.3,1.2,-.7,2.1]),np.array([1.4,-2.2,.8,2.9])]:
            A,E,C=pd.data(theta,sg,proposal['q_interval'])
            expected=(np.einsum('aij,ajik->k',Y,A)-np.conj(lam)@E).real+np.array(proposal['mu'])@C
            actual=np.array([p.evaluate(theta).real for p in ps])
            err=float(np.max(abs(expected-actual)));assert math.isfinite(err) and err<1e-8;max_error=max(max_error,err)
    # Endpoints give the exact support of a linear form on [l,u].
    for lo,hi in [(F(0),F(9,4)),(F(1,2),F(3,2))]:
        for c in map(F,[-7,-1,0,1,7]):
            assert max(c*lo,c*hi)==c*(lo+hi)/2+abs(c)*(hi-lo)/2
    # Constant-polynomial controls test the actual compiled support routine,
    # including negative cq and the doubled side-radius weights.
    for cq in [-7,0,7]:
        ps=[LP(0) for _ in range(26)];ps[0]=LP(-100);ps[1]=LP(3);ps[2]=LP(4);ps[-1]=LP(cq)
        out=pd.support(ps,[0]*4,arb(1)/64,64,dict(numerator=2,bits=0),['1/2','3/2'])
        exact=-95+max(F(cq,2),F(3*cq,2))
        assert abs(out['support_upper_decimal']-float(exact))<1e-9
    return dict(radical_chord_identity_exact=True,interval_support_identity_exact=True,constant_support_controls=3,direct_aggregate_controls=4,maximum_error=max_error)

def replay(inputs,output):
    ctx.prec=192
    for name in ['half_p_localizing_algebra_receipt.json','j_localizing_algebra_receipt.json','eta_support_receipt.json','half_p_certificate.json']:
        hashes(json.loads((HERE/name).read_text()))
    AJ=exact_j();AP=exact_p();models={s:combined_polynomials(s) for s in [1,-1]}
    controls=algebra(AJ,AP,models);regions=[]
    for name in inputs:
        proof=json.loads((HERE/name).read_text());hashes(proof);assert proof['complete']
        parent=proof['parent'];den=2**(len(parent)//4);assert len(parent)%4==0
        nums=[2*int(parent[j::4],2)+1-den for j in range(4)];h=arb.pi()/den
        rr,record=radii(parent);g=guard(nums,den,h);assert g is not None
        ends=list(map(F,proof['radical_endpoints']));assert ends[0]==0 and ends[-1]==F(9,4) and all(a<b for a,b in zip(ends,ends[1:]))
        expected={(sg,tuple(map(str,interval))) for sg in [-1,1] for interval in zip(ends,ends[1:])}
        assert len(proof['rows'])==len(expected)
        assert {(r['sigma'],tuple(r['q_interval'])) for r in proof['rows']}==expected
        checks=[]
        for row in proof['rows']:
            assert row['path']==parent and row['proposal']['q_interval']==row['q_interval']
            assert record['numerator']==row['side_radius']['numerator'] and record['bits']==row['side_radius']['bits']
            ps,shifts=pd.exact_polynomials(*models[row['sigma']],AJ,AP,row['proposal'])
            result=pd.support(ps,nums,h,den,record,row['q_interval'],row['check']['Taylor_degree'],row['check']['hull_degree'])
            assert result['verified'],(parent,row['sigma'],result)
            checks.append(dict(sigma=row['sigma'],q_interval=row['q_interval'],check=result))
        regions.append(dict(parent=parent,checks=checks,Tao_absence=g,side_radius=record,both_signs_and_all_radicals_verified=True))
        print('Replayed',parent,'checks',len(checks),flush=True)
    result=dict(status='PASS_PARTITIONED_RADICAL_REGIONS',global_confinement_proved=False,solver_used=False,algebra_controls=controls,regions=regions,
        inputs={name:digest(HERE/name) for name in inputs},sources={name:digest(HERE/name) for name in ['verify_partitioned_radical.py','partitioned_radical_dual.py','half_p_localizing.py','half_p_localizing_algebra_receipt.json','half_p_certificate.json','eta_bounded_dual.py','eta_support_receipt.json','j_localizing.py','j_localizing_dual.py','j_localizing_algebra_receipt.json','conditioned_dual.py','radical_dual.py','higher_support.py','verify_dual_witness.py','reconstruction_polynomials.py','scalar_bernstein.py','seed_bernstein.py','seed_taylor.py','dual_parent_cover.py','direct_bernstein_audit.py']})
    (HERE/output).write_text(json.dumps(result,indent=2)+'\n');return result
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('inputs',nargs='+');ap.add_argument('--output',default='partitioned_radical_replay.json');args=ap.parse_args();replay(args.inputs,args.output)
