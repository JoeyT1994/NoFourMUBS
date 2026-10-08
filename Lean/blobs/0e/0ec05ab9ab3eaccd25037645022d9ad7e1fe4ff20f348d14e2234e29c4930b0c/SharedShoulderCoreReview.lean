import ParametricPhysicalSide

set_option autoImplicit false
namespace SharedShoulderCoreReview20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GlobalCornerDomain SharedSeedIntervals SideColumns
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open ShoulderPhaseCube20261003 ShoulderAngular20261003 ShoulderPhysicalSide20261003
noncomputable section

theorem literal_closed_half_cover {c r : Fin 4 → ℚ} {θ : Fin 4 → ℝ}
    (h : ∀ k, |θ k-(c k:ℝ)|≤(r k:ℝ)) :
    ∃ b : Fin 4 → Bool, ∀ k,
      |θ k-((c k + if b k then r k/2 else -(r k/2):ℚ):ℝ)|≤((r k/2:ℚ):ℝ) :=
  half_cubes_cover h

/-- Degenerate radius-zero cubes are included by the shared geometry. -/
theorem zero_radius_center (c : Fin 4 → ℚ) :
    Cube c (fun _ => 0) (fun k => (c k:ℝ)) := by
  intro k
  simp

/-- All numerical premises must be proved uniformly on the entire closed cube.
The physical target remains the GlobalMax representative domain. -/
theorem literal_conditional_physical_consumer
    (c r : Fin 4 → ℚ) (cap : ℚ) (M : SidePolynomialBoxes)
    (E : Fin 4 → RationalRectangle) (L K : Label)
    (hL : anyCheck (pairChecks M L L)=true)
    (hK : anyCheck (pairChecks M K K)=true)
    (hcover : LeafStatement cap M (seedEX E) (seedEY E) L K ⟨0,1⟩ ⟨0,1⟩)
    (hcap : ∀ θ, Cube c r θ →
      (ShoulderPhaseGate20261002.radicand (ShoulderRoot0Program20261003.s θ)
        (ShoulderRoot0Program20261003.t θ) (ShoulderRoot0Program20261003.r θ)).re≤(cap:ℝ))
    (hmoment : ∀ θ, Cube c r θ →
      CoversSidePolynomials M (-(1+cis (θ 0)+cis (θ 2)))
        (-(1+cis (θ 1)+cis (θ 3)))
        (-(1+cis (θ 1)*star (cis (θ 0))+cis (θ 3)*star (cis (θ 2)))))
    (hphase : ∀ θ, Cube c r θ → ∀ k, MemRectangle (E k) (cis (θ k))) :
    ¬ ∃ H : CompactCover.Mat6, GlobalMax H ∧
      ∃ θ : Fin 4 → ℝ, (∀ k, |θ k-(c k:ℝ)|≤(r k:ℝ)) ∧
        H 1 1=cis (θ 0) ∧ H 1 2=cis (θ 1) ∧
        H 2 1=cis (θ 2) ∧ H 2 2=cis (θ 3) := by
  rintro ⟨H,hH,θ,hθ,h00,h01,h10,h11⟩
  exact cube_exclusion c r cap M E L K hL hK hcover hcap hmoment hphase hH
    ⟨θ,hθ,h00,h01,h10,h11⟩

end
#print axioms literal_closed_half_cover
#print axioms zero_radius_center
#print axioms literal_conditional_physical_consumer
end SharedShoulderCoreReview20261003
