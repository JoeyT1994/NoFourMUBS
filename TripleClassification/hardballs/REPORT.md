# Hard balls: prototype report

## Round 4 (2 Nov 2026): P3, a near-symmetric family centre

**What P3 is** (PROOFS.md P3, UNREVIEWED). The native contraction is valid for any centre. P3 chooses a centre on
the family sheet:
- the slab projection Π of the cell centre onto n = 0 gives a family point;
- Proof C's exact two-circulant triple there, carried into the cell's gauge, gives the K reference;
- the normal form is re-expanded exactly about that point (an algebraic identity);
- E_K in N6's Hessian term may use the whole-K-error bound ‖T‖t₀ (up to √6 smaller).
None of the family data is a proof obligation: it only makes q small. Patterns try the family centre first, then
their own reference. Certificates store u_f, so `--check` rebuilds the same model. Code: `family.py` and about 20
lines elsewhere.

**Effect on q.** On 1016 L3 (5,4,3,4), the centre term ‖Δc‖ falls from ~0.5 to 8·10⁻⁸, r‖V‖ = 0.26, and the
contraction accepts tubes up to 0.03 (it accepted 0.02 before).

**Witness with P3** (8 workers; certificates replayed with `--check` where shown):

| Cell | Patterns | C | E | O | Resolved (round 3) | Largest q | Wall | Certificate |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 1016 L3 (5,4,3,4) | 256 | 152 | 64 | 40 | **84%** (75%) | 0.874 | 86 s | 144 KB, 2 completions; replay identical |
| 1016 L3 (6,5,3,4) | 256 | 0 | 48 | 208 | 19% (19%) | – | 191 s | – |
| 1016 L2 (2,2,1,2) | 64 | 0 | 0 | 64 | 0% | – | 122 s | – |
| 1016 L2 (3,2,1,2) | 256 | 0 | 0 | 256 | 0% | – | 262 s | – |
| 1016 L0 (whole ball) | 1,024 | 0 | 0 | 1,024 | 0% | – | 90 min | – |
| 815 L4 (10,9,6,7), (8,9,6,7) | 64 + 64 | 0 | 0 | 128 | 0% | – | 84 s, 114 s | – |

**Why the rest stays open: the far weak field, not the sheet.** Every open pattern stalls in localisation at
|z_w| ≈ 0.4–0.85, where the colour enclosure starts. The 815 level-4 cubes contain no triple at all (round 3:
closed at level 5 by exclusion), so classification cannot help there.

**Tiles with the family centre**, 1016 L3 (6,5,3,4): the cell does not close, but **90% of the weak disc** is
resolved. Of the tiles, 116 are CLASSIFIED (T3 at the near-symmetric centre), 556 EXCLUDED and 452 OPEN (open
area 0.141 of 1.487), in 534 s wall. The open tiles lie at |z_w| ≈ 0.1–0.25, off the sheet: moving along the sheet
leaves the family completion at z_w = 0 in this frame, and λ_w r′ is only 0.001. No symmetric centre is near them.
They stay open because the exclusion margin there (residual ≈ σ_w|z_w| ≈ 0.01–0.02) is below the residual's
variation over this H cell (r′ = 0.03). A tile-wise moving family centre was tried and had no tiles to act on; it
was removed. As for 815 in round 3, finer H cells close such regions.
L2_TILES

**Ball 595** (not run, for time). The same family presentation fits it: the projected family point matches its
chart to 2.6·10⁻⁷, with residual 7·10⁻⁷ at ‖u_f‖ = 0.016 in a radius-0.1 ball. For 499 the fit is 2·10⁻⁵, at
‖u_f‖ = 0.079.

**Conclusion.** P3 removes the asymmetric-centre obstruction to classifying patterns on the sheet; that was its
purpose, and it works. What limits coarse cells now is exclusion off the sheet: a residual that is small but
positive across a wide band of the weak field. The H cell must be small enough that the residual's H-motion
variation falls below it. On 815 that took level 5. No new mathematics is needed for that part, only cost, which
round 3 measured at 7–14× the native trees.

## Round 3 (1 Nov 2026, late): review fixes, certificates, weak-plane tiles

### Review fixes (TC_hardballs_REVIEW_20261101)

- `fmax` is now a certified maximum: the largest outward upper endpoint, refusing empty or nonfinite input.
  `tests/test_fmax.py` covers the 1 versus 1 + 2⁻⁸⁰ counterexample.
- P1 no longer assumes y\* is column-centred; it states the column-phase convention instead (PROOFS.md).
- The unused, understated `phase_radius` field is no longer passed to the native code.
- Native and P2 are an explicit disjunction: CERTIFIED if either bound is below one.
- **Certificates now store the exact proposals.** Per completion: y\*, T, B, Λ, the flattening choices, and per tube
  the native action, windings and pseudo-inverse. Per pattern: completion, column permutation, stage-1 radius and
  tube. `run_cell.py --certificate` writes it, and `--check` replays it with no floating-point decision.
  On 1016 L4 (11,9,7,9) the certificate is **73 KB** (one completion, 256 patterns). The replay reproduces all 256
  verdicts and every q exactly (search 22 s wall; check 18 s, 6 workers). The proposals now come from the parent
  process, so worker scheduling and cache order no longer change them: the cause of the review's 70
  non-reproduced rows.
- Qualification of round 2: the review reproduced 1,601 of 1,671 classifications and all exclusions. Its
  complete-cell claims hold for 1016 and 768 at level 4 and for 905, but not for 825 (7,6,7,9). That claim
  is withdrawn until it is rerun with a stored certificate.

### Weak-plane tiles on 815 (tiles.py, run_tiles.py; PROOFS.md T1–T3, T2′, UNREVIEWED)

The annulus return certified an exact family triple in 815 (8,9,6,7) at weak distance ≈ 0.05, so no zero-free
annulus exists. Each reference's weak disc |z_w| ≤ W is tiled instead:

- T1, the annulus return's strong bootstrap, then T2, its full-residual separating functional;
- far tiles (|c| > 0.3) are retried at a recentred reference with B re-proposed there (T2′);
- tiles small enough get the native moving contraction (T3).

Coarse squares have half-side 0.0707 and split down to 0.0141 (near) or 0.0177 (far).

**Level 4: neither 815 cell closes.**

| Cell (L4) | Reference | Patterns | Tiles E / E-far / O | Open area of weak disc | Wall (8 workers) |
|---|---:|---:|---|---:|---:|
| 815 (8,9,6,7) | 0 | 30 | 269 / 125 / 500 | 0.37 of 2.06 (18%) | 700 s |
| 815 (8,9,6,7) | 1 | 34 | 236 / 166 / 538 | 0.41 of 2.25 (18%) | 730 s |
| 815 (10,9,6,7) | 0 | 31 | 318 / 125 / 321 | 0.20 of 2.10 (10%) | 443 s |
| 815 (10,9,6,7) | 1 | 33 | 299 / 142 / 341 | 0.22 of 2.08 (11%) | 533 s |

Two things stop level 4:
- **Exclusion margin.** Open tiles lie at every radius. At the finest tiles (h ≈ 0.02) the residual's lower
  bound over the cell (min |F| ≈ 0.03–0.1) is no larger than its variation across a tile.
- **Classification fails at level 4 whatever the tube.** At r = 0.0125 the native bound's terms that do not
  depend on the tube already sum to about 2: H motion r‖V‖ ≈ 0.67 (carrier slope ‖Λ‖ ≈ 9.4), asymmetric centre
  ‖Δc‖ ≈ 0.5, Hessian 0.46, remainder 0.35.

**Level 5: 815 (10,9,6,7) closes.** Its 16 children close **100%** by tiles: all 1,024 patterns are EXCLUDED, with
no classification needed, so this cell contains no triple. The children take 50–290 s wall each on 8 workers (2,800
s wall and 19,772 CPU-s in total), with 1–2 references and 100–320 tiles each. At r = 0.00625 the native terms independent of the tube
drop to about 0.5–0.6 (‖Δc‖ 0.05–0.19, r‖V‖ 0.10–0.14, Hessian 0.26, remainder 0.02–0.04), so classification
becomes possible for near-sheet tiles. The native tree spends 121 leaves below this cell.
**Level 5: 815 (8,9,6,7) closes too.** Its 16 children also close **100%** by exclusion: 1,024 of 1,024
patterns, 3,488 s wall, 24,631 CPU-s, 1–2 references and 130–410 tiles each. The annulus return's exact family
triple is no contradiction. Its H lies in the level-4 record's enclosing ball (‖u‖ = 0.01202 < r = 0.0125) but
outside every child ball (nearest child centre at 0.0088 > 0.00625), so it lies outside this dyadic cube and in a
neighbouring cell. **Both 815 level-4 cubes are free of triples, proved at level 5 by tiles alone. Classification on
the sheet was not exercised by these cells.**

**Cost and size are not a gain here.** The level-5 tiling costs 19,772 and 24,631 CPU-s for the two cells, about 7
and 14 times the native checks of the same cells (121 and 76 leaves × ≈ 23 s). Tile certificates are not implemented yet. Estimated from what each
tile must store:
- near tile (s₀, ν): ≈ 0.75 KB;
- far tile (also its own B, Λ′ and flattening choices): ≈ 17.6 KB;
- classification tile (also the native pseudo-inverse): ≈ 55 KB.
That gives about 1–2 MB per child, the same order as the native tree (≈ 1.1 MB per child).

### What the tiles show about the mathematics

- The far weak field is excludable. The full residual there is bounded away from zero (min |F| ≈ 0.03–0.12 at
  |z_w| ≈ 0.5–0.8, minimised over the H cell and the strong coordinates), and T2/T2′ exclude it once the H cell is
  small enough or the reference is recentred.
- The sheet must be classified. The obstruction is the native contraction's H-motion and centre terms, not the
  tube: the cell-centre H is off the family. A contraction about a symmetric reference that moves with u along the
  family sheet would remove ‖Δc‖ and most of r‖V‖. One option is the tail return's projection Π onto the seed
  surface n = 0 (‖w − Π(w)‖ ≤ 2|n(w)|). That is the new mathematics that would let coarse cells close.

## Round 2 (1 Nov 2026): P1 and P2

### Summary

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

### Measurements

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

### What the numbers mean for the trees

If every subtree below level 4 of 1016 and 768 were replaced by one witness cell (the tested cells all close), 1016
would go from 26,672 to about 20,651 leaves (3.98 → 3.25 GB) and 768 from 54,140 to about 25,296 (8.26 → 5.73 GB).
Where level 3 closes, the gain is larger. But most remaining leaves tile the ball away from the family. A
small certificate per ball needs coarse cells everywhere; for 905, the native fine bins already close coarse cells
outright.

### Files

`witness.py` (the witness: proposals, P1 constants in Arb, the two-stage (S, W) search, step F), `moving.py` (the
native contraction verbatim plus the P2 bound), `run_cell.py` (rebuild a cell with the frozen native code, run all
patterns), `PROOFS.md` (P1, P2 and the reviewed results used), `PLAN.md` (initial plan).

```bash
python TripleClassification/hardballs/run_cell.py CELL.input.json.gz out.jsonl --workers 8
```

### Not done

- P1 and P2 are not reviewed: TC_hardballs_review_20261101 is the handoff for that.
- No integration into the certifier package. A witness node there would add the checks `native_leaf` already
  makes: cell containment, branch identity and the Stage C guard.
- The whole balls were not run.
- The far weak field needs a new exclusion argument (above).
