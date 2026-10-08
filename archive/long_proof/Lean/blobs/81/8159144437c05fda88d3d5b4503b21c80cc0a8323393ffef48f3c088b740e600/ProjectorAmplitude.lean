import RankOneMetric

/- Actual complex Hilbert vectors throughout.  The residual decomposition
keeps the complex overlap coefficient; no phase-aligned vector is assumed. -/
noncomputable section
open ComplexConjugate
open Seed0024ProjectorMetric20261007

namespace Seed0024ClusterTube20261007

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem balanced_norm_eq_inv_sqrt_six (a : ℝ) (ha : 0≤a) (hs : a^2=(1:ℝ)/6) :
    a=1/Real.sqrt 6 := by
  have h6 : 0≤(6:ℝ) := by norm_num
  have ht : (1/Real.sqrt 6)^2=(1:ℝ)/6 := by rw [div_pow,Real.sq_sqrt h6]; norm_num
  exact (sq_eq_sq₀ ha (by positivity)).1 (hs.trans ht.symm)

theorem residual_norm_eq_projector_distance (u v : E) (hu : ‖u‖=1) (hv : ‖v‖=1) :
    ‖v-inner ℂ u v • u‖=‖projector u-projector v‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1
  rw [unit_residual_norm_sq u v hu,hv,projector_sub_norm_sq u v hu hv]
  norm_num

theorem amplitude_residual_bound (u v x : E) (hu : ‖u‖=1) (hv : ‖v‖=1) :
    |‖inner ℂ v x‖-‖inner ℂ u v‖*‖inner ℂ u x‖| ≤
      ‖projector u-projector v‖*‖x-inner ℂ u x • u‖ := by
  have hn := abs_norm_sub_norm_le (inner ℂ v x) (inner ℂ v u*inner ℂ u x)
  rw [norm_mul,norm_inner_symm v u] at hn
  have hc := norm_inner_le_norm (𝕜 := ℂ) (v-inner ℂ u v • u) (x-inner ℂ u x • u)
  rw [unit_residual_inner u v x hu,residual_norm_eq_projector_distance u v hu hv] at hc
  exact hn.trans hc

theorem projector_overlap_gap_le (u v : E) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hd : ‖projector u-projector v‖≤(1:ℝ)/8) :
    1-‖inner ℂ u v‖≤‖projector u-projector v‖/15 := by
  have hd0 := norm_nonneg (projector u-projector v)
  have hs0 := norm_nonneg (inner ℂ u v)
  have hs1 : ‖inner ℂ u v‖≤1 := by
    simpa only [hu,hv,mul_one] using norm_inner_le_norm (𝕜 := ℂ) u v
  have he := projector_sub_norm_sq u v hu hv
  have hd2 := pow_le_pow_left₀ hd0 hd 2
  have hslo : (7:ℝ)/8≤‖inner ℂ u v‖ := by
    apply (sq_le_sq₀ (by norm_num : (0:ℝ)≤7/8) hs0).1
    nlinarith
  have hw := mul_le_mul_of_nonneg_left
    (show (15:ℝ)/8≤1+‖inner ℂ u v‖ by linarith) (sub_nonneg.mpr hs1)
  have hdd := mul_le_mul_of_nonneg_left hd hd0
  nlinarith

theorem balanced_amplitude_contraction (u v x : E)
    (hu : ‖u‖=1) (hv : ‖v‖=1) (hx : ‖x‖=1)
    (hux : ‖inner ℂ u x‖^2=(1:ℝ)/6)
    (hd : ‖projector u-projector v‖≤(1:ℝ)/8) :
    |‖inner ℂ v x‖-1/Real.sqrt 6| ≤ (19:ℝ)/20*‖projector u-projector v‖ := by
  have hd0 := norm_nonneg (projector u-projector v)
  have hs1 : ‖inner ℂ u v‖≤1 := by
    simpa only [hu,hv,mul_one] using norm_inner_le_norm (𝕜 := ℂ) u v
  have ha : ‖inner ℂ u x‖≤(1:ℝ)/2 := by nlinarith [norm_nonneg (inner ℂ u x)]
  have hb : ‖x-inner ℂ u x • u‖≤(11:ℝ)/12 := by
    have he := unit_residual_norm_sq u x hu
    rw [hx,hux] at he
    nlinarith [norm_nonneg (x-inner ℂ u x • u)]
  have hgap := projector_overlap_gap_le u v hu hv hd
  have hres := amplitude_residual_bound u v x hu hv
  have hfirst := mul_le_mul_of_nonneg_left hb hd0
  have hsecond : (1-‖inner ℂ u v‖)*‖inner ℂ u x‖≤
      (‖projector u-projector v‖/15)*(1/2) := by
    calc
      _ ≤ (‖projector u-projector v‖/15)*‖inner ℂ u x‖ :=
        mul_le_mul_of_nonneg_right hgap (norm_nonneg _)
      _ ≤ _ := mul_le_mul_of_nonneg_left ha (by positivity)
  have htri : |‖inner ℂ v x‖-‖inner ℂ u x‖| ≤
      |‖inner ℂ v x‖-‖inner ℂ u v‖*‖inner ℂ u x‖|+
        (1-‖inner ℂ u v‖)*‖inner ℂ u x‖ := by
    calc
      _ = |(‖inner ℂ v x‖-‖inner ℂ u v‖*‖inner ℂ u x‖)+
        (‖inner ℂ u v‖*‖inner ℂ u x‖-‖inner ℂ u x‖)| := by congr 1; ring
      _ ≤ _ := by
        have h := abs_add_le (‖inner ℂ v x‖-‖inner ℂ u v‖*‖inner ℂ u x‖)
          (‖inner ℂ u v‖*‖inner ℂ u x‖-‖inner ℂ u x‖)
        have hneg : ‖inner ℂ u v‖*‖inner ℂ u x‖-‖inner ℂ u x‖≤0 := by
          nlinarith [norm_nonneg (inner ℂ u x)]
        rw [abs_of_nonpos hneg] at h
        linarith
  have haeq := balanced_norm_eq_inv_sqrt_six ‖inner ℂ u x‖ (norm_nonneg _) hux
  rw [←haeq]
  nlinarith

theorem balanced_amplitude_transfer (u v x : E)
    (hu : ‖u‖=1) (hv : ‖v‖=1) (hx : ‖x‖=1)
    (hux : ‖inner ℂ u x‖^2=(1:ℝ)/6)
    (hd : ‖projector u-projector v‖≤(1:ℝ)/8) :
    |‖inner ℂ v x‖-1/Real.sqrt 6| ≤ ‖projector u-projector v‖ := by
  have h := balanced_amplitude_contraction u v x hu hv hx hux hd
  nlinarith [norm_nonneg (projector u-projector v)]

theorem balanced_amplitude_transfer_strict (u v x : E)
    (hu : ‖u‖=1) (hv : ‖v‖=1) (hx : ‖x‖=1)
    (hux : ‖inner ℂ u x‖^2=(1:ℝ)/6)
    (hd : ‖projector u-projector v‖≤(1:ℝ)/8)
    (hdpos : 0<‖projector u-projector v‖) :
    |‖inner ℂ v x‖-1/Real.sqrt 6| < ‖projector u-projector v‖ := by
  have h := balanced_amplitude_contraction u v x hu hv hx hux hd
  linarith

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.balanced_norm_eq_inv_sqrt_six
#print axioms Seed0024ClusterTube20261007.residual_norm_eq_projector_distance
#print axioms Seed0024ClusterTube20261007.amplitude_residual_bound
#print axioms Seed0024ClusterTube20261007.projector_overlap_gap_le
#print axioms Seed0024ClusterTube20261007.balanced_amplitude_contraction
#print axioms Seed0024ClusterTube20261007.balanced_amplitude_transfer
#print axioms Seed0024ClusterTube20261007.balanced_amplitude_transfer_strict
