import sys,json,time,concurrent.futures
from pathlib import Path
from predicate import predicate
from interval_core import radius_for_level

def one(pair):
 i,row=pair;t=time.process_time();th=row['theta'];r=radius_for_level(row['level'])
 result=predicate(th,[r]*4)
 if not result['ok']:
  rt=predicate(th,[r]*4,transpose=True)
  if rt['ok']:result=rt
 return dict(index=i,source=row,radius=r,result=result,cpu_seconds=time.process_time()-t)
if __name__=='__main__':
 rows=json.load(open(sys.argv[1]));out=sys.argv[2];t=time.time();res=[]
 if Path(out).exists():raise FileExistsError('choose a new output shard')
 if 'nofourmubs_rescaled_2026-09-30' in str(Path(out).resolve()):raise ValueError('run-of-record output prohibited')
 with concurrent.futures.ProcessPoolExecutor(max_workers=4) as ex,open(out,'w') as f:
  for data in ex.map(one,enumerate(rows),chunksize=4):
   f.write(json.dumps(data)+'\n');f.flush();res.append(data)
   if len(res)%100==0:print(len(res),'ok',sum(x['result']['ok'] for x in res),'wall',round(time.time()-t,2),flush=True)
 summary=dict(n=len(res),closed=sum(x['result']['ok'] for x in res),cpu_seconds=sum(x['cpu_seconds'] for x in res),wall_seconds=time.time()-t,by_class={})
 for cls in sorted(set(x['source']['f6class'] for x in res)):
  v=[x for x in res if x['source']['f6class']==cls];summary['by_class'][cls]=dict(n=len(v),closed=sum(x['result']['ok'] for x in v))
 json.dump(summary,open(out+'.summary.json','w'),indent=2);print(summary)
