"""Rebuild an H cell from published coordinates and check every completing K.

The inventory selects work; it is not assumed to cover an original ball.
The receipt proves containment and classification for one closed dyadic cell.
It does not identify the rebuilt record with the unavailable legacy record.
"""
import argparse
import gzip
import hashlib
import json
import math
import os
import sys
import time
from fractions import Fraction
from pathlib import Path
import plane_cell_certificate as Whole
from plane_column_certificate import arb,arb_mat,ctx,np,require,read_json,digest

PIN='33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'


def jsonsha(x):return hashlib.sha256(json.dumps(x,sort_keys=True).encode()).hexdigest()


def cell_enclosure(level,cell,clipped=False):
    """Exact dyadic box, optionally intersected with necessary unit-ball axis bounds."""
    require(type(level) is int and 0<=level<=30 and len(cell)==4 and
            all(type(c) is int and 0<=c<2**level for c in cell),'invalid dyadic cell')
    require(type(clipped) is bool,'invalid cell domain')
    n=2**level;lo=[Fraction(2*c-n,n) for c in cell];hi=[x+Fraction(2,n) for x in lo]
    if clipped:
        distance=[max(a,Fraction(0),-b) for a,b in zip(lo,hi)]
        for i in range(4):
            q=1-sum(distance[j]**2 for j in range(4) if j!=i)
            require(q>=0,'cell misses original ball')
            qq=arb(q.numerator)/q.denominator
            cap=0.0 if q==0 else math.nextafter(float(qq.sqrt().upper()),math.inf)
            require(math.isfinite(cap) and arb(cap)**2>=qq,'unverified outward unit-ball bound')
            a=Fraction(cap);lo[i]=max(lo[i],-a);hi[i]=min(hi[i],a)
            require(lo[i]<=hi[i],'cell misses original ball')
    mid=[(a+b)/2 for a,b in zip(lo,hi)]
    radius2=sum(((b-a)/2)**2 for a,b in zip(lo,hi))
    if clipped:
        # Combine ||u||^2 <= 1 and ||u-mid||^2 <= radius2 with exact weights.
        norm2=sum(x*x for x in mid)
        weight=(Fraction(1) if radius2<=1 else Fraction(0)) if norm2==0 else max(Fraction(0),min(Fraction(1),(1+norm2-radius2)/(2*norm2)))
        radius2=1-weight+weight*radius2-weight*(1-weight)*norm2
        require(radius2>=0,'cell misses original ball')
        mid=[weight*x for x in mid]
    radius=(arb(radius2.numerator)/radius2.denominator).sqrt()
    return mid,radius


def input_clipped(data):
    mode=data.get('geometry_mode')
    require(mode in (None,'original-ball-intersection-v1'),'unknown cell geometry mode')
    return mode is not None


def cell_geometry(original,record,level,cell,clipped=False):
    """Independently enclose the claimed closed cell domain, retaining its boundary."""
    mid,radius=cell_enclosure(level,cell,clipped)
    require(all(record[k]==original[k] for k in ('Mth','o','k')),'frame, orientation, or C1 box count changed')
    m=arb_mat([[arb(float.fromhex(original['Mth'][4*i+j])) for j in range(4)] for i in range(4)])
    r=arb(float.fromhex(original['r']));tau=2*arb.pi()
    diff=[]
    for i in range(4):
        x=arb(float.fromhex(original['theta0'][i]))-arb(float.fromhex(record['theta0'][i]))
        x+=sum((m[i,j]*r*arb(mid[j].numerator)/mid[j].denominator for j in range(4)),arb(0))
        diff.append(x-round(float((x/tau).mid()))*tau)
    delta=m.inv()*arb_mat([[x] for x in diff]);dist2=sum((x*x for x in delta.entries()),arb(0))
    margin=arb(float.fromhex(record['r']))-r*radius
    require(margin>0 and margin*margin>dist2,'sub-ball does not cover the entire closed cell')
    return dict(level=level,cell=cell,original_radius_hex=original['r'],
        record_radius_hex=record['r'],radius_margin=str(margin),centre_offset_squared=str(dist2),
        domain='original-ball-intersection-v1' if clipped else 'full-closed-cube',
        normalized_enclosure_radius=str(radius),
        original_record_sha256=jsonsha(original),record_sha256=jsonsha(record))


def build_record(original,level,cell,root,clipped=False):
    sys.path[:0]=[str(root/'proof/seed_atlas/cert'),str(root/'proof/seed_atlas/driver')]
    import seedcert as S
    import wholeball as W
    from c1 import Ball as DBall,hor_axis,hor36
    from nothird import float_up,sqrt_up
    ctx.prec=224
    b=S.Ball(original);phh,phv,ok=S.centre_sides(b)
    require(ok,'original centre sides not established')
    uc,enclosure_radius=cell_enclosure(level,cell,clipped)
    d=DBall(b.theta0+b.Mth@(b.r*np.array(list(map(float,uc)))),phh,phv,o=b.o)
    m=arb_mat([[arb(float(x)) for x in row] for row in b.Mth]);tau=2*arb.pi();diff=[]
    for i in range(4):
        x=arb(float(b.theta0[i]))-arb(float(d.theta0[i]))
        x+=sum((m[i,j]*arb(b.r)*arb(u.numerator)/u.denominator for j,u in enumerate(uc)),arb(0))
        diff.append(x-round(float((x/tau).mid()))*tau)
    delta=m.inv()*arb_mat([[x] for x in diff])
    radius=float_up(enclosure_radius*arb(b.r)+sqrt_up(sum((x*x for x in delta.entries()),arb(0))))
    if clipped:radius=max(radius,math.ulp(b.r))
    # An extra ulp makes the independent strict containment comparison robust
    # even when the computed centre displacement is exactly zero.
    radius=math.nextafter(radius,math.inf)
    hx=lambda x:float(x).hex()
    record=dict(theta0=[hx(x) for x in d.theta0],Mth=original['Mth'],r=hx(radius),o=int(b.o),k=int(b.k),
        P=[hx(x) for x in hor36(d.P)],U=[hx(x) for x in (hor_axis(d.T,0)@b.Mth).ravel()],
        gauge='hor',n=hx(1.),label_radius=original['label_radius'],transfers=[])
    sub=S.Ball(record);sh,sv,sok=S.centre_sides(sub);require(sok,'rebuilt centre sides not established')
    normal=W.wholeball_c1(sub.theta0,sub.Mth,sub.r,sub.o,sub.P,sub.U,sh,sv)
    require(normal.get('ok') is True,'rebuilt C1 not established')
    record['n']=hx(math.nextafter(float(normal['n_record'])*(1+1e-6),math.inf))
    cell_geometry(original,record,level,cell,clipped)
    return record


def original_record(root,index):
    atlas=root/'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
    require(digest(atlas)==PIN,'wrong original atlas')
    seeds=read_json(atlas)['seeds']
    require(type(index) is int and 0<=index<len(seeds),'invalid original ball')
    return seeds[index]


def run(root,entry,out,proposal_path=None,input_path=None,depth=6,pattern_workers=1,clipped=False):
    original=original_record(root,entry['ball']);ctx.prec=224
    if input_path is None:
        if clipped:
            _,radius=cell_enclosure(entry['level'],entry['cell'],True)
            clipped=bool(radius<arb(2)/2**entry['level'])
        record=build_record(original,entry['level'],entry['cell'],root,clipped)
        data=dict(schema='tc-h-cell-input-v1',record=record,record_sha256=jsonsha(record),
            ball=entry['ball'],level=entry['level'],cell=entry['cell'],
            subatlas=entry['subatlas'],sub=entry['sub'],legacy_record_sha256=entry['record_sha256'])
        if clipped:data['geometry_mode']='original-ball-intersection-v1'
        input_path=out.with_suffix('.input.json.gz')
        input_path.write_bytes(gzip.compress(json.dumps(data).encode(),mtime=0))
    else:
        data=read_json(input_path);record=data['record']
        require(data['schema']=='tc-h-cell-input-v1' and data['record_sha256']==jsonsha(record),'bad H input')
        require(all(data[k]==entry[k] for k in ('ball','level','cell','subatlas','sub')),'cell input mismatch')
        clipped=input_clipped(data)
    geometry=cell_geometry(original,record,entry['level'],entry['cell'],clipped)
    proposal=read_json(proposal_path) if proposal_path else Whole.propose(input_path,depth,out.with_suffix('.columns.json.gz'))
    if proposal_path is None:
        proposal_path=out.with_suffix('.proposal.json.gz')
        proposal_path.write_bytes(gzip.compress(json.dumps(proposal).encode(),mtime=0))
    result=Whole.check(input_path,proposal,workers=pattern_workers)
    require(result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL'),
            'whole-cell certificate failed')
    classified=result['status']=='CERTIFIED_CLASSIFIED_RECORDED_H_CELL'
    result.update(schema='tc-plane-frontier-receipt-v1',status='CERTIFIED_CLASSIFIED_DYADIC_CELL' if classified else
        'CERTIFIED_EMPTY_DYADIC_CELL',
        original_atlas_sha256=PIN,ball=entry['ball'],geometry=geometry,
        legacy_record_sha256=entry['record_sha256'],proposal_sha256=digest(proposal_path),
        scope=('Every completing K has the certified balanced order-three symmetry' if classified else
               'Every completing K is excluded')+' for the whole recorded H ball, which contains '+
              ('the intersection of the specified closed dyadic cell with the closed original ball' if clipped else
               'the entire specified closed dyadic cell')+'. The inventory is not a covering-tree certificate.')
    result['dependencies_sha256']['TripleClassification/code/plane_frontier_certificate.py']=digest(__file__)
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('entry',type=Path,help='one exact entry from open_cells.jsonl.gz')
    p.add_argument('--out',type=Path,required=True);p.add_argument('--input',type=Path)
    p.add_argument('--proposal',type=Path);p.add_argument('--depth',type=int,default=6)
    p.add_argument('--pattern-workers',type=int,default=1)
    p.add_argument('--clip-to-original-ball',action='store_true',help='enclose the closed cell intersection without changing the original radius')
    a=p.parse_args();require(0<=a.depth<=10,'invalid depth');require(not a.proposal or a.input,'replay needs input and proposal')
    root=Path(os.environ.get('TC_ROOT',Path(__file__).resolve().parents[2])).resolve();start=time.monotonic()
    entry=read_json(a.entry)
    try:result=run(root,entry,a.out,a.proposal,a.input,a.depth,a.pattern_workers,a.clip_to_original_ball)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc),ball=entry['ball'],level=entry['level'],cell=entry['cell'])
    result.update(entry_sha256=digest(a.entry),checker_sha256=digest(__file__),total_seconds=time.monotonic()-start)
    a.out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({k:result[k] for k in ('status','total_seconds')}),flush=True)
    return 0 if result['status'] in ('CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL') else 1


if __name__=='__main__':raise SystemExit(main())
