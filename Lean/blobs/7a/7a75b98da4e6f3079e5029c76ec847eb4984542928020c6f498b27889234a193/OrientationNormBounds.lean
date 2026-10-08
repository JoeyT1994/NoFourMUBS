import FourOrientationCount
import PairMidpointPhase

/-! The no-three geometric premise is derived from actual pair-sum estimates.
Compatibility and those pair-sum estimates must still be supplied by the
approximate-row inner-product calculation in the physical construction.
-/

namespace Seed0024.Orientation

theorem three_pair_sums_impossible (a b c : ℂ) (ha : ‖a‖ = 1)
    (hab : ‖a + b‖ < (16 : ℝ) / 1875)
    (hac : ‖a + c‖ < (16 : ℝ) / 1875)
    (hbc : ‖b + c‖ < (16 : ℝ) / 1875) : False := by
  have hcomb : (a + b) + (a + c) - (b + c) = (2 : ℂ) * a := by ring
  have hbound : (2 : ℝ) ≤ ‖a + b‖ + ‖a + c‖ + ‖b + c‖ := by
    calc
      (2 : ℝ) = ‖(2 : ℂ) * a‖ := by rw [norm_mul, ha, mul_one, Complex.norm_ofNat]
      _ = ‖(a + b) + (a + c) - (b + c)‖ := by rw [hcomb]
      _ ≤ ‖(a + b) + (a + c)‖ + ‖b + c‖ := norm_sub_le _ _
      _ ≤ ‖a + b‖ + ‖a + c‖ + ‖b + c‖ :=
        add_le_add (norm_add_le _ _) (le_refl _)
  linarith

/-- Actual unit numbers cannot occupy one orientation type three times if
the pair-sum estimate established by the row calculation holds. -/
theorem no_three_from_pair_bounds (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hunit : ∀ i, ‖lam i‖ = 1)
    (hpair : ∀ i j, i ≠ j → SameType s t i j →
      ‖lam i + lam j‖ < (16 : ℝ) / 1875) : NoThreeSame s t := by
  intro i j k hij hik hjk htype
  have hjkt : SameType s t j k :=
    ⟨htype.1.1.symm.trans htype.2.1, htype.1.2.symm.trans htype.2.2⟩
  exact three_pair_sums_impossible (lam i) (lam j) (lam k) (hunit i)
    (hpair i j hij htype.1) (hpair i k hik htype.2) (hpair j k hjk hjkt)

theorem four_types_from_pair_bounds (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hcompatible : Compatible s t) (hunit : ∀ i, ‖lam i‖ = 1)
    (hpair : ∀ i j, i ≠ j → SameType s t i j →
      ‖lam i + lam j‖ < (16 : ℝ) / 1875) :
    ∃ κ : Bool, (∀ i, (s i, t i) = (false, κ) ∨ (s i, t i) = (true, !κ)) ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (false, κ))).card = 2 ∧
      (Finset.univ.filter (fun i : Fin 4 => (s i, t i) = (true, !κ))).card = 2 := by
  exact complementary_type_cover s t hcompatible (no_three_from_pair_bounds s t lam hunit hpair)

/-- For any exhibited pair of one type, its midpoint is constructed rather
than assumed. This is the phase choice needed to build the exact Fourier pair.
-/
theorem orientation_pair_midpoint (s t : Fin 4 → Bool) (lam : Fin 4 → ℂ)
    (hunit : ∀ i, ‖lam i‖ = 1)
    (hpair : ∀ i j, i ≠ j → SameType s t i j →
      ‖lam i + lam j‖ < (16 : ℝ) / 1875)
    (i j : Fin 4) (hij : i ≠ j) (htype : SameType s t i j) :
    ∃ midpoint : ℂ, ∃ e f : ℝ, ‖midpoint‖ = 1 ∧
      |e| < (4 : ℝ) / 625 ∧ |f| < (4 : ℝ) / 625 ∧
      lam i = midpoint * Seed0024.UnitTriple.phase e ∧
      lam j = -midpoint * Seed0024.UnitTriple.phase f :=
  Seed0024.UnitTriple.antipodal_pair_midpoint_phase (lam i) (lam j)
    (hunit i) (hunit j) (hpair i j hij htype)

#print axioms three_pair_sums_impossible
#print axioms no_three_from_pair_bounds
#print axioms four_types_from_pair_bounds
#print axioms orientation_pair_midpoint

end Seed0024.Orientation
