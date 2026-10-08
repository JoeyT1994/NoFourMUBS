import LiteralPairChunk016
import PhysicalLabelGraph
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel

def literalPairCertificate : PairCertificate (Fin 48) := pairCert398
theorem literal_pair_check :
    checkPairSized orthGraph ubGraph Finset.univ Finset.univ 6 6 literalPairCertificate=true := by
  simpa only [labelSet_univ] using pairCheck398
theorem literal_graph_no_six_pair :
    ¬HasPairSized orthGraph ubGraph Finset.univ Finset.univ 6 6 :=
  checkPairSized_six_sound orthGraph ubGraph literalPairCertificate literal_pair_check
theorem literal_six_label_check : checkSixLabelPair orthGraph ubGraph literalPairCertificate=true := by
  simp only [checkSixLabelPair,decide_eq_true orthGraph_loop_false,
    decide_eq_true ubGraph_loop_false,literal_pair_check,Bool.and_self]
/-- This is conditional on whole-ray coverage and necessary graph relations.
The literal graph check alone is not a physical tube exclusion. -/
theorem literal_graph_excludes_raw_six_pair {H : Mub6.BasisMatrix}
    {L : Fin 48 → Mub6.Vector → Prop}
    (hcover : CompleteLabelCover H L) (hgraph : SoundLabelGraph L orthGraph ubGraph) :
    ¬∃z w : Fin 6 → Mub6.Vector,IsRawSixPair H z w :=
  checked_48_label_graph_excludes_raw_six_pair hcover hgraph
    literalPairCertificate literal_six_label_check
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.literal_pair_check
#print axioms Mub6.Numerical.ClusterTube48.literal_graph_no_six_pair
#print axioms Mub6.Numerical.ClusterTube48.literal_six_label_check
#print axioms Mub6.Numerical.ClusterTube48.literal_graph_excludes_raw_six_pair
