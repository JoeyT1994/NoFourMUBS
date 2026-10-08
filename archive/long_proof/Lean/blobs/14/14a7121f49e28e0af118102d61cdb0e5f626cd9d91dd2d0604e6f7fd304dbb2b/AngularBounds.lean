import RadianSeedBounds
import Root0PiBounds
import Mathlib.Analysis.SpecialFunctions.Complex.Arg

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
noncomputable section

def SinCheck (q : ℚ) (S : Interval) : Prop :=
  |q| ≤ 1 ∧ S.lo ≤ q-q^3/6-|q|^5/100 ∧ q-q^3/6+|q|^5/100 ≤ S.hi
instance (q : ℚ) (S : Interval) : Decidable (SinCheck q S) := by
  unfold SinCheck; infer_instance

theorem sinCheck_sound {q : ℚ} {S : Interval} (h : SinCheck q S) :
    Mem S (Real.sin (q : ℝ)) := by
  have hq : |(q:ℝ)| ≤ 1 := by exact_mod_cast h.1
  have hs := abs_le.mp (Real.sin_bound hq)
  have hl : (S.lo:ℝ) ≤ (q:ℝ)-(q:ℝ)^3/6-|(q:ℝ)|^5/100 := by exact_mod_cast h.2.1
  have hu : (q:ℝ)-(q:ℝ)^3/6+|(q:ℝ)|^5/100 ≤ (S.hi:ℝ) := by exact_mod_cast h.2.2
  exact ⟨by linarith,by linarith⟩

def halfCos (S : Interval) : Interval := sub (point 1) (mul (point 2) (square S))

theorem halfCos_sound {q : ℚ} {S C : Interval}
    (hs : Mem S (Real.sin ((q/2:ℚ):ℝ))) (hc : Includes (halfCos S) C) :
    Mem C (Real.cos (q:ℝ)) := by
  have he : Real.cos (q:ℝ) = 1-2*(Real.sin ((q/2:ℚ):ℝ))^2 := by
    have h := Real.cos_two_mul (((q/2:ℚ):ℝ))
    have hq : 2*((q/2:ℚ):ℝ)=(q:ℝ) := by push_cast;ring
    rw [hq] at h
    nlinarith [Real.sin_sq_add_cos_sq (((q/2:ℚ):ℝ))]
  rw [he]
  have hv := mem_sub (mem_point 1) (mem_mul (mem_point 2) (mem_square hs))
  exact mem_mono hc (by simpa [halfCos,pow_two] using hv)

inductive TrigCert where
  | base (q : ℚ) (S SH C : Interval)
  | double (prior : TrigCert) (S C : Interval)

def TrigCert.angle : TrigCert → ℚ
  | .base q _ _ _ => q
  | .double p _ _ => 2*p.angle
def TrigCert.sine : TrigCert → Interval
  | .base _ S _ _ => S
  | .double _ S _ => S
def TrigCert.cosine : TrigCert → Interval
  | .base _ _ _ C => C
  | .double _ _ C => C
def TrigCert.check : TrigCert → Bool
  | .base q S SH C => decide (SinCheck q S ∧ SinCheck (q/2) SH ∧ Includes (halfCos SH) C)
  | .double p S C => p.check && decide
      (Includes (doubleSin p.sine p.cosine) S ∧ Includes (doubleCos p.sine p.cosine) C)

theorem TrigCert.sound (p : TrigCert) (h : p.check=true) :
    Mem p.sine (Real.sin (p.angle:ℝ)) ∧ Mem p.cosine (Real.cos (p.angle:ℝ)) := by
  induction p with
  | base q S SH C =>
    have hc := of_decide_eq_true h
    exact ⟨sinCheck_sound hc.1,halfCos_sound (sinCheck_sound hc.2.1) hc.2.2⟩
  | double p S C ih =>
    simp only [TrigCert.check,Bool.and_eq_true] at h
    have hc := of_decide_eq_true h.2
    simpa only [TrigCert.angle,TrigCert.sine,TrigCert.cosine,Rat.cast_mul,Rat.cast_ofNat]
      using double_sound (ih h.1) hc.1 hc.2

def piInterval : Interval :=
  ⟨314159265358979323846/100000000000000000000,
    314159265358979323847/100000000000000000000⟩

theorem pi_mem : Mem piInterval Real.pi := by
  constructor
  · have h := Root0PiBounds20261003.pi_gt_d20; norm_num [piInterval] at h ⊢; exact le_of_lt h
  · have h := Root0PiBounds20261003.pi_lt_d20; norm_num [piInterval] at h ⊢; exact le_of_lt h

def turnPhase (t : ℝ) : ℂ := cis (2*Real.pi*t)

structure ArcCert where
  domain : Interval
  center : TrigCert
  radius : ℚ
  box : RationalRectangle

def ArcCert.check (a : ArcCert) : Bool :=
  a.center.check && decide (0 ≤ a.radius ∧ a.radius ≤ 1 ∧
    Includes (sub (mul (mul (point 2) piInterval) a.domain) (point a.center.angle))
      ⟨-a.radius,a.radius⟩ ∧
    BoxIncludes (radianBox a.center.sine a.center.cosine a.radius) a.box)

theorem ArcCert.sound (a : ArcCert) (hc : a.check=true) {t : ℝ}
    (ht : Mem a.domain t) : MemRectangle a.box (turnPhase t) := by
  simp only [ArcCert.check,Bool.and_eq_true] at hc
  have hb := of_decide_eq_true hc.2
  have hrad : Mem (mul (mul (point 2) piInterval) a.domain) (2*Real.pi*t) := by
    simpa only [Rat.cast_ofNat] using mem_mul (mem_mul (mem_point 2) pi_mem) ht
  have hdelta := mem_mono hb.2.2.1 (mem_sub hrad (mem_point a.center.angle))
  have hd : |2*Real.pi*t-(a.center.angle:ℝ)| ≤ (a.radius:ℝ) := by
    apply abs_le.mpr
    simpa only [Mem,Rat.cast_neg] using hdelta
  exact box_mono hb.2.2.2 (radianBox_sound (a.center.sound hc.1) hb.1 hb.2.1 hd)

theorem unit_turnPhase {z : ℂ} (hz : Complex.normSq z=1) :
    ∃ t : ℝ, 0≤t ∧ t≤1 ∧ z=turnPhase t := by
  have hn : ‖z‖=1 := by rw [Complex.norm_def,hz]; norm_num
  have hp : 0 < 2*Real.pi := by positivity
  have he : cis z.arg=z := by
    apply Complex.ext
    · simpa [cis,hn] using Complex.norm_mul_cos_arg z
    · simpa [cis,hn] using Complex.norm_mul_sin_arg z
  by_cases ha : 0≤z.arg
  · refine ⟨z.arg/(2*Real.pi),div_nonneg ha hp.le,?_,?_⟩
    · apply (div_le_one hp).mpr
      exact (Complex.arg_le_pi z).trans (by linarith [Real.pi_pos])
    · have hmul : 2*Real.pi*(z.arg/(2*Real.pi))=z.arg := by field_simp
      rw [turnPhase,hmul]
      exact he.symm
  · have hnarg := le_of_lt (Complex.neg_pi_lt_arg z)
    refine ⟨(z.arg+2*Real.pi)/(2*Real.pi),div_nonneg (by linarith) hp.le,?_,?_⟩
    · apply (div_le_one hp).mpr; linarith
    · have hmul : 2*Real.pi*((z.arg+2*Real.pi)/(2*Real.pi))=z.arg+2*Real.pi := by field_simp
      rw [turnPhase,hmul]
      have hper : cis (z.arg+2*Real.pi)=cis z.arg := by
        apply Complex.ext <;> simp [cis,Real.cos_add_two_pi,Real.sin_add_two_pi]
      rw [hper,he]

#print axioms sinCheck_sound
#print axioms halfCos_sound
#print axioms TrigCert.sound
#print axioms pi_mem
#print axioms ArcCert.sound
#print axioms unit_turnPhase
end
end Root0Angular20261003
