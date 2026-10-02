#!/usr/bin/env python3
"""Verify frozen outward H-enclosures and the untouched-cover injection diff.
This does NOT run Julia or the production quartet-cover test.
"""
import argparse,json,hashlib,time,concurrent.futures,sys
from pathlib import Path
from predicate import *
sys.dont_write_bytecode=True
HERE=Path(__file__).resolve().parent

def replay_side(theta,rho,c):
    p=c['coefficients'];A=c['inverse'];rad=c['phase_error']
    assert len(p)==len(A)==6 and all(len(x)==15 for x in p) and all(len(x)==6 for x in A)
    assert math.isfinite(rad) and rad>0 and all(math.isfinite(x) for row in p+A for x in row)
    pp=[[V(x) for x in row] for row in p];AA=[[V(x) for x in row] for row in A]
    F=moments_poly_interval(pp);T=target_poly_interval(theta,rho)
    rp=[[F[i][0][k]-T[i][0][k] for k in range(N)] for i in range(6)];rr=[F[i][1]+T[i][1] for i in range(6)]
    eta=[]
    for i in range(6):
        ep=[sum(AA[i][j]*rp[j][k] for j in range(6)) for k in range(N)]
        eta.append((sum(mag(x) for x in ep)+sum(mag(AA[i][j])*rr[j] for j in range(6))).b)
    base=[sum(mag(x) for x in row[1:]).b for row in pp]
    Q=[box(p[i][0],base[i]+V(rad)) for i in range(6)];J=jac_interval(Q)
    lam=[sum(mag(V(int(i==j))-sum(AA[i][k]*J[k][j] for k in range(6))) for j in range(6)).b for i in range(6)]
    assert all(lam[i]<1 and eta[i]+lam[i]*V(rad)<V(rad) for i in range(6))
    assert all(hull(*c['phase_ranges'][i]).a<=Q[i].a and hull(*c['phase_ranges'][i]).b>=Q[i].b for i in range(6))
    return c

def replay_completion(theta,rho,h,v,dd):
    a,b,c,d=[cis(box(x,rho)) for x in theta];E=[[C(1)]*3,[C(1),a,b],[C(1),c,d]]
    B=side_intervals(h);CC=list(map(list,zip(*side_intervals(v))))
    assert len(dd['inverse'])==len(dd['D_centers'])==3 and len(dd['D_column_errors'])==3
    assert all(len(x)==3 for x in dd['inverse']+dd['D_centers'])
    # All stored binary entries of the inverse and centre are treated exactly.
    Y=[[C(*x) for x in row] for row in dd['inverse']]
    D=[[C(*x) for x in row] for row in dd['D_centers']]
    YA=mm(Y,adj(CC));lam=max(sum(cmag(C(int(i==j))-YA[i][j]) for j in range(3)) for i in range(3)).b
    assert lam<1
    F=mm(adj(E),B);AD=mm(adj(CC),D)
    res=mm(Y,[[AD[i][j]+F[i][j] for j in range(3)] for i in range(3)])
    er=[max(cmag(res[i][j]) for i in range(3))/(1-lam) for j in range(3)]
    assert all(V(dd['D_column_errors'][j]).a>=er[j].b for j in range(3))

def replay_one(row):
    if not row['result']['ok']:return 0 # inconclusive records authorize nothing
    assert row['result']['ok'] is True
    assert len(row['result']['completions'])==4 and len(row['result']['charts'])==2
    result=row['result'];theta=row['source']['theta'];rho=row['radius']
    assert V(rho).a>=(iv.pi/2**row['source']['level']+V(2)**(-40)).b
    assert seed_R_bound(theta,[rho]*4).a>1
    hh=[replay_side(theta,rho,c) for c in result['charts'][0]]
    vv=[replay_side([theta[i] for i in [0,2,1,3]],rho,c) for c in result['charts'][1]]
    assert disjoint_orbits(*hh) and disjoint_orbits(*vv)
    for dd,(h,v) in zip(result['completions'],itertools.product(hh,vv)):replay_completion(theta,rho,h,v,dd)
    return 1

def source_checks(root):
    manifest=json.loads((HERE/'INPUTS.json').read_text())
    for p,h in manifest['sha256'].items():assert hashlib.sha256((root/p).read_bytes()).hexdigest()==h,p
    prod=(root/'NumericalCampaign/Certification/cover.jl').read_text();prod=prod[prod.index('function certify_cell_cover('):]
    own=(HERE/'cover_model.jl').read_text();own=own[own.index('function certify_cover_with_model('):]
    expected=prod.replace('function certify_cell_cover(θ0, ρ;','function certify_cover_with_model(H;',1)
    expected=expected.replace('    cell = hcell(θ0, ρ; q = q)\n    cc = CoverCell(cell.H)','    cc = CoverCell(H)',1)
    assert own==expected
    assert 'hplus_tm(' not in (HERE/'provider.jl').read_text()
    print('PASS: source pins and exact two-substitution cover injection; no hplus_tm calls',flush=True)


def audit_sample(root,basename,total,rows):
    import gzip
    selected={1+i*(total-1)//999:i for i in range(1000)}
    source=root/'NumericalCampaign/Campaign/branch_bins_study_2026-09-30/results'/basename
    assert len(rows)==1000
    count=0
    with gzip.open(source,'rt') as f:
        for count,line in enumerate(f,1):
            if count not in selected:continue
            index=selected[count];parts=line.split();row=rows[index]
            assert row['index']==index and row['source']['line']==count
            assert row['source']['theta']==[float(x) for x in parts[3:7]]
            assert row['source']['level']==int(parts[2])
            assert str(row['source']['cell'])==parts[0]
    assert count==total
    print('PASS: 1000 deterministic evenly spaced source records; cached CSV R bounds unused',flush=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--project-root',type=Path,required=True)
    ap.add_argument('--all',action='store_true');ap.add_argument('--workers',type=int,default=4)
    a=ap.parse_args();start=time.time();source_checks(a.project_root)
    rows=[json.loads(l) for l in (HERE/'data/pilot_00000.jsonl').read_text().splitlines()]
    audit_sample(a.project_root,'posR_singular_boxes_level13.txt.gz',179671,rows)
    if a.all:
        with concurrent.futures.ProcessPoolExecutor(max_workers=a.workers) as ex:n=sum(ex.map(replay_one,rows,chunksize=4))
        assert len(rows)==1000 and n==617
        print('PASS: all 617 frozen four-orbit H-enclosures revalidated; remaining 383 inconclusive',flush=True)
    else:
        for i in [0,1,100,250,500,750,999]:replay_one(rows[i])
        print('PASS: seven selected construction records (use --all for full replay)',flush=True)
    # A bad inverse is not an acceptance, even when the original model was valid.
    c=rows[0]['result']['charts'][0][0].copy();c['inverse']=[[0]*6 for _ in range(6)]
    try:replay_side(rows[0]['source']['theta'],rows[0]['radius'],c)
    except AssertionError:pass
    else:raise AssertionError('zero preconditioner accepted')
    print(json.dumps(dict(status='PASS',full_replay=a.all,production_cover_tests_run=0,wall_seconds=time.time()-start)),flush=True)
if __name__=='__main__':main()
