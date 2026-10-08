"""Use the exact side modulus |Pi|=|C1|=|C2|=sqrt(eta) in support bounds.

An outward whole-box eta bound supplies one dyadic radius. No pointwise
or proposal estimate is substituted into the rigorous support function.
"""
from pathlib import Path
import inspect,json,math,time
import numpy as np
from flint import arb,ctx
import radical_dual,conditioned_dual,higher_support
from j_localizing_dual import data as j_data,exact_polynomials as j_polynomials
from j_localizing import exact_combined
from reconstruction_polynomials import combined_polynomials
from scalar_bernstein import ScalarBernstein,conditions
from direct_bernstein_audit import audit
from dual_parent_cover import guard
HERE=Path(__file__).resolve().parent

def radii(path):
    assert len(path)%4==0
    T=ScalarBernstein(len(path)//4,conditions()['eta_plus']);co=T.coefficients([path]);bounds=T.enclosures(co,audit=False)
    check=audit(T,path,co[0],bounds[0]);lo,hi=bounds[0]
    assert hi.is_finite() and hi>0
    bits=20;num=min(3*2**bits,math.ceil(float(hi.sqrt().upper())*2**bits)+1)
    rad=arb(num)/2**bits
    assert rad>0 and (rad*rad>=hi or num==3*2**bits)
    return [1.,1.,1.,num/2**bits,num/2**bits,num/2**bits]*2,dict(
        numerator=num,bits=bits,eta_bound=[str(lo),str(hi)],independent_audit=check,
        justification='For each physical side, |Pi|^2=eta and C1=u*conj(Pi), C2=v*conj(Pi), with |u|=|v|=1. Eta is invariant under transpose.')

def propose(theta,sigma,h,radii,use_j=False):
    source=inspect.getsource(radical_dual.propose_bernstein)
    source=source.replace('range(13)','range(centre[0].shape[0])').replace('reshape(117,81*26)','reshape(9*centre[0].shape[0],81*26)')
    namespace=vars(radical_dual).copy();namespace['RADII']=radii;exec(source,namespace)
    result=namespace['propose_bernstein'](theta,sigma,h,j_data if use_j else conditioned_dual.conditioned_data)
    result['scalar_names']=['radical_chord']+conditioned_dual.NAMES
    result['uses_J_matrices']=use_j
    if use_j:result['J_bound']='21/8'
    return result

def support(polys,nums,h,denominator,rad_record,degree=5,hull_degree=3):
    rad=arb(rad_record['numerator'])/2**rad_record['bits']
    source=inspect.getsource(higher_support.taylor_support)
    source=source.replace('def support(c,absolute=False):','def support(c,absolute=False):\n        assert all(x.is_finite() for x in c)')
    source=source.replace('return result.upper()','assert result.is_finite()\n        return result.upper()')
    namespace=vars(higher_support).copy();namespace['RADII']=[arb(1)]*3+[rad]*3+[arb(1)]*3+[rad]*3;exec(source,namespace)
    result=namespace['taylor_support'](polys,nums,h,degree=degree,denominator=denominator,hull_degree=hull_degree)
    assert math.isfinite(result['support_upper_decimal']);return result

if __name__=='__main__':
    ctx.prec=160;path='111011110001111001101011';den=64
    nums=[2*int(path[j::4],2)+1-den for j in range(4)];theta=np.pi*np.array(nums)/den;h=arb.pi()/den
    rr,record=radii(path);g=guard(nums,den,h);assert g is not None;rows=[]
    for sigma in [1,-1]:
        start=time.monotonic();proposal=propose(theta,sigma,float(h.mid()),rr,use_j=False)
        ps,shifts=conditioned_dual.exact_polynomials(*combined_polynomials(sigma),proposal)
        check=support(ps,nums,h,den,record)
        rows.append(dict(path=path,sigma=sigma,radius='pi/64',side_radius=record,proposal=proposal,shifts=shifts,Tao_absence=g,check=check))
        (HERE/'eta_bounded_second_parent.json').write_text(json.dumps(dict(scope='Verified varying side modulus; finite-parent candidate, not global confinement',global_confinement_proved=False,rows=rows),indent=2)+'\n')
        print(sigma,proposal['quadratic_objective'],check['support_upper_decimal'],'seconds',time.monotonic()-start,flush=True)
