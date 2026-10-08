module
public import ReflectedMomentKernelTest
import all ReflectedMomentKernelTest
import all ReflectedMomentInteger
import all ReflectedFullTable
import all ReflectedLaurentList
public section
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
namespace Centiradian20261006.ReflectedLaurent
theorem seedMoment_0000 : seedMoment ⟨0,0,0,0⟩=(0,0) := by exact seedMoment_zero_order
theorem seedMoment_0001 : seedMoment ⟨0,0,0,1⟩=(0,0) := by decide +kernel
theorem seedMoment_0010 : seedMoment ⟨0,0,1,0⟩=(0,0) := by decide +kernel
theorem seedMoment_0100 : seedMoment ⟨0,1,0,0⟩=(0,0) := by decide +kernel
theorem seedMoment_1000 : seedMoment ⟨1,0,0,0⟩=(0,0) := by exact seedMoment_first0
end Centiradian20261006.ReflectedLaurent
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_0000
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_0001
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_0010
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_0100
#print axioms Centiradian20261006.ReflectedLaurent.seedMoment_1000
