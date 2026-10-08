import ConcreteTwoRegions
import RadianSeedBounds
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
def moments : SidePolynomialBoxes := ConcreteTwoRegions.moments0
def hull0 : Label := ⟨⟨(-265389/524288),(-519635/1048576),(-910765/1048576),(-904315/1048576)⟩,⟨(-125697/262144),(-462809/1048576),(460085/524288),(235229/262144)⟩⟩
theorem hull0_reject : anyCheck (pairChecks moments hull0 hull0)=true := by decide +kernel
#print axioms hull0_reject
def hull1 : Label := ⟨⟨(-265389/524288),(-516839/1048576),(904315/1048576),(912355/1048576)⟩,⟨(224161/524288),(64955/131072),(113845/131072),(14811/16384)⟩⟩
theorem hull1_reject : anyCheck (pairChecks moments hull1 hull1)=true := by decide +kernel
#print axioms hull1_reject
def seed0 : RationalRectangle := ⟨(-269950791/536870912),(-536270925/1073741824),(-465117807/536870912),(-464065969/536870912)⟩
def seed1 : RationalRectangle := ⟨(123254091/268435456),(496739573/1073741824),(-953865733/1073741824),(-951930795/1073741824)⟩
def seed2 : RationalRectangle := ⟨(131071/131072),(1073743873/1073741824),(-4194301/1073741824),(3/1073741824)⟩
def seed3 : RationalRectangle := ⟨(-536871685/536870912),(-1073737187/1073741824),(-1039013/1073741824),(3155295/1073741824)⟩
def EX : Fin 3 → RationalRectangle := ![boxPoint 1 0,seed0,seed2]
def EY : Fin 3 → RationalRectangle := ![boxPoint 1 0,seed1,seed3]
end Root0Angular20261003
