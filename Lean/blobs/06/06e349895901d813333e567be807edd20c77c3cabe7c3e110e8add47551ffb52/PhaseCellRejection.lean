import ScalarRejectionBounds
import PhaseEndpointMaximum

/-! Whole closed phase-cell rejection using the actual phase sum. The only
arithmetic hypotheses concern the recorded rounded coordinates and integer
norms. Analytic variation and endpoint domination are proved here. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007
open Seed0024ClusterTubeCover20261007
open scoped BigOperators
noncomputable section

theorem phase_midpoint_rejection (x c h : Turns) (t : Fin 5 → ℂ)
    (q r target rho tau tol err : ℝ)
    (hq : 0≤q) (hx : ∀i,|x i-c i|≤h i)
    (htr : ∀i,|(t i-(q:ℂ)*circlePoint (c i)).re|<1)
    (hti : ∀i,|(t i-(q:ℂ)*circlePoint (c i)).im|<1)
    (hfloor : |r-‖(q:ℂ)+∑i,t i‖|<1)
    (htarget : |target-q*rho|<1) (htol : q*tau≤tol)
    (herr : q*(∑i,h i)≤err)
    (hreject : err+tol+10 < |r-target|) :
    ¬ |‖phaseSum x‖-rho|≤tau := by
  exact scalar_midpoint_rejection (phaseSum x) (phaseSum c) ((q:ℂ)+∑i,t i)
    q r target rho tau (∑i,h i) tol err hq
    (midpoint_sum_rounding_lt q (fun i => circlePoint (c i)) t htr hti)
    hfloor htarget (phaseSum_cell_variation x c h hx) htol herr hreject

theorem phase_all_endpoints_rejection (x c h : Turns)
    (t : Fin 5 → ℂ) (e : Mask → Fin 5 → ℂ) (er : Mask → ℝ)
    (q r target rho tau tol : ℝ)
    (hq : 0≤q) (hx : ∀i,|x i-c i|≤h i) (hh : (∑i,h i)≤1)
    (htr : ∀i,|(t i-(q:ℂ)*circlePoint (c i)).re|<1)
    (hti : ∀i,|(t i-(q:ℂ)*circlePoint (c i)).im|<1)
    (her : ∀m i,|(e m i-(q:ℂ)*circlePoint
      (endpoint (fun j => c j-h j) (fun j => c j+h j) m i)).re|<1)
    (hei : ∀m i,|(e m i-(q:ℂ)*circlePoint
      (endpoint (fun j => c j-h j) (fun j => c j+h j) m i)).im|<1)
    (hfloor : |r-‖(q:ℂ)+∑i,t i‖|<1)
    (hefloor : ∀m,|er m-‖((q:ℂ)+∑i,e m i)-((q:ℂ)+∑i,t i)‖|<1)
    (htarget : |target-q*rho|<1) (htol : q*tau≤tol)
    (hreject : ∀m,er m+tol+26 < |r-target|) :
    ¬ |‖phaseSum x‖-rho|≤tau := by
  have hmid := midpoint_sum_rounding_lt q (fun i => circlePoint (c i)) t htr hti
  apply scalar_all_endpoints_rejection (phaseSum x) (phaseSum c) ((q:ℂ)+∑i,t i)
    (fun m => phaseSum (endpoint (fun j => c j-h j) (fun j => c j+h j) m)-phaseSum c)
    (fun m => ((q:ℂ)+∑i,e m i)-((q:ℂ)+∑i,t i)) er
    q r target rho tau tol hq hmid hfloor htarget
  · intro m
    exact difference_rounding_lt _ _ _ _ q
      (midpoint_sum_rounding_lt q _ (e m) (her m) (hei m)) hmid
  · exact hefloor
  · exact phaseSum_small_box_endpoint x c h hx hh
  · exact htol
  · exact hreject

end
end Seed0024ClusterTube20261007
#print axioms Seed0024ClusterTube20261007.phase_midpoint_rejection
#print axioms Seed0024ClusterTube20261007.phase_all_endpoints_rejection
