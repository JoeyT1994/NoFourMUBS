# Hard balls: prototype report (1 Nov 2026, second round: P1 and P2)

## Summary

The pattern witness now uses P1 (a u-affine reference in the localisation) and P2 (a u-affine preconditioner in the
symmetry step). Both are UNREVIEWED, stated and proved in PROOFS.md.

- **Level-4 cells of 1016, 768, 825 and 905 close** (the second 825 cell only to 77%). On 1016 and 768 every one of
  the 1,024 patterns is EXCLUDED or CLASSIFIED, with margins now q ≤ 0.24 (the first round needed up to 0.925). Each
  cell takes 20–30 s wall on 8 workers.
- **Level 3 closes in part:** 98% and 57% of the patterns of two 768 cells, 75% and 19% of two 1016 cells.
- **815 does not close**, at level 4 or in any of the 16 level-5 children of (10,9,6,7) (101 of 1,024 patterns).
- **Level 2 does not close** except by exclusion (one 768 cell: 2,313 of 4,096 excluded). The whole balls were not
  run, since level 2 of 1016 closes nothing.
- **P1 is what matters.** It cuts the weak localisation floor η_w from 0.123 to 0.008 on 815 and from 0.018 to
  0.009 on 1016 level 3; that alone closed 1016 level-3 patterns and the 825 cells. **P2 is never needed**: it
  gives a smaller q in all 1,671 classifications (for example 0.207 against 0.283), but every one of them also
  passes the native bound, and it rescues none of the 136 step-F failures.
- **The remaining obstruction is the far weak field.** Every open localisation stalls at |ζ_w| ≈ 0.5–0.8 with
  small strong part. There the weak block of the preconditioned residual stays small in some directions: the
  weak equations have near-solutions there, off the family. Three things were tried, and none excludes it:
  1. one expansion, with or without P1;
  2. a ring of shifted references with the preconditioner re-proposed at each centre (the far sectors exclude
     cleanly, but one direction at |c| ≈ 0.5 does not);
  3. the optimised support cap (p ≠ 0), which only reaches 0.60–0.67 at S = 0.1.
  Excluding that region needs the full residual at second order: the separating-functional idea of PROOF_815.md
  §8, applied to an annulus rather than a ball. That is new mathematics, for the user.

## Measurements

Code at commit 8628f7908, python-flint 0.9.0 at 160 bits, laptop, 8 workers. "Rebuild" is C1, the normal form and
the Stage C cover. C = CLASSIFIED, E = EXCLUDED, O = OPEN (L: localisation, F: symmetry step).

| Cell | Patterns | C | E | O | Resolved | Wall | CPU | Largest q |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 1016 L4 (11,9,7,9) | 256 | 192 | 64 | 0 | 100% | 29 s | 178 s | 0.235 |
| 1016 L4 (13,10,7,9) | 256 | 64 | 192 | 0 | 100% | 24 s | 100 s | 0.231 |
| 768 L4 (6,10,11,4) | 256 | 48 | 208 | 0 | 100% | 23 s | 126 s | 0.207 |
| 768 L4 (8,11,11,3) | 256 | 192 | 64 | 0 | 100% | 27 s | 183 s | 0.228 |
| 825 L4 (7,6,7,9) | 48 | 12 | 36 | 0 | 100% | 18 s | 70 s | 0.831 |
| 825 L4 (8,6,7,9) | 64 | 17 | 32 | 15 (L 11, F 4) | 77% | 36 s | 117 s | 0.897 |
| 905 L4 (10,9,2,12) | 4 | 0 | 4 | 0 | 100% | 3 s | 8 s | – |
| 905 L4 (2,4,5,11) | 6 | 0 | 6 | 0 | 100% | 3 s | 12 s | – |
| 815 L4 (10,9,6,7) | 64 | 0 | 0 | 64 (L) | 0% | 80 s | 489 s | – |
| 815 L4 (8,9,6,7) | 64 | 0 | 0 | 64 (L) | 0% | 72 s | 460 s | – |
| 815 L5, 16 children of (10,9,6,7) | 1,024 | 53 | 48 | 923 (L) | 10% | 25–41 s each | 167–285 s each | 0.378 |
| 1016 L3 (5,4,3,4) | 256 | 129 | 64 | 63 (L 58, F 5) | 75% | 48 s | 291 s | 0.769 |
| 1016 L3 (6,5,3,4) | 256 | 0 | 48 | 208 (L) | 19% | 79 s | 416 s | – |
| 768 L3 (3,5,5,2) | 2,048 | 872 | 1,142 | 34 (L) | 98% | 109 s | 643 s | 0.845 |
| 768 L3 (4,5,5,1) | 1,024 | 92 | 496 | 436 (L 309, F 127) | 57% | 137 s | 750 s | 0.939 |
| 1016 L2 (2,2,1,2) | 64 | 0 | 0 | 64 (L) | 0% | 60 s | 416 s | – |
| 1016 L2 (3,2,1,2) | 256 | 0 | 0 | 256 (L) | 0% | 102 s | 697 s | – |
| 768 L2 (1,2,2,1) | 4,096 | 0 | 2,313 | 1,783 (L) | 56% | 719 s | 4,374 s | – |
| 768 L2 (2,2,2,0) | 64 | 0 | 0 | 64 (L) | 0% | 36 s | 244 s | – |

**Certificate size per cell.** The certificate is witness-only: the cell, about 50 bytes. The checker rebuilds the
cover and recomputes every float proposal (y\*, T, B, Λ, flattenings, windings), then accepts by Arb inequalities
only. Optionally, one byte per pattern (the tube chosen) would save the checker the failed smaller tubes. The native
tree spends 31–61 leaves below each closed 1016/768 level-4 cell: 5–9 MB and about 1 core-hour. The witness
replaces that with 100–180 core-s and about 50 bytes.

**Cost structure.** Per completion (the shared reference y\* of many patterns): the two expansions and the symmetry
step take about 15 s. Each further pattern carried by the same completion takes about 0.3 s.

## What the numbers mean for the trees

If every subtree below level 4 of 1016 and 768 were replaced by one witness cell (the tested cells all close), 1016
would go from 26,672 to about 20,651 leaves (3.98 → 3.25 GB) and 768 from 54,140 to about 25,296 (8.26 → 5.73 GB).
Where level 3 closes, the gain is larger. But most remaining leaves tile the ball away from the family. A
small certificate per ball needs coarse cells everywhere; for 905, the native fine bins already close coarse cells
outright.

## Files

`witness.py` (the witness: proposals, P1 constants in Arb, the two-stage (S, W) search, step F), `moving.py` (the
native contraction verbatim plus the P2 bound), `run_cell.py` (rebuild a cell with the frozen native code, run all
patterns), `PROOFS.md` (P1, P2 and the reviewed results used), `PLAN.md` (initial plan).

```bash
python TripleClassification/hardballs/run_cell.py CELL.input.json.gz out.jsonl --workers 8
```

## Not done

- P1 and P2 are not reviewed: TC_hardballs_review_20261101 is the handoff for that.
- No integration into the certifier package. A witness node there would add the checks `native_leaf` already
  makes: cell containment, branch identity and the Stage C guard.
- The whole balls were not run.
- The far weak field needs a new exclusion argument (above).
