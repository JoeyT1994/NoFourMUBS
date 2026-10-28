"""Cover an original closed ball by already certified native balls.

This certifies geometric coverage, conditional on the named upstream
all-K results. It never treats an upstream status as a newly replayed proof.
"""
import argparse,gzip,hashlib,json,time
from pathlib import Path
import numpy as np
from flint import arb,ctx
from load_native import HERE,ROOT,R,C,MS
import patches as P
import seedcert as SC
import seed_partition as SP

RESULTS=ROOT/'TripleClassification/results/certifier.jsonl.gz'


def load():
    doc=json.loads(gzip.decompress(Path(R.DEFAULT_ATLAS).read_bytes()))
    rows=[json.loads(x) for x in gzip.decompress(RESULTS.read_bytes()).decode().splitlines()]
    # Ask the unmodified native binding directly, not any optional driver.
    files={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in R.source_paths()}
    value=dict(schema='tc-native-allk-v1',atlas_sha256=R.PINNED_ATLAS,sources=files,precision=160)
    native_id=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    good={}
    for row in rows:
        if row['status'] not in ('CERTIFIED','CERTIFIED EMPTY'):continue
        i=row['index'];rec=doc['seeds'][i]
        if row['binding']!=native_id or row['radius_hex']!=rec['r']:
            raise ArithmeticError('prior result binding/radius mismatch')
        if row['seed_sha256']!=hashlib.sha256(json.dumps(rec,sort_keys=True).encode()).hexdigest():
            raise ArithmeticError('prior result seed mismatch')
        good[i]=row
    return doc,good,native_id


def binding():
    sources={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
             for p in sorted(set(R.source_paths()+[HERE/'load_native.py',HERE/'seed_partition.py',
                          Path(__file__).resolve(),HERE/'TRANSFER_PROOF.txt']))}
    value=dict(schema='tc-original-ball-transfer-cover-v1',sources=sources,precision=160,
               atlas_sha256=hashlib.sha256(Path(R.DEFAULT_ATLAS).read_bytes()).hexdigest(),
               imported_results_sha256=hashlib.sha256(RESULTS.read_bytes()).hexdigest())
    if value['atlas_sha256']!=R.PINNED_ATLAS:raise ArithmeticError('atlas hash mismatch')
    value['id']=hashlib.sha256(json.dumps(value,sort_keys=True).encode()).hexdigest()
    return value


def setup(index):
    doc,good,native_id=load();ctx.prec=160
    ball=SC.Ball(doc['seeds'][index]);c1=SC.certify_c1(ball,max_boxes=4096)
    if not c1['ok']:raise ArithmeticError('original C1 failed')
    model=P.normal_form(ball,prec=160);targets=[]
    for number,g in enumerate(doc['seeds'][index]['transfers']):
        if g['kind'] not in ('T0','T1') or g['target'] not in good:continue
        try:t=P.Transfer(model,SC.Ball(doc['seeds'][g['target']]),g)
        except (ValueError,ArithmeticError,ZeroDivisionError):continue
        targets.append((number,t))
    return model,targets,good,native_id


def attempt(model,targets,box):
    c,_,_=P.box_geometry(box,model['r']);cn=MS.numeric(c)[:,0]
    ranked=[]
    for number,t in targets:
        v=MS.numeric(t.a0)[:,0]+MS.numeric(t.B0)@cn
        if not t.linear:v+=(MS.numeric(t.AH)@np.outer(cn,cn).ravel())/2
        ranked.append((np.linalg.norm(v)/float(t.target_r),number,t))
    ranked.sort(key=lambda x:x[0]);jet=None
    for _,number,t in ranked[:6]:
        try:
            # The affine compensation also bounds points inside the sphere:
            # lambda>=0 makes f <= f-lambda(||w||^2-r^2).
            result=t.check(box,use_sphere=True)
            if result['ok']:return dict(status='TRANSFERRED',transfer=number,target=t.group['target'],mode='quadratic',check=result)
            if not t.linear:
                if jet is None:jet=P.centre_jet(model,P.anchor_for_box(box,model['r']))
                result=t.check_local(box,use_sphere=True,jet=jet)
                if result['ok']:return dict(status='TRANSFERRED',transfer=number,target=t.group['target'],mode='local',check=result)
        except (ValueError,ArithmeticError,ZeroDivisionError):pass
    return dict(status='NOT ESTABLISHED',proposed_center_distances=[float(v[0]) for v in ranked[:6]])


def certify(index,max_level=4,cell_cap=5000):
    start=time.monotonic();manifest=binding();model,targets,good,native_id=setup(index)
    todo=[(0,0,0,0,0)];leaves=[];tested=0
    while todo:
        box=todo.pop()
        if SP.outside(box):leaves.append(dict(box=list(box),status='OUTSIDE'));continue
        if tested>=cell_cap:
            leaves.append(dict(box=list(box),status='NOT ESTABLISHED',reason='cell cap'));continue
        tested+=1;result=attempt(model,targets,box)
        if result['status']=='NOT ESTABLISHED' and box[0]<max_level:
            todo.extend(reversed(SP.children(box)))
        else:leaves.append(dict(box=list(box),**result))
    SP.check_partition(leaves)
    complete=all(x['status'] in ('OUTSIDE','TRANSFERRED') for x in leaves)
    dependencies={str(x['target']):good[x['target']] for x in leaves if x['status']=='TRANSFERRED'}
    row=dict(index=index,status='COVERED BY PRIOR CERTIFICATES' if complete else 'NOT ESTABLISHED',
              binding=manifest['id'],original_radius_hex=float(model['r']).hex(),original_radius_preserved=True,
              prior_native_binding=native_id,prior_results_replayed_here=False,dependencies=dependencies,
              leaves=leaves,tested_cells=tested,max_level=max_level,cell_cap=cell_cap,seconds=time.monotonic()-start)
    if binding()['id']!=manifest['id']:raise ArithmeticError('source changed during transfer proof')
    return row,manifest


def replay(row):
    if row['binding']!=binding()['id']:raise ArithmeticError('transfer source binding mismatch')
    SP.check_partition(row['leaves'])
    model,targets,good,native_id=setup(row['index']);targetmap=dict(targets)
    for leaf in row['leaves']:
        if leaf['status']=='OUTSIDE':continue
        if leaf['status']!='TRANSFERRED':raise ArithmeticError('open leaf')
        t=targetmap[leaf['transfer']]
        if leaf['target']!=t.group['target']:raise ArithmeticError('target mismatch')
        if row['dependencies'].get(str(leaf['target']))!=good[leaf['target']]:
            raise ArithmeticError('imported dependency changed')
        check=(t.check_local if leaf['mode']=='local' else t.check)(leaf['box'],use_sphere=True)
        if not check['ok']:raise ArithmeticError('transfer failed on replay')
    return True


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int);p.add_argument('--output',type=Path)
    p.add_argument('--max-level',type=int,default=4);p.add_argument('--cell-cap',type=int,default=5000)
    p.add_argument('--replay',type=Path);a=p.parse_args()
    if a.replay:
        row=json.loads(a.replay.read_text());replay(row);print(json.dumps(dict(index=row['index'],replay=True)))
    else:
        row,manifest=certify(a.index,a.max_level,a.cell_cap)
        if row['status']=='COVERED BY PRIOR CERTIFICATES':replay(row);row['geometry_replayed']=True
        a.output.write_text(json.dumps(row)+'\n')
        a.output.with_suffix(a.output.suffix+'.manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
        print(json.dumps({k:row[k] for k in ('index','status','tested_cells','seconds')}))
