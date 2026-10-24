"""Summarise the full run: largest passing radius per centre for seed ellipsoids vs the current 25-dim test.

Count estimate: each atlas centre k stands for the region its record covers (radius R_k); covering the same region
with balls of radius rho needs about (R_k / rho)^4 of them (4-dimensional volume ratio, same overlap factor).
"""
import glob, json, sys
import numpy as np

rows = [json.loads(l) for f in sorted(glob.glob(sys.argv[1] + '/out_*.jsonl')) for l in open(f)]
print('centres:', len(rows))
err = [r for r in rows if r['seed'].get('error') or r['record'].get('error')]
print('errors:', len(err), [(r['k'], r['seed'].get('error'), r['record'].get('error')) for r in err[:5]])
rows = [r for r in rows if r['seed'].get('best') is not None and r['record'].get('best') is not None]
A = np.array([r['atlas_R'] for r in rows]); S = np.array([r['seed']['best'] for r in rows])
Rr = np.array([r['record']['best'] for r in rows]); E = np.array([r['seed'].get('edge', 0) for r in rows])
T = np.array([r['s'] for r in rows])

def hist(x):
    v, c = np.unique(x, return_counts=True); return ', '.join('%g: %d' % (a, b) for a, b in zip(v, c))

print('\nlargest passing radius (counts per rung of the ladder)')
print('  atlas (driver choice):', hist(A))
print('  current 25-dim test   :', hist(Rr))
print('  seed ellipsoid (TM n) :', hist(S))
print('\nseed vs 25-dim at the same centre: seed larger %d, equal %d, smaller %d'
      % ((S > Rr).sum(), (S == Rr).sum(), (S < Rr).sum()))
zero = S == 0
print('seed fails at every rung: %d centres (edge distance: median %.3f, max %.3f)'
      % (zero.sum(), np.median(E[zero]) if zero.any() else 0, E[zero].max() if zero.any() else 0))
for lo, hi in ((0, 0.05), (0.05, 0.2), (0.2, 1), (1, 1e9)):
    m = (E >= lo) & (E < hi)
    if m.any(): print('  edge distance in [%g, %g): %d centres, seed median %.3f, 25-dim median %.3f'
                      % (lo, hi, m.sum(), np.median(S[m]), np.median(Rr[m])))
ok = S > 0
est_seed = ((A[ok] / S[ok]) ** 4).sum()
est_rec = ((A / Rr) ** 4).sum()
print('\ncount estimate (same regions, volume ratio): 25-dim %.0f, seed %.0f + %d centres left to full-matrix balls'
      % (est_rec, est_seed, (~ok).sum()))
print('core-seconds: total %.0f (%.1f core-hours), median per centre %.0f s, max %.0f s' % (T.sum(), T.sum() / 3600, np.median(T), T.max()))
