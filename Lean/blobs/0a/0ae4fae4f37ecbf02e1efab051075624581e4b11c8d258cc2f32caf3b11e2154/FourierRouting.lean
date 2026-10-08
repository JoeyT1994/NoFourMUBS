import Worker12.Orientations
import Worker12.SimultaneousFourierNormalization
import Worker12.FourierForcedCompletion
import Worker12.FactorAllocation
import Worker12.UnmixedParameters

namespace Worker12

open Hadamard6

def CharacterPair (ω p q : ℂ) : Prop :=
  (p = 1 ∧ q = 1) ∨ (p = ω ^ 2 ∧ q = ω) ∨ (p = ω ∧ q = ω ^ 2)

def FourAllocations (ω p q r s : ℂ) : Prop :=
  (Ahat₁ ω p q = 0 ∧ Ahat₂ ω p q = 0) ∨
  (alphaHat₁ ω r s = 0 ∧ alphaHat₂ ω r s = 0) ∨
  (Ahat₁ ω p q = 0 ∧ alphaHat₂ ω r s = 0) ∨
  (alphaHat₁ ω r s = 0 ∧ Ahat₂ ω p q = 0)

theorem forced_flat_four_allocations {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hD : EntrywiseUnit (fourierForcedD ω p q r s)) : FourAllocations ω p q r s := by
  rcases fourierForcedD_factor_equations hωu hω hD with ⟨h1, h2⟩
  rcases mul_eq_zero.mp h1 with ha1 | hA1 <;>
    rcases mul_eq_zero.mp h2 with ha2 | hA2
  · exact Or.inr (Or.inl ⟨ha1, ha2⟩)
  · exact Or.inr (Or.inr (Or.inr ⟨ha1, hA2⟩))
  · exact Or.inr (Or.inr (Or.inl ⟨hA1, ha2⟩))
  · exact Or.inl ⟨hA1, hA2⟩

theorem Ahat_zero_character {ω p q : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (h1 : Ahat₁ ω p q = 0) (h2 : Ahat₂ ω p q = 0) : CharacterPair ω p q := by
  have hs := Ahat_both_zero_gives_seqA_zero hωu hω hp hq h1 h2
  rcases vHat_support_singleton_of_seqA_zero hω hs with h0 | h1 | h2
  · exact Or.inl (parameters_of_vHat₀_support hω h0.1 h0.2)
  · exact Or.inr (Or.inl (parameters_of_vHat₁_support hω h1.1 h1.2))
  · exact Or.inr (Or.inr (parameters_of_vHat₂_support hω h2.1 h2.2))

theorem mixed12_cubic {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (hr : Complex.normSq r = 1) (hs : Complex.normSq s = 1)
    (hA : Ahat₁ ω p q = 0) (ha : alphaHat₂ ω r s = 0) :
    IsCubicRoot p ∧ IsCubicRoot q ∧ IsCubicRoot r ∧ IsCubicRoot s := by
  have hpq := A₁_zero_parameters_cubic hωu (cubic_of_quadratic hω) hp hq
    (Ahat₁_formula hωu hω hp hq) hA
  have hrs := α₂_zero_parameters_cubic hωu (cubic_of_quadratic hω) hr hs
    (alphaHat₂_formula ω r s) ha
  exact ⟨hpq.1, hpq.2, hrs.1, hrs.2⟩

theorem mixed21_cubic {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (hr : Complex.normSq r = 1) (hs : Complex.normSq s = 1)
    (ha : alphaHat₁ ω r s = 0) (hA : Ahat₂ ω p q = 0) :
    IsCubicRoot p ∧ IsCubicRoot q ∧ IsCubicRoot r ∧ IsCubicRoot s := by
  have hpq := A₂_zero_parameters_cubic hωu (cubic_of_quadratic hω) hp hq
    (Ahat₂_formula hωu hω hp hq) hA
  have hrs := α₁_zero_parameters_cubic hωu (cubic_of_quadratic hω) hr hs
    (alphaHat₁_formula ω r s) ha
  exact ⟨hpq.1, hpq.2, hrs.1, hrs.2⟩

/-- All overlaps of the pure branches and both mixed allocations are retained.
The last alternative still requires all 81 endpoint identifications. -/
theorem forced_flat_parameter_branches {ω p q r s : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0)
    (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (hr : Complex.normSq r = 1) (hs : Complex.normSq s = 1)
    (hD : EntrywiseUnit (fourierForcedD ω p q r s)) :
    CharacterPair ω p q ∨ CharacterPair ω r s ∨
      (IsCubicRoot p ∧ IsCubicRoot q ∧ IsCubicRoot r ∧ IsCubicRoot s) := by
  rcases forced_flat_four_allocations hωu hω hD with hA | ha | hm12 | hm21
  · exact Or.inl (Ahat_zero_character hωu hω hp hq hA.1 hA.2)
  · exact Or.inr (Or.inl (alphaHat_both_zero_gives_parameters hωu hω hr hs ha.1 ha.2))
  · exact Or.inr (Or.inr (mixed12_cubic hωu hω hp hq hr hs hm12.1 hm12.2))
  · exact Or.inr (Or.inr (mixed21_cubic hωu hω hp hq hr hs hm21.1 hm21.2))

structure ExactFourierPresentation (H : Hadamard6.Mat6) where
  K : Hadamard6.Mat6
  hK : IsHadamard K
  equivalent : Equivalent H K
  ω : ℂ
  p : ℂ
  q : ℂ
  r : ℂ
  s : ℂ
  omega_unit : Complex.normSq ω = 1
  omega_quadratic : ω ^ 2 + ω + 1 = 0
  p_unit : Complex.normSq p = 1
  q_unit : Complex.normSq q = 1
  r_unit : Complex.normSq r = 1
  s_unit : Complex.normSq s = 1
  form : K = fourierNormalForm ω p q r s (fourierForcedD ω p q r s)
  allocations : FourAllocations ω p q r s
  parameters : CharacterPair ω p q ∨ CharacterPair ω r s ∨
    (IsCubicRoot p ∧ IsCubicRoot q ∧ IsCubicRoot r ∧ IsCubicRoot s)

theorem allFourBlocks_exactFourierPresentation (H : Hadamard6.Mat6)
    (hH : IsHadamard H) (hfour : AllFourBlocksHadamard H) :
    Nonempty (ExactFourierPresentation H) := by
  rcases simultaneous_threeBlockFourierNormalization H hH hfour with ⟨n⟩
  have hf := first_three_blocks_force_full_normalForm n.hK n.firstThreeBlocks
    n.omega_unit n.omega_quadratic n.topRight_hadamard
  have hD : EntrywiseUnit (fourierForcedD n.ω n.p n.q n.r n.s) := by
    intro i j
    have h := n.hK.1 (Sum.inr i) (Sum.inr j)
    rw [hf] at h
    exact h
  exact ⟨{
    K := n.K, hK := n.hK, equivalent := n.equivalent,
    ω := n.ω, p := n.p, q := n.q, r := n.r, s := n.s,
    omega_unit := n.omega_unit, omega_quadratic := n.omega_quadratic,
    p_unit := n.p_unit, q_unit := n.q_unit, r_unit := n.r_unit, s_unit := n.s_unit,
    form := hf,
    allocations := forced_flat_four_allocations n.omega_unit n.omega_quadratic hD,
    parameters := forced_flat_parameter_branches n.omega_unit n.omega_quadratic
      n.p_unit n.q_unit n.r_unit n.s_unit hD }⟩

theorem saturated_selectedMinor_exactFourierPresentation
    {H : Mub6.BasisMatrix} (hH : Mub6.IsPhaseHadamard6 H)
    (rows cols : Fin 3 ↪ Fin 6)
    (hdet : Complex.normSq (selectedMinor H rows cols).det = 27) :
    Nonempty (ExactFourierPresentation (selectedMatrix H rows cols)) :=
  allFourBlocks_exactFourierPresentation _ (selectedMatrix_isHadamard hH rows cols)
    (saturated_selectedMinor_allFourBlocks hH rows cols hdet)

#print axioms forced_flat_four_allocations
#print axioms forced_flat_parameter_branches
#print axioms allFourBlocks_exactFourierPresentation
#print axioms saturated_selectedMinor_exactFourierPresentation

end Worker12
