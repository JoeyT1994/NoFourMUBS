#!/usr/bin/env python3
"""Complete replay; exact dyadics, rational tests and outward intervals only.

No retained status field, approximate inverse, or numerical residual can
accept a tile. The two-dimensional parameter covers are audited exactly.
The already-proved regional matrix tube is an explicitly pinned import;
this command does not rerun its separate 45-million-node proof.
"""
import os
for k in ('OPENBLAS_NUM_THREADS','OMP_NUM_THREADS','MKL_NUM_THREADS'):
    os.environ[k]='1'
from pathlib import Path
import argparse, concurrent.futures, hashlib, json, platform, time
from interval import *
from geometry import PROFILES, profile_json, audit_partition
from kernel import accept_tile
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def bindings():
    dep=json.loads((HERE/'data/dependencies.json').read_text())
    require(isinstance(dep,dict) and len(dep)>0, 'empty input binding')
    for name,sha in dep.items():
        p=ROOT/name
        require(p.is_file() and digest(p)==sha, 'dependency hash mismatch: '+name)
    tube=json.loads((ROOT/'ProvenResults/ActiveShoulderClosure/data/extra_tubes.json').read_text())
    require(tube['direct_radius']=='1/36', 'wrong imported tube radius')
    require(any(c['grid']==180 and c['a']==3 and c['b']==1
                and c['tolerance_denominator']==6 and c['rho_denominator']==6
                for c in tube['cells']), 'missing imported regional tube cell')
    return dep


def load_certificate():
    require(json.loads((HERE/'data/profiles.json').read_text())==profile_json(),
            'profile metadata disagrees with theorem')
    tiles=json.loads((HERE/'data/tiles.json').read_text())
    require(isinstance(tiles,list) and len(tiles)>0, 'empty tile certificate')
    require(all(set(t)=={'profile','path'} and t['profile'] in PROFILES for t in tiles),
            'malformed tile metadata')
    require(tiles==sorted(tiles,key=lambda t:(t['profile'],t['path'])),
            'noncanonical tile ordering')
    partition={pr:audit_partition([t['path'] for t in tiles if t['profile']==pr])
               for pr in PROFILES}
    keys={b+'_'+k for b in ('F','A') for k in ('inverse','linear','quadratic','radii')}
    with np.load(HERE/'data/predictors.npz',allow_pickle=False) as f:
        require(set(f.files)==keys, 'missing/extra retained branch arrays')
        arrays={k:f[k] for k in f.files}
    require(all(a.shape[0]==len(tiles) and a.dtype==np.dtype('float64')
                and np.isfinite(a).all() for a in arrays.values()),
            'wrong predictor count, dtype, or finiteness')
    return tiles,arrays,partition


def one(args):
    tile,retained,precision=args
    iv.prec=precision
    return accept_tile(tile['profile'],tile['path'],retained)


def retained_at(arrays,i):
    return {b:{k:arrays[b+'_'+k][i] for k in ('inverse','linear','quadratic','radii')}
            for b in ('F','A')}


def summarize(results):
    out={}
    for pr in PROFILES:
        rr=[r for r in results if r['profile']==pr]
        out[pr]=dict(
            tiles=len(rr),
            phase_upper=str(max(Q(r['phase_upper']) for r in rr)),
            vector_squared_upper=str(max(Q(r['vector_squared_upper']) for r in rr)),
            R_lower=str(min(Q(r['R'][0]) for r in rr)),
            R_upper=str(max(Q(r['R'][1]) for r in rr)),
            leading_Q_lower=str(min(Q(r['leading_Q'][0]) for r in rr)),
            signed_Q_gap_lower=str(min(Q(r['signed_Q_gap'][0]) for r in rr)),
            F_combined_upper=str(max(Q(r['F']['combined_upper']) for r in rr)),
            A_combined_upper=str(max(Q(r['A']['combined_upper']) for r in rr)),
            F_contraction_upper=str(max(Q(r['F']['contraction_upper']) for r in rr)),
            A_contraction_upper=str(max(Q(r['A']['contraction_upper']) for r in rr)))
    return out


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--workers',type=int,default=4)
    ap.add_argument('--precision',type=int,default=160)
    ap.add_argument('--receipt',type=Path,default=HERE/'receipts/REPLAY.json')
    args=ap.parse_args()
    require(args.workers>=1 and args.precision>=120, 'invalid replay configuration')
    iv.prec=args.precision
    start=time.monotonic();parent_cpu=time.process_time()
    dep=bindings();tiles,arrays,partition=load_certificate()
    from algebra import audit
    from controls import controls
    exact=audit();negative=controls(tiles,arrays)
    from example import verify_example
    geometric_example=verify_example(json.loads((HERE/'data/guarded_example.json').read_text()))
    results=[]
    jobs=((tile,retained_at(arrays,i),args.precision) for i,tile in enumerate(tiles))
    with concurrent.futures.ProcessPoolExecutor(max_workers=args.workers) as pool:
        for i,result in enumerate(pool.map(one,jobs,chunksize=8)):
            results.append(result)
            if (i+1)%200==0 or i+1==len(tiles):
                print(json.dumps(dict(replayed=i+1,total=len(tiles),
                     wall_seconds=round(time.monotonic()-start,3))),flush=True)
    # No early success or unresolved leaf is possible.
    require(len(results)==len(tiles), 'incomplete replay')
    files={str(p.relative_to(HERE)):digest(p) for p in sorted(HERE.rglob('*'))
           if p.is_file() and '__pycache__' not in str(p) and p.suffix!='.pyc'
           and 'receipts' not in p.relative_to(HERE).parts}
    import mpmath,sympy
    receipt=dict(status='PASS', theorem='Fourier transverse stability: two explicit bands',
                 acceptance='exact rational and directed mpmath.libmp intervals',
                 precision_bits=args.precision,
                 unresolved_tiles=0,accepted_tiles=len(results),
                 partition=partition,summary=summarize(results),
                 exact_algebra=exact,controls=negative,guarded_example=geometric_example,
                 regional_tube=dict(status='imported proved theorem; hashes checked',
                                    cell=[180,3,1],projector_radius='1/36',
                                    upstream_full_cover_rerun=False),
                 all_four_pairings=dict(matched_F='joint phase contraction',
                     matched_A='strict larger same-row positional corner',
                     nonmatched_1='proved Tao exception, excluded by R<16',
                     nonmatched_2='proved Tao exception, excluded by R<16'),
                 arithmetic_cpu_seconds=sum(r['cpu_seconds'] for r in results),
                 parent_cpu_seconds=time.process_time()-parent_cpu,
                 wall_seconds=time.monotonic()-start,workers=args.workers,
                 environment=dict(python=platform.python_version(),numpy=np.__version__,
                                  mpmath=mpmath.__version__,sympy=sympy.__version__),
                 dependencies=dep,files=files,
                 claims_not_made=['entire shoulder closed','low-R strata covered',
                                  'all original frontier boxes covered',
                                  'proof-assistant formalization'])
    args.receipt.parent.mkdir(parents=True,exist_ok=True)
    args.receipt.write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:receipt[k] for k in ('status','accepted_tiles','unresolved_tiles',
                     'arithmetic_cpu_seconds','parent_cpu_seconds','wall_seconds')},indent=2))

if __name__=='__main__':main()
