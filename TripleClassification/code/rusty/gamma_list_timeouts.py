"""Open cells the certifier timed out on (rows with c1 ok and a certified normal form), not yet in any gamma output."""
import glob,json,sys
done=set()
for g in glob.glob(sys.argv[2])+glob.glob(sys.argv[2].rsplit("/",1)[0]+"/gamma_new/*.jsonl"):
    for l in open(g):
        try: r=json.loads(l)
        except ValueError: continue
        if "error" not in r: done.add((r["subatlas"],r["sub"]))
out=open(sys.argv[1],"w"); n=0
for d in sys.argv[3:]:
    for j in sorted(glob.glob(d+"/b*_l*.jsonl")):
        best={}
        for l in open(j):
            try: x=json.loads(l)
            except ValueError: continue
            i=x["index"]
            if i not in best or (best[i]["status"]=="NOT ESTABLISHED" and x["status"]!="NOT ESTABLISHED"): best[i]=x
        sa=j[:-6]+".json.gz"; base=sa.split("/")[-1]
        for i,x in best.items():
            if x["status"]=="NOT ESTABLISHED" and (x.get("c1") or {}).get("ok") is True \
               and (x.get("normal_form") or {}).get("status")=="CERTIFIED" and (base,i) not in done:
                out.write("%s %d\n"%(sa,i)); n+=1
print(n)
