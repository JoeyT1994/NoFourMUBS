"""Compile the semantic data/bridges in memory-bounded batches."""
from pathlib import Path
import argparse
import json
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--data-only', action='store_true')
parser.add_argument('--wait-for-fourier', action='store_true')
args = parser.parse_args()
manifest = json.loads((ROOT/'audit/sos/SEMANTIC_BRIDGES.json').read_text())
codes = sorted(n for n in manifest['files'] if n.startswith('MomentCodes'))
batches = [codes[i:i+2] for i in range(0,len(codes),2)] + [['MomentData.lean']]
if not args.data_only:
    batches += [[n] for n in sorted(manifest['files']) if n.startswith('ReusedRows')]
logdir = ROOT/'audit/sos_semantics_build'
logdir.mkdir(exist_ok=True)
for i,batch in enumerate(batches):
    if batch[0].startswith('ReusedRows') and args.wait_for_fourier:
        while True:
            upstream = json.loads((ROOT/'audit/FOURIER_BUILD_STATUS.json').read_text())
            if upstream.get('returncode'):
                raise SystemExit('The upstream Fourier build failed; semantic bridges are deferred.')
            if upstream.get('complete'):
                break
            time.sleep(5)
    modules = ['NoFourMUBs.Step2.SOS.'+Path(n).stem for n in batch]
    path = logdir/f'batch_{i:03d}.log'
    with path.open('w') as output:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake','build',*modules],
                                cwd=ROOT/'lean',stdout=output,stderr=subprocess.STDOUT)
    print(i, batch, 'exit',result.returncode,flush=True)
    status = {'last_batch':batch,'last_log':str(path.relative_to(ROOT/'audit')),
              'returncode':result.returncode,'complete':False,'data_only':args.data_only}
    (ROOT/'audit/SOS_SEMANTICS_BUILD_STATUS.json').write_text(json.dumps(status,indent=2)+'\n')
    if result.returncode:raise SystemExit(result.returncode)
status['complete']=True
(ROOT/'audit/SOS_SEMANTICS_BUILD_STATUS.json').write_text(json.dumps(status,indent=2)+'\n')
