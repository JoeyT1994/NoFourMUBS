import CentreLabelSoundness
import RayDomainLabelAssignment
import LiteralGraphExclusion
import Retained36ApproximateRays

/-! The finite graph and physical ray transport are now connected.
The sole remaining premise in the exclusion is the displayed complete
centre-ball cover of every dephased approximate-F6 ray. No such cover is
asserted here, so this module gives no unconditional physical box closure. -/
noncomputable section
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel Mub6.Numerical.ClusterTube48
open Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

def ApproximateF6CentreCover : Prop :=
  ∀ z : Vector,IsApproximateF6Ray z → ∃i : Fin 48,centreProjectorLabel i z

theorem covered_approximate_pair_has_literal_graph_pair
    (hcover : ApproximateF6CentreCover) {U V : Fin 6 → Vector}
    (hpair : IsApproximateF6SixPair U V) :
    HasPairSized orthGraph ubGraph Finset.univ Finset.univ 6 6 :=
  domain_pair_has_graph_pair (fun _ h => h.1) hcover orthGraph_loop_false
    ubGraph_loop_false actual_centre_sound_label_graph hpair.1 hpair.2.1
    hpair.2.2.1 hpair.2.2.2.1 hpair.2.2.2.2

theorem approximate_f6_six_pair_excluded (hcover : ApproximateF6CentreCover) :
    ¬∃ U V : Fin 6 → Vector,IsApproximateF6SixPair U V := by
  rintro ⟨U,V,hpair⟩
  exact literal_graph_no_six_pair (covered_approximate_pair_has_literal_graph_pair hcover hpair)

theorem retained36_maximal_population_excluded_of_centre_cover
    (hcover : ApproximateF6CentreCover) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) : ¬MaximalQuartetPhasePopulation x := by
  intro hpop
  exact approximate_f6_six_pair_excluded hcover
    (retained36_maximal_population_approximate_pair hb hx hpop)

theorem retained36_no_live_of_centre_cover
    (hcover : ApproximateF6CentreCover) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) :
    ¬Live MaximalQuartetPhasePopulation b.box := by
  rintro ⟨x,hpop,hx⟩
  exact retained36_maximal_population_excluded_of_centre_cover hcover hb hx hpop

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.covered_approximate_pair_has_literal_graph_pair
#print axioms Seed0024ClusterTube20261007.approximate_f6_six_pair_excluded
#print axioms Seed0024ClusterTube20261007.retained36_maximal_population_excluded_of_centre_cover
#print axioms Seed0024ClusterTube20261007.retained36_no_live_of_centre_cover
