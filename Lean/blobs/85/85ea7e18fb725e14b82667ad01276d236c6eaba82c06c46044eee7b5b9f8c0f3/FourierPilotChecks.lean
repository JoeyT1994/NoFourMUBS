import FourierPilotNodes000096
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def pairCert : PairCertificate (Fin 48) := cert114
theorem root_candidates : s0 = Finset.univ := by decide +kernel
theorem pair_refutation_checks :
    checkPair O U Finset.univ Finset.univ 5 pairCert = true := by
  change checkPair O U Finset.univ Finset.univ 5 cert114 = true
  simpa only [root_candidates] using checked114
theorem no_two_five_cliques : ¬ HasPair O U Finset.univ Finset.univ 5 :=
  checkPair_sound O U Finset.univ Finset.univ 5 pairCert pair_refutation_checks

#print axioms root_candidates
#print axioms pair_refutation_checks
#print axioms no_two_five_cliques
end FourierPilot

#print axioms FourierPilot.root_candidates
#print axioms FourierPilot.pair_refutation_checks
#print axioms FourierPilot.no_two_five_cliques
