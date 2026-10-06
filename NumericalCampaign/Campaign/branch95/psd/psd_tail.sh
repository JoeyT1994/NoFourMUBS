#!/usr/bin/env bash
# Tail pass for the brute-force signed-mean run: boxes a finished shard left unresolved (cpu_budget after 60 s + 300 s).
# Each slot claims a done shard with unresolved ids (mkdir tclaims/), writes tail_inputs/SHARD.jsonl (the unresolved
# input lines verbatim, so state['input'] still matches), restores those boxes' checkpoint states from
# packed/SHARD.tar.gz into state set states-tail-SHARD, resumes NPASS passes of 300 s each, replays, and packs
# packed/tail-SHARD.tar.gz + done/tail-SHARD.json.  Same requeue rules as psd_worker.sh.
set -u
R=${R:-/mnt/ceph/users/jtindall/nofour_psd}; NSLOT=${NSLOT:-4}; NPASS=${NPASS:-4}
JOBS=$(( 128 / NSLOT )); ME=${SLURM_JOB_ID:-manual}
module load gcc/13.3.0 python/3.12.9
mkdir -p $R/tclaims $R/tail_inputs
for c in $R/tclaims/shard_*; do
  [ -e "$c/owner" ] && [ "$(cat $c/owner 2>/dev/null)" = "$ME" ] && [ ! -e $R/done/tail-$(basename $c).json ] && rm -rf "$c"
done
tclaim() {
  for d in $(ls $R/done | grep '^shard_' | sed 's/\.json$//'); do
    [ -e $R/done/tail-$d.json ] && continue
    python3 -c "import json,sys;sys.exit(0 if json.load(open('$R/done/$d.json'))['unresolved'] else 1)" || continue
    if mkdir $R/tclaims/$d 2>/dev/null; then echo $ME > $R/tclaims/$d/owner; echo $d; return; fi
    o=$(cat $R/tclaims/$d/owner 2>/dev/null)
    if [ -n "$o" ] && [ "$o" != "$ME" ] && ! squeue -h -j "$o" -t R,CG 2>/dev/null | grep -q .; then
      if mv $R/tclaims/$d $R/tclaims/.stale.$d.$ME 2>/dev/null; then rm -rf $R/tclaims/.stale.$d.$ME; mkdir $R/tclaims/$d && echo $ME > $R/tclaims/$d/owner && echo $d && return; fi
    fi
  done
}
slot() {
  local k=$1 S=$R/slots/$(hostname -s)_t$1
  [ -d $S ] || cp -al $R/adapter $S
  while true; do
    d=$(tclaim)
    if [ -z "$d" ]; then   # wait while the main run can still produce leftovers
      squeue -u $USER -h -o %j 2>/dev/null | grep -qE '^nofour-psdP?$' && { sleep 120; continue; } || break
    fi
    local SS=states-tail-$d L=$R/logs/tail-$d t=$(date +%s)
    python3 - "$R" "$d" <<'PY'
import json, sys
R, d = sys.argv[1:]
bad = set(json.load(open(f'{R}/done/{d}.json'))['unresolved'])
with open(f'{R}/tail_inputs/{d}.jsonl', 'w') as f:
    for l in open(f'{R}/inputs/{d}.jsonl'):
        if json.loads(l)['id'] in bad: f.write(l)
PY
    export INWARD_INPUT=$R/tail_inputs/$d.jsonl INWARD_INPUT_SHA256=$(sha256sum $R/tail_inputs/$d.jsonl | cut -d' ' -f1)
    ( cd $S && rm -rf $SS states-$d && mkdir $SS &&
      for i in $(python3 -c "import json;print(' '.join(str(json.loads(l)['id']) for l in open('$INWARD_INPUT')))"); do
        tar xzf $R/packed/$d.tar.gz states-$d/$i.json.gz 2>/dev/null && mv states-$d/$i.json.gz $SS/; done; rm -rf states-$d
      for p in $(seq 1 $NPASS); do
        python3 -B certify_boxes.py --mode certify --backend linear --order 3 --cpu 300 --depth 48 --nodes 65535 \
          --jobs $JOBS --tag tail-${d}_P${p}_$t --state-set $SS > $L.P$p.$t.log 2>&1
      done
      python3 -B certify_boxes.py --mode replay --backend linear --order 3 --jobs $JOBS --tag tail-${d}_replay_$t \
        --state-set $SS > $L.replay.$t.log 2>&1; echo $? > $L.replay.$t.exit
      python3 - "$d" "$SS" "$t" "$(cat $L.replay.$t.exit)" "$R" <<'PY'
import json, glob, sys
d, ss, t, rx, R = sys.argv[1:]
rows = [json.loads(l) for l in open(f'{R}/tail_inputs/{d}.jsonl')]
rep = {}
for p in glob.glob(f'replay/{ss}/*.json'):
    r = json.load(open(p))
    if r['status'] == 'PASS_WHOLE_BOX_REPLAY': rep[r['id']] = r
json.dump(dict(shard='tail-' + d, rows=len(rows), replay_exit=int(rx), accepted=sorted(rep),
               unresolved=[r['id'] for r in rows if r['id'] not in rep], terminals=sum(r['leaves'] for r in rep.values()), t=t),
          open(f'{R}/done/tail-{d}.json.tmp', 'w'))
PY
      mkdir -p replay/$SS && tar czf $R/packed/tail-$d.tar.gz $SS replay/$SS passes/tail-${d}_*_$t.json && mv $R/done/tail-$d.json.tmp $R/done/tail-$d.json && rm -rf $SS replay/$SS )
    echo "$(date -Is) $(hostname -s) tail $k $d $(python3 -c "import json;x=json.load(open('$R/done/tail-$d.json'));print(len(x['accepted']),'of',x['rows'],'replay_exit',x['replay_exit'])")" >> $R/progress.log
  done
}
for k in $(seq 1 $NSLOT); do slot $k & done; wait
