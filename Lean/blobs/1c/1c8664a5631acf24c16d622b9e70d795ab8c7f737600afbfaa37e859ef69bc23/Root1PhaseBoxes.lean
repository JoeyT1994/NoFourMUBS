import Root1Centers
import QuadraticNaturalRange
import Root0PhaseBoxes
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot1Centers20261003
noncomputable section
def Phase0 : RationalRectangle := ShoulderRoot0Moments20261003.Phase0
def Phase1 : RationalRectangle := ShoulderRoot0Moments20261003.Phase1
def Phase2 : RationalRectangle := ShoulderRoot0Moments20261003.Phase2
def Re3 : Interval := ⟨(-274877778253/274877906944),(-1099498568385/1099511627776)⟩
def Im3 : Interval := ⟨(-5358892795/1099511627776),(-531972933/549755813888)⟩
def Phase3 : RationalRectangle := rectangle Re3 Im3
end
end ShoulderRoot1Moments20261003
