import Hadamard6.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
# Three-point Fourier autocorrelation
-/

/-!
Exact bounded extraction from the checked Hadamard6.FourierAutocorrelation
source at classification pin 57b03025ecbe259e474281f49e201ea7cb474e34.
Original source SHA c69f3b856de73060ea825ee313e5f49945d5b18c5badd10462603e64222c0cc0.
Only the import boundary, namespace, and local cubic predicate are changed;
the seven polynomial proof bodies below are unchanged. This avoids missing
unrelated classification objects while retaining their exact proof content.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideDFT
open Hadamard6

def IsCubicRoot (omega : ℂ) : Prop := omega ^ 3 = 1

def dft₀ (z₀ z₁ z₂ : ℂ) : ℂ := z₀ + z₁ + z₂
def dft₁ (ω z₀ z₁ z₂ : ℂ) : ℂ := z₀ + ω * z₁ + ω ^ 2 * z₂
def dft₂ (ω z₀ z₁ z₂ : ℂ) : ℂ := z₀ + ω ^ 2 * z₁ + ω * z₂

def cyclicCorr (z₀ z₁ z₂ : ℂ) : ℂ :=
  star z₀ * z₁ + star z₁ * z₂ + star z₂ * z₀

theorem cubic_of_quadratic {ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    IsCubicRoot ω := by
  unfold IsCubicRoot
  have hfac : (ω - 1) * (ω ^ 2 + ω + 1) = ω ^ 3 - 1 := by ring
  rw [hω, mul_zero] at hfac
  exact sub_eq_zero.mp hfac.symm

theorem quadratic_ne_one {ω : ℂ} (hω : ω ^ 2 + ω + 1 = 0) :
    ω ≠ 1 := by
  intro h
  rw [h] at hω
  norm_num at hω

theorem star_eq_square_of_quadratic_unit {ω : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    star ω = ω ^ 2 := by
  have hmul : star ω * ω = 1 := star_mul_self_of_normSq_one hωu
  have hcub : ω ^ 3 = 1 := cubic_of_quadratic hω
  calc
    star ω = star ω * ω ^ 3 := by rw [hcub, mul_one]
    _ = (star ω * ω) * ω ^ 2 := by ring
    _ = ω ^ 2 := by rw [hmul, one_mul]

theorem star_square_eq_of_quadratic_unit {ω : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    star (ω ^ 2) = ω := by
  rw [star_pow]
  rw [star_eq_square_of_quadratic_unit hωu hω]
  have hcub := cubic_of_quadratic hω
  unfold IsCubicRoot at hcub
  calc
    (ω ^ 2) ^ 2 = ω ^ 4 := by ring
    _ = ω * ω ^ 3 := by ring
    _ = ω := by rw [hcub, mul_one]

theorem dft₀_norm_expansion {z₀ z₁ z₂ : ℂ} :
    star (dft₀ z₀ z₁ z₂) * dft₀ z₀ z₁ z₂ =
      (star z₀ * z₀ + star z₁ * z₁ + star z₂ * z₂) +
      cyclicCorr z₀ z₁ z₂ + star (cyclicCorr z₀ z₁ z₂) := by
  simp only [dft₀, cyclicCorr, star_add, star_mul, star_star]
  ring

theorem dft₁_norm_expansion {ω z₀ z₁ z₂ : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    star (dft₁ ω z₀ z₁ z₂) * dft₁ ω z₀ z₁ z₂ =
      (star z₀ * z₀ + star z₁ * z₁ + star z₂ * z₂) +
      ω * cyclicCorr z₀ z₁ z₂ +
      ω ^ 2 * star (cyclicCorr z₀ z₁ z₂) := by
  have hs := star_eq_square_of_quadratic_unit hωu hω
  have hs2 := star_square_eq_of_quadratic_unit hωu hω
  have hcub := cubic_of_quadratic hω
  unfold IsCubicRoot at hcub
  have h4 : ω ^ 4 = ω := by
    calc
      ω ^ 4 = ω * ω ^ 3 := by ring
      _ = ω := by rw [hcub, mul_one]
  simp only [dft₁, cyclicCorr, star_add, star_mul, star_star]
  rw [hs, hs2]
  ring_nf
  rw [h4, hcub]
  ring_nf

theorem dft₂_norm_expansion {ω z₀ z₁ z₂ : ℂ}
    (hωu : Complex.normSq ω = 1) (hω : ω ^ 2 + ω + 1 = 0) :
    star (dft₂ ω z₀ z₁ z₂) * dft₂ ω z₀ z₁ z₂ =
      (star z₀ * z₀ + star z₁ * z₁ + star z₂ * z₂) +
      ω ^ 2 * cyclicCorr z₀ z₁ z₂ +
      ω * star (cyclicCorr z₀ z₁ z₂) := by
  have hs := star_eq_square_of_quadratic_unit hωu hω
  have hs2 := star_square_eq_of_quadratic_unit hωu hω
  have hcub := cubic_of_quadratic hω
  unfold IsCubicRoot at hcub
  have h4 : ω ^ 4 = ω := by
    calc
      ω ^ 4 = ω * ω ^ 3 := by ring
      _ = ω := by rw [hcub, mul_one]
  simp only [dft₂, cyclicCorr, star_add, star_mul, star_star]
  rw [hs, hs2]
  ring_nf
  rw [h4, hcub]
  ring_nf

end StrictReconstruction20261007.SideDFT

#print axioms StrictReconstruction20261007.SideDFT.cubic_of_quadratic
#print axioms StrictReconstruction20261007.SideDFT.quadratic_ne_one
#print axioms StrictReconstruction20261007.SideDFT.star_eq_square_of_quadratic_unit
#print axioms StrictReconstruction20261007.SideDFT.star_square_eq_of_quadratic_unit
#print axioms StrictReconstruction20261007.SideDFT.dft₀_norm_expansion
#print axioms StrictReconstruction20261007.SideDFT.dft₁_norm_expansion
#print axioms StrictReconstruction20261007.SideDFT.dft₂_norm_expansion
