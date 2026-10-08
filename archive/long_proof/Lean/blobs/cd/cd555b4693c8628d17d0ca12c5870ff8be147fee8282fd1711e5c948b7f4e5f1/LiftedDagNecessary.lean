import LiftedManifestDag

/-! Physical forward transport through the concrete DAG certificate.
This retains every hypothesis of the prior lifted necessary-system theorem. -/
namespace Mub6.Classification.LiftedDagBridge.Concrete
open Mub6 Mub6.Numerical Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourPhaseFourierBridge
open Mub6.Classification.LiftedAtlasPolynomial SharedRationalIncidence
open Mub6.Classification.LiftedAdmissibility
noncomputable section

theorem constraint_counts :
    Fintype.card NecessaryIndex = 28 ∧ Fintype.card (Bool × Fin 5) = 10 ∧
      Fintype.card Bool = 2 := by
  simp [necessary_equation_count, Fintype.card_prod]

theorem coordinates_point (v : Fin 20 → ℂ) : coordinates (point v) = v := by
  funext i
  exact value_z v i

/-- The same HybridGuards and NormalizedGoodSideCarrier hypotheses imply
all 28 DAG equations, all ten weak guards and both strict guards. -/
theorem hybrid_dag_necessary (a b c d : ℂ) (tag : LiftedTag)
    (maskB maskC : PoleMask) (FB : ActivePole maskB → ℂ) (FC : ActivePole maskC → ℂ)
    (hG : HybridGuards a b c d tag maskB maskC FB FC)
    (hF : NormalizedGoodSideCarrier (hybridCarrier a b c d tag maskB maskC FB FC)) :
    Satisfies (point (hybridValues a b c d tag maskB maskC FB FC)) := by
  exact (satisfies_iff _).mpr (hybrid_necessary_system a b c d tag maskB maskC FB FC hG hF)

#print axioms Mub6.Classification.LiftedDagBridge.Concrete.constraint_counts
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.coordinates_point
#print axioms Mub6.Classification.LiftedDagBridge.Concrete.hybrid_dag_necessary
end
end Mub6.Classification.LiftedDagBridge.Concrete
