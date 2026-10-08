import KarlssonDegeneracy
import KarlssonCompact
import Hadamard6.FourierSeamCertificate
import QuartetClassificationBridge

namespace Mub6.Classification.KarlssonCover
open Complex Hadamard6 Mub6.Numerical.CircleCharts
noncomputable section
set_option maxHeartbeats 1600000

def freeIndex : Chart → Fin 4
  | .singularAInput | .singularBInput => 1
  | _ => 0

def rootPhases (chart : Chart) (signs : Fin 3 → Bool)
    (a b c d z : ℂ) : Fin 4 → ℂ :=
  let x := phaseSquares chart a b c d (z^2)
  match chart with
  | .singularAInput | .singularBInput =>
      ![signedRoot (signs 0) (x 0), z, signedRoot (signs 1) (x 2), signedRoot (signs 2) (x 3)]
  | _ => ![z, signedRoot (signs 0) (x 1), signedRoot (signs 1) (x 2), signedRoot (signs 2) (x 3)]

theorem rootPhases_cover (chart : Chart) (a b c d : ℂ) (z : Fin 4 → ℂ)
    (h : phaseSquares chart a b c d ((z (freeIndex chart))^2) = fun i => (z i)^2) :
    ∃ signs : Fin 3 → Bool, rootPhases chart signs a b c d (z (freeIndex chart)) = z := by
  have hz (i : Fin 4) := root_branches (congrFun h i).symm
  rcases hz 0 with ⟨s₀, hs₀⟩
  rcases hz 1 with ⟨s₁, hs₁⟩
  rcases hz 2 with ⟨s₂, hs₂⟩
  rcases hz 3 with ⟨s₃, hs₃⟩
  cases chart
  · refine ⟨![s₁,s₂,s₃], ?_⟩
    funext i
    fin_cases i
    · rfl
    · exact hs₁.symm
    · exact hs₂.symm
    · exact hs₃.symm
  · refine ⟨![s₀,s₂,s₃], ?_⟩
    funext i
    fin_cases i
    · exact hs₀.symm
    · rfl
    · exact hs₂.symm
    · exact hs₃.symm
  · refine ⟨![s₁,s₂,s₃], ?_⟩
    funext i
    fin_cases i
    · rfl
    · exact hs₁.symm
    · exact hs₂.symm
    · exact hs₃.symm
  · refine ⟨![s₀,s₂,s₃], ?_⟩
    funext i
    fin_cases i
    · exact hs₀.symm
    · rfl
    · exact hs₂.symm
    · exact hs₃.symm
  · refine ⟨![s₁,s₂,s₃], ?_⟩
    funext i
    fin_cases i
    · rfl
    · exact hs₁.symm
    · exact hs₂.symm
    · exact hs₃.symm

def rawChart (chart : Chart) (signs : Fin 3 → Bool)
    (pSign zSign : Bool) (s q r : ℝ) : Mat6 :=
  let t := uncompactT s
  let p := signedCircle pSign q
  let z := signedCircle zSign r
  let phases := rootPhases chart signs (coeffA t p) (coeffB t p) (coeffC t p) (coeffD t p) z
  karlssonRawMatrix t p (phases 0) (phases 1) (phases 2) (phases 3)

/-- Three bounded real coordinates, with only finite chart and root choices. -/
def InRawCover (H : Mat6) : Prop :=
  ∃ chart : Chart, ∃ signs : Fin 3 → Bool, ∃ pSign zSign : Bool,
  ∃ s q r : ℝ, 0<s ∧ s<1 ∧ -1≤q ∧ q≤1 ∧ -1≤r ∧ r≤1 ∧
    Equivalent H (rawChart chart signs pSign zSign s q r)

theorem canonical_in_raw_cover {H : Mat6} (hH : IsHadamard H)
    (pres : CanonicalKarlssonRawPresentation H) : InRawCover H := by
  have hRaw := (equivalent_isHadamard_iff pres.equivalent_raw).mp hH
  have hconstraints := raw_constraints pres.p_unit pres.z₁_unit pres.z₂_unit
    pres.z₃_unit pres.z₄_unit hRaw
  have hnot : normSq (coeffA pres.t pres.p) ≠ normSq (coeffB pres.t pres.p) ∨
      normSq (coeffC pres.t pres.p) ≠ normSq (coeffD pres.t pres.p) := by
    by_contra he
    push_neg at he
    exact pres.not_common_fourier (common_degeneracy pres.t_pos pres.p_unit pres.p_ne_neg_one he.1 he.2)
  have hnonzero := degenerate_coeff_nonzero pres.t pres.p_unit
  rcases five_chart_cover hconstraints
    (by simp [map_pow, pres.z₁_unit]) (by simp [map_pow, pres.z₂_unit])
    (by simp [map_pow, pres.z₃_unit]) (by simp [map_pow, pres.z₄_unit])
    hnot hnonzero.1 hnonzero.2 with ⟨chart, free, _, hc⟩
  let z : Fin 4 → ℂ := ![pres.z₁,pres.z₂,pres.z₃,pres.z₄]
  have hz (i : Fin 4) : normSq (z i)=1 := by
    fin_cases i <;> simp [z, pres.z₁_unit, pres.z₂_unit, pres.z₃_unit, pres.z₄_unit]
  have hfree : free=(z (freeIndex chart))^2 := by
    have he := congrFun hc (freeIndex chart)
    cases chart <;> simpa [phaseSquares, freeIndex, z] using he
  have hsquares : phaseSquares chart (coeffA pres.t pres.p) (coeffB pres.t pres.p)
      (coeffC pres.t pres.p) (coeffD pres.t pres.p) ((z (freeIndex chart))^2) = fun i => (z i)^2 := by
    rw [← hfree, hc]
    funext i
    fin_cases i <;> rfl
  rcases rootPhases_cover chart _ _ _ _ z hsquares with ⟨signs,hphases⟩
  rcases unit_circle_complete pres.p_unit with ⟨pSign,q,hql,hqr,hp⟩
  rcases unit_circle_complete (hz (freeIndex chart)) with ⟨zSign,r,hrl,hrr,hzfree⟩
  refine ⟨chart,signs,pSign,zSign,compactT pres.t,q,r,
    (compactT_mem pres.t_pos).1,(compactT_mem pres.t_pos).2,hql,hqr,hrl,hrr,?_⟩
  have heq : rawChart chart signs pSign zSign (compactT pres.t) q r =
      karlssonRawMatrix pres.t pres.p pres.z₁ pres.z₂ pres.z₃ pres.z₄ := by
    simp only [rawChart, compactT_inverse pres.t_pos, ← hp, ← hzfree, hphases]
    rfl
  rw [heq]
  exact pres.equivalent_raw

def seamChart (transpose omegaSign pSign zSign : Bool) (q r : ℝ) : Mat6 :=
  let omega := if omegaSign then standardOmega^2 else standardOmega
  let H := affineFourierMatrix omega (signedCircle pSign q) (signedCircle zSign r)
  if transpose then H.transpose else H

def InSeamCover (H : Mat6) : Prop :=
  ∃ transpose omegaSign pSign zSign : Bool, ∃ q r : ℝ,
    -1≤q ∧ q≤1 ∧ -1≤r ∧ r≤1 ∧ Equivalent H (seamChart transpose omegaSign pSign zSign q r)

theorem seam_in_cover {H : Mat6} (h : IsAffineFourierSeam H) : InSeamCover H := by
  rcases h with ⟨omega,z₁,z₂,homega,hz₁,hz₂,he⟩
  rcases unit_circle_complete hz₁ with ⟨ps,q,hql,hqr,hq⟩
  rcases unit_circle_complete hz₂ with ⟨zs,r,hrl,hrr,hr⟩
  rcases primitiveCubicPhase_eq_standard_or_sq homega with hw | hw
  all_goals rcases he with he | he
  · exact ⟨false,false,ps,zs,q,r,hql,hqr,hrl,hrr,by simpa [seamChart,←hq,←hr,←hw] using he⟩
  · exact ⟨true,false,ps,zs,q,r,hql,hqr,hrl,hrr,by simpa [seamChart,←hq,←hr,←hw] using he⟩
  · exact ⟨false,true,ps,zs,q,r,hql,hqr,hrl,hrr,by simpa [seamChart,←hq,←hr,←hw] using he⟩
  · exact ⟨true,true,ps,zs,q,r,hql,hqr,hrl,hrr,by simpa [seamChart,←hq,←hr,←hw] using he⟩

/-- Global intrinsic physical coverage. No Möbius pole or Fourier seam is deleted. -/
theorem complete_three_parameter_cover {H : Mat6}
    (hH : IsHadamard H) (h₂ : HasHadamardTwoByTwo H) :
    InRawCover H ∨ InSeamCover H := by
  rcases karlssonRawOrSeamCoverage_proved H hH h₂ with hp | hseam
  · rcases hp with ⟨pres⟩
    exact Or.inl (canonical_in_raw_cover hH pres)
  · exact Or.inr (seam_in_cover hseam)

end
end Mub6.Classification.KarlssonCover
