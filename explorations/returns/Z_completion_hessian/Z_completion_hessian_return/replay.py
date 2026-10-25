"""Replay Handoff Z's centre-based certificates and certified sharpness witnesses."""
from pathlib import Path
import argparse, hashlib, json, os, subprocess, sys, time

ROOT=Path(__file__).resolve().parent

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--quick',action='store_true',help='Check the integer identity and first ball; leave full result files unchanged.')
    ap.add_argument('--diagnostics',action='store_true',help='Also run the numerical derivative cross-checks.')
    args=ap.parse_args()
    hashes=json.loads((ROOT/'INPUT_SHA256.json').read_text())
    for name,expected in hashes.items():
        actual=hashlib.sha256((ROOT/name).read_bytes()).hexdigest()
        if actual!=expected:raise SystemExit('Input snapshot hash mismatch: '+name)
    env=os.environ.copy();env['OPENBLAS_NUM_THREADS']='1'
    logdir=ROOT/'replay_logs';logdir.mkdir(exist_ok=True)
    tasks=[('signature',['signature_replay.py'])]
    if args.quick:
        tasks.append(('quick_ball',['fullphase/certify.py','--limit','1','--out',str(logdir/'quick_certificate.jsonl')]))
    else:
        tasks.extend([
            ('whole_balls',['fullphase/certify.py','--out','FINAL_CERTIFICATES.jsonl']),
            ('hessian_witnesses',['numerics/certify_lower_witnesses.py']),
            ('remainder_witnesses',['numerics/certify_remainder_witnesses.py','--certificates',str(ROOT/'fullphase/FINAL_CERTIFICATES.jsonl')]),
            ('sharpness_comparison',['numerics/certified_comparison.py']),
            ('reduced_radii',['bounds/reduced_radius_replay.py','--refresh'])])
    if args.diagnostics:tasks.append(('numerical_derivatives',['numerics/check_derivatives.py']))
    started=time.perf_counter()
    for label,command in tasks:
        log=logdir/(label+'.log')
        with log.open('w') as output:
            result=subprocess.run([sys.executable,*command],cwd=ROOT,env=env,stdout=output,stderr=subprocess.STDOUT)
        if result.returncode:
            print(log.read_text()[-12000:],file=sys.stderr)
            raise SystemExit('REPLAY FAILED: '+label)
        print('PASS',label,flush=True)
    if args.quick:
        records=[json.loads(s) for s in (logdir/'quick_certificate.jsonl').read_text().splitlines()]
        if len(records)!=1 or records[0]['status']!='CERTIFIED':raise SystemExit('First-ball certificate did not pass')
    else:
        records=[json.loads(s) for s in (ROOT/'fullphase/FINAL_CERTIFICATES.jsonl').read_text().splitlines()]
        if len(records)!=300 or any(x['status']=='ERROR' for x in records):raise SystemExit('Incomplete or erroneous full-ball replay')
        lower_h=[json.loads(s) for s in (ROOT/'numerics/lower_witnesses.jsonl').read_text().splitlines()]
        lower_n=[json.loads(s) for s in (ROOT/'numerics/remainder_lower_witnesses.jsonl').read_text().splitlines()]
        if len(lower_h)!=300 or any(x['status']!='CERTIFIED' for x in lower_h):raise SystemExit('Incomplete Hessian witness replay')
        if len(lower_n)!=300 or sum(x['status']=='CERTIFIED' for x in lower_n)!=291 or any(x['status']=='ERROR' for x in lower_n):raise SystemExit('Incomplete remainder witness replay')
        summary=json.loads((ROOT/'numerics/CERTIFIED_COMPARISON.json').read_text())
        if summary['total']['strict_certified']!=291:raise SystemExit('Unexpected strict-certificate count')
        if not summary['total']['n_record']['ratio_upper_max']<1.793:raise SystemExit('C1 sharpness headline failed')
        if not summary['thresholds']['100']['Cw']['ratio_upper_max']<2.350:raise SystemExit('Contracted Hessian sharpness headline failed')
        if not summary['thresholds']['150']['Ctheta']['ratio_upper_max']<2.278:raise SystemExit('Raw Hessian sharpness headline failed')
        small=[json.loads(s) for s in (ROOT/'bounds/reduced_radius_certificates.jsonl').read_text().splitlines()]
        if len(small)!=9 or any(x['status']!='CERTIFIED' for x in small):raise SystemExit('Reduced-radius replay failed')
        print('CERTIFIED: 291 full radii; 9 separate reduced radii; all stated sharpness thresholds pass.')
    print('Elapsed seconds:',round(time.perf_counter()-started,2))

if __name__=='__main__':main()
