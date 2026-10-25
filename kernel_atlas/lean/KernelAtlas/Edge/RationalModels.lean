import KernelAtlas.Edge.Models

/-! A constant rational rounded down to the Taylor-model grid, with one unit of error. -/

open Complex

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def rationalT (q : ℚ) : CT := addRho (const (rz ⌊q*2^pp⌋)) 1

theorem has_rationalT (q : ℚ) (u : Fin 4 → ℝ) : (rationalT q).Has u ((q : ℝ) : ℂ) := by
  have hl := Int.floor_le (q*2^pp)
  have hh := Int.lt_floor_add_one (q*2^pp)
  have hl' : (⌊q*2^pp⌋ : ℝ) ≤ (q : ℝ)*2^pp := by exact_mod_cast hl
  have hh' : (q : ℝ)*2^pp < (⌊q*2^pp⌋ : ℝ)+1 := by exact_mod_cast hh
  have hb : |(q : ℝ) - rq ⌊q*2^pp⌋| ≤ rn 1 := by
    unfold rq rn
    rw [abs_le]
    constructor
    · have H := (div_le_iff₀ (two_pow_pos pp)).mpr hl'
      norm_num only [Nat.cast_one] at *
      linarith [one_div_pos.mpr (two_pow_pos pp)]
    · have H := (lt_div_iff₀ (two_pow_pos pp)).mpr hh'
      rw [add_div] at H
      norm_num only [Nat.cast_one] at *
      linarith
  apply has_addRho (has_const (rz ⌊q*2^pp⌋) u)
  simpa only [cz_rz, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hb

end NoFourMUBs.KernelAtlas.Edge
