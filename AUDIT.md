# Auditing the proof

Read [`PROOF.md`](PROOF.md) first. This file says what is established and how, and where to look hardest. How to
replay everything is in [`README.md`](README.md#check-it).

## Status

| Step | Claim | How it is established |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit; max R = 3¹³/2¹² | Exact algebra (651 claims), **proved in Lean** (`Step1Geo.maximumCensus`). Two earlier exact proofs (returns A, B) are cross-checks |
| 2 | Every non-Tao class other than F6 is a matched completion of a strict seed; (𝓗/≅) ∖ {S₆} is connected | **Proved in Lean**, with no classification input: matched existence (Theorem 2.2: sides by identity (J), return J; flatness, return E), matched uniqueness (2.3), the nonmatched converse (2.4, return G), strict-corner coverage (2.5: `MinimalConstruction/Proofs` and, for nonzero J, return K). Connectedness (Theorem 2) is a paper proof; Lean uses the direct coverage argument it rests on (`Step2.coverage_of_matched_density`: maximum propagation from H₀ over A and conj A, and F6 from the certificate). An independent audit of the converse, exact reach and coverage found no errors (`proof/coverage/audits/AUDIT_2026-10-15.md`) |
| 3 | A ball Record plus Stage C excludes quartet edges in its ball; S₆ is a zero-dimensional Record | Lemmas 3.1 and 3.2 proved on paper ([`STAGEC.md`](proof/atlas/STAGEC.md), [`RIGOUR.md`](proof/atlas/RIGOUR.md)) and **in Lean** |
| 4 | A finite atlas with certified boundary transfers covers X | 12,021 Records, certified by `certify.py` (Arb) and by an independent Julia implementation (intervals); Lemma 4.1 and the open–closed argument proved in Lean |

**Lean.** `NoFourMUBs.Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs` uses only `propext`,
`Classical.choice` and `Quot.sound`. Its one input is the finite certificate `AtlasCertificate`
([`MainTheorem.lean`](lean/NoFourMUBs/MainTheorem.lean)): **what remains outside Lean is the evaluation of the
inequalities on the 12,021 concrete Records**, which `certify.py` and the Julia checker both confirm. Checking those
numbers in the Lean kernel as well is an optional extra ([`kernel_atlas/`](kernel_atlas/README.md)).

| Field of `AtlasCertificate` | Checked by |
|---|---|
| `A`, `boundary` (12,021 Records, boundary covers) | `certify.py` (Arb) and the Julia checker (intervals), independently |
| `fourier` (F6 lies in a Record) | `nonempty.py` and the Julia checker |
| `tao` (S₆ is a zero-dimensional Record) | `tao.py` only |
| `anchor` (H₀ lies in a Record) | `anchor.py` only |

## Where to look hardest

1. **The Lean statement.** That `FourMUBs` and `AtlasCertificate` (`lean/NoFourMUBs/Basic.lean`,
   `MainTheorem.lean`) say what the theorem and Step 4 claim, and that the fields of `RecordCert` match what
   `certify.py` checks for each Record.
2. **Side existence** (return J, `proof/coverage/returns/J_side_existence/RESULT.md`): identity (J), the inverse
   function theorem in angle coordinates, and the clopen/maximum argument over strict seeds.
3. **Flatness** (`E_matched_flatness/FLATNESS.md` §4): that the two certified rational identities for W₁₁ are exactly
   (4.6), built from the definitions and not from the certificate data; and that relabelling rows or columns 1, 2
   (handoff M, `proof/coverage/audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md`) moves every other defect to W₁₁.
4. **The nonmatched converse** (`proof/coverage/returns/G_prm/PRM.md`; audited, and proved in Lean):
   - §§2–3: finiteness of strict side fibres and the two-column rigidity lemma (sides on different roots share no column);
   - §4: the dimension count giving P D_w P = 0, and the passage to two orthogonal column triples;
   - §5: the Fourier normal form and the claim that its census exhausts every case.
5. **Strict-corner coverage** (`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md` and its imports):
   - the nonzero-J strips: return K's signed corner sums and pole forcing (`proof/coverage/returns/K_nonzero_J/REPORT.md`);
   - the zero-J strips (square-sum identity) and the geometric-progression step;
   - the routing lemmas;
   - the ten-corner count, which also excludes the two rational endpoints (return S, `ENDPOINT_COUNTING.md`).
6. **Connectedness** (`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`): continuity of
   θ ↦ [H₊(θ)] across root cuts and sign switches; the sheet-parity formula; the frame symmetries giving one class at
   the maxima.
7. **The coverage corollary and Lemma 4.1** (`proof/atlas/COVERAGE.md`; Lean `Step4.lean`, `Boundary.lean`,
   `Step2/Connected.lean`): that the shell R − n ≤ ‖Tη‖ ≤ R + n captures every boundary Hadamard; the use of
   conjugate and transposed images of Records.
8. **Stage C** (`STAGEC.md` against `stagec.py`; inequalities in Lean, `StageC/`; replayed by the Julia checker): the
   column bound r_col, the joint test, the margins.
9. **`certify.py`.** It must trust nothing from the driver beyond centre phases, radii, label radii, frames and target
   lists. The negative tests (`tests/`) check that it rejects corrupted certificates.

## Inputs taken as given

- No classification of order-6 Hadamard matrices. The reconstruction (`MinimalConstruction/`) supplies the matched
  completion H₊(θ) and the critical-strip proofs; its earlier statements relative to [CT] (MC2–MC5) are not used.
- The Stage C method of [OAI], with every inequality reproved and formalised.
