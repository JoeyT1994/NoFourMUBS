#!/usr/bin/env bash
# Coordinator for hybrid rounds 2..MAXR (1 core).  When every unit of round r has a done file, set up round r+1 from
# the newest saved states (hyb_setup.py, HYB_ROUND=r+1, on a whole node) and submit NW workers; stop when nothing is open.
set -u
R=${R:-/mnt/ceph/users/jtindall/nofour_psd}; MAXR=${MAXR:-6}; NW_CCQ=${NW_CCQ:-29}; NW_PRE=${NW_PRE:-70}
cd $R
pfx() { [ "$1" = 1 ] && echo hyb- || echo hyb$1-; }
for r in $(seq ${START:-1} $((MAXR - 1))); do
  p=$(pfx $r); n=$((r + 1)); q=$(pfx $n)
  while true; do
    tot=$(ls hybrid | grep -cE "^${p}[0-9]+\$"); dn=$(ls done | grep -cE "^${p}[0-9]+\.json\$")
    [ "$tot" -gt 0 ] && [ "$dn" -ge "$tot" ] && break; sleep 300
  done
  echo "$(date -Is) round $r complete ($dn units); setting up round $n" >> progress.log
  S=$(sbatch --parsable --account=ccq --partition=gen --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=4:00:00 \
      --job-name=nofour-hybsetup --output=$R/hybrid/setup_round$n.out --export=ALL,HYB_ROUND=$n \
      --wrap "module load python/3.12.9 && cd $R && python3 -B hyb_setup.py $R 16")
  while squeue -h -j $S 2>/dev/null | grep -q .; do sleep 60; done
  new=$(ls hybrid | grep -cE "^${q}[0-9]+\$"); echo "$(date -Is) round $n: $new units; $(tail -1 hybrid/setup_round$n.out)" >> progress.log
  [ "$new" -eq 0 ] && break
  for k in $(seq 1 $NW_CCQ); do sbatch --parsable --account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' \
      --time=24:00:00 --job-name=nofour-hyb --output=$R/logs/hyb_%j.out --export=ALL,R=$R,NSLOT=8,CPU=${RCPU:-3600},PSDD=44 $R/hyb_worker.sh; done > /dev/null
  for k in $(seq 1 $NW_PRE); do sbatch --parsable --account=ccq --partition=preempt --qos=preempt --requeue --nodes=1 --exclusive --mem=0 \
      --constraint='rome&rocky9' --time=48:00:00 --job-name=nofour-hybP --output=$R/logs/hybP_%j.out --export=ALL,R=$R,NSLOT=8,CPU=${RCPU:-3600},PSDD=44 $R/hyb_worker.sh; done > /dev/null
done
echo "$(date -Is) hybrid rounds coordinator finished" >> progress.log
