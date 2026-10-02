exec(open('/private/tmp/t2-zero-neighbourhood/search_arcs.py').read().split('start=time.monotonic()')[0])
old=json.loads(open('/private/tmp/t2-zero-neighbourhood/search_arcs.jsonl').readlines()[-1]);done={(x['typ'],x['k'],x['path']):x for x in old['leaves']}
start=time.monotonic();records=[];fail=[]
for typ in ['curve','surface']:
 for k in range(6):
  queue=[('',F(k,3)+F(1,48),F(k+1,3)-F(1,48))]
  while queue:
   path,a,b=queue.pop()
   if (typ,k,path) in done:
    x=done[typ,k,path];x['phase_depth']=12;records.append(x);continue
   if any(ty==typ and kk==k and pp.startswith(path) for ty,kk,pp in done):
    q=(a+b)/2;queue.extend([(path+'1',q,b),(path+'0',a,q)]);continue
   q=(a+b)/2;tang=(b-a)/2;h=F(1,8192)
   cc=([F(2,3),0,q,1] if typ=='curve' else[F(2,3),F(4,3),q,2*q])
   rr=([h,h,h+tang,h] if typ=='curve' else[h,h,h+tang,h+2*tang])
   for depth in [12,16]:
    r=prune_box(list(map(conv,cc)),list(map(conv,rr)),depth=depth,maxlabels=1200,pair_budget=800000,triple_budget=500000)
    if r['ok']:break
   if r['ok'] and r['reason']!='R_nonpositive':
    x=dict(typ=typ,k=k,path=path,left=str(a),right=str(b),phase_depth=depth,result=r);records.append(x)
    print(json.dumps(dict(event='accept',**x,elapsed=time.monotonic()-start)),flush=True)
   elif len(path)<12:
    queue.extend([(path+'1',q,b),(path+'0',a,q)])
   else:
    x=dict(typ=typ,k=k,path=path,left=str(a),right=str(b),result=r);fail.append(x)
    print(json.dumps(dict(event='fail',**x,elapsed=time.monotonic()-start)),flush=True)
    if len(fail)>=4:break
  if len(fail)>=4:break
 if len(fail)>=4:break
print(json.dumps(dict(event='done',leaves=records,failed=fail,seconds=time.monotonic()-start)),flush=True)
