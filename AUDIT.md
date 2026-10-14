# Auditing the proof

Start with [`PROOF.md`](PROOF.md) or the typeset [`proof/note/no_four_mubs.pdf`](proof/note/no_four_mubs.pdf). This file says what is established and how, how to replay it, and where to look hardest.

## Status

| Step | Claim | How it is established |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit; max R = 3¹³/2¹² | Exact algebra (651 claims), **proved in Lean** (`Step1Geo.maximumCensus`). Two earlier exact proofs are cross-checks |
| 2 | (𝓗/≅) ∖ {S₆} is connected | Proved without [CT]: matched existence (L1, certificates E and F, and Lean), matched uniqueness (L2, Lean) and exact reach (return G: PR-M and the strict nonmatched converse, a paper proof with exact certificates whose new geometric argument awaits independent review). The earlier route through MC1–MC5 rests on [CT] and on PR-M |
| 3 | A ball Record plus Stage C excludes quartet edges in its ball; S₆ is a zero-dimensional Record | Lemmas 3.1 and 3.2 proved on paper ([`STAGEC.md`](proof/atlas/STAGEC.md), [`RIGOUR.md`](proof/atlas/RIGOUR.md)) and **in Lean** |
| 4 | A finite atlas with certified boundary transfers covers X | 12,021 Records, certified by `certify.py` (Arb) and by an independent Julia implementation (intervals); Lemma 4.1 and the open–closed argument proved in Lean |

**Lean.** [`lean/NoFourMUBs/MainTheorem.lean`](lean/NoFourMUBs/MainTheorem.lean) proves `¬ FourMUBs`, using only `propext`, `Classical.choice` and `Quot.sound`. It takes one bundled finite certificate, `AtlasCertificate`, together with Step 2 in one of two forms:
- the connectedness of X;
- density (D), with matched existence (L1) proved in Lean: `no_four_mubs_of_density` in [`lean/NoFourMUBs/Complete.lean`](lean/NoFourMUBs/Complete.lean). (D) follows from return G's exact reach, which is proved on paper; its Lean port is pending.

## Replaying

```bash
pip install -r requirements.txt     # numpy, scipy, sympy, mpmath, python-flint
python3 verify.py                   # ~3 min: Step 1 certificates, Steps 1-2 replays, matched existence, MC1-MC5, S6, Stage C sample
python3 verify.py --atlas -j 9      # ~50 min on 9 cores: certify all 12,021 Records, F6 and the anchor H0
python3 verify.py --lean            # build the Lean formalisation and audit the axioms of its main theorems
python3 verify.py --lean-full       # also build L1 in Lean (its kernel checks take about an hour)
```

The independent checker replays separately: see [`proof/independent/README.md`](proof/independent/README.md).

## Where to look hardest

1. **Step 2, connectedness** (`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`):
   - continuity of θ ↦ [H₊(θ)] across root cuts and sign switches;
   - the sheet-parity formula;
   - the frame symmetries giving H₊(Lθ*) ≅ K*;
   - X = A ∪ conj A ∪ {F6}: now by return G's exact reach (below), formerly by MC1, MC5 and PR-M.
2. **Exact reach and PR-M** (`proof/coverage/returns/G_prm/PRM.md`):
   - §§2–3: finiteness of strict side fibres and the two-column rigidity lemma, which together give that sides on different roots share no column;
   - §4: the comparison of the two bottom-row bases, the dimension count giving P D_w P = 0, and the passage from the complementary projections to two orthogonal column triples;
   - §5: the Fourier normal form and the claim that its census exhausts every case;
   - §7: the import boundary, that is, the critical-strip proofs (`MinimalConstruction/Proofs/CRITICAL_*`, `FOURIER_CRITICAL_LOCUS.md`) and the two Fourier-routing lemmas that replace [CT].
3. **Matched existence** (`E_matched_flatness/FLATNESS.md` §4, `F_side_existence/SIDE_EXISTENCE.md`):
   - that the certified rational identities are exactly (4.6) and the side identities, built from the definitions and not from the certificate data;
   - that every divisor is nonzero on R > 0.
4. **The coverage corollary and Lemma 4.1** (`proof/atlas/COVERAGE.md`; in Lean: `Step4.lean`, `Boundary.lean`, `Step2/Connected.lean`):
   - that the shell R − n ≤ ‖Tη‖ ≤ R + n captures every boundary Hadamard;
   - the use of conjugate and transposed images of Records.
5. **Stage C** (`STAGEC.md` against `stagec.py`; inequalities in Lean, `StageC/`; the computation replayed by the Julia checker):
   - the column bound r_col;
   - the joint test;
   - the margins.
6. **`certify.py`.** It must trust nothing from the driver beyond centre phases, radii, frames and target lists.

## Inputs taken as given

- None from the classification [CT] on the route through return G. The earlier route used [CT] through MC1–MC5, in Step 2 only.
- The Stage C method of [OAI], with every inequality reproved and formalised.
