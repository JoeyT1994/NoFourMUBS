import FourierPhaseTargets
import QuartetTubeRays

/-! Actual approximate Fourier rays enter the same closed equal-angle root
grid used by the supplier. This proves the frontend, not rejection or label
soundness at any numerical leaf and not completeness of a leaf forest. -/
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

def StrictPhaseDomain (theta : Turns) : Prop :=
  ∀ k : Fin 6,|‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|<(1:ℝ)/5

def ClosedPhaseDomain (theta : Turns) : Prop :=
  ∀ k : Fin 6,|‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|≤(1:ℝ)/5

theorem approximate_turnRay_iff (theta : Turns) :
    IsApproximateF6Ray (turnRay theta) ↔ StrictPhaseDomain theta := by
  constructor
  · intro h k
    simpa only [turnRay_fourier_overlap] using h.2 k
  · intro h
    refine ⟨turnRay_isRawUnitRay theta,?_⟩
    intro k
    simpa only [turnRay_fourier_overlap] using h k

theorem strictPhaseDomain_closed {theta : Turns} (h : StrictPhaseDomain theta) :
    ClosedPhaseDomain theta := fun k => (h k).le

theorem approximate_ray_exists_phase_input (z : Mub6.Vector)
    (hz : IsApproximateF6Ray z) :
    ∃ theta : Turns,UnitCube theta ∧ turnRay theta=z ∧ StrictPhaseDomain theta := by
  obtain ⟨theta,hcube,hz'⟩ := rawUnitRay_exists_turns z hz.1
  refine ⟨theta,hcube,hz',?_⟩
  apply (approximate_turnRay_iff theta).1
  rw [hz']
  exact hz

theorem approximate_ray_in_supplier_root (z : Mub6.Vector)
    (hz : IsApproximateF6Ray z) :
    ∃ theta : Turns,∃ root : RootIndex,
      UnitCube theta ∧ turnRay theta=z ∧ StrictPhaseDomain theta ∧
      Valid (rootCell root) ∧ MemCell (rootCell root) theta := by
  obtain ⟨theta,hcube,hz',hphase⟩ := approximate_ray_exists_phase_input z hz
  obtain ⟨root,hroot⟩ := all_roots_cover theta hcube
  exact ⟨theta,root,hcube,hz',hphase,root_valid root,hroot⟩

theorem approximate_ray_in_closed_supplier_root (z : Mub6.Vector)
    (hz : IsApproximateF6Ray z) :
    ∃ theta : Turns,∃ root : RootIndex,
      turnRay theta=z ∧ ClosedPhaseDomain theta ∧
      Valid (rootCell root) ∧ MemCell (rootCell root) theta := by
  obtain ⟨theta,root,_,hz',hphase,hvalid,hroot⟩ := approximate_ray_in_supplier_root z hz
  exact ⟨theta,root,hz',strictPhaseDomain_closed hphase,hvalid,hroot⟩

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.approximate_turnRay_iff
#print axioms Seed0024ClusterTube20261007.strictPhaseDomain_closed
#print axioms Seed0024ClusterTube20261007.approximate_ray_exists_phase_input
#print axioms Seed0024ClusterTube20261007.approximate_ray_in_supplier_root
#print axioms Seed0024ClusterTube20261007.approximate_ray_in_closed_supplier_root
