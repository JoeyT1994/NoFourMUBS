"""Second pass: one task per cell that finished with failed leaves in results/SRC, rerun with larger caps into
results/DST (same frozen code; only resource limits change).
   python3 make_pass2.py [SRC=certify_full] [DST=SRC_pass2]  -> tasks_certifypass2.txt, then ./submit.sh certifypass2 NODES 1 NTASKS"""
import glob, os, re, sys
HERE = os.path.dirname(os.path.abspath(__file__))
SRC = sys.argv[1] if len(sys.argv) > 1 else "certify_full"
DST = sys.argv[2] if len(sys.argv) > 2 else SRC + "_pass2"
pat = re.compile(rb'\{"cell":(\d+),"done":true,"failed":([1-9]\d*),')
failed = set()
for fn in glob.glob(os.path.join(HERE, "results", SRC, "c_*.jsonl")):
    failed.update(int(m.group(1)) for m in pat.finditer(open(fn, "rb").read()))
caps = "CERT_CELLMAX=14400 CERT_CERTMAX=3600 CERT_MAXDEPTH=3 CERT_COVERBUDGET=100000000"
os.makedirs(os.path.join(HERE, "results", DST), exist_ok=True); os.makedirs(os.path.join(HERE, "logs", DST), exist_ok=True)
with open(os.path.join(HERE, "tasks_certifypass2.txt"), "w") as f:
    for c in sorted(failed):
        f.write(f"{caps} ./run_task.sh batch cells.txt {c} {c} results/{DST}/c_{c:09d}.jsonl &> logs/{DST}/c_{c:09d}.log\n")
print(f"{len(failed)} cells with failed leaves -> tasks_certifypass2.txt ({caps})")
