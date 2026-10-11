# Auditing the minimal proof

Start with [`PROOF.md`](PROOF.md), about three pages, or the typeset [`proof/note/no_four_mubs.pdf`](proof/note/no_four_mubs.pdf). This file says how to replay everything and where an auditor should look hardest.

## Status

| Step | Claim | Status |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit; max R = 3¹³/2¹² | Proved by exact algebra and **fully proved in Lean** (`Step1Geo.maximumCensus`, explicit anchors). Primary proof: the sextic-free saddle route (651 exact claims). Two earlier proofs remain as cross-checks |
| 2 | (𝓗/≅) ∖ {S₆} is connected | Proved relative to MC1–MC5. **Open point (10 Oct):** MC4's nonmatched converse uses [CT]'s necessary minus-matching (PR-M), whose supplied proof shows only F₊ ≢ 0. An external audit found the gap (no counterexample is known); a handoff to prove PR-M, or to route around it, is in progress |
| 3 | A ball Record plus Stage C excludes quartet edges in the ball; S₆ is a zero-dimensional Record | Lemmas proved ([`STAGEC.md`](proof/atlas/STAGEC.md), [`RIGOUR.md`](proof/atlas/RIGOUR.md)) |
| 4 | A finite atlas with certified boundary transfers covers X | Certified: 12,021 Records, re-built after the audit's Stage C correction (9 Oct); one Record shrunk on 10 Oct so that the independent Julia checker also passes every Record |

**Lean (10 Oct).** `lean/NoFourMUBs/Final.lean`, `no_four_mubs_explicit`, proves `¬ FourMUBs` with only standard axioms from: the atlas certificate (Records, boundary covers, Tao membership), membership of two explicit matrices (the base-anchor completion `BaseAnchor.H0` and F6), `MatchedExistence` (L1) and `MatchedDensityReach` (D). Steps 1 and 3, Lemma 4.1, matched uniqueness (L2), the anchor transport, and the coverage topology are all proved in Lean. Along the paper's route, `no_four_mubs_connected` takes Step 2 as the single statement that the non-Tao quotient is connected, plus the atlas certificate and F6 membership.

## Replaying

```bash
pip install -r requirements.txt     # numpy, scipy, sympy, mpmath, python-flint
python3 verify.py                   # about 2 minutes: Steps 1–3, MC1–MC5, S₆
python3 verify.py --atlas -j 9      # about 50 minutes on 9 cores: certifies all 12,021 Records, F6 and the anchor H₀
python3 verify.py --lean          # build the Lean formalisation; audit every main theorem's axioms
```

## Map

| Path | Content |
|---|---|
| `proof/coverage/` | Steps 1–2. Two independent returns, kept pristine with their replay logs; `README.md` is the synthesis |
| `proof/atlas/` | Steps 3–4:<br>• `ballrecord.py`: Lemma 3.1;<br>• `stagec.py` and `STAGEC.md`: Lemma 3.2;<br>• `tao.py`: Remark 3.3;<br>• `COVERAGE.md`: the corollary and Lemma 4.1;<br>• `atlas.py`: the untrusted driver;<br>• `certify.py`: **the trusted checker**;<br>• `export.py`: the certificate format;<br>• `nonempty.py`;<br>• `results/`: the certificate and receipts |
| `MinimalConstruction/` | The corner reconstruction and MC1–MC5, proved relative to [CT] (`Proofs/`), with the sheet lemmas (`Sheets/`) |
| `ClassificationPaper/` | The classification [CT] |
| `openai/` | What we take from the openai/math proof |
| `archive/` | Superseded material: the long proof and the development record. The minimal proof does not depend on it |

## Where to look hardest

1. **Step 2, connectedness** (`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`):
   - continuity of θ ↦ [H₊(θ)] across root cuts and sign switches;
   - the sheet-parity formula;
   - the frame symmetries giving H₊(Lθ*) ≅ K*;
   - X = A ∪ conj A ∪ {F6}.
2. **The coverage corollary and Lemma 4.1** (`proof/atlas/COVERAGE.md`; both proved in Lean: `Step4.lean`, `Boundary.lean`, `Step2/Connected.lean`):
   - openness and closedness in the quotient metric;
   - the use of conjugate and transposed images of Records;
   - that the shell R − n ≤ ‖Tη‖ ≤ R + n captures every boundary Hadamard.
3. **Lemma 3.1, the normal bound** (proved in Lean: `NormalBound.lean`):
   - ‖Φ″‖ ≤ 2√3;
   - the quadratic-root argument.
4. **Stage C** (`STAGEC.md` against `stagec.py`; the inequalities are proved in Lean, `StageC/*.lean`; the computation is replayed by the independent Julia checker):
   - the column bound r_col;
   - the joint test;
   - the margins.
5. **`certify.py`.** It must trust nothing from the driver beyond centre phases, radii and target lists.

## Inputs taken as given

- The classification of order-6 complex Hadamard matrices [CT], through MC1–MC5, in Step 2 only.
- The Stage C method of [OAI]. Every inequality is reproved in `STAGEC.md`.
