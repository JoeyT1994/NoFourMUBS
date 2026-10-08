import ElementaryPowerFibres
import SideFourierActual
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Data.Fintype.Perm

/-! A finite superset of all literal recipe outputs and all their column
permutations. The superset deliberately retains both delta signs, including
the orientation tie; no root count is assumed. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
noncomputable section

def finiteRecipeImages (s t r : ℂ) : Set Hadamard6.Mat3 :=
  ⋃ epsilon ∈ {e : ℝ | e^2=1},
  ⋃ delta ∈ {d : ℂ | d^2=prescribedDeltaRadicand s t r epsilon},
  ⋃ w ∈ {v : ℂ | v^3=prescribedXi s t r epsilon delta},
    Set.range (fun p : Equiv.Perm (Fin 3) =>
      (fun i j => prescribedSide s t r epsilon delta w i (p j) : Hadamard6.Mat3))

theorem finiteRecipeImages_finite (s t r : ℂ) :
    (finiteRecipeImages s t r).Finite := by
  classical
  unfold finiteRecipeImages
  apply (square_fibre_finite (1 : ℝ)).biUnion
  intro epsilon he
  apply (square_fibre_finite (prescribedDeltaRadicand s t r epsilon)).biUnion
  intro delta hd
  apply (cube_fibre_finite ElementaryFourier.reconstructionOmega
    (prescribedXi s t r epsilon delta)
    ElementaryFourier.reconstructionOmega_unit_quadratic.2).biUnion
  intro w hw
  exact Set.finite_range _

#print axioms finiteRecipeImages_finite
end
end StrictReconstruction20261007.SideIntrinsic
