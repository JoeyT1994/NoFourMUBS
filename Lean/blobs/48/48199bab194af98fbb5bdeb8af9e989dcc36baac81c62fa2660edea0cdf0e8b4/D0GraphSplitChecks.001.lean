import D0GraphNodes046
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def rootCert := cert1402
theorem root_candidates : c0 = Finset.univ := by decide +kernel
theorem pair_refutation_checks : checkPair O U Finset.univ Finset.univ 5 rootCert = true := by
  change checkPair O U Finset.univ Finset.univ 5 cert1402 = true
  simpa only [root_candidates] using checked1402
theorem no_two_five_cliques : ¬ HasPair O U Finset.univ Finset.univ 5 :=
  checkPair_sound O U Finset.univ Finset.univ 5 rootCert pair_refutation_checks
#print axioms pair_refutation_checks
#print axioms no_two_five_cliques
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
