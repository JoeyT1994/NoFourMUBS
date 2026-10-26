import NoFourMUBs.PRM.CoverageBlock
import NoFourMUBs.PRM.CoverageCritical

/-!
# Strict-corner coverage (MC1, `PROOF.md` Theorem 2.5): the three inputs, stated precisely

`strictCornerCoverage_of_inputs : CoverageInputs → StrictCornerCoverage`.

`CoverageInputs` bundles three propositions, the parts of the paper proof
(`STRICT_CORNER_COVERAGE.md`; `PRM.md` §7.1–7.2) that are proved in other modules (all three are
proved; `Final.strictCornerCoverage` assembles them):

* `singular` — §7.1 singular-minor route (`PRM.md` §7.1), up to a `3 × 3` Hadamard block.
  **Proved** in `CoverageSingular` (`singularMinorRoute`).
* `geometric` — §7.1 geometric-row route (`PRM.md` §7.1), up to the block.
  **Proved** in `CoverageGeometric` (`geometricRowRoute`).
* `classification` — I4, `CRITICAL_STRIP_CLASSIFICATION.md` (Theorem), on the top strip, window
  form.  **Proved** in `CoverageStripParts` (`topStripClassification`; its first step, the critical
  corner reduction, is `criticalCornerReduction`).

The two rational endpoints that the classification leaves are excluded by the ten-corner count
(return S, `CoverageTen.anchored_count` in `CoverageEndCount`, `ENDPOINT_COUNTING.md`), not by a
separate input.  From a Hadamard block to the Fourier family is `inFourierFamily_of_block`
(`CoverageBlock`).  The count uses the anchored sum rule `Σ p = 54`, the vertex sums of `J`, the fourth
moment `Σ X² ≥ 54` and `p⋆ ∈ (5.722, 5.723)` (`CoverageTen.pStar_bounds`).

Scalar conventions: `blockP`, `blockJ`, `blockX/Y/Z` of `CoverageCritical` (the Gram data of a corner;
complementary corners have the same `p, X, Y, Z` and opposite `J`, `blockP_compl`, `blockJ_compl`).
`triBlock H 0 l` is the corner on the top three rows and the column triple `tri l`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open CoverageTen

/-! ### Definitions used by the inputs -/

/-- Rows `r 0, r 1, r 2` of `H` can be phased (rows and columns) into
`(1, …, 1)`, `(x₁, …, x₆)`, `(x̄₁, …, x̄₆)` (the geometric-progression rows of `PRM.md` §7.1). -/
def GeometricRows (H : Mat6) (r : Fin 3 → I6) : Prop :=
  ∃ (a : Fin 3 → ℂ) (c x : I6 → ℂ), (∀ i, Complex.normSq (a i) = 1) ∧
    (∀ j, Complex.normSq (c j) = 1) ∧
    ∀ j, a 0 * H (r 0) j * c j = 1 ∧ a 1 * H (r 1) j * c j = x j ∧ a 2 * H (r 2) j * c j = conj (x j)

/-- The equicorrelation endpoint `k = 1/3`: `X = Y = Z = 9/5`, `|J| = 54/25` (so `p = 27/5`). -/
def EquiEndpoint (B : Mat3) : Prop :=
  blockX B = 9 / 5 ∧ blockY B = 9 / 5 ∧ blockZ B = 9 / 5 ∧ |blockJ B| = 54 / 25

/-- The endpoint `k = 1`: `{X, Y, Z} = {1, 1, 5}`, `|J| = 2` (so `p = 7`). -/
def P7Endpoint (B : Mat3) : Prop :=
  |blockJ B| = 2 ∧ ((blockX B = 1 ∧ blockY B = 1 ∧ blockZ B = 5) ∨
    (blockX B = 1 ∧ blockY B = 5 ∧ blockZ B = 1) ∨ (blockX B = 5 ∧ blockY B = 1 ∧ blockZ B = 1))

/-- Every `3 × 3` minor is nonsingular. -/
def AllMinorsInvertible (H : Mat6) : Prop :=
  ∀ σ τ : Equiv.Perm I6, (Step2.rightBlock (H.submatrix σ τ)).det ≠ 0

/-! ### The three inputs -/

/-- **§7.1, singular-minor route** (`PRM.md` §7.1).  A Hadamard matrix with
a singular `3 × 3` minor contains a `3 × 3` Hadamard submatrix (it, or its transpose in the column
case).  Paper proof: a singular phase `3 × 3` matrix has two proportional rows or columns; in the row
case the two complete rows phase to `(1,1,1; 1,1,1)` and `(1,1,1; −1,−1,−1)`; the other four rows have
zero-sum halves `(α f_ε; β f_η)` and both orientations `ε` occur, giving the block `(1; f₁; f₂)`.
(The paper concludes equivalence to `N(z, w)` or its transpose, which contains `F`; here that step is
`inFourierFamily_of_block`.) -/
def SingularMinorRoute : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ∀ σ τ : Equiv.Perm I6,
    (Step2.rightBlock (H.submatrix σ τ)).det = 0 → HasHadamardBlock H ∨ HasHadamardBlock Hᵀ

/-- **§7.1, geometric-row route** (`PRM.md` §7.1).  If three rows phase into
`(1; x; x̄)`, then `Σ xⱼ = Σ xⱼ² = 0`, the `xⱼ` are two equilateral triples, and three columns carrying
one triple give a `3 × 3` Hadamard block `[F]`. -/
def GeometricRowRoute : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ∀ r : Fin 3 → I6, Function.Injective r →
    GeometricRows H r → HasHadamardBlock H

/-- **I4, the critical strip classification** (`CRITICAL_STRIP_CLASSIFICATION.md`, Theorem), for the
top strip, in window form.  At every corner of the top three rows of an all-critical Hadamard matrix
whose `3 × 3` minors are all invertible:
* `J = 0` ⇒ `p = 0`, `p = 5`, or the three rows are geometric (paper §2, the zero-`J` stratum);
* `J ≠ 0` ⇒ `p = p⋆ = 9 − 4/(1 + κ²)` (stated here as the consequence `5.722 < p < 5.723`,
  `CoverageTen.pStar_bounds`), or one of the two rational endpoints (proved by return K's two signed
  corner sums, `proof/coverage/returns/K_nonzero_J`, in `CoverageSignedNonzero`).
The top strip is no restriction: every hypothesis is invariant under row permutations. -/
def TopStripClassification : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → AllCritical H → AllMinorsInvertible H → ∀ l : Fin 20,
    (blockJ (triBlock H 0 l) = 0 →
      blockP (triBlock H 0 l) = 0 ∨ blockP (triBlock H 0 l) = 5 ∨
        ∃ π : Equiv.Perm (Fin 3), GeometricRows H (fun i => Sum.inl (π i))) ∧
    (blockJ (triBlock H 0 l) ≠ 0 →
      PStarWindow (blockP (triBlock H 0 l)) ∨
        EquiEndpoint (triBlock H 0 l) ∨ P7Endpoint (triBlock H 0 l))

/-- **The three inputs of MC1** above (all proved). -/
structure CoverageInputs : Prop where
  singular : SingularMinorRoute
  geometric : GeometricRowRoute
  classification : TopStripClassification

/-! ### Assembly -/

theorem tri0_row : ∀ i : Fin 3, e6.symm (tri 0 i) = Sum.inl i := by decide

/-- The Gram entries of a top corner are the conjugated pair sums of the top strip. -/
theorem gram3_top_eq (H : Mat6) (k : Fin 10) (a b : Fin 3) :
    gram3 (triBlock H 0 (Fin.castLE (by norm_num) k)) b a =
      conj (threeSum (CoverageTen.relativePhase (topStrip H) a b) k) := by
  simp only [gram3, triBlock, Matrix.of_apply, Fin.sum_univ_three, threeSum,
    CoverageTen.relativePhase, topStrip, rowStrip, tri0_row, map_add,
    map_mul, Complex.conj_conj]
  ring

/-- The ten-corner `p` of the top strip is `blockP` of the corresponding corner. -/
theorem stripP_top_eq (H : Mat6) (k : Fin 10) :
    stripP (topStrip H) k = blockP (triBlock H 0 (Fin.castLE (by norm_num) k)) := by
  simp only [stripP, pairEnergy, blockP, Side.pS, blockS, blockT, blockR, gram3_top_eq,
    Complex.normSq_conj]

/-- The ten-corner `X` of the top strip is `blockX` of the corresponding corner. -/
theorem stripX_top_eq (H : Mat6) (k : Fin 10) :
    stripX (topStrip H) k = blockX (triBlock H 0 (Fin.castLE (by norm_num) k)) := by
  simp only [stripX, pairEnergy, blockX, blockS, gram3_top_eq, Complex.normSq_conj]

theorem conj_threeSum_relativePhase (T : CoverageTen.Strip) (i j : Fin 3) (k : Fin 10) :
    conj (threeSum (CoverageTen.relativePhase T i j) k) = threeSum (CoverageTen.relativePhase T j i) k := by
  simp only [threeSum, CoverageTen.relativePhase, map_add, map_mul, Complex.conj_conj, mul_comm]

/-- The ten-corner `J` of the top strip is `blockJ` of the corresponding corner. -/
theorem stripJ_top_eq (H : Mat6) (k : Fin 10) :
    stripJ (topStrip H) k = blockJ (triBlock H 0 (Fin.castLE (by norm_num) k)) := by
  simp only [stripJ, cornerProd, triProd, blockJ, Side.jS, blockS, blockT, blockR, gram3_top_eq,
    Complex.conj_conj, conj_threeSum_relativePhase]

/-- An all-critical Hadamard matrix with a Hadamard block in it or in its transpose is in the Fourier
family. -/
theorem inFourierFamily_of_block' {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hb : HasHadamardBlock H ∨ HasHadamardBlock Hᵀ) : Step2.InFourierFamily H := by
  rcases hb with hb | hb
  · exact inFourierFamily_of_block hH hc hb
  · exact (inFourierFamily_of_block (transpose_isHadamard hH) (allCritical_transpose hc) hb).transpose

/-- The three inputs give the scalar confinement `CriticalStripConfinement`. -/
theorem stripConfinement_of_inputs (h : CoverageInputs) : CriticalStripConfinement := by
  intro H hH hc hF
  have hinv : AllMinorsInvertible H := fun σ τ hd =>
    hF (inFourierFamily_of_block' hH hc (h.singular H hH σ τ hd))
  refine ⟨Sum.inl, Sum.inl_injective, fun k => ?_⟩
  change CornerType (topStrip H) k
  simp only [CornerType, stripP_top_eq, stripJ_top_eq, stripX_top_eq]
  obtain ⟨h0, h1⟩ := h.classification H hH hc hinv (Fin.castLE (by norm_num) k)
  by_cases hJ : blockJ (triBlock H 0 (Fin.castLE (by norm_num) k)) = 0
  · rcases h0 hJ with hz | hz | ⟨π, hg⟩
    · exact Or.inl ⟨hJ, Or.inl hz⟩
    · exact Or.inl ⟨hJ, Or.inr hz⟩
    · exact absurd (inFourierFamily_of_block hH hc
        (h.geometric H hH _ (Sum.inl_injective.comp π.injective) hg)) hF
  · rcases h1 hJ with hz | ⟨hX, hY, hZ, hJ'⟩ | ⟨hJ', hXYZ⟩
    · exact Or.inr (Or.inl hz)
    · exact Or.inr (Or.inr (Or.inl ⟨hX, by rw [blockP_eq]; linarith, hJ'⟩))
    · refine Or.inr (Or.inr (Or.inr ⟨?_, hJ'⟩))
      rw [blockP_eq]
      rcases hXYZ with ⟨a, b, c⟩ | ⟨a, b, c⟩ | ⟨a, b, c⟩ <;> linarith

end Coverage

/-- **MC1 from the three inputs.** -/
theorem strictCornerCoverage_of_inputs (h : Coverage.CoverageInputs) : StrictCornerCoverage :=
  strictCornerCoverage_of_stripConfinement (Coverage.stripConfinement_of_inputs h)

end NoFourMUBs.PRM
