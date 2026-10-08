import GraphKernel

namespace Mub6.Numerical.GraphKernel.Controls

def complete {n : ℕ} (i j : Fin n) : Bool := decide (i ≠ j)
def empty {n : ℕ} (_ _ : Fin n) : Bool := false

theorem empty_graph_one_colour :
    checkClique (empty : Graph (Fin 10)) Finset.univ 5 (.color 1 (fun _ => 0)) = true := by
  decide

theorem wrong_complete_graph_colouring_rejected :
    checkClique (complete : Graph (Fin 10)) Finset.univ 5 (.color 1 (fun _ => 0)) = false := by
  decide

theorem zero_needed_not_refuted :
    checkClique (empty : Graph (Fin 10)) Finset.univ 0 .size = false := by
  decide

theorem complete_ten_has_pair :
    HasPair (complete : Graph (Fin 10)) complete Finset.univ Finset.univ 5 := by
  refine ⟨{0,1,2,3,4}, {5,6,7,8,9}, ?_, ?_, ?_, ?_⟩ <;> decide

/-- Every possible forged proof tree is rejected on this positive control. -/
theorem complete_ten_has_no_valid_refutation (cert : PairCertificate (Fin 10)) :
    checkPair complete complete Finset.univ Finset.univ 5 cert ≠ true := by
  intro h
  exact checkPair_sound complete complete Finset.univ Finset.univ 5 cert h complete_ten_has_pair

def noCrossCert : PairCertificate (Fin 10) :=
  .split 0 (.cross .size)
    (.split 1 (.cross .size)
      (.split 2 (.cross .size)
        (.split 3 (.cross .size)
          (.split 4 (.cross .size)
            (.split 5 (.cross .size) (.first .size))))))

/-- The paired checker closes this graph although its O graph has five-cliques. -/
theorem no_cross_pair_refutation :
    checkPair complete empty Finset.univ Finset.univ 5 noCrossCert = true := by
  decide

theorem no_cross_still_has_five_clique : HasClique (complete : Graph (Fin 10)) Finset.univ 5 := by
  refine ⟨{0,1,2,3,4}, ?_⟩
  decide

#print axioms empty_graph_one_colour
#print axioms wrong_complete_graph_colouring_rejected
#print axioms zero_needed_not_refuted
#print axioms complete_ten_has_pair
#print axioms complete_ten_has_no_valid_refutation
#print axioms no_cross_pair_refutation
#print axioms no_cross_still_has_five_clique

end Mub6.Numerical.GraphKernel.Controls
