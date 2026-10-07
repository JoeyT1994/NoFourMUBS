import sys, json, time
from cert import certify
rows = [json.loads(l) for l in open('/Users/jtindall/Files/NoFourMUBS/RouteC/band/data/hard_boxes.jsonl')]
k = int(sys.argv[1]); kw = json.loads(sys.argv[2]) if len(sys.argv) > 2 else {}
res = certify(rows[k], log=lambda *a: print(*a, flush=True), **kw)
print(json.dumps(res))
