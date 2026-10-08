import TaoBundleAssembly0234
import TaoBundleAssembly0235
import TaoBundleChunkBatch0933
import TaoBundleChunkBatch0935
import TaoBundleChunkBatch0936
import TaoBundleChunkBatch0937
import TaoBundleChunkBatch0938
import TaoBundleChunkBatch0939
import TaoBundleChunkBatch0940
import TaoBundleChunkBatch0941
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236
def root_9973628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973628_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973628_left_fuel : Nat := 15
def small_9973628_left_count : Nat := 57
def small_9973628_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A9130112070100000000000000000A12073D0008A9130312070102000000010000000712073D0208A912FF12073CFE00000004050000FA135D80FB00000002050001060000000A135D80FD000000030CFD9C010000000A000000070000000A0000000700000001000000001151E8FF08A9130112070100000000000000000A12073D0008A9130312070102000000010000000812073D02050000FA135D80FB000000020500010600000008135D80FD00000003050000FE00000008000000080000000A00000001000000000000000400000003"
theorem small_9973628_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973628_left_root small_9973628_left_fuel small_9973628_left_count small_9973628_left_encoded = true := by
  decide +kernel
theorem small_9973628_left_covered : CoveredBy scale carrier boxes small_9973628_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973628_left_root small_9973628_left_fuel small_9973628_left_count small_9973628_left_encoded small_9973628_left_checked

theorem cover_9973628 : CoveredBy scale carrier boxes root_9973628 := by
  apply coveredBy_split_literal root_9973628 small_9973628_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973750 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9973628_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973750
#print axioms cover_9973628

def root_9973623 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973623_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973623_right_fuel : Nat := 1
def small_9973623_right_count : Nat := 1
def small_9973623_right_encoded : String := "00000002"
theorem small_9973623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973623_right_root small_9973623_right_fuel small_9973623_right_count small_9973623_right_encoded = true := by
  decide +kernel
theorem small_9973623_right_covered : CoveredBy scale carrier boxes small_9973623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973623_right_root small_9973623_right_fuel small_9973623_right_count small_9973623_right_encoded small_9973623_right_checked

theorem cover_9973623 : CoveredBy scale carrier boxes root_9973623 := by
  apply coveredBy_split_literal root_9973623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9973628 small_9973623_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9973628
  · exact small_9973623_right_covered
#print axioms cover_9973623

def root_9950685 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9950685 : CoveredBy scale carrier boxes root_9950685 := by
  apply coveredBy_split_literal root_9950685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9950686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9973623 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9950686
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9973623
#print axioms cover_9950685

def root_9950680 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950680_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950680_right_fuel : Nat := 1
def small_9950680_right_count : Nat := 1
def small_9950680_right_encoded : String := "00000001"
theorem small_9950680_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9950680_right_root small_9950680_right_fuel small_9950680_right_count small_9950680_right_encoded = true := by
  decide +kernel
theorem small_9950680_right_covered : CoveredBy scale carrier boxes small_9950680_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9950680_right_root small_9950680_right_fuel small_9950680_right_count small_9950680_right_encoded small_9950680_right_checked

theorem cover_9950680 : CoveredBy scale carrier boxes root_9950680 := by
  apply coveredBy_split_literal root_9950680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9950685 small_9950680_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9950685
  · exact small_9950680_right_covered
#print axioms cover_9950680

def root_9947888 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9947888 : CoveredBy scale carrier boxes root_9947888 := by
  apply coveredBy_split_literal root_9947888 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3729.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9950680 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3729.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9950680
#print axioms cover_9947888

def root_9947883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9947883_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9947883_right_fuel : Nat := 1
def small_9947883_right_count : Nat := 1
def small_9947883_right_encoded : String := "00000000"
theorem small_9947883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9947883_right_root small_9947883_right_fuel small_9947883_right_count small_9947883_right_encoded = true := by
  decide +kernel
theorem small_9947883_right_covered : CoveredBy scale carrier boxes small_9947883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9947883_right_root small_9947883_right_fuel small_9947883_right_count small_9947883_right_encoded small_9947883_right_checked

theorem cover_9947883 : CoveredBy scale carrier boxes root_9947883 := by
  apply coveredBy_split_literal root_9947883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9947888 small_9947883_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9947888
  · exact small_9947883_right_covered
#print axioms cover_9947883

def root_9944479 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944479 : CoveredBy scale carrier boxes root_9944479 := by
  apply coveredBy_split_literal root_9944479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9944480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9947883 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9944480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9947883
#print axioms cover_9944479

def root_9944478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944478 : CoveredBy scale carrier boxes root_9944478 := by
  apply coveredBy_split_literal root_9944478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9944479 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3740.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9944479
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3740.covered
#print axioms cover_9944478

def root_9988711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9988711 : CoveredBy scale carrier boxes root_9988711 := by
  apply coveredBy_split_literal root_9988711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3742.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3743.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3742.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3743.covered
#print axioms cover_9988711

def root_9988706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9988706_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9988706_right_fuel : Nat := 1
def small_9988706_right_count : Nat := 1
def small_9988706_right_encoded : String := "00000000"
theorem small_9988706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9988706_right_root small_9988706_right_fuel small_9988706_right_count small_9988706_right_encoded = true := by
  decide +kernel
theorem small_9988706_right_covered : CoveredBy scale carrier boxes small_9988706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9988706_right_root small_9988706_right_fuel small_9988706_right_count small_9988706_right_encoded small_9988706_right_checked

theorem cover_9988706 : CoveredBy scale carrier boxes root_9988706 := by
  apply coveredBy_split_literal root_9988706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9988711 small_9988706_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9988711
  · exact small_9988706_right_covered
#print axioms cover_9988706

def root_9986980 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9986980 : CoveredBy scale carrier boxes root_9986980 := by
  apply coveredBy_split_literal root_9986980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3741.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9988706 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3741.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9988706
#print axioms cover_9986980

def root_9993019 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9993019 : CoveredBy scale carrier boxes root_9993019 := by
  apply coveredBy_split_literal root_9993019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3744.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3745.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3744.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3745.covered
#print axioms cover_9993019

def root_9986979 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9986979 : CoveredBy scale carrier boxes root_9986979 := by
  apply coveredBy_split_literal root_9986979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9986980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9993019 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9986980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9993019
#print axioms cover_9986979

def root_9944477 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944477 : CoveredBy scale carrier boxes root_9944477 := by
  apply coveredBy_split_literal root_9944477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9944478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9986979 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9944478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9986979
#print axioms cover_9944477

def root_9996312 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996312 : CoveredBy scale carrier boxes root_9996312 := by
  apply coveredBy_split_literal root_9996312 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3746.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3747.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3746.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3747.covered
#print axioms cover_9996312

def root_9996306 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996306_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996306_left_fuel : Nat := 1
def small_9996306_left_count : Nat := 1
def small_9996306_left_encoded : String := "00000001"
theorem small_9996306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9996306_left_root small_9996306_left_fuel small_9996306_left_count small_9996306_left_encoded = true := by
  decide +kernel
theorem small_9996306_left_covered : CoveredBy scale carrier boxes small_9996306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9996306_left_root small_9996306_left_fuel small_9996306_left_count small_9996306_left_encoded small_9996306_left_checked

theorem cover_9996306 : CoveredBy scale carrier boxes root_9996306 := by
  apply coveredBy_split_literal root_9996306 small_9996306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9996312 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9996306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9996312
#print axioms cover_9996306

def root_9999882 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9999882 : CoveredBy scale carrier boxes root_9999882 := by
  apply coveredBy_split_literal root_9999882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3748.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3749.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3748.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3749.covered
#print axioms cover_9999882

def root_9999877 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9999877_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9999877_right_fuel : Nat := 1
def small_9999877_right_count : Nat := 1
def small_9999877_right_encoded : String := "00000001"
theorem small_9999877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9999877_right_root small_9999877_right_fuel small_9999877_right_count small_9999877_right_encoded = true := by
  decide +kernel
theorem small_9999877_right_covered : CoveredBy scale carrier boxes small_9999877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9999877_right_root small_9999877_right_fuel small_9999877_right_count small_9999877_right_encoded small_9999877_right_checked

theorem cover_9999877 : CoveredBy scale carrier boxes root_9999877 := by
  apply coveredBy_split_literal root_9999877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9999882 small_9999877_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9999882
  · exact small_9999877_right_covered
#print axioms cover_9999877

def root_9996305 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996305 : CoveredBy scale carrier boxes root_9996305 := by
  apply coveredBy_split_literal root_9996305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9996306 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9999877 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9996306
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9999877
#print axioms cover_9996305

def root_9996299 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996299_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996299_left_fuel : Nat := 1
def small_9996299_left_count : Nat := 1
def small_9996299_left_encoded : String := "00000000"
theorem small_9996299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9996299_left_root small_9996299_left_fuel small_9996299_left_count small_9996299_left_encoded = true := by
  decide +kernel
theorem small_9996299_left_covered : CoveredBy scale carrier boxes small_9996299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9996299_left_root small_9996299_left_fuel small_9996299_left_count small_9996299_left_encoded small_9996299_left_checked

theorem cover_9996299 : CoveredBy scale carrier boxes root_9996299 := by
  apply coveredBy_split_literal root_9996299 small_9996299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9996305 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9996299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9996305
#print axioms cover_9996299

def root_10005408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10005408 : CoveredBy scale carrier boxes root_10005408 := by
  apply coveredBy_split_literal root_10005408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3750.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3751.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3750.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3751.covered
#print axioms cover_10005408

def root_10005402 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005402_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005402_left_fuel : Nat := 1
def small_10005402_left_count : Nat := 1
def small_10005402_left_encoded : String := "00000001"
theorem small_10005402_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10005402_left_root small_10005402_left_fuel small_10005402_left_count small_10005402_left_encoded = true := by
  decide +kernel
theorem small_10005402_left_covered : CoveredBy scale carrier boxes small_10005402_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10005402_left_root small_10005402_left_fuel small_10005402_left_count small_10005402_left_encoded small_10005402_left_checked

theorem cover_10005402 : CoveredBy scale carrier boxes root_10005402 := by
  apply coveredBy_split_literal root_10005402 small_10005402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10005408 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10005402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10005408
#print axioms cover_10005402

def root_10016069 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10016069 : CoveredBy scale carrier boxes root_10016069 := by
  apply coveredBy_split_literal root_10016069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3754.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3755.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3754.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3755.covered
#print axioms cover_10016069

def root_10016064 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10016064_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10016064_right_fuel : Nat := 1
def small_10016064_right_count : Nat := 1
def small_10016064_right_encoded : String := "00000000"
theorem small_10016064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10016064_right_root small_10016064_right_fuel small_10016064_right_count small_10016064_right_encoded = true := by
  decide +kernel
theorem small_10016064_right_covered : CoveredBy scale carrier boxes small_10016064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10016064_right_root small_10016064_right_fuel small_10016064_right_count small_10016064_right_encoded small_10016064_right_checked

theorem cover_10016064 : CoveredBy scale carrier boxes root_10016064 := by
  apply coveredBy_split_literal root_10016064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10016069 small_10016064_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10016069
  · exact small_10016064_right_covered
#print axioms cover_10016064

def root_10013610 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10013610 : CoveredBy scale carrier boxes root_10013610 := by
  apply coveredBy_split_literal root_10013610 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3753.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10016064 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3753.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10016064
#print axioms cover_10013610

def root_10013604 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013604_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013604_left_fuel : Nat := 1
def small_10013604_left_count : Nat := 1
def small_10013604_left_encoded : String := "00000004"
theorem small_10013604_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013604_left_root small_10013604_left_fuel small_10013604_left_count small_10013604_left_encoded = true := by
  decide +kernel
theorem small_10013604_left_covered : CoveredBy scale carrier boxes small_10013604_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013604_left_root small_10013604_left_fuel small_10013604_left_count small_10013604_left_encoded small_10013604_left_checked

theorem cover_10013604 : CoveredBy scale carrier boxes root_10013604 := by
  apply coveredBy_split_literal root_10013604 small_10013604_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013610 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10013604_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013610
#print axioms cover_10013604

def root_10013603 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013603_right_fuel : Nat := 14
def small_10013603_right_count : Nat := 87
def small_10013603_right_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A071386710600000003045489FF1386ACFE000000040C9A86FA000000050F8750FB000000060000000200000006000000060F34D0FA04548A070000000500000009000000020F350D020CFD9BFB000000080F34D0FA04548A07000000051386AD06045489FF00000005000000080000000300000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A071386710600000003045489FF0000000500000006000000060F34D0FA04548A07000000051386AD06045489FF000000050000000600000003000000020F350D020CFD9BFB0F350CFA0000000204548A07138671060000000300000008000000080F34D0FA04548A07000000051386AD06045489FF00000005138670FE00000008000000040000000300000002000000010000000000000004"
theorem small_10013603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013603_right_root small_10013603_right_fuel small_10013603_right_count small_10013603_right_encoded = true := by
  decide +kernel
theorem small_10013603_right_covered : CoveredBy scale carrier boxes small_10013603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013603_right_root small_10013603_right_fuel small_10013603_right_count small_10013603_right_encoded small_10013603_right_checked

theorem cover_10013603 : CoveredBy scale carrier boxes root_10013603 := by
  apply coveredBy_split_literal root_10013603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013604 small_10013603_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013604
  · exact small_10013603_right_covered
#print axioms cover_10013603

def root_10013597 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013597_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013597_left_fuel : Nat := 1
def small_10013597_left_count : Nat := 1
def small_10013597_left_encoded : String := "00000003"
theorem small_10013597_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013597_left_root small_10013597_left_fuel small_10013597_left_count small_10013597_left_encoded = true := by
  decide +kernel
theorem small_10013597_left_covered : CoveredBy scale carrier boxes small_10013597_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013597_left_root small_10013597_left_fuel small_10013597_left_count small_10013597_left_encoded small_10013597_left_checked

theorem cover_10013597 : CoveredBy scale carrier boxes root_10013597 := by
  apply coveredBy_split_literal root_10013597 small_10013597_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013603 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10013597_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013603
#print axioms cover_10013597

def root_10013596 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013596_right_fuel : Nat := 22
def small_10013596_right_count : Nat := 349
def small_10013596_right_encoded : String := "12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB000000090F34D0FA00000009000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FA0F878CFB00000002000000070F8750FB0C9A86FE0000000500000007000000020F878D030C9A86FA000000090F8750FB0000000900000002000000010F34D0FE0C9A87020000000500000009000000040F350D060CFD9BFF000000090F34D0FE0000000900000004000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE00000004000000070F34D0FE00000005000000040000000900000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000005000000040F8750FB00000006000000020F878D010C9A86FA000000090F8750FB0000000600000002000000000F34D0FE00000006000000040F350D060CFD9BFF0000000900000006000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE000000050000000400000009000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA000000050F8750FB0C9A86FE000000050F8750FF000000050000000400000002000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB0C9A86FE000000050F8750FF0000000500000004000000020F878D030C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000005000000040F8750FB0C9A86FE000000050F8750FF00000009000000040000000200000001000000000F34D0FE0C9A8700000000050F878D010C9A8702000000050F878D03000000050000000100000000000000040F350D060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA0000000500000006000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB000000050000000200000009000000000F34D0FE0C9A8700000000050F878D010C9A870200000005000000060000000000000004000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D010C9A8702000000050F878D030000000500000001000000000F34D0FE00000005000000040F350D060CFD9BFF0F350CFE000000040C9A8700000000050F878D0100000007000000000F34D0FE0C9A870000000005000000090000000400000003000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000008000000060F34D0FA0CFD9C070F34D10600000003045489FF00000005000000080000000900000002000000010F350D000CFD9C030F34D102000000010CFD9BFB000000060F34D0FA0CFD9C070F34D106000000030000000600000006000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000008000000060F34D0FA0CFD9C070F34D10600000003045489FF1386ACFE000000040C9A8700000000050F878D010000000500000000138670FE00000008000000040F350D06045489FF1386ACFE000000040C9A87000F875101000000000C9A870200000005000000060000000900000006000000030000000200000001000000000000000400000003"
theorem small_10013596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013596_right_root small_10013596_right_fuel small_10013596_right_count small_10013596_right_encoded = true := by
  decide +kernel
theorem small_10013596_right_covered : CoveredBy scale carrier boxes small_10013596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013596_right_root small_10013596_right_fuel small_10013596_right_count small_10013596_right_encoded small_10013596_right_checked

theorem cover_10013596 : CoveredBy scale carrier boxes root_10013596 := by
  apply coveredBy_split_literal root_10013596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013597 small_10013596_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013597
  · exact small_10013596_right_covered
#print axioms cover_10013596

def root_10013590 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013590_left_fuel : Nat := 1
def small_10013590_left_count : Nat := 1
def small_10013590_left_encoded : String := "00000002"
theorem small_10013590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013590_left_root small_10013590_left_fuel small_10013590_left_count small_10013590_left_encoded = true := by
  decide +kernel
theorem small_10013590_left_covered : CoveredBy scale carrier boxes small_10013590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013590_left_root small_10013590_left_fuel small_10013590_left_count small_10013590_left_encoded small_10013590_left_checked

theorem cover_10013590 : CoveredBy scale carrier boxes root_10013590 := by
  apply coveredBy_split_literal root_10013590 small_10013590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013596 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10013590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013596
#print axioms cover_10013590

def root_10013589 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10013589 : CoveredBy scale carrier boxes root_10013589 := by
  apply coveredBy_split_literal root_10013589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013590 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3756.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013590
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3756.covered
#print axioms cover_10013589

def root_10013584 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013584_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013584_right_fuel : Nat := 1
def small_10013584_right_count : Nat := 1
def small_10013584_right_encoded : String := "00000001"
theorem small_10013584_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013584_right_root small_10013584_right_fuel small_10013584_right_count small_10013584_right_encoded = true := by
  decide +kernel
theorem small_10013584_right_covered : CoveredBy scale carrier boxes small_10013584_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013584_right_root small_10013584_right_fuel small_10013584_right_count small_10013584_right_encoded small_10013584_right_checked

theorem cover_10013584 : CoveredBy scale carrier boxes root_10013584 := by
  apply coveredBy_split_literal root_10013584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013589 small_10013584_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013589
  · exact small_10013584_right_covered
#print axioms cover_10013584

def root_10012578 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012578_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012578_left_fuel : Nat := 31
def small_10012578_left_count : Nat := 465
def small_10012578_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9BFB000000090F34D0FA00000009000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FA000000090F8750FB00000009000000020F34D0FE0000000900000004000000090F34D0FA04548A0713867106000000030CFD9BFF000000090F34D0FE00000005000000040000000900000002000000010F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000090F8750FF00000008000000040F8750FB0C9A86FE0000000600000006000000020F878D010C9A86FA000000090F8750FB0000000900000002000000000F34D0FE00000006000000041386AD060CFD9BFF0000000900000006000000030F34D0FA04548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000000000A000000090F34D0FE000000050000000400000009000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF0000000A000000040F8750FB0C9A86FE0F878CFF00000004000000060F8750FF067ECE8312EA5902000000010000000612EA9502022A458713E1C506000000030B4D44000000000A10804D010B4D43FA0000000A0000000600000000000000060000000100000004000000020F878D010C9A86FA0F878CFB000000020C9A86FE000000090F8750FF067ECE830000000912EA9502022A4587000000080000000900000001000000040F8750FB0C9A86FE0F878CFF00000004067ECE8300000006000000060F8750FF067ECE8312EA5902000000010000000912EA9502022A458713E1C506000000030DE7CA000E5FD901000000000B4D43FA00000009000000060E601501000000090000000000000006000000010000000400000002000000000F34D0FE0C9A8700000000050F878D010C9A86FA000000050000000600000000000000041386AD060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000009000000040F8750FB00000006000000020F878D0100000009000000000F34D0FE0000000600000004000000030F34D0FA04548A0713867106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D010C9A86FE0000000500000008000000000F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE000000050000000400000003000000020000000100000000120700FE0CFD9C010F34D1000000000004548A031386710200000001000000091386AD020CFD9BFB0F350CFA00000002000000060F34D0FA0000000900000002000000010F350D0004548A0313867102000000010CFD9BFB00000006000000061386AD020CFD9BFB0F350CFA00000002000000060F34D0FA000000050000000200000001000000000000000412073D0608A912FF12073CFE000000040CFD9C010F34D10000000000000000090F350D0004548A031386710200000001000000091386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0000000900000006000000060F34D0FA00000009000000020000000100000000120700FE0CFD9C01000000060F350D0000000006000000000000000400000003120700FA08A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D1000000000004548A031386710200000001000000091386AD02045489FB1386ACFA0000000204548A0713867106000000030CFD9BFF000000090F34D0FE000000050000000400000009138670FA04548A07000000080000000700000002000000010F350D0004548A031386710200000001045489FB1386ACFA0000000204548A070000000500000009138670FA0000000A000000021386AD02045489FB1386ACFA0000000204548A0713867106000000030CFD9BFF000000050F34D0FE00000005000000041386AD060CFD9BFF0000000A0F34D0FE000000050000000400000003138670FA0000000A000000020000000100000000120700FE0CFD9C010F34D10000000000000000090F350D0004548A031386710200000001045489FB00000005138670FA00000005000000021386AD02045489FB1386ACFA0000000204548A070000000500000009138670FA04548A07000000051386AD06045489FF0000000500000009000000030000000200000001000000000000000412073D0608A912FF12073CFE000000040CFD9C01000000090F350D0004548A03000000091386AD02045489FB00000009138670FA00000009000000020000000100000000120700FE00000009000000040000000300000002"
theorem small_10012578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10012578_left_root small_10012578_left_fuel small_10012578_left_count small_10012578_left_encoded = true := by
  decide +kernel
theorem small_10012578_left_covered : CoveredBy scale carrier boxes small_10012578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10012578_left_root small_10012578_left_fuel small_10012578_left_count small_10012578_left_encoded small_10012578_left_checked

theorem cover_10012578 : CoveredBy scale carrier boxes root_10012578 := by
  apply coveredBy_split_literal root_10012578 small_10012578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10013584 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10012578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10013584
#print axioms cover_10012578

def root_10012573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012573_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012573_right_fuel : Nat := 1
def small_10012573_right_count : Nat := 1
def small_10012573_right_encoded : String := "00000000"
theorem small_10012573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10012573_right_root small_10012573_right_fuel small_10012573_right_count small_10012573_right_encoded = true := by
  decide +kernel
theorem small_10012573_right_covered : CoveredBy scale carrier boxes small_10012573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10012573_right_root small_10012573_right_fuel small_10012573_right_count small_10012573_right_encoded small_10012573_right_checked

theorem cover_10012573 : CoveredBy scale carrier boxes root_10012573 := by
  apply coveredBy_split_literal root_10012573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10012578 small_10012573_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10012578
  · exact small_10012573_right_covered
#print axioms cover_10012573

def root_10011481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10011481 : CoveredBy scale carrier boxes root_10011481 := by
  apply coveredBy_split_literal root_10011481 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3752.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10012573 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3752.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10012573
#print axioms cover_10011481

def root_10011475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011475_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011475_left_fuel : Nat := 1
def small_10011475_left_count : Nat := 1
def small_10011475_left_encoded : String := "00000004"
theorem small_10011475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10011475_left_root small_10011475_left_fuel small_10011475_left_count small_10011475_left_encoded = true := by
  decide +kernel
theorem small_10011475_left_covered : CoveredBy scale carrier boxes small_10011475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10011475_left_root small_10011475_left_fuel small_10011475_left_count small_10011475_left_encoded small_10011475_left_checked

theorem cover_10011475 : CoveredBy scale carrier boxes root_10011475 := by
  apply coveredBy_split_literal root_10011475 small_10011475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10011481 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10011475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10011481
#print axioms cover_10011475

def root_10022742 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022742_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022742_right_fuel : Nat := 16
def small_10022742_right_count : Nat := 123
def small_10022742_right_encoded : String := "12073D06050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB00000009000000070F350D020CFD9BFB0F350CFA000000020000000700000007000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000000000A0F878D010C9A86FA0000000700000007000000000F350D060C9A87000F875101000000000000000900000007000000030F34D0FA0CFD9C070F34D106000000030000000700000007000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F875103000000010000000A0000000A0F878D010C9A8702000000070F878D030000000700000001000000000F350D060C9A87000F875101000000000000000700000007000000030F34D0FA0CFD9C070F34D106000000030000000700000007000000020000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000700000007000000070F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000007000000070000000700000001000000000000000400000003"
theorem small_10022742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022742_right_root small_10022742_right_fuel small_10022742_right_count small_10022742_right_encoded = true := by
  decide +kernel
theorem small_10022742_right_covered : CoveredBy scale carrier boxes small_10022742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022742_right_root small_10022742_right_fuel small_10022742_right_count small_10022742_right_encoded small_10022742_right_checked

theorem cover_10022742 : CoveredBy scale carrier boxes root_10022742 := by
  apply coveredBy_split_literal root_10022742 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3757.root small_10022742_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3757.covered
  · exact small_10022742_right_covered
#print axioms cover_10022742

def root_10022736 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022736_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022736_left_fuel : Nat := 1
def small_10022736_left_count : Nat := 1
def small_10022736_left_encoded : String := "00000002"
theorem small_10022736_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022736_left_root small_10022736_left_fuel small_10022736_left_count small_10022736_left_encoded = true := by
  decide +kernel
theorem small_10022736_left_covered : CoveredBy scale carrier boxes small_10022736_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022736_left_root small_10022736_left_fuel small_10022736_left_count small_10022736_left_encoded small_10022736_left_checked

theorem cover_10022736 : CoveredBy scale carrier boxes root_10022736 := by
  apply coveredBy_split_literal root_10022736 small_10022736_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022742 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10022736_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022742
#print axioms cover_10022736

def root_10022735 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022735_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022735_right_fuel : Nat := 8
def small_10022735_right_count : Nat := 23
def small_10022735_right_encoded : String := "120700FA08A913071207010600000003050000FE135D80FF000000040CFD9C010F34D10000000000000000070F350D000000000A00000000135D44FF000000070000000412073D06050000FE00000007000000070000000300000002"
theorem small_10022735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022735_right_root small_10022735_right_fuel small_10022735_right_count small_10022735_right_encoded = true := by
  decide +kernel
theorem small_10022735_right_covered : CoveredBy scale carrier boxes small_10022735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022735_right_root small_10022735_right_fuel small_10022735_right_count small_10022735_right_encoded small_10022735_right_checked

theorem cover_10022735 : CoveredBy scale carrier boxes root_10022735 := by
  apply coveredBy_split_literal root_10022735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022736 small_10022735_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022736
  · exact small_10022735_right_covered
#print axioms cover_10022735

def root_10022730 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022730_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022730_right_fuel : Nat := 1
def small_10022730_right_count : Nat := 1
def small_10022730_right_encoded : String := "00000001"
theorem small_10022730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022730_right_root small_10022730_right_fuel small_10022730_right_count small_10022730_right_encoded = true := by
  decide +kernel
theorem small_10022730_right_covered : CoveredBy scale carrier boxes small_10022730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022730_right_root small_10022730_right_fuel small_10022730_right_count small_10022730_right_encoded small_10022730_right_checked

theorem cover_10022730 : CoveredBy scale carrier boxes root_10022730 := by
  apply coveredBy_split_literal root_10022730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022735 small_10022730_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022735
  · exact small_10022730_right_covered
#print axioms cover_10022730

def root_10022156 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022156_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022156_left_fuel : Nat := 25
def small_10022156_left_count : Nat := 269
def small_10022156_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9BFB00000009000000081386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB000000020000000800000005000000090F34D0FA0000000700000002000000010F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F875101000000000C9A86FA000000080F8750FB078000FE128A7CFF000000040000000800000005000000020F878D0100000008000000001386AD060C9A87000F875101000000000C9A86FA000000090F8750FB078000FE00000006000000060000000200000009000000030F34D0FA00000008000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A87000F875101000000000C9A86FA0000000A0F8750FB078000FE128A7CFF00000004067ECE8312EA590200000001000000080000000A00000008000000020F878D010C9A86FA0F878CFB00000002000000080F8750FB078000FE128A7CFF00000004067ECE8312EA5902000000010000000812EA9502022A45870000000800000009000000010000000500000002000000001386AD060C9A87000F875101000000000000000A0F878D010C9A86FA000000090F8750FB078000FE00000009000000090000000200000000000000030F34D0FA0000000A000000020000000100000000135D44FF0CFD9C010F34D1000000000004548A0300000007000000080F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A07000000081386AD060C9A8700000000080000000500000003000000081386AD020CFD9BFB0F350CFA0000000204548A07000000081386AD060C9A87000000000800000007000000030000000800000001000000000000000412073D06050000FE135D80FF000000040CFD9C010F34D10000000000000000090F350D0004548A031386710200000001000000091386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000000000A00000009000000090F34D0FA00000009000000020000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D0004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9C0700000007000000070F34D0FA00000009000000021386AD020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000007000000070000000700000001000000000000000400000003120700FA08A913071207010600000003050000FE135D80FF000000040CFD9C01000000080000000A0000000812073D06050000FE135D80FF000000040CFD9C01000000090F350D000000000A00000000135D44FF0CFD9C01000000070000000A000000040000000300000002"
theorem small_10022156_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022156_left_root small_10022156_left_fuel small_10022156_left_count small_10022156_left_encoded = true := by
  decide +kernel
theorem small_10022156_left_covered : CoveredBy scale carrier boxes small_10022156_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022156_left_root small_10022156_left_fuel small_10022156_left_count small_10022156_left_encoded small_10022156_left_checked

theorem cover_10022156 : CoveredBy scale carrier boxes root_10022156 := by
  apply coveredBy_split_literal root_10022156 small_10022156_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022730 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10022156_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022730
#print axioms cover_10022156

def root_10022151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022151_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022151_right_fuel : Nat := 1
def small_10022151_right_count : Nat := 1
def small_10022151_right_encoded : String := "00000000"
theorem small_10022151_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022151_right_root small_10022151_right_fuel small_10022151_right_count small_10022151_right_encoded = true := by
  decide +kernel
theorem small_10022151_right_covered : CoveredBy scale carrier boxes small_10022151_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022151_right_root small_10022151_right_fuel small_10022151_right_count small_10022151_right_encoded small_10022151_right_checked

theorem cover_10022151 : CoveredBy scale carrier boxes root_10022151 := by
  apply coveredBy_split_literal root_10022151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022156 small_10022151_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022156
  · exact small_10022151_right_covered
#print axioms cover_10022151

def root_10021937 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021937_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021937_left_fuel : Nat := 21
def small_10021937_left_count : Nat := 105
def small_10021937_left_encoded : String := "120701000000000008A91303120701020000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A01000000091386AD0004548A03000000071386AD020CFD9BFB000000090000000700000001000000000000000500000007120700FA08A9130700000007000000070000000212073D0208A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF0000000404548A0113867100000000000CFD9C03000000070F350D020CFD9BFB0F350CFA000000020000000700000007000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000070000000500000007000000070F350D020CFD9BFB0F350CFA0000000204548A0713867106000000030C9A8702000000070F878D030C9A86FA00000007000000070000000100000007000000070000000100000000135D44FF04548A0100000007000000070000000412073D06050000FE135D80FF0000000404548A0100000007000000070000000700000003120700FA000000070000000200000001"
theorem small_10021937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10021937_left_root small_10021937_left_fuel small_10021937_left_count small_10021937_left_encoded = true := by
  decide +kernel
theorem small_10021937_left_covered : CoveredBy scale carrier boxes small_10021937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10021937_left_root small_10021937_left_fuel small_10021937_left_count small_10021937_left_encoded small_10021937_left_checked

theorem cover_10021937 : CoveredBy scale carrier boxes root_10021937 := by
  apply coveredBy_split_literal root_10021937 small_10021937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10022151 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10021937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10022151
#print axioms cover_10021937

def root_10021932 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021932_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10021932_right_fuel : Nat := 1
def small_10021932_right_count : Nat := 1
def small_10021932_right_encoded : String := "00000004"
theorem small_10021932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10021932_right_root small_10021932_right_fuel small_10021932_right_count small_10021932_right_encoded = true := by
  decide +kernel
theorem small_10021932_right_covered : CoveredBy scale carrier boxes small_10021932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10021932_right_root small_10021932_right_fuel small_10021932_right_count small_10021932_right_encoded small_10021932_right_checked

theorem cover_10021932 : CoveredBy scale carrier boxes root_10021932 := by
  apply coveredBy_split_literal root_10021932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10021937 small_10021932_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10021937
  · exact small_10021932_right_covered
#print axioms cover_10021932

def root_10011474 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10011474 : CoveredBy scale carrier boxes root_10011474 := by
  apply coveredBy_split_literal root_10011474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10011475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10021932 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10011475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10021932
#print axioms cover_10011474

def root_10011469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011469_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011469_right_fuel : Nat := 1
def small_10011469_right_count : Nat := 1
def small_10011469_right_encoded : String := "00000003"
theorem small_10011469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10011469_right_root small_10011469_right_fuel small_10011469_right_count small_10011469_right_encoded = true := by
  decide +kernel
theorem small_10011469_right_covered : CoveredBy scale carrier boxes small_10011469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10011469_right_root small_10011469_right_fuel small_10011469_right_count small_10011469_right_encoded small_10011469_right_checked

theorem cover_10011469 : CoveredBy scale carrier boxes root_10011469 := by
  apply coveredBy_split_literal root_10011469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10011474 small_10011469_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10011474
  · exact small_10011469_right_covered
#print axioms cover_10011469

def root_10010905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010905_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010905_left_fuel : Nat := 23
def small_10010905_left_count : Nat := 259
def small_10010905_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A913030000000912073D0208A912FB00000009120700FA00000009000000020000000112073D0008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D020CFD9BFB000000050F34D0FA00000005000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350CFA000000020CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE00000005000000040F34D0FA0CFD9BFF000000050F34D0FE000000050000000400000002000000010000000000000003120700FE05000106135D4507000000030CFD9C01000000090F350D000CFD9C03000000090F350D020CFD9BFB000000060F34D0FA00000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D020CFD9BFB000000060F34D0FA000000060000000200000001000000000000000300000004120700FA08A912FF12073CFE0000000405000106135D4507000000030CFD9C01000000090F350D000CFD9C03000000090F350D02045489FB00000009138670FA00000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA000000020CFD9BFF000000050F34D0FE000000070000000400000007000000010000000000000003120700FE05000106135D45070000000300000009135D81070CFD9C01000000090F350D000CFD9C03000000090F350D02045489FB00000009138670FA0000000900000002000000010000000000000003000000040000000200000001000000001151E8FF08A91301120701000000000008A913030000000912073D02000000070000000112073D0008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000205000106135D450700000003050000FE135D80FF000000040CFD9C01000000070F350D000CFD9C03000000090000000700000000135D44FF0CFD9C01000000070F350D00000000070000000000000004135D8107050000FE135D80FF000000040CFD9C01000000070F350D000CFD9C03000000070F350D020000000700000001000000000000000700000003120700FA05000106135D450700000003050000FE00000007135D44FF00000007000000040000000700000002000000010000000000000004"
theorem small_10010905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010905_left_root small_10010905_left_fuel small_10010905_left_count small_10010905_left_encoded = true := by
  decide +kernel
theorem small_10010905_left_covered : CoveredBy scale carrier boxes small_10010905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010905_left_root small_10010905_left_fuel small_10010905_left_count small_10010905_left_encoded small_10010905_left_checked

theorem cover_10010905 : CoveredBy scale carrier boxes root_10010905 := by
  apply coveredBy_split_literal root_10010905 small_10010905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10011469 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10010905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10011469
#print axioms cover_10010905

def root_10010899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010899_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010899_left_fuel : Nat := 1
def small_10010899_left_count : Nat := 1
def small_10010899_left_encoded : String := "00000002"
theorem small_10010899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010899_left_root small_10010899_left_fuel small_10010899_left_count small_10010899_left_encoded = true := by
  decide +kernel
theorem small_10010899_left_covered : CoveredBy scale carrier boxes small_10010899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010899_left_root small_10010899_left_fuel small_10010899_left_count small_10010899_left_encoded small_10010899_left_checked

theorem cover_10010899 : CoveredBy scale carrier boxes root_10010899 := by
  apply coveredBy_split_literal root_10010899 small_10010899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10010905 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10010899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10010905
#print axioms cover_10010899

def root_10027175 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027175_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027175_right_fuel : Nat := 18
def small_10027175_right_count : Nat := 129
def small_10027175_right_encoded : String := "12073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C070F34D1060000000300000006000000060F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F87510300000001000000080F878D030C9A86FE0000000600000006000000010F34D0FE00000006000000040F350D060CFD9BFF0F350CFE000000040C9A87020F8751030000000100000009000000060000000600000003000000010F350D000CFD9C030F34D102000000010CFD9C070F34D1060000000300000006000000060F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A87020F8751030000000100000008000000060F878D010C9A87020F87510300000001000000080F878D030000000600000001000000000F34D0FE00000006000000040F350D060CFD9BFF0F350CFE000000040C9A8700000000060F878D01000000060000000000000006000000030000000100000000135D44FB0CFD9C010F34D100000000000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010F350D000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000002120700FE050000FA00000006000000060000000400000003"
theorem small_10027175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10027175_right_root small_10027175_right_fuel small_10027175_right_count small_10027175_right_encoded = true := by
  decide +kernel
theorem small_10027175_right_covered : CoveredBy scale carrier boxes small_10027175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10027175_right_root small_10027175_right_fuel small_10027175_right_count small_10027175_right_encoded small_10027175_right_checked

theorem cover_10027175 : CoveredBy scale carrier boxes root_10027175 := by
  apply coveredBy_split_literal root_10027175 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3758.root small_10027175_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3758.covered
  · exact small_10027175_right_covered
#print axioms cover_10027175

def root_10027170 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027170_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10027170_right_fuel : Nat := 1
def small_10027170_right_count : Nat := 1
def small_10027170_right_encoded : String := "00000001"
theorem small_10027170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10027170_right_root small_10027170_right_fuel small_10027170_right_count small_10027170_right_encoded = true := by
  decide +kernel
theorem small_10027170_right_covered : CoveredBy scale carrier boxes small_10027170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10027170_right_root small_10027170_right_fuel small_10027170_right_count small_10027170_right_encoded small_10027170_right_checked

theorem cover_10027170 : CoveredBy scale carrier boxes root_10027170 := by
  apply coveredBy_split_literal root_10027170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10027175 small_10027170_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10027175
  · exact small_10027170_right_covered
#print axioms cover_10027170

def root_10026992 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026992_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026992_left_fuel : Nat := 19
def small_10026992_left_count : Nat := 85
def small_10026992_left_encoded : String := "120701020000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D1000000000004548A031386710200000001000000061386AD0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000050000000600000006000000010F350D0004548A03138671020000000104548A0713867106000000030CFD9BFF0F350CFE000000040000000600000006000000061386AD0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A8700000000060F878D010C9A86FE00000006000000060000000000000006000000060000000100000000135D44FB0CFD9C01000000060F350D000000000600000000000000020000000612073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C01000000060F350D000000000600000000000000060000000600000003"
theorem small_10026992_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026992_left_root small_10026992_left_fuel small_10026992_left_count small_10026992_left_encoded = true := by
  decide +kernel
theorem small_10026992_left_covered : CoveredBy scale carrier boxes small_10026992_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026992_left_root small_10026992_left_fuel small_10026992_left_count small_10026992_left_encoded small_10026992_left_checked

theorem cover_10026992 : CoveredBy scale carrier boxes root_10026992 := by
  apply coveredBy_split_literal root_10026992 small_10026992_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10027170 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10026992_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10027170
#print axioms cover_10026992

def root_10026987 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026987_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026987_right_fuel : Nat := 1
def small_10026987_right_count : Nat := 1
def small_10026987_right_encoded : String := "00000000"
theorem small_10026987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026987_right_root small_10026987_right_fuel small_10026987_right_count small_10026987_right_encoded = true := by
  decide +kernel
theorem small_10026987_right_covered : CoveredBy scale carrier boxes small_10026987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026987_right_root small_10026987_right_fuel small_10026987_right_count small_10026987_right_encoded small_10026987_right_checked

theorem cover_10026987 : CoveredBy scale carrier boxes root_10026987 := by
  apply coveredBy_split_literal root_10026987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10026992 small_10026987_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10026992
  · exact small_10026987_right_covered
#print axioms cover_10026987

def root_10026325 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026325_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026325_left_fuel : Nat := 27
def small_10026325_left_count : Nat := 313
def small_10026325_left_encoded : String := "120701000000000008A91303120701020000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A01000000091386AD0004548A03000000061386AD0204548A070000000A000000060000000100000000000000050000000612073D0608A912FF00000006000000060000000312073D0208A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A0113867100000000000CFD9C030F34D1020000000104548A070000000A000000090F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA128A7CFB000000020000000A00000005000000040F878D030000000A000000010000000A1386AD060CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA000000070000000700000004000000090F34D0FE000000080000000400000003000000011386AD000CFD9C030F34D1020000000104548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A000000050000000A1386AD060CFD9BFF0000000900000006000000030F350D0204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000080F8750FF078000FA128A7CFB00000002067ECE8112EA59000000000000000008000000080000000A000000040F878D030C9A86FE0F878CFF000000040000000A0F8750FF078000FA128A7CFB00000002067ECE8112EA5900000000000000000A12EA9500022A45870000000A00000009000000000000000500000004000000010000000A1386AD060CFD9BFF0F350CFE000000040C9A87020F87510300000001000000080F878D030C9A86FE000000090F8750FF078000FA000000090000000900000004000000010F34D0FE0000000800000004000000030000000100000000135D44FB04548A0113867100000000000CFD9C030000000A0F350D0204548A070000000A1386AD060CFD9BFF0F350CFE000000040C9A870200000008000000050000000600000003000000011386AD000CFD9C030F34D102000000010000000A0F350D0204548A070000000A1386AD060CFD9BFF0F350CFE000000040C9A870200000008000000060000000600000003000000010000000000000002120700FE050000FA135D80FB0000000204548A010000000A000000080000000A0000000412073D0608A912FF12073CFE00000004050000FA135D80FB0000000204548A011386710000000000000000091386AD000CFD9C030F34D10200000001000000090F350D020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8751030000000100000008000000090F34D0FE0000000600000004000000090000000100000000135D44FB04548A0113867100000000000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030000000600000009000000011386AD000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000002120700FE050000FA135D80FB0000000204548A01000000091386AD000CFD9C03000000060000000800000000135D44FB04548A011386710000000000000000080000000800000002000000040000000300000001"
theorem small_10026325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026325_left_root small_10026325_left_fuel small_10026325_left_count small_10026325_left_encoded = true := by
  decide +kernel
theorem small_10026325_left_covered : CoveredBy scale carrier boxes small_10026325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026325_left_root small_10026325_left_fuel small_10026325_left_count small_10026325_left_encoded small_10026325_left_checked

theorem cover_10026325 : CoveredBy scale carrier boxes root_10026325 := by
  apply coveredBy_split_literal root_10026325 small_10026325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10026987 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10026325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10026987
#print axioms cover_10026325

def root_10026319 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026319_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026319_left_fuel : Nat := 1
def small_10026319_left_count : Nat := 1
def small_10026319_left_encoded : String := "00000004"
theorem small_10026319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026319_left_root small_10026319_left_fuel small_10026319_left_count small_10026319_left_encoded = true := by
  decide +kernel
theorem small_10026319_left_covered : CoveredBy scale carrier boxes small_10026319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026319_left_root small_10026319_left_fuel small_10026319_left_count small_10026319_left_encoded small_10026319_left_checked

theorem cover_10026319 : CoveredBy scale carrier boxes root_10026319 := by
  apply coveredBy_split_literal root_10026319 small_10026319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10026325 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10026319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10026325
#print axioms cover_10026319

def root_10034888 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10034888 : CoveredBy scale carrier boxes root_10034888 := by
  apply coveredBy_split_literal root_10034888 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3760.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3761.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3760.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3761.covered
#print axioms cover_10034888

def root_10034883 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10034883_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10034883_right_fuel : Nat := 1
def small_10034883_right_count : Nat := 1
def small_10034883_right_encoded : String := "00000000"
theorem small_10034883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10034883_right_root small_10034883_right_fuel small_10034883_right_count small_10034883_right_encoded = true := by
  decide +kernel
theorem small_10034883_right_covered : CoveredBy scale carrier boxes small_10034883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10034883_right_root small_10034883_right_fuel small_10034883_right_count small_10034883_right_encoded small_10034883_right_checked

theorem cover_10034883 : CoveredBy scale carrier boxes root_10034883 := by
  apply coveredBy_split_literal root_10034883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10034888 small_10034883_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10034888
  · exact small_10034883_right_covered
#print axioms cover_10034883

def root_10032381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10032381 : CoveredBy scale carrier boxes root_10032381 := by
  apply coveredBy_split_literal root_10032381 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3759.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10034883 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3759.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10034883
#print axioms cover_10032381

def root_10032375 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032375_left_fuel : Nat := 1
def small_10032375_left_count : Nat := 1
def small_10032375_left_encoded : String := "00000003"
theorem small_10032375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10032375_left_root small_10032375_left_fuel small_10032375_left_count small_10032375_left_encoded = true := by
  decide +kernel
theorem small_10032375_left_covered : CoveredBy scale carrier boxes small_10032375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10032375_left_root small_10032375_left_fuel small_10032375_left_count small_10032375_left_encoded small_10032375_left_checked

theorem cover_10032375 : CoveredBy scale carrier boxes root_10032375 := by
  apply coveredBy_split_literal root_10032375 small_10032375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10032381 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10032375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10032381
#print axioms cover_10032375

def root_10032374 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032374_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032374_right_fuel : Nat := 23
def small_10032374_right_count : Nat := 375
def small_10032374_right_encoded : String := "1386AD060C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030B4D44000000000510804D010B4D44020000000510804D0308C000FA0000000511FBE8FB0000000800000002000000010000000012EA95060B4D4400000000050000000800000003128A40FF067ECE8712EA5906000000030B4D44000000000A10804D010000000A000000000000000A00000004128A40FB078000FE128A7CFF00000004067ECE8712EA5906000000030B4D4400000000080000000800000008128A40FF067ECE8712EA5906000000030B4D440010801101000000000B4D44021080110300000001064000FA0000000A000000080000000A10804D010B4D440210801103000000010000000810804D03064000FA12FFACFB00000002064000FE12FFACFF000000040569AC471340D5060000000300000008000000060000000712FF70FB064000FE000000060000000500000002000000010000000012EA95060B4D440010801101000000000B4D4402000000080000000610804D0100000007000000000000000300000004000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030B4D440010801101000000000000000A10804D010DE7CA020E5FD9030000000108C000FA0000000A11FBE8FB00000006000000020E60150308C000FA0000000A00000006000000010000000012EA95060B4D44000000000610804D01000000060000000000000003128A40FF067ECE8712EA5906000000030000000A0000000A00000004128A40FB078000FE128A7CFF00000004067ECE8712EA5906000000030000000600000006128A40FF067ECE8712EA5906000000030B4D440010801101000000000DE7CA020E5FD90300000001000000060000000610804D010DE7CA020E5FD90300000001064000FA12FFACFB0000000200000006000000050000000500000000000000060000000400000002000000010F878D010C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030DE7CA000E5FD901000000000B4D44020000000810804D0308C000FA11FC24FB0000000208C000FE000000050000000711FBE8FB0000000800000002000000010E6015010B4D44020000000710804D0308C000FA0000000700000007000000010000000012EA95060DE7CA000E5FD90100000000000000080000000700000003128A40FF067ECE8712EA590600000003000000070000000700000004128A40FB078000FE128A7CFF00000004067ECE8712EA5906000000030000000800000008128A40FF067ECE8712EA5906000000030DE7CA000E5FD901000000000B4D44020000000710804D03064000FA000000070000000500000001000000070000000700000004000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030DE7CA000E5FD901000000000DE7CA020E5FD9030000000108C000FA11FC24FB0000000208C000FE11FC24FF000000040569AC471340D506000000030D4128800000000600000007000000060000000711FBE8FB08C000FE0000000600000006000000020E60150308C000FA11FC24FB0000000208C000FE000000060000000600000006000000010E6015010DE7CA020E5FD9030000000108C000FA00000007000000070E60150308C000FA0000000700000006000000010000000012EA95060DE7CA000E5FD901000000000DE7CA0200000007000000060E601501000000070000000000000003128A40FF067ECE8712EA5906000000030DE7CA000E5FD901000000000DE7CA02000000070E6015030000000700000001000000070000000700000004128A40FB078000FE128A7CFF00000004067ECE8712EA5906000000030DE7CA00000000060E601501000000060000000000000006128A40FF067ECE8712EA5906000000030000000512EA950600000006000000030000000400000002000000010000000000000003"
theorem small_10032374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10032374_right_root small_10032374_right_fuel small_10032374_right_count small_10032374_right_encoded = true := by
  decide +kernel
theorem small_10032374_right_covered : CoveredBy scale carrier boxes small_10032374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10032374_right_root small_10032374_right_fuel small_10032374_right_count small_10032374_right_encoded small_10032374_right_checked

theorem cover_10032374 : CoveredBy scale carrier boxes root_10032374 := by
  apply coveredBy_split_literal root_10032374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10032375 small_10032374_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10032375
  · exact small_10032374_right_covered
#print axioms cover_10032374

def root_10032369 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032369_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10032369_right_fuel : Nat := 1
def small_10032369_right_count : Nat := 1
def small_10032369_right_encoded : String := "00000001"
theorem small_10032369_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10032369_right_root small_10032369_right_fuel small_10032369_right_count small_10032369_right_encoded = true := by
  decide +kernel
theorem small_10032369_right_covered : CoveredBy scale carrier boxes small_10032369_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10032369_right_root small_10032369_right_fuel small_10032369_right_count small_10032369_right_encoded small_10032369_right_checked

theorem cover_10032369 : CoveredBy scale carrier boxes root_10032369 := by
  apply coveredBy_split_literal root_10032369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10032374 small_10032369_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10032374
  · exact small_10032369_right_covered
#print axioms cover_10032369

def root_10031747 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031747_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031747_left_fuel : Nat := 35
def small_10031747_left_count : Nat := 293
def small_10031747_left_encoded : String := "0F34D1020000000104548A0713867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D1010200000001022A458713E1C506000000030B4D440010801101000000000000000A10804D0108C000FA11FC24FB0000000208C000FE000000060000000500000005000000000000000610D13D02022A458713E1C506000000030B4D4400108011010000000008C000FA0000000A11FBE8FB08C000FE11FC24FF000000040000000611FBE8FF0000000A000000040000000210804D0108C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C31011710200000001000000060000000A11FBE8FF0000000A0000000411FBE8FB08C000FE11FC24FF000000040000000600000005000000020000000013E201060B4D44000000000A10804D0108C000FA0000000A00000006000000000000000300000001128A40FF0AD3578310D1010200000001022A4587000000050000000A10D13D02022A458713E1C506000000030B4D44000000000A000000050000000A0000000100000004128A40FB078000FE128A7CFF000000040AD3578310D10102000000010000000610D13D02022A458713E1C506000000030B4D44000000000600000005000000060000000100000005000000020F878D01078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D10102000000010000000510D13D02022A458713E1C506000000030DE7CA000E5FD9010000000008C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C310117102000000010115234713F859060000000300000005000000061011AD020115234713F85906000000030D4128800EFA110100000000096000FA11AABCFB000000020000000A11AA80FB096000FE0000000600000005000000020EFA4D01096000FA11AABCFB00000002096000FE11AABCFF000000040C730AE3000000060FA74502008A922713FDF906000000030D9479400000000600000005000000060000000100000005000000050000000013F895060D412880000000060EFA4D010000000600000000000000030000000100000005000000050000000513E201060DE7CA000E5FD9010000000008C000FA11FC24FB0000000208C000FE11FC24FF000000040000000611FBE8FF0BE879C3000000060000000A00000004000000060E60150108C000FA11FC24FB0000000208C000FE11FC24FF000000040000000600000005000000050000000000000003000000010000000500000005000000001386AD060C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040AD357830000000600000006128A40FF0AD3578310D1010200000001000000060000000A00000004128A40FB00000006000000020F878D01078000FA128A7CFB00000002078000FE128A7CFF000000040AD357830000000610D13D02067ECE8712EA590600000003000000060000000600000001128A40FF0AD3578310D10102000000010000000510D13D02067ECE8712EA59060000000300000005000000060000000100000004128A40FB078000FE0000000600000005000000020000000000000003"
theorem small_10031747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031747_left_root small_10031747_left_fuel small_10031747_left_count small_10031747_left_encoded = true := by
  decide +kernel
theorem small_10031747_left_covered : CoveredBy scale carrier boxes small_10031747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031747_left_root small_10031747_left_fuel small_10031747_left_count small_10031747_left_encoded small_10031747_left_checked

theorem cover_10031747 : CoveredBy scale carrier boxes root_10031747 := by
  apply coveredBy_split_literal root_10031747 small_10031747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10032369 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10031747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10032369
#print axioms cover_10031747

def root_10031742 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031742_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031742_right_fuel : Nat := 1
def small_10031742_right_count : Nat := 1
def small_10031742_right_encoded : String := "00000000"
theorem small_10031742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031742_right_root small_10031742_right_fuel small_10031742_right_count small_10031742_right_encoded = true := by
  decide +kernel
theorem small_10031742_right_covered : CoveredBy scale carrier boxes small_10031742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031742_right_root small_10031742_right_fuel small_10031742_right_count small_10031742_right_encoded small_10031742_right_checked

theorem cover_10031742 : CoveredBy scale carrier boxes root_10031742 := by
  apply coveredBy_split_literal root_10031742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031747 small_10031742_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031747
  · exact small_10031742_right_covered
#print axioms cover_10031742

def root_10031066 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031066_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031066_left_fuel : Nat := 37
def small_10031066_left_count : Nat := 319
def small_10031066_left_encoded : String := "0F34D100000000000CFD9C030F34D1020000000104548A071386710600000003000000051386AD06078000FA128A7CFB00000002078000FE000000090000000500000005000000030F350D0204548A0713867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D1010000000000022A458713E1C506000000030B4D440210801103000000010000000810804D0308C000FA0000000700000005000000010000000710D13D00022A458713E1C506000000030B4D4402108011030000000108C000FA11FC24FB0000000208C000FE0000000811FBE8FF000000070000000411FBE8FB000000080000000210804D0308C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C11011710000000000000000070000000811FBE8FF000000070000000411FBE8FB08C000FE11FC24FF000000040000000800000005000000020000000113E201060B4D44020000000810804D0308C000FA11FC24FB000000020000000711FBE8FB08C000FE000000080000000700000002000000010000000300000000128A40FF0AD3578110D10100000000000000000710D13D00022A458713E1C506000000030B4D44020000000700000005000000070000000000000004128A40FB078000FE128A7CFF000000040AD3578110D1010000000000022A4587000000050000000810D13D00022A458713E1C506000000030B4D44020000000800000005000000080000000000000005000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D10100000000000000000510D13D00022A458713E1C506000000030DE7CA020E5FD9030000000108C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C110117100000000000115234713F859060000000300000005000000071011AD000115234713F85906000000030D4128820EFA110300000001096000FA11AABCFB00000002096000FE11AABCFF00000004000000080000000711AA80FB096000FE0000000800000005000000020EFA4D03096000FA11AABCFB00000002096000FE11AABCFF000000040C730AE1000000070FA74500008A922713FDF906000000030D9479420000000700000005000000070000000000000005000000050000000113F895060D412882000000070EFA4D030000000700000001000000030000000000000005000000050000000513E201060DE7CA020E5FD9030000000108C000FA11FC24FB000000020000000711FBE8FB08C000FE11FC24FF000000040BE879C1000000070000000800000005000000020E60150308C000FA11FC24FB0000000208C000FE11FC24FF000000040000000700000005000000050000000100000003000000000000000500000005000000011386AD060C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD35781000000070000000700000007128A40FB078000FE128A7CFF000000040AD3578110D1010000000000000000070000000800000007000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF000000040AD357810000000710D13D00067ECE8712EA59060000000300000007000000070000000000000007128A40FB078000FE128A7CFF000000040AD3578110D10100000000000000000510D13D00067ECE8712EA5906000000030000000500000006000000000000000500000002000000010000000300000001"
theorem small_10031066_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031066_left_root small_10031066_left_fuel small_10031066_left_count small_10031066_left_encoded = true := by
  decide +kernel
theorem small_10031066_left_covered : CoveredBy scale carrier boxes small_10031066_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031066_left_root small_10031066_left_fuel small_10031066_left_count small_10031066_left_encoded small_10031066_left_checked

theorem cover_10031066 : CoveredBy scale carrier boxes root_10031066 := by
  apply coveredBy_split_literal root_10031066 small_10031066_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031742 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10031066_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031742
#print axioms cover_10031066

def root_10031060 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031060_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031060_left_fuel : Nat := 1
def small_10031060_left_count : Nat := 1
def small_10031060_left_encoded : String := "00000004"
theorem small_10031060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031060_left_root small_10031060_left_fuel small_10031060_left_count small_10031060_left_encoded = true := by
  decide +kernel
theorem small_10031060_left_covered : CoveredBy scale carrier boxes small_10031060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031060_left_root small_10031060_left_fuel small_10031060_left_count small_10031060_left_encoded small_10031060_left_checked

theorem cover_10031060 : CoveredBy scale carrier boxes root_10031060 := by
  apply coveredBy_split_literal root_10031060 small_10031060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031066 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10031060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031066
#print axioms cover_10031060

def root_10031059 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031059_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031059_right_fuel : Nat := 23
def small_10031059_right_count : Nat := 225
def small_10031059_right_encoded : String := "135D44FF0CFD9C010F34D100000000000CFD9C030F34D10200000001000000050F350D0204548A0713867106000000030000000500000007000000010F350D000CFD9C030F34D1020000000104548A071386710600000003000000051386AD060C9A87000F87510100000000078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3578310D1010200000001000000050000000A000000050000000500000005000000030F350D0204548A0713867106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002028000FE13D7ECFF00000004022A458713E1C506000000030B4D44000000000A10804D010B4D440210801103000000010000000A0000000A000000000000000A13D7B0FF022A458713E1C506000000030000000A0000000700000004128A40FB028000FE13D7ECFF00000004022A458713E1C506000000030B4D440010801101000000000B4D44020000000910804D03000000090000000110804D010B4D4402108011030000000100000009000000050000000013E201060B4D440010801101000000000B4D440210801103000000010000000A0000000A10804D010B4D44021080110300000001064000FA000000070000000500000005000000000000000300000005000000020F878D03078000FA128A7CFB00000002028000FE13D7ECFF00000004022A458713E1C506000000030B4D44000000000A10804D010DE7CA020E5FD903000000010000000A00000005000000000000000A0000000500000005000000010F878D010C9A87020F87510300000001078000FA128A7CFB00000002028000FE13D7ECFF00000004022A458713E1C506000000030DE7CA000E5FD901000000000B4D44020000000710804D0308C000FA0000000700000005000000010000000700000007000000050000000500000005000000001386AD060C9A87000F875101000000000C9A87020F87510300000001078000FA0000000A128A40FB028000FE13D7ECFF00000004067ECE8712EA5906000000030B4D44000000000A000000070000000700000007000000020F878D03078000FA0000000A128A40FB028000FE13D7ECFF00000004067ECE8712EA5906000000030000000512EA950600000007000000030000000500000002000000010F878D010C9A8702000000070F878D03078000FA0000000700000005000000010000000000000003000000010000000000000004"
theorem small_10031059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031059_right_root small_10031059_right_fuel small_10031059_right_count small_10031059_right_encoded = true := by
  decide +kernel
theorem small_10031059_right_covered : CoveredBy scale carrier boxes small_10031059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031059_right_root small_10031059_right_fuel small_10031059_right_count small_10031059_right_encoded small_10031059_right_checked

theorem cover_10031059 : CoveredBy scale carrier boxes root_10031059 := by
  apply coveredBy_split_literal root_10031059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031060 small_10031059_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031060
  · exact small_10031059_right_covered
#print axioms cover_10031059

def root_10031053 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031053_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031053_left_fuel : Nat := 1
def small_10031053_left_count : Nat := 1
def small_10031053_left_encoded : String := "00000002"
theorem small_10031053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031053_left_root small_10031053_left_fuel small_10031053_left_count small_10031053_left_encoded = true := by
  decide +kernel
theorem small_10031053_left_covered : CoveredBy scale carrier boxes small_10031053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031053_left_root small_10031053_left_fuel small_10031053_left_count small_10031053_left_encoded small_10031053_left_checked

theorem cover_10031053 : CoveredBy scale carrier boxes root_10031053 := by
  apply coveredBy_split_literal root_10031053 small_10031053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031059 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10031053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031059
#print axioms cover_10031053

def root_10031052 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031052_right_fuel : Nat := 27
def small_10031052_right_count : Nat := 313
def small_10031052_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF000000040AD3578110D1010000000000000000050000000800000005000000050000000500000003000000010F350D000CFD9C030F34D1020000000104548A07138671060000000300000005000000060F350D0204548A0713867106000000030C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D440010801101000000000B4D44020000000810804D0300000008000000010000000800000008128A40FF022A458713E1C506000000030B4D440010801101000000000B4D44020000000910804D03000000090000000110804D010B4D4402108011030000000100000009000000050000000013E201060B4D440010801101000000000B4D440210801103000000010000000810804D0303C000FA13A54CFB00000002064000FE0000000600000005000000050000000110804D010B4D4402000000080000000500000000000000030000000413D7B0FB078000FE128A7CFF00000004022A458713E1C50600000003000000080000000600000005000000020F878D03028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D440010801101000000000DE7CA020E5FD90300000001000000060000000610804D010DE7CA020E5FD9030000000103C000FA13A54CFB0000000208C000FE0000000600000005000000050000000500000000000000060000000500000005000000010F878D010C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030DE7CA000E5FD90100000000000000080000000800000008000000050000000500000005000000001386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE00000008128A40FF067ECE8712EA5906000000030B4D440010801101000000000B4D4402000000080000000610804D010B4D4402000000080000000500000000000000060000000413D7B0FB00000006000000020F878D0300000006000000010F878D010C9A87020F87510300000001028000FA13D7ECFB00000002078000FE00000008128A40FF067ECE8712EA5906000000030000000512EA950600000006000000030000000413D7B0FB078000FE0000000600000005000000020F878D03028000FA13D7ECFB00000002078000FE0000000600000005000000050000000100000000000000030000000100000000135D44FF0CFD9C010F34D10000000000000000050F350D000CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002028000FE13D7ECFF00000004067ECE8712EA5906000000030B4D440010801101000000000B4D4402108011030000000103C000FA0000000A00000005000000050000000512EA95060B4D4400000000060000000500000003000000050000000500000005000000050000000300000001000000000000000400000002"
theorem small_10031052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031052_right_root small_10031052_right_fuel small_10031052_right_count small_10031052_right_encoded = true := by
  decide +kernel
theorem small_10031052_right_covered : CoveredBy scale carrier boxes small_10031052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031052_right_root small_10031052_right_fuel small_10031052_right_count small_10031052_right_encoded small_10031052_right_checked

theorem cover_10031052 : CoveredBy scale carrier boxes root_10031052 := by
  apply coveredBy_split_literal root_10031052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031053 small_10031052_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031053
  · exact small_10031052_right_covered
#print axioms cover_10031052

def root_10031046 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031046_left_fuel : Nat := 1
def small_10031046_left_count : Nat := 1
def small_10031046_left_encoded : String := "00000003"
theorem small_10031046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031046_left_root small_10031046_left_fuel small_10031046_left_count small_10031046_left_encoded = true := by
  decide +kernel
theorem small_10031046_left_covered : CoveredBy scale carrier boxes small_10031046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031046_left_root small_10031046_left_fuel small_10031046_left_count small_10031046_left_encoded small_10031046_left_checked

theorem cover_10031046 : CoveredBy scale carrier boxes root_10031046 := by
  apply coveredBy_split_literal root_10031046 small_10031046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031052 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10031046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031052
#print axioms cover_10031046

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236
