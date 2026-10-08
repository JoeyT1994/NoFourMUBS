import CentreProjectorLabel
import CentreGraphBinding
import OrthogonalBallCompatibility
import UnbiasedBallCompatibility
import PhysicalLabelGraph

/-! Necessary compatibility of actual raw rays assigned to the exact 48
centres. The overlap geometry is joined to all checked finite centre pairs.
No centre-ball cover is assumed or concluded by this soundness theorem. -/
noncomputable section
open Seed0024ProjectorMetric20261007 Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel

namespace Seed0024ClusterTube20261007

theorem centre_labels_orthogonal (i j : Fin 48) (z w : Mub6.Vector)
    (hz : Mub6.Numerical.IsRawUnitRay z) (hw : Mub6.Numerical.IsRawUnitRay w)
    (hiz : centreProjectorLabel i z) (hjw : centreProjectorLabel j w)
    (hzw : Mub6.Numerical.rawOverlap z w=0) : orthGraph i j=true := by
  have h0 : inner ℂ (normalizedVector z) (normalizedVector w)=0 := by
    rw [normalized_inner_eq_raw]
    change rawOverlap z w=0 at hzw
    rw [hzw,zero_div]
  have h := orthogonal_ball_compatibility (normalizedVector (exactCentre i))
    (normalizedVector (exactCentre j)) (normalizedVector z) (normalizedVector w)
    (exactCentre_normalized_unit i) (exactCentre_normalized_unit j)
    (normalizedVector_unit z hz.2) (normalizedVector_unit w hw.2) h0 hiz hjw
  apply centre_orthogonal_in_graph i j
  simpa only [←Complex.normSq_eq_norm_sq,exactCentre_normalized_probability] using h

theorem centre_labels_unbiased (i j : Fin 48) (z w : Mub6.Vector)
    (hz : Mub6.Numerical.IsRawUnitRay z) (hw : Mub6.Numerical.IsRawUnitRay w)
    (hiz : centreProjectorLabel i z) (hjw : centreProjectorLabel j w)
    (hzw : Complex.normSq (Mub6.Numerical.rawOverlap z w)=6) : ubGraph i j=true := by
  have h0 : Complex.normSq (inner ℂ (normalizedVector z) (normalizedVector w))=(1:ℝ)/6 := by
    rw [normalized_inner_normSq_eq_raw,hzw]
    norm_num
  apply centre_unbiased_in_graph i j
  exact projector_balls_unbiased_probability (normalizedVector (exactCentre i))
    (normalizedVector (exactCentre j)) (normalizedVector z) (normalizedVector w)
    (centreProbability i j : ℝ) (exactCentre_normalized_unit i)
    (exactCentre_normalized_unit j) (normalizedVector_unit z hz.2)
    (normalizedVector_unit w hw.2) hiz hjw h0 (exactCentre_normalized_probability i j).symm

theorem actual_centre_sound_label_graph : SoundLabelGraph centreProjectorLabel orthGraph ubGraph :=
  ⟨centre_labels_orthogonal,centre_labels_unbiased⟩

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.centre_labels_orthogonal
#print axioms Seed0024ClusterTube20261007.centre_labels_unbiased
#print axioms Seed0024ClusterTube20261007.actual_centre_sound_label_graph
