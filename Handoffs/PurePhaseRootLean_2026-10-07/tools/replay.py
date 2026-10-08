#!/usr/bin/env python3
"""Print by default; explicit --run delegates every step to the reviewed guard."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys
P=Path(__file__).resolve().parent.parent
p=argparse.ArgumentParser()
p.add_argument('--guard',type=Path,required=True)
p.add_argument('--runtime-config',type=Path,required=True)
p.add_argument('--output',type=Path,required=True)
p.add_argument('--run',action='store_true')
a=p.parse_args()
if a.run:
 for path,expected in [(a.guard,'8cb574fadac01033a022be346d845ccc950dc495c3e764217e8ab15fbfd01852'),
  (a.guard.parent/'lean_guard_standalone.py','6de4718dafadd36aa2fbae1ea5b96ae728d6526512d97ac8d34864cb0e17bb12')]:
  if hashlib.sha256(path.read_bytes()).hexdigest()!=expected:
   raise SystemExit('Reviewed guard hash mismatch: '+str(path))
modules=[x['module'] for x in json.loads((P/'SOURCE_INVENTORY.json').read_text())['modules']]
done=[]
for i,name in enumerate(modules):
 out=a.output.resolve()/('%02d-'%i+name)
 cmd=[sys.executable,str(a.guard.resolve()),'--runtime-config',str(a.runtime_config.resolve()),
      '--source',str(P/'lean'/(name+'.lean')),'--out',str(out),
      '--seconds','180','--heap-mib','2304','--minimum-free-disk-gib','2']
 for prior in done:cmd+=['--extra-path',str(prior)]
 print(json.dumps({'module':name,'command':cmd,'execute':a.run}),flush=True)
 if a.run:
  subprocess.run(cmd,check=True)
  result=json.loads((out/'RESULT.json').read_text())
  if not result.get('success') or result.get('exit_code')!=0:
   raise SystemExit('Guard did not report a successful source check: '+name)
 done.append(out)
