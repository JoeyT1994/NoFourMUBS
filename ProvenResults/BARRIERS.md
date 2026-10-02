# Proved barriers: approaches known not to work

Each entry below is a proved negative result: an exact counterexample, an
obstruction, or a feasibility witness showing that a shortcut cannot succeed.
They are not steps toward an exclusion. They record hypotheses that must not
be assumed.

Most proofs stay in the archive; new results below link into this library.
`A/` means `../../NoFourMUBSArchive/` and
`Z/` means the pre-22-September snapshot ZIP stored in the same archive
folder. These entries were collected in the 26 September 2026 review.

## Hypotheses about transition structure that are false

| Tempting claim | Why it fails | Source |
|---|---|---|
| Seed proximity to the Fourier atlas uniformly controls H₊ proximity to the Fourier family | At (ω,ω²,(4+3i)/5,(21+20i)/29), seed distance is zero but d_Four(H₊/√6)>1/40. Uses accepted local reconstruction identities. This example is outside D₀, so D₀-restricted lifting remains open | [Certified counterexample](FourierNeighbourhood/UniformTube/SEED_OBSTRUCTION.md) |
| Two orthogonal common-unbiased rays force a Karlsson (H2-block) carrier | A certified physical Hadamard with all 400 3×3 minors nonzero and no H2 block carries such a pair. So pair-level conditions cannot force H2 structure, and Tao-style "no orthogonal pair" arguments do not extend | A/03_algebraic/full_mate_reconstruction_2026_09_07/PARTIAL_MATE_COUNTEREXAMPLE.md |
| A zero 2×2 minor forces Karlsson | Exact rational seed (1, (−24−7i)/25, (−8−15i)/17, −i) | A/03_algebraic/minor_boundary_finite_algebra_2026_09_06/THEOREM.md §9; ProvenResults/CommonRays |
| Two rows orthogonal on three columns force a zero 3×3 minor | Counterexample at seeds (ω, ω², i, i) | A/03_algebraic/global_rigidity_2026_09_08/PARTIAL_THREE_CORNER_COUNTEREXAMPLE.md |
| Liang–Chen H2-block counts (exactly 9, or 9/18) restrict quartets | The underlying real 3×2 lemma is false (McNulty–Weigert 2025). Exact counterexample: w=(1,ω,1,ω,ω²,ω²) against u=1, v=(1,1,−1,−1,i,−i). The archive's former H_X and F_A/F_B quartet exclusions depended on it and were withdrawn | A/03_algebraic/dependency_correction_2026_09_06/README.md |
| A uniform common-ray support bound N_req ≤ 11 | A certified carrier has 12 physical joint zeros, with orthogonality graph K6 ⊔ K3,3 | A/03_algebraic/nonreduced_support_counterexample_2026_09_08/THEOREM.md |
| A fixed carrier always has 48 physical common rays | 48 and 56 are both observed (numerical diagnostic only) | A/02_numerical/STATUS.md |
| A quartet must contain a zero 3×3 minor, or an F3 block, on some edge | Of 80 exact H8-mate selections that pass the regular-frame guards, 32 have no zero minor but an F3 block, and 48 the reverse. Neither endpoint alone can be forced. Only forcing one of the two is still an open possibility | A/04_algebraiccoreV2/retained_target_correction/, f3_fragment_test/ |
| Strip conditions force degeneracy | An exact full edge satisfies them with all minors nonzero and no F3 block | A/04_algebraiccoreV2/er_strip_edge_reconstruction/ |
| MUB triples meet the ramification wall | An exact JMMSW triple has no guarded ramified frame on any of its carriers (3×14,400 frames checked) | A/90_replay_library/04_t4_coverage/ramified_frame_necessity/ |
| The cubic target can be imposed on every forward edge | On that JMMSW triple Q=11664/125 on edges 01 and 02 but Q=0 on the reverse edges. Forcing statements must allow either orientation | A/90_replay_library/05_remaining_D2/balanced_triangle/RESULT.md |
| A pair with extra symmetry is forced | An interval-certified strict pair has only one shared Kramers symmetry (conditional on the reconstruction inputs) | Z/KarlssonAndMeasurements/GlobalRestriction/diagnostics/fresh_unanchored_certificate.md |
| Skew-unitarity alone forces a zero entry (Karlsson zero-entry bridge) | An abstract skew-unitary matrix can have all 15 off-diagonal entries nonzero | A/KARLSSON_RETURN.md §7 |
| Kernel-rank or spectral shortcuts force an F3 block | A compatible Zauner witness has full kernel rank 25, and the spectral shortcuts are refuted | Z/KarlssonAndMeasurements/GlobalRestriction/F3KernelRankAttempt.md, F3SaturationAlgebra.md |
| Two matchings force three ±1-valued directions | Exact counterexample | A/03_algebraic/core/HX_NONBINARY_COUNTEREXAMPLE.md |
| Shared cross traces force a third matching | Counterexample | A/03_algebraic/core/SHARED_TRACE_RELAXATION.md |
| The product-QLS (Ball–Simoens) bridge transfers to d=6 | Refuted by an exact dimension-16 quartet at all six reference choices. N_full has 18 simple eigenvalues, so there is no spectral pairing | A/03_algebraic/core/surviving_counts/quartet_forcing_diagnostics/ |
| Qutrit covariance positivity gives separability | A positive qutrit covariance can have a non-PSD tensor | A/03_algebraic/core/surviving_counts/covariance_contraction/ATTEMPT.md |
| The dimension-4 MUB reflection argument transfers | That reflection is not a positive map, and a mixing reflection exists in dimension 6 | A/03_algebraic/core/carrier_collision_reflection/CONTROLS.md |

## Relaxations and certificate families that stay feasible

| Relaxation or ansatz | Barrier | Source |
|---|---|---|
| Degree-two SOS or moment refutation of the aligned 4+1 system | Feasible for every carrier (Gaussian witness) | ProvenResults/FourthBasis (4+1 reduction) |
| Equality-only (unsaturated) elimination to a seed polynomial | Every Hadamard has six pairwise formally orthogonal Laurent ghost rays, so this fails at any degree unless ghosts are saturated away | ProvenResults/FourthBasis (ghost factors) |
| Degree-9 cubic-forcing relaxation | Has a rational feasible point | A/03_algebraic/core/quartet_cubic_forcing/ATTEMPT.md |
| Averaging over three-row sets to force S=126 | The average gives S ≥ 162. Three non-MU carriers pass all twenty 3-row inequalities | A/03_algebraic/core/phase_reduction/quartet_forcing/ |
| Averaging corner slacks to force a zero | The 20 slacks always sum to 216 (mean 54/5 over 400 corners) for every Hadamard | ProvenResults/EdgeRigidity (spectral identities) |
| Rank, inertia and both quartic-moment extension filters | Exact zero-minor count-six controls pass all of them | A/03_algebraic/core/joint_filter_control, coupled_extension_diagnostic, quartic_extension_filter |
| Input-only character-channel equations | Insufficient | A/03_algebraic/core/simple_character_channel/RELAXATION_CONTROL.md |
| Projector conditions without the common-ray factor | Balanced pure rank-3 projectors with strict minors exist on a carrier with no common-ray pair | A/04_algebraiccoreV2/projector_seed_test/ |
| Pairwise (two-basis) chirality refinements | A qutrit-product control passes every pairwise check but fails the joint one | A/04_algebraiccoreV2/fermionic_fock/four_basis_chirality/ §6 |
| Projected fermionic bound | An incompatible order-12 pair passes it | A/04_algebraiccoreV2/fermionic_projected_relation/ |
| 883-monomial coupled multiplier family | Gives no seed-only relation | A/04_algebraiccoreV2/coupled_matching_attempt/ |
| Original 54-word H8 multiplier family | A certified annihilator at t=1/16 excludes every coefficient choice | A/03_algebraic/core/phase_reduction/formula_reach/ |
| Low-degree fixed-frame relations A+uB | No nonzero universal full-mate relation of this form exists | A/03_algebraic/full_mate_reconstruction_2026_09_07/FRAME_ANSATZ_THEOREM.md |
| Fixed-frame anchor template ansatz | Excluded by an exact 6×6 PD certificate | Z/work/result_review_round2_2026-09-22/RESULT_C2 |
| Forcing completion from compressed quartet data | Compressed sums, purity and all anchor overlaps still allow rank(G12)=3 | Z/work/result_review_round2_2026-09-22/RESULT_A2 |
| Bounding the full-triple error by 1/18 | An exact pure state has E_full=(123−40√3)/1014 < 1/18 | Z/work/result_review_2026-09-22/RESULT_D |
| Restricting seeds through the anchor gauge | By unitary Sinkhorn, gauge regularisation alone gives no seed restriction | Z/KarlssonAndMeasurements/GlobalRestriction/AnchorFirst.md |
| Determinant characters producing another matching | Do not | A/03_algebraic/global_rigidity_2026_09_08/DETERMINANT_SHORTCUT.md |
| Cubic complete-set relaxation (seven MUBs) | An exact rational feasible point exists | A/seven-mub-attempt-2026-09-26/ |

## Not proved, and not to be used as inputs

The archive treated these as "accepted" or "adopted" inputs without a proof
anyone checked:

- "Conjecture 3" / full Szöllősi-family quartet exclusion.
- The Karlsson three-ray global restriction and the a=d=−1 third-basis
  theorem.
- The supplied sextic criterion and W4-02.
- The Diţă/H_x "full21" closure input.
- The H_times/H_x direct nonextension, which rests on a lucky-prime
  inference from frozen msolve output.

Results that depend on any of these stay in the archive.
