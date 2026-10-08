import TaoQuartetTerminal
import D0CircleBinding
import D0FullInterface
set_option autoImplicit false
namespace Mub6.ExceptionalTerminals
open Mub6 Numerical Numerical.CircleFullPrototype Worker12 D0Binding

theorem d0_standard_pair_exclusion_of_cover
    (hcover : Numerical.CircleFullD0.chartCoverObligation) : PublishedD0StandardPairExclusion := by
  apply standard_pair_excluded_of_no_extension
  intro B hB hflat heq
  apply D0CircleBinding.no_normalized_extension_of_circle_cover
    hcover hB hflat
  rw [heq, normalize_eq, NormalizedWitness.raw_carrier_normalized]
  · exact D0CircleBinding.publishedD0_mem_carrier
  · intro k
    fin_cases k <;> rfl


#print axioms d0_standard_pair_exclusion_of_cover
end Mub6.ExceptionalTerminals
