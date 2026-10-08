import QuartetTubeRays
import Retained36FourierTube
import MaximalQuartetRadian

/-! The literal retained closed boxes now lead to the actual two remaining
bases in the approximate Fourier-ray domain. This is a physical reduction,
not a finite-cover theorem or a proof that these boxes are excluded. -/
noncomputable section
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006
open Centiradian20261006 Seed0024Mathematical20261007 Seed0024Geometry20261007

namespace Seed0024ClusterTube20261007

theorem retained36_quartet_approximate_pair {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) (hd : Dephased (phaseOverlap (B 0) (B 1)))
    (hm : Maximal (phaseOverlap (B 0) (B 1))) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x)
    (hphase : PhaseCoordinates (seedEntries (phaseOverlap (B 0) (B 1))) x) :
    ∃ U V : Fin 6 → Vector,IsApproximateF6SixPair U V :=
  actual_quartet_tube_gives_approximate_six_pair hB hd.1
    (retained36_inside_one_thirtieth (actual_phaseOverlap_physical hB) hd hm hb hx hphase)

theorem retained36_maximal_population_approximate_pair {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hpop : MaximalQuartetPhasePopulation x) :
    ∃ U V : Fin 6 → Vector,IsApproximateF6SixPair U V := by
  obtain ⟨B,hB,_,hd,hm,hphase⟩ := hpop
  exact retained36_quartet_approximate_pair hB hd hm hb hx hphase

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.retained36_quartet_approximate_pair
#print axioms Seed0024ClusterTube20261007.retained36_maximal_population_approximate_pair
