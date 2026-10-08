import CentiradianPhysical
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity

/-! Exact polynomial and radius arithmetic. The Taylor-to-Gram estimate remains
an explicit dependency; no native polynomial computation is trusted here. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
noncomputable section

theorem invariant_expansion (p J W : ℝ) : invariant p J W =
    4*J^3+J^2*(-p^2+2*p+27)+J*(2*p^3-24*p^2-2*p*W+54*p+30*W)
      -p^4+18*p^3+2*p^2*W-81*p^2-54*p*W-W^2+324*W := by
  unfold invariant
  ring

def positiveEnvelope (p A W L : ℝ) : ℝ :=
  4*A^3+A^2*(2*p+27)+A*(2*p^3+24*p^2+2*p*W+54*p+30*W)
    +18*p^3+2*p^2*W+L

/-- Odd J terms are bounded with both signs retained. All discarded terms
are justified nonpositive terms, including the complementary Gram product. -/
theorem invariant_le_envelope (p J W L : ℝ) (hp : 0 ≤ p) (hW : 0 ≤ W)
    (hL : 324*W-81*p^2 ≤ L) : invariant p J W ≤ positiveEnvelope p |J| W L := by
  have h3 : J^3 ≤ |J|^3 := by simpa only [abs_pow] using le_abs_self (J^3)
  have heven : J^2 = |J|^2 := (sq_abs J).symm
  have hpos : 0 ≤ (|J|-J)*(2*p^3+54*p+30*W) :=
    mul_nonneg (sub_nonneg.mpr (le_abs_self J)) (by positivity)
  have hneg : 0 ≤ (|J|+J)*(24*p^2+2*p*W) :=
    mul_nonneg (by linarith [neg_le_abs J]) (by positivity)
  have hdrop : 0 ≤ J^2*p^2+p^4+54*p*W+W^2 := by positivity
  rw [invariant_expansion]
  unfold positiveEnvelope
  nlinarith only [h3, heven, hpos, hneg, hdrop, hL]

def seedMajorant (ρ : ℝ) : ℝ :=
  972*ρ^4+130302*ρ^5+191934*ρ^6+270468*ρ^7+105754*ρ^8+445544*ρ^9

/-- Formal arithmetic reduction of source (2.2) and its L estimate to (2.1).
These four bounds still need their analytic binding to seed phases. -/
theorem scalar_majorant (ρ p J W : ℝ) (hρ : 0 ≤ ρ) (hp : 0 ≤ p) (hW : 0 ≤ W)
    (hp' : p ≤ 19*ρ^2) (hJ : |J| ≤ 22*ρ^3) (hW' : W ≤ 121*ρ^4)
    (hL : 324*W-81*p^2 ≤ 972*ρ^4+107730*ρ^5+55404*ρ^6) :
    invariant p J W ≤ seedMajorant ρ := by
  calc
    invariant p J W ≤ positiveEnvelope p |J| W
        (972*ρ^4+107730*ρ^5+55404*ρ^6) := invariant_le_envelope p J W _ hp hW hL
    _ ≤ positiveEnvelope (19*ρ^2) (22*ρ^3) (121*ρ^4)
        (972*ρ^4+107730*ρ^5+55404*ρ^6) := by
      unfold positiveEnvelope
      gcongr
    _ = seedMajorant ρ := by unfold positiveEnvelope seedMajorant; ring

def homogeneousNorm (x y : ℝ) : ℝ := x^2-x*y+y^2
def homogeneousL (X Y Z : ℝ) : ℝ := 81*(4*(X*Y+X*Z+Y*Z)-(X+Y+Z)^2)

/-- The exact quartic cancellation is valid on the determinant cone as well.
This identity is proved by Lean ring normalization, not imported from Python. -/
theorem quartic_gram_identity (a b c d : ℝ) :
    homogeneousL (homogeneousNorm a b) (homogeneousNorm c d)
      (homogeneousNorm (c-a) (d-b)) = 243*(a*d-b*c)^2 := by
  unfold homogeneousL homogeneousNorm
  ring

theorem quartic_gram_bound {a b c d ρ : ℝ} (hρ : 0 ≤ ρ)
    (ha : |a| ≤ ρ) (hb : |b| ≤ ρ) (hc : |c| ≤ ρ) (hd : |d| ≤ ρ) :
    homogeneousL (homogeneousNorm a b) (homogeneousNorm c d)
      (homogeneousNorm (c-a) (d-b)) ≤ 972*ρ^4 := by
  have had : |a*d| ≤ ρ^2 := by
    rw [abs_mul, pow_two]
    exact mul_le_mul ha hd (abs_nonneg _) hρ
  have hbc : |b*c| ≤ ρ^2 := by
    rw [abs_mul, pow_two]
    exact mul_le_mul hb hc (abs_nonneg _) hρ
  have hk : |a*d-b*c| ≤ 2*ρ^2 := by
    have ht : |a*d-b*c| ≤ |a*d|+|b*c| := by
      simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le (a*d) 0 (b*c)
    linarith
  have hs := mul_self_le_mul_self (abs_nonneg (a*d-b*c)) hk
  rw [quartic_gram_identity]
  nlinarith [sq_abs (a*d-b*c)]

def normalizedMajorant (ρ : ℝ) : ℝ :=
  972+130302*ρ+191934*ρ^2+270468*ρ^3+105754*ρ^4+445544*ρ^5

def outwardRadius : ℝ := 1441151880758559/144115188075855872

theorem radius_outward : (1:ℝ)/100 < outwardRadius := by norm_num [outwardRadius]

theorem normalizedMajorant_mono {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) :
    normalizedMajorant a ≤ normalizedMajorant b := by
  unfold normalizedMajorant
  gcongr

theorem outward_normalized_majorant_lt : normalizedMajorant outwardRadius < 48^2 := by
  norm_num [normalizedMajorant, outwardRadius]

theorem majorant_lt_square {ρ : ℝ} (hρ : 0 < ρ) (hρ' : ρ ≤ outwardRadius) :
    seedMajorant ρ < (48*ρ^2)^2 := by
  have h := lt_of_le_of_lt (normalizedMajorant_mono hρ.le hρ') outward_normalized_majorant_lt
  have hp : 0 < ρ^4 := pow_pos hρ _
  have hm := mul_lt_mul_of_pos_right h hp
  have he : seedMajorant ρ = normalizedMajorant ρ*ρ^4 := by
    unfold seedMajorant normalizedMajorant
    ring
  rw [he]
  nlinarith only [hm]

/-- Once (2.1) is bound to the physical R, the claimed q bound is strict
throughout the outward radius, including every positive scale. -/
theorem sqrt_bound_from_majorant {ρ R : ℝ} (hρ : 0 < ρ) (hρ' : ρ ≤ outwardRadius)
    (hR : 0 ≤ R) (hb : R ≤ seedMajorant ρ) : Real.sqrt R < 48*ρ^2 := by
  have hs : R < (48*ρ^2)^2 := lt_of_le_of_lt hb (majorant_lt_square hρ hρ')
  have hsqrt := Real.sq_sqrt hR
  have hp : 0 < 48*ρ^2 := by positivity
  nlinarith [Real.sqrt_nonneg R]

/-! The enlarged packet uses the same argument with the cubic J constant 23.
Only its scalar implication is checked here; this is not radius-.025 exclusion. -/

def enlargedSeedMajorant (ρ : ℝ) : ℝ :=
  972*ρ^4+131328*ρ^5+193149*ρ^6+282762*ρ^7+107464*ρ^8+469936*ρ^9

def enlargedNormalizedMajorant (ρ : ℝ) : ℝ :=
  972+131328*ρ+193149*ρ^2+282762*ρ^3+107464*ρ^4+469936*ρ^5

theorem enlarged_scalar_majorant (ρ p J W : ℝ) (hρ : 0 ≤ ρ) (hp : 0 ≤ p) (hW : 0 ≤ W)
    (hp' : p ≤ 19*ρ^2) (hJ : |J| ≤ 23*ρ^3) (hW' : W ≤ 121*ρ^4)
    (hL : 324*W-81*p^2 ≤ 972*ρ^4+107730*ρ^5+55404*ρ^6) :
    invariant p J W ≤ enlargedSeedMajorant ρ := by
  calc
    invariant p J W ≤ positiveEnvelope p |J| W
        (972*ρ^4+107730*ρ^5+55404*ρ^6) := invariant_le_envelope p J W _ hp hW hL
    _ ≤ positiveEnvelope (19*ρ^2) (23*ρ^3) (121*ρ^4)
        (972*ρ^4+107730*ρ^5+55404*ρ^6) := by
      unfold positiveEnvelope
      gcongr
    _ = enlargedSeedMajorant ρ := by unfold positiveEnvelope enlargedSeedMajorant; ring

theorem enlarged_normalized_exact :
    enlargedNormalizedMajorant (1/40) = (28034450231:ℝ)/6400000 := by
  norm_num [enlargedNormalizedMajorant]

theorem enlarged_normalized_lt : enlargedNormalizedMajorant (1/40) < 67^2 := by
  rw [enlarged_normalized_exact]
  norm_num

theorem enlarged_sqrt_bound_from_majorant {ρ R : ℝ} (hρ : 0 < ρ) (hρ' : ρ ≤ 1/40)
    (hR : 0 ≤ R) (hb : R ≤ enlargedSeedMajorant ρ) : Real.sqrt R < 67*ρ^2 := by
  have hm : enlargedNormalizedMajorant ρ ≤ enlargedNormalizedMajorant (1/40) := by
    unfold enlargedNormalizedMajorant
    gcongr
  have hn := lt_of_le_of_lt hm enlarged_normalized_lt
  have hs := mul_lt_mul_of_pos_right hn (pow_pos hρ 4)
  have he : enlargedSeedMajorant ρ = enlargedNormalizedMajorant ρ*ρ^4 := by
    unfold enlargedSeedMajorant enlargedNormalizedMajorant
    ring
  rw [he] at hb
  have hsq := Real.sq_sqrt hR
  have hp : 0 < 67*ρ^2 := by positivity
  nlinarith [Real.sqrt_nonneg R]

end
end Centiradian20261006

#print axioms Centiradian20261006.invariant_expansion
#print axioms Centiradian20261006.invariant_le_envelope
#print axioms Centiradian20261006.scalar_majorant
#print axioms Centiradian20261006.quartic_gram_bound
#print axioms Centiradian20261006.outward_normalized_majorant_lt
#print axioms Centiradian20261006.sqrt_bound_from_majorant
#print axioms Centiradian20261006.enlarged_scalar_majorant
#print axioms Centiradian20261006.enlarged_sqrt_bound_from_majorant
