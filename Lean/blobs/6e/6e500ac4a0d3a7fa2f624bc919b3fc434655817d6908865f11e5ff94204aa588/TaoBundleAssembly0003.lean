import TaoBundleAssembly0001
import TaoBundleAssembly0002
import TaoBundleChunkBatch0004
import TaoBundleChunkBatch0005
import TaoBundleChunkBatch0006
import TaoBundleChunkBatch0007
import TaoBundleChunkBatch0008
import TaoBundleChunkBatch0009
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003
def root_50059 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_50059 : CoveredBy scale carrier boxes root_50059 := by
  apply coveredBy_split_literal root_50059 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0016.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.root_53165 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0016.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.cover_53165
#print axioms cover_50059

def root_50054 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_50054_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_50054_right_fuel : Nat := 1
def small_50054_right_count : Nat := 1
def small_50054_right_encoded : String := "00000004"
theorem small_50054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_50054_right_root small_50054_right_fuel small_50054_right_count small_50054_right_encoded = true := by
  decide +kernel
theorem small_50054_right_covered : CoveredBy scale carrier boxes small_50054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_50054_right_root small_50054_right_fuel small_50054_right_count small_50054_right_encoded small_50054_right_checked

theorem cover_50054 : CoveredBy scale carrier boxes root_50054 := by
  apply coveredBy_split_literal root_50054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_50059 small_50054_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_50059
  · exact small_50054_right_covered
#print axioms cover_50054

def root_49980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_49980_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_49980_left_fuel : Nat := 13
def small_49980_left_count : Nat := 37
def small_49980_left_encoded : String := "1151E9090000000408A912F712073CF60000000008A912FB12073CFA00000002050000F8135D80F900000001050000FC0000000600000008135D44F9050000FC00000006135D44FD0500010800000006135D81090CFD9BF7000000060000000800000004000000030000000100000006120700F608A912FB00000007120700FA050000F800000009000000070000000200000000"
theorem small_49980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_49980_left_root small_49980_left_fuel small_49980_left_count small_49980_left_encoded = true := by
  decide +kernel
theorem small_49980_left_covered : CoveredBy scale carrier boxes small_49980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_49980_left_root small_49980_left_fuel small_49980_left_count small_49980_left_encoded small_49980_left_checked

theorem cover_49980 : CoveredBy scale carrier boxes root_49980 := by
  apply coveredBy_split_literal root_49980 small_49980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_50054 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_49980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_50054
#print axioms cover_49980

def root_49975 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_49975_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_49975_right_fuel : Nat := 1
def small_49975_right_count : Nat := 1
def small_49975_right_encoded : String := "00000003"
theorem small_49975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_49975_right_root small_49975_right_fuel small_49975_right_count small_49975_right_encoded = true := by
  decide +kernel
theorem small_49975_right_covered : CoveredBy scale carrier boxes small_49975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_49975_right_root small_49975_right_fuel small_49975_right_count small_49975_right_encoded small_49975_right_checked

theorem cover_49975 : CoveredBy scale carrier boxes root_49975 := by
  apply coveredBy_split_literal root_49975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_49980 small_49975_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_49980
  · exact small_49975_right_covered
#print axioms cover_49975

def root_44741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_44741 : CoveredBy scale carrier boxes root_44741 := by
  apply coveredBy_split_literal root_44741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.root_44742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_49975 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.cover_44742
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_49975
#print axioms cover_44741

def root_44735 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_44735_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_44735_left_fuel : Nat := 1
def small_44735_left_count : Nat := 1
def small_44735_left_encoded : String := "00000002"
theorem small_44735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_44735_left_root small_44735_left_fuel small_44735_left_count small_44735_left_encoded = true := by
  decide +kernel
theorem small_44735_left_covered : CoveredBy scale carrier boxes small_44735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_44735_left_root small_44735_left_fuel small_44735_left_count small_44735_left_encoded small_44735_left_checked

theorem cover_44735 : CoveredBy scale carrier boxes root_44735 := by
  apply coveredBy_split_literal root_44735 small_44735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_44741 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_44735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_44741
#print axioms cover_44735

def root_44734 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_44734 : CoveredBy scale carrier boxes root_44734 := by
  apply coveredBy_split_literal root_44734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_44735 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0020.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_44735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0020.covered
#print axioms cover_44734

def root_44729 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_44729_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_44729_right_fuel : Nat := 1
def small_44729_right_count : Nat := 1
def small_44729_right_encoded : String := "00000001"
theorem small_44729_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_44729_right_root small_44729_right_fuel small_44729_right_count small_44729_right_encoded = true := by
  decide +kernel
theorem small_44729_right_covered : CoveredBy scale carrier boxes small_44729_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_44729_right_root small_44729_right_fuel small_44729_right_count small_44729_right_encoded small_44729_right_checked

theorem cover_44729 : CoveredBy scale carrier boxes root_44729 := by
  apply coveredBy_split_literal root_44729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_44734 small_44729_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_44734
  · exact small_44729_right_covered
#print axioms cover_44729

def root_32037 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_32037 : CoveredBy scale carrier boxes root_32037 := by
  apply coveredBy_split_literal root_32037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.root_32038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_44729 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.cover_32038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_44729
#print axioms cover_32037

def root_32031 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_32031_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_32031_left_fuel : Nat := 1
def small_32031_left_count : Nat := 1
def small_32031_left_encoded : String := "00000000"
theorem small_32031_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_32031_left_root small_32031_left_fuel small_32031_left_count small_32031_left_encoded = true := by
  decide +kernel
theorem small_32031_left_covered : CoveredBy scale carrier boxes small_32031_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_32031_left_root small_32031_left_fuel small_32031_left_count small_32031_left_encoded small_32031_left_checked

theorem cover_32031 : CoveredBy scale carrier boxes root_32031 := by
  apply coveredBy_split_literal root_32031 small_32031_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_32037 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_32031_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_32037
#print axioms cover_32031

def root_32030 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_32030 : CoveredBy scale carrier boxes root_32030 := by
  apply coveredBy_split_literal root_32030 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_32031 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0021.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_32031
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0021.covered
#print axioms cover_32030

def root_3802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3802 : CoveredBy scale carrier boxes root_3802 := by
  apply coveredBy_split_literal root_3802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.root_3803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_32030 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0002.cover_3803
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_32030
#print axioms cover_3802

def root_8 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8 : CoveredBy scale carrier boxes root_8 := by
  apply coveredBy_split_literal root_8 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.root_9 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_3802 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0001.cover_9
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_3802
#print axioms cover_8

def root_73147 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_73147 : CoveredBy scale carrier boxes root_73147 := by
  apply coveredBy_split_literal root_73147 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0025.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0026.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0025.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0026.covered
#print axioms cover_73147

def root_73142 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73142_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73142_right_fuel : Nat := 1
def small_73142_right_count : Nat := 1
def small_73142_right_encoded : String := "00000004"
theorem small_73142_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_73142_right_root small_73142_right_fuel small_73142_right_count small_73142_right_encoded = true := by
  decide +kernel
theorem small_73142_right_covered : CoveredBy scale carrier boxes small_73142_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_73142_right_root small_73142_right_fuel small_73142_right_count small_73142_right_encoded small_73142_right_checked

theorem cover_73142 : CoveredBy scale carrier boxes root_73142 := by
  apply coveredBy_split_literal root_73142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73147 small_73142_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73147
  · exact small_73142_right_covered
#print axioms cover_73142

def root_73141 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73141_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73141_right_fuel : Nat := 20
def small_73141_right_count : Nat := 183
def small_73141_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A91307120700FC050000F8135D80F900000001050000FA135D80FB00000002050000FE0000000800000008135D44FB0000000A00000002135D44F9050000FA135D80FB00000002050000FE0000000800000008135D44FB050000FE135D81090CFD9BF70F350CF600000000000000080F34D0F604548A07000000070000000A0000000000000004135D4509000000040000000A00000002000000010000000312073CFC00000003050000F8135D80F900000001050000FA135D80FB00000002050000FE135D81090CFD9BF70F350CF6000000000CFD9C07000000080000000A0F34D0F60CFD9C070F34D0FC0000000A000000030F350CFC00000003000000050000000000000004135D4509000000040CFD9BF70000000800000005135D44FB050000FE135D81090CFD9BF70000000A00000005000000040000000500000002135D44F9050000FA135D80FB00000002050000FE135D81090CFD9BF70F350CF600000000000000080000000500000004000000050000000500000001120700F608A91307120700FC050000F8135D80F900000001050000FA135D80FB00000002050000FE0000000600000006135D44FB050000FE135D8109045489F71386ACF60000000004548A07000000060000000A0000000700000004135D450900000004045489F70000000A0000000500000002135D44F9050000FA00000007135D44FB0000000700000002000000010000000312073CFC00000003050000F8135D80F900000001050000FA135D80FB00000002050000FE135D8109045489F71386ACF6000000000CFD9C070F34D0FC078000F8128A7CF90000000100000006128A40F9078000FA128A7CFB00000002000000060000000500000001000000030F350CFC0000000300000005138670F60CFD9C070F34D0FC078000F80000000600000005000000030F350CFC0000000300000005000000000000000400000005000000050000000500000000"
theorem small_73141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_73141_right_root small_73141_right_fuel small_73141_right_count small_73141_right_encoded = true := by
  decide +kernel
theorem small_73141_right_covered : CoveredBy scale carrier boxes small_73141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_73141_right_root small_73141_right_fuel small_73141_right_count small_73141_right_encoded small_73141_right_checked

theorem cover_73141 : CoveredBy scale carrier boxes root_73141 := by
  apply coveredBy_split_literal root_73141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73142 small_73141_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73142
  · exact small_73141_right_covered
#print axioms cover_73141

def root_73136 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73136_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73136_right_fuel : Nat := 1
def small_73136_right_count : Nat := 1
def small_73136_right_encoded : String := "00000003"
theorem small_73136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_73136_right_root small_73136_right_fuel small_73136_right_count small_73136_right_encoded = true := by
  decide +kernel
theorem small_73136_right_covered : CoveredBy scale carrier boxes small_73136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_73136_right_root small_73136_right_fuel small_73136_right_count small_73136_right_encoded small_73136_right_checked

theorem cover_73136 : CoveredBy scale carrier boxes root_73136 := by
  apply coveredBy_split_literal root_73136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73141 small_73136_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73141
  · exact small_73136_right_covered
#print axioms cover_73136

def root_73135 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73135_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73135_right_fuel : Nat := 20
def small_73135_right_count : Nat := 183
def small_73135_right_encoded : String := "1151E907000000030A0000FE1152250908A912F712073CF60000000008A91309120700FE050000F8135D80F900000001050000FA135D80FB00000002050000FC0000000700000007135D44FB050000FC000000070000000700000002135D44F9050000FA135D80FB0000000200000009135D44FB050000FC135D81070CFD9BF70F350CF600000000000000070F34D0F604548A0900000007000000090000000000000003135D4507000000030000000900000002000000010000000412073CFE00000004050000F8135D80F900000001050000FA135D80FB00000002050000FC135D81070CFD9BF70F350CF6000000000CFD9C0900000007000000090F34D0F60CFD9C090F34D0FE00000009000000040F350CFE00000004000000050000000000000003135D4507000000030CFD9BF70000000700000005135D44FB050000FC135D81070CFD9BF70F350CF6000000000000000700000005000000030000000500000002135D44F9050000FA135D80FB00000002050000FC135D81070CFD9BF7000000090000000500000003000000050000000500000001120700F608A91309120700FE050000F8135D80F900000001050000FA135D80FB00000002050000FC000000060000000600000008135D44F9050000FA135D80FB00000002050000FC135D8107045489F71386ACF60000000004548A0900000006000000090000000800000003135D450700000003045489F7000000090000000500000008000000010000000412073CFE00000004050000F8135D80F900000001050000FA135D80FB00000002050000FC135D8107045489F71386ACF6000000000CFD9C090F34D0FE078000F8128A7CF90000000100000006128A40F90000000900000001000000040F350CFE0000000400000005138670F60CFD9C090F34D0FE078000F80000000600000005000000040F350CFE0000000400000005000000000000000300000005000000050000000500000000000000041151E9090000000400000005"
theorem small_73135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_73135_right_root small_73135_right_fuel small_73135_right_count small_73135_right_encoded = true := by
  decide +kernel
theorem small_73135_right_covered : CoveredBy scale carrier boxes small_73135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_73135_right_root small_73135_right_fuel small_73135_right_count small_73135_right_encoded small_73135_right_checked

theorem cover_73135 : CoveredBy scale carrier boxes root_73135 := by
  apply coveredBy_split_literal root_73135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73136 small_73135_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73136
  · exact small_73135_right_covered
#print axioms cover_73135

def root_73130 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73130_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_73130_right_fuel : Nat := 1
def small_73130_right_count : Nat := 1
def small_73130_right_encoded : String := "00000002"
theorem small_73130_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_73130_right_root small_73130_right_fuel small_73130_right_count small_73130_right_encoded = true := by
  decide +kernel
theorem small_73130_right_covered : CoveredBy scale carrier boxes small_73130_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_73130_right_root small_73130_right_fuel small_73130_right_count small_73130_right_encoded small_73130_right_checked

theorem cover_73130 : CoveredBy scale carrier boxes root_73130 := by
  apply coveredBy_split_literal root_73130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73135 small_73130_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73135
  · exact small_73130_right_covered
#print axioms cover_73130

def root_71320 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_71320 : CoveredBy scale carrier boxes root_71320 := by
  apply coveredBy_split_literal root_71320 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0024.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_73130 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0024.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_73130
#print axioms cover_71320

def root_71315 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_71315_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_71315_right_fuel : Nat := 1
def small_71315_right_count : Nat := 1
def small_71315_right_encoded : String := "00000001"
theorem small_71315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_71315_right_root small_71315_right_fuel small_71315_right_count small_71315_right_encoded = true := by
  decide +kernel
theorem small_71315_right_covered : CoveredBy scale carrier boxes small_71315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_71315_right_root small_71315_right_fuel small_71315_right_count small_71315_right_encoded small_71315_right_checked

theorem cover_71315 : CoveredBy scale carrier boxes root_71315 := by
  apply coveredBy_split_literal root_71315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_71320 small_71315_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_71320
  · exact small_71315_right_covered
#print axioms cover_71315

def root_68135 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_68135 : CoveredBy scale carrier boxes root_68135 := by
  apply coveredBy_split_literal root_68135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0023.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_71315 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0023.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_71315
#print axioms cover_68135

def root_68129 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_68129_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_68129_left_fuel : Nat := 1
def small_68129_left_count : Nat := 1
def small_68129_left_encoded : String := "00000000"
theorem small_68129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_68129_left_root small_68129_left_fuel small_68129_left_count small_68129_left_encoded = true := by
  decide +kernel
theorem small_68129_left_covered : CoveredBy scale carrier boxes small_68129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_68129_left_root small_68129_left_fuel small_68129_left_count small_68129_left_encoded small_68129_left_checked

theorem cover_68129 : CoveredBy scale carrier boxes root_68129 := by
  apply coveredBy_split_literal root_68129 small_68129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_68135 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_68129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_68135
#print axioms cover_68129

def root_68128 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_68128 : CoveredBy scale carrier boxes root_68128 := by
  apply coveredBy_split_literal root_68128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_68129 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0027.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_68129
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0027.covered
#print axioms cover_68128

def root_65992 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_65992 : CoveredBy scale carrier boxes root_65992 := by
  apply coveredBy_split_literal root_65992 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0022.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_68128 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0022.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_68128
#print axioms cover_65992

def root_65991 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_65991 : CoveredBy scale carrier boxes root_65991 := by
  apply coveredBy_split_literal root_65991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_65992 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0028.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_65992
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0028.covered
#print axioms cover_65991

def root_7 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7 : CoveredBy scale carrier boxes root_7 := by
  apply coveredBy_split_literal root_7 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_8 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_65991 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_8
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_65991
#print axioms cover_7

def root_85836 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_85836 : CoveredBy scale carrier boxes root_85836 := by
  apply coveredBy_split_literal root_85836 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0030.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0031.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0030.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0031.covered
#print axioms cover_85836

def root_85830 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85830_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85830_left_fuel : Nat := 1
def small_85830_left_count : Nat := 1
def small_85830_left_encoded : String := "00000000"
theorem small_85830_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85830_left_root small_85830_left_fuel small_85830_left_count small_85830_left_encoded = true := by
  decide +kernel
theorem small_85830_left_covered : CoveredBy scale carrier boxes small_85830_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85830_left_root small_85830_left_fuel small_85830_left_count small_85830_left_encoded small_85830_left_checked

theorem cover_85830 : CoveredBy scale carrier boxes root_85830 := by
  apply coveredBy_split_literal root_85830 small_85830_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85836 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_85830_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85836
#print axioms cover_85830

def root_93166 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93166_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93166_left_fuel : Nat := 21
def small_93166_left_count : Nat := 279
def small_93166_left_encoded : String := "1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004022A457713E200F600000000022A457913E200F800000001067ECE7D12EA9506000000080000000312EA5906000000030DE7C9FA0E6014FB00000002000000090E5FD8FB0DE7C9FE0000000A0E5FD8FF033F67B7000000080000000A000000040000000213E1C4F8067ECE7D0000000812EA5906000000030DE7C9FA0E6014FB00000002000000080E5FD8FB0DE7C9FE000000070E5FD8FF0000000700000004000000020000000113E1C4F6022A457913E200F800000001067ECE7D0000000A12EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0000000A0E5FD8FF00000006000000040E5FD8FB0000000A0000000213E1C4F8067ECE7D12EA95060DE7C9FA0E6014FB00000002000000080E5FD8FB00000007000000020000000312EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0E6014FF00000004011523370000000813F858F6011523390000000600000005000000000E5FD8FF00000006000000040E5FD8FB0DE7C9FE000000070E5FD8FF011523370000000700000006000000040000000200000001000000000F8750FF022A457713E200F600000000022A457913E200F800000001067ECE7D0000000812EA590600000003000000080000000813E1C4F6022A45790000000613E1C4F8067ECE7D0000000612EA590600000003000000060000000100000000000000040F8750FB0C9A86FE0F878CFF00000004022A457713E200F600000000022A457913E200F800000001067ECE7D0000000A12EA5906000000030000000A0000000713E1C4F6022A45790000000A13E1C4F8067ECE7D0000000712EA5906000000030000000700000001000000000F8750FF022A457713E200F600000000022A457913E200F800000001067ECE7D12EA95060B4D43FA000000080000000A0000000312EA5906000000030B4D43FA10804CFB000000020B4D43FE10804CFF00000004033F67B70000000813BBF4F6033F67B9000000060000000600000000108010FF0000000600000004108010FB0B4D43FE00000007108010FF033F67B70000000700000006000000040000000213E1C4F8067ECE7D0000000712EA5906000000030B4D43FA10804CFB000000020B4D43FE0000000700000008000000070000000113E1C4F6022A457913E200F800000001067ECE7D0000000612EA5906000000030B4D43FA00000006108010FB0B4D43FE0000000A000000060000000213E1C4F8067ECE7D12EA95060B4D43FA00000006000000070000000312EA5906000000030B4D43FA0000000600000007000000010000000000000004000000020F34D0FE0C9A86FA0F878CFB00000002022A457713E200F600000000022A45790000000913E1C4F8067ECE7D0000000A12EA590600000003000000090000000113E1C4F6022A45790000000A13E1C4F8067ECE7D0000000A12EA5906000000030000000A00000001000000000F8750FB0000000A000000020000000400000003"
theorem small_93166_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_93166_left_root small_93166_left_fuel small_93166_left_count small_93166_left_encoded = true := by
  decide +kernel
theorem small_93166_left_covered : CoveredBy scale carrier boxes small_93166_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_93166_left_root small_93166_left_fuel small_93166_left_count small_93166_left_encoded small_93166_left_checked

theorem cover_93166 : CoveredBy scale carrier boxes root_93166 := by
  apply coveredBy_split_literal root_93166 small_93166_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0033.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_93166_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0033.covered
#print axioms cover_93166

def root_93160 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93160_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93160_left_fuel : Nat := 1
def small_93160_left_count : Nat := 1
def small_93160_left_encoded : String := "00000002"
theorem small_93160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_93160_left_root small_93160_left_fuel small_93160_left_count small_93160_left_encoded = true := by
  decide +kernel
theorem small_93160_left_covered : CoveredBy scale carrier boxes small_93160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_93160_left_root small_93160_left_fuel small_93160_left_count small_93160_left_encoded small_93160_left_checked

theorem cover_93160 : CoveredBy scale carrier boxes root_93160 := by
  apply coveredBy_split_literal root_93160 small_93160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_93166 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_93160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_93166
#print axioms cover_93160

def root_93159 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93159_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93159_right_fuel : Nat := 17
def small_93159_right_count : Nat := 93
def small_93159_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004022A45770000000813E1C4F6022A457913E200F8000000010AD3577B10D13CFA00000002067ECE7D0000000612EA590600000003000000090000000813E1C4F80AD3577B10D13CFA00000002067ECE7D0000000612EA590600000003000000080000000800000001000000000F8750FF00000008000000040F34D0FE00000009000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004022A45770000000913E1C4F6022A45790000000913E1C4F80AD3577B10D13CFA00000002022A457D13E201060DE7C9FE000000090000000500000003000000050000000500000001000000000F8750FF022A457713E200F600000000022A4579000000090000000813E1C4F6022A457913E200F8000000010AD3577B000000060000000913E1C4F80AD3577B00000006000000050000000100000000000000040000000900000002"
theorem small_93159_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_93159_right_root small_93159_right_fuel small_93159_right_count small_93159_right_encoded = true := by
  decide +kernel
theorem small_93159_right_covered : CoveredBy scale carrier boxes small_93159_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_93159_right_root small_93159_right_fuel small_93159_right_count small_93159_right_encoded small_93159_right_checked

theorem cover_93159 : CoveredBy scale carrier boxes root_93159 := by
  apply coveredBy_split_literal root_93159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_93160 small_93159_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_93160
  · exact small_93159_right_covered
#print axioms cover_93159

def root_93154 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93154_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_93154_right_fuel : Nat := 1
def small_93154_right_count : Nat := 1
def small_93154_right_encoded : String := "00000001"
theorem small_93154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_93154_right_root small_93154_right_fuel small_93154_right_count small_93154_right_encoded = true := by
  decide +kernel
theorem small_93154_right_covered : CoveredBy scale carrier boxes small_93154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_93154_right_root small_93154_right_fuel small_93154_right_count small_93154_right_encoded small_93154_right_checked

theorem cover_93154 : CoveredBy scale carrier boxes root_93154 := by
  apply coveredBy_split_literal root_93154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_93159 small_93154_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_93159
  · exact small_93154_right_covered
#print axioms cover_93154

def root_90426 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_90426 : CoveredBy scale carrier boxes root_90426 := by
  apply coveredBy_split_literal root_90426 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0032.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_93154 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0032.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_93154
#print axioms cover_90426

def root_90421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_90421_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_90421_right_fuel : Nat := 1
def small_90421_right_count : Nat := 1
def small_90421_right_encoded : String := "00000000"
theorem small_90421_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_90421_right_root small_90421_right_fuel small_90421_right_count small_90421_right_encoded = true := by
  decide +kernel
theorem small_90421_right_covered : CoveredBy scale carrier boxes small_90421_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_90421_right_root small_90421_right_fuel small_90421_right_count small_90421_right_encoded small_90421_right_checked

theorem cover_90421 : CoveredBy scale carrier boxes root_90421 := by
  apply coveredBy_split_literal root_90421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_90426 small_90421_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_90426
  · exact small_90421_right_covered
#print axioms cover_90421

def root_85829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_85829 : CoveredBy scale carrier boxes root_85829 := by
  apply coveredBy_split_literal root_85829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_90421 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85830
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_90421
#print axioms cover_85829

def root_85823 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85823_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85823_left_fuel : Nat := 1
def small_85823_left_count : Nat := 1
def small_85823_left_encoded : String := "00000004"
theorem small_85823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85823_left_root small_85823_left_fuel small_85823_left_count small_85823_left_encoded = true := by
  decide +kernel
theorem small_85823_left_covered : CoveredBy scale carrier boxes small_85823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85823_left_root small_85823_left_fuel small_85823_left_count small_85823_left_encoded small_85823_left_checked

theorem cover_85823 : CoveredBy scale carrier boxes root_85823 := by
  apply coveredBy_split_literal root_85823 small_85823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85829 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_85823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85829
#print axioms cover_85823

def root_85822 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85822_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85822_right_fuel : Nat := 6
def small_85822_right_count : Nat := 11
def small_85822_right_encoded : String := "120700FE045489F700000009138670F6045489F900000009138670F800000009000000010000000000000004"
theorem small_85822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85822_right_root small_85822_right_fuel small_85822_right_count small_85822_right_encoded = true := by
  decide +kernel
theorem small_85822_right_covered : CoveredBy scale carrier boxes small_85822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85822_right_root small_85822_right_fuel small_85822_right_count small_85822_right_encoded small_85822_right_checked

theorem cover_85822 : CoveredBy scale carrier boxes root_85822 := by
  apply coveredBy_split_literal root_85822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85823 small_85822_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85823
  · exact small_85822_right_covered
#print axioms cover_85822

def root_85816 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85816_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85816_left_fuel : Nat := 1
def small_85816_left_count : Nat := 1
def small_85816_left_encoded : String := "00000003"
theorem small_85816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85816_left_root small_85816_left_fuel small_85816_left_count small_85816_left_encoded = true := by
  decide +kernel
theorem small_85816_left_covered : CoveredBy scale carrier boxes small_85816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85816_left_root small_85816_left_fuel small_85816_left_count small_85816_left_encoded small_85816_left_checked

theorem cover_85816 : CoveredBy scale carrier boxes root_85816 := by
  apply coveredBy_split_literal root_85816 small_85816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85822 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_85816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85822
#print axioms cover_85816

def root_85344 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85344_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85344_left_fuel : Nat := 24
def small_85344_left_count : Nat := 219
def small_85344_left_encoded : String := "12073D0608A912FF12073CFE00000004045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000080F8750FB00000005000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD000000080F34D106000000030CFD9BFF000000080000000800000002138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040000000800000008000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000080F8750FB0C9A86FE0F878CFF00000004067ECE77000000080000000A00000008000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD000000080F34D10600000003000000080000000200000001138670F6045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0000000A0F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0000000A0F8750FF022A4577000000080000000A000000040000000A0000000A0F34D0FA0CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE00000004000000080F34D0FE000000090000000400000002138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86FA000000080000000A0000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004022A4577000000080000000A000000080F8750FB0C9A86FE0F878CFF000000040000000A0F8750FF022A457713E200F600000000022A4579000000080000000813E1C4F6022A45790000000A13E1C4F80AD3577D0000000610D101060000000300000006000000010000000000000004000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD0F350D0600000008000000030F34D106000000030CFD9BFF0F350CFE00000004000000080F34D0FE022A4577000000080000000A00000004000000020000000100000000120700FE045489F71386ACF600000000045489F90000000A138670F80CFD9BFB0000000A0000000A00000001138670F6045489F90000000A138670F80000000A00000001000000000000000400000003"
theorem small_85344_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85344_left_root small_85344_left_fuel small_85344_left_count small_85344_left_encoded = true := by
  decide +kernel
theorem small_85344_left_covered : CoveredBy scale carrier boxes small_85344_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85344_left_root small_85344_left_fuel small_85344_left_count small_85344_left_encoded small_85344_left_checked

theorem cover_85344 : CoveredBy scale carrier boxes root_85344 := by
  apply coveredBy_split_literal root_85344 small_85344_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85816 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_85344_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85816
#print axioms cover_85344

def root_85338 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85338_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85338_left_fuel : Nat := 1
def small_85338_left_count : Nat := 1
def small_85338_left_encoded : String := "00000002"
theorem small_85338_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85338_left_root small_85338_left_fuel small_85338_left_count small_85338_left_encoded = true := by
  decide +kernel
theorem small_85338_left_covered : CoveredBy scale carrier boxes small_85338_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85338_left_root small_85338_left_fuel small_85338_left_count small_85338_left_encoded small_85338_left_checked

theorem cover_85338 : CoveredBy scale carrier boxes root_85338 := by
  apply coveredBy_split_literal root_85338 small_85338_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85344 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_85338_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85344
#print axioms cover_85338

def root_85337 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85337_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85337_right_fuel : Nat := 14
def small_85337_right_count : Nat := 43
def small_85337_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE00000004045489F700000008138670F6045489F91386ACF800000001045489FB1386ACFA000000020CFD9BFD000000080F34D1060000000300000008000000080000000800000000120700FE000000090000000400000003120701060000000308A912FF12073CFE00000004045489F700000009138670F6045489F900000009138670F80000000900000001000000000000000900000002"
theorem small_85337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85337_right_root small_85337_right_fuel small_85337_right_count small_85337_right_encoded = true := by
  decide +kernel
theorem small_85337_right_covered : CoveredBy scale carrier boxes small_85337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85337_right_root small_85337_right_fuel small_85337_right_count small_85337_right_encoded small_85337_right_checked

theorem cover_85337 : CoveredBy scale carrier boxes root_85337 := by
  apply coveredBy_split_literal root_85337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85338 small_85337_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85338
  · exact small_85337_right_covered
#print axioms cover_85337

def root_85332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85332_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_85332_right_fuel : Nat := 1
def small_85332_right_count : Nat := 1
def small_85332_right_encoded : String := "00000001"
theorem small_85332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_85332_right_root small_85332_right_fuel small_85332_right_count small_85332_right_encoded = true := by
  decide +kernel
theorem small_85332_right_covered : CoveredBy scale carrier boxes small_85332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_85332_right_root small_85332_right_fuel small_85332_right_count small_85332_right_encoded small_85332_right_checked

theorem cover_85332 : CoveredBy scale carrier boxes root_85332 := by
  apply coveredBy_split_literal root_85332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85337 small_85332_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85337
  · exact small_85332_right_covered
#print axioms cover_85332

def root_84412 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_84412_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_84412_left_fuel : Nat := 33
def small_84412_left_count : Nat := 431
def small_84412_left_encoded : String := "12073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE00000004045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD000000050F34D1060000000300000008000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030000000A0F34D0FA0CFD9BFD000000080F34D10600000003000000090000000200000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0000000A0F34D106000000030CFD9BFF0F350CFE000000040C9A86F80000000A0000000800000009000000020F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0000000A0F34D106000000030000000A0F34D0FA0CFD9BFD0000000A0F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0000000A0000000800000009000000020000000100000000120700FE0000000A0000000400000003120701060000000308A912FF12073CFE00000004045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FA000000050000000A0F8750F90000000500000001000000090000000313867106000000030CFD9BFF0F350CFE000000040C9A86F8000000090000000900000009000000090F34D0F80CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE000000090F8750FF067ECE770000000512EA58F60000000900000000000000040F8750FB0C9A86FE0000000A0F8750FF000000050000000400000002000000090000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000090F8750FB0C9A86FE0F878CFF00000004000000090F8750FF067ECE770000000912EA58F60AD357790000000910D100F8022A457D0000000A13E1C506000000030000000900000001000000000000000400000002000000090000000900000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86F80000000A0F8750F90000000A000000010000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000090F8750FB0C9A86FE0000000A0F8750FF022A4577000000090000000A00000004000000020F8750F90C9A86FA000000090000000A00000001000000090F34D0FA00000009000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040000000A0F8750FF022A457713E200F6000000000AD357790000000510D100F8067ECE7D0000000512EA590600000003000000090000000113E1C4F60AD357790000000A10D100F80000000A0000000100000000000000040F8750FB0000000A000000020F34D0FE00000009000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004000000090F8750FF022A45770000000913E1C4F60AD357790000000910D100F8022A457D00000006000000070000000100000000000000040F8750FB0C9A86FE0F878CFF00000004022A4577000000090000000A0F8750FF022A457713E200F6000000000AD3577910D13CF800000001022A457D0000000A13E1C506000000030B4D43FA000000090000000A10D100F8022A457D0000000A13E1C506000000030B4D43FA10804CFB000000020B4D43FE0000000900000007108010FB0B4D43FE0000000A108010FF033F67B70000000A0000000A00000004000000020000000113E1C4F60AD3577910D13CF8000000010000000A10D100F8022A457D0000000A13E1C506000000030B4D43FA10804CFB000000020B4D43FE0000000A000000060000000A000000010000000000000004000000020F34D0FE00000009000000040F34D0FA00000009000000020000000100000000120700FE0000000900000004120700FA08A912FD12073D0608A912FF12073CFE00000004045489F71386ACF6000000000CFD9BF90000000900000008138670F60CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9BFD000000080F34D1060000000300000008000000090F34D0F8045489FB1386ACFA000000020CFD9BFD000000080F34D1060000000300000008000000080000000100000000000000090000000312070106000000030000000900000002"
theorem small_84412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_84412_left_root small_84412_left_fuel small_84412_left_count small_84412_left_encoded = true := by
  decide +kernel
theorem small_84412_left_covered : CoveredBy scale carrier boxes small_84412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_84412_left_root small_84412_left_fuel small_84412_left_count small_84412_left_encoded small_84412_left_checked

theorem cover_84412 : CoveredBy scale carrier boxes root_84412 := by
  apply coveredBy_split_literal root_84412 small_84412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_85332 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_84412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_85332
#print axioms cover_84412

def root_84407 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_84407_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_84407_right_fuel : Nat := 1
def small_84407_right_count : Nat := 1
def small_84407_right_encoded : String := "00000000"
theorem small_84407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_84407_right_root small_84407_right_fuel small_84407_right_count small_84407_right_encoded = true := by
  decide +kernel
theorem small_84407_right_covered : CoveredBy scale carrier boxes small_84407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_84407_right_root small_84407_right_fuel small_84407_right_count small_84407_right_encoded small_84407_right_checked

theorem cover_84407 : CoveredBy scale carrier boxes root_84407 := by
  apply coveredBy_split_literal root_84407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_84412 small_84407_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_84412
  · exact small_84407_right_covered
#print axioms cover_84407

def root_83245 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_83245 : CoveredBy scale carrier boxes root_83245 := by
  apply coveredBy_split_literal root_83245 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0029.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_84407 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0029.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_84407
#print axioms cover_83245

def root_83239 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_83239_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_83239_left_fuel : Nat := 1
def small_83239_left_count : Nat := 1
def small_83239_left_encoded : String := "00000004"
theorem small_83239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_83239_left_root small_83239_left_fuel small_83239_left_count small_83239_left_encoded = true := by
  decide +kernel
theorem small_83239_left_covered : CoveredBy scale carrier boxes small_83239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_83239_left_root small_83239_left_fuel small_83239_left_count small_83239_left_encoded small_83239_left_checked

theorem cover_83239 : CoveredBy scale carrier boxes root_83239 := by
  apply coveredBy_split_literal root_83239 small_83239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_83245 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_83239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_83245
#print axioms cover_83239

def root_97150 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_97150_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_97150_left_fuel : Nat := 30
def small_97150_left_count : Nat := 391
def small_97150_left_encoded : String := "12073CF80000000108A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF00000004045489F71386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFB000000050000000800000001138670F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000005000000020F34D0F80CFD9BFB000000050F34D0FA00000008000000020000000100000000135D44FF045489F700000005138670F60CFD9BF9000000050F34D0F80CFD9BFB000000050F34D0FA0000000600000002000000010000000000000004000000031207010600000003050000FE135D80FF00000004045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000513867106000000030C9A86F80F878CF9000000010C9A86FA000000070F8750FB00000005000000020F8750F900000005000000010F34D0FA00000007000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002000000080F8750FB00000005000000020000000313867106000000030C9A86FA0F878CFB00000002078000FE128A7CFF00000004067ECE770000000700000007000000070F8750FB078000FE128A7CFF00000004067ECE770000000512EA58F60AD357790000000510D100F8022A457D0000000513E1C506000000030B4D43FA00000007108010FB08C000FE0000000500000007000000020000000100000000128A40FF067ECE770000000512EA58F60AD357790000000510D100F800000007000000010000000000000004000000020F34D0FA045489FD00000008000000070000000200000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F80F878CF9000000010C9A86FA0F878CFB00000002078000FE00000005000000060F8750FB00000005000000020F8750F900000005000000010000000313867106000000030C9A86F80F878CF9000000010C9A86FA000000070F8750FB078000FE128A7CFF00000004022A4577000000070000000700000007000000020F8750F90C9A86FA0000000700000007000000010F34D0FA045489FD1386AD06000000070000000300000007000000020F34D0F80CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002078000FE128A7CFF00000004022A457713E200F6000000000AD35779000000050000000800000006000000060F8750FB078000FE128A7CFF00000004022A4577000000050000000600000006000000020000000313867106000000030C9A86FA0F878CFB00000002078000FE128A7CFF00000004022A45770000000700000006000000060F8750FB078000FE128A7CFF00000004022A457713E200F6000000000AD3577910D13CF800000001022A457D000000050000000710D100F8022A457D13E201060B4D43FA00000006108010FB00000006000000020000000313E1C506000000030B4D43FA00000006108010FB08C000FE11FC24FF000000040000000700000006000000020000000113E1C4F60AD357790000000610D100F8000000060000000100000000128A40FF0000000600000004000000020F34D0FA045489FD1386AD06078000FE128A7CFF0000000400000008000000060000000300000007000000020000000100000000135D44FF045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB00000005000000070F34D0F80CFD9BFB0F350CFA00000002045489FD00000005000000070000000700000001138670F60CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000500000007000000070F34D0F80CFD9BFB0000000600000007000000010000000000000004120700FA08A912FD12073D06050000FE135D80FF00000004045489F71386ACF6000000000CFD9BF90F350CF8000000010000000800000008138670F60CFD9BF90F350CF800000001045489FB00000008138670FA00000007000000020000000800000000135D44FF045489F71386ACF6000000000CFD9BF90000000700000008138670F60CFD9BF900000007000000080000000000000004000000031207010600000003050000FE135D80FF00000004045489F700000007000000070000000700000002"
theorem small_97150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_97150_left_root small_97150_left_fuel small_97150_left_count small_97150_left_encoded = true := by
  decide +kernel
theorem small_97150_left_covered : CoveredBy scale carrier boxes small_97150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_97150_left_root small_97150_left_fuel small_97150_left_count small_97150_left_encoded small_97150_left_checked

theorem cover_97150 : CoveredBy scale carrier boxes root_97150 := by
  apply coveredBy_split_literal root_97150 small_97150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0034.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_97150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0034.covered
#print axioms cover_97150

def root_97145 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_97145_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_97145_right_fuel : Nat := 1
def small_97145_right_count : Nat := 1
def small_97145_right_encoded : String := "00000000"
theorem small_97145_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_97145_right_root small_97145_right_fuel small_97145_right_count small_97145_right_encoded = true := by
  decide +kernel
theorem small_97145_right_covered : CoveredBy scale carrier boxes small_97145_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_97145_right_root small_97145_right_fuel small_97145_right_count small_97145_right_encoded small_97145_right_checked

theorem cover_97145 : CoveredBy scale carrier boxes root_97145 := by
  apply coveredBy_split_literal root_97145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_97150 small_97145_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_97150
  · exact small_97145_right_covered
#print axioms cover_97145

def root_96723 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_96723_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_96723_left_fuel : Nat := 25
def small_96723_left_count : Nat := 201
def small_96723_left_encoded : String := "12073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD000000051207010600000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000050F34D0F80CFD9BFB0000000500000008000000010F34D0F60CFD9BF90F350CF8000000010CFD9BFB000000050F34D0FA00000007000000020F34D0F80CFD9BFB0F350CFA00000002045489FD0000000513867106000000030C9A86FA0F878CFB00000002078000FE00000009000000070F8750FB00000005000000020F34D0FA00000008000000020000000100000000135D44FF0CFD9BF7000000050F34D0F60CFD9BF900000005000000080000000000000004120700FA08A912FD12073D06050000FE00000008000000080000000312070106000000030000000800000002120700F808A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF000000040CFD9BF7000000080F34D0F6000000080000000000000008000000031207010600000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD0000000513867106000000030C9A86F6000000080000000800000008138670F80CFD9BFB0F350CFA00000002045489FD0000000813867106000000030000000800000008000000010F34D0F6045489F91386ACF8000000010CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A86FA0F878CFB00000002000000080F8750FB078000FE128A7CFF000000040AD357770000000510D100F6067ECE79000000050000000800000000128A40FF0AD357770000000510D100F6000000080000000000000004000000020F34D0FA0000000800000002138670F80CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A86FA000000080F8750FB078000FE128A7CFF000000040AD357770000000810D100F6022A45790000000800000008000000000000000800000002000000080000000100000000135D44FF0CFD9BF7000000080F34D0F6045489F900000008000000080000000000000004120700FA000000080000000200000001"
theorem small_96723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_96723_left_root small_96723_left_fuel small_96723_left_count small_96723_left_encoded = true := by
  decide +kernel
theorem small_96723_left_covered : CoveredBy scale carrier boxes small_96723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_96723_left_root small_96723_left_fuel small_96723_left_count small_96723_left_encoded small_96723_left_checked

theorem cover_96723 : CoveredBy scale carrier boxes root_96723 := by
  apply coveredBy_split_literal root_96723 small_96723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_97145 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_96723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_97145
#print axioms cover_96723

def root_96718 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_96718_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_96718_right_fuel : Nat := 1
def small_96718_right_count : Nat := 1
def small_96718_right_encoded : String := "00000004"
theorem small_96718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_96718_right_root small_96718_right_fuel small_96718_right_count small_96718_right_encoded = true := by
  decide +kernel
theorem small_96718_right_covered : CoveredBy scale carrier boxes small_96718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_96718_right_root small_96718_right_fuel small_96718_right_count small_96718_right_encoded small_96718_right_checked

theorem cover_96718 : CoveredBy scale carrier boxes root_96718 := by
  apply coveredBy_split_literal root_96718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_96723 small_96718_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_96723
  · exact small_96718_right_covered
#print axioms cover_96718

def root_83238 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_83238 : CoveredBy scale carrier boxes root_83238 := by
  apply coveredBy_split_literal root_83238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_83239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_96718 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_83239
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_96718
#print axioms cover_83238

def root_83232 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_83232_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_83232_left_fuel : Nat := 1
def small_83232_left_count : Nat := 1
def small_83232_left_encoded : String := "00000003"
theorem small_83232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_83232_left_root small_83232_left_fuel small_83232_left_count small_83232_left_encoded = true := by
  decide +kernel
theorem small_83232_left_covered : CoveredBy scale carrier boxes small_83232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_83232_left_root small_83232_left_fuel small_83232_left_count small_83232_left_encoded small_83232_left_checked

theorem cover_83232 : CoveredBy scale carrier boxes root_83232 := by
  apply coveredBy_split_literal root_83232 small_83232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_83238 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_83232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_83238
#print axioms cover_83232

def root_82878 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82878_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82878_left_fuel : Nat := 19
def small_82878_left_count : Nat := 169
def small_82878_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FF00000005120700FE05000106000000050000000800000004120700FA08A912FF12073CFE000000040500010600000005000000080000000800000002120700F808A912FB12073CFA0000000208A912FF12073CFE00000004050001060000000500000008120700FE05000106000000080000000800000004120700FA000000080000000200000001120700F608A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000405000106000000050000000A0000000A120700FA08A912FF12073CFE00000004050001060000000A0000000A0000000800000002120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD045489F7000000050000000A00000003135D80FD00000003045489F71386ACF60000000000000008138670F6045489F90000000A138670F80CFD9BFB0000000A000000080000000100000000120700FE0000000A00000004120700FA000000080000000200000001000000001151E8FF08A912F712073CF60000000008A912F900000005120700F808A912FB00000005120700FA000000080000000200000001120700F608A912F912073CF80000000108A912FB00000005120700FA05000106135D44FD0000000500000003135D80FD00000003050000FE135D80FF00000004045489F700000005138670F60CFD9BF9000000050000000800000000135D44FF045489F700000005138670F60CFD9BF90000000500000008000000000000000400000002120700F808A912FB12073CFA0000000205000106135D44FD000000050000000300000008120700FA000000080000000200000001000000000000000400000003"
theorem small_82878_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_82878_left_root small_82878_left_fuel small_82878_left_count small_82878_left_encoded = true := by
  decide +kernel
theorem small_82878_left_covered : CoveredBy scale carrier boxes small_82878_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_82878_left_root small_82878_left_fuel small_82878_left_count small_82878_left_encoded small_82878_left_checked

theorem cover_82878 : CoveredBy scale carrier boxes root_82878 := by
  apply coveredBy_split_literal root_82878 small_82878_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_83232 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_82878_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_83232
#print axioms cover_82878

def root_82872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82872_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82872_left_fuel : Nat := 1
def small_82872_left_count : Nat := 1
def small_82872_left_encoded : String := "00000002"
theorem small_82872_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_82872_left_root small_82872_left_fuel small_82872_left_count small_82872_left_encoded = true := by
  decide +kernel
theorem small_82872_left_covered : CoveredBy scale carrier boxes small_82872_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_82872_left_root small_82872_left_fuel small_82872_left_count small_82872_left_encoded small_82872_left_checked

theorem cover_82872 : CoveredBy scale carrier boxes root_82872 := by
  apply coveredBy_split_literal root_82872 small_82872_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_82878 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_82872_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_82878
#print axioms cover_82872

def root_102014 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_102014_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_102014_left_fuel : Nat := 24
def small_102014_left_count : Nat := 135
def small_102014_left_encoded : String := "12073CF80000000108A912FD12073D0608A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF6000000000000000A0000000A0000000A0000000A00000003120701060000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90F350CF800000001045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86F80000000A0000000A0000000A0F34D0F8045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A0F8750FF078000FA128A7CFB00000002067ECE770000000512EA58F60AD357790000000510D100F80000000A0000000100000000128A40FB067ECE77000000050000000A00000002000000040F34D0FE000000090000000400000001138670F60CFD9BF90F350CF800000001045489FD0000000A13867106000000030000000A0F34D0F8045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86FE0000000A0F8750FF078000FA128A7CFB00000002022A457713E200F6000000000AD357790000000A10D100F80000000A000000010000000A0000000A000000040000000A0000000100000000135D44FB045489F71386ACF6000000000CFD9BF90000000A0F34D0F80000000A00000001138670F60CFD9BF90000000A0F34D0F80000000A000000010000000000000002120700FE0000000A00000004"
theorem small_102014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_102014_left_root small_102014_left_fuel small_102014_left_count small_102014_left_encoded = true := by
  decide +kernel
theorem small_102014_left_covered : CoveredBy scale carrier boxes small_102014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_102014_left_root small_102014_left_fuel small_102014_left_count small_102014_left_encoded small_102014_left_checked

theorem cover_102014 : CoveredBy scale carrier boxes root_102014 := by
  apply coveredBy_split_literal root_102014 small_102014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0035.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_102014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0035.covered
#print axioms cover_102014

def root_102009 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_102009_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_102009_right_fuel : Nat := 1
def small_102009_right_count : Nat := 1
def small_102009_right_encoded : String := "00000000"
theorem small_102009_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_102009_right_root small_102009_right_fuel small_102009_right_count small_102009_right_encoded = true := by
  decide +kernel
theorem small_102009_right_covered : CoveredBy scale carrier boxes small_102009_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_102009_right_root small_102009_right_fuel small_102009_right_count small_102009_right_encoded small_102009_right_checked

theorem cover_102009 : CoveredBy scale carrier boxes root_102009 := by
  apply coveredBy_split_literal root_102009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_102014 small_102009_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_102014
  · exact small_102009_right_covered
#print axioms cover_102009

def root_100991 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100991_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100991_left_fuel : Nat := 32
def small_100991_left_count : Nat := 481
def small_100991_left_encoded : String := "12073CF60000000008A912F912073CF80000000108A912FD12073D0608A912FF00000005120700FE050000FA0000000A0000000A0000000400000003120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350CF6000000000CFD9BF9000000050F34D0F8045489FD0000000513867106000000030CFD9BFF0000000500000006000000010F34D0F60CFD9BF90F350CF800000001045489FD0000000513867106000000030CFD9BFF00000005000000090F34D0F8045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA00000009000000060F8750FF0000000500000004000000090000000100000000135D44FB0CFD9BF7000000050F34D0F60CFD9BF9000000050F34D0F80000000A000000010000000000000002120700FE0000000A00000004120700F808A912FD12073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350CF600000000045489F900000005138670F80CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000500000004000000010F34D0F6045489F91386ACF8000000010CFD9BFD000000050F34D106000000030000000A138670F80CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000A000000040000000100000000135D44FB0CFD9BF7000000050F34D0F6045489F900000005138670F80CFD9BFD000000050F34D1060000000300000007000000010000000000000002120700FE050000FA135D80FB000000020CFD9BF70F350CF600000000045489F90000000A138670F80CFD9BFD0000000A0F34D1060000000300000006000000010000000A135D44FB0CFD9BF7000000060F34D0F60000000A00000000000000020000000400000003120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350CF600000000045489F91386ACF800000001045489FD1386AD060CFD9BFF000000050F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE000000060F8750FF00000005000000040F8750F7000000050000000000000006138670F8045489FD1386AD060CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004078000FA00000005000000060F8750FF00000005000000040F8750F700000005000000000F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE000000060F8750FF078000FA128A7CFB00000002022A4579000000060000000600000006000000040F8750F70C9A86FE00000006000000060000000000000006000000010F34D0F6045489F91386ACF800000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A0F8750FF00000005000000040F34D0FE0000000A000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA128A7CFB000000020AD357770000000610D100F60000000600000000000000060F8750FF078000FA128A7CFB000000020AD357770000000510D100F6067ECE790000000512EA58F8022A457D0000000513E1C506000000030B4D43FE00000006108010FF08C000FA0000000500000006000000040000000100000000128A40FB0AD357770000000510D100F6067ECE7900000005000000060000000000000002000000040F34D0FE0000000600000004138670F8045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA128A7CFB000000020AD357770000000710D100F60000000700000000000000070F8750FF078000FA128A7CFB000000020AD357770000000510D100F6022A457900000005000000070000000000000007000000040F34D0FE078000FA128A7CFB000000020000000A00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA128A7CFB000000020AD357770000000610D100F60000000600000000000000060F8750FF078000FA128A7CFB000000020AD3577710D13CF600000000022A457913E200F800000001022A457D00000005000000060000000710D100F6022A457913E200F800000001022A457D13E201060B4D43FE00000007108010FF00000007000000040000000313E1C506000000030B4D43FE00000006108010FF08C000FA11FC24FB000000020000000600000006000000040000000700000000128A40FB0000000700000002000000040F34D0FE00000006000000040000000100000000135D44FB0CFD9BF70F350CF600000000045489F91386ACF800000001045489FD0000000500000006138670F8045489FD1386AD060CFD9BFF00000005000000060000000300000006000000010F34D0F6045489F91386ACF800000001045489FD0000000A00000006138670F8045489FD0000000700000006000000010000000000000002120700FE050000FA135D80FB000000020CFD9BF7000000060F34D0F60000000600000000000000060000000400000001"
theorem small_100991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_100991_left_root small_100991_left_fuel small_100991_left_count small_100991_left_encoded = true := by
  decide +kernel
theorem small_100991_left_covered : CoveredBy scale carrier boxes small_100991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_100991_left_root small_100991_left_fuel small_100991_left_count small_100991_left_encoded small_100991_left_checked

theorem cover_100991 : CoveredBy scale carrier boxes root_100991 := by
  apply coveredBy_split_literal root_100991 small_100991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_102009 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_100991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_102009
#print axioms cover_100991

def root_100985 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100985_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100985_left_fuel : Nat := 1
def small_100985_left_count : Nat := 1
def small_100985_left_encoded : String := "00000004"
theorem small_100985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_100985_left_root small_100985_left_fuel small_100985_left_count small_100985_left_encoded = true := by
  decide +kernel
theorem small_100985_left_covered : CoveredBy scale carrier boxes small_100985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_100985_left_root small_100985_left_fuel small_100985_left_count small_100985_left_encoded small_100985_left_checked

theorem cover_100985 : CoveredBy scale carrier boxes root_100985 := by
  apply coveredBy_split_literal root_100985 small_100985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100991 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_100985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100991
#print axioms cover_100985

def root_105764 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105764_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105764_left_fuel : Nat := 30
def small_105764_left_count : Nat := 271
def small_105764_left_encoded : String := "12073CF80000000108A912FD000000051207010600000003050000FA135D80FB00000002050000FE135D80FF00000004045489F71386ACF6000000000CFD9BF9000000050F34D0F8045489FD000000051386710600000003078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE770000000512EA58F60AD357790000000510D100F8022A457D0000000513E1C5060000000308C000FA0000000511FBE8FB00000005000000020000000100000000128A40FF0000000500000004128A40FB078000FE00000005128A40FF00000005000000040000000200000001138670F60CFD9BF90F350CF800000001045489FD0000000513867106000000030C9A86F80F878CF900000001078000FA128A7CFB00000002078000FE128A7CFF00000004022A4577000000050000000A128A40FF0000000500000004128A40FB078000FE00000005128A40FF0000000500000004000000020F8750F900000005000000010F34D0F8045489FD1386AD06078000FA128A7CFB00000002078000FE128A7CFF000000040000000A128A40FF0000000500000004128A40FB0000000500000002000000031386710600000003078000FA128A7CFB00000002078000FE128A7CFF00000004022A457713E200F6000000000AD3577910D13CF800000001022A457D0000000513E1C5060000000308C000FA11FC24FB00000002000000070000000A10D100F8022A457D13E201060000000A0000000313E1C5060000000308C000FA11FC24FB0000000208C000FE11FC24FF00000004033F67B713BC30F6000000000000000A000000060000000611FBE8FB08C000FE0000000A11FBE8FF033F67B7000000050000000600000004000000020000000113E1C4F60AD3577910D13CF800000001022A457D0000000613E1C506000000030000000A10D100F8022A457D0000000613E1C50600000003000000060000000100000000128A40FF022A457713E200F6000000000AD357790000000510D100F800000006000000010000000600000004128A40FB078000FE128A7CFF00000004022A457713E200F6000000000AD357790000000510D100F80000000A0000000113E1C4F60AD357790000000A10D100F8000000090000000100000000128A40FF022A457713E200F6000000000AD3577900000005000000090000000900000004000000020000000100000000135D44FF045489F700000005138670F60CFD9BF9000000050F34D0F8045489FD000000051386710600000003078000FA00000006128A40FB0000000600000002000000010000000000000004135D44FB050000FE135D80FF00000004045489F700000005138670F60CFD9BF9000000050F34D0F8045489FD000000051386710600000003028000FA13D7ECFB00000002078000FE0000000A128A40FF00000009000000040000000A0000000100000000135D44FF045489F700000005138670F60CFD9BF90000000500000009000000000000000400000002"
theorem small_105764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_105764_left_root small_105764_left_fuel small_105764_left_count small_105764_left_encoded = true := by
  decide +kernel
theorem small_105764_left_covered : CoveredBy scale carrier boxes small_105764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_105764_left_root small_105764_left_fuel small_105764_left_count small_105764_left_encoded small_105764_left_checked

theorem cover_105764 : CoveredBy scale carrier boxes root_105764 := by
  apply coveredBy_split_literal root_105764 small_105764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0036.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_105764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0036.covered
#print axioms cover_105764

def root_105759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105759_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105759_right_fuel : Nat := 1
def small_105759_right_count : Nat := 1
def small_105759_right_encoded : String := "00000000"
theorem small_105759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_105759_right_root small_105759_right_fuel small_105759_right_count small_105759_right_encoded = true := by
  decide +kernel
theorem small_105759_right_covered : CoveredBy scale carrier boxes small_105759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_105759_right_root small_105759_right_fuel small_105759_right_count small_105759_right_encoded small_105759_right_checked

theorem cover_105759 : CoveredBy scale carrier boxes root_105759 := by
  apply coveredBy_split_literal root_105759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_105764 small_105759_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_105764
  · exact small_105759_right_covered
#print axioms cover_105759

def root_105193 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105193_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105193_left_fuel : Nat := 32
def small_105193_left_count : Nat := 265
def small_105193_left_encoded : String := "12073CF60000000008A912F900000005120700F808A912FD000000051207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF600000000045489F900000005138670F8045489FD0000000513867106000000030C9A86F60F878CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004022A4579000000050000000800000008128A40FB078000FE00000005128A40FF0000000500000004000000020F8750F70000000500000000000000010F34D0F6045489F91386ACF800000001045489FD000000051386710600000003078000FA128A7CFB00000002078000FE128A7CFF000000040AD357770000000510D100F6067ECE790000000512EA58F8022A457D0000000513E1C5060000000308C000FA0000000511FBE8FB00000005000000020000000100000000128A40FF0000000500000004128A40FB078000FE00000005128A40FF000000050000000400000002138670F8045489FD1386AD06078000FA128A7CFB00000002078000FE128A7CFF000000040000000800000008128A40FB0000000500000002000000031386710600000003078000FA128A7CFB00000002078000FE128A7CFF000000040AD3577710D13CF600000000022A457913E200F800000001022A457D0000000513E1C5060000000308C000FA0000000811FBE8FB000000050000000213E1C4F8022A457D0000000713E1C50600000003000000080000000110D100F6022A457913E200F800000001022A457D13E20106000000080000000313E1C5060000000308C000FA11FC24FB0000000208C000FE11FC24FF0000000409BE353700000008117740F600000008000000000000000811FBE8FB08C000FE0000000711FBE8FF09BE353700000005117740F60000000700000000000000040000000213E1C4F8022A457D0000000713E1C50600000003000000070000000100000000128A40FF0AD357770000000810D100F6022A457913E200F80000000100000008000000080000000000000004128A40FB078000FE128A7CFF000000040AD357770000000710D100F60000000700000000128A40FF0AD3577710D13CF600000000022A457900000005000000070000000900000004000000020000000100000000135D44FF0CFD9BF7000000050F34D0F6045489F900000005138670F8045489FD000000051386710600000003078000FA128A7CFB0000000200000008128A40FB0000000900000002000000010000000000000004135D44FB050000FE135D80FF000000040CFD9BF7000000050F34D0F6045489F900000005138670F8045489FD000000051386710600000003028000FA13D7ECFB00000002078000FE00000007128A40FF0000000700000004000000070000000100000000135D44FF0CFD9BF7000000050F34D0F6045489F9000000050000000900000000000000040000000200000001"
theorem small_105193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_105193_left_root small_105193_left_fuel small_105193_left_count small_105193_left_encoded = true := by
  decide +kernel
theorem small_105193_left_covered : CoveredBy scale carrier boxes small_105193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_105193_left_root small_105193_left_fuel small_105193_left_count small_105193_left_encoded small_105193_left_checked

theorem cover_105193 : CoveredBy scale carrier boxes root_105193 := by
  apply coveredBy_split_literal root_105193 small_105193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_105759 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_105193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_105759
#print axioms cover_105193

def root_105188 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105188_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_105188_right_fuel : Nat := 1
def small_105188_right_count : Nat := 1
def small_105188_right_encoded : String := "00000004"
theorem small_105188_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_105188_right_root small_105188_right_fuel small_105188_right_count small_105188_right_encoded = true := by
  decide +kernel
theorem small_105188_right_covered : CoveredBy scale carrier boxes small_105188_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_105188_right_root small_105188_right_fuel small_105188_right_count small_105188_right_encoded small_105188_right_checked

theorem cover_105188 : CoveredBy scale carrier boxes root_105188 := by
  apply coveredBy_split_literal root_105188 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_105193 small_105188_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_105193
  · exact small_105188_right_covered
#print axioms cover_105188

def root_100984 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_100984 : CoveredBy scale carrier boxes root_100984 := by
  apply coveredBy_split_literal root_100984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_105188 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100985
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_105188
#print axioms cover_100984

def root_100978 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100978_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100978_left_fuel : Nat := 1
def small_100978_left_count : Nat := 1
def small_100978_left_encoded : String := "00000003"
theorem small_100978_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_100978_left_root small_100978_left_fuel small_100978_left_count small_100978_left_encoded = true := by
  decide +kernel
theorem small_100978_left_covered : CoveredBy scale carrier boxes small_100978_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_100978_left_root small_100978_left_fuel small_100978_left_count small_100978_left_encoded small_100978_left_checked

theorem cover_100978 : CoveredBy scale carrier boxes root_100978 := by
  apply coveredBy_split_literal root_100978 small_100978_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100984 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_100978_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100984
#print axioms cover_100978

def root_100848 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100848_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100848_left_fuel : Nat := 16
def small_100848_left_count : Nat := 61
def small_100848_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912F900000005120700F808A912FF00000005120700FE050000FA135D80FB000000020500010600000005135D80FD000000030CFD9BF7000000050000000A135D44FB0500010600000005135D80FD000000030CFD9BF7000000050F34D0F60000000500000000000000020000000400000001120700F608A912F912073CF80000000108A912FF00000005120700FE0000000A00000004120700F808A912FF12073CFE00000004050000FA0000000A0000000A120700FE0000000A0000000400000001000000001151E8FF000000050000000400000003"
theorem small_100848_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_100848_left_root small_100848_left_fuel small_100848_left_count small_100848_left_encoded = true := by
  decide +kernel
theorem small_100848_left_covered : CoveredBy scale carrier boxes small_100848_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_100848_left_root small_100848_left_fuel small_100848_left_count small_100848_left_encoded small_100848_left_checked

theorem cover_100848 : CoveredBy scale carrier boxes root_100848 := by
  apply coveredBy_split_literal root_100848 small_100848_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100978 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_100848_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100978
#print axioms cover_100848

def root_100843 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100843_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_100843_right_fuel : Nat := 1
def small_100843_right_count : Nat := 1
def small_100843_right_encoded : String := "00000002"
theorem small_100843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_100843_right_root small_100843_right_fuel small_100843_right_count small_100843_right_encoded = true := by
  decide +kernel
theorem small_100843_right_covered : CoveredBy scale carrier boxes small_100843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_100843_right_root small_100843_right_fuel small_100843_right_count small_100843_right_encoded small_100843_right_checked

theorem cover_100843 : CoveredBy scale carrier boxes root_100843 := by
  apply coveredBy_split_literal root_100843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100848 small_100843_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100848
  · exact small_100843_right_covered
#print axioms cover_100843

def root_82871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_82871 : CoveredBy scale carrier boxes root_82871 := by
  apply coveredBy_split_literal root_82871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_82872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_100843 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_82872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_100843
#print axioms cover_82871

def root_82865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82865_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_82865_left_fuel : Nat := 1
def small_82865_left_count : Nat := 1
def small_82865_left_encoded : String := "00000001"
theorem small_82865_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_82865_left_root small_82865_left_fuel small_82865_left_count small_82865_left_encoded = true := by
  decide +kernel
theorem small_82865_left_covered : CoveredBy scale carrier boxes small_82865_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_82865_left_root small_82865_left_fuel small_82865_left_count small_82865_left_encoded small_82865_left_checked

theorem cover_82865 : CoveredBy scale carrier boxes root_82865 := by
  apply coveredBy_split_literal root_82865 small_82865_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.root_82871 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_82865_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003.cover_82871
#print axioms cover_82865

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0003
