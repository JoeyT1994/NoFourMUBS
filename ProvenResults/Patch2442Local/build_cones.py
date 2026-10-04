"""Build a complete exact dyadic-interval cover of the stated conical caps.
This is an explicitly PARTIAL angular domain, not the whole seed ball.
"""
import sys
sys.dont_write_bytecode=True
import time,json,gzip
from pathlib import Path
from fractions import Fraction as Q
from cones import scaled,RADIUS
from intervals import IV,SCALE
HERE=Path(__file__).resolve().parent
EPSILON=Q(1,200)

def root_bounds(sign):
    big=(-Q(1),-Q(1)+EPSILON) if sign<0 else (Q(1)-EPSILON,Q(1))
    return [(-EPSILON,EPSILON),(-EPSILON,EPSILON),big,(Q(0),RADIUS)]

def single_cell(bounds,sign,fixed):
    vv=[IV(0) for _ in range(4)]
    vv[1]=IV(*bounds[0]);vv[2]=IV(*bounds[1]);vv[fixed]=IV(sign);vv[3-fixed]=IV(*bounds[2]);rho=IV(*bounds[3])
    rr,dd,AB=scaled(vv,rho)
    if (rho**4*rr).hi>=243*SCALE:return None
    for j,(a,b) in enumerate(AB):
        gap=b-3*rho**2*dd
        if a.hi<=0 and gap.lo>0:
            return {'pair':j,'Abar_upper':str(Q(a.hi,SCALE)),
                    'Bbar_minus_3rho2Delta_lower':str(Q(gap.lo,SCALE)),
                    'R_upper':str(Q((rho**4*rr).hi,SCALE))}
    return None

def halves(bounds,axis):
    lo,hi=bounds[axis];mid=(lo+hi)/2
    a=list(bounds);b=list(bounds);a[axis]=(lo,mid);b[axis]=(mid,hi)
    return a,b

def build_one(sign,fixed,maxnodes=25000):
    visited=0;leaves=0;maxdepth=0;start=time.process_time()
    def rec(bounds,depth=0):
        nonlocal visited,leaves,maxdepth
        visited+=1;maxdepth=max(maxdepth,depth)
        if visited>maxnodes:raise RuntimeError('cover budget exhausted; no theorem certificate written')
        witness=single_cell(bounds,sign,fixed)
        if witness is not None:
            leaves+=1;return {'leaf':witness}
        weights=[Q(1),Q(1),Q(1),Q(3)]
        axis=max(range(4),key=lambda i:(bounds[i][1]-bounds[i][0])/weights[i])
        a,b=halves(bounds,axis)
        return {'axis':axis,'left':rec(a,depth+1),'right':rec(b,depth+1)}
    tree=rec(root_bounds(sign))
    return {'sign':sign,'fixed_coordinate':fixed,'tree':tree,'build_statistics':{'nodes':visited,'leaves':leaves,'maxdepth':maxdepth,'cpu_seconds':time.process_time()-start}}

def main():
    start=time.process_time();out={'scope':'directional_caps_only','radius':str(RADIUS),'epsilon':str(EPSILON),'charts':[],'other_fixed_coordinate_by_symmetry':True}
    for sign,fixed in [(-1,0),(1,0)]:
        ch=build_one(sign,fixed);out['charts'].append(ch);print(sign,fixed,ch['build_statistics'],flush=True)
        with gzip.open(HERE/'cones_certificate.partial.json.gz','wt') as f:json.dump(out,f,separators=(',',':'))
    out['build_cpu_seconds']=time.process_time()-start
    with gzip.open(HERE/'cones_certificate.json.gz','wt') as f:json.dump(out,f,separators=(',',':'))
    (HERE/'cones_certificate.partial.json.gz').unlink(missing_ok=True)
    print('completed',out['build_cpu_seconds'],flush=True)
if __name__=='__main__':main()
