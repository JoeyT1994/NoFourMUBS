import glob,gzip,json,sys
out=[]
for d in sys.argv[2:]:
    for f in sorted(glob.glob(d+"/b*_l*.json.gz")):
        try:
            n=len(json.load(gzip.open(f))["seeds"]); k=set()
            for l in open(f[:-8]+".jsonl"):
                try: k.add(json.loads(l)["index"])
                except Exception: pass
            if len(k)==n: out.append(f)
        except Exception: pass
open(sys.argv[1],"w").write("\n".join(out)+"\n"); print(len(out))
