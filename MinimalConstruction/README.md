# Minimal reconstruction

> **Status (18 Oct 2026).** The current proof ([`PROOF.md`](../PROOF.md), Step 2) uses this reconstruction **without**
> the classification [CT]. The table below says which result proves each step.

**[One-page construction (PDF)](Hadamard6_Positive_Sheet.pdf)** · [LaTeX](Hadamard6_Positive_Sheet.tex) · [Full definitions](RECONSTRUCTION.md) · [Statements MC1–MC5](ASSUMPTIONS.md)

Four unit phases a, b, c, d with R > 0 determine an order-6 complex Hadamard matrix. The steps are:
1. Form the corner E = [[1,1,1],[1,a,b],[1,c,d]] and its Gram matrices G_h = 6I − EE*, G_v = 6I − EᵀĒ.
2. Compute the invariants and the two side labels z± = (χ ± i√R)/2g (notation below).
3. Choose a horizontal side B with BB* = G_h and label z₊, and a vertical side C with C*C = 6I − E*E (= G_vᵀ) and label z₋ = z̄₊.
4. Set D = −C E* G_h⁻¹ B. The result H₊(θ) = [[E, B], [C, D]] is Hadamard (flatness) and unique up to equivalence.

Every non-F6, non-Tao equivalence class is reached this way. The construction is a surjection, not an injective
parametrisation. F6 denotes the single Fourier matrix, not its two-parameter family.

## How this folder feeds the proof

| [`PROOF.md`](../PROOF.md) | Proved by | Where |
|---|---|---|
| Lemma 2.1 (side quadratic, R = 4(Im T)²) | the λ-identities | `PROOF.md` §2.1; [`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §1 |
| Theorem 2.2 (matched existence): sides | identity (J) and the maximum principle | return J, [`../proof/coverage/returns/J_side_existence/`](../proof/coverage/returns/J_side_existence/RESULT.md) |
| Theorem 2.2: flatness | one weighted defect W₁₁ plus relabelling | return E and handoff M ([`../proof/coverage/README.md`](../proof/coverage/README.md)) |
| Theorem 2.3 (matched uniqueness) | a Vieta argument | `PROOF.md` §2.2 ([`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §4 is the same argument) |
| Theorem 2.4 (nonmatched converse) | projector argument and Fourier normal form | return G, [`../proof/coverage/returns/G_prm/PRM.md`](../proof/coverage/returns/G_prm/PRM.md) |
| Theorem 2.5 (strict-corner coverage) | strip classification and counting | [`Proofs/`](Proofs/README.md) (index there), nonzero J by return K |

`python3 Proofs/verify_dossier.py` replays the checks in `Proofs/`. Provenance (recovered sources, manifests, pinned
hashes, the old audit and change reports) is in `Proofs/provenance/`.

## Notation

`PROOF.md`, the paper and this folder name the same objects slightly differently:

| Object | This folder and the paper | `PROOF.md` |
|---|---|---|
| Seed and corner | θ = (θ₁,…,θ₄) ∈ T⁴, a, b, c, d = e^{iθ}, E(θ) | same |
| Gram entries | s = G₂₁, t = G₃₁, r = G₃₂ of G_h | same |
| Invariants | p, J, W₀, g, η, χ, R = 4g²η − χ² | same (W₀ is written W) |
| Side signature | z = Θ(B) = −Ψ(B)/g, with \|z\|² = η | T = −Ψ(B) = g z |
| Side labels | z± = (χ ± i√R)/2g | ζ± = (χ ± i√R)/2 = g z± |
| Matched | horizontal label z, vertical label z̄ | same |
| Forced block | D = −C E* G_h⁻¹ B | same |

## The earlier route

Before the classification-free proof, the reduction used five statements MC1–MC5 ([`ASSUMPTIONS.md`](ASSUMPTIONS.md)),
proved in [`Proofs/`](Proofs/README.md) relative to named results of the [classification paper](../ClassificationPaper/README.md).
Only MC1 (strict-corner coverage, now Theorem 2.5) is still used; the others are replaced as in the table above.

| | Statement |
|---|---|
| **MC1** | Every non-F6 Hadamard matrix has a corner with R > 0 |
| **MC2** | At a strict corner, the side fibre has exactly two orbits |
| **MC3** | The side formulas are well defined on R > 0 |
| **MC4** | Both matched completions are flat. The non-matched exceptions are exactly the Tao cases |
| **MC5** | Positive-sheet coverage holds in the form used by Step 2 of [the proof](../PROOF.md) |

## Executable formulas

- [Implementation/model.py](Implementation/model.py) evaluates the PDF construction.
- [Implementation/single_radical.py](Implementation/single_radical.py) gives the equivalent measurement equations, with one shared sheet scalar. Derivations: [measurement coordinates](Measurements/MeasurementCoordinates.md) and [single radical](Measurements/SingleRadicalMeasurements.md).
