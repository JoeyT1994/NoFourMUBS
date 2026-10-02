"""Fresh complete integer covers for five new direct-radius 1/36 tubes.
The pinned WideFamilyTube machinery is reused without source edits.
"""
from pathlib import Path
import importlib.util,json,tempfile,time,resource,hashlib,os,shutil,subprocess
from geometry import HERE,ROOT

def run(output):
    if not __debug__:raise RuntimeError('critical upstream assertions require Python without -O')
    output=Path(output);output.mkdir(parents=True,exist_ok=False)
    path=ROOT/'ProvenResults/FourierNeighbourhood/WideFamilyTube/certificate.py'
    spec=importlib.util.spec_from_file_location('shoulder_upstream_tube_certificate',path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    data=json.loads((HERE/'data/extra_tubes.json').read_text())
    if data['status']!='PASS' or len(data['cells'])!=5:raise ValueError('extra tube manifest')
    if {(c['a'],c['b']) for c in data['cells']}!={(0,0),(2,0),(3,0),(3,1),(5,0)}:raise ValueError('wrong new regional scope')
    Q=1<<26;L=218880
    assert 2*(25*Q+10)**2<(36*Q)**2
    assert 2*(12*Q+40)**2<2**63 and 36*Q*Q<2**63
    assert 710*Q*5*(L//38+L//360)<2**63
    assert 128*(6*Q+6*(710*Q*(L//38)//(113*L)+1))<2**63
    started=time.monotonic();cpu=time.process_time();child=resource.getrusage(resource.RUSAGE_CHILDREN)
    reports=[]
    with tempfile.TemporaryDirectory(prefix='shoulder-tubes-') as temp:
        work=Path(temp);binary,trig,digest=module.prepare(work)
        (output/'arithmetic.hpp').write_bytes((work/'arithmetic.hpp').read_bytes())
        for cell in data['cells']:
            if cell['grid']!=180 or cell['tolerance_denominator']!=6 or cell['rho_denominator']!=6:raise ValueError('unexpected tube scope')
            dest=output/f"180_{cell['a']}_{cell['b']}"
            report=module.verify_cell(cell,binary,trig,dest)
            if report['nodes']!=data['expected_nodes'][f"{cell['a']},{cell['b']}"]:raise ValueError('integer replay node count changed')
            (dest/'certificate.json').write_text(json.dumps(report,indent=2)+'\n');reports.append(report)
    c=resource.getrusage(resource.RUSAGE_CHILDREN)
    result=dict(status='PASS',direct_radius='1/36',cells=5,nodes=sum(r['nodes'] for r in reports),positive_controls=sum(r['controls'] for r in reports),trig_sha256=digest,source_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),wall_seconds=time.monotonic()-started,cpu_seconds=time.process_time()-cpu+c.ru_utime+c.ru_stime-child.ru_utime-child.ru_stime)
    compiler=os.environ.get('CXX','c++');compiler_path=Path(shutil.which(compiler) or compiler)
    result['compiler']=dict(command=compiler,version=subprocess.run([compiler,'--version'],capture_output=True,text=True,check=True).stdout,sha256=hashlib.sha256(compiler_path.read_bytes()).hexdigest(),flags=['-std=c++17','-O2','-fsanitize=undefined','-fno-sanitize-recover=all'])
    (output/'summary.json').write_text(json.dumps(result,indent=2)+'\n');return result

if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--output-dir',required=True,type=Path);args=ap.parse_args()
    print(json.dumps(run(args.output_dir),indent=2))
