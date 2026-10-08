import ProjectorAmplitude

/- Explicit optimal phases for actual complex Hilbert vectors. The phase
is constructed even when the overlap vanishes; no phase alignment is assumed. -/
noncomputable section
open ComplexConjugate
open Seed0024ProjectorMetric20261007

namespace Seed0024ClusterTube20261007

def alignmentPhase (z : ℂ) : ℂ :=
  if z=0 then 1 else conj z/(‖z‖ : ℂ)

theorem alignmentPhase_norm (z : ℂ) : ‖alignmentPhase z‖=1 := by
  by_cases hz : z=0
  · simp [alignmentPhase,hz]
  · have hn : ‖z‖≠0 := norm_ne_zero_iff.mpr hz
    simp only [alignmentPhase,if_neg hz,norm_div,Complex.norm_conj,
      Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg (norm_nonneg z)]
    exact div_self hn

theorem alignmentPhase_mul (z : ℂ) : alignmentPhase z*z=(‖z‖ : ℂ) := by
  by_cases hz : z=0
  · simp [alignmentPhase,hz]
  · have hn : (‖z‖ : ℂ)≠0 := by
      exact_mod_cast (norm_ne_zero_iff.mpr hz)
    rw [alignmentPhase,if_neg hz,div_mul_eq_mul_div,Complex.conj_mul']
    rw [pow_two,mul_div_cancel_right₀ _ hn]

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem aligned_distance_sq (u v : E) (hu : ‖u‖=1) (hv : ‖v‖=1) :
    ‖u-alignmentPhase (inner ℂ u v) • v‖^2=2*(1-‖inner ℂ u v‖) := by
  rw [norm_sub_sq (𝕜 := ℂ),norm_smul,hu,hv,alignmentPhase_norm,inner_smul_right]
  change (1:ℝ)^2-2*(alignmentPhase (inner ℂ u v)*inner ℂ u v).re+(1*1)^2=_
  rw [alignmentPhase_mul,Complex.ofReal_re]
  ring

theorem exists_unit_phase_distance_sq (u v : E) (hu : ‖u‖=1) (hv : ‖v‖=1) :
    ∃ a : ℂ, ‖a‖=1 ∧ ‖u-a • v‖^2=2*(1-‖inner ℂ u v‖) :=
  ⟨alignmentPhase (inner ℂ u v),alignmentPhase_norm _,aligned_distance_sq u v hu hv⟩

theorem aligned_distance_lt_three_sixteenths (u v : E)
    (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hd : ‖projector u-projector v‖≤(5:ℝ)/27) :
    ‖u-alignmentPhase (inner ℂ u v) • v‖<(3:ℝ)/16 := by
  have he := projector_sub_norm_sq u v hu hv
  have hd2 := pow_le_pow_left₀ (norm_nonneg (projector u-projector v)) hd 2
  have hlo : (503:ℝ)/512<‖inner ℂ u v‖ := by
    apply (sq_lt_sq₀ (by norm_num : (0:ℝ)≤503/512) (norm_nonneg _)).1
    nlinarith
  apply (sq_lt_sq₀ (norm_nonneg _) (by norm_num : (0:ℝ)≤3/16)).1
  rw [aligned_distance_sq u v hu hv]
  nlinarith

theorem exists_unit_phase_close (u v : E) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hd : ‖projector u-projector v‖≤(5:ℝ)/27) :
    ∃ a : ℂ, ‖a‖=1 ∧ ‖u-a • v‖<(3:ℝ)/16 :=
  ⟨alignmentPhase (inner ℂ u v),alignmentPhase_norm _,
    aligned_distance_lt_three_sixteenths u v hu hv hd⟩

theorem inner_amplitude_perturbation (u v x y : E) :
    |‖inner ℂ u v‖-‖inner ℂ x y‖|≤‖u-x‖*‖v‖+‖x‖*‖v-y‖ := by
  calc
    _ ≤ ‖inner ℂ u v-inner ℂ x y‖ := abs_norm_sub_norm_le _ _
    _ = ‖inner ℂ (u-x) v+inner ℂ x (v-y)‖ := by
      congr 1
      simp only [inner_sub_left,inner_sub_right]
      ring
    _ ≤ ‖inner ℂ (u-x) v‖+‖inner ℂ x (v-y)‖ := norm_add_le _ _
    _ ≤ _ := add_le_add (norm_inner_le_norm (𝕜 := ℂ) _ _)
      (norm_inner_le_norm (𝕜 := ℂ) _ _)

theorem unit_phases_inner_norm (u v : E) (a b : ℂ) (ha : ‖a‖=1) (hb : ‖b‖=1) :
    ‖inner ℂ (a • u) (b • v)‖=‖inner ℂ u v‖ := by
  rw [inner_smul_left,inner_smul_right]
  change ‖conj a*(b*inner ℂ u v)‖=_
  rw [norm_mul,Complex.norm_conj,norm_mul,ha,hb,one_mul,one_mul]

theorem projector_balls_inner_amplitude_lt (c d u v : E)
    (hc : ‖c‖=1) (hd : ‖d‖=1) (hu : ‖u‖=1) (hv : ‖v‖=1)
    (hcu : ‖projector c-projector u‖≤(5:ℝ)/27)
    (hdv : ‖projector d-projector v‖≤(5:ℝ)/27) :
    |‖inner ℂ c d‖-‖inner ℂ u v‖|<(3:ℝ)/8 := by
  obtain ⟨a,ha,hca⟩ := exists_unit_phase_close c u hc hu hcu
  obtain ⟨b,hb,hdb⟩ := exists_unit_phase_close d v hd hv hdv
  have h := inner_amplitude_perturbation c d (a • u) (b • v)
  rw [unit_phases_inner_norm u v a b ha hb,hd,norm_smul,ha,hu] at h
  nlinarith

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.alignmentPhase_norm
#print axioms Seed0024ClusterTube20261007.alignmentPhase_mul
#print axioms Seed0024ClusterTube20261007.aligned_distance_sq
#print axioms Seed0024ClusterTube20261007.exists_unit_phase_distance_sq
#print axioms Seed0024ClusterTube20261007.aligned_distance_lt_three_sixteenths
#print axioms Seed0024ClusterTube20261007.exists_unit_phase_close
#print axioms Seed0024ClusterTube20261007.inner_amplitude_perturbation
#print axioms Seed0024ClusterTube20261007.unit_phases_inner_norm
#print axioms Seed0024ClusterTube20261007.projector_balls_inner_amplitude_lt
