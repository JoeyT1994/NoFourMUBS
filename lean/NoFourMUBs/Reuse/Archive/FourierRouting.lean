import NoFourMUBs.Step2.CriticalZero.FourierRoutingModel
import Hadamard6.SimultaneousFourierNormalization
import Hadamard6.FourierForcedCompletion
import Hadamard6.FourierCoordinateAllocation
import Hadamard6.FourierUnmixed

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

#print axioms forced_flat_four_allocations
#print axioms forced_flat_parameter_branches

end Worker12
