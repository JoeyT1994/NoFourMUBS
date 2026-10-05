#!/usr/bin/env bash
# Early calibration (5 Oct 2026): a uniform random sample of shoulder rows (class 1,2,2,4) from the post-E inventory,
# the v2 lookup on the sample, then the frontier driver and verify on the sample rows v2 does not close.
# Measures the v2 hit rate and the frontier closure rate and CPU per box without waiting for the full v2 pass.
# Output: postE/calib_now/.  Usage (whole node): calib_now.sh [N=8192]
set -uo pipefail
cd "${PACKAGE_DIR:?}"
N="${1:-8192}"; C=$PWD/postE/calib_now; mkdir -p $C
SHR=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_shoulder_v2_2026-10-02; ASC=$SHR/ProvenResults/ActiveShoulderClosure_v2_frontier
module load gcc/13.3.0; export CXX=g++; source $HOME/shoulder_v2_work/common.sh; export SHOULDER_ROOT=$SHR
$PY - "$N" "$C" <<'EOF'
import gzip, json, random, sys, os
n, c = int(sys.argv[1]), sys.argv[2]; random.seed(20261005); res = []; k = 0
with gzip.open("postE/inventory.txt.gz", "rt") as inv, gzip.open("postE/inventory_boxes.jsonl.gz", "rt") as bx:
    i = 0
    for line in inv:
        if not line.strip() or line.startswith("#"):
            continue
        b = next(bx)
        if line.split()[7] == "1,2,2,4":
            k += 1
            if len(res) < n: res.append((i, line, b))
            else:
                j = random.randrange(k)
                if j < n: res[j] = (i, line, b)
        i += 1
res.sort()
with gzip.open(os.path.join(c, "inventory.txt.gz"), "wt") as f:
    f.write("# sample\n"); [f.write(l) for _, l, _ in res]
with open(os.path.join(c, "rows.txt"), "w") as f:
    [f.write(f"{i}\n") for i, _, _ in res]
with open(os.path.join(c, "boxes_all.jsonl"), "w") as f:
    [f.write(b) for _, _, b in res]
print(json.dumps(dict(shoulder_rows=k, sample=len(res))))
EOF
$PY -B postE.py v2 $C 48 > $C/v2.json
$PY - "$C" <<'EOF'
import gzip, json, sys, os
c = sys.argv[1]; ok = {json.loads(l)["id"] for l in gzip.open(os.path.join(c, "v2.jsonl.gz"), "rt") if json.loads(l)["ok"] is True}
B = open(os.path.join(c, "boxes_all.jsonl")).read().splitlines()
with open(os.path.join(c, "frontier.jsonl"), "w") as f:
    [f.write(b + "\n") for i, b in enumerate(B) if i not in ok]
print(json.dumps(dict(sample=len(B), v2_closed=len(ok), to_frontier=len(B) - len(ok))))
EOF
cd $SHR
$PY $ASC/build_region.py --boxes $C/frontier.jsonl --output $C/region.json
$PY $ASC/driver.py --region $C/region.json --boxes $C/frontier.jsonl --output $C/forest.jsonl.gz --jobs 120 --cpu-per-root 10 --max-nodes 2047 > $C/driver.log 2>&1
$PY $ASC/verify.py --region $C/region.json --boxes $C/frontier.jsonl --forest $C/forest.jsonl.gz --output $C/receipt.json --check-built-region --jobs 120 > $C/verify.log 2>&1
echo "verify exit $?"; tail -1 $C/driver.log | cut -c1-400; tail -1 $C/verify.log | cut -c1-400
