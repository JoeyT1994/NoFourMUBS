#!/usr/bin/env bash
# Brute-force factored signed-mean run (6 Oct 2026), one whole node per job, NSLOT concurrent shards per node.
# Each slot: claim the next shard (mkdir claims/shard; stale claims of dead jobs are taken over), then in a private
# hard-link copy of the adapter: certify pass A (CPU_A s per box), pass B (CPU_B s, resumes checkpoints), fresh
# replay of every closed box, then pack states + replay receipts + pass receipts into packed/shard.tar.gz and
# write done/shard.json.  Requeue-safe: per-box states persist until packing.
#   sbatch ... psd_worker.sh   (env: R=run root on ceph, NSLOT, CPU_A, CPU_B)
set -u
R=${R:-/mnt/ceph/users/jtindall/nofour_psd}; NSLOT=${NSLOT:-2}; CPU_A=${CPU_A:-60}; CPU_B=${CPU_B:-300}
JOBS=$(( 128 / NSLOT )); ME=${SLURM_JOB_ID:-manual}
module load gcc/13.3.0 python/3.12.9
mkdir -p $R/claims $R/done $R/packed $R/slots $R/logs
claim() {   # print a shard name or nothing
  for f in $(python3 -c "import json;print('\n'.join(s['file'][:-6] for s in json.load(open('$R/inputs/MANIFEST.json'))['shards']))"); do
    [ -e $R/done/$f.json ] && continue
    if mkdir $R/claims/$f 2>/dev/null; then echo $ME > $R/claims/$f/owner; echo $f; return; fi
    o=$(cat $R/claims/$f/owner 2>/dev/null)
    if [ -n "$o" ] && [ "$o" != "$ME" ] && ! squeue -h -j "$o" -t R,CG 2>/dev/null | grep -q .; then
      if mv $R/claims/$f $R/claims/.stale.$f.$ME 2>/dev/null; then rm -rf $R/claims/.stale.$f.$ME; mkdir $R/claims/$f && echo $ME > $R/claims/$f/owner && echo $f && return; fi
    fi
  done
}
slot() {
  local k=$1 S=$R/slots/$(hostname -s)_$1
  [ -d $S ] || cp -al $R/adapter $S
  while true; do
    f=$(claim); [ -z "$f" ] && break
    local SS=states-$f L=$R/logs/$f
    export INWARD_INPUT=$R/inputs/$f.jsonl
    export INWARD_INPUT_SHA256=$(python3 -c "import json;print([s['sha256'] for s in json.load(open('$R/inputs/MANIFEST.json'))['shards'] if s['file']=='$f.jsonl'][0])")
    t=$(date +%s)
    ( cd $S && python3 -B certify_boxes.py --mode certify --backend linear --order 3 --cpu $CPU_A --depth 48 --nodes 65535 \
        --jobs $JOBS --tag ${f}_A_$t --state-set $SS > $L.A.$t.log 2>&1
      python3 -B certify_boxes.py --mode certify --backend linear --order 3 --cpu $CPU_B --depth 48 --nodes 65535 \
        --jobs $JOBS --tag ${f}_B_$t --state-set $SS > $L.B.$t.log 2>&1
      python3 -B certify_boxes.py --mode replay --backend linear --order 3 --jobs $JOBS --tag ${f}_replay_$t \
        --state-set $SS > $L.replay.$t.log 2>&1; echo $? > $L.replay.$t.exit )
    rx=$(cat $L.replay.$t.exit)
    ( cd $S && python3 - "$f" "$SS" "$t" "$rx" "$R" <<'PY'
import json, glob, gzip, hashlib, sys, os
f, ss, t, rx, R = sys.argv[1:]
rows = [json.loads(l) for l in open(f'{R}/inputs/{f}.jsonl')]
rep = {}
for p in glob.glob(f'replay/{ss}/*.json'):
    r = json.load(open(p))
    if r['status'] == 'PASS_WHOLE_BOX_REPLAY': rep[r['id']] = r
open_ids = [r['id'] for r in rows if r['id'] not in rep]
json.dump(dict(shard=f, rows=len(rows), replay_exit=int(rx), accepted=sorted(rep), unresolved=open_ids,
               terminals=sum(r['leaves'] for r in rep.values()), replay_cpu=sum(r['cpu_seconds'] for r in rep.values()),
               t=t), open(f'{R}/done/{f}.json.tmp', 'w'))
PY
      tar czf $R/packed/$f.tar.gz $SS replay/$SS passes/${f}_*_$t.json && mv $R/done/$f.json.tmp $R/done/$f.json && rm -rf $SS replay/$SS )
    echo "$(date -Is) $(hostname -s) slot $k $f done $(python3 -c "import json;d=json.load(open('$R/done/$f.json'));print(len(d['accepted']),'of',d['rows'],'replay_exit',d['replay_exit'])")" >> $R/progress.log
  done
}
# a (re)started job owns nothing in progress: release its earlier claims without a done marker (requeue keeps the id)
for c in $R/claims/shard_*; do
  [ -e "$c/owner" ] && [ "$(cat $c/owner 2>/dev/null)" = "$ME" ] && [ ! -e $R/done/$(basename $c).json ] && rm -rf "$c"
done
for k in $(seq 1 $NSLOT); do slot $k & done; wait
