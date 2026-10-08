import CentreProjectorLabel

/-! Actual six-coordinate projector-ball inclusion from the scalar integer
test's real inequalities. The centre is the same throughout. Coordinate
chord bounds cover the actual point; no desired distance is assumed. -/
noncomputable section
open scoped BigOperators
open Seed0024ProjectorMetric20261007 Mub6.Numerical.ClusterTube48

namespace Seed0024ClusterTube20261007

theorem raw_projector_distance_sq_of_unit (C M : Mub6.Vector)
    (hC : ∀i,Complex.normSq (C i)=1) (hM : ∀i,Complex.normSq (M i)=1) :
    rawProjectorDistance C M^2=
      1-Complex.normSq (Mub6.Numerical.rawOverlap C M)/36 := by
  rw [rawProjectorDistance,projector_sub_norm_sq _ _
    (normalizedVector_unit C hC) (normalizedVector_unit M hM),
    ←Complex.normSq_eq_norm_sq,normalized_inner_normSq_eq_raw]

theorem normalized_vector_difference_sq (U V : Mub6.Vector) :
    ‖normalizedVector U-normalizedVector V‖^2=
      (∑i : Fin 6,Complex.normSq (U i-V i))/6 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ)=6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.mul_self_sqrt (by norm_num : (0:ℝ)≤6)
  rw [normalizedVector,normalizedVector,columnL2_sub_norm_sq]
  simp only [←sub_div,Complex.normSq_div,hs]
  exact (Finset.sum_div _ _ _).symm

theorem raw_projector_distance_le_coordinate_radius (U V : Mub6.Vector)
    (hU : ∀i,Complex.normSq (U i)=1) (hV : ∀i,Complex.normSq (V i)=1)
    (radius : ℝ) (hr : 0≤radius) (hchord : ∀i,‖U i-V i‖≤radius) :
    rawProjectorDistance U V≤radius := by
  have hsum : (∑i : Fin 6,Complex.normSq (U i-V i))≤6*radius^2 := by
    calc
      _ ≤ ∑_i : Fin 6,radius^2 := by
        apply Finset.sum_le_sum
        intro i _
        rw [Complex.normSq_eq_norm_sq]
        exact pow_le_pow_left₀ (norm_nonneg _) (hchord i) 2
      _ = _ := by simp
  have hn : ‖normalizedVector U-normalizedVector V‖≤radius := by
    apply (sq_le_sq₀ (norm_nonneg _) hr).1
    rw [normalized_vector_difference_sq]
    exact (div_le_iff₀ (by norm_num : (0:ℝ)<6)).2 (by nlinarith)
  exact (projector_lipschitz _ _ (normalizedVector_unit U hU)
    (normalizedVector_unit V hV)).trans hn

theorem midpoint_scalar_projector_bound (C M : Mub6.Vector)
    (hC : ∀i,Complex.normSq (C i)=1) (hM : ∀i,Complex.normSq (M i)=1)
    (Q lo dist : ℝ) (hQ : 0<Q) (hlo : 0≤lo) (hdist : 0≤dist)
    (hlower : lo≤Q*‖Mub6.Numerical.rawOverlap C M‖)
    (hdist2 : 36*Q^2-lo^2≤dist^2) :
    6*Q*rawProjectorDistance C M≤dist := by
  have hsq := raw_projector_distance_sq_of_unit C M hC hM
  rw [Complex.normSq_eq_norm_sq] at hsq
  have hid : (6*Q*rawProjectorDistance C M)^2+
      (Q*‖Mub6.Numerical.rawOverlap C M‖)^2=36*Q^2 := by
    calc
      _ = 36*Q^2*(rawProjectorDistance C M^2+
          ‖Mub6.Numerical.rawOverlap C M‖^2/36) := by ring
      _ = _ := by rw [hsq]; ring
  have hlo2 := pow_le_pow_left₀ hlo hlower 2
  have hn : 0≤6*Q*rawProjectorDistance C M :=
    mul_nonneg (by positivity) (norm_nonneg _)
  apply (sq_le_sq₀ hn hdist).1
  nlinarith

theorem scalar_ball_test_includes_point (C M X : Mub6.Vector)
    (hC : ∀i,Complex.normSq (C i)=1) (hM : ∀i,Complex.normSq (M i)=1)
    (hX : ∀i,Complex.normSq (X i)=1)
    (Q lo dist rad : ℝ) (hQ : 0<Q) (hlo : 0≤lo) (hdist : 0≤dist) (hrad : 0≤rad)
    (hlower : lo≤Q*‖Mub6.Numerical.rawOverlap C M‖)
    (hdist2 : 36*Q^2-lo^2≤dist^2)
    (hchord : ∀i,‖M i-X i‖≤rad/Q)
    (htest : (dist+6*rad)*27<30*Q) :
    rawProjectorDistance C X<(5:ℝ)/27 := by
  have hmid := midpoint_scalar_projector_bound C M hC hM Q lo dist hQ hlo hdist hlower hdist2
  have hpoint := raw_projector_distance_le_coordinate_radius M X hM hX
    (rad/Q) (div_nonneg hrad hQ.le) hchord
  have hpoint' : 6*Q*rawProjectorDistance M X≤6*rad := by
    have h := mul_le_mul_of_nonneg_left hpoint (by positivity : (0:ℝ)≤6*Q)
    have he : 6*Q*(rad/Q)=6*rad := by
      calc
        _ = 6*(rad/Q*Q) := by ring
        _ = _ := by rw [div_mul_cancel₀ _ (ne_of_gt hQ)]
    rw [he] at h
    exact h
  have htri : rawProjectorDistance C X≤rawProjectorDistance C M+rawProjectorDistance M X :=
    projector_triangle _ _ _
  have ht : 6*Q*rawProjectorDistance C X≤dist+6*rad := by
    have h := mul_le_mul_of_nonneg_left htri (by positivity : (0:ℝ)≤6*Q)
    nlinarith
  by_contra hn
  have hge : (5:ℝ)/27≤rawProjectorDistance C X := le_of_not_gt hn
  have hmul := mul_le_mul_of_nonneg_left hge (by positivity : (0:ℝ)≤6*Q)
  nlinarith

theorem exact_centre_scalar_ball_label (i : Fin 48) (M X : Mub6.Vector)
    (hM : ∀j,Complex.normSq (M j)=1) (hX : ∀j,Complex.normSq (X j)=1)
    (Q lo dist rad : ℝ) (hQ : 0<Q) (hlo : 0≤lo) (hdist : 0≤dist) (hrad : 0≤rad)
    (hlower : lo≤Q*‖Mub6.Numerical.rawOverlap (exactCentre i) M‖)
    (hdist2 : 36*Q^2-lo^2≤dist^2)
    (hchord : ∀j,‖M j-X j‖≤rad/Q)
    (htest : (dist+6*rad)*27<30*Q) : centreProjectorLabel i X :=
  (scalar_ball_test_includes_point (exactCentre i) M X (all_centres_isRawUnitRay i).2
    hM hX Q lo dist rad hQ hlo hdist hrad hlower hdist2 hchord htest).le

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.raw_projector_distance_sq_of_unit
#print axioms Seed0024ClusterTube20261007.normalized_vector_difference_sq
#print axioms Seed0024ClusterTube20261007.raw_projector_distance_le_coordinate_radius
#print axioms Seed0024ClusterTube20261007.midpoint_scalar_projector_bound
#print axioms Seed0024ClusterTube20261007.scalar_ball_test_includes_point
#print axioms Seed0024ClusterTube20261007.exact_centre_scalar_ball_label
