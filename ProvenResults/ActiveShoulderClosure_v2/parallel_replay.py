"""Fresh parallel cover replay, deduplicated by full outward input geometry.

On-disk progress is diagnostic only: it is never loaded as acceptance evidence.
Every invocation recomputes each distinct cover; the normal tree auditor still
checks every leaf, both signs, the Tao guard, and exact box containment.
"""
import json,time
from pathlib import Path
from fractions import Fraction as F
from multiprocessing import get_context
from concurrent.futures import ProcessPoolExecutor,as_completed
from geometry import initial_box,split_box
from campaign_terminals import replay_cover_key,retain_fresh_cover

def collect(region,records):
    requests={};calls=0
    for record in records:
        nodes={n['path']:n for n in record['tree']}
        if len(nodes)!=len(record['tree']):raise ValueError('duplicate paths')
        todo=[('',*initial_box(region,record['root']))];visited=set()
        while todo:
            path,c,r=todo.pop();n=nodes[path];visited.add(path)
            t=n.get('report',{}).get('terminal')
            if t is not None and t.get('method')=='accelerated_cover':
                both=t['conjugate_checked']
                if type(both)!=bool or len(t['covers'])!=(2 if both else 1):raise ValueError('cover sign census')
                for sign,q in zip(([1,-1] if both else [1]),t['covers']):
                    cc=[sign*x for x in c];cube='radii' not in q
                    key=replay_cover_key(cc,r,cube)
                    rr=q.get('radii',[q.get('radius')]*4)
                    if tuple(q['centers'])!=key[1] or tuple(rr)!=key[2]:raise ValueError('stored cover geometry')
                    budget=max(q['node_budget'],q['nodes']+1024)
                    cost=float(q.get('cpu_seconds',0));calls+=1
                    if key in requests:
                        requests[key]['nodes']=max(requests[key]['nodes'],budget)
                        requests[key]['historical_cpu']=max(requests[key]['historical_cpu'],cost)
                    else:requests[key]=dict(c=c.copy() if sign==1 else cc,r=r.copy(),cube=cube,nodes=budget,historical_cpu=cost)
            if n['kind']=='split':
                axis=n['axis']
                if type(axis)!=int or not 0<=axis<=4:raise ValueError('split axis')
                for b in (0,1):
                    todo.append((path+str(b),c,r) if axis==4 else (path+str(b),*split_box(c,r,axis,b)))
            elif n['kind']!='leaf':raise ValueError('node kind')
        if visited!=set(nodes):raise ValueError('unreachable nodes')
    return requests,calls

def worker(request):
    from campaign_terminals import cover
    return cover(request['c'],request['r'],request['nodes'],300,cube=request['cube'])

def atomic_json(path,value):
    tmp=path.with_suffix(path.suffix+'.tmp')
    tmp.write_text(json.dumps(value,indent=2,sort_keys=True)+'\n');tmp.replace(path)

def prepare(region,records,jobs,output_dir):
    output_dir=Path(output_dir);output_dir.mkdir(exist_ok=False)
    requests,calls=collect(region,records);ordered=sorted(requests.items(),key=lambda item:-item[1]['historical_cpu'])
    started=time.monotonic();cpu=0.;done=0
    status=dict(status='RUNNING',calls=calls,distinct=len(requests),completed=0,jobs=jobs,
                acceptance_source='fresh outward computations in this invocation; progress files are never trusted on restart')
    atomic_json(output_dir/'progress.json',status)
    print('continuation covers:',len(requests),'distinct inputs from',calls,'calls;',jobs,'workers',flush=True)
    try:
        with (output_dir/'completed.jsonl').open('w') as log:
            with ProcessPoolExecutor(max_workers=jobs,mp_context=get_context('spawn')) as pool:
                pending={pool.submit(worker,request):(key,request) for key,request in ordered}
                for future in as_completed(pending):
                    key,request=pending[future];result=future.result()
                    retain_fresh_cover(key,result);done+=1;cpu+=result.get('cpu_seconds',0)
                    log.write(json.dumps(dict(key=key,result=result),sort_keys=True)+'\n');log.flush()
                    status.update(completed=done,cpu_seconds=cpu,wall_seconds=time.monotonic()-started)
                    atomic_json(output_dir/'progress.json',status)
                    if done%25==0 or done==len(requests):
                        print('continuation covers',done,'/',len(requests),'CPU',round(cpu,1),'s; wall',round(status['wall_seconds'],1),'s',flush=True)
        status.update(status='PASS',wall_seconds=time.monotonic()-started)
        atomic_json(output_dir/'progress.json',status)
        return status
    except BaseException as ex:
        status.update(status='INCOMPLETE',completed=done,error=type(ex).__name__+': '+str(ex),wall_seconds=time.monotonic()-started)
        atomic_json(output_dir/'progress.json',status)
        raise
