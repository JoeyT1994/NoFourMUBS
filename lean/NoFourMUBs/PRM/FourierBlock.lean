import Hadamard6.FourierCoordinateAllocation
import Hadamard6.FourierCubicTaoTable
import Hadamard6.SimultaneousFourierNormalization
import NoFourMUBs.PRM.Defs
import NoFourMUBs.Step2.MatchedUnique

/-!
# PR-M, Theorem A §5: carriers with a `3 × 3` Hadamard block

This file formalizes `PRM.md` §5 (§§5.1–5.3 and the assembly of §5.5): if the top three rows of an order-six
Hadamard `H` contain a `3 × 3` Hadamard submatrix, then `H` is in Tao's orbit, or `H` is equivalent to a
member of the Fourier family `Step2.fourierFamily` or to its transpose (`tao_or_fourier_of_block`).

* §5.1 (block normalisation and the forced fourth block) is upstream:
  `allFourBlocksHadamard_of_topRight`, `simultaneous_threeBlockFourierNormalization`,
  `first_three_blocks_force_full_normalForm`.
* §5.2 (the factor equations `α̂₁ Â₁ = 0`, `α̂₂ Â₂ = 0`) is upstream: `fourierForcedD_factor_equations`.
* §5.3 (zero allocations).  The unmixed allocations give a Fourier character `v = (1, p, q)` or
  `w = (1, r, s)` (upstream `FourierUnmixed`).  In the mixed allocations all four parameters are cube roots
  of unity; the 81-case census `cubicCensus_*` below shows that each such tuple has a character `v` or `w`,
  is one of the 18 rows of upstream's explicit Tao table, or has a forced-block entry equal to `0`
  (contradicting flatness).  The zero-entry and Tao certificates are the ones of upstream's
  `FourierCubicCases*`; only the conclusion is sharpened from "has a Hadamard `2 × 2`" to "has a character
  parameter pair".
* At a character gauge the forced matrix is the Fourier family, or its transpose, up to a cyclic shift of
  the last three columns or rows (`v_form_*`, `w_form_*`, checked entrywise).
-/

open Hadamard6 ComplexConjugate

noncomputable section


namespace NoFourMUBs.PRM

/-! ### The cubic census (`PRM.md` §5.3, mixed allocations) -/

/-- `(x, y)` makes `(1, x, y)` a Fourier character `(1, ωᵏ, ω²ᵏ)` (relative to the chart's `ω`). -/
def IsFourierCharacterPair (ω x y : ℂ) : Prop :=
  (x = 1 ∧ y = 1) ∨ (x = ω ^ 2 ∧ y = ω) ∨ (x = ω ∧ y = ω ^ 2)

/-- The cubic census with `p = 1`: Tao, or one of the two Fourier families. -/
theorem cubicCensus_p_one
    {omega q r s : ℂ}
    (homega : IsPrimitiveCubicPhase omega)
    (hq : IsCubicRoot q) (hr : IsCubicRoot r) (hs : IsCubicRoot s)
    (hH : IsHadamard (fourierNormalForm omega 1 q r s (fourierForcedD omega 1 q r s))) :
    IsTaoOrbit (fourierNormalForm omega 1 q r s (fourierForcedD omega 1 q r s)) ∨
      IsFourierCharacterPair omega 1 q ∨ IsFourierCharacterPair omega r s := by
  rcases cubicPowerFacts homega with ⟨h3, h4, h5, h6, h7, h8⟩
  have hsq : omega ^ 2 = -omega - 1 := by
    linear_combination homega.2
  have hzero (i j : I3)
      (hz : fourierForcedD omega 1 q r s i j = 0) :
      IsTaoOrbit (fourierNormalForm omega 1 q r s (fourierForcedD omega 1 q r s)) ∨
      IsFourierCharacterPair omega 1 q ∨ IsFourierCharacterPair omega r s :=
    (false_of_fourierForcedD_entry_zero hH hz).elim
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hq with hq0 | hq1 | hq2 <;>
    subst q <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hr with hr0 | hr1 | hr2 <;>
    subst r <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hs with hs0 | hs1 | hs2 <;>
    subst s
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 0) hH)
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h4, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 1) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 2) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · apply hzero 1 2
    simp [fourierForcedD, dftEntry₁, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₁]
    ring_nf
    simp [h3, h4, h5, h6, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 3) hH)
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 4) hH)
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h5, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · apply hzero 2 2
    simp [fourierForcedD, dftEntry₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₂]
    ring_nf
    simp [h3, h4, h5, h8, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 5) hH)

/-- The cubic census with `p = omega`: Tao, or one of the two Fourier families. -/
theorem cubicCensus_p_omega
    {omega q r s : ℂ}
    (homega : IsPrimitiveCubicPhase omega)
    (hq : IsCubicRoot q) (hr : IsCubicRoot r) (hs : IsCubicRoot s)
    (hH : IsHadamard (fourierNormalForm omega (omega) q r s (fourierForcedD omega (omega) q r s))) :
    IsTaoOrbit (fourierNormalForm omega (omega) q r s (fourierForcedD omega (omega) q r s)) ∨
      IsFourierCharacterPair omega (omega) q ∨ IsFourierCharacterPair omega r s := by
  rcases cubicPowerFacts homega with ⟨h3, h4, h5, h6, h7, h8⟩
  have hsq : omega ^ 2 = -omega - 1 := by
    linear_combination homega.2
  have hzero (i j : I3)
      (hz : fourierForcedD omega (omega) q r s i j = 0) :
      IsTaoOrbit (fourierNormalForm omega (omega) q r s (fourierForcedD omega (omega) q r s)) ∨
      IsFourierCharacterPair omega (omega) q ∨ IsFourierCharacterPair omega r s :=
    (false_of_fourierForcedD_entry_zero hH hz).elim
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hq with hq0 | hq1 | hq2 <;>
    subst q <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hr with hr0 | hr1 | hr2 <;>
    subst r <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hs with hs0 | hs1 | hs2 <;>
    subst s
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 6) hH)
  · apply hzero 2 2
    simp [fourierForcedD, dftEntry₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₂]
    ring_nf
    simp [h3, h5, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 7) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 8) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · apply hzero 1 2
    simp [fourierForcedD, dftEntry₁, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₁]
    ring_nf
    simp [h3, h4, h5, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 9) hH)
  · apply hzero 1 1
    simp [fourierForcedD, dftEntry₁, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₁]
    ring_nf
    simp [h3, h4, h6, h7, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 10) hH)
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · apply hzero 0 2
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, h5, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 11) hH)
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inr ⟨rfl, rfl⟩)))

/-- The cubic census with `p = omega ^ 2`: Tao, or one of the two Fourier families. -/
theorem cubicCensus_p_omega_sq
    {omega q r s : ℂ}
    (homega : IsPrimitiveCubicPhase omega)
    (hq : IsCubicRoot q) (hr : IsCubicRoot r) (hs : IsCubicRoot s)
    (hH : IsHadamard (fourierNormalForm omega (omega ^ 2) q r s (fourierForcedD omega (omega ^ 2) q r s))) :
    IsTaoOrbit (fourierNormalForm omega (omega ^ 2) q r s (fourierForcedD omega (omega ^ 2) q r s)) ∨
      IsFourierCharacterPair omega (omega ^ 2) q ∨ IsFourierCharacterPair omega r s := by
  rcases cubicPowerFacts homega with ⟨h3, h4, h5, h6, h7, h8⟩
  have hsq : omega ^ 2 = -omega - 1 := by
    linear_combination homega.2
  have hzero (i j : I3)
      (hz : fourierForcedD omega (omega ^ 2) q r s i j = 0) :
      IsTaoOrbit (fourierNormalForm omega (omega ^ 2) q r s (fourierForcedD omega (omega ^ 2) q r s)) ∨
      IsFourierCharacterPair omega (omega ^ 2) q ∨ IsFourierCharacterPair omega r s :=
    (false_of_fourierForcedD_entry_zero hH hz).elim
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hq with hq0 | hq1 | hq2 <;>
    subst q <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hr with hr0 | hr1 | hr2 <;>
    subst r <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hs with hs0 | hs1 | hs2 <;>
    subst s
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 12) hH)
  · apply hzero 1 0
    simp [fourierForcedD, dftEntry₁, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₁]
    ring_nf
    simp [h4, h5, h6, h7, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 13) hH)
  · apply hzero 0 1
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h5, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · apply hzero 0 1
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, hsq]
    ring
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 14) hH)
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inl (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · apply hzero 2 1
    simp [fourierForcedD, dftEntry₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₂]
    ring_nf
    simp [h3, h4, h5, h6, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 15) hH)
  · apply hzero 1 1
    simp [fourierForcedD, dftEntry₁, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₁]
    ring_nf
    simp [h3, h4, h5, h6, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 16) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl⟩)))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 17) hH)
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩)))
  · apply hzero 0 1
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, h5, h6, hsq]
    ring

/-- The mixed allocations: with four cubic parameters the forced normal form is Tao, or has a character
`v` or `w`. -/
theorem cubicCensus {omega p q r s : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hp : IsCubicRoot p) (hq : IsCubicRoot q) (hr : IsCubicRoot r) (hs : IsCubicRoot s)
    (hH : IsHadamard (fourierNormalForm omega p q r s (fourierForcedD omega p q r s))) :
    IsTaoOrbit (fourierNormalForm omega p q r s (fourierForcedD omega p q r s)) ∨
      IsFourierCharacterPair omega p q ∨ IsFourierCharacterPair omega r s := by
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hp with rfl | rfl | rfl
  · exact cubicCensus_p_one homega hq hr hs hH
  · exact cubicCensus_p_omega homega hq hr hs hH
  · exact cubicCensus_p_omega_sq homega hq hr hs hH

/-! ### All zero allocations (`PRM.md` §5.3) -/

/-- `PRM.md` §5.3: a flat forced Fourier normal form is in Tao's orbit or belongs to one of the two
Fourier families (`v` or `w` a character). -/
theorem fourierNormalForm_tao_or_character {ω p q r s : ℂ} (hω : IsPrimitiveCubicPhase ω)
    (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (hr : Complex.normSq r = 1) (hs : Complex.normSq s = 1)
    (hK : IsHadamard (fourierNormalForm ω p q r s (fourierForcedD ω p q r s))) :
    IsTaoOrbit (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)) ∨
      IsFourierCharacterPair ω p q ∨ IsFourierCharacterPair ω r s := by
  have hD : EntrywiseUnit (fourierForcedD ω p q r s) := by
    intro i j
    simpa [fourierNormalForm] using hK.1 (Sum.inr i) (Sum.inr j)
  have hω3 : IsCubicRoot ω := cubic_of_quadratic hω.2
  obtain ⟨f₁, f₂⟩ := fourierForcedD_factor_equations hω.1 hω.2 hD
  -- `v` is a character when both `Â` vanish
  have hvchar (h₁ : Ahat₁ ω p q = 0) (h₂ : Ahat₂ ω p q = 0) : IsFourierCharacterPair ω p q := by
    rcases vHat_support_singleton_of_seqA_zero hω.2
        (Ahat_both_zero_gives_seqA_zero hω.1 hω.2 hp hq h₁ h₂) with h | h | h
    · exact Or.inl (parameters_of_vHat₀_support hω.2 h.1 h.2)
    · exact Or.inr (Or.inl (parameters_of_vHat₁_support hω.2 h.1 h.2))
    · exact Or.inr (Or.inr (parameters_of_vHat₂_support hω.2 h.1 h.2))
  rcases mul_eq_zero.mp f₁ with hα₁ | hA₁ <;> rcases mul_eq_zero.mp f₂ with hα₂ | hA₂
  · exact Or.inr (Or.inr (alphaHat_both_zero_gives_parameters hω.1 hω.2 hr hs hα₁ hα₂))
  · obtain ⟨hp3, hq3⟩ := A₂_zero_parameters_cubic hω.1 hω3 hp hq
      (Ahat₂_formula hω.1 hω.2 hp hq) hA₂
    obtain ⟨hr3, hs3⟩ := α₁_zero_parameters_cubic hω.1 hω3 hr hs (alphaHat₁_formula ω r s) hα₁
    exact cubicCensus hω hp3 hq3 hr3 hs3 hK
  · obtain ⟨hp3, hq3⟩ := A₁_zero_parameters_cubic hω.1 hω3 hp hq
      (Ahat₁_formula hω.1 hω.2 hp hq) hA₁
    obtain ⟨hr3, hs3⟩ := α₂_zero_parameters_cubic hω.1 hω3 hr hs (alphaHat₂_formula ω r s) hα₂
    exact cubicCensus hω hp3 hq3 hr3 hs3 hK
  · exact Or.inr (Or.inl (hvchar hA₁ hA₂))

/-! ### The forced Fourier matrices at a character gauge (`PRM.md` §5.4) -/

/-- Shift of the last three indices by `c`. -/
def shiftR (c : Fin 3) : Equiv.Perm I6 := Equiv.sumCongr (Equiv.refl _) (Equiv.addRight c)

/-- `v = (1, 1, 1)`: the family in `(r, s)` (family (5.5)). -/
theorem v_form_one {ω r s : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω (1) (1) r s (fourierForcedD ω (1) (1) r s) =
      (Step2.fourierFamily ω r s).submatrix (Equiv.refl _) (shiftR 0) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-- `v = (1, ω², ω)`: the family in `(r, s)`, last three columns shifted. -/
theorem v_form_sq {ω r s : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω (ω ^ 2) (ω) r s (fourierForcedD ω (ω ^ 2) (ω) r s) =
      (Step2.fourierFamily ω r s).submatrix (Equiv.refl _) (shiftR 2) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-- `v = (1, ω, ω²)`: the family in `(r, s)`, last three columns shifted. -/
theorem v_form_om {ω r s : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω (ω) (ω ^ 2) r s (fourierForcedD ω (ω) (ω ^ 2) r s) =
      (Step2.fourierFamily ω r s).submatrix (Equiv.refl _) (shiftR 1) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-- `w = (1, 1, 1)`: the transposed family in `(p, q)` (family (5.6)). -/
theorem w_form_one {ω p q : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω p q (1) (1) (fourierForcedD ω p q (1) (1)) =
      (Step2.fourierFamily ω p q).transpose.submatrix (shiftR 0) (Equiv.refl _) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-- `w = (1, ω², ω)`: the transposed family in `(p, q)`, last three rows shifted. -/
theorem w_form_sq {ω p q : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω p q (ω ^ 2) (ω) (fourierForcedD ω p q (ω ^ 2) (ω)) =
      (Step2.fourierFamily ω p q).transpose.submatrix (shiftR 2) (Equiv.refl _) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-- `w = (1, ω, ω²)`: the transposed family in `(p, q)`, last three rows shifted. -/
theorem w_form_om {ω p q : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω p q (ω) (ω ^ 2) (fourierForcedD ω p q (ω) (ω ^ 2)) =
      (Step2.fourierFamily ω p q).transpose.submatrix (shiftR 1) (Equiv.refl _) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR, Step2.fourierFamily] <;> grind

/-! ### Theorem A, §5.5 -/

/-- `PRM.md` §5.1–5.4: a Hadamard matrix whose top three rows contain a `3 × 3` Hadamard block (on the
columns `τ (inr ·)`) is in Tao's orbit or in the Fourier family. -/
theorem tao_or_fourier_of_block (H : Mat6) (hH : IsHadamard H) (τ : Equiv.Perm I6)
    (h3 : IsHadamard3 (Matrix.toBlocks₁₂ (H.submatrix id τ))) :
    IsTaoOrbit H ∨ Step2.InFourierFamily H := by
  have hHH' : Equivalent H (H.submatrix id τ) :=
    equivalent_reindexMatrix (Equiv.refl I6) τ H
  have hH' : IsHadamard (H.submatrix id τ) := isHadamard_of_equivalent hHH' hH
  obtain ⟨n₃⟩ := simultaneous_threeBlockFourierNormalization _ hH'
    (allFourBlocksHadamard_of_topRight hH' h3)
  let n := n₃.toNormalization
  have hω : IsPrimitiveCubicPhase n.ω := ⟨n.omega_unit, n.omega_quadratic⟩
  have hHK : Equivalent H n.K := equivalent_trans hHH' n.equivalent
  have hK := n.hK
  rw [n.normalForm] at hHK hK
  have back : ∀ {M : Mat6} (σ τ : Equiv.Perm I6), Equivalent H (M.submatrix σ τ) → Equivalent H M :=
    fun σ τ h => equivalent_trans h (equivalent_symm (equivalent_reindexMatrix σ τ _))
  rcases fourierNormalForm_tao_or_character hω n.p_unit n.q_unit n.r_unit n.s_unit hK with
    hT | hc | hc
  · exact Or.inl (isTaoOrbit_of_equivalent hHK hT)
  · refine Or.inr ⟨n.ω, n.r, n.s, hω, n.r_unit, n.s_unit, Or.inl ?_⟩
    rcases hc with ⟨hp, hq⟩ | ⟨hp, hq⟩ | ⟨hp, hq⟩ <;> rw [hp, hq] at hHK
    · rw [v_form_one hω] at hHK; exact back _ _ hHK
    · rw [v_form_sq hω] at hHK; exact back _ _ hHK
    · rw [v_form_om hω] at hHK; exact back _ _ hHK
  · refine Or.inr ⟨n.ω, n.p, n.q, hω, n.p_unit, n.q_unit, Or.inr ?_⟩
    rcases hc with ⟨hr, hs⟩ | ⟨hr, hs⟩ | ⟨hr, hs⟩ <;> rw [hr, hs] at hHK
    · rw [w_form_one hω] at hHK; exact back _ _ hHK
    · rw [w_form_sq hω] at hHK; exact back _ _ hHK
    · rw [w_form_om hω] at hHK; exact back _ _ hHK

end NoFourMUBs.PRM
