# Dependencies and status

## Evidence levels

| Level | Meaning in this archive |
| --- | --- |
| Reviewed argument | The mathematical derivation was checked, with the hypotheses stated in `BRIEF.md` |
| Exact finite check | A particular matrix identity or finite family was evaluated over exact rational number fields |
| Manuscript dependency | The source discussion reports an identity or theorem; its original definitions/proof were not available here |
| Conditional route | A correct inference if the listed inputs are supplied; it is not an unconditional theorem in this archive |
| Lean verified | **No result in this archive has this status** |

## Dependency map

| Target | Required inputs | Current evidence |
| --- | --- | --- |
| Elementary side fiber | Unit-circle equations (G2) | Reviewed argument; representative and finite-grid arithmetic checked |
| Six ordered sides per sign at `E₀` | Elementary fiber; actual `Ψ` definition, base value, permutation invariance, conjugation rule | Base invariant values remain manuscript dependencies |
| Signed fiber count on `Ω` | Independent connectedness; `E₀∈Ω`; Gram identities; local inverse theorem; compactness | Conditional route with detailed proof plan |
| Prescribed-label uniqueness | Signed count; free sign-preserving permutation action | Conditional route |
| Local analytic sides / continuous quotient side | Local analytic inverse theorem; uniqueness; quotient convention | Conditional route |
| Vertical side results | Horizontal result and valid transposition/domain/label conventions | Conditional route |
| Direct normal bound | Norm equation, positive `σ`, stated bounds, orthogonality | Reviewed argument |
| Old/new bound comparison | Actual old constant definitions and clipping | Pending definition check |
| `r_F=ρ` | Relations in (N2) | Reviewed conditional algebra |
| Exact shell | Orthogonal decomposition on the sphere | Reviewed argument |
| Transfer inequalities | Isometric equivalence; correct orthogonal projectors; normal bound | Reviewed argument |
| Revised certificate passes | Revised checker, original data, successful replay | **Not run; no data supplied** |
| Five-frame completion | Orthonormality and all unbiasedness constraints | Reviewed argument |
| Eight-ray criterion and dimension split | Rank-two complement algebra, real bilinear pairing | Reviewed argument |
| Uniform no-completion alternative | Additional theorem for every admissible configuration | **Not proved or supplied** |
| Trace witness | Universal ray inequalities and negative trace | Reviewed implication; no universal witness supplied |
| Four-case cube-root reduction | Earlier forcing to cube roots; character equivalence; exact Fourier convention | Reviewed reduction; finite table and Tao permutations checked |
| Singular-minor lemma | Phase entries, singularity, full Hadamard orthogonality | Reviewed argument |
| Equality of matched images | Flat matched completions, exact invariant laws, normalized `D∈Ω`, label reversal, uniqueness | Conditional route |
| Conjugation-invariant image | Image equality plus domain and reconstruction conjugation laws | Conditional route |
| Matched flatness by continuation | Fixed-sheet analytic defect; actual open flat patch; second-sheet bridge | Optional conditional route |
| Main exclusion via weaker classification | Full quotient clopen excluded `W`; structural coverage; connected images; separate Tao exclusion | Conditional dependency refactor |

## Corrections and obligations retained from the audit

### Do not skip surjectivity of the signed projection

A proper local diffeomorphism need not hit every point of an arbitrary target. Use the nonempty clopen image and connectedness, or prove local constancy including empty fibers. Then the six-sheet covering conclusion is justified.

### Sign invariance is a theorem, not a notational convention

The orbit count requires column permutations to preserve the prescribed sign. The conjugation argument requires the precise conjugation law for `Ψ`. Both depend on the actual invariant definition.

### Avoid a hidden side nonsingularity assumption

The permutation action is free if the three columns are distinct. A nonzero Gram-map Jacobian already rules out coincident columns. If using invertibility of `B` instead, prove or cite that separate theorem. The forced-block formula does require invertibility, regardless of the proof of freeness.

### A global unordered side need not have a global ordering

Local analytic choices suffice. No trivialization of the covering or absence of monodromy follows from connectedness.

### Continuation is sheet-specific

Define `F₊` and `F₋`. A nonempty open flat patch for one proves only that sheet's scalar defect vanishes. The other sheet needs a second patch or the explicit conjugation identity. Never replace an open patch by a single point, a curve, or a tangent-dimension count.

### Check the entire domain at the complementary corner

The inequality `R(D)>0` proves only that inequality. If `Ω` has additional predicates, guards, normalization conditions, or selected components, establish all of them before applying uniqueness at `D`. Do not modify the domain to make the argument fit.

### Boundary transfer requires preservation of the metric

An arbitrary invertible map preserving the zero-row-and-column-sum space can stretch lengths. The formulas (N4)–(N5) use `A* = A⁻¹`, preservation of orthogonality, and preservation of the normal norm. Verify that the actual permitted permutations, transpositions, signs, and gauge conventions induce an isometry for the norm in use.

### Topological propagation of exclusion needs independent closedness

Do not infer global nonextendibility merely because its set is open and `Ω` is connected. A hypothetical extension could lie on a closed exceptional subset. `W` must be proved clopen in the ambient quotient relevant to the classification chain.

### Keep the quartet quantifiers

The exact eight-ray criterion is valid for every admissible pair of four-frames. A global no-four proof must show its no-completion alternative for every such pair. Generic ranks, one carrier, sampled seeds, or one local branch do not satisfy that obligation.

### Keep external and computational inputs visible

The optional local four-dimensional Hadamard manifold is external input until formalized. A Fourier-family reduction does not remove computer assistance from an existing Fourier exclusion certificate. No new certificate count, runtime, or pass status follows from a sharper mathematical inequality without replay.
