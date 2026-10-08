#!/usr/bin/env python3
"""Verify the PARTIAL Patch2442Local result and optionally classify boxes.

No full-ball exclusion is claimed. An input box is accepted only when it
lies in the punctured 3/50 seed ball and in a proved directional cap, possibly
after one of 36 exact seed rephasings. Other boxes fail closed.
"""
import sys
sys.dont_write_bytecode=True
import argparse,gzip,hashlib,json,time
from pathlib import Path
from fractions import Fraction as Q
HERE=Path(__file__).resolve().parent

def validate_manifest():
    mf=HERE/'MANIFEST.sha256'
    if not mf.exists():return {'status':'not_yet_created'}
    n=0
    for line in mf.read_text().splitlines():
        digest,name=line.split('  ',1);p=(HERE/name).resolve()
        if not p.is_relative_to(HERE):raise ValueError('manifest path escapes package')
        if hashlib.sha256(p.read_bytes()).hexdigest()!=digest:raise AssertionError('manifest mismatch: '+name)
        n+=1
    return {'status':'PASS','files':n}

def pins():
    doc=json.loads((HERE/'PINNED_INPUTS.json').read_text())
    for row in doc['files']:
        p=HERE/row['snapshot']
        if hashlib.sha256(p.read_bytes()).hexdigest()!=row['sha256']:raise AssertionError('pinned input mismatch: '+row['source'])
    return {'status':'PASS','files':len(doc['files']),'archive_sha256':doc['archive_sha256']}

def verify_cones():
    from build_cones import root_bounds,halves,single_cell,EPSILON
    from cones import RADIUS
    with gzip.open(HERE/'cones_certificate.json.gz','rt') as f:doc=json.load(f)
    assert doc['scope']=='directional_caps_only' and Q(doc['radius'])==RADIUS and Q(doc['epsilon'])==EPSILON
    assert doc['other_fixed_coordinate_by_symmetry'] is True
    assert [(c['sign'],c['fixed_coordinate']) for c in doc['charts']]==[(-1,0),(1,0)]
    total=0;statistics=[]
    for chart in doc['charts']:
        sign=chart['sign'];visited=leaves=0;depthmax=0
        def rec(node,bounds,depth):
            nonlocal visited,leaves,depthmax
            visited+=1;depthmax=max(depthmax,depth)
            if 'leaf' in node:
                if set(node)!={'leaf'}:raise ValueError('malformed leaf')
                witness=single_cell(bounds,sign,0)
                if witness is None or witness!=node['leaf']:raise AssertionError('cone leaf did not replay')
                leaves+=1;return
            if set(node)!={'axis','left','right'}:raise ValueError('malformed cover node')
            axis=node['axis']
            if type(axis) is not int or axis not in range(4):raise ValueError('bad split axis')
            left,right=halves(bounds,axis);rec(node['left'],left,depth+1);rec(node['right'],right,depth+1)
        rec(chart['tree'],root_bounds(sign),0)
        assert visited==2*leaves-1
        total+=leaves;statistics.append({'sign':sign,'leaves':leaves,'nodes':visited,'max_depth':depthmax})
    return {'status':'PASS','scope':'directional_caps_only','radial_limit':str(RADIUS),'angular_cap_width':str(EPSILON),'leaves':total,'charts':statistics}

def run():
    if not __debug__:raise RuntimeError('Python -O is forbidden')
    start=time.process_time();out={'status':'PASS','scope':'PARTIAL: not a full punctured-ball exclusion'}
    out['manifest']=validate_manifest();out['pins']=pins()
    import symbolic,checks
    out['symbolic']=symbolic.verify()
    out['factorizations'],_=checks.factorization_checks()
    out['ray']=checks.ray_checks()
    out['arithmetic']=checks.arithmetic_checks()
    out['cones']=verify_cones()
    out['physical_and_symmetry'],_=checks.physical_and_frame_checks()
    out['geometry']=checks.geometry_controls()
    out['cpu_seconds']=time.process_time()-start
    return out

def op(path,mode):return gzip.open(path,mode+'t') if str(path).endswith('.gz') else open(path,mode,encoding='utf-8')

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--boxes',type=Path);ap.add_argument('--output',type=Path)
    ap.add_argument('--receipt',type=Path)
    args=ap.parse_args()
    if bool(args.boxes)!=bool(args.output):ap.error('--boxes and --output are required together')
    result=run()
    if args.boxes:
        from geometry import classify
        counts={};n=ok=0;start=time.process_time();args.output.parent.mkdir(parents=True,exist_ok=True)
        with op(args.boxes,'r') as src,op(args.output,'w') as dst:
            for line in src:
                n+=1
                try:
                    rec=json.loads(line)
                    if not isinstance(rec,dict):raise ValueError('record is not an object')
                    z=classify(rec)
                except Exception as ex:
                    z={'id':n-1,'ok':False,'reason':'invalid_input: '+str(ex),'statement':'Inconclusive; no exclusion claimed.'}
                dst.write(json.dumps(z,separators=(',',':'))+'\n');ok+=int(z['ok']);counts[z['reason']]=counts.get(z['reason'],0)+1
        result['boxes']={'records':n,'accepted':ok,'reasons':counts,'cpu_seconds':time.process_time()-start,'input_sha256':hashlib.sha256(args.boxes.read_bytes()).hexdigest(),'output_sha256':hashlib.sha256(args.output.read_bytes()).hexdigest()}
    if args.receipt:
        args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(json.dumps(result,indent=2,default=str)+'\n')
    print(json.dumps(result,indent=2,default=str))
if __name__=='__main__':main()
