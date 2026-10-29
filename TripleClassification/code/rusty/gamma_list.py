import glob,json,sys
out=open(sys.argv[1],"w"); n=0
for d in sys.argv[2:]:
    for j in sorted(glob.glob(d+"/b*_l*.jsonl")):
        best={}
        for l in open(j):
            try: x=json.loads(l)
            except ValueError: continue
            i=x["index"]
            if i not in best or (best[i]["status"]=="NOT ESTABLISHED" and x["status"]!="NOT ESTABLISHED"): best[i]=x
        for i,x in best.items():
            if x["status"]=="NOT ESTABLISHED" and "Timeout" not in x.get("reason","") and x.get("patterns"):
                out.write("%s %d\n"%(j[:-6]+".json.gz",i)); n+=1
print(n)
