import RawColumnAmplitude
import ExactCentreData

/-! The concrete 48-centre label has the actual operator-projector metric.
Its exact rational probabilities are the normalized complex inner products.
Coverage by these labels is not asserted in this module. -/
noncomputable section
open Seed0024ProjectorMetric20261007 Mub6.Numerical.ClusterTube48

namespace Seed0024ClusterTube20261007

def centreProjectorLabel (i : Fin 48) (z : Mub6.Vector) : Prop :=
  rawProjectorDistance (exactCentre i) z≤(5:ℝ)/27

theorem normalized_inner_normSq_eq_raw (U V : Mub6.Vector) :
    Complex.normSq (inner ℂ (normalizedVector U) (normalizedVector V))=
      Complex.normSq (Mub6.Numerical.rawOverlap U V)/36 := by
  rw [normalized_inner_eq_raw,Complex.normSq_div]
  have h6 : Complex.normSq (6:ℂ)=36 := by norm_num
  rw [h6]
  rfl

theorem exactCentre_normalized_unit (i : Fin 48) :
    ‖normalizedVector (exactCentre i)‖=1 :=
  normalizedVector_unit (exactCentre i) (all_centres_isRawUnitRay i).2

theorem exactCentre_normalized_probability (i j : Fin 48) :
    Complex.normSq (inner ℂ (normalizedVector (exactCentre i))
      (normalizedVector (exactCentre j)))=(centreProbability i j : ℝ) := by
  rw [normalized_inner_normSq_eq_raw]
  exact centreProbability_eq_complex i j

theorem exactCentre_projector_distance_sq (i j : Fin 48) :
    rawProjectorDistance (exactCentre i) (exactCentre j)^2=
      1-(centreProbability i j : ℝ) := by
  rw [rawProjectorDistance,projector_sub_norm_sq _ _
    (exactCentre_normalized_unit i) (exactCentre_normalized_unit j),
    ←Complex.normSq_eq_norm_sq,exactCentre_normalized_probability]

theorem centreProjectorLabel_iff (i : Fin 48) (z : Mub6.Vector) :
    centreProjectorLabel i z ↔
      ‖projector (normalizedVector (exactCentre i))-projector (normalizedVector z)‖≤(5:ℝ)/27 :=
  Iff.rfl

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.normalized_inner_normSq_eq_raw
#print axioms Seed0024ClusterTube20261007.exactCentre_normalized_unit
#print axioms Seed0024ClusterTube20261007.exactCentre_normalized_probability
#print axioms Seed0024ClusterTube20261007.exactCentre_projector_distance_sq
#print axioms Seed0024ClusterTube20261007.centreProjectorLabel_iff
