#!/usr/bin/env bash
# Multi-level tail for the brute-force signed-mean run (6 Oct 2026; supersedes psd_tail.sh for new submissions).
# A finished unit d with unresolved ids yields unit o: shard_X -> tail-shard_X (level 1, naming as psd_tail.sh),
# then tail-.. -> xtail-.., xtail-.. -> xxtail-.. (cap: 4 x's).  For o: the unresolved input lines of d verbatim
# (tail_inputs/), their checkpoint states restored from packed/d.tar.gz (state set states-d) into states-o, NPASS
# resumed 300 s passes (level 1: NPASS1, later: NPASSX), a fresh replay, packed/o.tar.gz and done/o.json.
# Workers wait while the main run or any other unit in progress could still produce work.
set -u
R=${R:-/mnt/ceph/users/jtindall/nofour_psd}; NSLOT=${NSLOT:-4}; NPASS1=${NPASS1:-4}; NPASSX=${NPASSX:-8}
JOBS=$(( 128 / NSLOT )); ME=${SLURM_JOB_ID:-manual}
module load gcc/13.3.0 python/3.12.9
mkdir -p $R/tclaims $R/tail_inputs
outname() { case $1 in shard_*) echo tail-$1;; *) echo x$1;; esac; }
infile()  { case $1 in shard_*) echo $R/inputs/$1.jsonl;; tail-*) echo $R/tail_inputs/${1#tail-}.jsonl;; *) echo $R/tail_inputs/$1.jsonl;; esac; }
outfile() { case $1 in tail-*) echo $R/tail_inputs/${1#tail-}.jsonl;; *) echo $R/tail_inputs/$1.jsonl;; esac; }
for c in $R/tclaims/*; do   # requeue keeps the job id: release own claims without a done marker
  [ -e "$c/owner" ] && [ "$(cat $c/owner 2>/dev/null)" = "$ME" ] && [ ! -e $R/done/$(outname $(basename $c)).json ] && rm -rf "$c"
done
tclaim() {
  for f in $(ls $R/done | grep '\.json$' | sed 's/\.json$//'); do
    o=$(outname $f); case $o in xxxxx*) continue;; esac
    [ -e $R/done/$o.json ] && continue
    python3 -c "import json,sys;sys.exit(0 if json.load(open('$R/done/$f.json'))['unresolved'] else 1)" || continue
    if mkdir $R/tclaims/$f 2>/dev/null; then echo $ME > $R/tclaims/$f/owner; echo $f; return; fi
    w=$(cat $R/tclaims/$f/owner 2>/dev/null)
    if [ -n "$w" ] && [ "$w" != "$ME" ] && ! squeue -h -j "$w" -t R,CG 2>/dev/null | grep -q .; then
      if mv $R/tclaims/$f $R/tclaims/.stale.$f.$ME 2>/dev/null; then rm -rf $R/tclaims/.stale.$f.$ME; mkdir $R/tclaims/$f && echo $ME > $R/tclaims/$f/owner && echo $f && return; fi
    fi
  done
}
busy() {   # main run still going, or another unit in progress
  squeue -u $USER -h -o %j 2>/dev/null | grep -qE '^nofour-psdP?$' && return 0
  for c in $R/tclaims/*; do [ -d "$c" ] || continue; [ -e $R/done/$(outname $(basename $c)).json ] || return 0; done
  return 1
}
slot() {
  local k=$1 S=$R/slots/$(hostname -s)_x$1
  [ -d $S ] || cp -al $R/adapter $S
  while true; do
    d=$(tclaim)
    if [ -z "$d" ]; then busy && { sleep 120; continue; } || break; fi
    local o=$(outname $d); local SD=states-$d SS=states-$o L=$R/logs/$o t=$(date +%s) np=$NPASSX
    case $o in tail-*) np=$NPASS1;; esac
    python3 - "$R/done/$d.json" "$(infile $d)" "$(outfile $o)" <<'PY'
import json, sys
dj, src, dst = sys.argv[1:]
bad = set(json.load(open(dj))['unresolved'])
with open(dst, 'w') as f:
    for l in open(src):
        if json.loads(l)['id'] in bad: f.write(l)
PY
    export INWARD_INPUT=$(outfile $o); export INWARD_INPUT_SHA256=$(sha256sum $INWARD_INPUT | cut -d' ' -f1)
    ( cd $S && rm -rf $SS $SD && mkdir $SS &&
      for i in $(python3 -c "import json;print(' '.join(str(json.loads(l)['id']) for l in open('$INWARD_INPUT')))"); do
        tar xzf $R/packed/$d.tar.gz $SD/$i.json.gz 2>/dev/null && mv $SD/$i.json.gz $SS/; done; rm -rf $SD
      for p in $(seq 1 $np); do
        python3 -B certify_boxes.py --mode certify --backend linear --order 3 --cpu 300 --depth 48 --nodes 65535 \
          --jobs $JOBS --tag ${o}_P${p}_$t --state-set $SS > $L.P$p.$t.log 2>&1
      done
      python3 -B certify_boxes.py --mode replay --backend linear --order 3 --jobs $JOBS --tag ${o}_replay_$t \
        --state-set $SS > $L.replay.$t.log 2>&1; echo $? > $L.replay.$t.exit
      python3 - "$o" "$SS" "$t" "$(cat $L.replay.$t.exit)" "$R" "$INWARD_INPUT" <<'PY'
import json, glob, sys
o, ss, t, rx, R, inp = sys.argv[1:]
rows = [json.loads(l) for l in open(inp)]
rep = {}
for p in glob.glob(f'replay/{ss}/*.json'):
    r = json.load(open(p))
    if r['status'] == 'PASS_WHOLE_BOX_REPLAY': rep[r['id']] = r
json.dump(dict(shard=o, rows=len(rows), replay_exit=int(rx), accepted=sorted(rep),
               unresolved=[r['id'] for r in rows if r['id'] not in rep], terminals=sum(r['leaves'] for r in rep.values()), t=t),
          open(f'{R}/done/{o}.json.tmp', 'w'))
PY
      mkdir -p replay/$SS && tar czf $R/packed/$o.tar.gz $SS replay/$SS passes/${o}_*_$t.json && mv $R/done/$o.json.tmp $R/done/$o.json && rm -rf $SS replay/$SS )
    echo "$(date -Is) $(hostname -s) tailx $k $o $(python3 -c "import json;x=json.load(open('$R/done/$o.json'));print(len(x['accepted']),'of',x['rows'],'replay_exit',x['replay_exit'])")" >> $R/progress.log
  done
}
for k in $(seq 1 $NSLOT); do slot $k & done; wait
