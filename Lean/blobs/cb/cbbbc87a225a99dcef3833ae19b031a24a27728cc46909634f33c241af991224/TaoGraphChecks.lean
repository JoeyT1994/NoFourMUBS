import TaoGraphData

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem kept_boxes_small : ∀ v : Fin 90, IntervalKernel.smallBoxCheck (boxes v) = true := by
  decide

theorem single_refutation_checks : checkClique O Finset.univ 5 singleCert = true := by
  decide

theorem pair_refutation_checks : checkPair O U Finset.univ Finset.univ 5 pairCert = true :=
  single_refutation_checks

theorem no_five_clique : ¬ HasClique O Finset.univ 5 :=
  checkClique_sound O Finset.univ 5 singleCert single_refutation_checks

theorem no_two_five_cliques : ¬ HasPair O U Finset.univ Finset.univ 5 :=
  checkPair_sound O U Finset.univ Finset.univ 5 pairCert pair_refutation_checks

#print axioms kept_boxes_small
#print axioms single_refutation_checks
#print axioms pair_refutation_checks
#print axioms no_five_clique
#print axioms no_two_five_cliques

end Mub6.Numerical.GraphKernel.TaoCatalogue
