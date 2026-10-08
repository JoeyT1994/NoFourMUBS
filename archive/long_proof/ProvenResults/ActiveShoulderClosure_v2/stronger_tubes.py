"""Fresh exact graph and complete integer covers for two direct 1/30 tubes."""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
import importlib.util,json,tempfile,subprocess,os,resource,time,re,hashlib
from geometry import HERE,ROOT

def graph(raw):
    rho=F(5,27);N=len(raw);orth=[0]*N;ub=[0]*N
    if N!=48:raise ValueError('48 exact unit-ray centres required')
    for i in range(N):
        for j in range(i,N):
            re=sum(x*u+y*v for (x,y),(u,v) in zip(raw[i],raw[j]));im=sum(x*v-y*u for (x,y),(u,v) in zip(raw[i],raw[j]));p=(re*re+im*im)/36
            if not 0<=p<=1:raise ValueError('unit-ray overlap')
            if p<=4*rho*rho*(1-rho*rho):orth[i]|=1<<j;orth[j]|=1<<i
            A=3*(1-2*rho*rho)**2-F(5,2)+2*p
            if A<=0 or A*A<=5*p*(1-p):ub[i]|=1<<j;ub[j]|=1<<i
    if any(orth[i]&(1<<i) or ub[i]&(1<<i) for i in range(N)):raise ValueError('self edge')
    def cliques(pool,need):
        if need==0:yield ();return
        while pool.bit_count()>=need:
            bit=pool&-pool;i=bit.bit_length()-1;pool^=bit
            for tail in cliques(pool&orth[i],need-1):yield(i,*tail)
    cases=[]
    for C in cliques((1<<N)-1,6):
        pool=(1<<N)-1
        for i in C:pool&=ub[i]
        candidates=[i for i in range(N) if pool&(1<<i)]
        if any(all(orth[i]&(1<<j) for i,j in combinations(D,2)) for D in combinations(candidates,6)):raise ValueError('compatible six-cliques')
        if next(cliques(pool,6),None) is not None:raise ValueError('recursive clique check')
        cases.append(dict(C=C,D_pool=candidates))
    return dict(rho=str(rho),C_cliques=len(cases),max_D_pool=max((len(c['D_pool']) for c in cases),default=0),orth_edges=sum(x.bit_count() for x in orth)//2,ub_edges=sum(x.bit_count() for x in ub)//2,cases=cases)

def run(output):
    if not __debug__:raise RuntimeError('no Python -O')
    output=Path(output);output.mkdir(parents=True,exist_ok=False);base=ROOT/'ProvenResults/FourierNeighbourhood/WideFamilyTube'
    spec=importlib.util.spec_from_file_location('stronger_upstream',base/'certificate.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
    original=(base/'cover.cpp').read_text();expected=original.replace('(dist+6*rad)*rho_den<6*Q','(dist+6*rad)*27<30*Q').replace('tolerance_den>=6 && tolerance_den<=16384 && rho_den>=6 && rho_den<=128','tolerance_den==5 && rho_den==27')
    if original.count('(dist+6*rad)*rho_den<6*Q')!=1 or (HERE/'cover30.cpp').read_text()!=expected:raise ValueError('audited constant-only C++ extension')
    Q=1<<26;L=218880
    if not all([2*(25*Q+10)**2<(36*Q)**2,2*(12*Q+40)**2<2**63,36*Q*Q<2**63,710*Q*5*(L//38+L//360)<2**63,27*(6*Q+6*(710*Q*(L//38)//(113*L)+1))<2**63,30*Q<2**63]):raise ValueError('integer range bound')
    data=json.loads((HERE/'data/stronger_tubes.json').read_text())
    if data['status']!='PASS' or {(c['a'],c['b']) for c in data['cells']}!={(0,0),(2,0)} or len(data['cells'])!=2:raise ValueError('stronger regional scope')
    start=time.monotonic();cpu=time.process_time();usage=resource.getrusage(resource.RUSAGE_CHILDREN);reports=[]
    with tempfile.TemporaryDirectory(prefix='shoulder-stronger-') as temp:
        work=Path(temp);_,trig,digest=m.prepare(work);binary=work/'cover30'
        subprocess.run([os.environ.get('CXX','c++'),'-std=c++17','-O2','-fsanitize=undefined','-fno-sanitize-recover=all','-I',str(work),str(HERE/'cover30.cpp'),'-o',str(binary)],check=True)
        (output/'arithmetic.hpp').write_bytes((work/'arithmetic.hpp').read_bytes())
        for cell in data['cells']:
            if cell['grid']!=180 or cell['tolerance_denominator']!=5 or cell['rho_numerator']!=5 or cell['rho_denominator']!=27:raise ValueError('stronger radii')
            out=output/f"180_{cell['a']}_{cell['b']}";out.mkdir();raw=m.load_centers(base/'data'/cell['centers']);g=graph(raw)
            centers,controls,n=m.inputs(raw,180,cell['a'],cell['b'],5,out)
            call=subprocess.run([str(binary),str(trig),str(centers),str(controls),'180',str(cell['a']),str(cell['b']),'5','27'],capture_output=True,text=True,timeout=120)
            (out/'cover.txt').write_text(call.stdout+call.stderr);match=re.search(r'PASS nodes (\d+) rejected (\d+) included (\d+)\n$',call.stdout)
            if call.returncode!=0 or not match or f'CONTROLS {n}\n' not in call.stdout:raise ValueError('incomplete integer confinement')
            nodes,rejected,included=map(int,match.groups())
            if 31*nodes+19**5!=32*(rejected+included) or len(re.findall(r'^LABEL ',call.stdout,re.M))!=48 or nodes!=data['expected_nodes'][f"{cell['a']},{cell['b']}"]:raise ValueError('complete-cover census')
            report=dict(status='PASS',cell=cell,nodes=nodes,rejected=rejected,included=included,controls=n,direct_radius='1/30',graph=g);reports.append(report)
            (out/'certificate.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    after=resource.getrusage(resource.RUSAGE_CHILDREN)
    result=dict(status='PASS',direct_radius='1/30',cells=2,nodes=sum(r['nodes'] for r in reports),positive_controls=sum(r['controls'] for r in reports),raw_amplitude_tolerance='1/5',common_ray_projector_radius='5/27',trig_sha256=digest,cpp_sha256=hashlib.sha256((HERE/'cover30.cpp').read_bytes()).hexdigest(),wall_seconds=time.monotonic()-start,cpu_seconds=time.process_time()-cpu+after.ru_utime+after.ru_stime-usage.ru_utime-usage.ru_stime)
    from transfer import controls
    result['improved_direct_radius']='1/28';result['exact_transfer']=controls()
    (output/'summary.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n');return result
if __name__=='__main__':
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--output-dir',required=True);a=p.parse_args();print(json.dumps(run(a.output_dir),indent=2))
