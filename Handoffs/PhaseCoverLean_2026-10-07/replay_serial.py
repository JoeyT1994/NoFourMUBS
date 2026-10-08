"""Bounded serial replay of the custom source closure (POSIX only).

Dependencies must already be prepared. This helper has not been used to claim
an independent clean rebuild of this packet or of its Mathlib dependencies.
"""
from pathlib import Path
import argparse, hashlib, json, os, shutil, signal, subprocess, time

P=Path(__file__).resolve().parent
ap=argparse.ArgumentParser(description=__doc__)
ap.add_argument('--plan',action='store_true',help='check pins and print order; do not execute Lean')
ap.add_argument('--seconds',type=int,default=180)
ap.add_argument('--heap-mib',type=int,default=2304)
ap.add_argument('--rss-mib',type=int,default=2816)
a=ap.parse_args()
assert 1<=a.seconds<=180 and 1<=a.heap_mib<=2304 and 1<=a.rss_mib<=2816
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
for entry in load(P/'MANIFEST.json')['files']:
    relative=Path(entry['path'])
    assert not relative.is_absolute() and '..' not in relative.parts
    assert sha(P/relative)==entry['sha256'],('Changed packet file',str(relative))
rows={x['module']:x for x in load(P/'SOURCE_INVENTORY.json')['modules']}
order=[];visiting=set();done=set()
def visit(module):
    if module in done:return
    assert module not in visiting,('Import cycle',module)
    visiting.add(module)
    for child in rows[module]['imports']:
        if child in rows:visit(child)
    visiting.remove(module);done.add(module);order.append(module)
for module in sorted(rows):visit(module)
if a.plan:
    print(json.dumps({'mode':'PLAN_ONLY_NO_LEAN_EXECUTION','custom_module_count':len(order),
                      'serial_module_order':order},indent=2))
    raise SystemExit(0)
assert os.name=='posix','The bounded helper requires POSIX process groups and flock.'
import fcntl
assert shutil.which('lake'),'Install the pinned lean-toolchain through elan first.'
assert (P/'.lake/packages/mathlib').is_dir(),'Prepare the pinned dependency checkout first (lake update).'
reserve=2*1024**3
assert shutil.disk_usage(P).free>=reserve,'Less than 2 GiB free disk; replay refused.'
runroot=P/'.phase-cover-replay';runroot.mkdir(exist_ok=True)
lock=(runroot/'serial.lock').open('a')
try:fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
except BlockingIOError:raise SystemExit('Another replay holds this packet\'s serial lock.')
attempt=runroot/('attempt-'+str(time.time_ns()));attempt.mkdir()
records=[]

def rss_tree(pid):
    result=subprocess.run(['ps','-eo','pid=,ppid=,rss='],text=True,capture_output=True,
                          timeout=5,check=True)
    processes={}
    for line in result.stdout.splitlines():
        fields=line.split()
        if len(fields)==3:processes[int(fields[0])]=(int(fields[1]),int(fields[2])*1024)
    selected={pid}
    while True:
        more={p for p,(parent,_) in processes.items() if parent in selected}-selected
        if not more:break
        selected.update(more)
    return sum(processes.get(p,(0,0))[1] for p in selected)

def terminate_group(proc):
    if proc.poll() is None:
        os.killpg(proc.pid,signal.SIGTERM)
        try:proc.wait(timeout=3)
        except subprocess.TimeoutExpired:
            os.killpg(proc.pid,signal.SIGKILL);proc.wait()

def save():
    (attempt/'RESULT.json').write_text(json.dumps({
      'manifest_sha256':sha(P/'MANIFEST.json'),'module_results':records,
      'all_custom_modules_compiled':len(records)==len(order) and all(r['success'] for r in records),
      'fresh_mathlib_source_rebuild':False,
      'scope':'Custom-source replay using the locally prepared pinned dependencies.'},indent=2)+'\n')

try:
    for module in order:
        if shutil.disk_usage(P).free<reserve:raise RuntimeError('Disk reserve reached before '+module)
        row=rows[module];target=P/'.lake/build/lib/lean'/Path(*module.split('.')).with_suffix('.olean')
        target.parent.mkdir(parents=True,exist_ok=True)
        log=attempt/(module+'.log');start=time.monotonic();peak=0;stop=None
        command=['lake','env','lean','-R','lean','-j1','-M'+str(a.heap_mib),'-T2000000',
                 '-o',str(target.relative_to(P)),row['file']]
        with log.open('w') as stream:
            proc=subprocess.Popen(command,cwd=P,stdout=stream,stderr=subprocess.STDOUT,
                                  start_new_session=True)
            try:
                while proc.poll() is None:
                    if time.monotonic()-start>a.seconds:stop='wall-time limit'
                    elif shutil.disk_usage(P).free<reserve:stop='disk reserve'
                    elif log.stat().st_size>64*1024**2:stop='log budget'
                    try:peak=max(peak,rss_tree(proc.pid))
                    except (subprocess.SubprocessError,ValueError):stop='process monitor failed'
                    if peak>a.rss_mib*1024**2:stop='RSS limit'
                    if stop:terminate_group(proc);break
                    time.sleep(.5)
            finally:terminate_group(proc)
        record={'module':module,'source_sha256':row['source_sha256'],
                'exit_code':proc.returncode,'stop_reason':stop,
                'success':proc.returncode==0 and stop is None and target.is_file(),
                'wall_seconds':round(time.monotonic()-start,3),'peak_tree_rss_bytes':peak,
                'log_sha256':sha(log)}
        if record['success']:record['object_sha256']=sha(target)
        records.append(record);save();print(module+': '+('PASS' if record['success'] else 'STOP'),flush=True)
        if not record['success']:raise SystemExit('Stopped at '+module+'; inspect the preserved replay receipt.')
finally:
    save();fcntl.flock(lock,fcntl.LOCK_UN);lock.close()
