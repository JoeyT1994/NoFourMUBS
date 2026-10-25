#!/usr/bin/env python3
"""Run the exact cover and require that every proof input remains unchanged."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,time

BASE=Path(__file__).resolve().parent
DATA=BASE/'cover_data'

def snapshot():
 paths=[BASE/'verify_cover.py',BASE/'launch_replay.py']
 paths.extend(p for p in DATA.iterdir() if p.is_file() and p.name!='replay_receipt.json')
 return {str(p.relative_to(BASE)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(paths)}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--workers',type=int,default=4);args=ap.parse_args()
 assert 1<=args.workers<=64
 before=snapshot();started=time.time()
 out={'status':'RUNNING','proof_inputs_sha256':before,'workers':args.workers}
 receipt=BASE/'run_input_hashes.json';receipt.write_text(json.dumps(out,indent=2)+'\n')
 result=subprocess.run([sys.executable,'-I',str(BASE/'verify_cover.py'),'--workers',str(args.workers)],check=False)
 after=snapshot();assert before==after,'proof inputs changed during replay'
 assert result.returncode==0,('cover replay failed',result.returncode)
 replay=json.loads((DATA/'replay_receipt.json').read_text());assert replay['status']=='PASS'
 out.update({'status':'PASS','input_hashes_unchanged':True,'cover_receipt_sha256':hashlib.sha256((DATA/'replay_receipt.json').read_bytes()).hexdigest(),'elapsed_seconds_informational':time.time()-started})
 receipt.write_text(json.dumps(out,indent=2)+'\n')
 print('FROZEN INPUT REPLAY PASS',flush=True)

if __name__=='__main__':main()
