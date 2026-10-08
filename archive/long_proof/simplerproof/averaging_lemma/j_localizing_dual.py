"""Numerical proposals and rigorous replay with twelve additional J matrices."""
import inspect,json,time,math
import numpy as np
from flint import arb,ctx
import radical_dual,conditioned_dual,higher_support
from j_localizing import combined_data,exact_combined
from reconstruction_polynomials import combined_polynomials
from verify_dual_witness import rounded_witness
from dual_parent_cover import guard
from pathlib import Path
HERE=Path(__file__).resolve().parent

def data(theta,sigma):
    A,E,C=conditioned_dual.conditioned_data(theta,sigma)
    return np.concatenate([A,combined_data(theta)]),E,C

def propose(theta,sigma,h):
    source=inspect.getsource(radical_dual.propose_bernstein)
    assert source.count('range(13)')==1 and source.count('reshape(117,81*26)')==1
    source=source.replace('range(13)','range(centre[0].shape[0])').replace('reshape(117,81*26)','reshape(9*centre[0].shape[0],81*26)')
    namespace=vars(radical_dual).copy();exec(source,namespace)
    result=namespace['propose_bernstein'](theta,sigma,h,data)
    result['scalar_names']=['radical_chord']+conditioned_dual.NAMES
    result['J_bound']='21/8';return result

def exact_polynomials(A,E,AJ,proposal):
    assert proposal['J_bound']=='21/8'
    assert len(proposal['Y_real'])==25
    core={**proposal,'Y_real':proposal['Y_real'][:13],'Y_imag':proposal['Y_imag'][:13]}
    polys,shifts=conditioned_dual.exact_polynomials(A,E,core)
    ys,lam,all_shifts=rounded_witness(proposal)
    assert all_shifts[:13]==shifts
    for k in range(26):
        for n in range(12):
            for i in range(3):
                for j in range(3):polys[k]+=ys[13+n][i][j]*AJ[n,j,i,k]
        assert polys[k].d==polys[k].conjugate().d and polys[k].den==polys[k].conjugate().den
    return polys,all_shifts

def checked_support(*args,**kwargs):
    source=inspect.getsource(higher_support.taylor_support)
    source=source.replace('def support(c,absolute=False):','def support(c,absolute=False):\n        assert all(x.is_finite() for x in c)')
    assert source.count('return result.upper()')==1
    source=source.replace('return result.upper()','assert result.is_finite()\n        return result.upper()')
    namespace=vars(higher_support).copy();exec(source,namespace)
    result=namespace['taylor_support'](*args,**kwargs)
    assert math.isfinite(result['support_upper_decimal'])
    return result

if __name__=='__main__':
    ctx.prec=160;path='111011110001111001101011';den=64
    nums=[2*int(path[j::4],2)+1-den for j in range(4)];theta=np.pi*np.array(nums)/den;h=arb.pi()/den
    g=guard(nums,den,h);assert g is not None
    AJ=exact_combined();rows=[]
    for sigma in [1,-1]:
        start=time.monotonic();proposal=propose(theta,sigma,float(h.mid()))
        print('PROPOSAL',sigma,proposal['quadratic_objective'],flush=True)
        polys,shifts=exact_polynomials(*combined_polynomials(sigma),AJ,proposal)
        check=checked_support(polys,nums,h,degree=5,denominator=den,hull_degree=3)
        rows.append(dict(path=path,sigma=sigma,radius='pi/64',proposal=proposal,Tao_absence=g,shifts=shifts,check=check,seconds=time.monotonic()-start))
        (HERE/'j_localizing_second_parent.json').write_text(json.dumps(dict(scope='Proposals with independently rounded whole-box replay; no global claim',global_confinement_proved=False,rows=rows),indent=2)+'\n')
        print('CHECK',sigma,check['support_upper_decimal'],'seconds',time.monotonic()-start,flush=True)
