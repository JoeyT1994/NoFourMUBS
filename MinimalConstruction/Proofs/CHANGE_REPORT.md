# Changed-file report — completed reconstruction proof dossier, 1 October 2026

All changes for this goal are inside `MinimalConstruction`. The root `verify.py` and external runtime hash pins were not edited.

## Existing specification files — references appended only

- `MinimalConstruction/ASSUMPTIONS.md`
  - Original SHA-256: `7e4fe15e0de5652ceef07a407453e23643252ed19e475d497b18551afd1d0181`
  - Current SHA-256: `fb3855ccbfa4df1229081baf516a3cf13fa18f3c4aef4089119b5c52270e7cda`
- `MinimalConstruction/RECONSTRUCTION.md`
  - Original SHA-256: `6bef347d96d79dcbca366d6e9bb89905f853d8cb382c5aa5393e9a08f4347cb8`
  - Current SHA-256: `024e3d262ea169a3a4ceeacd47ed26230f691d009fef2aacec7c269091dc8889`

Every original byte remains an unchanged prefix, as checked by verify_provenance.py. All earlier appended status statements also remain verbatim; the final dated sections supersede them. Update external pins only during the requested integration review.

## Every new file (139)

- `MinimalConstruction/Proofs/APPEND_ONLY_BASELINES.json`
- `MinimalConstruction/Proofs/CHANGE_REPORT.md`
- `MinimalConstruction/Proofs/COMPLETION_AUDIT.md`
- `MinimalConstruction/Proofs/CRITICAL_CORNER_REDUCTION.md`
- `MinimalConstruction/Proofs/CRITICAL_EQUI_CORRELATION_EXCLUSION.md`
- `MinimalConstruction/Proofs/CRITICAL_P7_EXCLUSION.md`
- `MinimalConstruction/Proofs/CRITICAL_STRIP_CLASSIFICATION.md`
- `MinimalConstruction/Proofs/FOURIER_CRITICAL_LOCUS.md`
- `MinimalConstruction/Proofs/FOURIER_ROUTING.md`
- `MinimalConstruction/Proofs/MATCHED_FLATNESS.md`
- `MinimalConstruction/Proofs/NONMATCHED_EXCEPTIONS.md`
- `MinimalConstruction/Proofs/OPEN_OBLIGATIONS.md`
- `MinimalConstruction/Proofs/OPPOSITE_CORNER.md`
- `MinimalConstruction/Proofs/ORIGINAL_PIN_HASHES.json`
- `MinimalConstruction/Proofs/README.md`
- `MinimalConstruction/Proofs/RECOVERY_MANIFEST.json`
- `MinimalConstruction/Proofs/Receipts/all_corner_matching_witness_20260930.log`
- `MinimalConstruction/Proofs/Receipts/critical_equicorrelation_20261001.json`
- `MinimalConstruction/Proofs/Receipts/critical_p7_20261001.json`
- `MinimalConstruction/Proofs/Receipts/critical_reduction_20261001.json`
- `MinimalConstruction/Proofs/Receipts/critical_scalar_classification_20261001.json`
- `MinimalConstruction/Proofs/Receipts/critical_square_sums_20261001.log`
- `MinimalConstruction/Proofs/Receipts/dossier_full_20261001.log`
- `MinimalConstruction/Proofs/Receipts/exceptional_matching_20260930.json`
- `MinimalConstruction/Proofs/Receipts/fourier_critical_20261001.log`
- `MinimalConstruction/Proofs/Receipts/fourier_routing_20261001.json`
- `MinimalConstruction/Proofs/Receipts/invariants_20260930.json`
- `MinimalConstruction/Proofs/Receipts/invariants_full_20260930.json`
- `MinimalConstruction/Proofs/Receipts/matching_bridge_20260930.log`
- `MinimalConstruction/Proofs/Receipts/provenance_20260930.json`
- `MinimalConstruction/Proofs/Receipts/provenance_20261001.json`
- `MinimalConstruction/Proofs/Receipts/provenance_after_nonmatched_20260930.json`
- `MinimalConstruction/Proofs/Receipts/provenance_after_side_theorem_20260930.json`
- `MinimalConstruction/Proofs/Receipts/provenance_final_20261001.json`
- `MinimalConstruction/Proofs/Receipts/side_fiber_20260930.log`
- `MinimalConstruction/Proofs/Receipts/strict_corner_coverage_20261001.json`
- `MinimalConstruction/Proofs/Receipts/tao_pairings_20260930.log`
- `MinimalConstruction/Proofs/Receipts/tao_pairings_full_20260930.log`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/AUDIT.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/COMMUTING_PAIR_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/COMMUTING_PAIR_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/COMPACT_FOURIER_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/COMPACT_FOURIER_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/FOURIER_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/FOURIER_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Barycentric_Four_Parameter_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Commuting_Pair_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Compact_Fourier_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Fourier_Radical_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Mobius_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Polynomial_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/Hadamard6_Unitary_Core_Phase_Gate_Form.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/MOBIUS_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/PHASE_GATE_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/PHASE_GATE_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/README.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/SINGLE_SHEET_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/SINGLE_SHEET_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/compact_fourier.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/single_sheet.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_commuting_pair.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_compact_fourier.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_fourier.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_mobius.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_phase_gate.py`
- `MinimalConstruction/Proofs/Recovered/phase_gate_review/coordinates/verify_single_sheet.py`
- `MinimalConstruction/Proofs/Recovered/session_excerpts/COMPREHENSIVE_HANDOFF_lines290-440.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/AUDIT.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/COMMUTING_PAIR_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/COMMUTING_PAIR_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/COMPACT_FOURIER_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/COMPACT_FOURIER_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/FOURIER_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/FOURIER_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Barycentric_Four_Parameter_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Commuting_Pair_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Compact_Fourier_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Fourier_Radical_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Mobius_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Polynomial_Normal_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/MOBIUS_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/README.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/SINGLE_SHEET_REVIEW.md`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/SINGLE_SHEET_VERIFICATION.json`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/compact_fourier.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/single_sheet.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify_commuting_pair.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify_compact_fourier.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify_fourier.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify_mobius.py`
- `MinimalConstruction/Proofs/Recovered/single_sheet_integration/coordinates/verify_single_sheet.py`
- `MinimalConstruction/Proofs/Research/CRITICAL_ROUTE.md`
- `MinimalConstruction/Proofs/Research/critical_J0_moments.json`
- `MinimalConstruction/Proofs/Research/critical_J0_moments.log`
- `MinimalConstruction/Proofs/Research/critical_mean_generation.log`
- `MinimalConstruction/Proofs/Research/critical_means_modular.log`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_bernstein.json`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_boundary_factors.json`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_moments.json`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_moments.log`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_quartic_discriminant.txt`
- `MinimalConstruction/Proofs/Research/critical_nonzero_J_symmetric.json`
- `MinimalConstruction/Proofs/Research/nonmatched_EM_coefficients.json`
- `MinimalConstruction/Proofs/Research/nonmatched_X0_coefficients.json`
- `MinimalConstruction/Proofs/Research/nonmatched_X1_coefficients.json`
- `MinimalConstruction/Proofs/Research/nonmatched_X2_coefficients.json`
- `MinimalConstruction/Proofs/SESSION_EXCERPT_MANIFEST.json`
- `MinimalConstruction/Proofs/SIDE_FIBER.md`
- `MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`
- `MinimalConstruction/Proofs/STRICT_DOMAIN.md`
- `MinimalConstruction/Proofs/TAO_PAIRINGS.md`
- `MinimalConstruction/Proofs/critical_moment_core.py`
- `MinimalConstruction/Proofs/critical_quartic.json`
- `MinimalConstruction/Proofs/exact_rational.py`
- `MinimalConstruction/Proofs/interval_constructor.py`
- `MinimalConstruction/Proofs/research_critical_means.py`
- `MinimalConstruction/Proofs/research_critical_moments.py`
- `MinimalConstruction/Proofs/research_critical_nonzero_J.py`
- `MinimalConstruction/Proofs/research_nonmatched_residual.py`
- `MinimalConstruction/Proofs/verify_all_corner_matching_witness.py`
- `MinimalConstruction/Proofs/verify_critical_equicorrelation.py`
- `MinimalConstruction/Proofs/verify_critical_p7.py`
- `MinimalConstruction/Proofs/verify_critical_reduction.py`
- `MinimalConstruction/Proofs/verify_critical_scalar_classification.py`
- `MinimalConstruction/Proofs/verify_critical_square_sums.py`
- `MinimalConstruction/Proofs/verify_dossier.py`
- `MinimalConstruction/Proofs/verify_exceptional_matching.py`
- `MinimalConstruction/Proofs/verify_fourier_critical.py`
- `MinimalConstruction/Proofs/verify_fourier_routing.py`
- `MinimalConstruction/Proofs/verify_invariants.py`
- `MinimalConstruction/Proofs/verify_matching_bridge.py`
- `MinimalConstruction/Proofs/verify_provenance.py`
- `MinimalConstruction/Proofs/verify_side_fiber.py`
- `MinimalConstruction/Proofs/verify_strict_corner_coverage.py`
- `MinimalConstruction/Proofs/verify_tao_pairings.py`

## Final proof status and replay

MC1–MC5 are proved relative to the explicitly identified ClassificationPaper
inputs. STRICT_CORNER_COVERAGE.md closes the last global obligation with
exact strip identities, complete scalar/pole classification, two endpoint
exclusions, Fourier routing, and an irrationality/counting contradiction.
COMPLETION_AUDIT.md maps every requested statement to its proof and checks.

The complete local replay is verify_dossier.py. Its fifteen verifier names
are listed explicitly in that file and in README.md. The final receipt is
Receipts/dossier_full_20261001.log, with input and individual output hashes.
The arithmetic helpers are interval_constructor.py, exact_rational.py and
critical_moment_core.py. critical_quartic.json is regenerated and factored
by the exact replay; it is not an unaudited historical assertion.

Recovered sources comprise 56 verbatim files under the original recovery
manifest and one separately documented archived-task handoff excerpt.
The excerpt labels global closure as proposed research and contains no
proof. The missing proof was supplied locally.

Research/ and the research_*.py files retain discovery calculations and
failed or bounded elimination attempts. They are not proof inputs. The
incomplete tao_pairings_20260930.log is also a development trace;
its full replay and the dossier replay are the successful checks.

No cluster run, numerical-campaign output, recurring task, or root-runner
registration was created or modified for this proof recovery. The broader
no-four-MUB numerical campaign is not claimed complete by this dossier.
