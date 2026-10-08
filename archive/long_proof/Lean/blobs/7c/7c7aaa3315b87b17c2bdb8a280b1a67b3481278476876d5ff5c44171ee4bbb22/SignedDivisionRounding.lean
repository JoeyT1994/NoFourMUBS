import FormalCore
import Mathlib.Data.Int.DivMod

/-! Signed Int.tdiv is division toward zero, matching the pinned C++ integer
products. Positive ceiling division is expressed using that same operation.
The bounds are on actual real quotients, with strict error below one. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

theorem signed_tdiv_real_remainder (a b : ℤ) :
    (a.tdiv b : ℝ)*(b : ℝ)+(a.tmod b : ℝ)=(a : ℝ) := by
  exact_mod_cast Int.tdiv_mul_add_tmod a b

theorem signed_tdiv_error (a b : ℤ) (hb : 0<b) :
    |(a.tdiv b : ℝ)-(a : ℝ)/(b : ℝ)|<1 := by
  have hbr : (0:ℝ)<(b : ℝ) := by exact_mod_cast hb
  have hl : -(b : ℝ)<(a.tmod b : ℝ) := by
    exact_mod_cast Int.lt_tmod_of_pos a hb
  have hu : (a.tmod b : ℝ)<(b : ℝ) := by
    exact_mod_cast Int.tmod_lt_of_pos a hb
  have he := signed_tdiv_real_remainder a b
  have hlo : (a.tdiv b : ℝ)-1<(a : ℝ)/(b : ℝ) := by
    apply (lt_div_iff₀ hbr).2
    nlinarith
  have hhi : (a : ℝ)/(b : ℝ)<(a.tdiv b : ℝ)+1 := by
    apply (div_lt_iff₀ hbr).2
    nlinarith
  exact abs_lt.mpr ⟨by linarith,by linarith⟩

theorem signed_tdiv_positive_scale_error (a : ℤ) (Q : ℕ) (hQ : 0<Q) :
    |(a.tdiv (Q : ℤ) : ℝ)-(a : ℝ)/(Q : ℝ)|<1 := by
  simpa using signed_tdiv_error a (Q : ℤ) (by exact_mod_cast hQ)

def integerCeilDiv (a b : ℤ) : ℤ := (a+b-1).tdiv b

theorem integerCeilDiv_mul_bounds (a b : ℤ) (ha : 0≤a) (hb : 0<b) :
    a≤integerCeilDiv a b*b ∧ integerCeilDiv a b*b<a+b := by
  have hn : 0≤a+b-1 := by omega
  have hl := Int.mul_tdiv_self_le (k := b) hn
  have hu := Int.lt_tdiv_add_one_mul_self (a+b-1) hb
  have hus : a+b≤((a+b-1).tdiv b+1)*b := by omega
  unfold integerCeilDiv
  constructor <;> nlinarith

theorem integerCeilDiv_real_bounds (a b : ℤ) (ha : 0≤a) (hb : 0<b) :
    (a : ℝ)/(b : ℝ)≤(integerCeilDiv a b : ℝ) ∧
      (integerCeilDiv a b : ℝ)<(a : ℝ)/(b : ℝ)+1 := by
  obtain ⟨hl,hu⟩ := integerCeilDiv_mul_bounds a b ha hb
  have hbr : (0:ℝ)<(b : ℝ) := by exact_mod_cast hb
  have hlr : (a : ℝ)≤(integerCeilDiv a b : ℝ)*(b : ℝ) := by exact_mod_cast hl
  have hur : (integerCeilDiv a b : ℝ)*(b : ℝ)<(a : ℝ)+(b : ℝ) := by exact_mod_cast hu
  refine ⟨(div_le_iff₀ hbr).2 hlr,?_⟩
  have h : (integerCeilDiv a b : ℝ)-1<(a : ℝ)/(b : ℝ) := by
    apply (lt_div_iff₀ hbr).2
    nlinarith
  linarith

theorem integerCeilDiv_nonneg (a b : ℤ) (ha : 0≤a) (hb : 0<b) :
    0≤integerCeilDiv a b := by
  have h := (integerCeilDiv_real_bounds a b ha hb).1
  have ha' : (0:ℝ)≤(a : ℝ) := by exact_mod_cast ha
  have hb' : (0:ℝ)≤(b : ℝ) := by exact_mod_cast le_of_lt hb
  have hc : (0:ℝ)≤(integerCeilDiv a b : ℝ) := le_trans (div_nonneg ha' hb') h
  exact_mod_cast hc

theorem integerCeilDiv_error (a b : ℤ) (ha : 0≤a) (hb : 0<b) :
    0≤(integerCeilDiv a b : ℝ)-(a : ℝ)/(b : ℝ) ∧
      (integerCeilDiv a b : ℝ)-(a : ℝ)/(b : ℝ)<1 := by
  obtain ⟨hl,hu⟩ := integerCeilDiv_real_bounds a b ha hb
  constructor <;> linarith

#print axioms signed_tdiv_real_remainder
#print axioms signed_tdiv_error
#print axioms signed_tdiv_positive_scale_error
#print axioms integerCeilDiv_mul_bounds
#print axioms integerCeilDiv_real_bounds
#print axioms integerCeilDiv_nonneg
#print axioms integerCeilDiv_error
end Seed0024ClusterTube20261007
