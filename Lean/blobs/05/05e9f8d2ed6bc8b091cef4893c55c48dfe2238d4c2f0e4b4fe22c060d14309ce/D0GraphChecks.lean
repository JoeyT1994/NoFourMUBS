import D0GraphData
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.GraphKernel

theorem pair_refutation_checks :
    checkPair O U Finset.univ Finset.univ 5 pairCert = true := by
  decide +kernel

theorem no_two_five_cliques : ¬ HasPair O U Finset.univ Finset.univ 5 :=
  checkPair_sound O U Finset.univ Finset.univ 5 pairCert pair_refutation_checks

theorem positive_single_five_clique :
    CliqueIn O Finset.univ 5 positiveControl := by
  decide +kernel

theorem has_single_five_clique : HasClique O Finset.univ 5 :=
  ⟨positiveControl, positive_single_five_clique⟩

#print axioms pair_refutation_checks
#print axioms no_two_five_cliques
#print axioms positive_single_five_clique
#print axioms has_single_five_clique
end Mub6.Numerical.GraphKernel.D0Prototype
