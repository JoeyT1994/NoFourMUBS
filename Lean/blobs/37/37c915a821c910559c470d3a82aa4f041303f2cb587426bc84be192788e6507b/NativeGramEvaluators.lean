import PhysicalAdjugateLiteral
import PhysicalSideSums
import Mathlib.LinearAlgebra.Matrix.Adjugate

/-! Literal polynomial entries evaluated by the supplier's side pruners.
These equalities hold on singular Grams too. No interval enclosure is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderAdjugate20261008
open Centiradian20261006 Centiradian20261006.NativeSigned20261006
open ShoulderTwoColumn20261008
open scoped ComplexConjugate BigOperators Matrix
noncomputable section

def nativeGram (s t r : ℂ) : Mat3 := !![3, conj s, conj t; s, 3, conj r; t, r, 3]

def nativeAdjugate (s t r : ℂ) : Mat3 :=
  !![9-(Complex.normSq r : ℂ), conj t*r-3*conj s, conj s*conj r-3*conj t;
     t*conj r-3*s, 9-(Complex.normSq t : ℂ), s*conj t-3*conj r;
     s*r-3*t, conj s*t-3*r, 9-(Complex.normSq s : ℂ)]

def nativeDet (s t r : ℂ) : ℝ := 27-3*gramP s t r+gramJ s t r
def nativeS (H : Mat6) : ℂ := -1-H 1 1-H 1 2
def nativeT (H : Mat6) : ℂ := -1-H 2 1-H 2 2
def nativeR (H : Mat6) : ℂ := -1-H 2 1*conj (H 1 1)-H 2 2*conj (H 1 2)
def nativeCrossW (E : Mat3) (s t r : ℂ) : Mat3 := Eᴴ*nativeAdjugate s t r

theorem nativeAdjugate_exact (s t r : ℂ) :
    (nativeGram s t r).adjugate=nativeAdjugate s t r := by
  rw [nativeGram, Matrix.adjugate_fin_three_of]
  apply Matrix.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    simp [nativeAdjugate, ← Complex.mul_conj, mul_comm] <;> ring
#print axioms nativeAdjugate_exact

theorem nativeDet_exact (s t r : ℂ) :
    (nativeGram s t r).det=(nativeDet s t r : ℂ) := by
  rw [Matrix.det_fin_three]
  simpa only [nativeGram, nativeDet, Matrix.of_apply, Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two] using
    hermitian_three_det_formula s t r
#print axioms nativeDet_exact

theorem physical_native_coordinates {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    rightGram H 1 0=nativeS H ∧ rightGram H 2 0=nativeT H ∧
      rightGram H 2 1=nativeR H := by
  have hs := physical_remaining_row_sum hH hd 1 (by decide)
  have ht := physical_remaining_row_sum hH hd 2 (by decide)
  have hr := physical_remaining_cross_sum hH hd
  constructor
  · simpa [rightGram, upperIndex, bottomIndex, Fin.sum_univ_succ,
      hd.1, nativeS, add_assoc] using hs
  constructor
  · simpa [rightGram, upperIndex, bottomIndex, Fin.sum_univ_succ,
      hd.1, nativeT, add_assoc] using ht
  · simpa [rightGram, upperIndex, bottomIndex, Fin.sum_univ_succ,
      nativeR, add_assoc] using hr
#print axioms physical_native_coordinates

theorem physical_nativeGram {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    literalGram (blockE H)=nativeGram (nativeS H) (nativeT H) (nativeR H) := by
  have hc := physical_native_coordinates hH hd
  change 6 • (1 : Mat3)-blockE H*(blockE H)ᴴ=_
  rw [← physical_seed_complement hH]
  apply Matrix.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    simp [blockB_gram_entry, physical_rightGram_diag hH,
      rightGram_conj H 1 0, rightGram_conj H 2 0, rightGram_conj H 2 1,
      hc.1, hc.2.1, hc.2.2, nativeGram]
#print axioms physical_nativeGram

theorem physical_nativeCrossW {H : Mat6} (hH : Physical H) (hd : Dephased H) :
    literalCrossW (blockE H)=nativeCrossW (blockE H) (nativeS H) (nativeT H) (nativeR H) := by
  unfold literalCrossW nativeCrossW
  rw [physical_nativeGram hH hd, nativeAdjugate_exact]
#print axioms physical_nativeCrossW

theorem physical_nativeCross_modulus {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i j : Fin 3) :
    ‖∑ a : Fin 3, ∑ b : Fin 3,
      blockC H i a*nativeCrossW (blockE H) (nativeS H) (nativeT H) (nativeR H) a b*
        blockB H b j‖=nativeDet (nativeS H) (nativeT H) (nativeR H) := by
  have h := physical_literal_cross_modulus hH i j
  rw [physical_nativeCrossW hH hd, physical_nativeGram hH hd, nativeDet_exact] at h
  simpa only [Complex.ofReal_re] using h
#print axioms physical_nativeCross_modulus

end
end ShoulderAdjugate20261008
