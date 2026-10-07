"""Reconstruction duals with homogeneous localizers and a bounded radical.

For q in [lo,hi], q^2=R implies (lo+hi)q-lo*hi-R>=0. The exact
checker uses dyadic endpoints and the support of this same q interval.
Floating optimization only proposes weights; acceptance is outward Arb.
"""
import inspect,math
from fractions import Fraction as F
import numpy as np
from flint import arb
import radical_dual,conditioned_dual,higher_support
import j_localizing_dual as jd
import half_p_localizing as hp
from reconstruction_polynomials import LP
from verify_dual_witness import rounded_witness

def endpoints(interval):
    lo,hi=map(F,interval)
    assert 0<=lo<hi<=F(9,4)
    assert all(x.denominator&(x.denominator-1)==0 for x in [lo,hi])
    return lo,hi

def dyadic(x):
    x=F(x);assert x.denominator&(x.denominator-1)==0
    return LP.dyadic(x.numerator,0,x.denominator.bit_length()-1)

def data(theta,sigma,interval):
    lo,hi=endpoints(interval);A,E,C=jd.data(theta,sigma)
    C[0,0]-=float(lo*hi);C[0,-1]=float(lo+hi)
    return np.concatenate([A,hp.combined_data(theta)]),E,C

def propose(theta,sigma,h,radii,interval):
    lo,hi=endpoints(interval)
    source=inspect.getsource(radical_dual.propose_bernstein)
    assert source.count('range(13)')==1 and source.count('reshape(117,81*26)')==1
    source=source.replace('range(13)','range(centre[0].shape[0])').replace('reshape(117,81*26)','reshape(9*centre[0].shape[0],81*26)')
    assert source.count('np.sqrt(5)*cp.pos(co[:,-1])')==1
    source=source.replace('np.sqrt(5)*cp.pos(co[:,-1])','Q_MID*co[:,-1]+Q_RAD*cp.abs(co[:,-1])')
    namespace=vars(radical_dual).copy()
    namespace.update(RADII=radii,Q_MID=float((lo+hi)/2),Q_RAD=float((hi-lo)/2))
    exec(source,namespace)
    result=namespace['propose_bernstein'](theta,sigma,h,lambda t,s:data(t,s,interval))
    result.update(scalar_names=['radical_chord']+conditioned_dual.NAMES,J_bound='21/8',half_p_localizers=True,q_interval=[str(lo),str(hi)])
    assert math.isfinite(result['quadratic_objective'])
    return result

def exact_polynomials(A,E,AJ,AP,proposal):
    assert proposal['half_p_localizers'] and len(proposal['Y_real'])==37
    lo,hi=endpoints(proposal['q_interval'])
    core={**proposal,'Y_real':proposal['Y_real'][:25],'Y_imag':proposal['Y_imag'][:25]}
    ps,shifts=jd.exact_polynomials(A,E,AJ,core)
    ys,lam,all_shifts=rounded_witness(proposal);assert shifts==all_shifts[:25]
    mu=LP.dyadic(max(0,round(F(proposal['mu'][0])*2**40)),0,40)
    ps[0]-=mu*dyadic(lo*hi);ps[-1]+=mu*dyadic(lo+hi-F(9,4))
    for k in range(26):
        for n in range(12):
            for i in range(3):
                for j in range(3):ps[k]+=ys[25+n][i][j]*AP[n,j,i,k]
        assert ps[k].d==ps[k].conjugate().d and ps[k].den==ps[k].conjugate().den
    return ps,all_shifts

def support(polys,nums,h,denominator,radius_record,interval,degree=5,hull_degree=3):
    lo,hi=endpoints(interval)
    aa=lambda q:arb(q.numerator)/q.denominator
    rad=arb(radius_record['numerator'])/2**radius_record['bits']
    source=inspect.getsource(higher_support.taylor_support)
    source=source.replace('def support(c,absolute=False):','def support(c,absolute=False):\n        assert all(x.is_finite() for x in c)')
    old='arb(5).sqrt()*(abs(c[-1]) if absolute else max(arb(0),c[-1].upper()))'
    assert source.count(old)==1
    source=source.replace(old,'(Q_HI*abs(c[-1]) if absolute else Q_MID*c[-1]+Q_RAD*abs(c[-1]))')
    assert source.count('arb(5).sqrt()*errors[-1]')==1
    source=source.replace('arb(5).sqrt()*errors[-1]','Q_HI*errors[-1]')
    source=source.replace('return result.upper()','assert result.is_finite()\n        return result.upper()')
    namespace=vars(higher_support).copy()
    namespace.update(RADII=[arb(1)]*3+[rad]*3+[arb(1)]*3+[rad]*3,Q_HI=aa(hi),Q_MID=aa((lo+hi)/2),Q_RAD=aa((hi-lo)/2))
    exec(source,namespace)
    result=namespace['taylor_support'](polys,nums,h,degree=degree,denominator=denominator,hull_degree=hull_degree)
    assert math.isfinite(result['support_upper_decimal'])
    return result
