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
  of unity.  Multiplying `v` or `w` by the character `(1, ω, ω²)` cyclically shifts the last three
  columns or rows (`shift_v`, `shift_w`), which normalises `p = r = 1` (handoff 22 Oct §5.1); of the
  nine remaining tuples, five have a character, two have a forced-block entry `0` (contradicting
  flatness) and two are rows of upstream's explicit Tao table (`censusAt_one_one`, `cubicCensus`).
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

/-- Shift of the last three indices by `c`. -/
def shiftR (c : Fin 3) : Equiv.Perm I6 := Equiv.sumCongr (Equiv.refl _) (Equiv.addRight c)

set_option maxHeartbeats 400000 in
/-- Multiplying `v = (1, p, q)` by the character `(1, ω, ω²)` shifts the last three columns. -/
theorem shift_v {ω p q r s : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω (ω * p) (ω ^ 2 * q) r s (fourierForcedD ω (ω * p) (ω ^ 2 * q) r s) =
      (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)).submatrix (Equiv.refl _) (shiftR 1) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR] <;> grind

set_option maxHeartbeats 400000 in
/-- Multiplying `w = (1, r, s)` by the character `(1, ω, ω²)` shifts the last three rows. -/
theorem shift_w {ω p q r s : ℂ} (hω : IsPrimitiveCubicPhase ω) :
    fourierNormalForm ω p q (ω * r) (ω ^ 2 * s) (fourierForcedD ω p q (ω * r) (ω ^ 2 * s)) =
      (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)).submatrix (shiftR 1) (Equiv.refl _) := by
  have h2 := hω.2
  have h3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * h2
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierNormalForm, fourierForcedD, fourier3, rowGauge, columnGauge, fourierParameters,
        dftEntry₀, dftEntry₁, dftEntry₂, dft₀, dft₁, dft₂, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂,
        shiftR] <;> grind

theorem IsFourierCharacterPair.of_shift {ω p q : ℂ} (h3 : ω ^ 3 = 1)
    (h : IsFourierCharacterPair ω (ω * p) (ω ^ 2 * q)) : IsFourierCharacterPair ω p q := by
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact Or.inr (Or.inl ⟨by linear_combination ω ^ 2 * h1 - p * h3,
      by linear_combination ω * h2 - q * h3⟩)
  · exact Or.inr (Or.inr ⟨by linear_combination ω ^ 2 * h1 - p * h3 + ω * h3,
      by linear_combination ω * h2 - q * h3⟩)
  · exact Or.inl ⟨by linear_combination ω ^ 2 * h1 - p * h3 + h3,
      by linear_combination ω * h2 - q * h3 + h3⟩

/-- The census at one parameter tuple: Tao, or one of the two Fourier families. -/
def CensusAt (ω p q r s : ℂ) : Prop :=
  IsHadamard (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)) →
    IsTaoOrbit (fourierNormalForm ω p q r s (fourierForcedD ω p q r s)) ∨
      IsFourierCharacterPair ω p q ∨ IsFourierCharacterPair ω r s

theorem censusAt_of_shift_v {ω p q r s : ℂ} (hω : IsPrimitiveCubicPhase ω)
    (h : CensusAt ω (ω * p) (ω ^ 2 * q) r s) : CensusAt ω p q r s := by
  intro hH
  have hE : Equivalent (fourierNormalForm ω p q r s (fourierForcedD ω p q r s))
      (fourierNormalForm ω (ω * p) (ω ^ 2 * q) r s (fourierForcedD ω (ω * p) (ω ^ 2 * q) r s)) := by
    rw [shift_v hω]; exact equivalent_reindexMatrix _ _ _
  rcases h (isHadamard_of_equivalent hE hH) with hT | hc | hc
  · exact Or.inl (isTaoOrbit_of_equivalent hE hT)
  · exact Or.inr (Or.inl (hc.of_shift (primitiveCubicPhase_cube hω)))
  · exact Or.inr (Or.inr hc)

theorem censusAt_of_shift_w {ω p q r s : ℂ} (hω : IsPrimitiveCubicPhase ω)
    (h : CensusAt ω p q (ω * r) (ω ^ 2 * s)) : CensusAt ω p q r s := by
  intro hH
  have hE : Equivalent (fourierNormalForm ω p q r s (fourierForcedD ω p q r s))
      (fourierNormalForm ω p q (ω * r) (ω ^ 2 * s) (fourierForcedD ω p q (ω * r) (ω ^ 2 * s))) := by
    rw [shift_w hω]; exact equivalent_reindexMatrix _ _ _
  rcases h (isHadamard_of_equivalent hE hH) with hT | hc | hc
  · exact Or.inl (isTaoOrbit_of_equivalent hE hT)
  · exact Or.inr (Or.inl hc)
  · exact Or.inr (Or.inr (hc.of_shift (primitiveCubicPhase_cube hω)))

/-- The census at `p = r = 1` (handoff 22 Oct §5.1): `q = 1` or `s = 1` is a character; of the four
other tuples, `(ω, ω)` and `(ω², ω²)` have a forced-block zero and `(ω, ω²)`, `(ω², ω)` are Tao. -/
theorem censusAt_one_one {omega q s : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hq : IsCubicRoot q) (hs : IsCubicRoot s) : CensusAt omega 1 q 1 s := by
  intro hH
  rcases cubicPowerFacts homega with ⟨h3, h4, -, -, -, -⟩
  have hsq : omega ^ 2 = -omega - 1 := by linear_combination homega.2
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hq with rfl | rfl | rfl <;>
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hs with rfl | rfl | rfl
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · refine (false_of_fourierForcedD_entry_zero hH (i := 0) (j := 2) ?_).elim
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, hsq]
    ring
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 0) hH)
  · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl⟩))
  · exact Or.inl (by
      simpa [cubicTaoP, cubicTaoQ, cubicTaoR, cubicTaoS] using
        cubicTaoTable_isTaoOrbit homega (n := 3) hH)
  · refine (false_of_fourierForcedD_entry_zero hH (i := 0) (j := 2) ?_).elim
    simp [fourierForcedD, dftEntry₀, zCol₀, zCol₁, zCol₂, vHat₀, vHat₁, vHat₂, dft₀]
    ring_nf
    simp [h3, h4, hsq]
    ring

/-- The mixed allocations: with four cubic parameters the forced normal form is Tao, or has a character
`v` or `w`.  Multiplying `v` or `w` by a character permutes columns or rows (`censusAt_of_shift_v`,
`censusAt_of_shift_w`), which normalises `p = r = 1` (`censusAt_one_one`). -/
theorem cubicCensus {omega p q r s : ℂ} (homega : IsPrimitiveCubicPhase omega)
    (hp : IsCubicRoot p) (hq : IsCubicRoot q) (hr : IsCubicRoot r) (hs : IsCubicRoot s) :
    CensusAt omega p q r s := by
  have h3 : omega ^ 3 = 1 := primitiveCubicPhase_cube homega
  have hω3 : IsCubicRoot (omega ^ 2) := cubic_pow h3 2
  have e1 : omega * omega ^ 2 = 1 := by linear_combination h3
  -- normalise `r = 1`
  have hr2 : ∀ {q s : ℂ}, IsCubicRoot q → IsCubicRoot s → CensusAt omega 1 q (omega ^ 2) s :=
    fun hq hs => censusAt_of_shift_w homega (by rw [e1]; exact censusAt_one_one homega hq (cubic_mul hω3 hs))
  have hr' : ∀ {q r s : ℂ}, IsCubicRoot q → IsCubicRoot r → IsCubicRoot s → CensusAt omega 1 q r s := by
    intro q r s hq hr hs
    rcases cubicRoot_eq_one_or_primitive_or_sq homega hr with rfl | rfl | rfl
    · exact censusAt_one_one homega hq hs
    · exact censusAt_of_shift_w homega (by rw [← sq]; exact hr2 hq (cubic_mul hω3 hs))
    · exact hr2 hq hs
  -- normalise `p = 1`
  have hp2 : ∀ {q : ℂ}, IsCubicRoot q → CensusAt omega (omega ^ 2) q r s :=
    fun hq => censusAt_of_shift_v homega (by rw [e1]; exact hr' (cubic_mul hω3 hq) hr hs)
  rcases cubicRoot_eq_one_or_primitive_or_sq homega hp with rfl | rfl | rfl
  · exact hr' hq hr hs
  · exact censusAt_of_shift_v homega (by rw [← sq]; exact hp2 (cubic_mul hω3 hq))
  · exact hp2 hq

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
