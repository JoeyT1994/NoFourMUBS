import LiteralClusterGraph
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1600000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel

/- The elementary weakening adds orthogonality edges. This explicit surviving
pair proves that the weakened literal graph cannot close the six-plus-six
branch. It is not a pair of physical MUBs or a global counterexample. -/
def weakOrthRows : Fin 48 → ℕ := ![190627744695552,79957981941868,159160426005394,72094028865922,106641194331748,67551372864850,37908736014898,71543870660876,234787902246061,231872768003156,125529786247985,112511666415472,278238818385986,65255465028856,3818301202275,239239463917845,44127822316733,276698176197068,79957949763814,165803490106058,94780344526570,165253330328268,179431881637512,40488745974780,224484296858403,44677947032763,43850589656628,43457291037831,216805272593369,43456920300559,174318077321557,263162663670155,12077528934301,137458206611009,245445438380049,241917542298963,246726557755643,187007562630770,206233670281845,158610702107422,101458875969961,48816270765632,161692595525921,91739478536227,226285724546852,143429069913201,27619073892250,58260449825541]
def weakOrthGraph (i j : Fin 48) : Bool := (weakOrthRows i).testBit j.val
def weakFirst : Finset (Fin 48) := {0,28,42,8,24,30}
def weakSecond : Finset (Fin 48) := {12,34,44,15,17,33}

theorem weakFirst_is_six_clique :
    CliqueIn weakOrthGraph Finset.univ 6 weakFirst := by decide
theorem weakSecond_is_six_clique :
    CliqueIn weakOrthGraph Finset.univ 6 weakSecond := by decide
theorem weak_pair_disjoint : Disjoint weakFirst weakSecond := by decide
theorem weak_pair_cross : Cross ubGraph weakFirst weakSecond := by decide
theorem weak_graph_has_six_pair :
    HasPairSized weakOrthGraph ubGraph Finset.univ Finset.univ 6 6 :=
  ⟨weakFirst,weakSecond,weakFirst_is_six_clique,weakSecond_is_six_clique,
    weak_pair_disjoint,weak_pair_cross⟩
theorem weak_graph_cannot_check (cert : PairCertificate (Fin 48)) :
    checkPairSized weakOrthGraph ubGraph Finset.univ Finset.univ 6 6 cert≠true := by
  intro h
  exact checkPairSized_six_sound weakOrthGraph ubGraph cert h weak_graph_has_six_pair

#print axioms weakFirst_is_six_clique
#print axioms weakSecond_is_six_clique
#print axioms weak_pair_disjoint
#print axioms weak_pair_cross
#print axioms weak_graph_has_six_pair
#print axioms weak_graph_cannot_check
end Mub6.Numerical.ClusterTube48
