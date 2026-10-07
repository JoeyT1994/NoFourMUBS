import UnitSideMoments
import Mathlib.Data.Fin.VecNotation
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.FinCases

/-! The exact native cleared moments of six unit side entries. All three
side-constructor equalities are proved upstream, not theorem premises here.
The clearing polynomial can vanish; no denominator assumption is used. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.NativeMean20261006
open scoped ComplexConjugate
open SignedDeterminant
noncomputable section

def sideDelta (s t r : ℂ) : ℝ :=
  Complex.normSq (symmetricP0 s t r)*Complex.normSq (symmetricP1 s t r)*Complex.normSq (symmetricP2 s t r)
def sideU0 (s t r : ℂ) : ℂ :=
  symmetricP0 s t r*(Complex.normSq (symmetricP1 s t r):ℂ)*(Complex.normSq (symmetricP2 s t r):ℂ)/2
def sideU1 (s t r : ℂ) : ℂ :=
  conj (symmetricP1 s t r)*(Complex.normSq (symmetricP0 s t r):ℂ)*(Complex.normSq (symmetricP2 s t r):ℂ)/2
def sideU2 (s t r : ℂ) : ℂ :=
  conj (symmetricP2 s t r)*(Complex.normSq (symmetricP0 s t r):ℂ)*(Complex.normSq (symmetricP1 s t r):ℂ)/2

def sideMomentConstants (s t r : ℂ) : Fin 6 → ℂ := ![
  sideDelta s t r*s*t-meanStableA s t r (r*conj r)*sideU0 s t r,
  sideDelta s t r*conj r,
  sideDelta s t r*s*conj r-meanStableA s t r (t*conj t)*sideU1 s t r,
  sideDelta s t r*t,
  sideDelta s t r*t*r-meanStableA s t r (s*conj s)*sideU2 s t r,
  sideDelta s t r*s]
def sideMomentLinear (s t r : ℂ) : Fin 6 → ℂ := ![
  -Complex.I*sideU0 s t r,0,Complex.I*sideU1 s t r,0,Complex.I*sideU2 s t r,0]

def sideMoments (u a b v c d : ℂ) : Fin 6 → ℂ := ![
  u*v+a*c+b*d,
  u*conj v+a*conj c+b*conj d,
  u^2*conj v+a^2*conj c+b^2*conj d,
  v+c+d,
  conj u*v^2+conj a*c^2+conj b*d^2,
  u+a+b]

def sideSign (u a b v c d : ℂ) : ℝ := -(sideDet3 u a b v c d).im

theorem sideDelta_nonnegative (s t r : ℂ) : 0≤sideDelta s t r :=
  mul_nonneg (mul_nonneg (Complex.normSq_nonneg _) (Complex.normSq_nonneg _)) (Complex.normSq_nonneg _)

theorem sideDet3_eq_sign (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) :
    sideDet3 u a b v c d= -Complex.I*(sideSign u a b v c d:ℂ) := by
  have h := rawDet_re_zero (a*conj u) (b*conj u) (c*conj v) (d*conj v)
    (by simp [Complex.normSq_mul,ha,hu]) (by simp [Complex.normSq_mul,hb,hu])
    (by simp [Complex.normSq_mul,hc,hv])
  apply Complex.ext
  · simpa [sideDet3,Complex.mul_re] using h
  · simp [Complex.mul_im,sideSign]

theorem clear_conjugate_identity (P Q F : ℂ) (h : 2*conj P*Q=F) :
    (Complex.normSq P:ℂ)*Q=P*F/2 := by
  rw [← h,← Complex.mul_conj]
  ring

theorem clear_direct_identity (P Q F : ℂ) (h : 2*P*Q=F) :
    (Complex.normSq P:ℂ)*Q=conj P*F/2 := by
  rw [← h,← Complex.mul_conj]
  ring

theorem side_cleared_Pi (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    let s := sideS3 u a b; let t := sideT3 v c d; let r := sideR3 u a b v c d
    (sideDelta s t r:ℂ)*sidePi3 u a b v c d =
      (meanStableA s t r (r*conj r)-sideDet3 u a b v c d)*sideU0 s t r := by
  dsimp only
  have h := clear_conjugate_identity _ _ _ (unit_side_Pi_identity u a b v c d hu ha hb hv hc hd)
  unfold sideDelta sideU0
  push_cast
  linear_combination (Complex.normSq (symmetricP1 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*
    (Complex.normSq (symmetricP2 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*h

theorem side_cleared_C1 (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    let s := sideS3 u a b; let t := sideT3 v c d; let r := sideR3 u a b v c d
    (sideDelta s t r:ℂ)*sideC1 u a b v c d =
      (meanStableA s t r (t*conj t)+sideDet3 u a b v c d)*sideU1 s t r := by
  dsimp only
  have h := clear_direct_identity _ _ _ (unit_side_C1_identity u a b v c d hu ha hb hv hc hd)
  unfold sideDelta sideU1
  push_cast
  linear_combination (Complex.normSq (symmetricP0 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*
    (Complex.normSq (symmetricP2 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*h

theorem side_cleared_C2 (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) :
    let s := sideS3 u a b; let t := sideT3 v c d; let r := sideR3 u a b v c d
    (sideDelta s t r:ℂ)*sideC2 u a b v c d =
      (meanStableA s t r (s*conj s)+sideDet3 u a b v c d)*sideU2 s t r := by
  dsimp only
  have h := clear_direct_identity _ _ _ (unit_side_C2_identity u a b v c d hu ha hb hv hc hd)
  unfold sideDelta sideU2
  push_cast
  linear_combination (Complex.normSq (symmetricP0 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*
    (Complex.normSq (symmetricP1 (sideS3 u a b) (sideT3 v c d) (sideR3 u a b v c d)):ℂ)*h

/-- Every native cleared moment is proved equal to the actual moment of
six unit side entries, with the determinant's actual signed value. -/
theorem side_moments_cleared (u a b v c d : ℂ)
    (hu : Complex.normSq u=1) (ha : Complex.normSq a=1) (hb : Complex.normSq b=1)
    (hv : Complex.normSq v=1) (hc : Complex.normSq c=1) (hd : Complex.normSq d=1) (k : Fin 6) :
    let s := sideS3 u a b; let t := sideT3 v c d; let r := sideR3 u a b v c d
    (sideDelta s t r:ℂ)*sideMoments u a b v c d k =
      sideMomentConstants s t r k+(sideSign u a b v c d:ℂ)*sideMomentLinear s t r k := by
  dsimp only
  have hPi := side_cleared_Pi u a b v c d hu ha hb hv hc hd
  have hC1 := side_cleared_C1 u a b v c d hu ha hb hv hc hd
  have hC2 := side_cleared_C2 u a b v c d hu ha hb hv hc hd
  dsimp only at hPi hC1 hC2
  rw [sideDet3_eq_sign u a b v c d hu ha hb hv hc] at hPi hC1 hC2
  fin_cases k
  · simp [sideMoments,sideMomentConstants,sideMomentLinear]
    unfold sidePi3 at hPi
    linear_combination -hPi
  · simp [sideMoments,sideMomentConstants,sideMomentLinear,sideR3,map_add,map_mul]
    <;> ring_nf <;> simp
  · simp [sideMoments,sideMomentConstants,sideMomentLinear]
    rw [side_moment_2_neg1 u a b v c d hu ha hb]
    linear_combination -hC1
  · simp [sideMoments,sideMomentConstants,sideMomentLinear,sideT3]
  · simp [sideMoments,sideMomentConstants,sideMomentLinear]
    rw [side_moment_neg1_2 u a b v c d hv hc hd]
    linear_combination -hC2
  · simp [sideMoments,sideMomentConstants,sideMomentLinear,sideS3]
end
end Centiradian20261006.NativeMean20261006

#print axioms Centiradian20261006.NativeMean20261006.sideDelta_nonnegative
#print axioms Centiradian20261006.NativeMean20261006.sideDet3_eq_sign
#print axioms Centiradian20261006.NativeMean20261006.clear_conjugate_identity
#print axioms Centiradian20261006.NativeMean20261006.clear_direct_identity
#print axioms Centiradian20261006.NativeMean20261006.side_cleared_Pi
#print axioms Centiradian20261006.NativeMean20261006.side_cleared_C1
#print axioms Centiradian20261006.NativeMean20261006.side_cleared_C2
#print axioms Centiradian20261006.NativeMean20261006.side_moments_cleared
