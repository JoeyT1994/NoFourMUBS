"""Portable replay of the main ZT deliverables. No network use.

Quick mode verifies two full seed spheres, the exact geometric lower bound,
negative controls, the edge contraction, and diagnostic edge patches.
Full mode additionally replays the entire new edge sphere. For all seed
spheres and all sharpness maps, see the explicit README commands.
"""
from pathlib import Path
import argparse,os,subprocess,sys,json,time

ROOT=Path(__file__).resolve().parent

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--full',action='store_true')
    p.add_argument('--output-dir',default='replayed')
    a=p.parse_args();out=ROOT/a.output_dir;out.mkdir(parents=True,exist_ok=True)
    cert=ROOT/'context/sample_certificate.json.gz'
    jobs=[
      ('seed6',['weighted_replay.py',str(cert),'--seed','6','--groups','counts/refined_results/seed_6_patches.json','--output',str(out/'seed6.json')]),
      ('seed8',['weighted_replay.py',str(cert),'--seed','8','--groups','counts/refined_results/seed_8_patches.json','--output',str(out/'seed8.json')]),
      ('geometry',['replay_geometry.py',str(cert),'counts/seed6_geometric_obstruction.json',str(out/'geometry.json')]),
      ('negative_controls',['verify_controls.py',str(cert),str(out/'negative_controls.json')]),
      ('edge',['edge/edge_replay.py','--certificate',str(cert),'--output',str(out/'edge.json')]+([] if a.full else ['--limit','32'])),
    ]
    env=dict(os.environ);env['OPENBLAS_NUM_THREADS']='1'
    results=[]
    for label,args in jobs:
        start=time.monotonic()
        result=subprocess.run([sys.executable,*args],cwd=ROOT,env=env,text=True,capture_output=True)
        (out/(label+'.log')).write_text(result.stdout+result.stderr)
        rec=dict(check=label,exit_code=result.returncode,seconds=time.monotonic()-start)
        if result.returncode==0:
            try:
                d=json.loads((out/(label+'.json')).read_text())
                rec['status']=d['status']
                rec['ok']=d['status'].startswith('CERTIFIED') or d['status']=='PASS'
            except (OSError,KeyError,ValueError):rec['ok']=False
        else:rec['ok']=False
        results.append(rec);print(json.dumps(rec),flush=True)
        if not rec['ok']:break
    summary=dict(status='PASS' if len(results)==len(jobs) and all(r['ok'] for r in results) else 'FAIL',
                 mode='full edge' if a.full else 'quick',checks=results)
    (out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    if summary['status']!='PASS':raise SystemExit(1)

if __name__=='__main__':main()
