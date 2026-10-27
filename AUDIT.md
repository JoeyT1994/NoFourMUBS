# Auditing the proof

Read [`PROOF.md`](PROOF.md) first. This file says what is established and how, and where to look hardest. How to
replay everything is in [`README.md`](README.md#check-it).

## Status

| Step | Claim | How it is established |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit; max R = 3¹³/2¹² | Exact algebra (651 claims), **proved in Lean** (`Step1Geo.maximumCensus`). Two earlier exact proofs (returns A, B) are cross-checks |
| 2 | Every non-Tao class other than F6 is a matched completion of a strict seed; (𝓗/≅) ∖ {S₆} is connected | **Proved in Lean**, with no classification input: matched existence (Theorem 2.2: sides by identity (J), return J; flatness, return E; anchored at the Fourier family, return Q), matched uniqueness (2.3), the nonmatched converse (2.4, return G), strict-corner coverage (2.5: `MinimalConstruction/Proofs` and, for nonzero J, return K). Connectedness (Theorem 2) is a paper proof; Lean uses the direct coverage argument it rests on (`Step2.coverage_of_matched_density`: maximum propagation over A and conj A, started from the Fourier family near F6, and F6 as the X-ball's centre). An independent audit of the converse, exact reach and coverage found no errors (`proof/coverage/audits/AUDIT_2026-10-15.md`) |
| 3 | A seed ball plus Stage C excludes quartet edges in its image; S₆ is a zero-dimensional record | C1 by return Z's whole-ball theorem (one Arb computation per ball), Stage C proved on paper ([`STAGEC.md`](proof/atlas/STAGEC.md), [`RIGOUR.md`](proof/atlas/RIGOUR.md)) and **in Lean** |
| 4 | No quartet edge within 7/40 of F6 | Return X (exact cover); **in Lean, hypothesis-free** (`X.Radius0175.no_quartet_near_F6_r0175`, kernel-checked Stage C at F6) |
| 5 | A finite atlas of seed balls and the X-ball, with certified boundary transfers, covers X | 2,350 seed balls and the X-ball, certified by `certify_seed_atlas.py` (Arb: PASS) and by an independent Julia implementation (PASS; intervals); the open–closed argument proved in Lean |

**Lean.** `NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs` uses
only `propext`, `Classical.choice` and `Quot.sound`. Its one input is the finite certificate
([`EdgeXAtlas.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXAtlas.lean)). **What remains outside Lean is the evaluation of
the inequalities on the concrete balls**, which the Arb and Julia checkers both confirm. The kernel check of those
inequalities (`kernel_atlas/`) is in progress: return X is done; the seed balls' C1 (return Z in Lean) and the X-ball
are being built.

| Field of `EdgeAtlasCertificate` | Checked by |
|---|---|
| seed balls: `hC1` (C1), `stageC`, boundary covers | `certify_seed_atlas.py` (Arb) and the Julia checker (intervals), independently |
| the X-ball: `hC1e`, `hX` (image within 7/40 of F6), `exclusion`, the chart (`hG`, `hopen`), its sphere cover | the two checkers; `exclusion` is the Lean theorem of Step 4 |
| `tao` (S₆ is a zero-dimensional record) | `tao.py`, and the Julia checker |

## Where to look hardest

1. **The Lean statement.** That `FourMUBs` (`lean/NoFourMUBs/Basic.lean`) and `EdgeAtlasCertificate`
   (`SeedAtlas/Cert.lean`, `EdgeX.lean`, `EdgeXAtlas.lean`) say what the theorem and Step 5 claim, and that the
   fields of `SeedBallCert` and the X-ball's `EdgeBallCert` match what the two checkers verify for each ball
   (`lean/NoFourMUBs/SeedAtlas/README.md`, "What each hypothesis says").
2. **Side existence** (return J, `proof/coverage/returns/J_side_existence/RESULT.md`): identity (J), the inverse
   function theorem in angle coordinates, and the open-and-closed argument over the strict seeds, which are connected (PROOF.md Lemma 1.1:
   the 18 maxima joined by explicit paths), starting from one Fourier-family seed (return Q).
3. **Flatness** (`E_matched_flatness/FLATNESS.md` §4): that the two certified rational identities for W₁₁ are exactly
   (4.6), built from the definitions and not from the certificate data; and that relabelling rows or columns 1, 2
   (handoff M, `proof/coverage/audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md`) moves every other defect to W₁₁.
4. **The nonmatched converse** (`proof/coverage/returns/G_prm/PRM.md`; audited, and proved in Lean):
   - §§2–3: finiteness of strict side fibres and the two-column rigidity lemma (sides on different roots share no column);
   - §4: the dimension count giving P D_w P = 0, and the passage to two orthogonal column triples;
   - §5: the Fourier normal form and the claim that its census exhausts every case.
5. **Strict-corner coverage** (`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md` and its imports):
   - the nonzero-J strips: return K's signed corner sums and pole forcing (`proof/coverage/returns/K_nonzero_J/REPORT.md`);
   - the zero-J strips: return O's two unsquared mixed sums and scalar algebra (`proof/coverage/returns/O_zeroj_unsquared/REPORT.md`), and the geometric-progression step;
   - the routing lemmas;
   - the ten-corner count, which also excludes the two rational endpoints (return S, `ENDPOINT_COUNTING.md`).
6. **Connectedness** (`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`): continuity of
   θ ↦ [H₊(θ)] across root cuts and sign switches; the sheet-parity formula; the frame symmetries giving one class at
   the maxima.
7. **C1 by return Z** (`proof/theorems/Z_completion_hessian/`, `THEOREM.md`; `cert/wholeball.py` and
   `independent_seed/src/wholeball.jl`): the frame-preserving contraction, the orientation margins from ‖D²ψ‖ ≤ 72,
   and the record step n_record = bound + ‖P_exact − P‖ + r‖U_exact − U‖. The method rests on the local
   matched-completion germ (Step 2).
8. **F6** (Step 4): return X's cover (`proof/theorems/X_no_quartet_near_F6/`) and its Lean form
   (`lean/NoFourMUBs/X/`); the edge chart (returns U, W), the X-ball's image bound ‖h(Q − P_F)‖ ≤ 7/40, and T3 by return XS
   (`proof/theorems/XS_edge_side_orders/`): that the three corner phases pin the Fourier frame (§3.2), W's framed
   continuation (§3.1), and the certifiers' distance bound (an aligned horizontal norm over the box, below 3/20).
9. **The transfers and coverage** (Lemmas 5.1–5.2; Lean `SeedAtlas/Atlas.lean`, `EdgeXAtlas.lean`, `OpenMap.lean`):
   the corner seed and Ψ signs of T1, the dyadic sphere covers and their exact coverage check. The transfer test
   (return ZT, `proof/theorems/ZT_wholeball_transfers/`; `cert/patches.py`, `independent_seed/src/patches.jl`): the
   affine bound at the box vertices, the H₂ and output-weighted normal remainders, the Ψ signs from ‖D²ψ‖ ≤ 72, and
   for the X-ball the weighted τ_A and centre jets (`cert/edge_wholeball.py`). The caps (returns ZC, ZC2a, ZC2b;
   `cert/caps.py`, `cap_t3.py`, `edgecaps.py`, `cap_coverage.py`): that the 5 × 5 matrix's positive definiteness gives
   ‖d + F x‖² ≤ s on the whole cap (`cap_theory.md`), each source model's remainder, the T3 signature remainder
   (`ZC2b/T3_THEOREM.md`), and that the coverage certificate's checks (strict support, each ridge twice, every dual
   vertex in the unit ball) imply that the caps cover the sphere.
10. **Stage C** (`STAGEC.md` against `stagec.py`; inequalities in Lean, `StageC/`; replayed by the Julia checker): the
   column bound r_col = t r + n, the joint test, the margins.
11. **The certifiers.** `certify_seed_atlas.py` must trust nothing from the driver beyond the certificate's data.
   Their negative tests (`proof/seed_atlas/cert/tests/`, `proof/independent_seed/tests/`) check that both reject
   corrupted certificates.

## Inputs taken as given

- No classification of order-6 Hadamard matrices. The reconstruction (`MinimalConstruction/`) supplies the matched
  completion H_o(θ) and the critical-strip proofs.
- The Stage C method of [OAI], with every inequality reproved and formalised.
