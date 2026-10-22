# Suggested Lean task decomposition

These are proposed identifiers and module boundaries, not pre-existing mathlib names. Search the pinned project before choosing concrete APIs. No uncompiled `.lean` skeleton is included, so this handoff cannot accidentally be mistaken for a compiling formalization.

## A. Finite algebra and side topology

| Proposed declaration | Statement / proof boundary |
| --- | --- |
| `unitTriple_sum_neg_one_factor` | Three unit complex numbers of sum `−1` satisfy `(1+x₁)(1+x₂)(1+x₃)=0` |
| `unitTriple_sum_neg_one_opposites` | Such a triple can be permuted to `(-1,t,-t)` with unit `t` |
| `elementarySide_classification` | (G2) iff the normalized side is a column permutation of `B₀` or `conj B₀` |
| `elementarySide_orbits_disjoint` | The two permutation orbits are disjoint and each has cardinality six |
| `elementarySide_invariant` | Evaluate the actual `Ψ` at `B₀` and establish the sign split |
| `signedSide_projection_localAnalytic` | The nonzero real Gram Jacobian gives local analytic graphs over the seed domain |
| `signedSide_projection_proper` | Compactness plus a strict positive lower bound for `R` over compact seed sets |
| `signedSide_projection_surjective` | Nonempty clopen image and connectedness |
| `signedSide_fiber_card` | Each signed fiber has exactly six ordered elements |
| `signedSide_unique_orbit` | A free permutation action exhausts each fiber |
| `signedSide_localAnalytic` | Local analytic ordered representative; no assertion of a global ordering |
| `signedSide_quotient_continuous` | Continuous unordered side in the actual quotient |

Represent the phase torus with the project's existing circle subtype or phase-coordinate model. Separate the elementary matrix argument from the topological machinery. The elementary theorem needs no reconstruction radicals.

For local cardinal constancy, an elementary compactness proof may be more economical than developing a general covering-space interface. In either route, the topology on the incidence space and the sign gap over compact sets must be explicit.

## B. Certificate bounds

Use abstract real inner-product spaces for the reusable geometric lemmas, and specialize to the phase/gauge space afterward.

| Proposed declaration | Target |
| --- | --- |
| `normal_norm_le_direct` | (N1), derived from the residual equation |
| `direct_bound_le_old_of_bounds` | Comparison under explicit inequalities involving the actual old bound |
| `full_radius_eq` | (N2) under verified constant relations |
| `orthogonal_boundary_shell_sq` | Exact Pythagorean identity and squared inequalities |
| `orthogonal_boundary_shell` | Square-root shell (N3) |
| `normalProjection_eq` | `h−T(T*T)⁻¹T*` is the projector onto the gauge-normal space |
| `isometric_transfer_normal_pairing` | `⟪c,Aν⟫=⟪ΠA⁻¹c,ν⟫` |
| `isometric_transfer_sq_le` | (N4) |
| `isometric_transfer_boundary_sq_le` | (N5) |
| `box_linear_functional_max` | Exact affine maximum (N6) |

Prefer lemmas stated with a certified upper bound over the box rather than introducing an analytic supremum into the arithmetic checker. Derive square-root corollaries only where required. Prove strict target-ball membership from a strict squared bound and `ρ_t>0`.

## C. Projector completion

Use orthogonal projectors or self-adjoint endomorphisms to avoid irrelevant choices of ray phases. Recover unit ray representatives only at the interface to the existing MUB definition.

| Proposed declaration | Target |
| --- | --- |
| `frame_complement_projection` | Orthonormal frame complement is an orthogonal projector of the expected rank |
| `frame_complement_expectation` | Expectation equals one minus the sum of squared overlaps |
| `two_fiveFrames_complete` | (C1) and quartet completion, with converse |
| `hermitian_trace_product_real` | The trace pairing is real on Hermitian matrices |
| `traceless_rankTwo_square` | Nonzero supported traceless Hermitian `X` satisfies `X²=λ²P`, `λ>0` |
| `rankTwo_split_projection` | `(P±X)/2` are rank-one orthogonal projectors when `X²=P` |
| `completionSpace_dim_le_three` | Real dimension bound |
| `fourFrame_complement_trace` | `Tr(PQ)=2/3` under the sixteen cross conditions |
| `completionSpace_mixed_trace_zero` | `Tr(XQ)=Tr(PY)=0` |
| `complement_split_overlap` | Formula (C3) |
| `eightRays_complete_iff` | Necessity and sufficiency in (C2) |
| `bilinear_nonzero_orthogonal_pair` | A nonzero kernel vector exists when one real dimension is at least two and the other space is nonzero |
| `eightRays_noncompletion_iff` | Alternative (C4) |
| `completionSpace_pauli_kernel` | Explicit real `16×3` kernel model |
| `eightRays_kernel_criterion` | (C5) and rank alternative |
| `traceWitness_excludes_basis` | Negative trace plus all nonnegative expectations rules out a basis |

The formula for a traceless Hermitian `2×2` square can avoid a large spectral-theorem dependency. Its use in the ambient space still requires an orthonormal coordinate identification of the rank-two range.

When implementing real Hermitian subspaces, avoid inadvertently demanding closure under complex scalars. Choose either a real submodule of self-adjoint matrices or an equivalent real coordinate representation.

## D. Structural reductions and conditional integration

| Proposed declaration | Target |
| --- | --- |
| `cubeRoot_character_normalization` | Reduce four cube-root parameters to the character cases or four remaining pairs |
| `cubeRoot_four_cases` | Exact table and Tao permutation equivalences |
| `singular_phase_three_contains_rankOne_rectangle` | First half of the singular-minor argument |
| `rankOne_rectangle_forces_hadamard_subblock` | Second half, including transposed orientation |
| `singular_minor_forces_hadamard_subblock` | Combined lemma |
| `matched_blockSwap_opposite_label` | Block swap, dephase, domain membership, invariant/label laws |
| `matched_images_equal` | Both inclusions of global images |
| `matched_image_conjugation_invariant` | Separate conjugation argument |
| `clopen_exclusion_of_weaker_classification` | Main implication with all independent structural and exclusion hypotheses exposed |
| `flatness_of_open_patch` | Optional analytic identity theorem for one fixed sign |
| `flatness_both_signs` | Optional second-sheet bridge after the first theorem |

For optional continuation, formalizing an abstract conditional theorem is useful even when the external local-manifold theorem is not in the repository. Do not market that theorem as an unconditional replacement for an existing algebraic proof.

## Integration and return report

Build only with the repository's pinned toolchain. First build the independent modules; then build their dependents. Run the project's established checking gates. Replay all certificates affected by checker semantics or constants, and preserve a log of the checker version used.

For every exported theorem, report:

| Field | Required information |
| --- | --- |
| Declaration | Fully qualified Lean name |
| Mathematical statement | Quantifiers, sign branches, and domain |
| Assumptions | Especially any local manifold, closedness, invariant law, or classification input |
| Proof status | Compiled, conditional, pending, or blocked |
| Axioms | Output of `#print axioms` and any newly introduced dependency |
| Computation | Kernel computation or external auxiliary check; distinguish them |
| Integration | Replaced theorem/checker path and replay status |

There is no need to pin a fresh mathlib version for this handoff or to construct a standalone project unrelated to the user's existing formal development.
