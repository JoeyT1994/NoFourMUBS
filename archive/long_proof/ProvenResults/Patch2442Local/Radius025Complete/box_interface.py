"""Exact closed circular seed-box membership for radius 1/40 radians."""
from fractions import Fraction as Q
RADIUS=Q(1,40)
SEEDS={'2442':(2,4,4,2),'4224':(4,2,2,4)}

def atan_bounds(q,n=64):
    s=sum((Q((-1)**k,(2*k+1)*q**(2*k+1)) for k in range(n)),Q(0))
    t=Q((-1)**n,(2*n+1)*q**(2*n+1));return min(s,s+t),max(s,s+t)
def pi_bounds():
    a,b=atan_bounds(5);c,d=atan_bounds(239);return 16*a-4*d,16*b-4*c

def vectors(row):
    if not isinstance(row,dict):raise ValueError('a box must be an object')
    out=[]
    for key in ('centers','radii'):
        v=row.get(key)
        if not isinstance(v,list) or len(v)!=4 or any(type(s)!=str for s in v):raise ValueError('coordinates require four exact rational strings')
        out.append([Q(s) for s in v])
    if any(x<0 for x in out[1]):raise ValueError('negative box radius')
    return out

def certify(row,*args,**kwargs):
    c,r=vectors(row);mode=row.get('coordinate_system','absolute_radians');result={'id':row.get('id'),'ok':False,'radius_radians':'1/40','statement':'no_physical_completion_in_strict_D0'}
    if mode=='seed_radius_units':
        label=str(row.get('seed',''));lifts=row.get('lifts',[0]*4)
        if label not in SEEDS or not isinstance(lifts,list) or len(lifts)!=4 or any(type(k)!=int for k in lifts):raise ValueError('invalid exact seed/lift specification')
        if not all(abs(x)+y<=1 for x,y in zip(c,r)):result['reason']='outside_radius';return result
        if not any(abs(x)>y for x,y in zip(c,r)):result['reason']='seed_touching';return result
        result.update(ok=True,seed=label,reason='exact_scaled_whole_box_membership');return result
    if mode not in ('absolute_radians','radians'):raise ValueError('unsupported coordinate system')
    pl,ph=pi_bounds();pm=(pl+ph)/2
    for label,roots in SEEDS.items():
        coords=[]
        for x,y,m in zip(c,r,roots):
            base=(x-pm*Q(m,3))/(2*pm);k0=base.numerator//base.denominator;found=None
            for k in range(k0-2,k0+3):
                a=Q(m,3)+2*k;sl=min(a*pl,a*ph);sh=max(a*pl,a*ph);lo=x-y-sh;hi=x+y-sl
                if -RADIUS<=lo and hi<=RADIUS:found=(k,lo,hi);break
            if found is None:break
            coords.append(found)
        if len(coords)==4 and any(lo>0 or hi<0 for k,lo,hi in coords):
            result.update(ok=True,seed=label,reason='exact_absolute_whole_box_membership',membership=[{'lift':k,'offset_lower':str(lo),'offset_upper':str(hi)} for k,lo,hi in coords]);return result
    result['reason']='outside_seed_touching_or_unresolved_membership';return result

def controls():
    inside=[];outside=[]
    for label in SEEDS:
        inside.append({'id':label+'boundary','coordinate_system':'seed_radius_units','seed':label,'centers':['3/4','0','0','0'],'radii':['1/4','1/8','1/8','1/8']})
        inside.append({'id':label+'wrapped','coordinate_system':'seed_radius_units','seed':label,'lifts':[3,-2,0,1],'centers':['-3/4','0','0','0'],'radii':['1/4','1/8','1/8','1/8']})
    for v in ('11/10','1'):
        outside.append({'id':'outside'+v,'coordinate_system':'seed_radius_units','seed':'2442','centers':[v,'0','0','0'],'radii':['1/8','0','0','0']})
    outside.append({'id':'seed_touching','coordinate_system':'seed_radius_units','seed':'2442','centers':['1/2','0','0','0'],'radii':['1/2','1/8','1/8','1/8']})
    assert all(certify(x)['ok'] for x in inside);assert all(not certify(x)['ok'] for x in outside)
    try:certify({'centers':[0.0]*4,'radii':['0']*4});raise AssertionError('floating input accepted')
    except ValueError:pass
    pl,ph=pi_bounds();physical=[]
    for delta in (Q(1,100),Q(1,5),Q(1,2)):
        centers=[];radii=[]
        for coefficient,shift in ((Q(-2,3),Q(0)),(Q(-1,3),delta),(Q(0),Q(0)),(Q(-1),delta)):
            lo=min(coefficient*pl,coefficient*ph)+shift;hi=max(coefficient*pl,coefficient*ph)+shift
            centers.append((lo+hi)/2);radii.append((hi-lo)/2+Q(1,10**6))
        for order in ((0,1,2,3),(0,2,1,3)):
            row={'id':'physical_'+str(len(physical)),'centers':[str(centers[i]) for i in order],'radii':[str(radii[i]) for i in order]}
            assert not certify(row)['ok'];physical.append(row)
    return {'status':'PASS','scaled_boundary_wrap_accepted':len(inside),'outside_seed_touching_rejected':len(outside),'floating_input_rejected':True,'physical_control_boxes_rejected':len(physical)}
