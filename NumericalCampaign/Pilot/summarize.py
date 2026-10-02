"""Summarise the pilot: status counts, near-miss / bisection / failure rates, cost distribution,
end-to-end quartet exclusion, and the implied campaign cost at the measured rates."""
import json, glob, collections, statistics as st, sys
d = sys.argv[1] if len(sys.argv) > 1 else '.'
L = [json.loads(l) for f in sorted(glob.glob(d + '/pilot_*.jsonl')) for l in open(f)]
if not L: raise SystemExit("no pilot data yet")
n = len(L); c = collections.Counter(x['status'] for x in L)
t = sorted(x['time'] for x in L)
print(f"cells: {n}   status: {dict(c)}")
print(f"rates: clean {c['clean']/n:.2%}, bisected {c['bisected']/n:.2%}, failed {c['failed']/n:.2%}")
print(f"time per top cell: median {st.median(t):.0f} s, mean {st.mean(t):.0f} s, p90 {t[int(0.9*n)]:.0f} s, max {t[-1]:.0f} s")
print("ray counts:", dict(collections.Counter(r for x in L for r in x['rays'])))
leaves = sum(x['leaves'] for x in L); qf = sum(x.get('quartet_free_leaves', 0) for x in L)
print(f"certified leaves {leaves}, of which quartet-free {qf}; max candidate bases {max(x.get('max_candidate_bases', 0) for x in L)}")
print("failure reasons:", dict(collections.Counter(r for x in L for r in x['reasons'])))
cells = 2.6e7 * (1 / 1.5)          # D0∩F cells at rho=0.005 with the boundary overhead (measured refinement replaces the 1.5 allowance)
mean = st.mean(t)
print(f"implied campaign at rho=0.005: {cells:.2e} cells x {mean:.0f} s = {cells*mean/3600:.2e} CPU-h (failed cells excluded: they need the fold certificate)")
