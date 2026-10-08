import MonomialRayTransport
import FourierTubeMetric

/-! A common monomial pullback sends every raw ray unbiased to the actual
matrix to a dephased approximate Fourier ray. Pairwise overlap magnitudes are
preserved. No finite cover, compatibility graph, or exclusion is assumed. -/
noncomputable section
open Seed0024ProjectorMetric20261007 Seed0024Mathematical20261007

namespace Seed0024ClusterTube20261007

theorem rawProjectorDistance_normalizedColumn
    (H Q : Fin 6 → Fin 6 → ℂ) (j : Fin 6) :
    rawProjectorDistance (fun i => H i j) (fun i => Q i j)=
      ‖columnProjector (normalizedColumn H j)-columnProjector (normalizedColumn Q j)‖ := rfl

theorem explicitF6_first_row (j : Fin 6) : explicitF6 0 j=1 := by
  simp [explicitF6,phaseSix,cis_zero]

theorem monomial_reference_canonical_tolerance
    (H Q : Fin 6 → Fin 6 → ℂ) (rows cols : Equiv.Perm (Fin 6))
    (g X : Fin 6 → ℂ)
    (hH : ∀ i j,Complex.normSq (H i j)=1)
    (hQunit : ∀ i j,Complex.normSq (Q i j)=1)
    (hg : ∀ i,Complex.normSq (g i)=1)
    (hQ : ∀ i j,Q i j=g i*explicitF6 (rows i) (cols j))
    (hd : ∀ j,rawProjectorDistance (fun i => H i j) (fun i => Q i j)≤(1:ℝ)/30)
    (hX : ∀ i,Complex.normSq (X i)=1)
    (hHX : ∀ j,Complex.normSq (rawOverlap (fun i => H i j) X)=6) (k : Fin 6) :
    |‖Mub6.Numerical.rawOverlap (fun i => explicitF6 i k) (canonicalRay rows g X)‖-
      Real.sqrt 6|≤(19:ℝ)/100 := by
  have ht : ‖rawOverlap (fun i => explicitF6 i k) (canonicalRay rows g X)‖=
      ‖rawOverlap (fun i => Q i (cols.symm k)) X‖ := by
    simpa only [Equiv.apply_symm_apply] using
      canonicalRay_reference_overlap_norm explicitF6 Q rows cols g X hg hX
        explicitF6_first_row hQ (cols.symm k)
  rw [←rawOverlap_eq_FormalCore,ht]
  exact raw_overlap_tolerance_19over100 (fun i => H i (cols.symm k))
    (fun i => Q i (cols.symm k)) X (fun i => hH i _) (fun i => hQunit i _)
    hX (hHX _) (hd _)

theorem inside_f6_tube_canonical_rays
    (H : Fin 6 → Fin 6 → ℂ) (hH : ∀ i j,Complex.normSq (H i j)=1)
    (hTube : InsideF6Tube H ((1:ℝ)/30)) :
    ∃ rows : Equiv.Perm (Fin 6), ∃ g : Fin 6 → ℂ,
      (∀ i,Complex.normSq (g i)=1) ∧
      ∀ X : Fin 6 → ℂ, (∀ i,Complex.normSq (X i)=1) →
        (∀ j,Complex.normSq (Mub6.Numerical.rawOverlap (fun i => H i j) X)=6) →
        Mub6.Numerical.IsRawUnitRay (canonicalRay rows g X) ∧
        ∀ k, |‖Mub6.Numerical.rawOverlap (fun i => explicitF6 i k)
          (canonicalRay rows g X)‖-Real.sqrt 6|≤(19:ℝ)/100 := by
  obtain ⟨Q,hQ,hd⟩ := hTube
  have hQu : ∀ i j,Complex.normSq (Q i j)=1 := monomialF6Reference_unit hQ
  obtain ⟨rows,cols,g,hg,hform⟩ := hQ
  refine ⟨rows,g,hg,?_⟩
  intro X hX hHX
  refine ⟨canonicalRay_isRawUnitRay rows g X hg hX,?_⟩
  intro k
  apply monomial_reference_canonical_tolerance H Q rows cols g X hH hQu hg hform
  · intro j
    rw [rawProjectorDistance_normalizedColumn]
    exact (hd j).le
  · exact hX
  · intro j
    exact hHX j

theorem inside_f6_tube_simultaneous_ray_transport
    (H : Fin 6 → Fin 6 → ℂ) (hH : ∀ i j,Complex.normSq (H i j)=1)
    (hTube : InsideF6Tube H ((1:ℝ)/30)) :
    ∃ rows : Equiv.Perm (Fin 6), ∃ g : Fin 6 → ℂ,
      (∀ i,Complex.normSq (g i)=1) ∧
      (∀ X : Fin 6 → ℂ, (∀ i,Complex.normSq (X i)=1) →
        (∀ j,Complex.normSq (Mub6.Numerical.rawOverlap (fun i => H i j) X)=6) →
        Mub6.Numerical.IsRawUnitRay (canonicalRay rows g X) ∧
        ∀ k, |‖Mub6.Numerical.rawOverlap (fun i => explicitF6 i k)
          (canonicalRay rows g X)‖-Real.sqrt 6|<(1:ℝ)/5) ∧
      (∀ X Y : Fin 6 → ℂ, (∀ i,Complex.normSq (X i)=1) →
        (∀ i,Complex.normSq (Y i)=1) →
        Complex.normSq (Mub6.Numerical.rawOverlap (canonicalRay rows g X)
          (canonicalRay rows g Y))=Complex.normSq (Mub6.Numerical.rawOverlap X Y)) := by
  obtain ⟨rows,g,hg,hrays⟩ := inside_f6_tube_canonical_rays H hH hTube
  refine ⟨rows,g,hg,?_,?_⟩
  · intro X hX hHX
    obtain ⟨hu,hamp⟩ := hrays X hX hHX
    refine ⟨hu,?_⟩
    intro k
    exact (hamp k).trans_lt (by norm_num)
  · intro X Y hX hY
    exact canonicalRay_overlap_normSq rows g X Y hg hX hY

theorem inside_f6_tube_raw_common_rays
    (H : Fin 6 → Fin 6 → ℂ) (hH : ∀ i j,Complex.normSq (H i j)=1)
    (hTube : InsideF6Tube H ((1:ℝ)/30)) :
    ∃ rows : Equiv.Perm (Fin 6), ∃ g : Fin 6 → ℂ,
      (∀ i,Complex.normSq (g i)=1) ∧
      ∀ X : Fin 6 → ℂ, Mub6.Numerical.IsRawCommonRay H X →
        Mub6.Numerical.IsRawUnitRay (canonicalRay rows g X) ∧
        ∀ k, |‖Mub6.Numerical.rawOverlap (fun i => explicitF6 i k)
          (canonicalRay rows g X)‖-Real.sqrt 6|<(1:ℝ)/5 := by
  obtain ⟨rows,g,hg,hrays,_⟩ := inside_f6_tube_simultaneous_ray_transport H hH hTube
  refine ⟨rows,g,hg,?_⟩
  intro X hX
  exact hrays X hX.1.2 hX.2

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.rawProjectorDistance_normalizedColumn
#print axioms Seed0024ClusterTube20261007.explicitF6_first_row
#print axioms Seed0024ClusterTube20261007.monomial_reference_canonical_tolerance
#print axioms Seed0024ClusterTube20261007.inside_f6_tube_canonical_rays
#print axioms Seed0024ClusterTube20261007.inside_f6_tube_simultaneous_ray_transport
#print axioms Seed0024ClusterTube20261007.inside_f6_tube_raw_common_rays
