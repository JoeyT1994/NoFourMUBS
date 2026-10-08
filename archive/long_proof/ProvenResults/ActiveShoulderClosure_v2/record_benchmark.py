"""Release helper: retain per-root timing and provenance, not acceptance booleans alone."""
import argparse,gzip,json,hashlib
from pathlib import Path
from geometry import HERE

def add(path,name,role='bounded local search'):
    with gzip.open(path,'rt') as f:
        header=json.loads(next(f));stats=[];summary=None
        for line in f:
            r=json.loads(line)
            if 'root' in r:stats.append({k:v for k,v in r.items() if k!='tree'})
            elif r.get('type')=='summary':summary=r
    if summary is None:raise ValueError('incomplete benchmark')
    if summary.get('cpu_seconds'):summary['nodes_per_cpu_second']=summary['nodes']/summary['cpu_seconds']
    doc=dict(name=name,role=role,raw_sha256=hashlib.sha256(Path(path).read_bytes()).hexdigest(),header=header,root_statistics=stats,summary=summary)
    out=HERE/'data/benchmarks'/(name+'.json.gz')
    with gzip.open(out,'wt') as f:json.dump(doc,f,sort_keys=True)
    index=HERE/'data/benchmark_summary.json';rows=json.loads(index.read_text())
    rows=[r for r in rows if r['name']!=name];rows.append(dict(name=name,role=role,**summary))
    index.write_text(json.dumps(rows,indent=2,sort_keys=True)+'\n')
    return doc
if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('path',type=Path);ap.add_argument('name');ap.add_argument('--role',default='bounded local search');a=ap.parse_args();print(add(a.path,a.name,a.role)['summary'])
