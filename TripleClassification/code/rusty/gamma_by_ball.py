"""Split gamma receipts into compact per-ball files (only the fields the builder and auditor match on)."""
import collections,json,os,sys
out=sys.argv[1]; os.makedirs(out,exist_ok=True)
keep=("subatlas","subatlas_sha256","sub","seed_sha256","receipt_binding","gamma_sha256","closed_by_certifier","patterns_total","ball")
groups=collections.defaultdict(list)
for gp in sys.argv[2:]:
    for line in open(gp):
        try: g=json.loads(line)
        except ValueError: continue
        if "error" in g: continue
        c={k:g[k] for k in keep}; c["patterns"]=[dict(pattern=x["pattern"],fourier=x["fourier"],ordering=x["ordering"]) for x in g["patterns"]]
        groups[g["ball"]].append(c)
for b,rr in groups.items():
    with open(os.path.join(out,"b%d.jsonl"%b),"w") as f:
        for c in rr: f.write(json.dumps(c,separators=(",",":"))+"\n")
print(len(groups),"balls",sum(map(len,groups.values())),"records")
