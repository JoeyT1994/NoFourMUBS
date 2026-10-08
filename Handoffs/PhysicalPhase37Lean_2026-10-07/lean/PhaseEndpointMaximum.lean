import PhaseVariation
import EndpointMaximum
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise

/-! Actual complex phase sums, with all 32 endpoints of the same closed cell.
No supremum over a different parameter domain is substituted. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
open Seed0024ClusterTubeCover20261007
open scoped BigOperators
noncomputable section

theorem phaseSum_update_error (x c : Turns) (i : Fin 5) (t : ℝ) :
    phaseSum (Function.update x i t)-phaseSum c =
      (1+(∑j∈Finset.univ\{i},circlePoint (x j))-phaseSum c)+circlePoint t := by
  have he : (fun j => circlePoint (Function.update x i t j))=
      Function.update (fun j => circlePoint (x j)) i (circlePoint t) := by
    funext j
    by_cases h : j=i
    · subst j; simp only [Function.update_self]
    · simp only [Function.update_of_ne h]
  change (1+∑j,circlePoint (Function.update x i t j))-phaseSum c=_
  rw [he,Finset.sum_update_of_mem (Finset.mem_univ i)]
  ring

theorem phaseSum_coordinate_endpoint_condition (a b c : Turns)
    (hsmall : ∀x,InRectangle a b x → ‖phaseSum x-phaseSum c‖≤1) :
    CoordinateEndpointCondition (fun x => ‖phaseSum x-phaseSum c‖) a b := by
  intro x hx i
  let u : ℂ := 1+(∑j∈Finset.univ\{i},circlePoint (x j))-phaseSum c
  have he : ∀t,phaseSum (Function.update x i t)-phaseSum c=u+circlePoint t :=
    phaseSum_update_error x c i
  have hu : ∀t∈Set.Icc (a i) (b i),‖u+circlePoint t‖≤1 := by
    intro t ht
    rw [←he t]
    exact hsmall _ (rectangle_update a b x i t hx ht)
  have h := circle_norm_endpoint_bound u (a i) (b i) (x i) (hx i) hu
  rw [←he (x i),←he (a i),←he (b i)] at h
  simpa only [Function.update_eq_self] using h

theorem phaseSum_endpoint_maximum (a b c x : Turns)
    (hx : InRectangle a b x)
    (hsmall : ∀y,InRectangle a b y → ‖phaseSum y-phaseSum c‖≤1) :
    ∃m : Mask,‖phaseSum x-phaseSum c‖≤‖phaseSum (endpoint a b m)-phaseSum c‖ :=
  endpoint_maximum _ a b x (phaseSum_coordinate_endpoint_condition a b c hsmall) hx

theorem phaseSum_small_box_endpoint (x c h : Turns)
    (hx : ∀i,|x i-c i|≤h i) (hh : (∑i,h i)≤1) :
    ∃m : Mask,‖phaseSum x-phaseSum c‖≤
      ‖phaseSum (endpoint (fun i => c i-h i) (fun i => c i+h i) m)-phaseSum c‖ := by
  apply phaseSum_endpoint_maximum
  · intro i
    obtain ⟨hl,hu⟩ := abs_le.mp (hx i)
    constructor <;> linarith
  · intro y hy
    apply phaseSum_small_cell y c h _ hh
    intro i
    apply abs_le.mpr
    constructor <;> linarith [(hy i).1,(hy i).2]

end
end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.phaseSum_update_error
#print axioms Seed0024ClusterTube20261007.phaseSum_coordinate_endpoint_condition
#print axioms Seed0024ClusterTube20261007.phaseSum_endpoint_maximum
#print axioms Seed0024ClusterTube20261007.phaseSum_small_box_endpoint
