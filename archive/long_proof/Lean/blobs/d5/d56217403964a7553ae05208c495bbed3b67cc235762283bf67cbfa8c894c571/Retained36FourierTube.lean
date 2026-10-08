import FourierTubeMetric
import LocatedPhysicalFourier
import FourierModelBinding

/-! Connected geometric theorem for every physical maximal carrier represented
by any of the 36 literal retained closed boxes. This is a distance theorem.
Exclusion of four MUBs still requires the independently verified F6 tube
exclusion; no such exclusion is assumed or concealed here. -/
set_option autoImplicit false
namespace Seed0024Mathematical20261007
open Centiradian20261006 Mub6.GlobalBoxCover20261006 Seed0024Geometry20261007
noncomputable section

theorem physical_small_seed_inside_f6_tube {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)≤5*localDelta^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖≤3*localDelta) :
    InsideF6Tube H ((3:ℝ)/100) := by
  obtain ⟨rows,cols,alpha,beta,hH',hmatch,hs⟩ :=
    physical_located_fourier hH hd hm hsmall hl1
  rw [repeatedFourier_eq_explicitPairedFamily] at hmatch
  exact insideF6Tube_of_reindex hH.1 rows cols
    (actual_to_fourier_tube (reindexCarrier H rows cols) hH'.1 alpha beta hmatch hs)

/-- Actual closed box membership gives all quantitative premises. The result
uses an explicit single row-monomial Fourier reference for all six columns. -/
theorem retained36_inside_f6_tube {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    InsideF6Tube H ((3:ℝ)/100) := by
  have hs := actual_seed_entry_small hb hx hphase
  exact physical_small_seed_inside_f6_tube hH hd hm hs.1 (by
    simpa only [localDelta,div_eq_mul_inv,mul_assoc] using hs.2)

/-- In particular the whole carrier lies in the radius used by the supplier's
expanded ClusterTube theorem. That theorem is a separate formal obligation. -/
theorem retained36_inside_one_thirtieth {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (hm : Maximal H) {b : SeedBox}
    (hb : b∈Seed0024Geometry20261007.residual) {x : Fin 4 → ℝ}
    (hx : b.box.Contains x) (hphase : PhaseCoordinates (seedEntries H) x) :
    InsideF6Tube H ((1:ℝ)/30) :=
  insideF6Tube_mono (retained36_inside_f6_tube hH hd hm hb hx hphase) (by norm_num)

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.physical_small_seed_inside_f6_tube
#print axioms Seed0024Mathematical20261007.retained36_inside_f6_tube
#print axioms Seed0024Mathematical20261007.retained36_inside_one_thirtieth
