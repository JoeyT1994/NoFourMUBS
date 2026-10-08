import TaoBundlePilotLeft
import TaoBundlePilotRight
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotAssembly
def root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem covered : CoveredBy scale carrier boxes root := by
  apply coveredBy_split_literal root Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotLeft.root Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotRight.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotLeft.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotRight.covered
#print axioms covered
end Mub6.Numerical.IntegerIntervals.TaoBundle.TaoBundlePilotAssembly
