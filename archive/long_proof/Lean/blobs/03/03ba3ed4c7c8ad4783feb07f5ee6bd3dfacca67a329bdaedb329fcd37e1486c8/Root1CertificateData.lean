import TwoRegionSide
import RadianSeedBounds
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderRoot1Data20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
def cap : ℚ := (1/32)
def moments : SidePolynomialBoxes := ⟨⟨(-786725/524288),(-1569897/1048576),(453189/524288),(57033/65536)⟩,⟨(-485109/1048576),(-481461/1048576),(465317/524288),(936619/1048576)⟩,⟨(-566595/1048576),(-139907/262144),(-443815/524288),(-871247/1048576)⟩⟩
def hull0 : Label := ⟨⟨(-265389/524288),(-519635/1048576),(-910765/1048576),(-904315/1048576)⟩,⟨(-125697/262144),(-462809/1048576),(460085/524288),(235229/262144)⟩⟩
theorem hull0_reject : anyCheck (pairChecks moments hull0 hull0)=true := by decide +kernel
#print axioms hull0_reject
def hull1 : Label := ⟨⟨(-265389/524288),(-516839/1048576),(904315/1048576),(912355/1048576)⟩,⟨(445411/1048576),(8163/16384),(909161/1048576),(949275/1048576)⟩⟩
theorem hull1_reject : anyCheck (pairChecks moments hull1 hull1)=true := by decide +kernel
#print axioms hull1_reject
def seed0 : RationalRectangle := ⟨(-269950791/536870912),(-536270925/1073741824),(-465117807/536870912),(-464065969/536870912)⟩
def seed1 : RationalRectangle := ⟨(123254091/268435456),(496739573/1073741824),(-953865733/1073741824),(-951930795/1073741824)⟩
def seed2 : RationalRectangle := ⟨(131071/131072),(1073743873/1073741824),(-4194301/1073741824),(3/1073741824)⟩
def seed3 : RationalRectangle := ⟨(-536871685/536870912),(-536864535/536870912),(-5233303/1073741824),(-1039007/1073741824)⟩
def seeds : Fin 4 → RationalRectangle := ![seed0,seed1,seed2,seed3]
def EX : Fin 3 → RationalRectangle := ![boxPoint 1 0,seed0,seed2]
def EY : Fin 3 → RationalRectangle := ![boxPoint 1 0,seed1,seed3]
end ShoulderRoot1Data20261003
