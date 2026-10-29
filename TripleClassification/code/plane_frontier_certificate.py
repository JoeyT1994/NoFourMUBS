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


def cell_geometry(original,record,level,cell):
    """Independently check the exact closed cube's containment in this record."""
    require(type(level) is int and 0<=level<=30 and len(cell)==4 and
            all(type(c) is int and 0<=c<2**level for c in cell),'invalid dyadic cell')
    require(all(record[k]==original[k] for k in ('Mth','o','k')),'frame or chart changed')
    m=arb_mat([[arb(float.fromhex(original['Mth'][4*i+j])) for j in range(4)] for i in range(4)])
    r=arb(float.fromhex(original['r']));tau=2*arb.pi()
    diff=[]
    for i in range(4):
        x=arb(float.fromhex(original['theta0'][i]))-arb(float.fromhex(record['theta0'][i]))
        x+=sum((m[i,j]*r*(2*cell[j]+1-2**level)/2**level for j in range(4)),arb(0))
        diff.append(x-round(float((x/tau).mid()))*tau)
    delta=m.inv()*arb_mat([[x] for x in diff]);dist2=sum((x*x for x in delta.entries()),arb(0))
    margin=arb(float.fromhex(record['r']))-2*r/2**level
    require(margin>0 and margin*margin>dist2,'sub-ball does not cover the entire closed cell')
    return dict(level=level,cell=cell,original_radius_hex=original['r'],
        record_radius_hex=record['r'],radius_margin=str(margin),centre_offset_squared=str(dist2),
        original_record_sha256=jsonsha(original),record_sha256=jsonsha(record))


def build_record(original,level,cell,root):
    sys.path[:0]=[str(root/'proof/seed_atlas/cert'),str(root/'proof/seed_atlas/driver')]
    import seedcert as S
    import wholeball as W
    from c1 import Ball as DBall,hor_axis,hor36
    from nothird import float_up,sqrt_up
    ctx.prec=224
    b=S.Ball(original);phh,phv,ok=S.centre_sides(b)
    require(ok,'original centre sides not established')
    h=Fraction(1,2**level);uc=[-1+(2*c+1)*h for c in cell]
    d=DBall(b.theta0+b.Mth@(b.r*np.array(list(map(float,uc)))),phh,phv,o=b.o)
    m=arb_mat([[arb(float(x)) for x in row] for row in b.Mth]);tau=2*arb.pi();diff=[]
    for i in range(4):
        x=arb(float(b.theta0[i]))-arb(float(d.theta0[i]))
        x+=sum((m[i,j]*arb(b.r)*arb(u.numerator)/u.denominator for j,u in enumerate(uc)),arb(0))
        diff.append(x-round(float((x/tau).mid()))*tau)
    delta=m.inv()*arb_mat([[x] for x in diff])
    radius=float_up(2*arb(h.numerator)/h.denominator*arb(b.r)+sqrt_up(sum((x*x for x in delta.entries()),arb(0))))
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
    cell_geometry(original,record,level,cell)
    return record


def original_record(root,index):
    atlas=root/'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
    require(digest(atlas)==PIN,'wrong original atlas')
    seeds=read_json(atlas)['seeds']
    require(type(index) is int and 0<=index<len(seeds),'invalid original ball')
    return seeds[index]


def run(root,entry,out,proposal_path=None,input_path=None,depth=6):
    original=original_record(root,entry['ball']);ctx.prec=224
    if input_path is None:
        record=build_record(original,entry['level'],entry['cell'],root)
        data=dict(schema='tc-h-cell-input-v1',record=record,record_sha256=jsonsha(record),
            ball=entry['ball'],level=entry['level'],cell=entry['cell'],
            subatlas=entry['subatlas'],sub=entry['sub'],legacy_record_sha256=entry['record_sha256'])
        input_path=out.with_suffix('.input.json.gz')
        input_path.write_bytes(gzip.compress(json.dumps(data).encode(),mtime=0))
    else:
        data=read_json(input_path);record=data['record']
        require(data['schema']=='tc-h-cell-input-v1' and data['record_sha256']==jsonsha(record),'bad H input')
        require(all(data[k]==entry[k] for k in ('ball','level','cell','subatlas','sub')),'cell input mismatch')
    geometry=cell_geometry(original,record,entry['level'],entry['cell'])
    proposal=read_json(proposal_path) if proposal_path else Whole.propose(input_path,depth,out.with_suffix('.columns.json.gz'))
    if proposal_path is None:
        proposal_path=out.with_suffix('.proposal.json.gz')
        proposal_path.write_bytes(gzip.compress(json.dumps(proposal).encode(),mtime=0))
    result=Whole.check(input_path,proposal)
    result.update(schema='tc-plane-frontier-receipt-v1',status='CERTIFIED_EMPTY_DYADIC_CELL',
        original_atlas_sha256=PIN,ball=entry['ball'],geometry=geometry,
        legacy_record_sha256=entry['record_sha256'],proposal_sha256=digest(proposal_path),
        scope='Every completing K is excluded for the whole recorded H ball, which contains the entire specified '
              'closed dyadic cell of the original ball. The inventory is not a covering-tree certificate.')
    result['dependencies_sha256']['TripleClassification/code/plane_frontier_certificate.py']=digest(__file__)
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('entry',type=Path,help='one exact entry from open_cells.jsonl.gz')
    p.add_argument('--out',type=Path,required=True);p.add_argument('--input',type=Path)
    p.add_argument('--proposal',type=Path);p.add_argument('--depth',type=int,default=6)
    a=p.parse_args();require(0<=a.depth<=10,'invalid depth');require(not a.proposal or a.input,'replay needs input and proposal')
    root=Path(os.environ.get('TC_ROOT',Path(__file__).resolve().parents[2])).resolve();start=time.monotonic()
    entry=read_json(a.entry)
    try:result=run(root,entry,a.out,a.proposal,a.input,a.depth)
    except (ValueError,ArithmeticError,ZeroDivisionError,KeyError,TypeError) as exc:
        result=dict(status='NOT_ESTABLISHED',reason=str(exc),ball=entry['ball'],level=entry['level'],cell=entry['cell'])
    result.update(entry_sha256=digest(a.entry),checker_sha256=digest(__file__),total_seconds=time.monotonic()-start)
    a.out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({k:result[k] for k in ('status','total_seconds')}),flush=True)
    return 0 if result['status']=='CERTIFIED_EMPTY_DYADIC_CELL' else 1


if __name__=='__main__':raise SystemExit(main())
