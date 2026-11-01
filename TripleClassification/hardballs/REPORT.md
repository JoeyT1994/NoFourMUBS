# Hard balls: prototype report (1 Nov 2026)

## Result

A pattern witness that closes **whole level-4 cells** of the hard balls 1016 and 768: every pattern of their
complete cover is EXCLUDED or CLASSIFIED (every zero symmetric). The native certifier needs 31–61 leaves at levels
5–6 below each of these cells. The witness needs no subdivision, no stored proof data and no new lemma. It chains
three reviewed results (PROOFS.md):

1. **N9, native fine bins**: each column lies in a retained closed bin of radius 0.072; an empty search excludes.
2. **A, the 815 annulus lemma**: around a reference completion y\*, with 28 strong and 2 weak coordinates, every
   zero is localised to ‖K − y\*‖ ≤ 0.01–0.0225.
3. **N6, the native averaged moving contraction** on that tube: q < 1, so every zero is symmetric.

Floats only propose y\*, T, B and flattenings; every acceptance is an Arb inequality (160 bits). The certificate is
just the cell: the checker recomputes every proposal.

## Measured, on the ten coarse cells of handoffs/TC_nearfamily_20261101

Laptop, 8 workers. Rebuild = C1, normal form, Stage C cover (about 1 s). The native figures are from
dissem/status/balls.tsv: 150 KB and 28 core-s per leaf on average for 1016.

| Cell (level 4) | Patterns | CLASSIFIED | EXCLUDED | OPEN | Pattern core-s | Wall | Largest q | Native leaves below |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| 1016 (11,9,7,9) | 256 | 192 | 64 | 0 | 76 | 18 s | 0.872 | 46 |
| 1016 (13,10,7,9) | 256 | 64 | 192 | 0 | 36 | 14 s | 0.846 | 31 |
| 768 (6,10,11,4) | 256 | 48 | 208 | 0 | 48 | 12 s | 0.606 | 61 |
| 768 (8,11,11,3) | 256 | 192 | 64 | 0 | 92 | 20 s | 0.925 | 61 |
| 905 (10,9,2,12) | 4 | 0 | 4 | 0 | 0.1 | 3 s | – | 1,965 |
| 905 (2,4,5,11) | 6 | 0 | 6 | 0 | 0.1 | 3 s | – | 1,446 |
| 825 (7,6,7,9) | 48 | 0 | 36 | 12 | 24 | 10 s | – | 46 |
| 825 (8,6,7,9) | 64 | 0 | 32 | 32 | 42 | 15 s | – | 46 |
| 815 (10,9,6,7) | 64 | 0 | 0 | 64 | 109 | 17 s | – | 121 |
| 815 (8,9,6,7) | 64 | 0 | 0 | 64 | 105 | 17 s | – | 76 |

For a closed 1016/768 cell: about 50–100 core-s and a few bytes of certificate, against 31–61 native leaves
(about 0.9–1.7 core-hours and 5–9 MB). The first pattern of a cell costs about 5 s (tensor bounds and step F); every
other pattern carried by the same completion costs about 0.3 s.

**905.** Both cells close by the native fine-bin search alone, in 0.03 s per pattern (`final_pattern` also
excludes them, by bin orthogonality, in 0.1 s). The 48k-leaf 905 tree is almost entirely plane leaves from the
older pipeline. Running the native first at coarse levels on 905 should collapse it. That belongs to the native-first
re-certification, not to this witness.

## Where it stops, and why

- **815** (all 64 patterns open). The weak floor of step L is η^H_w = 0.12 at r = 0.0125 (1016: 0.007). H motion
  transverse to the family drives the weak K mode. A fixed reference cannot localise below that, so localisation
  stalls at W ≈ 0.55–0.7.
- **825** (44 open). The same floor, smaller: localisation ends at 0.04–0.1, above the tube step F accepts.
- **Bigger cells of 1016.** Level 3 (r = 0.02): localisation reaches 0.0296; step F holds at 0.01 (q = 0.60) but
  not at 0.02 (q = 1.008). Level 2 and the whole ball (64 and 1,024 patterns): nothing closes. Step F's linear
  H-motion term alone is 0.95 at level 2, and the K enclosures reach weak radius > 1.

Both limits are first-order in r, so both are removable by making the reference and the preconditioner affine in
w: proposals P1 and P2 in PROOFS.md. They are new statements, so they are for the user's decision.

## What a level-4 witness is worth today (from the census leaf list)

Replacing every subtree below level 4 by one witness cell, if all such cells close as the tested ones do:

| Ball | Leaves now | Leaves | GB now | GB |
|---:|---:|---:|---:|---:|
| 768 | 54,140 | 25,296 | 8.26 | 5.73 |
| 1016 | 26,672 | 20,651 | 3.98 | 3.25 |

That is real but modest. Most leaves of these trees are level 2–4 cells that tile the whole ball, mostly away
from the family (1016: 20,194 of 26,672). One small certificate per ball needs witnesses on level 0–2 cells, near
the family (P1, P2) and away from it (native-first at coarse levels, as 905 suggests).

## Diagnosis that drives this (floats)

- At the exact family triples of 768/815/825/1016 the fixed-H K-Jacobian has one weak complex pair
  (σ = 0.18/0.09/0.17/0.12); everything else is ≥ 1.26. In the moving (Z3) space the same pair is smallest and
  the rest ≥ 1.58.
- The weak mode is nearly linear: |G_w| ≈ 0.93ρ out to ρ = 1. So no nearby non-symmetric zero exists, and
  localisation is limited only by the H-motion floor and the bound's sharpness.
- σ_w → 0 at a family point just outside these balls (near b = c = 2π/3, γ = 0). That is why the family's
  neighbourhood is hard here.

## Files

- `witness.py`: the witness (proposals, the lemma's constants in Arb, the (S, W) search, step F via the frozen
  native code).
- `run_cell.py`: rebuild one cell with the native code, run every pattern (`--workers`), one JSON line each.
- `PLAN.md` (initial plan), `PROOFS.md` (what is relied on; proposals P1, P2).

To reproduce on a near-family cell:

```bash
python TripleClassification/hardballs/run_cell.py handoffs/TC_nearfamily_20261101/data/cells/1016_4_11_9_7_9.input.json.gz out.jsonl --workers 8
```

Run it from the NoFourMUBS root with the repository venv. The handoffs folder is outside git.

## Not done

- No integration into the certifier package. A witness node there would add the checks `native_leaf` already
  makes: cell containment, branch identity (overlap) and the Stage C guard.
- No independent review of the composition in PROOFS.md.
- Float proposals are recomputed on the checking machine; a different BLAS could give slightly different
  proposals. The acceptance margins seen are q ≤ 0.925 and a localisation target with room.
