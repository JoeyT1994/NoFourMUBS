#!/usr/bin/env python3
"""Fresh exact/outward replay of the radius025 uniform seed-ball proof.
A whole-box certificate is issued only after complete native cover verification.
"""
from __future__ import annotations
import argparse, concurrent.futures, gzip, hashlib, json, os, shutil, subprocess, sys, tempfile, time
from fractions import Fraction as Q
from pathlib import Path
import arithmetic_checks as ac
import bound_exact
import exact_checks as ec
import box_interface as geo
import extension_controls
from cover_geometry import native_id, native_grid
HERE=Path(__file__).resolve().parent
FLAGS=['-O3','-fno-tree-vrp','-std=c++17','-fno-fast-math','-ffp-contract=off']
RHO=Q(float.fromhex('0x1.999999999999bp-6'));DELTA=Q(float.fromhex('0x1.999999999999bp-5'));QCOEFF=67

def digest(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def dump(p,obj):
    p=Path(p);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(obj,indent=2,sort_keys=True)+'\n')
def open_text(p,mode='rt'):
    return gzip.open(p,mode,encoding='utf-8') if str(p).endswith('.gz') else open(p,mode,encoding='utf-8')
def check_manifest():
    path=HERE/'MANIFEST.sha256';checked=[]
    for raw in path.read_text().splitlines():
        h,name=raw.split(None,1);name=name.strip().lstrip('*');p=(HERE/name).resolve()
        if not p.is_relative_to(HERE) or not p.is_file():raise ValueError('invalid manifest path '+name)
        if digest(p)!=h:raise ValueError('manifest mismatch '+name)
        checked.append(name)
    if len(checked)!=len(set(checked)):raise ValueError('duplicate manifest paths')
    critical={'engine.cpp','interval_model.hpp','taylor_model.hpp','data/phase_cover.jsonl.gz','data/preconditioners.txt','data/preconditioners.json','seed_bound.py','verify.py','exact_checks.py','arithmetic_checks.py','pm_controls.cpp','cover_geometry.py','box_interface.py','bound_exact.py','reference_algebra.py','inputs/physical_algebra.py','inputs/CornerBounds_PROOF.md','data/determinant_words.txt','data/local_representatives.json','data/local_representatives.txt','INPUTS.json','data/dense_preconditioners.json','data/dense_preconditioners.txt','extension_controls.py'}
    if not critical<=set(checked):raise ValueError('manifest omits accepting inputs')
    for rec in json.loads((HERE/'INPUTS.json').read_text())['files']:
        if rec['path'] not in checked or digest(HERE/rec['path'])!=rec['sha256']:
            raise ValueError('adopted input hash mismatch '+rec['path'])
    return {'status':'PASS','entries':len(checked),'sha256':digest(path)}
def run_command(args,log=None):
    start=time.monotonic();p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
    if log:Path(log).write_text(p.stdout+p.stderr)
    if p.returncode:raise RuntimeError('command failed: '+str(args)+'\n'+p.stdout+p.stderr)
    return p.stdout, time.monotonic()-start

def compile_native(work):
    compiler=shutil.which(os.environ.get('CXX','c++'))
    if not compiler:raise RuntimeError('C++17 compiler not found')
    version,_=run_command([compiler,'--version'])
    flags=[f for f in FLAGS if not ('clang' in version.lower() and f=='-fno-tree-vrp')]
    receipts=[]
    for name,source,degree in [('engine2','engine.cpp',2),('engine4','engine.cpp',4),('controls2','pm_controls.cpp',2),('controls4','pm_controls.cpp',4)]:
        cmd=[compiler,*flags,f'-DPOLY_DEG={degree}',HERE/source,'-o',work/name]
        _,wall=run_command(cmd,work/(name+'.build.log'));receipts.append({'name':name,'degree':degree,'wall_seconds':wall,'command':list(map(str,cmd)),'compiler_version':version.strip()})
    return receipts

def local_check(work):
    out=work/'local_bounds.txt';stdout,wall=run_command([work/'engine4','local',HERE/'data/determinant_words.txt',HERE/'data/preconditioners.txt',HERE/'data/dense_preconditioners.txt',out],work/'local.log')
    refs={r['reference_id']:r for r in json.loads((HERE/'data/dense_preconditioners.json').read_text())};wanted=json.loads((HERE/'data/local_representatives.json').read_text());seen=set();records=[]
    for raw in out.read_text().splitlines():
        v=raw.split();i,j=map(int,v[:2]);linear,nonlinear,tail,ci,source,score=map(ac.number,v[2:]);assert len(v)==8
        assert i in wanted and 0<=j<8 and (i,j) not in seen;seen.add((i,j))
        assert min(linear,nonlinear,tail,ci,source)>=0
        # ci is the outward sum of the absolute parsed dyadics over signed rows.
        # Recheck its subsequent source bound independently with rational arithmetic.
        truth_ci=sum((abs(Q(n,2**refs[i]['denominator_exponent'])) for k,n in enumerate(refs[i]['P_dyadic_numerators'][j]) if k>=13),Q(0))
        assert ci>=truth_ci
        exact_ci=ci
        width=RHO if j<4 else DELTA
        assert source>=QCOEFF*RHO**2*exact_ci/width
        assert score>=linear+nonlinear+tail+source and score<1
        records.append({'reference':i,'row':j,'linear':str(linear),'nonlinear':str(nonlinear),'tail':str(tail),'source':str(source),'score':str(score)})
    assert seen=={(i,j) for i in wanted for j in range(8)}
    return {'status':'PASS','references':len(wanted),'rows':len(seen),'covered_references':63,'max_score':str(max(Q(r['score']) for r in records)),'records':records,'wall_seconds':wall,'native_summary':json.loads(stdout),'sha256':digest(out)}

def native_controls(work):
    reports=[]
    for degree in (2,4):
        out=work/f'arithmetic{degree}.txt';_,wall=run_command([work/f'controls{degree}',out],work/f'arithmetic{degree}.log')
        rep=ac.check_file(out);rep['wall_seconds']=wall;rep['sha256']=digest(out);reports.append(rep)
    return reports

def cover_records(path=None):
    data=[]
    with open_text(HERE/'data/phase_cover.jsonl.gz' if path is None else path) as f:
        for line in f:
            r=json.loads(line);g=native_id(r['root']);path=r['path'];kind=r['kind']
            if type(kind)!=int or kind<=0:raise ValueError('invalid source predicate label')
            degree=r.get('degree');
            if type(degree)!=int or degree not in (2,4):raise ValueError('invalid Taylor degree')
            data.append((g,path,kind,degree))
    return data

def replay_global(work,workers):
    geometry=ec.cover();data=cover_records();expected={(g,p) for g,p,k,d in data};assert len(expected)==len(data)
    jobs=[]
    for degree in (2,4):
        subset=[x for x in data if x[3]==degree]
        for i in range(min(workers,len(subset))):
            rows=subset[i::min(workers,len(subset))]
            inp=work/f'global_d{degree}_{i}.in';out=work/f'global_d{degree}_{i}.out'
            inp.write_text(''.join(f'{g} {p or "-"} {k}\n' for g,p,k,d in rows))
            jobs.append((degree,i,rows,inp,out))
    def one(job):
        degree,i,rows,inp,out=job
        stdout,wall=run_command([work/f'engine{degree}','replay',HERE/'data/determinant_words.txt',HERE/'data/preconditioners.txt',inp,out],work/f'global_d{degree}_{i}.log')
        actual={};counts={}
        for line in out.read_text().splitlines():
            g,p,k=line.split();g=int(g);k=int(k);p='' if p=='-' else p
            if (g,p) in actual or k<=0:raise ValueError('invalid native replay record')
            actual[g,p]=k;counts[str(k)]=counts.get(str(k),0)+1
        assert set(actual)=={(g,p) for g,p,k,d in rows}
        return {'degree':degree,'worker':i,'rows':len(rows),'wall_seconds':wall,'native_summary':json.loads(stdout),'predicates':counts,'output_sha256':digest(out)}
    start=time.monotonic()
    with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as pool:reports=list(pool.map(one,jobs))
    assert sum(r['rows'] for r in reports)==len(data)
    return {'status':'PASS','coverage':geometry,'verified_terminals':len(data),'unresolved_terminals':0,'by_degree':{str(d):sum(x[3]==d for x in data) for d in (2,4)},'workers':reports,'wall_seconds':time.monotonic()-start,'input_sha256':digest(HERE/'data/phase_cover.jsonl.gz')}

def protect_output(output,boxinput=None):
    p=output.resolve()
    manifest=HERE/'MANIFEST.sha256'
    pinned={manifest.resolve()}
    for raw in manifest.read_text().splitlines():
        if raw.strip():pinned.add((HERE/raw.split(None,1)[1].strip().lstrip('*')).resolve())
    if p in pinned or (p.exists() and any(q.exists() and p.samefile(q) for q in pinned)):
        raise ValueError('output would overwrite a pinned package file or hardlink')
    if boxinput:
        src=boxinput.resolve()
        if p==src or (p.exists() and src.exists() and p.samefile(src)):
            raise ValueError('output cannot overwrite the box input or its hardlink')

def native_geometry_check(work):
    out=work/'native_grid.txt'
    run_command([work/'engine2','grid',HERE/'data/determinant_words.txt',HERE/'data/preconditioners.txt',HERE/'data/local_representatives.txt',out])
    lines=out.read_text().splitlines();header=lines[0].split();assert header[0]=='K'
    rho,delta,qmax=map(ac.number,header[1:]);assert rho==RHO and delta==DELTA and qmax>=QCOEFF*rho*rho
    seen=set()
    for raw in lines[1:]:
        row=list(map(int,raw.split()));i=row[0];assert i not in seen and 0<=i<324;seen.add(i)
        assert tuple(x%6 for x in row[1:])==tuple(x%6 for x in native_grid(i))
    assert seen==set(range(324))
    return {'status':'PASS','native_grid_cells':324,'rho':str(rho),'delta':str(delta),'qmax':str(qmax)}

def native_dense_binding(work):
    out=work/'native_dense.txt'
    run_command([work/'engine2','dense',HERE/'data/determinant_words.txt',HERE/'data/preconditioners.txt',HERE/'data/dense_preconditioners.txt',out])
    rows=json.loads((HERE/'data/dense_preconditioners.json').read_text())
    expected={(r['reference_id'],i,k):Q(n,2**r['denominator_exponent']) for r in rows for i,row in enumerate(r['P_dyadic_numerators']) for k,n in enumerate(row)}
    seen=set()
    for line in out.read_text().splitlines():
        a,b,c,v=line.split();key=tuple(map(int,(a,b,c)))
        assert key in expected and key not in seen and ac.number(v)==expected[key];seen.add(key)
    assert seen==set(expected)
    return {'status':'PASS','native_dyadic_entries':len(seen),'sha256':digest(out)}

def main():
    if not __debug__:raise RuntimeError('Python optimization disables proof checks and is prohibited')
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True,type=Path);ap.add_argument('--boxes',type=Path);ap.add_argument('--workers',type=int,default=4);ap.add_argument('--algebra-and-local-only',action='store_true')
    a=ap.parse_args();assert 1<=a.workers<=32
    if a.boxes and a.algebra_and_local_only:raise ValueError('box acceptance requires the full uniform proof')
    protect_output(a.output,a.boxes);protect_output(Path(str(a.output)+'.verification.json'),a.boxes);protect_output(Path(str(a.output)+'.failed.json'),a.boxes);start=time.monotonic();report={'status':'NOT_CERTIFIED','radius_radians':'1/40','seeds':['2442','4224'],'source_sha256':digest(HERE/'engine.cpp')}
    try:
        report['manifest']=check_manifest();report['exact']=ec.run_without_manifest();report['exact']['local_symmetry']=ec.local_symmetry();report['exact']['dense_preconditioners']=ec.dense_preconditioners();report['exact']['independent_references']=ec.independent_root_references();assert geo.RADIUS==Q(1,40);report['box_interface_controls']=geo.controls();report['source_cover']=ec.cover();report['extension_controls']=extension_controls.check(cover_records)
        with tempfile.TemporaryDirectory(prefix='patch2442-radius025-') as td:
            w=Path(td);report['builds']=compile_native(w);report['native_geometry']=native_geometry_check(w);report['native_dense_binding']=native_dense_binding(w);report['bounds']=bound_exact.check();report['native_width_bounds']=bound_exact.check(RHO);report['arithmetic']=native_controls(w);report['local']=local_check(w)
            if a.algebra_and_local_only:
                report['status']='COMPONENTS_ONLY_NOT_A_UNIFORM_CERTIFICATE';report['wall_seconds']=time.monotonic()-start;dump(a.output,report);print(json.dumps({'status':report['status'],'output':str(a.output)}));return 0
            report['global']=replay_global(w,a.workers)
        report['status']='PASS_UNIFORM_BALL';report['wall_seconds']=time.monotonic()-start
        if a.boxes:
            a.output.parent.mkdir(parents=True,exist_ok=True);records=[];accepted=0
            with open_text(a.boxes) as f:
                for i,line in enumerate(f,1):
                    try:
                        row=json.loads(line);result=geo.certify(row);result['proof_status']=report['status'];result['radius_radians']='1/40';result['input_record']=row
                    except Exception as e:result={'id':f'line_{i}','ok':False,'reason':str(e)}
                    accepted+=bool(result.get('ok'));records.append(result)
            if not records:raise ValueError('empty box list')
            with open_text(a.output,'wt') as f:
                for row in records:f.write(json.dumps(row,sort_keys=True)+'\n')
            report['boxes']={'input_sha256':digest(a.boxes),'output_sha256':digest(a.output),'records':len(records),'accepted':accepted,'nonaccepted':len(records)-accepted}
            dump(str(a.output)+'.verification.json',report);print(json.dumps({'status':report['status'],**report['boxes']}));return int(accepted!=len(records))
        dump(a.output,report);print(json.dumps({'status':report['status'],'radius_radians':'1/40','global_terminals':report['global']['verified_terminals'],'max_local_score':report['local']['max_score'],'wall_seconds':report['wall_seconds']}));return 0
    except Exception as e:
        report['status']='NOT_CERTIFIED';report['error']=str(e);report['traceback']=__import__('traceback').format_exc();report['wall_seconds']=time.monotonic()-start
        errorpath=Path(str(a.output)+'.failed.json');dump(errorpath,report);raise
if __name__=='__main__':
    try:sys.exit(main())
    except Exception as e:print('VERIFICATION FAILED:',str(e),file=sys.stderr);sys.exit(2)
