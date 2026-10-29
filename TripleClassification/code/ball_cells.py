"""Open cells of one layer file (C1 ok, certified normal form) not covered by any gamma receipt in the given files."""
import json,sys
layer,out=sys.argv[1],sys.argv[2]; gfiles=sys.argv[3:]
base=layer.split("/")[-1]
done=set()
for g in gfiles:
    try: f=open(g)
    except OSError: continue
    for l in f:
        try: r=json.loads(l)
        except ValueError: continue
        if "error" not in r: done.add((r.get("subatlas"),r.get("sub")))
best={}
for l in open(layer[:-8]+".jsonl"):
    try: x=json.loads(l)
    except ValueError: continue
    i=x["index"]
    if i not in best or (best[i]["status"]=="NOT ESTABLISHED" and x["status"]!="NOT ESTABLISHED"): best[i]=x
n=0
with open(out,"w") as f:
    for i,x in best.items():
        if x["status"]=="NOT ESTABLISHED" and (x.get("c1") or {}).get("ok") is True \
           and (x.get("normal_form") or {}).get("status")=="CERTIFIED" and (base,i) not in done:
            f.write("%s %d\n"%(layer,i)); n+=1
print(n)
