import PhaseAlignment

/- Necessary compatibility for two actual mutually unbiased rays lying in
projector balls. The only geometry is the proved explicit phase alignment. -/
noncomputable section
open Seed0024ProjectorMetric20261007

namespace Seed0024ClusterTube20261007

theorem amplitude_band_implies_ub_probability (a b : ℝ)
    (ha : 0≤a) (hb : 0≤b) (hbsq : b^2=(1:ℝ)/6)
    (hab : |a-b|≤(3:ℝ)/8) :
    (a^2+(5:ℝ)/192)^2≤(2:ℝ)/3*a^2 := by
  have hab2 := pow_le_pow_left₀ (abs_nonneg (a-b)) hab 2
  rw [sq_abs] at hab2
  have hlin : a^2+(5:ℝ)/192≤2*a*b := by nlinarith
  have hleft : 0≤a^2+(5:ℝ)/192 := by positivity
  have hright : 0≤2*a*b := by positivity
  have hsq := (sq_le_sq₀ hleft hright).2 hlin
  calc
    _ ≤ (2*a*b)^2 := hsq
    _ = (2:ℝ)/3*a^2 := by rw [mul_pow,mul_pow,hbsq]; ring

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem projector_balls_unbiased_amplitude_lt (c d u v : E)
    (hc : ‖c‖=1) (hd : ‖d‖=1) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hcu : ‖projector c-projector u‖≤(5:ℝ)/27)
    (hdv : ‖projector d-projector v‖≤(5:ℝ)/27)
    (huv : ‖inner ℂ u v‖^2=(1:ℝ)/6) :
    |‖inner ℂ c d‖-1/Real.sqrt 6|<(3:ℝ)/8 := by
  have h := projector_balls_inner_amplitude_lt c d u v hc hd hu hv hcu hdv
  rw [balanced_norm_eq_inv_sqrt_six ‖inner ℂ u v‖ (norm_nonneg _) huv] at h
  exact h

theorem projector_balls_unbiased_predicate (c d u v : E)
    (hc : ‖c‖=1) (hd : ‖d‖=1) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hcu : ‖projector c-projector u‖≤(5:ℝ)/27)
    (hdv : ‖projector d-projector v‖≤(5:ℝ)/27)
    (huv : ‖inner ℂ u v‖^2=(1:ℝ)/6) :
    (‖inner ℂ c d‖^2+(5:ℝ)/192)^2≤(2:ℝ)/3*‖inner ℂ c d‖^2 := by
  exact amplitude_band_implies_ub_probability _ _ (norm_nonneg _) (norm_nonneg _)
    huv (projector_balls_inner_amplitude_lt c d u v hc hd hu hv hcu hdv).le

theorem projector_balls_unbiased_probability (c d u v : E) (p : ℝ)
    (hc : ‖c‖=1) (hd : ‖d‖=1) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hcu : ‖projector c-projector u‖≤(5:ℝ)/27)
    (hdv : ‖projector d-projector v‖≤(5:ℝ)/27)
    (huv : Complex.normSq (inner ℂ u v)=(1:ℝ)/6)
    (hp : p=Complex.normSq (inner ℂ c d)) :
    (p+(5:ℝ)/192)^2≤(2:ℝ)/3*p := by
  rw [hp,Complex.normSq_eq_norm_sq]
  exact projector_balls_unbiased_predicate c d u v hc hd hu hv hcu hdv
    (by simpa only [Complex.normSq_eq_norm_sq] using huv)

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.amplitude_band_implies_ub_probability
#print axioms Seed0024ClusterTube20261007.projector_balls_unbiased_amplitude_lt
#print axioms Seed0024ClusterTube20261007.projector_balls_unbiased_predicate
#print axioms Seed0024ClusterTube20261007.projector_balls_unbiased_probability
