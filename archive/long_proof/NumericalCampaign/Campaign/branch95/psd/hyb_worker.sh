#!/usr/bin/env bash
# Hybrid (signed-mean + PSD leaf) production worker, one whole node, NSLOT units at a time (JOBS processes each).
# Per unit hyb-NNNNN (set up by hyb_setup.py): certify (CPU s per box, PSD at depth >= PSDD), fresh hybrid replay,
# done/hyb-NNNNN.json (accepted = PASS_WHOLE_BOX_HYBRID_REPLAY ids), packed/hyb-NNNNN.tar.gz (states, receipts,
# logs, summaries).  Claims in hclaims/ with the same requeue rules as psd_worker.sh.
set -u
R=${R:-/mnt/ceph/users/jtindall/nofour_psd}; NSLOT=${NSLOT:-4}; CPU=${CPU:-3600}; PSDD=${PSDD:-40}
JOBS=$(( 128 / NSLOT )); ME=${SLURM_JOB_ID:-manual}
module load gcc/13.3.0 python/3.12.9
mkdir -p $R/hclaims
for c in $R/hclaims/hyb*; do
  [ -e "$c/owner" ] && [ "$(cat $c/owner 2>/dev/null)" = "$ME" ] && [ ! -e $R/done/$(basename $c).json ] && rm -rf "$c"
done
hclaim() {
  for u in $(ls $R/hybrid | grep -E '^hyb[0-9]*-[0-9]+$'); do
    [ -e $R/done/$u.json ] && continue
    if mkdir $R/hclaims/$u 2>/dev/null; then echo $ME > $R/hclaims/$u/owner; echo $u; return; fi
    w=$(cat $R/hclaims/$u/owner 2>/dev/null)
    if [ -n "$w" ] && [ "$w" != "$ME" ] && ! squeue -h -j "$w" -t R,CG 2>/dev/null | grep -q .; then
      if mv $R/hclaims/$u $R/hclaims/.stale.$u.$ME 2>/dev/null; then rm -rf $R/hclaims/.stale.$u.$ME; mkdir $R/hclaims/$u && echo $ME > $R/hclaims/$u/owner && echo $u && return; fi
    fi
  done
}
slot() {
  while true; do
    u=$(hclaim); [ -z "$u" ] && break
    D=$R/hybrid/$u; rm -rf $D/states $D/replay $D/hyb-replay-*
    ( cd $R && python3 -B hybrid_close.py --mode certify --unit $u --root $R --jobs $JOBS --cpu $CPU --psd-depth $PSDD > $D/certify.log 2>&1
      python3 -B hybrid_close.py --mode replay --unit $u --root $R --jobs $JOBS > $D/replay.log 2>&1; echo $? > $D/replay.exit )
    python3 - "$R" "$u" <<'PY'
import json, glob, sys
R, u = sys.argv[1:]
rows = [json.loads(l)['id'] for l in open(f'{R}/tail_inputs/{u}.jsonl')]
acc = sorted(json.load(open(p))['id'] for p in glob.glob(f'{R}/hybrid/{u}/replay/*.json')
             if json.load(open(p))['status'] == 'PASS_WHOLE_BOX_HYBRID_REPLAY')
assert set(acc) <= set(rows)
json.dump(dict(shard=u, rows=len(rows), replay_exit=int(open(f'{R}/hybrid/{u}/replay.exit').read()), accepted=acc,
               unresolved=[i for i in rows if i not in set(acc)]), open(f'{R}/done/{u}.json.tmp', 'w'))
PY
    ( cd $R/hybrid && rm -rf $u/build $u/hyb-replay-* && tar czf $R/packed/$u.tar.gz $u $u.input.sha256 && mv $R/done/$u.json.tmp $R/done/$u.json && rm -rf $u/states $u/start )
    echo "$(date -Is) $(hostname -s) hyb $u $(python3 -c "import json;x=json.load(open('$R/done/$u.json'));print(len(x['accepted']),'of',x['rows'],'replay_exit',x['replay_exit'])")" >> $R/progress.log
  done
}
for k in $(seq 1 $NSLOT); do slot $k & done; wait
