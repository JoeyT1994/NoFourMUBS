import ExactCentreData
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48

theorem rationalProbability_comm (z w : RationalRay) :
    rationalProbability z w = rationalProbability w z := by
  have hr : rationalOverlapRe z w = rationalOverlapRe w z := by
    unfold rationalOverlapRe
    apply Finset.sum_congr rfl
    intro j _
    ring
  have hi : rationalOverlapIm z w = -rationalOverlapIm w z := by
    unfold rationalOverlapIm
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro j _
    ring
  unfold rationalProbability
  rw [hr, hi]
  ring

theorem centreProbability_comm (i j : Fin 48) :
    centreProbability i j = centreProbability j i :=
  rationalProbability_comm (rationalCentre i) (rationalCentre j)

theorem orthGraph_comm : ∀ i j : Fin 48, orthGraph i j = orthGraph j i := by decide

theorem ubGraph_comm : ∀ i j : Fin 48, ubGraph i j = ubGraph j i := by decide

def CentrePairAllows (i j : Fin 48) : Prop :=
  (orthGraph i j = true ∨ ¬rationalOrthogonalPredicate (centreProbability i j)) ∧
  (ubGraph i j = true ∨ ¬rationalUnbiasedPredicate (centreProbability i j))

instance (i j : Fin 48) : Decidable (CentrePairAllows i j) :=
by
  unfold CentrePairAllows
  infer_instance

theorem CentrePairAllows.symm {i j : Fin 48} (h : CentrePairAllows i j) :
    CentrePairAllows j i := by
  unfold CentrePairAllows at h ⊢
  simpa only [orthGraph_comm j i, ubGraph_comm j i, centreProbability_comm j i] using h

#print axioms rationalProbability_comm
#print axioms centreProbability_comm
#print axioms orthGraph_comm
#print axioms ubGraph_comm
#print axioms CentrePairAllows.symm
end Mub6.Numerical.ClusterTube48
