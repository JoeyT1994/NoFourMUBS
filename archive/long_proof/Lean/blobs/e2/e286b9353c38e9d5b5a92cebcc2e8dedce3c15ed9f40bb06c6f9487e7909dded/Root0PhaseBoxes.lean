import Root0Centers
import QuadraticNaturalRange
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot0Moments20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003 ShoulderQuadratic20261003
open ShoulderRoot0Centers20261003
noncomputable section
def Re0 : Interval := ⟨(-276429083197/549755813888),(-549141429517/1099511627776)⟩
def Im0 : Interval := ⟨(-952559452215/1099511627776),(-475203553087/549755813888)⟩
def Phase0 : RationalRectangle := rectangle Re0 Im0
def Re1 : Interval := ⟨(31553047445/68719476736),(508660353995/1099511627776)⟩
def Im1 : Interval := ⟨(-976756648317/1099511627776),(-974777135497/1099511627776)⟩
def Phase1 : RationalRectangle := rectangle Re1 Im1
def Re2 : Interval := ⟨(1099503239177/1099511627776),1⟩
def Im2 : Interval := ⟨(-4294956715/1099511627776),(171/549755813888)⟩
def Phase2 : RationalRectangle := rectangle Re2 Im2
def Re3 : Interval := ⟨-1,(-1099506880445/1099511627776)⟩
def Im3 : Interval := ⟨(-531973275/549755813888),(1615508307/549755813888)⟩
def Phase3 : RationalRectangle := rectangle Re3 Im3
end
end ShoulderRoot0Moments20261003
