import TaoBundleAssembly0143
import TaoBundleAssembly0149
import TaoBundleAssembly0153
import TaoBundleAssembly0155
import TaoBundleAssembly0156
import TaoBundleChunkBatch0607
import TaoBundleChunkBatch0608
import TaoBundleChunkBatch0610
import TaoBundleChunkBatch0611
import TaoBundleChunkBatch0612
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157
def root_6392155 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6392155 : CoveredBy scale carrier boxes root_6392155 := by
  apply coveredBy_split_literal root_6392155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0156.root_6392156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0156.root_6429135 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0156.cover_6392156
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0156.cover_6429135
#print axioms cover_6392155

def root_6388037 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6388037 : CoveredBy scale carrier boxes root_6388037 := by
  apply coveredBy_split_literal root_6388037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0155.root_6388038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6392155 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0155.cover_6388038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6392155
#print axioms cover_6388037

def root_6451556 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6451556 : CoveredBy scale carrier boxes root_6451556 := by
  apply coveredBy_split_literal root_6451556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2426.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2427.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2426.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2427.covered
#print axioms cover_6451556

def root_6449258 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6449258 : CoveredBy scale carrier boxes root_6449258 := by
  apply coveredBy_split_literal root_6449258 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2425.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6451556 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2425.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6451556
#print axioms cover_6449258

def root_6388036 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6388036 : CoveredBy scale carrier boxes root_6388036 := by
  apply coveredBy_split_literal root_6388036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6388037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6449258 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6388037
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6449258
#print axioms cover_6388036

def root_6331460 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6331460 : CoveredBy scale carrier boxes root_6331460 := by
  apply coveredBy_split_literal root_6331460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0155.root_6331461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6388036 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0155.cover_6331461
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6388036
#print axioms cover_6331460

def root_6302582 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302582 : CoveredBy scale carrier boxes root_6302582 := by
  apply coveredBy_split_literal root_6302582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6302583 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6331460 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6302583
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6331460
#print axioms cover_6302582

def root_6161046 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161046 : CoveredBy scale carrier boxes root_6161046 := by
  apply coveredBy_split_literal root_6161046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.root_6161047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6302582 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0153.cover_6161047
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6302582
#print axioms cover_6161046

def root_5870924 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870924 : CoveredBy scale carrier boxes root_5870924 := by
  apply coveredBy_split_literal root_5870924 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_5870925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6161046 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_5870925
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6161046
#print axioms cover_5870924

def root_5076038 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076038 : CoveredBy scale carrier boxes root_5076038 := by
  apply coveredBy_split_literal root_5076038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.root_5076039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_5870924 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.cover_5076039
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_5870924
#print axioms cover_5076038

def root_6455936 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455936 : CoveredBy scale carrier boxes root_6455936 := by
  apply coveredBy_split_literal root_6455936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2428.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2429.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2428.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2429.covered
#print axioms cover_6455936

def root_6455935 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455935 : CoveredBy scale carrier boxes root_6455935 := by
  apply coveredBy_split_literal root_6455935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6455936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2430.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6455936
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2430.covered
#print axioms cover_6455935

def root_6462329 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6462329 : CoveredBy scale carrier boxes root_6462329 := by
  apply coveredBy_split_literal root_6462329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2431.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2432.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2431.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2432.covered
#print axioms cover_6462329

def root_6462323 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462323_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462323_left_fuel : Nat := 1
def small_6462323_left_count : Nat := 1
def small_6462323_left_encoded : String := "00000003"
theorem small_6462323_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462323_left_root small_6462323_left_fuel small_6462323_left_count small_6462323_left_encoded = true := by
  decide +kernel
theorem small_6462323_left_covered : CoveredBy scale carrier boxes small_6462323_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462323_left_root small_6462323_left_fuel small_6462323_left_count small_6462323_left_encoded small_6462323_left_checked

theorem cover_6462323 : CoveredBy scale carrier boxes root_6462323 := by
  apply coveredBy_split_literal root_6462323 small_6462323_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462329 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462323_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462329
#print axioms cover_6462323

def root_6462322 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462322_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462322_right_fuel : Nat := 16
def small_6462322_right_count : Nat := 63
def small_6462322_right_encoded : String := "1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF00000005120701080000000405000100135D44F7050000FC135D80FD000000030CFD9BF9000000050F34D10200000001000000050000000500000000000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D0805000100135D44F7050000FC135D80FD00000003045489F900000005000000090000000500000000000000050000000412070108000000040500010000000009000000090000000200000003"
theorem small_6462322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462322_right_root small_6462322_right_fuel small_6462322_right_count small_6462322_right_encoded = true := by
  decide +kernel
theorem small_6462322_right_covered : CoveredBy scale carrier boxes small_6462322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462322_right_root small_6462322_right_fuel small_6462322_right_count small_6462322_right_encoded small_6462322_right_checked

theorem cover_6462322 : CoveredBy scale carrier boxes root_6462322 := by
  apply coveredBy_split_literal root_6462322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462323 small_6462322_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462323
  · exact small_6462322_right_covered
#print axioms cover_6462322

def root_6462316 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462316_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462316_left_fuel : Nat := 1
def small_6462316_left_count : Nat := 1
def small_6462316_left_encoded : String := "00000002"
theorem small_6462316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462316_left_root small_6462316_left_fuel small_6462316_left_count small_6462316_left_encoded = true := by
  decide +kernel
theorem small_6462316_left_covered : CoveredBy scale carrier boxes small_6462316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462316_left_root small_6462316_left_fuel small_6462316_left_count small_6462316_left_encoded small_6462316_left_checked

theorem cover_6462316 : CoveredBy scale carrier boxes root_6462316 := by
  apply coveredBy_split_literal root_6462316 small_6462316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462322 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462322
#print axioms cover_6462316

def root_6462315 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462315_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462315_right_fuel : Nat := 13
def small_6462315_right_count : Nat := 37
def small_6462315_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FD000000050000000600000001120701020000000108A912FD12073CFC0000000308A912FF0000000500000006120700FC08A912FF12073D080500010000000006000000050000000400000006000000031151E8FD000000050000000300000002"
theorem small_6462315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462315_right_root small_6462315_right_fuel small_6462315_right_count small_6462315_right_encoded = true := by
  decide +kernel
theorem small_6462315_right_covered : CoveredBy scale carrier boxes small_6462315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462315_right_root small_6462315_right_fuel small_6462315_right_count small_6462315_right_encoded small_6462315_right_checked

theorem cover_6462315 : CoveredBy scale carrier boxes root_6462315 := by
  apply coveredBy_split_literal root_6462315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462316 small_6462315_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462316
  · exact small_6462315_right_covered
#print axioms cover_6462315

def root_6462309 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462309_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462309_left_fuel : Nat := 1
def small_6462309_left_count : Nat := 1
def small_6462309_left_encoded : String := "00000001"
theorem small_6462309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462309_left_root small_6462309_left_fuel small_6462309_left_count small_6462309_left_encoded = true := by
  decide +kernel
theorem small_6462309_left_covered : CoveredBy scale carrier boxes small_6462309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462309_left_root small_6462309_left_fuel small_6462309_left_count small_6462309_left_encoded small_6462309_left_checked

theorem cover_6462309 : CoveredBy scale carrier boxes root_6462309 := by
  apply coveredBy_split_literal root_6462309 small_6462309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462315 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462315
#print axioms cover_6462309

def root_6461979 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6461979_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6461979_left_fuel : Nat := 24
def small_6461979_left_count : Nat := 157
def small_6461979_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB12073CFA0000000208A912FD00000005120700FC08A912FF000000050000000600000003120700FA08A912FD12073CFC0000000308A912FF00000005120701080000000405000100135D44F705000102135D44F9045489FB00000005138670FA0CFD9BFD00000005000000060000000200000001135D80F900000001045489FB000000050000000600000000135D80F70000000005000102135D44F9045489FB00000005138670FA0CFD9BFD000000050F34D0FC045489FF0000000500000006000000030000000200000001135D80F900000001045489FB1386ACFA000000020CFD9BFD0000000500000006138670FA0CFD9BFD0F350CFC00000003000000050F34D0FC000000060000000300000002120700FC08A912FF12073D0805000100135D44F705000102135D44F9045489FB00000005138670FA045489FD00000005000000060000000200000001135D80F900000001045489FB000000050000000600000000135D80F70000000005000102135D44F9045489FB00000005138670FA045489FD00000005138670FC0CFD9BFF0000000500000006000000030000000200000001135D80F900000001045489FB1386ACFA00000002045489FD0000000500000006138670FA045489FD1386ACFC000000030CFD9BFF000000050F34D1080000000400000006138670FC0CFD9BFF0F350D0800000006000000040000000600000003000000020000000412070108000000040000000600000003000000021151E8FD00000005000000031151E8FB000000050000000200000001"
theorem small_6461979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6461979_left_root small_6461979_left_fuel small_6461979_left_count small_6461979_left_encoded = true := by
  decide +kernel
theorem small_6461979_left_covered : CoveredBy scale carrier boxes small_6461979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6461979_left_root small_6461979_left_fuel small_6461979_left_count small_6461979_left_encoded small_6461979_left_checked

theorem cover_6461979 : CoveredBy scale carrier boxes root_6461979 := by
  apply coveredBy_split_literal root_6461979 small_6461979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6462309 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6461979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6462309
#print axioms cover_6461979

def root_6461974 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6461974_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6461974_right_fuel : Nat := 1
def small_6461974_right_count : Nat := 1
def small_6461974_right_encoded : String := "00000000"
theorem small_6461974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6461974_right_root small_6461974_right_fuel small_6461974_right_count small_6461974_right_encoded = true := by
  decide +kernel
theorem small_6461974_right_covered : CoveredBy scale carrier boxes small_6461974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6461974_right_root small_6461974_right_fuel small_6461974_right_count small_6461974_right_encoded small_6461974_right_checked

theorem cover_6461974 : CoveredBy scale carrier boxes root_6461974 := by
  apply coveredBy_split_literal root_6461974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6461979 small_6461974_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6461979
  · exact small_6461974_right_covered
#print axioms cover_6461974

def root_6481183 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6481183 : CoveredBy scale carrier boxes root_6481183 := by
  apply coveredBy_split_literal root_6481183 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2439.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2440.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2439.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2440.covered
#print axioms cover_6481183

def root_6481178 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6481178_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6481178_right_fuel : Nat := 1
def small_6481178_right_count : Nat := 1
def small_6481178_right_encoded : String := "00000003"
theorem small_6481178_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6481178_right_root small_6481178_right_fuel small_6481178_right_count small_6481178_right_encoded = true := by
  decide +kernel
theorem small_6481178_right_covered : CoveredBy scale carrier boxes small_6481178_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6481178_right_root small_6481178_right_fuel small_6481178_right_count small_6481178_right_encoded small_6481178_right_checked

theorem cover_6481178 : CoveredBy scale carrier boxes root_6481178 := by
  apply coveredBy_split_literal root_6481178 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6481183 small_6481178_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6481183
  · exact small_6481178_right_covered
#print axioms cover_6481178

def root_6480670 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480670_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480670_left_fuel : Nat := 20
def small_6480670_left_count : Nat := 239
def small_6480670_left_encoded : String := "12EA94FC000000030DE7CA000E5FD8F70DE7CA080E5FD8FF0115233913F895020569AC3B000000051340D4FA0793F0BD00000005128220FC0D4128800EFA10F700000005000000000000000A00000003000000020000000113F85902000000010569AC3B134110FA000000020793F0BD00000005128220FC0D4128800EFA10F7000000050000000000000005000000031340D4FA0793F0BD12825CFC000000030D4128800EFA10F7000000050000000000000005128220FC0D4128800EFA10F70D4128880EFA10FF00000007000000040EFA4CFF0000000400000008000000000EFA4CF7000000000D4128880000000A0EFA4CFF00000004008A92190000000A13FDF9020000000104DF1B1B1365F0FA00000002000000050000000A0000000300000002000000040E6014FF000000040115233913F895020569AC3B000000051340D4FA0793F0BD00000005128220FC0DAED87F0E9661080D4128800000000800000005000000040E962508000000040000000800000003000000020000000113F85902000000010569AC3B134110FA000000020793F0BD00000005128220FC0DAED87F0E9661080D4128800EFA10F7000000050000000000000005000000040E962508000000040D4128800000000900000005000000031340D4FA0793F0BD00000009128220FC0DAED87F0E9661080D412880000000080EFA4CF700000000008A921913FE3502000000090000000100000009000000040E96250800000004000000080000000300000002000000000E6014F7000000000DE7CA080E5FD8FF011523390000000A13F85902000000010569AC3B134110FA000000020793F0BD00000005128220FC0DAED8770E9661000D4128880000000A00000005000000000000000A000000030000000A000000040E6014FF000000040115233913F895020569AC3B134110FA000000020793F0BD00000005128220FC0DAED877000000050000000A000000030000000A0000000113F85902000000010569AC3B134110FA000000020793F0BD12825CFC0000000300000005128220FC0DAED8770E9661000DAED87F000000050E9625080000000400000005000000000E962500000000000DAED87F000000050E96250800000004008A92190000000513FDF9020000000105F43D5B000000050000000A000000031340D4FA0793F0BD0000000A128220FC0DAED8770E9661000DAED87F0E966108008A92190000000A13FDF9020000000104DF1B1B1365F0FA000000020000000A0000000A000000040E9625080000000400000009000000000E962500000000000000000A0000000300000002"
theorem small_6480670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6480670_left_root small_6480670_left_fuel small_6480670_left_count small_6480670_left_encoded = true := by
  decide +kernel
theorem small_6480670_left_covered : CoveredBy scale carrier boxes small_6480670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6480670_left_root small_6480670_left_fuel small_6480670_left_count small_6480670_left_encoded small_6480670_left_checked

theorem cover_6480670 : CoveredBy scale carrier boxes root_6480670 := by
  apply coveredBy_split_literal root_6480670 small_6480670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6481178 coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_6480670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6481178
#print axioms cover_6480670

def root_6480665 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480665_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480665_right_fuel : Nat := 1
def small_6480665_right_count : Nat := 1
def small_6480665_right_encoded : String := "00000002"
theorem small_6480665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6480665_right_root small_6480665_right_fuel small_6480665_right_count small_6480665_right_encoded = true := by
  decide +kernel
theorem small_6480665_right_covered : CoveredBy scale carrier boxes small_6480665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6480665_right_root small_6480665_right_fuel small_6480665_right_count small_6480665_right_encoded small_6480665_right_checked

theorem cover_6480665 : CoveredBy scale carrier boxes root_6480665 := by
  apply coveredBy_split_literal root_6480665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6480670 small_6480665_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6480670
  · exact small_6480665_right_covered
#print axioms cover_6480665

def root_6480109 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480109_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480109_left_fuel : Nat := 21
def small_6480109_left_count : Nat := 263
def small_6480109_left_encoded : String := "12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA080E5FD8FF000000050000000400000005000000000E6014F7000000000DE7CA080E5FD8FF00000005000000040000000512EA58FC0DE7CA000E5FD8F70DE7CA080E5FD8FF0115233913F895020793F0BB00000005128220FA0569AC3D000000051340D4FC0D412880000000060EFA4CF7000000000D4128880EFA10FF00000005000000040000000500000003000000020000000113F85902000000010793F0BB12825CFA000000020569AC3D000000051340D4FC0D412880000000060000000500000003128220FA0569AC3D134110FC000000030D4128800EFA10F70000000500000000000000051340D4FC0D4128800EFA10F70D4128880EFA10FF00000007000000040EFA4CFF0000000400000006000000000EFA4CF7000000000D4128880EFA10FF00000009000000040EFA4CFF00000004008A92190000000613FDF9020000000107095F9B00000006000000BB0000000300000002000000040E6014FF00000004011523390000000613F85902000000010793F0BB00000006128220FA0569AC3D134110FC000000030DAED87F0E9661080D412880000000060000000500000004000000060000000600000002000000000E6014F7000000000DE7CA080E5FD8FF0115233913F895020793F0BB00000005128220FA0569AC3D000000051340D4FC0DAED8770E9661000D4128880000000800000005000000000E962500000000000000000800000003000000020000000113F85902000000010793F0BB12825CFA000000020569AC3D0000000500000008128220FA0569AC3D134110FC000000030DAED8770E9661000D4128880EFA10FF000000050000000400000005000000000E962500000000000D41288800000008000000051340D4FC0DAED8770E9661000D412888000000080EFA4CFF00000004008A921913FE3502000000080000000100000008000000000E96250000000000000000080000000300000002000000040E6014FF000000040115233913F895020793F0BB00000006128220FA0569AC3D134110FC000000030DAED877000000050E962500000000000000000500000006000000020000000113F85902000000010793F0BB12825CFA000000020569AC3D0000000500000006128220FA0569AC3D134110FC000000030DAED8770E9661000DAED87F000000050E9625080000000400000005000000000E962500000000000DAED87F000000050E96250800000004008A92190000000513FDF9020000000107095F9B00000005000000BB1340D4FC0DAED8770E9661000DAED87F0E966108008A92190000000613FDF9020000000107095F9B00000006000000BB0000000400000006000000000E962500000000000DAED87F0E96610800000008000000040E9625080000000400000006000000030000000200000003"
theorem small_6480109_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6480109_left_root small_6480109_left_fuel small_6480109_left_count small_6480109_left_encoded = true := by
  decide +kernel
theorem small_6480109_left_covered : CoveredBy scale carrier boxes small_6480109_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6480109_left_root small_6480109_left_fuel small_6480109_left_count small_6480109_left_encoded small_6480109_left_checked

theorem cover_6480109 : CoveredBy scale carrier boxes root_6480109 := by
  apply coveredBy_split_literal root_6480109 small_6480109_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6480665 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_6480109_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6480665
#print axioms cover_6480109

def root_6480103 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480103_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6480103_left_fuel : Nat := 1
def small_6480103_left_count : Nat := 1
def small_6480103_left_encoded : String := "00000001"
theorem small_6480103_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6480103_left_root small_6480103_left_fuel small_6480103_left_count small_6480103_left_encoded = true := by
  decide +kernel
theorem small_6480103_left_covered : CoveredBy scale carrier boxes small_6480103_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6480103_left_root small_6480103_left_fuel small_6480103_left_count small_6480103_left_encoded small_6480103_left_checked

theorem cover_6480103 : CoveredBy scale carrier boxes root_6480103 := by
  apply coveredBy_split_literal root_6480103 small_6480103_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6480109 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6480103_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6480109
#print axioms cover_6480103

def root_6479339 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6479339_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6479339_left_fuel : Nat := 30
def small_6479339_left_count : Nat := 359
def small_6479339_left_encoded : String := "13E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030000000512EA58FC0DE7CA000E5FD8F70DE7CA080E5FD8FF000000050000000400000006000000000E6014F7000000000DE7CA080E5FD8FF033F67B90000000513BBF5020000000100000005000000040E6014FF00000004000000060000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA080E5FD8FF00000005000000040E6014FF00000004033F67B90000000513BBF5020000000100000005000000000E6014F7000000000DE7CA080000000A0E6014FF000000040000000A12EA58FC0DE7CA000E5FD8F70DE7CA080E5FD8FF033F67B913BC31020569AC3B000000051340D4FA0569AC3D000000051340D4FC0D4128800EFA10F70D4128880EFA10FF000000050000000400000006000000000EFA4CF7000000000000000A00000003000000020000000113BBF502000000010569AC3B134110FA000000020569AC3D000000051340D4FC0D412880000000060EFA4CF7000000000D4128880EFA10FF000000050000000400000005000000031340D4FA0569AC3D134110FC000000030D4128800EFA10F70D4128880000000A00000005000000000EFA4CF7000000000000000A1340D4FC0D4128800EFA10F70D4128880EFA10FF02B4D69913D10D0204DF1B1B000000051365B4FA04DF1B1D0000000500000006000000020000000113D0D1020000000104DF1B1B1365F0FA0000000204DF1B1D00000005000000061365B4FA04DF1B1D0000000A1365B4FC0CEDD7C00F422CF700000008000000000F4268F7000000000CEDD7C8000000090F4268FF00000004000000060000000300000002000000040EFA4CFF0000000402B4D6990000000613D0D1020000000104DF1B1B000000061365B4FA04DF1B1D000000080000000600000002000000000EFA4CF7000000000D4128880EFA10FF02B4D6990000000A13D0D1020000000104DF1B1B1365F0FA000000020000000A0000000A000000040EFA4CFF0000000402B4D69913D10D0204DF1B1B000000060000000A0000000113D0D1020000000104DF1B1B1365F0FA0000000204DF1B1D00000005000000061365B4FA04DF1B1D0000000A1365B4FC0D947940000000060000000A00000003000000020000000300000002000000040E6014FF00000004033F67B913BC31020569AC3B000000061340D4FA00000006000000020000000113BBF502000000010569AC3B000000061340D4FA0569AC3D134110FC000000030DAED87F0E9661080D412880000000060EFA4CF70000000002B4D6990000000513D0D1020000000104DF1B1B0000000500000008000000040E96250800000004000000060000000600000002000000000E6014F7000000000DE7CA080E5FD8FF033F67B913BC31020569AC3B0000000A0000000A0000000113BBF502000000010569AC3B134110FA000000020569AC3D0000000A1340D4FC0DAED8770E9661000D4128880000000A0EFA4CFF0000000402B4D6990000000513D0D1020000000105F43D5B000000050000000A000000000E962500000000000000000A000000031340D4FA0569AC3D0000000A1340D4FC0000000A0000000300000002000000040E6014FF00000004033F67B913BC31020569AC3B134110FA00000002000000061340D4FA0569AC3D0000000A1340D4FC0DAED8770E96610000000006000000000000000700000003000000020000000113BBF502000000010569AC3B134110FA000000020569AC3D134110FC000000030DAED877000000050E9625000000000000000005000000061340D4FA0569AC3D134110FC000000030000000A1340D4FC0DAED8770E9661000DAED87F0E96610802B4D6990000000613D0D1020000000104DF1B1B000000060000000A0000000400000006000000000E962500000000000DAED87F0E9661080000000700000004000000070000000300000002000000030000000200000001"
theorem small_6479339_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6479339_left_root small_6479339_left_fuel small_6479339_left_count small_6479339_left_encoded = true := by
  decide +kernel
theorem small_6479339_left_covered : CoveredBy scale carrier boxes small_6479339_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6479339_left_root small_6479339_left_fuel small_6479339_left_count small_6479339_left_encoded small_6479339_left_checked

theorem cover_6479339 : CoveredBy scale carrier boxes root_6479339 := by
  apply coveredBy_split_literal root_6479339 small_6479339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6480103 coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6479339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6480103
#print axioms cover_6479339

def root_6479333 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6479333_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6479333_left_fuel : Nat := 1
def small_6479333_left_count : Nat := 1
def small_6479333_left_encoded : String := "00000004"
theorem small_6479333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6479333_left_root small_6479333_left_fuel small_6479333_left_count small_6479333_left_encoded = true := by
  decide +kernel
theorem small_6479333_left_covered : CoveredBy scale carrier boxes small_6479333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6479333_left_root small_6479333_left_fuel small_6479333_left_count small_6479333_left_encoded small_6479333_left_checked

theorem cover_6479333 : CoveredBy scale carrier boxes root_6479333 := by
  apply coveredBy_split_literal root_6479333 small_6479333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6479339 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6479333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6479339
#print axioms cover_6479333

def root_6478403 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6478403_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6478403_left_fuel : Nat := 25
def small_6478403_left_count : Nat := 445
def small_6478403_left_encoded : String := "0F8750FF022A457913E20102067ECE7B12EA94FA00000002067ECE7D0000000512EA58FC0DE7CA000E5FD8F700000005000000000E6014F7000000000B4D4408108010FF0000000500000004000000050000000312EA58FA067ECE7D12EA94FC000000030000000A12EA58FC0DE7CA000E5FD8F70B4D4408108010FF033F67B90000000A13BBF502000000010569AC3B000000090000000A0000000410804CFF00000004033F67B913BC31020569AC3B000000050000000A0000000113BBF502000000010569AC3B134110FA000000020569AC3D000000051340D4FC0D4128800EFA10F7000000050000000000000009000000031340D4FA0569AC3D0000000A1340D4FC0D4128800EFA10F70BF3E5880000000A100928FF0000000402B4D6990000000A13D0D1020000000104DF1B1B000000090000000A000000000EFA4CF7000000000000000A0000000300000002000000000E6014F7000000000B4D44080000000A10804CFF000000040000000A00000003000000020000000113E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F700000005000000000E6014F7000000000B4D44080000000A0000000512EA58FC0DE7CA000E5FD8F70B4D4408108010FF011523390000000513F8590200000001000000090000000410804CFF000000040115233913F895020793F0BB00000005128220FA0569AC3D000000051340D4FC0000000900000003000000020000000113F85902000000010793F0BB12825CFA0000000200000005128220FA0569AC3D134110FC00000003000000051340D4FC0D41288000000007000000090000000300000002000000000E6014F7000000000B4D44080000000810804CFF000000040115233913F895020793F0BB00000005128220FA0569AC3D0000000500000008000000020000000113F85902000000010793F0BB00000008128220FA0569AC3D134110FC000000030DAED877000000050000000800000008000000020000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70B4D4408108010FF011523390000000513F85902000000010569AC3B00000005000000060000000410804CFF000000040115233913F895020569AC3B000000050000000A0000000113F85902000000010569AC3B134110FA00000002000000051340D4FA0793F0BD00000006128220FC0D41288000000007000000060000000300000002000000000E6014F7000000000000000A12EA58FC0DE7CA000E5FD8F70B4D4408108010FF0115233913F895020569AC3B134110FA00000002000000091340D4FA0569AC3D0000000A00000007000000020000000113F85902000000010569AC3B00000007000000070000000410804CFF000000040115233913F895020569AC3B134110FA000000020569AC3D134110FC000000030D4128800EFA10F70000000500000000000000051340D4FC0D4128800EFA10F70BF3E58800000007100928FF00000004019FB45900000005000000070000000000000009000000031340D4FA0569AC3D134110FC000000030D4128800EFA10F70BF3E58800000007100928FF00000004019FB4590000000500000007000000000EFA4CF7000000000000000A1340D4FC0D4128800EFA10F70BF3E58800000007100928FF00000004019FB45913EF350204DF1B1B00000007000000070000000100000007000000000EFA4CF7000000000BF3E58800000009100928FF00000004019FB459000000090000000900000003000000020000000113F85902000000010569AC3B134110FA000000020569AC3D134110FC000000030D412880000000070EFA4CF7000000000BF3E58800000007000000071340D4FC0D4128800EFA10F7000000070000000000000009000000031340D4FA0569AC3D134110FC000000030D4128800EFA10F700000007000000000EFA4CF7000000000BF3E58800000006100928FF00000004008A92190000000A000000061340D4FC0D4128800EFA10F700000007000000000EFA4CF7000000000BF3E58800000007100928FF00000004008A921913FE350204DF1B1B000000070000000700000001000000070000000300000002000000000E6014F7000000000B4D4408108010FF011523390000000913F85902000000010569AC3B00000009000000060000000410804CFF000000040115233913F895020569AC3B134110FA000000020569AC3D0000000A000000090000000A0000000113F85902000000010569AC3B134110FA000000020569AC3D134110FC000000030DAED8770E9661000BF3E58800000009100928FF00000004008A92190000000A13FDF9020000000105F43D5B0000000900000006000000000000000A000000091340D4FA0569AC3D000000061340D4FC0DAED877000000090E96250000000000000000060000000300000002000000030000000200000004"
theorem small_6478403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6478403_left_root small_6478403_left_fuel small_6478403_left_count small_6478403_left_encoded = true := by
  decide +kernel
theorem small_6478403_left_covered : CoveredBy scale carrier boxes small_6478403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6478403_left_root small_6478403_left_fuel small_6478403_left_count small_6478403_left_encoded small_6478403_left_checked

theorem cover_6478403 : CoveredBy scale carrier boxes root_6478403 := by
  apply coveredBy_split_literal root_6478403 small_6478403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6479333 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6478403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6479333
#print axioms cover_6478403

def root_6478397 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6478397_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6478397_left_fuel : Nat := 1
def small_6478397_left_count : Nat := 1
def small_6478397_left_encoded : String := "00000000"
theorem small_6478397_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6478397_left_root small_6478397_left_fuel small_6478397_left_count small_6478397_left_encoded = true := by
  decide +kernel
theorem small_6478397_left_covered : CoveredBy scale carrier boxes small_6478397_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6478397_left_root small_6478397_left_fuel small_6478397_left_count small_6478397_left_encoded small_6478397_left_checked

theorem cover_6478397 : CoveredBy scale carrier boxes root_6478397 := by
  apply coveredBy_split_literal root_6478397 small_6478397_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6478403 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6478397_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6478403
#print axioms cover_6478397

def root_6477001 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6477001 : CoveredBy scale carrier boxes root_6477001 := by
  apply coveredBy_split_literal root_6477001 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2438.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6478397 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2438.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6478397
#print axioms cover_6477001

def root_6476996 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476996_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476996_right_fuel : Nat := 1
def small_6476996_right_count : Nat := 1
def small_6476996_right_encoded : String := "00000004"
theorem small_6476996_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476996_right_root small_6476996_right_fuel small_6476996_right_count small_6476996_right_encoded = true := by
  decide +kernel
theorem small_6476996_right_covered : CoveredBy scale carrier boxes small_6476996_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476996_right_root small_6476996_right_fuel small_6476996_right_count small_6476996_right_encoded small_6476996_right_checked

theorem cover_6476996 : CoveredBy scale carrier boxes root_6476996 := by
  apply coveredBy_split_literal root_6476996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6477001 small_6476996_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6477001
  · exact small_6476996_right_covered
#print axioms cover_6476996

def root_6476995 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476995_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476995_right_fuel : Nat := 29
def small_6476995_right_count : Nat := 419
def small_6476995_right_encoded : String := "0F34D108000000040C9A87000F8750F7022A457913E20102067ECE7B0000000612EA58FA067ECE7D0000000900000006000000020000000113E1C50200000001067ECE7B12EA94FA00000002067ECE7D000000060000000612EA58FA067ECE7D0000000912EA58FC0AD3577F10D13D080B4D44000000000610804CF700000000011523390000000613F85902000000010569AC3B000000060000000800000004000000060000000300000002000000000F878CF700000000022A457913E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC00000003000000060000000612EA58FA067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA000E5FD8F7033F67B90000000600000009000000000E6014F700000000033F67B913BC31020569AC3B000000050000000A0000000113BBF502000000010569AC3B134110FA000000020793F0BD00000005000000061340D4FA0793F0BD00000009128220FC0BE879BF1011AD0800000007000000040000000600000003000000020000000410D10108000000040000000612EA58FC0AD3577F10D13D080DE7CA00000000060E6014F700000000033F67B90000000613BBF502000000010569AC3B000000061340D4FA0569AC3D000000070000000600000002000000040000000600000003000000020000000113E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA000E5FD8F7011523390000000513F85902000000010793F0BB00000005128220FA0793F0BD000000050000000600000002000000000E6014F700000000011523390000000513F85902000000010793F0BB00000005128220FA0793F0BD00000005128220FC0BE879BF00000005000000060000000300000002000000040000000612EA58FC0AD3577F10D13D080DE7CA00000000060E6014F7000000000000000600000004000000060000000312EA58FA067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA000E5FD8F7011523390000000900000009000000000E6014F7000000000115233913F895020569AC3B134110FA000000020793F0BD00000009128220FC0BE879BF1011AD080DAED877000000050E96250000000000000000050000000400000006000000031340D4FA0793F0BD00000009128220FC0BE879BF1011AD0800000009000000040000000700000003000000020000000113F85902000000010569AC3B134110FA000000020793F0BD00000009128220FC0BE879BF1011AD080DAED8770E96610000000009000000000E96250000000000008A921913FE350205F43D5B000000050000000700000001000000090000000400000009000000031340D4FA00000009000000020000000410D10108000000040000000912EA58FC0AD3577F10D13D080DE7CA000E5FD8F70115233913F895020569AC3B000000061340D4FA0569AC3D0000000600000006000000020000000113F85902000000010569AC3B134110FA00000002000000061340D4FA0569AC3D000000091340D4FC0BE879BF00000006000000060000000300000002000000000E6014F7000000000115233913F895020569AC3B134110FA000000020569AC3D00000006000000061340D4FA0569AC3D134110FC000000030BE879BF1011AD080DAED8770E966100019FB4590000000600000009000000000000000700000004000000061340D4FC0BE879BF1011AD080DAED8770E966100000000060000000000000006000000040000000600000003000000020000000113F85902000000010569AC3B134110FA000000020569AC3D134110FC000000030BE879BF1011AD080DAED8770E966100008A92190000000613FDF9020000000105F43D5B000000061317BCFA0000000600000002000000000E96250000000000008A92190000000713FDF9020000000105F43D5B000000071317BCFA000000070000000200000004000000061340D4FC0BE879BF0000000600000006000000031340D4FA0569AC3D134110FC000000030BE879BF1011AD080DAED8770E966100008A92190000000900000009000000000E96250000000000008A92190000000713FDF9020000000104DF1B1B0000000700000007000000041011710800000004000000071340D4FC0BE879BF1011AD080DAED8770E966100008A92190000000613FDF9020000000104DF1B1B000000061365B4FA04DF1B1D000000090000000600000002000000000E96250000000000000000070000000410117108000000040000000600000003000000020000000410D1010800000004000000060000000300000002"
theorem small_6476995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476995_right_root small_6476995_right_fuel small_6476995_right_count small_6476995_right_encoded = true := by
  decide +kernel
theorem small_6476995_right_covered : CoveredBy scale carrier boxes small_6476995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476995_right_root small_6476995_right_fuel small_6476995_right_count small_6476995_right_encoded small_6476995_right_checked

theorem cover_6476995 : CoveredBy scale carrier boxes root_6476995 := by
  apply coveredBy_split_literal root_6476995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476996 small_6476995_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476996
  · exact small_6476995_right_covered
#print axioms cover_6476995

def root_6476989 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476989_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476989_left_fuel : Nat := 1
def small_6476989_left_count : Nat := 1
def small_6476989_left_encoded : String := "00000003"
theorem small_6476989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476989_left_root small_6476989_left_fuel small_6476989_left_count small_6476989_left_encoded = true := by
  decide +kernel
theorem small_6476989_left_covered : CoveredBy scale carrier boxes small_6476989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476989_left_root small_6476989_left_fuel small_6476989_left_count small_6476989_left_encoded small_6476989_left_checked

theorem cover_6476989 : CoveredBy scale carrier boxes root_6476989 := by
  apply coveredBy_split_literal root_6476989 small_6476989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476995 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6476989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476995
#print axioms cover_6476989

def root_6485247 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485247_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485247_left_fuel : Nat := 27
def small_6485247_left_count : Nat := 337
def small_6485247_left_encoded : String := "0F8750F70C9A87080F8750FF022A457913E20102067ECE7B12EA94FA00000002022A457D13E200FC000000030B4D4400108010F70B4D4408108010FF0000000700000004000000060000000010804CF7000000000B4D44080000000910804CFF00000004000000060000000912EA58FA022A457D13E200FC000000030B4D4400108010F70B4D4408108010FF000000070000000410804CFF00000004033F67B90000000613BBF502000000010569AC3B00000006000000070000000010804CF7000000000B4D4408108010FF000000090000000410804CFF00000004033F67B913BC31020569AC3B000000061340D4FA033F67BD13BC30FC000000030BF3E580000000060000000900000006000000020000000113BBF502000000010569AC3B134110FA00000002033F67BD13BC30FC000000030BF3E5800000000600000009000000061340D4FA033F67BD13BC30FC000000030BF3E5801008ECF70000000700000000100928F70000000000000009000000090000000213E1C4FC0B4D4400108010F70B4D44080000000910804CFF0000000400000006000000000000000900000003000000020000000113E1C50200000001067ECE7B12EA94FA00000002022A457D13E200FC000000030B4D4400108010F7000000070000000010804CF7000000000B4D44080000000910804CFF000000040115233913F895020793F0BB00000006128220FA0000000900000002000000010000000713E1C4FC0B4D44000000000A000000090000000312EA58FA022A457D13E200FC000000030B4D4400108010F70B4D440800000007000000070000000010804CF7000000000B4D4408108010FF000000070000000410804CFF000000040115233913F895020569AC3B134110FA00000002033F67BD00000007000000071340D4FA033F67BD13BC30FC000000030000000700000007000000020000000113F85902000000010569AC3B000000070000000713E1C4FC0B4D4400108010F70000000700000000000000090000000300000002000000040F878CFF00000004022A457913E20102067ECE7B0000000612EA58FA022A457D13E200FC000000030B4D44000000000610804CF7000000000DE7CA080E5FD8FF033F67B90000000613BBF502000000010569AC3B000000061340D4FA033F67BD13BC30FC00000003000000060000000600000002000000040000000600000006000000020000000113E1C50200000001067ECE7B12EA94FA00000002022A457D13E200FC000000030B4D44000000000610804CF7000000000DE7CA080E5FD8FF01152339000000060000000A00000004000000060000000612EA58FA022A457D13E200FC000000030B4D4400108010F70DE7CA080E5FD8FF0115233913F895020569AC3B000000060000000A000000010000000A000000040000000A0000000010804CF7000000000DE7CA080E5FD8FF0115233913F895020569AC3B134110FA00000002033F67BD00000006000000061340D4FA033F67BD13BC30FC000000030BF3E5801008ECF70D4128880EFA10FF00000007000000040000000600000000100928F7000000000D4128880EFA10FF019FB45913EF350204DF1B1B00000006000000070000000100000007000000040EFA4CFF000000040000000613BBF4FC0BF3E58000000006100928F7000000000D4128880EFA10FF00000009000000040000000600000003000000020000000113F85902000000010569AC3B0000000A1340D4FA033F67BD13BC30FC000000030BF3E5800000000A100928F7000000000D412888000000070000000A0000000A00000002000000040E6014FF0000000401152339000000060000000A0000000A0000000200000000"
theorem small_6485247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6485247_left_root small_6485247_left_fuel small_6485247_left_count small_6485247_left_encoded = true := by
  decide +kernel
theorem small_6485247_left_covered : CoveredBy scale carrier boxes small_6485247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6485247_left_root small_6485247_left_fuel small_6485247_left_count small_6485247_left_encoded small_6485247_left_checked

theorem cover_6485247 : CoveredBy scale carrier boxes root_6485247 := by
  apply coveredBy_split_literal root_6485247 small_6485247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2441.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6485247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2441.covered
#print axioms cover_6485247

def root_6485242 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485242_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485242_right_fuel : Nat := 1
def small_6485242_right_count : Nat := 1
def small_6485242_right_encoded : String := "00000004"
theorem small_6485242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6485242_right_root small_6485242_right_fuel small_6485242_right_count small_6485242_right_encoded = true := by
  decide +kernel
theorem small_6485242_right_covered : CoveredBy scale carrier boxes small_6485242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6485242_right_root small_6485242_right_fuel small_6485242_right_count small_6485242_right_encoded small_6485242_right_checked

theorem cover_6485242 : CoveredBy scale carrier boxes root_6485242 := by
  apply coveredBy_split_literal root_6485242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6485247 small_6485242_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6485247
  · exact small_6485242_right_covered
#print axioms cover_6485242

def root_6485241 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485241_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485241_right_fuel : Nat := 24
def small_6485241_right_count : Nat := 53
def small_6485241_right_encoded : String := "0F34D108000000040C9A87000F8750F7022A4579000000060000000A000000000F878CF700000000022A45790000000613E1C50200000001067ECE7B0000000612EA58FA022A457D13E200FC000000030AD3577F10D13D080DE7CA00000000060E6014F700000000011523390000000613F85902000000010569AC3B000000061340D4FA033F67BD13BC30FC000000030BE879BF1011AD080DAED8770E96610000000006000000000E96250000000000000000070000000400000006000000060000000200000004000000060000000600000002"
theorem small_6485241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6485241_right_root small_6485241_right_fuel small_6485241_right_count small_6485241_right_encoded = true := by
  decide +kernel
theorem small_6485241_right_covered : CoveredBy scale carrier boxes small_6485241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6485241_right_root small_6485241_right_fuel small_6485241_right_count small_6485241_right_encoded small_6485241_right_checked

theorem cover_6485241 : CoveredBy scale carrier boxes root_6485241 := by
  apply coveredBy_split_literal root_6485241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6485242 small_6485241_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6485242
  · exact small_6485241_right_covered
#print axioms cover_6485241

def root_6485236 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485236_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6485236_right_fuel : Nat := 1
def small_6485236_right_count : Nat := 1
def small_6485236_right_encoded : String := "00000003"
theorem small_6485236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6485236_right_root small_6485236_right_fuel small_6485236_right_count small_6485236_right_encoded = true := by
  decide +kernel
theorem small_6485236_right_covered : CoveredBy scale carrier boxes small_6485236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6485236_right_root small_6485236_right_fuel small_6485236_right_count small_6485236_right_encoded small_6485236_right_checked

theorem cover_6485236 : CoveredBy scale carrier boxes root_6485236 := by
  apply coveredBy_split_literal root_6485236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6485241 small_6485236_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6485241
  · exact small_6485236_right_covered
#print axioms cover_6485236

def root_6476988 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6476988 : CoveredBy scale carrier boxes root_6476988 := by
  apply coveredBy_split_literal root_6476988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6485236 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476989
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6485236
#print axioms cover_6476988

def root_6476982 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476982_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476982_left_fuel : Nat := 1
def small_6476982_left_count : Nat := 1
def small_6476982_left_encoded : String := "00000002"
theorem small_6476982_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476982_left_root small_6476982_left_fuel small_6476982_left_count small_6476982_left_encoded = true := by
  decide +kernel
theorem small_6476982_left_covered : CoveredBy scale carrier boxes small_6476982_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476982_left_root small_6476982_left_fuel small_6476982_left_count small_6476982_left_encoded small_6476982_left_checked

theorem cover_6476982 : CoveredBy scale carrier boxes root_6476982 := by
  apply coveredBy_split_literal root_6476982 small_6476982_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476988 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6476982_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476988
#print axioms cover_6476982

def root_6488715 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488715_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488715_left_fuel : Nat := 24
def small_6488715_left_count : Nat := 295
def small_6488715_left_encoded : String := "0F8750F70C9A87080F8750FF022A457913E20102022A457B13E200FA00000002067ECE7D12EA94FC000000030B4D4400108010F70B4D4408108010FF0000000700000004000000080000000010804CF7000000000000000A12EA58FC0B4D4400108010F70B4D4408108010FF0000000700000004000000080000000010804CF7000000000B4D4408108010FF033F67B90000000A13BBF50200000001033F67BB00000007000000070000000410804CFF00000004033F67B913BC3102033F67BB13BC30FA000000020569AC3D0000000A1340D4FC0BF3E58000000008100928F7000000000000000A00000003000000080000000113BBF50200000001033F67BB13BC30FA000000020569AC3D134110FC000000030BF3E580000000080000000A1340D4FC0BF3E5801008ECF70000000700000000100928F7000000000BF3E5881008ECFF00000007000000040000000800000003000000080000000313E1C4FA067ECE7D0000000812EA58FC0B4D44000000000810804CF7000000000B4D44080000000A0000000800000003000000020000000113E1C50200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030B4D4400108010F7000000070000000010804CF7000000000B4D4408108010FF000000070000000410804CFF000000040115233913F89502033F67BB13BC30FA000000020793F0BD000000050000000700000008000000010000000712EA58FC0B4D4400108010F70B4D440800000007000000070000000010804CF7000000000B4D4408108010FF000000070000000410804CFF000000040115233913F89502033F67BB13BC30FA000000020569AC3D134110FC00000003000000070000000713BBF4FA00000008000000020000000113F8590200000001033F67BB00000007000000070000000313E1C4FA067ECE7D12EA94FC000000030B4D4400000000080000000612EA58FC0B4D44000000000810804CF7000000000B4D440800000006000000080000000300000002000000040F878CFF00000004022A457913E20102022A457B13E200FA00000002067ECE7D12EA94FC000000030B4D44000000000810804CF7000000000DE7CA080E5FD8FF00000008000000040000000812EA58FC0B4D4400108010F7000000080000000010804CF7000000000DE7CA080E5FD8FF033F67B90000000813BBF50200000001033F67BB13BC30FA000000020569AC3D000000081340D4FC000000080000000300000008000000040000000800000003000000080000000113E1C50200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030B4D44000000000810804CF7000000000DE7CA080E5FD8FF00000008000000040000000812EA58FC0B4D4400108010F7000000080000000010804CF7000000000DE7CA080E5FD8FF0115233913F89502033F67BB13BC30FA000000020569AC3D000000081340D4FC0000000800000003000000080000000113F8590200000001033F67BB13BC30FA000000020569AC3D000000081340D4FC0BF3E58000000008000000080000000300000008000000040E6014FF00000004000000080000000313E1C4FA067ECE7D0000000812EA58FC00000008000000030000000200000000"
theorem small_6488715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488715_left_root small_6488715_left_fuel small_6488715_left_count small_6488715_left_encoded = true := by
  decide +kernel
theorem small_6488715_left_covered : CoveredBy scale carrier boxes small_6488715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488715_left_root small_6488715_left_fuel small_6488715_left_count small_6488715_left_encoded small_6488715_left_checked

theorem cover_6488715 : CoveredBy scale carrier boxes root_6488715 := by
  apply coveredBy_split_literal root_6488715 small_6488715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2442.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6488715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2442.covered
#print axioms cover_6488715

def root_6488710 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488710_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488710_right_fuel : Nat := 1
def small_6488710_right_count : Nat := 1
def small_6488710_right_encoded : String := "00000004"
theorem small_6488710_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488710_right_root small_6488710_right_fuel small_6488710_right_count small_6488710_right_encoded = true := by
  decide +kernel
theorem small_6488710_right_covered : CoveredBy scale carrier boxes small_6488710_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488710_right_root small_6488710_right_fuel small_6488710_right_count small_6488710_right_encoded small_6488710_right_checked

theorem cover_6488710 : CoveredBy scale carrier boxes root_6488710 := by
  apply coveredBy_split_literal root_6488710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488715 small_6488710_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488715
  · exact small_6488710_right_covered
#print axioms cover_6488710

def root_6488709 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488709_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488709_right_fuel : Nat := 29
def small_6488709_right_count : Nat := 281
def small_6488709_right_encoded : String := "0F34D108000000040C9A87000F8750F7022A457913E20102022A457B13E200FA00000002067ECE7D0000000812EA58FC0AD3577F000000080000000600000003000000080000000113E1C50200000001022A457B13E200FA00000002067ECE7D0000000812EA58FC0AD3577F00000008000000080000000300000008000000000F878CF700000000022A457913E20102022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA00000000090E6014F7000000000000000A000000040000000912EA58FC0AD3577F10D13D080DE7CA000E5FD8F7033F67B913BC3102033F67BB00000006000000080000000113BBF50200000001033F67BB13BC30FA000000020569AC3D000000080000000600000008000000000E6014F700000000033F67B90000000713BBF50200000001033F67BB13BC30FA000000020569AC3D000000070000000713BBF4FA00000007000000020000000410D1010800000004000000060000000313E1C4FA067ECE7D0000000912EA58FC0AD3577F10D13D080DE7CA00000000080E6014F700000000033F67B90000000713BBF502000000010115233B0000000700000007000000040000000900000003000000020000000113E1C50200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA00000000090E6014F70000000000000009000000040000000912EA58FC0AD3577F10D13D080DE7CA000E5FD8F70115233913F89502033F67BB13BC30FA000000020569AC3D000000081340D4FC0BE879BF000000080000000600000003000000080000000113F8590200000001033F67BB13BC30FA000000020569AC3D000000081340D4FC0BE879BF00000008000000080000000300000008000000000E6014F7000000000115233913F89502033F67BB13BC30FA000000020569AC3D134110FC000000030BE879BF1011AD080DAED8770E96610000000008000000000000000700000004000000071340D4FC0BE879BF1011AD080000000700000004000000070000000313BBF4FA0569AC3D000000091340D4FC0000000700000003000000020000000113F8590200000001033F67BB13BC30FA000000020569AC3D134110FC000000030BE879BF1011AD080DAED877000000090000000900000004000000091340D4FC0BE879BF1011AD080DAED8770E966100008A921913FE350203C9F8DB00000007000000070000000113FDF9020000000103C9F8DB13A36CFA0000000204DF1B1D000000080000000500000005000000000E962500000000000000000700000004000000070000000313BBF4FA0569AC3D000000091340D4FC0BE879BF1011AD080DAED8770000000800000005000000040000000500000003000000020000000410D1010800000004000000090000000313E1C4FA067ECE7D0000000912EA58FC0AD3577F10D13D080DE7CA00000000080E6014F7000000000115233913F895020115233B13F894FA000000020000000900000008000000010000000900000004000000090000000300000002"
theorem small_6488709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488709_right_root small_6488709_right_fuel small_6488709_right_count small_6488709_right_encoded = true := by
  decide +kernel
theorem small_6488709_right_covered : CoveredBy scale carrier boxes small_6488709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488709_right_root small_6488709_right_fuel small_6488709_right_count small_6488709_right_encoded small_6488709_right_checked

theorem cover_6488709 : CoveredBy scale carrier boxes root_6488709 := by
  apply coveredBy_split_literal root_6488709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488710 small_6488709_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488710
  · exact small_6488709_right_covered
#print axioms cover_6488709

def root_6488703 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488703_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488703_left_fuel : Nat := 1
def small_6488703_left_count : Nat := 1
def small_6488703_left_encoded : String := "00000003"
theorem small_6488703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488703_left_root small_6488703_left_fuel small_6488703_left_count small_6488703_left_encoded = true := by
  decide +kernel
theorem small_6488703_left_covered : CoveredBy scale carrier boxes small_6488703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488703_left_root small_6488703_left_fuel small_6488703_left_count small_6488703_left_encoded small_6488703_left_checked

theorem cover_6488703 : CoveredBy scale carrier boxes root_6488703 := by
  apply coveredBy_split_literal root_6488703 small_6488703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488709 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6488703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488709
#print axioms cover_6488703

def root_6493737 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493737_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493737_left_fuel : Nat := 27
def small_6493737_left_count : Nat := 271
def small_6493737_left_encoded : String := "0F8750FF022A457913E20102022A457B13E200FA00000002022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF000000090000000410804CFF00000004033F67B913BC3102033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000900000000000000090000000913BBF4FA033F67BD0000000A00000009000000020000000113BBF50200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000900000000000000090000000913BBF4FA033F67BD13BC30FC000000030D4128800EFA10F70BF3E5880000000A100928FF0000000402B4D6990000000813D0D1020000000100000008000000000000000A0000000900000002000000000E6014F7000000000B4D44080000000910804CFF00000004033F67B90000000A13BBF50200000001033F67BB000000090000000A13E1C4FC0DE7CA000E5FD8F70000000900000000000000090000000313E1C4FA022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF033F67B90000000A13BBF502000000010000000A0000000410804CFF00000004033F67B90000000A13BBF502000000010115233B13F894FA00000002033F67BD0000000A0000000500000005000000000E6014F7000000000000000A13E1C4FC0DE7CA000E5FD8F70B4D44080000000510804CFF0000000400000005000000000000000900000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF0115233900000009000000090000000410804CFF000000040115233913F89502033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70BF3E58800000009100928FF00000004019FB459000000090000000700000000000000090000000913BBF4FA033F67BD13BC30FC000000030D4128800EFA10F70BF3E5881008ECFF0000000600000004100928FF00000004019FB45913EF350202B4D69B13D10CFA0000000203C9F8DD0000000700000005000000050000000100000005000000000EFA4CF7000000000BF3E58800000006100928FF00000004019FB459000000090000000500000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000700000000000000090000000913BBF4FA0000000500000002000000000E6014F7000000000B4D44080000000910804CFF000000040115233913F89502033F67BB0000000913BBF4FA033F67BD0000000600000005000000020000000113F8590200000001033F67BB000000090000000513E1C4FC0DE7CA000E5FD8F70000000900000000000000090000000313E1C4FA022A457D13E200FC000000030DE7CA000E5FD8F70B4D44080000000510804CFF00000004000000050000000000000006000000050000000200000004"
theorem small_6493737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6493737_left_root small_6493737_left_fuel small_6493737_left_count small_6493737_left_encoded = true := by
  decide +kernel
theorem small_6493737_left_covered : CoveredBy scale carrier boxes small_6493737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6493737_left_root small_6493737_left_fuel small_6493737_left_count small_6493737_left_encoded small_6493737_left_checked

theorem cover_6493737 : CoveredBy scale carrier boxes root_6493737 := by
  apply coveredBy_split_literal root_6493737 small_6493737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2444.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6493737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2444.covered
#print axioms cover_6493737

def root_6493731 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493731_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493731_left_fuel : Nat := 1
def small_6493731_left_count : Nat := 1
def small_6493731_left_encoded : String := "00000000"
theorem small_6493731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6493731_left_root small_6493731_left_fuel small_6493731_left_count small_6493731_left_encoded = true := by
  decide +kernel
theorem small_6493731_left_covered : CoveredBy scale carrier boxes small_6493731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6493731_left_root small_6493731_left_fuel small_6493731_left_count small_6493731_left_encoded small_6493731_left_checked

theorem cover_6493731 : CoveredBy scale carrier boxes root_6493731 := by
  apply coveredBy_split_literal root_6493731 small_6493731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6493737 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6493731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6493737
#print axioms cover_6493731

def root_6492501 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6492501 : CoveredBy scale carrier boxes root_6492501 := by
  apply coveredBy_split_literal root_6492501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2443.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6493731 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2443.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6493731
#print axioms cover_6492501

def root_6492496 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492496_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492496_right_fuel : Nat := 1
def small_6492496_right_count : Nat := 1
def small_6492496_right_encoded : String := "00000004"
theorem small_6492496_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492496_right_root small_6492496_right_fuel small_6492496_right_count small_6492496_right_encoded = true := by
  decide +kernel
theorem small_6492496_right_covered : CoveredBy scale carrier boxes small_6492496_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492496_right_root small_6492496_right_fuel small_6492496_right_count small_6492496_right_encoded small_6492496_right_checked

theorem cover_6492496 : CoveredBy scale carrier boxes root_6492496 := by
  apply coveredBy_split_literal root_6492496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6492501 small_6492496_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6492501
  · exact small_6492496_right_covered
#print axioms cover_6492496

def root_6492495 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492495_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492495_right_fuel : Nat := 24
def small_6492495_right_count : Nat := 207
def small_6492495_right_encoded : String := "0F34D108000000040C9A87000F8750F7022A457913E20102022A457B0000000613E1C4FA022A457D0000000813E1C4FC0AD3577F000000060000000500000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080B4D44000000000610804CF70000000001152339000000060000000A00000004000000060000000A13E1C4FA022A457D000000080000000500000002000000000F878CF700000000022A457913E20102022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080DE7CA00000000060E6014F700000000033F67B90000000613BBF5020000000100000007000000040000000613E1C4FC0AD3577F00000006000000060000000313E1C4FA022A457D13E200FC000000030AD3577F10D13D080DE7CA000E5FD8F700000008000000000E6014F70000000000000007000000040000000713E1C4FC0AD3577F10D13D080DE7CA000000000500000007000000040000000500000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080DE7CA000E5FD8F70115233913F89502033F67BB0000000613BBF4FA033F67BD0000000800000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030BE879BF1011AD080D412880000000050EFA4CF7000000000000000500000004000000050000000500000005000000000E6014F7000000000115233913F89502033F67BB13BC30FA00000002033F67BD000000070000000613BBF4FA033F67BD0000000700000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030BE879BF1011AD080DAED8770E966100000000050000000000000005000000040000000500000005000000050000000410D10108000000040DE7CA00000000060000000713E1C4FC0AD3577F10D13D080DE7CA00000000050E6014F7000000000000000500000004000000050000000313E1C4FA022A457D13E200FC000000030AD3577F10D13D080DE7CA00000000050E6014F7000000000000000500000004000000050000000500000002"
theorem small_6492495_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492495_right_root small_6492495_right_fuel small_6492495_right_count small_6492495_right_encoded = true := by
  decide +kernel
theorem small_6492495_right_covered : CoveredBy scale carrier boxes small_6492495_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492495_right_root small_6492495_right_fuel small_6492495_right_count small_6492495_right_encoded small_6492495_right_checked

theorem cover_6492495 : CoveredBy scale carrier boxes root_6492495 := by
  apply coveredBy_split_literal root_6492495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6492496 small_6492495_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6492496
  · exact small_6492495_right_covered
#print axioms cover_6492495

def root_6492490 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492490_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492490_right_fuel : Nat := 1
def small_6492490_right_count : Nat := 1
def small_6492490_right_encoded : String := "00000003"
theorem small_6492490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492490_right_root small_6492490_right_fuel small_6492490_right_count small_6492490_right_encoded = true := by
  decide +kernel
theorem small_6492490_right_covered : CoveredBy scale carrier boxes small_6492490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492490_right_root small_6492490_right_fuel small_6492490_right_count small_6492490_right_encoded small_6492490_right_checked

theorem cover_6492490 : CoveredBy scale carrier boxes root_6492490 := by
  apply coveredBy_split_literal root_6492490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6492495 small_6492490_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6492495
  · exact small_6492490_right_covered
#print axioms cover_6492490

def root_6488702 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6488702 : CoveredBy scale carrier boxes root_6488702 := by
  apply coveredBy_split_literal root_6488702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6492490 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6492490
#print axioms cover_6488702

def root_6488697 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488697_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488697_right_fuel : Nat := 1
def small_6488697_right_count : Nat := 1
def small_6488697_right_encoded : String := "00000002"
theorem small_6488697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488697_right_root small_6488697_right_fuel small_6488697_right_count small_6488697_right_encoded = true := by
  decide +kernel
theorem small_6488697_right_covered : CoveredBy scale carrier boxes small_6488697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488697_right_root small_6488697_right_fuel small_6488697_right_count small_6488697_right_encoded small_6488697_right_checked

theorem cover_6488697 : CoveredBy scale carrier boxes root_6488697 := by
  apply coveredBy_split_literal root_6488697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488702 small_6488697_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488702
  · exact small_6488697_right_covered
#print axioms cover_6488697

def root_6476981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6476981 : CoveredBy scale carrier boxes root_6476981 := by
  apply coveredBy_split_literal root_6476981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6488697 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6488697
#print axioms cover_6476981

def root_6476975 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476975_left_fuel : Nat := 1
def small_6476975_left_count : Nat := 1
def small_6476975_left_encoded : String := "00000001"
theorem small_6476975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476975_left_root small_6476975_left_fuel small_6476975_left_count small_6476975_left_encoded = true := by
  decide +kernel
theorem small_6476975_left_covered : CoveredBy scale carrier boxes small_6476975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476975_left_root small_6476975_left_fuel small_6476975_left_count small_6476975_left_encoded small_6476975_left_checked

theorem cover_6476975 : CoveredBy scale carrier boxes root_6476975 := by
  apply coveredBy_split_literal root_6476975 small_6476975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476981 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6476975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476981
#print axioms cover_6476975

def root_6474449 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6474449 : CoveredBy scale carrier boxes root_6474449 := by
  apply coveredBy_split_literal root_6474449 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2437.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6476975 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2437.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6476975
#print axioms cover_6474449

def root_6474444 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474444_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474444_right_fuel : Nat := 1
def small_6474444_right_count : Nat := 1
def small_6474444_right_encoded : String := "00000000"
theorem small_6474444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474444_right_root small_6474444_right_fuel small_6474444_right_count small_6474444_right_encoded = true := by
  decide +kernel
theorem small_6474444_right_covered : CoveredBy scale carrier boxes small_6474444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474444_right_root small_6474444_right_fuel small_6474444_right_count small_6474444_right_encoded small_6474444_right_checked

theorem cover_6474444 : CoveredBy scale carrier boxes root_6474444 := by
  apply coveredBy_split_literal root_6474444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474449 small_6474444_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474449
  · exact small_6474444_right_covered
#print axioms cover_6474444

def root_6474443 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6474443 : CoveredBy scale carrier boxes root_6474443 := by
  apply coveredBy_split_literal root_6474443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2445.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2445.covered
#print axioms cover_6474443

def root_6474438 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474438_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474438_right_fuel : Nat := 1
def small_6474438_right_count : Nat := 1
def small_6474438_right_encoded : String := "00000004"
theorem small_6474438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474438_right_root small_6474438_right_fuel small_6474438_right_count small_6474438_right_encoded = true := by
  decide +kernel
theorem small_6474438_right_covered : CoveredBy scale carrier boxes small_6474438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474438_right_root small_6474438_right_fuel small_6474438_right_count small_6474438_right_encoded small_6474438_right_checked

theorem cover_6474438 : CoveredBy scale carrier boxes root_6474438 := by
  apply coveredBy_split_literal root_6474438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474443 small_6474438_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474443
  · exact small_6474438_right_covered
#print axioms cover_6474438

def root_6474437 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474437_right_fuel : Nat := 17
def small_6474437_right_count : Nat := 85
def small_6474437_right_encoded : String := "12070108000000040CFD9BF70F350D00045489F91386AD02045489FB00000006138670FA045489FD000000090000000600000002000000011386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080C9A8700000000060F878CF70000000000000006000000040000000600000006138670FA045489FD00000009138670FC045489FF1386AD080C9A8700000000060F878CF700000000022A45790000000613E1C50200000001022A457B000000060000000500000004000000060000000300000002000000000F34D10000000000045489F91386AD02045489FB0000000700000007000000011386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D00000000070000000000000007000000040000000600000006138670FA045489FD000000070000000700000002"
theorem small_6474437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474437_right_root small_6474437_right_fuel small_6474437_right_count small_6474437_right_encoded = true := by
  decide +kernel
theorem small_6474437_right_covered : CoveredBy scale carrier boxes small_6474437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474437_right_root small_6474437_right_fuel small_6474437_right_count small_6474437_right_encoded small_6474437_right_checked

theorem cover_6474437 : CoveredBy scale carrier boxes root_6474437 := by
  apply coveredBy_split_literal root_6474437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474438 small_6474437_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474438
  · exact small_6474437_right_covered
#print axioms cover_6474437

def root_6474432 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474432_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474432_right_fuel : Nat := 1
def small_6474432_right_count : Nat := 1
def small_6474432_right_encoded : String := "00000003"
theorem small_6474432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474432_right_root small_6474432_right_fuel small_6474432_right_count small_6474432_right_encoded = true := by
  decide +kernel
theorem small_6474432_right_covered : CoveredBy scale carrier boxes small_6474432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474432_right_root small_6474432_right_fuel small_6474432_right_count small_6474432_right_encoded small_6474432_right_checked

theorem cover_6474432 : CoveredBy scale carrier boxes root_6474432 := by
  apply coveredBy_split_literal root_6474432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474437 small_6474432_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474437
  · exact small_6474432_right_covered
#print axioms cover_6474432

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157
