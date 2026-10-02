#!/usr/bin/env python3
"""An exact guarded subbox of a real pilot box, accepted without lifting.

The stored subbox is defined by exact affine-in-pi coordinates. It is not
asserted to equal a rounded-center production-driver descendant. It is
strictly contained in its real pilot parent under either half-width
convention in the supplied handoff (exact pi or the binary64 pi value).
"""
from pathlib import Path
import gzip,json,hashlib,argparse
from itertools import product
from interval import *
from geometry import FRAMES,PROFILES,frame_test
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]
SOURCE='ProvenResults/ActiveShoulderClosure/data/shoulder_boxes_pilot_full.txt.gz'


def read_pilot():
    rows=[]
    with gzip.open(ROOT/SOURCE,'rt') as f:
        for line in f:
            if not line.strip() or line.startswith('#'):continue
            parts=line.split()
            rows.append((int(parts[0]),[Q(float(x)) for x in parts[1:5]]))
    return rows


def verify_example(data):
    source=ROOT/SOURCE
    require(data['source']==SOURCE and data['source_sha256']==hashlib.sha256(source.read_bytes()).hexdigest(),
            'pilot source mismatch')
    rows=read_pilot();i=data['parent_row_0based']
    require(isinstance(i,int) and 0<=i<len(rows),'invalid parent row')
    level,center=rows[i]
    require(level==13 and data['parent_centers']==list(map(str,center)),
            'parent domain mismatch')
    require(data['child_level']==16 and len(data['offset_signs'])==4
            and all(x in (-1,1) for x in data['offset_signs']), 'bad explicit subbox')
    fidx=data['frame_index'];profile=data['profile']
    require(isinstance(fidx,int) and 0<=fidx<len(FRAMES) and profile in PROFILES,
            'bad frame/profile')
    offset=iv.pi/2**16;guard=v(Q(1,2**40));half=offset+guard
    cc=[v(x)+sign*offset for x,sign in zip(center,data['offset_signs'])]
    require((offset+half).b < (iv.pi/2**level+guard).a,
            'subbox not inside exact-pi parent')
    dyadicparent=v(Q(float(math.pi/2**level))+Q(1,2**40))
    require((offset+half).b<dyadicparent.a,'subbox not inside dyadic parent')
    result=frame_test(cc,[half]*4,FRAMES[fidx],profile)
    require(result is not None,'guarded subbox not contained in proved region')
    return dict(status='PASS',source=SOURCE,parent_row_0based=i,
                geometry_only=True,matrix_lifts=0,full_parent_closed=False,
                exact_child_centers='parent_center[k] + offset_sign[k]*pi/65536',
                exact_child_halfwidth='pi/65536 + 1/1099511627776',
                production_rounded_child_identity_claimed=False,
                membership=result)


def propose():
    rows=read_pilot();theta=np.array([[float(x) for x in r[1]] for r in rows])
    # Float filtering proposes a frame and box, but cannot authorize the result.
    h=math.pi/2**16+2**-40
    for fidx,fr in enumerate(FRAMES):
        M=np.array(fr['matrix']);tt=theta@M.T
        for profile,cfg in PROFILES.items():
            pm=float(sum(cfg['p'],Q(0))/2);qm=float(sum(cfg['q'],Q(0))/2)
            target=np.array([2*math.pi/3,4*math.pi/3,
                             2*math.pi*(1/6+pm-qm),2*math.pi*(1/3-qm)])
            shifts=np.rint((tt-target)/(2*math.pi));lift=tt-2*math.pi*shifts
            u=lift[:,0]-target[0];v0=lift[:,1]-target[1]
            p=1/6+(lift[:,2]-lift[:,3])/(2*math.pi)
            q=1/3-lift[:,3]/(2*math.pi)
            # A conservative proposal margin contains all central offset choices.
            pu=2*h*sum(abs(M[0]));pv=2*h*sum(abs(M[1]))
            pp=2*h*sum(abs(M[2]-M[3]))/(2*math.pi);pq=2*h*sum(abs(M[3]))/(2*math.pi)
            mask=(abs(u)+pu<float(cfg['hu']))&(abs(v0)+pv<float(cfg['hv']))
            mask&=(p-pp>float(cfg['p'][0]))&(p+pp<float(cfg['p'][1]))
            mask&=(q-pq>float(cfg['q'][0]))&(q+pq<float(cfg['q'][1]))
            for i in np.flatnonzero(mask):
                data=dict(source=SOURCE,source_sha256=hashlib.sha256((ROOT/SOURCE).read_bytes()).hexdigest(),
                          parent_row_0based=int(i),parent_centers=list(map(str,rows[i][1])),
                          child_level=16,offset_signs=[-1,-1,-1,-1],
                          frame_index=fidx,profile=profile)
                try:verify_example(data)
                except ValueError:continue
                return data
    raise ValueError('no demonstration subbox proposed')


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--build',action='store_true');args=ap.parse_args()
    path=HERE/'data/guarded_example.json'
    if args.build:path.write_text(json.dumps(propose(),indent=2)+'\n')
    data=json.loads(path.read_text());result=verify_example(data)
    result['data_sha256']=hashlib.sha256(path.read_bytes()).hexdigest()
    (HERE/'receipts/GUARDED_EXAMPLE.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))

if __name__=='__main__':main()
