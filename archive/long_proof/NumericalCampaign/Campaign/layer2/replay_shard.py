"""Replay every accepted Julia leaf of a completed pilot shard."""
import json,os,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
folder=Path(sys.argv[1]).resolve()
assert (folder/'done.json').exists()
inp=folder/'replay_input.txt'
with inp.open('x') as f:
    for line in (folder/'cover.jsonl').open():
        r=json.loads(line)
        if r.get('status') not in ('certified','F_out','R_out','BC_out','D0_out'):continue
        if r.get('method')=='arb_F_order':continue  # replayed independently by audit.py
        path=','.join(map(str,r['path'])) if r['path'] else 'root'
        f.write(' '.join(map(str,[r['cell'],path,r['method'],r['radius'],*r['theta']]))+'\n')
env=dict(os.environ,CERT_COVER_ACCELERATED='1',OPENBLAS_NUM_THREADS='1',JULIA_NUM_THREADS='1',JULIA_PKG_PRECOMPILE_AUTO='0')
cmd=[os.environ.get('JULIA',str(Path.home()/'.juliaup/bin/julia')),'--startup-file=no',
     '--project='+str(ROOT/'NumericalCampaign/Certification/jlenv_cluster'),str(Path(__file__).with_name('guarded_replay.jl')),str(inp),str(folder/'replayed.jsonl')]
with (folder/'replay.log').open('x') as f:subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
assert all(json.loads(line)['ok'] for line in (folder/'replayed.jsonl').open())
print('PASS: all accepted Julia leaves replayed',folder,flush=True)
