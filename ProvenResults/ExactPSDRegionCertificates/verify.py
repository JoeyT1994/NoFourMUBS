#!/usr/bin/env python3
"""Exact certificate replay. Python 3 standard library only.

No seed subdivision, radical subdivision, hardware-float sign decision,
external optimizer, numerical eigensolver, or CAS is used in acceptance.
"""
import argparse,copy,gzip,hashlib,json,time
from pathlib import Path
from fractions import Fraction as F
from exact_core import (I,C,J,S,HJ,phase_jets,expressions,invariants,taylor,
                        bernstein,arc_radius,coefficient_bounds,bernstein_intervals,trig_center)
from geometry_exact import leaf_box,cayley_leaf_interval,r_bound
import algebra
HERE=Path(__file__).resolve().parent

class CertificateError(ValueError):pass

def require(test,why):
    if not test:raise CertificateError(why)

def shape4(v,name):require(isinstance(v,list) and len(v)==4,name+' needs four entries')

def chart(anchors,radii,centers,angle_radii):
    for v,n in [(anchors,'anchors'),(radii,'Cayley radii'),(centers,'centers'),(angle_radii,'angle radii')]:shape4(v,n)
    for a,r,c,h in zip(anchors,radii,centers,angle_radii):
        require(len(a)==2,'anchor length')
        require(F(r)>0 and F(h)>0,'positive region widths')
        require(arc_radius(F(c),F(h),a)<=F(r),'angular box not covered by Cayley region')

_CACHE={}
def region_models(cert,tr):
    order=[0,2,1,3] if tr else list(range(4))
    aa=[cert['anchors'][i] for i in order];rr=[F(cert['cayley_radii'][i]) for i in order]
    key=tuple(tuple(a) for a in aa),tuple(rr)
    if key not in _CACHE:
        ec=expressions(phase_jets(aa,rr,True));eb=expressions(phase_jets(aa,rr))
        _CACHE[key]=(ec,eb,coefficient_bounds(ec,eb,rr))
    return (*_CACHE[key],rr)

def verify_region(cert):
    require(cert['T']=='1','this certificate proves only the R <= 1 cap')
    require(cert['epsilon_unscaled']=='1/4','unexpected unscaled margin')
    chart(cert['anchors'],cert['cayley_radii'],cert['angle_center'],cert['angle_radii'])
    require('tao_absence' in cert,'matching cannot be used without Tao exclusion')
    ta=cert['tao_absence'];j=ta['coordinate'];require(type(j)==int and 0<=j<4,'Tao coordinate')
    ph=phase_jets(cert['anchors'],cert['cayley_radii']);im=(ph[j]**3).v.im
    require(im.lo>0 or im.hi<0,'Tao corner not excluded on whole region')
    require(ta['imag_cube']==im.endpoints(),'Tao trace mismatch')
    ws=cert['witnesses'];require(len(ws)>0,'empty witness family')
    for w in ws:
        require(w['tr'] in (0,1) and w['sg'] in (-1,1) and w['eps'] in (-1,1),'orientation/sign schema')
        require(type(w['j'])==int and type(w['k'])==int and 0<=w['j']<3 and 0<=w['k']<3,'minor indices')
    for h,v in [(1,-1),(-1,1)]:
        require(any(w['sg']==(v if w['tr'] else h) for w in ws),'missing physical matched branch')
    worst=F(-10**100)
    for w in ws:
        ec,eb,cb,rr=region_models(cert,w['tr'])
        low=[F(x.v.re.lo,S) for x in eb['Pnorm']]
        require(min(low)>0,'P denominator separation failed')
        require(w['Pnorm_lower']==list(map(str,low)),'P separation trace mismatch')
        delta=F(w['Delta_lower']);require(0<delta<=low[0]*low[1]*low[2],'invalid Delta lower bound')
        require(F(w['epsilon_polynomial'])==delta*delta/8,'wrong polynomial epsilon')
        bc,bb=bernstein(ec,w),bernstein(eb,w)
        records=[taylor(a,b,rr,record=True) for a,b in zip(bc,bb)]
        require(records==w['bernstein_taylor'],'Bernstein Taylor trace mismatch')
        ci=bernstein_intervals(cb,w)
        require([x.endpoints() for x in ci]==w['coefficient_Bernstein_bounds'],'coefficient Bernstein trace mismatch')
        for rec,z in zip(records,ci):
            upper=min(F(rec['bound'][1]),F(z.hi,S))
            require(upper < -F(1,4),'nonnegative Bernstein upper bound')
            worst=max(worst,upper)
    return {'id':cert['id'],'witnesses':len(ws),'largest_Bernstein_upper':str(worst)}

def verify_coverage(certs,models,leaves,meta):
    require(len(leaves)==meta['selected_records'],'leaf count differs from manifest')
    require(len(models)==79 and len(certs)==14,'unexpected model/region count')
    require(len({(tuple(x['root']),x['path']) for x in leaves})==len(leaves),'duplicate leaf geometry')
    require(len({x['line'] for x in leaves})==len(leaves),'duplicate source line')
    ids=[m['id'] for m in models];require(len(set(ids))==len(ids),'duplicate model IDs')
    regions={}
    for cert in certs:
        for rid in cert['members']:
            require(rid not in regions,'root assigned twice');regions[rid]=cert
    require(set(ids)==set(regions),'model/region membership mismatch')
    byid={rid:[] for rid in ids}
    for leaf in leaves:
        require(leaf['root_id'] in byid,'unknown root ID')
        require(len(leaf['root'])==4 and all(type(x)==int for x in leaf['root']),'root key format')
        byid[leaf['root_id']].append(leaf)
    worst=F(-10**100);worst_line=None;counts={cert['id']:0 for cert in certs}
    for m in models:
        chart(m['anchors'],m['cayley_radii'],m['centers'],m['radii'])
        jc=invariants(phase_jets(m['anchors'],m['cayley_radii'],True))[-1]
        jb=invariants(phase_jets(m['anchors'],m['cayley_radii']))[-1]
        require(m['R_value']==jc.v.re.endpoints(),'R value mismatch')
        require(m['R_gradient']==[x.re.endpoints() for x in jc.d],'R gradient mismatch')
        require(m['R_hessian']==[x.re.endpoints() for x in jb.h],'R Hessian mismatch')
        cs=list(map(F,m['centers']));rs=list(map(F,m['radii']))
        base=[trig_center(c)*C(F(a[0]),-F(a[1])) for c,a in zip(cs,m['anchors'])]
        cert=regions[m['id']];oc=list(map(F,cert['angle_center']));orr=list(map(F,cert['angle_radii']))
        maxu=F(-10**100)
        require(len(byid[m['id']])>0,'unused R model')
        for leaf in byid[m['id']]:
            c,r=leaf_box(leaf['root'],leaf['path'])
            require(all(abs(x-y)+h<=s for x,h,y,s in zip(c,r,cs,rs)),'leaf outside R-model hull')
            require(all(abs(x-y)+h<=s for x,h,y,s in zip(c,r,oc,orr)),'leaf outside exclusion hull')
            ui=[cayley_leaf_interval(z,x-y-c0,x+y-c0) for z,x,y,c0 in zip(base,c,r,cs)]
            require(all(-F(s)<=F(u.lo,S)<=F(u.hi,S)<=F(s) for s,u in zip(m['cayley_radii'],ui)),
                    'leaf outside R-model Cayley cube')
            upper=F(r_bound(jc,jb,ui).hi,S)
            require(upper < F(2,3),'R cap not proved for leaf')
            if upper>worst:worst,worst_line=upper,leaf['line']
            maxu=max(maxu,upper);counts[cert['id']]+=1
        require(str(maxu)==m['maximum_R_upper'],'R-model maximum trace mismatch')
    return {'leaves':len(leaves),'R_models':len(models),'regions':len(certs),
            'maximum_R_upper':str(worst),'maximum_R_source_line':worst_line,
            'certified_simple_R_upper':'2/3','region_leaf_counts':counts}

def sha(path):
    h=hashlib.sha256()
    with open(path,'rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()

def verify_source(path,leaves,meta):
    require(sha(path)==meta['source_gzip_sha256'],'source gzip hash mismatch')
    selected=[];count=0
    with gzip.open(path,'rt') as f:
        for count,line in enumerate(f,1):
            row=json.loads(line)
            if row['R'].startswith('[+/-'):
                selected.append({**{k:row[k] for k in ['root','root_id','path']},'line':count})
    require(count==meta['total_records'],'source total mismatch')
    require(selected==leaves,'source selection mismatch')
    return {'source_bytes_hash':True,'source_selection':True,'total_records':count}

def arithmetic_controls():
    vals=[F(-3),F(-2,3),F(-1,2**90),F(0),F(1,2**90),F(2,7),F(5)]
    def encl(z,x):require(F(z.lo,S)<=x<=F(z.hi,S),'arithmetic inclusion')
    for a in vals:
        encl(I(a),a)
        for b in vals:
            encl(I(a)+I(b),a+b);encl(I(a)*I(b),a*b)
            if b and not I(b).lo<=0<=I(b).hi:encl(I(a)/I(b),a/b)
    # Mixed second derivative and inverse derivative, exact rational point.
    u=J(C(F(1,3)),[C(1),C(),C(),C()]);v=J(C(F(-1,7)),[C(),C(1),C(),C()])
    z=(1+u*v).inv();D=F(1)+F(1,3)*F(-1,7)
    encl(z.v.re,1/D);encl(z.d[0].re,-F(-1,7)/D**2)
    encl(z.h[0].re,2*F(-1,7)**2/D**3)
    encl(z.h[1].re,2*F(1,3)*F(-1,7)/D**3-1/D**2)
    rejected=False
    try:I(-1,1).inv()
    except ValueError:rejected=True
    require(rejected,'zero-crossing inverse not rejected')
    return {'rational_arithmetic':True,'jet_derivatives':True,'zero_denominator_rejected':True}

def negative_controls(certs,models,leaves,meta):
    # Choose a region whose two witnesses cover different matched branches.
    original=next(c for c in certs if c['id']==1025);out={}
    def reject(name,mutate):
        c=copy.deepcopy(original);mutate(c)
        try:verify_region(c)
        except (CertificateError,ValueError,KeyError,ZeroDivisionError):out[name]=True
        else:raise CertificateError('negative control accepted: '+name)
    reject('missing_matched_branch',lambda c:c['witnesses'].pop())
    reject('nonunit_anchor',lambda c:c['anchors'][0].__setitem__(0,'0'))
    reject('insufficient_Cayley_radius',lambda c:c['cayley_radii'].__setitem__(0,'1/100000000'))
    reject('dropped_Tao_separation',lambda c:c.pop('tao_absence'))
    reject('changed_radical_cap',lambda c:c.__setitem__('T','2'))
    reject('negative_Delta_lower',lambda c:c['witnesses'][0].__setitem__('Delta_lower','-1'))
    reject('inflated_epsilon',lambda c:c['witnesses'][0].__setitem__('epsilon_polynomial','1000000000000000000000000'))
    reject('altered_Bernstein_trace',lambda c:c['witnesses'][0]['bernstein_taylor'][0]['bound'].__setitem__(1,'-1000000000000'))
    reject('wrong_pencil_sign',lambda c:c['witnesses'][0].__setitem__('eps',1))
    try:verify_coverage(certs,models,leaves[:-1],meta)
    except CertificateError:out['missing_source_leaf']=True
    else:raise CertificateError('missing leaf accepted')
    return out

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--frontier',type=Path,help='also verify selection against the original unresolved gzip')
    ap.add_argument('--report',type=Path,default=HERE/'validation_report.json')
    ap.add_argument('--region-only',type=int,help='verify one standalone region (no population claim)')
    args=ap.parse_args();start=time.perf_counter()
    certs=[json.loads(p.read_text()) for p in sorted((HERE/'certificates').glob('region_*.json'))]
    require(len({c['id'] for c in certs})==len(certs),'duplicate certificates')
    if args.region_only is not None:
        found=[c for c in certs if c['id']==args.region_only];require(len(found)==1,'region not found')
        print(json.dumps(verify_region(found[0]),indent=2));return
    models=json.loads((HERE/'R_models.json').read_text());leaves=json.loads((HERE/'low_R_leaves.json').read_text())
    meta=json.loads((HERE/'population_manifest.json').read_text())
    require(sha(HERE/'low_R_leaves.json')==meta['selected_geometry_sha256'],'selected geometry hash mismatch')
    require(sha(HERE/'source_grid.json')==meta['source_grid_sha256'],'source grid hash mismatch')
    grid=json.loads((HERE/'source_grid.json').read_text())
    require(grid['grid']==meta['grid']==256,'unexpected source grid')
    require(all(0<=x['root_id']<len(grid['roots']) and grid['roots'][x['root_id']]==x['root'] for x in leaves),'source root-ID/key mismatch')
    for entry in json.loads((HERE/'upstream_manifest.json').read_text()):
        require(sha(HERE/entry['package_path'])==entry['sha256'],'upstream reference hash mismatch')
    report={'status':'PASS','arithmetic':arithmetic_controls(),'algebra':algebra.run()}
    report['region_results']=[verify_region(c) for c in certs]
    print('PASS: 14 whole-region certificates; 28 Bernstein witnesses',flush=True)
    report['coverage']=verify_coverage(certs,models,leaves,meta)
    print('PASS: 7553 source leaves, all R < 2/3',flush=True)
    report['negative_controls']=negative_controls(certs,models,leaves,meta)
    report['source']=verify_source(args.frontier,leaves,meta) if args.frontier else {'checked_this_run':False}
    # Timing is display metadata only; no floating point authorizes acceptance.
    report['wall_seconds_display_only']=round(time.perf_counter()-start,3)
    args.report.write_text(json.dumps(report,indent=2)+'\n')
    print('PASS: algebra, exact arithmetic, physical census, and all negative controls')
    print('Report:',args.report)
    print('Elapsed seconds (metadata only):',report['wall_seconds_display_only'])

if __name__=='__main__':
    try:main()
    except (CertificateError,ValueError,KeyError,ZeroDivisionError,AssertionError) as e:
        raise SystemExit('FAIL CLOSED: '+str(e))
