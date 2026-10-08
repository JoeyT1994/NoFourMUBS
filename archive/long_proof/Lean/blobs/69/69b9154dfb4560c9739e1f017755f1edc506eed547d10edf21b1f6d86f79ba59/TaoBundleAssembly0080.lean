import TaoBundleAssembly0073
import TaoBundleAssembly0076
import TaoBundleAssembly0078
import TaoBundleAssembly0079
import TaoBundleChunkBatch0317
import TaoBundleChunkBatch0318
import TaoBundleChunkBatch0319
import TaoBundleChunkBatch0320
import TaoBundleChunkBatch0321
import TaoBundleChunkBatch0322
import TaoBundleChunkBatch0323
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080
def root_3320868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320868_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320868_right_fuel : Nat := 19
def small_3320868_right_count : Nat := 159
def small_3320868_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A0001081151E8FF0000000A00000004115224FF0000000408A913010000000A12073CF60000000008A91305000000070000000A115225070A0001081151E8FF08A91301120700F60000000A0000000012073CF60000000008A913050000000A0000000A00000004115224FF0000000408A91301120700F608A91305120700FA000000080000000212073CFA0000000208A913071207010600000003000000080000000A0000000012073CF60000000008A91305120700FA08A9130700000008000000070000000212073CFA0000000208A913071207010600000003000000070000000700000003000000021151E905000000020A0001061151E907000000030A0001081151E8FF08A913010000000A0000000900000004115224FF0000000408A91301120700F60000000A0000000012073CF60000000008A912FF0000000700000005115225070A0001081151E8FF08A91301120700F60000000A0000000012073CF60000000008A9130712070106000000030000000A0000000A00000004115224FF0000000408A91301120700F608A91307120701060000000308A912FF0000000A0000000812073D0608A912FF0000000A12070108000000040000000A000000030000000012073CF60000000008A91307120701060000000308A912FF12073D08050000F8135D8103050000FA00000007135D4505000000020CFD9C010000000800000007000000010000000A000000040000000712073D0608A912FF12073D08050000F8135D8103050000FA0000000A135D4505000000020CFD9C010000000A0000000A000000010000000A00000004000000070000000300000003"
theorem small_3320868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3320868_right_root small_3320868_right_fuel small_3320868_right_count small_3320868_right_encoded = true := by
  decide +kernel
theorem small_3320868_right_covered : CoveredBy scale carrier boxes small_3320868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3320868_right_root small_3320868_right_fuel small_3320868_right_count small_3320868_right_encoded small_3320868_right_checked

theorem cover_3320868 : CoveredBy scale carrier boxes root_3320868 := by
  apply coveredBy_split_literal root_3320868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3320869 small_3320868_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3320869
  · exact small_3320868_right_covered
#print axioms cover_3320868

def root_3320863 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320863_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320863_right_fuel : Nat := 1
def small_3320863_right_count : Nat := 1
def small_3320863_right_encoded : String := "00000000"
theorem small_3320863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3320863_right_root small_3320863_right_fuel small_3320863_right_count small_3320863_right_encoded = true := by
  decide +kernel
theorem small_3320863_right_covered : CoveredBy scale carrier boxes small_3320863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3320863_right_root small_3320863_right_fuel small_3320863_right_count small_3320863_right_encoded small_3320863_right_checked

theorem cover_3320863 : CoveredBy scale carrier boxes root_3320863 := by
  apply coveredBy_split_literal root_3320863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3320868 small_3320863_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3320868
  · exact small_3320863_right_covered
#print axioms cover_3320863

def root_3325610 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3325610 : CoveredBy scale carrier boxes root_3325610 := by
  apply coveredBy_split_literal root_3325610 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1268.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1269.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1268.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1269.covered
#print axioms cover_3325610

def root_3325605 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325605_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325605_right_fuel : Nat := 1
def small_3325605_right_count : Nat := 1
def small_3325605_right_encoded : String := "00000001"
theorem small_3325605_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3325605_right_root small_3325605_right_fuel small_3325605_right_count small_3325605_right_encoded = true := by
  decide +kernel
theorem small_3325605_right_covered : CoveredBy scale carrier boxes small_3325605_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3325605_right_root small_3325605_right_fuel small_3325605_right_count small_3325605_right_encoded small_3325605_right_checked

theorem cover_3325605 : CoveredBy scale carrier boxes root_3325605 := by
  apply coveredBy_split_literal root_3325605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3325610 small_3325605_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3325610
  · exact small_3325605_right_covered
#print axioms cover_3325605

def root_3325604 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325604_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325604_right_fuel : Nat := 12
def small_3325604_right_count : Nat := 59
def small_3325604_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A00010800000009115224FF0000000408A913050000000900000009115225070A0001081151E8FF0000000900000004115224FF0000000408A91305120700FA08A91307120701060000000300000007000000070000000212073CFA000000020000000700000003000000021151E905000000020A0001061151E9070000000300000005115225070A0001081151E8FF08A9130712070106000000030000000A0000000900000004115224FF0000000408A913070000000712073D0608A912FF00000007000000050000000300000003"
theorem small_3325604_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3325604_right_root small_3325604_right_fuel small_3325604_right_count small_3325604_right_encoded = true := by
  decide +kernel
theorem small_3325604_right_covered : CoveredBy scale carrier boxes small_3325604_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3325604_right_root small_3325604_right_fuel small_3325604_right_count small_3325604_right_encoded small_3325604_right_checked

theorem cover_3325604 : CoveredBy scale carrier boxes root_3325604 := by
  apply coveredBy_split_literal root_3325604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3325605 small_3325604_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3325605
  · exact small_3325604_right_covered
#print axioms cover_3325604

def root_3325598 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325598_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3325598_left_fuel : Nat := 1
def small_3325598_left_count : Nat := 1
def small_3325598_left_encoded : String := "00000000"
theorem small_3325598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3325598_left_root small_3325598_left_fuel small_3325598_left_count small_3325598_left_encoded = true := by
  decide +kernel
theorem small_3325598_left_covered : CoveredBy scale carrier boxes small_3325598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3325598_left_root small_3325598_left_fuel small_3325598_left_count small_3325598_left_encoded small_3325598_left_checked

theorem cover_3325598 : CoveredBy scale carrier boxes root_3325598 := by
  apply coveredBy_split_literal root_3325598 small_3325598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3325604 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3325598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3325604
#print axioms cover_3325598

def root_3320862 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3320862 : CoveredBy scale carrier boxes root_3320862 := by
  apply coveredBy_split_literal root_3320862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3320863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3325598 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3320863
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3325598
#print axioms cover_3320862

def root_3330055 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3330055 : CoveredBy scale carrier boxes root_3330055 := by
  apply coveredBy_split_literal root_3330055 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1270.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1271.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1270.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1271.covered
#print axioms cover_3330055

def root_3320861 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3320861 : CoveredBy scale carrier boxes root_3320861 := by
  apply coveredBy_split_literal root_3320861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3320862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3330055 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3320862
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3330055
#print axioms cover_3320861

def root_3272687 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3272687 : CoveredBy scale carrier boxes root_3272687 := by
  apply coveredBy_split_literal root_3272687 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3272688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3320861 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3272688
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3320861
#print axioms cover_3272687

def root_3218219 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3218219 : CoveredBy scale carrier boxes root_3218219 := by
  apply coveredBy_split_literal root_3218219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3218220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3272687 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3218220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3272687
#print axioms cover_3218219

def root_3120465 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3120465 : CoveredBy scale carrier boxes root_3120465 := by
  apply coveredBy_split_literal root_3120465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3120466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3218219 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3120466
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3218219
#print axioms cover_3120465

def root_2966717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2966717 : CoveredBy scale carrier boxes root_2966717 := by
  apply coveredBy_split_literal root_2966717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0073.root_2966718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3120465 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0073.cover_2966718
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3120465
#print axioms cover_2966717

def root_3336297 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3336297 : CoveredBy scale carrier boxes root_3336297 := by
  apply coveredBy_split_literal root_3336297 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1273.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1274.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1273.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1274.covered
#print axioms cover_3336297

def root_3336292 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3336292_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3336292_right_fuel : Nat := 1
def small_3336292_right_count : Nat := 1
def small_3336292_right_encoded : String := "00000004"
theorem small_3336292_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3336292_right_root small_3336292_right_fuel small_3336292_right_count small_3336292_right_encoded = true := by
  decide +kernel
theorem small_3336292_right_covered : CoveredBy scale carrier boxes small_3336292_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3336292_right_root small_3336292_right_fuel small_3336292_right_count small_3336292_right_encoded small_3336292_right_checked

theorem cover_3336292 : CoveredBy scale carrier boxes root_3336292 := by
  apply coveredBy_split_literal root_3336292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3336297 small_3336292_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3336297
  · exact small_3336292_right_covered
#print axioms cover_3336292

def root_3334876 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334876 : CoveredBy scale carrier boxes root_3334876 := by
  apply coveredBy_split_literal root_3334876 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1272.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3336292 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1272.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3336292
#print axioms cover_3334876

def root_3334870 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334870_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334870_left_fuel : Nat := 1
def small_3334870_left_count : Nat := 1
def small_3334870_left_encoded : String := "00000003"
theorem small_3334870_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334870_left_root small_3334870_left_fuel small_3334870_left_count small_3334870_left_encoded = true := by
  decide +kernel
theorem small_3334870_left_covered : CoveredBy scale carrier boxes small_3334870_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334870_left_root small_3334870_left_fuel small_3334870_left_count small_3334870_left_encoded small_3334870_left_checked

theorem cover_3334870 : CoveredBy scale carrier boxes root_3334870 := by
  apply coveredBy_split_literal root_3334870 small_3334870_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334876 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3334870_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334876
#print axioms cover_3334870

def root_3334869 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334869_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334869_right_fuel : Nat := 26
def small_3334869_right_count : Nat := 385
def small_3334869_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120700F608A91303120700F808A912FF12073CFE0000000405000104135D44FB050000FC135D80FD00000003000000090000000A00000002135D80FB00000002050000FC135D80FD0000000304548A01138670F600000007000000000000000A0000000A120700FE00000007000000040000000112073CF80000000108A912FF00000007000000070000000012073CF60000000008A91303120700F808A912FF12073CFE00000004050001040000000A0000000A120700FE050001040000000A135D80FB000000020000000A000000040000000112073CF80000000108A912FF12073CFE0000000405000104135D44FB0000000A000000020000000A120700FE00000007000000041151E8FF08A91301120700F608A91303120700F805000104135D44FB050000FC135D80FD00000003050000FE135D80FF0000000404548A01000000090000000A135D44FF04548A01138670F604548A03000000051386ACF800000001028001040000000913D7ECFB00000002078000FC128A7CFD000000030000000900000007000000001386ACF60000000004548A030000000A1386ACF8000000010280010413D7B0FB078000FC128A7CFD00000003028000FE0000000713D7B0FF067ECE810000000912EA94F6000000000000000900000004000000090000000213D7ECFB00000002078000FC128A7CFD00000003028000FE0000000713D7B0FF067ECE8112EA58F600000007000000000000000A000000040000000A00000004135D44FD050000FE00000009135D44FF04548A01000000090000000A000000040000000300000002135D80FB00000002050000FC135D80FD00000003050000FE135D80FF0000000404548A01138670F604548A030000000900000007000000000000000A135D44FF04548A01138670F604548A03138670F807800104128A40FB0000000500000002128A7CFB00000002078000FC128A7CFD00000003028000FE0000000513D7B0FF0000000A000000040000000A000000011386ACF80000000107800104128A40FB078000FC128A7CFD00000003028000FE0000000713D7B0FF022A45810000000700000007000000040000000700000002128A7CFB00000002078000FC128A7CFD00000003028000FE0000000713D7B0FF000000070000000400000007000000001386ACF60000000004548A030000000A1386ACF80000000107800104128A40FB078000FC128A7CFD000000030000000A0000000A000000020000000A00000004135D44FD050000FE0000000A135D44FF04548A01138670F604548A030000000A00000007000000000000000A00000004000000030000000112073CF80000000105000104135D44FB050000FC135D80FD00000003050000FE00000007135D44FF04548A01138670F600000007000000001386ACF6000000000CFD9C030F34D0F8028001040000000700000007000000010000000700000004135D44FD000000070000000300000002135D80FB00000002050000FC135D80FD00000003050000FE00000007135D44FF04548A01000000070000000700000004000000070000000012073CF60000000008A91303120700F805000104135D44FB050000FC135D80FD00000003050000FE0000000A135D44FF0CFD9C010F34D0F60000000A000000000000000A000000040000000A00000002135D80FB00000002050000FC135D80FD00000003050000FE0000000A135D44FF0000000A000000040000000A0000000112073CF80000000105000104135D44FB050000FC135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F600000007000000000000000A135D44FF0CFD9C010F34D0F60CFD9C030F34D0F80280010413D7B0FB078000FC00000007000000070000000213D7ECFB000000020000000A0000000100000005000000000000000500000004135D44FD050000FE135D80FF000000040CFD9C010000000700000005135D44FF0CFD9C010F34D0F6000000070000000000000005000000040000000300000002135D80FB00000002050000FC135D80FD00000003050000FE0000000A00000005135D44FD050000FE0000000A00000005000000030000000400000003"
theorem small_3334869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334869_right_root small_3334869_right_fuel small_3334869_right_count small_3334869_right_encoded = true := by
  decide +kernel
theorem small_3334869_right_covered : CoveredBy scale carrier boxes small_3334869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334869_right_root small_3334869_right_fuel small_3334869_right_count small_3334869_right_encoded small_3334869_right_checked

theorem cover_3334869 : CoveredBy scale carrier boxes root_3334869 := by
  apply coveredBy_split_literal root_3334869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334870 small_3334869_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334870
  · exact small_3334869_right_covered
#print axioms cover_3334869

def root_3334864 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334864_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334864_right_fuel : Nat := 1
def small_3334864_right_count : Nat := 1
def small_3334864_right_encoded : String := "00000002"
theorem small_3334864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334864_right_root small_3334864_right_fuel small_3334864_right_count small_3334864_right_encoded = true := by
  decide +kernel
theorem small_3334864_right_covered : CoveredBy scale carrier boxes small_3334864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334864_right_root small_3334864_right_fuel small_3334864_right_count small_3334864_right_encoded small_3334864_right_checked

theorem cover_3334864 : CoveredBy scale carrier boxes root_3334864 := by
  apply coveredBy_split_literal root_3334864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334869 small_3334864_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334869
  · exact small_3334864_right_covered
#print axioms cover_3334864

def root_3334863 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334863 : CoveredBy scale carrier boxes root_3334863 := by
  apply coveredBy_split_literal root_3334863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334864 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1275.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334864
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1275.covered
#print axioms cover_3334863

def root_3334858 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334858_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334858_right_fuel : Nat := 1
def small_3334858_right_count : Nat := 1
def small_3334858_right_encoded : String := "00000001"
theorem small_3334858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334858_right_root small_3334858_right_fuel small_3334858_right_count small_3334858_right_encoded = true := by
  decide +kernel
theorem small_3334858_right_covered : CoveredBy scale carrier boxes small_3334858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334858_right_root small_3334858_right_fuel small_3334858_right_count small_3334858_right_encoded small_3334858_right_checked

theorem cover_3334858 : CoveredBy scale carrier boxes root_3334858 := by
  apply coveredBy_split_literal root_3334858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334863 small_3334858_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334863
  · exact small_3334858_right_covered
#print axioms cover_3334858

def root_3334857 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334857_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334857_right_fuel : Nat := 21
def small_3334857_right_count : Nat := 225
def small_3334857_right_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A91301120700F608A912FD12073CFC0000000308A912FF0000000700000007120700FC08A912FF12073CFE00000004050000F8135D810305000104135D44FB04548A01000000090000000700000002135D80FB0000000204548A01138670F600000007000000001386ACF6000000000000000500000001135D450300000001050001040000000700000005120700FE0000000700000004000000030000000012073CF60000000008A912FD12073CFC0000000308A912FF12073CFE00000004050000F8135D810305000104135D44FB0CFD9C01000000070000000700000002000000050000000100000005120700FE0000000700000004120700FC08A912FF12073CFE00000004050000F8135D810305000104135D44FB0CFD9C010F34D0F6045489FD0000000700000005000000000000000500000002000000050000000100000005120700FE0000000700000004000000031151E8FF08A91301120700F608A912FD12073CFC00000003050000F8135D810305000104135D44FB050000FE00000007135D44FF04548A01138670F60000000700000000000000050000000400000002135D80FB00000002050000FE000000070000000500000001135D45030000000105000104135D44FB000000070000000200000005120700FC050000F8135D810305000104135D44FB050000FE135D80FF0000000404548A01138670F60000000600000000000000050000000500000002000000050000000100000005000000030000000012073CF60000000008A912FD12073CFC000000030000000500000005000000041151E8FD0A0000FE115224FF0000000408A9130100000007000000071151E8FF08A91301120700F6000000070000000000000005000000040000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120700F608A912FB12073D0408A912FD12073CFC0000000308A912FF12073CFE00000004050000F8135D810304548A01000000070000000500000001000000050000000500000005000000021207010400000002000000050000000012073CF60000000008A912FB00000005120701040000000200000005000000051151E8FD0A0000FE115224FF00000004000000051151E8FF08A91301120700F60000000500000000000000050000000400000003"
theorem small_3334857_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334857_right_root small_3334857_right_fuel small_3334857_right_count small_3334857_right_encoded = true := by
  decide +kernel
theorem small_3334857_right_covered : CoveredBy scale carrier boxes small_3334857_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334857_right_root small_3334857_right_fuel small_3334857_right_count small_3334857_right_encoded small_3334857_right_checked

theorem cover_3334857 : CoveredBy scale carrier boxes root_3334857 := by
  apply coveredBy_split_literal root_3334857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334858 small_3334857_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334858
  · exact small_3334857_right_covered
#print axioms cover_3334857

def root_3334852 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334852_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334852_right_fuel : Nat := 1
def small_3334852_right_count : Nat := 1
def small_3334852_right_encoded : String := "00000000"
theorem small_3334852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334852_right_root small_3334852_right_fuel small_3334852_right_count small_3334852_right_encoded = true := by
  decide +kernel
theorem small_3334852_right_covered : CoveredBy scale carrier boxes small_3334852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334852_right_root small_3334852_right_fuel small_3334852_right_count small_3334852_right_encoded small_3334852_right_checked

theorem cover_3334852 : CoveredBy scale carrier boxes root_3334852 := by
  apply coveredBy_split_literal root_3334852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334857 small_3334852_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334857
  · exact small_3334852_right_covered
#print axioms cover_3334852

def root_3334851 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334851_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3334851_right_fuel : Nat := 22
def small_3334851_right_count : Nat := 273
def small_3334851_right_encoded : String := "1151E901000000000A0000F8115225030A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F808A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D810105000104135D44FB04548A030000000A0000000A00000002135D80FB0000000204548A03000000081386ACF8000000010000000A00000000135D45010000000005000104135D44FB04548A030000000A0000000A00000002135D80FB0000000204548A030000000800000005120700FE050000F6135D81010500010400000009135D80FB0000000204548A03000000081386ACF8000000010000000500000000135D45010000000005000104000000090000000500000004120700FC08A912FF00000008120700FE0000000800000004000000030000000112073CF80000000108A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D810105000104135D44FB0CFD9C030000000A0F350CF8000000010000000500000002000000050000000000000005120700FE050000F6135D810105000104135D44FB000000070000000200000005000000000000000500000004120700FC08A912FF12073CFE00000004050000F6135D810105000104135D44FB0CFD9C030F34D0F800000008000000010000000500000002000000050000000000000005120700FE050000F6135D810105000104135D44FB0CFD9C03000000090F350CF800000001000000050000000200000005000000000000000500000004000000031151E8FF08A91303120700F808A912FD12073CFC00000003050000F6135D810105000104135D44FB050000FE0000000A135D44FF04548A03000000080000000500000004000000020000000800000000135D45010000000005000104135D44FB050000FE0000000A000000050000000200000005000000080000000112073CF80000000108A912FD12073CFC000000030000000500000005000000041151E8FD0A0000FE115224FF0000000408A91303120700F808A912FF0000000A120700FE0000000A000000040000000112073CF80000000108A912FF0000000A000000051151E8FF08A913030000000A00000005000000040000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F808A912FB12073D0408A912FD12073CFC0000000308A912FF000000080000000500000005000000021207010400000002000000050000000112073CF80000000108A912FB00000005120701040000000200000005000000051151E8FD0A0000FE115224FF00000004000000051151E8FF08A913030000000A000000050000000400000003000000011151E903000000010A0001041151E8FB0000000500000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FB000000051207010400000002000000051151E8FF00000005000000041151E8FD0000000500000003"
theorem small_3334851_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3334851_right_root small_3334851_right_fuel small_3334851_right_count small_3334851_right_encoded = true := by
  decide +kernel
theorem small_3334851_right_covered : CoveredBy scale carrier boxes small_3334851_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3334851_right_root small_3334851_right_fuel small_3334851_right_count small_3334851_right_encoded small_3334851_right_checked

theorem cover_3334851 : CoveredBy scale carrier boxes root_3334851 := by
  apply coveredBy_split_literal root_3334851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334852 small_3334851_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334852
  · exact small_3334851_right_covered
#print axioms cover_3334851

def root_3344756 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344756_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344756_left_fuel : Nat := 19
def small_3344756_left_count : Nat := 159
def small_3344756_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A91301120700F608A91303120700F808A912FD00000006000000060000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE000000070000000400000007120700FC08A91309120700FE000000090000000412073CFE000000040500010400000006135D80FB0000000204548A01138670F60CFD9C0300000006000000070000000000000006000000030000000012073CF60000000008A91303120700F808A912FD12073CFC0000000308A91309120700FE05000104135D44FB0000000700000002135D80FB000000020CFD9C0100000006000000070000000412073CFE00000004050001040000000700000006120700FC00000006000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE000000070000000400000007120700FC08A91309120700FE05000104135D44FB0CFD9C01000000090000000700000002135D80FB000000020CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C0300000006000000070000000412073CFE0000000405000104000000060000000600000003000000041151E9090000000408A91301120700F6000000060000000012073CF60000000008A9130300000006000000061151E8FD0A0000FE1152250908A91301120700F608A91303120700F808A91309120700FE0000000600000004000000060000000112073CF800000001000000070000000012073CF60000000008A91303120700F808A91309120700FE0000000700000004000000070000000112073CF80000000108A913090000000700000007000000041151E90900000004000000050000000300000002"
theorem small_3344756_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3344756_left_root small_3344756_left_fuel small_3344756_left_count small_3344756_left_encoded = true := by
  decide +kernel
theorem small_3344756_left_covered : CoveredBy scale carrier boxes small_3344756_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3344756_left_root small_3344756_left_fuel small_3344756_left_count small_3344756_left_encoded small_3344756_left_checked

theorem cover_3344756 : CoveredBy scale carrier boxes root_3344756 := by
  apply coveredBy_split_literal root_3344756 small_3344756_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1276.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3344756_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1276.covered
#print axioms cover_3344756

def root_3344751 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344751_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344751_right_fuel : Nat := 1
def small_3344751_right_count : Nat := 1
def small_3344751_right_encoded : String := "00000001"
theorem small_3344751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3344751_right_root small_3344751_right_fuel small_3344751_right_count small_3344751_right_encoded = true := by
  decide +kernel
theorem small_3344751_right_covered : CoveredBy scale carrier boxes small_3344751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3344751_right_root small_3344751_right_fuel small_3344751_right_count small_3344751_right_encoded small_3344751_right_checked

theorem cover_3344751 : CoveredBy scale carrier boxes root_3344751 := by
  apply coveredBy_split_literal root_3344751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3344756 small_3344751_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3344756
  · exact small_3344751_right_covered
#print axioms cover_3344751

def root_3344750 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3344750 : CoveredBy scale carrier boxes root_3344750 := by
  apply coveredBy_split_literal root_3344750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3344751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1277.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3344751
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1277.covered
#print axioms cover_3344750

def root_3344745 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344745_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3344745_right_fuel : Nat := 1
def small_3344745_right_count : Nat := 1
def small_3344745_right_encoded : String := "00000000"
theorem small_3344745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3344745_right_root small_3344745_right_fuel small_3344745_right_count small_3344745_right_encoded = true := by
  decide +kernel
theorem small_3344745_right_covered : CoveredBy scale carrier boxes small_3344745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3344745_right_root small_3344745_right_fuel small_3344745_right_count small_3344745_right_encoded small_3344745_right_checked

theorem cover_3344745 : CoveredBy scale carrier boxes root_3344745 := by
  apply coveredBy_split_literal root_3344745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3344750 small_3344745_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3344750
  · exact small_3344745_right_covered
#print axioms cover_3344745

def root_3344744 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3344744 : CoveredBy scale carrier boxes root_3344744 := by
  apply coveredBy_split_literal root_3344744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3344745 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1278.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3344745
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1278.covered
#print axioms cover_3344744

def root_3334850 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334850 : CoveredBy scale carrier boxes root_3334850 := by
  apply coveredBy_split_literal root_3334850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3334851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3344744 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3334851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3344744
#print axioms cover_3334850

def root_3356724 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3356724 : CoveredBy scale carrier boxes root_3356724 := by
  apply coveredBy_split_literal root_3356724 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1280.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1281.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1280.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1281.covered
#print axioms cover_3356724

def root_3356718 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356718_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356718_left_fuel : Nat := 1
def small_3356718_left_count : Nat := 1
def small_3356718_left_encoded : String := "00000004"
theorem small_3356718_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3356718_left_root small_3356718_left_fuel small_3356718_left_count small_3356718_left_encoded = true := by
  decide +kernel
theorem small_3356718_left_covered : CoveredBy scale carrier boxes small_3356718_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3356718_left_root small_3356718_left_fuel small_3356718_left_count small_3356718_left_encoded small_3356718_left_checked

theorem cover_3356718 : CoveredBy scale carrier boxes root_3356718 := by
  apply coveredBy_split_literal root_3356718 small_3356718_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3356724 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3356718_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3356724
#print axioms cover_3356718

def root_3356036 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356036_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356036_left_fuel : Nat := 23
def small_3356036_left_count : Nat := 329
def small_3356036_left_encoded : String := "13D7B0FF067ECE8112EA58F6067ECE8312EA58F80B4D43FC10804CFD0000000303C001040000000913A54CFB00000002014001080000000913F614FF000000040569AC410000000900000008108010FD03C001040000000913A54CFB00000002014001080000000913F614FF000000040569AC4100000009134110F6000000000569AC4300000009134110F8000000010AA6A27C10EDACFD000000030000000900000009000000030000000112EA94F8000000010B4D43FC10804CFD0000000303C0010413A510FB014001080000000913F614FF000000040569AC4100000009134110F6000000000793F0C30000000912825CF8000000010BF3E57C100928FD0000000300000009000000070000000213A54CFB000000020140010813F5D8FF0569AC4100000009000000070000000413F614FF000000040569AC411340D4F60793F0C3128220F8000000090000000112825CF8000000010000000700000000134110F6000000000793F0C3128220F80BF3E57C100928FD000000030460010400000009000000081008ECFD046001040000000900000007000000030000000112825CF8000000010BF3E57C0000000700000007108010FD03C0010413A510FB014001080000000713F614FF000000040569AC4100000009134110F6000000000793F0C300000009000000070000000213A54CFB00000002014001080000000713F614FF000000040569AC410000000700000007000000030000000012EA94F600000000067ECE8312EA58F80B4D43FC10804CFD0000000303C0010413A510FB014001080000000913F614FF000000040793F0C100000009000000080000000200000008108010FD03C0010413A510FB014001080000000913F614FF000000040793F0C1000000090000000A0000000213A54CFB000000020000000A000000030000000112EA94F8000000010B4D43FC10804CFD0000000303C0010413A510FB0140010813F5D8FF0793F0C1128220F60793F0C300000009000000070000000012825CF6000000000793F0C300000009000000070000000413F614FF000000040793F0C1128220F60793F0C3128220F80BF3E57C100928FD0000000300000009000000090000000112825CF8000000010BF3E57C100928FD000000030320010400000009000000071008ECFD00000007000000030000000012825CF6000000000793F0C3128220F80BF3E57C100928FD000000030320010400000009000000081008ECFD0320010413C108FB000000090000000213C144FB0000000201E0010800000007000000050000000300000001000000050000000213A54CFB000000020140010813F5D8FF0793F0C1128220F60793F0C300000008000000070000000012825CF6000000000793F0C300000008000000050000000413F614FF000000040793F0C1128220F60793F0C3128220F80BF3E57C100928FD00000003000000081008ECFD046001041383DCFB01E001080000000713E994FF0000000407095FA100000007000000050000000200000008000000030000000112825CF800000001000000050000000012825CF60000000000000005108010FD03C0010413A510FB014001080000000713F614FF000000040793F0C1128220F60793F0C3128220F80AA6A27C000000070000000700000001000000070000000012825CF6000000000793F0C30000000A000000050000000213A54CFB00000002014001080000000713F614FF000000040793F0C1128220F60793F0C3128220F80AA6A27C000000070000000700000001000000070000000012825CF600000000000000050000000300000004"
theorem small_3356036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3356036_left_root small_3356036_left_fuel small_3356036_left_count small_3356036_left_encoded = true := by
  decide +kernel
theorem small_3356036_left_covered : CoveredBy scale carrier boxes small_3356036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3356036_left_root small_3356036_left_fuel small_3356036_left_count small_3356036_left_encoded small_3356036_left_checked

theorem cover_3356036 : CoveredBy scale carrier boxes root_3356036 := by
  apply coveredBy_split_literal root_3356036 small_3356036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3356718 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3356036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3356718
#print axioms cover_3356036

def root_3356030 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356030_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3356030_left_fuel : Nat := 1
def small_3356030_left_count : Nat := 1
def small_3356030_left_encoded : String := "00000002"
theorem small_3356030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3356030_left_root small_3356030_left_fuel small_3356030_left_count small_3356030_left_encoded = true := by
  decide +kernel
theorem small_3356030_left_covered : CoveredBy scale carrier boxes small_3356030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3356030_left_root small_3356030_left_fuel small_3356030_left_count small_3356030_left_encoded small_3356030_left_checked

theorem cover_3356030 : CoveredBy scale carrier boxes root_3356030 := by
  apply coveredBy_split_literal root_3356030 small_3356030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3356036 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3356030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3356036
#print axioms cover_3356030

def root_3355114 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3355114_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3355114_left_fuel : Nat := 25
def small_3355114_left_count : Nat := 435
def small_3355114_left_encoded : String := "13D7B0FB0280010813D7B0FF067ECE8112EA58F6067ECE830000000912EA94F8000000010B4D43FC10804CFD0000000300000009000000090000000012EA94F600000000067ECE8312EA58F80B4D43FC10804CFD0000000300000009000000090000000112EA94F8000000010B4D43FC10804CFD00000003014001040000000913F614FB00000002014001080000000913F614FF000000040793F0C1128220F60793F0C30000000912825CF800000001000000090000000012825CF6000000000793F0C30000000912825CF8000000010BF3E57C100928FD0000000301E0010400000009000000051008ECFD0000000600000003108010FD014001040000000913F614FB00000002014001080000000913F614FF000000040793F0C1128220F60793F0C300000009000000070000000012825CF6000000000793F0C30000000600000006000000030000000413D7ECFF00000004067ECE8112EA58F6067ECE8312EA58F80B4D43FC10804CFD00000003014001040000000913F614FB0000000203C001080000000913A54CFF000000040569AC4100000009134110F6000000000569AC43000000090000000A108010FD014001040000000913F614FB0000000203C001080000000913A54CFF000000040569AC4100000009134110F6000000000569AC4300000009134110F8000000010AA6A27C10EDACFD000000030000000900000009000000030000000112EA94F8000000010B4D43FC10804CFD000000030140010413F5D8FB0000000A0000000213F614FB0000000203C0010813A510FF0569AC4100000009134110F6000000000793F0C3000000090000000A000000040000000A108010FD014001040000000813F614FB0000000203C0010813A510FF0569AC4100000008134110F6000000000793F0C300000009000000080000000413A54CFF0000000400000008000000030000000012EA94F600000000067ECE8312EA58F80B4D43FC10804CFD000000030140010413F5D8FB03C001080000000913A54CFF000000040793F0C100000009000000060000000213F614FB0000000203C0010813A510FF0793F0C10000000912825CF6000000000569AC4300000009134110F8000000010BF3E57C100928FD0000000300000009000000060000000413A54CFF000000040793F0C1128220F60569AC431340D4F80000000900000001134110F8000000010BF3E57C100928FD0000000301E001040000000913E994FB0000000204600108000000090000000A1008ECFD01E001040000000613E994FB00000002046001080000000900000006000000030000000012825CF6000000000569AC431340D4F80000000600000001134110F8000000010BF3E57C0000000600000006108010FD0140010413F5D8FB000000060000000213F614FB0000000203C0010813A510FF0793F0C100000009000000060000000413A54CFF000000040793F0C1128220F60569AC4300000006000000060000000000000006000000030000000112EA94F8000000010B4D43FC10804CFD000000030140010413F5D8FB03C0010813A510FF0793F0C1128220F60793F0C30000000912825CF800000001000000090000000012825CF6000000000793F0C300000006000000060000000413A54CFF000000040793F0C1128220F60000000A0000000012825CF600000000000000060000000213F614FB0000000203C0010813A510FF0793F0C1128220F60793F0C3128220F80BF3E57C100928FD0000000300000009000000090000000112825CF8000000010BF3E57C100928FD0000000301E001040000000913E994FB00000002000000051008ECFD01E001040000000813E994FB00000002032001080000000700000005000000030000000012825CF6000000000793F0C3128220F80BF3E57C100928FD0000000301E001040000000613E994FB00000002000000051008ECFD000000060000000300000001000000050000000413A54CFF000000040793F0C1128220F60793F0C3128220F80BF3E57C100928FD000000030000000A1008ECFD01E001040000000613E994FB00000002046001081383DCFF07095FA10000000A00000005000000040000000A00000003000000010000000A0000000012825CF60000000000000005108010FD0140010413F5D8FB03C0010813A510FF0000000600000004000000060000000213F614FB0000000203C0010813A510FF0793F0C1128220F60793F0C3128220F80AA6A27C00000006000000060000000112825CF800000001000000080000000012825CF6000000000793F0C300000006000000050000000413A54CFF000000040793F0C1128220F60793F0C3128220F80AA6A27C000000060000000600000001000000080000000012825CF600000000000000050000000300000002"
theorem small_3355114_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3355114_left_root small_3355114_left_fuel small_3355114_left_count small_3355114_left_encoded = true := by
  decide +kernel
theorem small_3355114_left_covered : CoveredBy scale carrier boxes small_3355114_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3355114_left_root small_3355114_left_fuel small_3355114_left_count small_3355114_left_encoded small_3355114_left_checked

theorem cover_3355114 : CoveredBy scale carrier boxes root_3355114 := by
  apply coveredBy_split_literal root_3355114 small_3355114_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3356030 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3355114_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3356030
#print axioms cover_3355114

def root_3355109 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3355109_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3355109_right_fuel : Nat := 1
def small_3355109_right_count : Nat := 1
def small_3355109_right_encoded : String := "00000003"
theorem small_3355109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3355109_right_root small_3355109_right_fuel small_3355109_right_count small_3355109_right_encoded = true := by
  decide +kernel
theorem small_3355109_right_covered : CoveredBy scale carrier boxes small_3355109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3355109_right_root small_3355109_right_fuel small_3355109_right_count small_3355109_right_encoded small_3355109_right_checked

theorem cover_3355109 : CoveredBy scale carrier boxes root_3355109 := by
  apply coveredBy_split_literal root_3355109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3355114 small_3355109_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3355114
  · exact small_3355109_right_covered
#print axioms cover_3355109

def root_3353763 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3353763 : CoveredBy scale carrier boxes root_3353763 := by
  apply coveredBy_split_literal root_3353763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1279.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3355109 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1279.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3355109
#print axioms cover_3353763

def root_3353757 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353757_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353757_left_fuel : Nat := 1
def small_3353757_left_count : Nat := 1
def small_3353757_left_encoded : String := "00000003"
theorem small_3353757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3353757_left_root small_3353757_left_fuel small_3353757_left_count small_3353757_left_encoded = true := by
  decide +kernel
theorem small_3353757_left_covered : CoveredBy scale carrier boxes small_3353757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3353757_left_root small_3353757_left_fuel small_3353757_left_count small_3353757_left_encoded small_3353757_left_checked

theorem cover_3353757 : CoveredBy scale carrier boxes root_3353757 := by
  apply coveredBy_split_literal root_3353757 small_3353757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353763 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3353757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353763
#print axioms cover_3353757

def root_3353756 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353756_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353756_right_fuel : Nat := 13
def small_3353756_right_count : Nat := 39
def small_3353756_right_encoded : String := "0F34D0FC0280010413D7B0FB0280010813D7B0FF067ECE8112EA58F6067ECE83000000090000000A0000000012EA94F600000000067ECE830000000812EA94F8000000010AD3577D10D13CFC0000000301400104000000090000000800000008000000040000000A0000000213D7ECFB000000020280010813D7B0FF000000080000000413D7ECFF00000004067ECE810000000A0000000800000003"
theorem small_3353756_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3353756_right_root small_3353756_right_fuel small_3353756_right_count small_3353756_right_encoded = true := by
  decide +kernel
theorem small_3353756_right_covered : CoveredBy scale carrier boxes small_3353756_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3353756_right_root small_3353756_right_fuel small_3353756_right_count small_3353756_right_encoded small_3353756_right_checked

theorem cover_3353756 : CoveredBy scale carrier boxes root_3353756 := by
  apply coveredBy_split_literal root_3353756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353757 small_3353756_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353757
  · exact small_3353756_right_covered
#print axioms cover_3353756

def root_3353750 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353750_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353750_left_fuel : Nat := 1
def small_3353750_left_count : Nat := 1
def small_3353750_left_encoded : String := "00000001"
theorem small_3353750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3353750_left_root small_3353750_left_fuel small_3353750_left_count small_3353750_left_encoded = true := by
  decide +kernel
theorem small_3353750_left_covered : CoveredBy scale carrier boxes small_3353750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3353750_left_root small_3353750_left_fuel small_3353750_left_count small_3353750_left_encoded small_3353750_left_checked

theorem cover_3353750 : CoveredBy scale carrier boxes root_3353750 := by
  apply coveredBy_split_literal root_3353750 small_3353750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353756 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3353750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353756
#print axioms cover_3353750

def root_3353210 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353210_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353210_left_fuel : Nat := 33
def small_3353210_left_count : Nat := 259
def small_3353210_left_encoded : String := "138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030280010413D7B0FB028001080000000913D7ECFF00000004067ECE810000000912EA94F600000000022A45830000000813E200F8000000010DE7C9FC0E6014FD00000003000000080E5FD8FD014001040000000900000008000000030000000213D7ECFB00000002028001080000000813D7ECFF00000004067ECE8112EA58F6022A45830000000813E200F8000000010DE7C9FC000000080E5FD8FD000000080000000300000000000000080F8750FD0280010413D7B0FB028001080000000913D7ECFF00000004067ECE810000000912EA94F600000000022A45830000000913E200F8000000010B4D43FC10804CFD00000003014001040000000913F614FB0000000203C001080000000913A54CFF000000040793F0C10000000912825CF60000000000000009108010FD014001040000000613F614FB0000000203C001080000000900000006000000030000000213D7ECFB000000020280010813D7B0FF067ECE8100000009000000080000000413D7ECFF00000004067ECE8112EA58F6022A45830000000513E200F8000000010B4D43FC10804CFD0000000303C0010413A510FB03C001080000000513A54CFF000000040569AC4100000005134110F600000000000000090000000213A54CFB0000000203C001080000000813A54CFF000000040569AC411340D4F6000000080000000000000008108010FD03C0010413A510FB03C001080000000513A54CFF000000040569AC4100000005134110F600000000000000090000000213A54CFB0000000203C0010813A510FF0569AC4100000005000000080000000413A54CFF000000040569AC4100000005134110F600000000033F67C30000000513BC30F8000000010AA6A27C10EDACFD000000030000000810ED70FD046001041383DCFB0460010800000005138418FF0000000405F43D61000000051317F8F60000000003C9F8E300000005000000D9000000020000000800000003000000030000000012EA94F600000000022A45830000000813E200F8000000010B4D43FC10804CFD0000000303C0010413A510FB03C001080000000813A54CFF000000040793F0C1128220F60000000800000000000000080000000200000008108010FD03C0010413A510FB03C0010813A510FF0793F0C100000009000000080000000413A54CFF000000040793F0C1128220F6033F67C30000000913BC30F8000000010AA6A27C10EDACFD0000000303200104000000060000000810ED70FD00000006000000030000000012825CF600000000033F67C300000006000000060000000213A54CFB0000000203C001080000000813A54CFF000000040793F0C1128220F600000008000000000000000800000003000000030F34D0FC000000080000000300000001"
theorem small_3353210_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3353210_left_root small_3353210_left_fuel small_3353210_left_count small_3353210_left_encoded = true := by
  decide +kernel
theorem small_3353210_left_covered : CoveredBy scale carrier boxes small_3353210_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3353210_left_root small_3353210_left_fuel small_3353210_left_count small_3353210_left_encoded small_3353210_left_checked

theorem cover_3353210 : CoveredBy scale carrier boxes root_3353210 := by
  apply coveredBy_split_literal root_3353210 small_3353210_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353750 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3353210_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353750
#print axioms cover_3353210

def root_3353204 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353204_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3353204_left_fuel : Nat := 1
def small_3353204_left_count : Nat := 1
def small_3353204_left_encoded : String := "00000000"
theorem small_3353204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3353204_left_root small_3353204_left_fuel small_3353204_left_count small_3353204_left_encoded = true := by
  decide +kernel
theorem small_3353204_left_covered : CoveredBy scale carrier boxes small_3353204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3353204_left_root small_3353204_left_fuel small_3353204_left_count small_3353204_left_encoded small_3353204_left_checked

theorem cover_3353204 : CoveredBy scale carrier boxes root_3353204 := by
  apply coveredBy_split_literal root_3353204 small_3353204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353210 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3353204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353210
#print axioms cover_3353204

def root_3352502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352502_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352502_left_fuel : Nat := 33
def small_3352502_left_count : Nat := 337
def small_3352502_left_encoded : String := "138670F604548A03138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028001040000000513D7ECFB00000002028001080000000513D7ECFF00000004022A45810000000513E200F600000000022A45830000000513E200F8000000010DE7C9FC0E6014FD0000000300000008000000090F8750FD000000050000000300000009000000011386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030280010413D7B0FB02800108000000090000000A0000000213D7ECFB000000020280010813D7B0FF022A45810000000913E200F600000000067ECE830000000912EA94F8000000010DE7C9FC0E6014FD00000003000000090E5FD8FD03C001040000000913A54CFB00000002014001080000000600000006000000030000000413D7ECFF00000004022A45810000000A13E200F600000000067ECE8312EA58F80DE7C9FC0000000A0E5FD8FD0000000A00000003000000010000000A0F8750FD0280010413D7B0FB028001080000000913D7ECFF00000004022A45810000000913E200F600000000067ECE83000000090000000A0000000213D7ECFB000000020280010813D7B0FF022A45810000000913E200F600000000067ECE830000000912EA94F8000000010B4D43FC10804CFD0000000303C001040000000913A54CFB00000002014001080000000913F614FF00000004033F67C10000000913BC30F6000000000793F0C30000000900000007108010FD03C001040000000913A54CFB00000002014001080000000713F614FF0000000400000007000000030000000413D7ECFF00000004022A458113E1C4F6067ECE8312EA58F800000005000000010000000A0000000013E200F600000000067ECE8312EA58F80B4D43FC10804CFD0000000303C0010413A510FB03C00108000000050000000A0000000213A54CFB0000000203C0010813A510FF033F67C10000000513BC30F600000000000000090000000413A54CFF00000004033F67C10000000A13BC30F6000000000569AC431340D4F80000000A000000010000000A108010FD03C0010413A510FB03C001080000000513A54CFF00000004033F67C10000000513BC30F6000000000569AC43000000050000000A0000000213A54CFB0000000203C0010813A510FF033F67C10000000513BC30F6000000000569AC4300000005134110F800000001000000090000000413A54CFF00000004033F67C10000000513BC30F6000000000569AC4300000005134110F8000000010AA6A27C10EDACFD000000030000000A10ED70FD046001041383DCFB04600108000000050000000A00000002138418FB00000002046001081383DCFF03C9F8E100000005000000D9000000040000000A00000003000000030000000112EA94F8000000010B4D43FC10804CFD0000000303C001040000000A13A54CFB0000000203C0010813A510FF033F67C10000000A13BC30F6000000000793F0C3128220F80000000A000000010000000A000000040000000A108010FD03C0010413A510FB03C0010813A510FF033F67C10000000813BC30F6000000000793F0C30000000900000008000000040000000A0000000213A54CFB0000000203C0010813A510FF033F67C113BBF4F60793F0C300000009000000070000000013BC30F6000000000793F0C3128220F80AA6A27C10EDACFD000000030460010400000009138418FB0000000203200108000000060000000A10ED70FD000000070000000300000001000000070000000413A54CFF00000004033F67C10000000A13BC30F6000000000793F0C3128220F80000000A000000010000000800000003000000030F34D0FC0000000A0000000300000000"
theorem small_3352502_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352502_left_root small_3352502_left_fuel small_3352502_left_count small_3352502_left_encoded = true := by
  decide +kernel
theorem small_3352502_left_covered : CoveredBy scale carrier boxes small_3352502_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352502_left_root small_3352502_left_fuel small_3352502_left_count small_3352502_left_encoded small_3352502_left_checked

theorem cover_3352502 : CoveredBy scale carrier boxes root_3352502 := by
  apply coveredBy_split_literal root_3352502 small_3352502_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3353204 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3352502_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3353204
#print axioms cover_3352502

def root_3352497 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352497_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352497_right_fuel : Nat := 1
def small_3352497_right_count : Nat := 1
def small_3352497_right_encoded : String := "00000004"
theorem small_3352497_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352497_right_root small_3352497_right_fuel small_3352497_right_count small_3352497_right_encoded = true := by
  decide +kernel
theorem small_3352497_right_covered : CoveredBy scale carrier boxes small_3352497_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352497_right_root small_3352497_right_fuel small_3352497_right_count small_3352497_right_encoded small_3352497_right_checked

theorem cover_3352497 : CoveredBy scale carrier boxes root_3352497 := by
  apply coveredBy_split_literal root_3352497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352502 small_3352497_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352502
  · exact small_3352497_right_covered
#print axioms cover_3352497

def root_3362010 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3362010_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3362010_left_fuel : Nat := 31
def small_3362010_left_count : Nat := 483
def small_3362010_left_encoded : String := "138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030280010413D7B0FB07800108128A40FF067ECE810000000712EA94F600000000022A45830000000713E200F8000000010DE7C9FC000000070000000700000004000000070000000213D7ECFB0000000207800108128A40FF067ECE8112EA58F6022A45830000000713E200F8000000010DE7C9FC00000007000000070000000012EA94F600000000022A45830000000713E200F8000000010DE7C9FC000000070000000700000004128A7CFF00000004000000070F8750FD0280010413D7B0FB07800108128A40FF067ECE8112EA58F6022A458313E1C4F8000000050000000113E200F8000000010B4D43FC10804CFD00000003014001040000000713F614FB000000020640010812FF70FF000000070000000400000007108010FD0140010413F5D8FB0640010800000009000000070000000213F614FB000000020640010812FF70FF0569AC4100000005134110F600000000033F67C30000000513BC30F800000001000000090000000412FFACFF000000040569AC410000000700000007000000030000000012EA94F600000000022A458313E1C4F80B4D43FC00000007108010FD014001040000000600000007000000030000000113E200F8000000010B4D43FC10804CFD000000030140010413F5D8FB0640010812FF70FF0000000600000004000000060000000213F614FB000000020640010812FF70FF000000070000000400000007108010FD014001040000000613F614FB000000020640010812FF70FF0000000600000004000000060000000300000004128A7CFF00000004067ECE8112EA58F6022A45830000000713E200F8000000010B4D43FC00000007000000070000000012EA94F600000000022A45830000000713E200F8000000010B4D43FC00000007000000070000000213D7ECFB0000000207800108128A40FF067ECE8112EA58F6022A458313E1C4F80B4D43FC10804CFD0000000300000007108010FD03C001040000000513A54CFB0000000200000007000000030000000113E200F8000000010B4D43FC10804CFD0000000303C0010413A510FB0640010812FF70FF0569AC41000000070000000700000004000000070000000213A54CFB000000020640010812FF70FF0569AC4100000007000000070000000400000007108010FD03C0010413A510FB0640010812FF70FF0569AC4100000005134110F600000000033F67C30000000513BC30F8000000010AA6A27C10EDACFD000000030000000710ED70FD0320010413C108FB05A0010800000006000000060000000213C144FB0000000205A00108133134FF05F43D6100000005000000060000000400000007000000030000000412FFACFF000000040569AC4100000007000000070000000213A54CFB000000020640010812FF70FF0569AC411340D4F6033F67C30000000513BC30F8000000010AA6A27C10EDACFD0000000304600104000000070000000710ED70FD0460010400000005138418FB0000000205A0010800000005000000070000000300000000134110F600000000033F67C313BBF4F8000000070000000113BC30F8000000010AA6A27C10EDACFD0000000304600104000000070000000710ED70FD046001041383DCFB05A00108133134FF05F43D610000000700000007000000040000000700000002138418FB0000000205A00108133134FF05F43D6100000007000000080000000400000007000000030000000412FFACFF000000040569AC4100000007134110F60000000000000007000000030000000012EA94F600000000022A458313E1C4F80B4D43FC10804CFD0000000300000007108010FD03C001040000000713A54CFB0000000200000007000000030000000113E200F8000000010B4D43FC10804CFD0000000303C0010413A510FB0640010812FF70FF0793F0C1000000070000000700000004000000070000000213A54CFB000000020640010812FF70FF000000080000000400000007108010FD03C0010413A510FB0640010812FF70FF0793F0C1128220F6033F67C30000000713BC30F8000000010AA6A27C10EDACFD000000030000000710ED70FD00000006000000030000000012825CF600000000000000060000000412FFACFF000000040793F0C100000007000000060000000213A54CFB000000020640010812FF70FF0793F0C1128220F6033F67C30000000713BC30F8000000010AA6A27C10EDACFD000000030000000710ED70FD046001041383DCFB05A00108133134FF00000006000000040000000600000002138418FB0000000205A001080000000800000007000000030000000012825CF600000000033F67C30000000713BC30F8000000010AA6A27C0000000810ED70FD00000006000000030000000412FFACFF000000040793F0C100000007000000070000000300000004128A7CFF00000004067ECE8112EA58F6022A45830000000713E200F8000000010B4D43FC10804CFD0000000300000007108010FD03C001040000000700000007000000030000000012EA94F600000000022A45830000000713E200F8000000010B4D43FC10804CFD0000000300000007108010FD03C00104000000070000000700000003000000030F34D0FC0280010400000007000000070000000300000001"
theorem small_3362010_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3362010_left_root small_3362010_left_fuel small_3362010_left_count small_3362010_left_encoded = true := by
  decide +kernel
theorem small_3362010_left_covered : CoveredBy scale carrier boxes small_3362010_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3362010_left_root small_3362010_left_fuel small_3362010_left_count small_3362010_left_encoded small_3362010_left_checked

theorem cover_3362010 : CoveredBy scale carrier boxes root_3362010 := by
  apply coveredBy_split_literal root_3362010 small_3362010_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1282.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3362010_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1282.covered
#print axioms cover_3362010

def root_3362004 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3362004_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3362004_left_fuel : Nat := 1
def small_3362004_left_count : Nat := 1
def small_3362004_left_encoded : String := "00000000"
theorem small_3362004_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3362004_left_root small_3362004_left_fuel small_3362004_left_count small_3362004_left_encoded = true := by
  decide +kernel
theorem small_3362004_left_covered : CoveredBy scale carrier boxes small_3362004_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3362004_left_root small_3362004_left_fuel small_3362004_left_count small_3362004_left_encoded small_3362004_left_checked

theorem cover_3362004 : CoveredBy scale carrier boxes root_3362004 := by
  apply coveredBy_split_literal root_3362004 small_3362004_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3362010 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3362004_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3362010
#print axioms cover_3362004

def root_3361714 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3361714_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3361714_left_fuel : Nat := 29
def small_3361714_left_count : Nat := 141
def small_3361714_left_encoded : String := "138670F604548A03138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028001040000000A13D7ECFB0000000207800108128A40FF022A45810000000713E200F600000000022A4583000000070000000A00000004000000070F8750FD0280010413D7B0FB07800108128A40FF00000005000000040000000A0000000213D7ECFB0000000207800108128A40FF022A45810000000513E200F600000000022A45830000000513E200F8000000010B4D43FC10804CFD0000000303C001040000000A13A54CFB000000020640010812FF70FF000000050000000400000007108010FD03C001040000000513A54CFB00000002064001080000000512FFACFF00000004033F67C10000000513BC30F600000000000000070000000300000004128A7CFF00000004022A45810000000A13E200F600000000022A4583000000070000000A000000030F34D0FC0000000700000003000000011386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC0000000A0F8750FD028001040000000A13D7ECFB0000000207800108128A40FF022A45810000000A13E200F600000000067ECE8312EA58F80B4D43FC0000000A108010FD03C001040000000A13A54CFB000000020640010812FF70FF033F67C10000000A13BC30F6000000000569AC431340D4F80AA6A27C0000000A10ED70FD04600104000000050000000A00000003000000010000000A000000040000000A00000003000000010000000A000000040000000A000000030000000A00000000"
theorem small_3361714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3361714_left_root small_3361714_left_fuel small_3361714_left_count small_3361714_left_encoded = true := by
  decide +kernel
theorem small_3361714_left_covered : CoveredBy scale carrier boxes small_3361714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3361714_left_root small_3361714_left_fuel small_3361714_left_count small_3361714_left_encoded small_3361714_left_checked

theorem cover_3361714 : CoveredBy scale carrier boxes root_3361714 := by
  apply coveredBy_split_literal root_3361714 small_3361714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3362004 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3361714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3362004
#print axioms cover_3361714

def root_3361708 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3361708_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3361708_left_fuel : Nat := 1
def small_3361708_left_count : Nat := 1
def small_3361708_left_encoded : String := "00000004"
theorem small_3361708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3361708_left_root small_3361708_left_fuel small_3361708_left_count small_3361708_left_encoded = true := by
  decide +kernel
theorem small_3361708_left_covered : CoveredBy scale carrier boxes small_3361708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3361708_left_root small_3361708_left_fuel small_3361708_left_count small_3361708_left_encoded small_3361708_left_checked

theorem cover_3361708 : CoveredBy scale carrier boxes root_3361708 := by
  apply coveredBy_split_literal root_3361708 small_3361708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3361714 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3361708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3361714
#print axioms cover_3361708

def root_3352496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352496 : CoveredBy scale carrier boxes root_3352496 := by
  apply coveredBy_split_literal root_3352496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3361708 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3361708
#print axioms cover_3352496

def root_3352491 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352491_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352491_right_fuel : Nat := 1
def small_3352491_right_count : Nat := 1
def small_3352491_right_encoded : String := "00000002"
theorem small_3352491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352491_right_root small_3352491_right_fuel small_3352491_right_count small_3352491_right_encoded = true := by
  decide +kernel
theorem small_3352491_right_covered : CoveredBy scale carrier boxes small_3352491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352491_right_root small_3352491_right_fuel small_3352491_right_count small_3352491_right_encoded small_3352491_right_checked

theorem cover_3352491 : CoveredBy scale carrier boxes root_3352491 := by
  apply coveredBy_split_literal root_3352491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352496 small_3352491_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352496
  · exact small_3352491_right_covered
#print axioms cover_3352491

def root_3365206 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3365206 : CoveredBy scale carrier boxes root_3365206 := by
  apply coveredBy_split_literal root_3365206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1283.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1284.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1283.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1284.covered
#print axioms cover_3365206

def root_3365201 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3365201_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3365201_right_fuel : Nat := 1
def small_3365201_right_count : Nat := 1
def small_3365201_right_encoded : String := "00000004"
theorem small_3365201_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3365201_right_root small_3365201_right_fuel small_3365201_right_count small_3365201_right_encoded = true := by
  decide +kernel
theorem small_3365201_right_covered : CoveredBy scale carrier boxes small_3365201_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3365201_right_root small_3365201_right_fuel small_3365201_right_count small_3365201_right_encoded small_3365201_right_checked

theorem cover_3365201 : CoveredBy scale carrier boxes root_3365201 := by
  apply coveredBy_split_literal root_3365201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3365206 small_3365201_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3365206
  · exact small_3365201_right_covered
#print axioms cover_3365201

def root_3365200 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3365200 : CoveredBy scale carrier boxes root_3365200 := by
  apply coveredBy_split_literal root_3365200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3365201 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1285.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3365201
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1285.covered
#print axioms cover_3365200

def root_3365194 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3365194_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3365194_left_fuel : Nat := 1
def small_3365194_left_count : Nat := 1
def small_3365194_left_encoded : String := "00000002"
theorem small_3365194_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3365194_left_root small_3365194_left_fuel small_3365194_left_count small_3365194_left_encoded = true := by
  decide +kernel
theorem small_3365194_left_covered : CoveredBy scale carrier boxes small_3365194_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3365194_left_root small_3365194_left_fuel small_3365194_left_count small_3365194_left_encoded small_3365194_left_checked

theorem cover_3365194 : CoveredBy scale carrier boxes root_3365194 := by
  apply coveredBy_split_literal root_3365194 small_3365194_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3365200 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3365194_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3365200
#print axioms cover_3365194

def root_3352490 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352490 : CoveredBy scale carrier boxes root_3352490 := by
  apply coveredBy_split_literal root_3352490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3365194 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352491
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3365194
#print axioms cover_3352490

def root_3352484 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352484_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352484_left_fuel : Nat := 1
def small_3352484_left_count : Nat := 1
def small_3352484_left_encoded : String := "00000003"
theorem small_3352484_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352484_left_root small_3352484_left_fuel small_3352484_left_count small_3352484_left_encoded = true := by
  decide +kernel
theorem small_3352484_left_covered : CoveredBy scale carrier boxes small_3352484_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352484_left_root small_3352484_left_fuel small_3352484_left_count small_3352484_left_encoded small_3352484_left_checked

theorem cover_3352484 : CoveredBy scale carrier boxes root_3352484 := by
  apply coveredBy_split_literal root_3352484 small_3352484_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352490 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3352484_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352490
#print axioms cover_3352484

def root_3352483 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352483_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352483_right_fuel : Nat := 7
def small_3352483_right_count : Nat := 21
def small_3352483_right_encoded : String := "120700FC05000104135D44FB05000108135D44FF04548A010000000A00000008000000040000000A00000002135D80FB000000020500010800000008135D80FF0000000404548A01000000060000000800000003"
theorem small_3352483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352483_right_root small_3352483_right_fuel small_3352483_right_count small_3352483_right_encoded = true := by
  decide +kernel
theorem small_3352483_right_covered : CoveredBy scale carrier boxes small_3352483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352483_right_root small_3352483_right_fuel small_3352483_right_count small_3352483_right_encoded small_3352483_right_checked

theorem cover_3352483 : CoveredBy scale carrier boxes root_3352483 := by
  apply coveredBy_split_literal root_3352483 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352484 small_3352483_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352484
  · exact small_3352483_right_covered
#print axioms cover_3352483

def root_3352478 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352478_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352478_right_fuel : Nat := 1
def small_3352478_right_count : Nat := 1
def small_3352478_right_encoded : String := "00000001"
theorem small_3352478_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352478_right_root small_3352478_right_fuel small_3352478_right_count small_3352478_right_encoded = true := by
  decide +kernel
theorem small_3352478_right_covered : CoveredBy scale carrier boxes small_3352478_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352478_right_root small_3352478_right_fuel small_3352478_right_count small_3352478_right_encoded small_3352478_right_checked

theorem cover_3352478 : CoveredBy scale carrier boxes root_3352478 := by
  apply coveredBy_split_literal root_3352478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352483 small_3352478_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352483
  · exact small_3352478_right_covered
#print axioms cover_3352478

def root_3352477 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352477 : CoveredBy scale carrier boxes root_3352477 := by
  apply coveredBy_split_literal root_3352477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1286.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1286.covered
#print axioms cover_3352477

def root_3352472 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352472_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352472_right_fuel : Nat := 1
def small_3352472_right_count : Nat := 1
def small_3352472_right_encoded : String := "00000000"
theorem small_3352472_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352472_right_root small_3352472_right_fuel small_3352472_right_count small_3352472_right_encoded = true := by
  decide +kernel
theorem small_3352472_right_covered : CoveredBy scale carrier boxes small_3352472_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352472_right_root small_3352472_right_fuel small_3352472_right_count small_3352472_right_encoded small_3352472_right_checked

theorem cover_3352472 : CoveredBy scale carrier boxes root_3352472 := by
  apply coveredBy_split_literal root_3352472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352477 small_3352472_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352477
  · exact small_3352472_right_covered
#print axioms cover_3352472

def root_3352471 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3352471 : CoveredBy scale carrier boxes root_3352471 := by
  apply coveredBy_split_literal root_3352471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352472 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1287.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352472
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1287.covered
#print axioms cover_3352471

def root_3352466 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352466_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352466_right_fuel : Nat := 1
def small_3352466_right_count : Nat := 1
def small_3352466_right_encoded : String := "00000004"
theorem small_3352466_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352466_right_root small_3352466_right_fuel small_3352466_right_count small_3352466_right_encoded = true := by
  decide +kernel
theorem small_3352466_right_covered : CoveredBy scale carrier boxes small_3352466_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352466_right_root small_3352466_right_fuel small_3352466_right_count small_3352466_right_encoded small_3352466_right_checked

theorem cover_3352466 : CoveredBy scale carrier boxes root_3352466 := by
  apply coveredBy_split_literal root_3352466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352471 small_3352466_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352471
  · exact small_3352466_right_covered
#print axioms cover_3352466

def root_3352465 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352465_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352465_right_fuel : Nat := 27
def small_3352465_right_count : Nat := 335
def small_3352465_right_encoded : String := "115224FF0000000408A91301120700F608A91303120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01138670F60000000A000000001386ACF60000000004548A03138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030C9A87080F8750FF0000000700000004000000070F8750FD0C9A87080F8750FF0280010413D7B0FB067ECE8100000007000000070000000213D7ECFB00000002067ECE810000000700000007000000040F878CFF0000000402800104000000070000000700000003000000040F34D108000000040000000A0000000A000000011386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000A0F8750FD0C9A87080F8750FF028001040000000A13D7ECFB00000002067ECE810000000A00000005000000040000000A0000000300000004000000050000000A00000002135D80FB0000000204548A01138670F604548A03138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030000000A0F8750FD0C9A87080F8750FF07800104128A40FB022A4581000000070000000700000002128A7CFB00000002022A45810000000700000007000000040F878CFF000000040000000700000003000000040F34D108000000040000000A0000000A000000011386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000A0F8750FD0C9A87080F8750FF078001040000000A0000000A000000040000000A00000003000000040000000A0000000A000000001386ACF60000000004548A03138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030C9A87080F8750FF0000000700000004000000070F8750FD0C9A87080F8750FF07800104128A40FB067ECE81000000070000000700000002128A7CFB00000002067ECE810000000700000005000000040F878CFF0000000407800104000000070000000700000003000000040F34D10800000004000000050F34D0FC0CFD9BFF000000070000000500000003000000011386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030000000500000005000000040000000500000005000000041207010800000004050001040000000A00000005120700FC0000000A000000030000000112073CF80000000108A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A010000000A1386ACF6000000000000000500000002135D80FB0000000204548A01138670F60CFD9C030F34D0F80000000A000000010000000500000000000000050000000400000005000000050000000012073CF60000000008A91303120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB0CFD9C010F34D0F604548A03138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030C9A87080F8750FF0000000700000004000000050F8750FD0C9A87080F8750FF0280010413D7B0FB0AD3578100000007000000050000000213D7ECFB000000020AD357810000000700000005000000040F878CFF00000004000000050000000300000004000000050F34D0FC0CFD9BFF000000070000000500000003000000011386ACF80000000100000005000000000F350CF6000000000000000500000002135D80FB000000020CFD9C010F34D0F604548A03138670F80CFD9BFD0F350CFC000000030000000500000005000000010000000500000000000000050000000400000005000000050000000100000005"
theorem small_3352465_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352465_right_root small_3352465_right_fuel small_3352465_right_count small_3352465_right_encoded = true := by
  decide +kernel
theorem small_3352465_right_covered : CoveredBy scale carrier boxes small_3352465_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352465_right_root small_3352465_right_fuel small_3352465_right_count small_3352465_right_encoded small_3352465_right_checked

theorem cover_3352465 : CoveredBy scale carrier boxes root_3352465 := by
  apply coveredBy_split_literal root_3352465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352466 small_3352465_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352466
  · exact small_3352465_right_covered
#print axioms cover_3352465

def root_3352459 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352459_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3352459_left_fuel : Nat := 1
def small_3352459_left_count : Nat := 1
def small_3352459_left_encoded : String := "00000003"
theorem small_3352459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3352459_left_root small_3352459_left_fuel small_3352459_left_count small_3352459_left_encoded = true := by
  decide +kernel
theorem small_3352459_left_covered : CoveredBy scale carrier boxes small_3352459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3352459_left_root small_3352459_left_fuel small_3352459_left_count small_3352459_left_encoded small_3352459_left_checked

theorem cover_3352459 : CoveredBy scale carrier boxes root_3352459 := by
  apply coveredBy_split_literal root_3352459 small_3352459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3352465 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3352459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3352465
#print axioms cover_3352459

def root_3378696 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3378696_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3378696_left_fuel : Nat := 29
def small_3378696_left_count : Nat := 253
def small_3378696_left_encoded : String := "138670F604548A03138670F80280010413D7B0FB078000FC128A7CFD0000000307800108128A40FF0000000500000004128A7CFF00000004022A45810000000513E200F600000000022A45830000000500000008128A40FD0780010800000005128A7CFF0000000400000008000000030000000213D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF022A45810000000513E200F600000000022A45830000000513E200F80000000103C001040000000513A54CFB0000000208C000FC0000000511FBE8FD000000050000000300000004128A7CFF00000004022A458113E1C4F6022A4583000000050000000A0000000013E200F600000000022A458313E1C4F803C001040000000513A54CFB0000000208C000FC00000005000000070000000113E200F80000000103C0010413A510FB08C000FC11FC24FD000000030000000A11FBE8FD00000008000000030000000213A54CFB0000000208C000FC11FC24FD0000000308C0010811FBE8FF033F67C10000000500000007000000040000000711FBE8FD08C0010811FBE8FF033F67C10000000513BC30F600000000033F67C300000005000000080000000411FC24FF000000040000000800000003128A40FD07800108128A40FF0000000500000004128A7CFF00000004022A45810000000513E200F600000000022A4583000000050000000800000003000000011386ACF8000000010280010413D7B0FB078000FC128A7CFD00000003078001080000000800000008000000080000000213D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF022A458113E1C4F6067ECE8312EA58F803C001040000000813A54CFB0000000208C000FC0000000A0000000800000001000000080000000013E200F600000000067ECE8312EA58F803C0010413A510FB08C000FC11FC24FD00000003064001080000000800000008000000080000000213A54CFB0000000208C000FC11FC24FD000000030640010812FF70FF033F67C113BBF4F60569AC4300000005000000080000000013BC30F6000000000569AC431340D4F8046001041383DCFB0000000500000002138418FB00000002096000FC11AABCFD0000000305A00108000000050000000A11AA80FD000000050000000300000001000000080000000412FFACFF00000004033F67C10000000813BC30F6000000000569AC431340D4F804600104000000080000000A000000010000000811FBE8FD06400108000000080000000800000003000000010000000800000004128A7CFF00000004022A45810000000813E200F600000000067ECE8312EA58F803C001040000000813A54CFB0000000208C000FC0000000A000000080000000100000008128A40FD000000080000000300000000"
theorem small_3378696_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3378696_left_root small_3378696_left_fuel small_3378696_left_count small_3378696_left_encoded = true := by
  decide +kernel
theorem small_3378696_left_covered : CoveredBy scale carrier boxes small_3378696_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3378696_left_root small_3378696_left_fuel small_3378696_left_count small_3378696_left_encoded small_3378696_left_checked

theorem cover_3378696 : CoveredBy scale carrier boxes root_3378696 := by
  apply coveredBy_split_literal root_3378696 small_3378696_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1289.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3378696_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1289.covered
#print axioms cover_3378696

def root_3378690 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3378690_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3378690_left_fuel : Nat := 1
def small_3378690_left_count : Nat := 1
def small_3378690_left_encoded : String := "00000004"
theorem small_3378690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3378690_left_root small_3378690_left_fuel small_3378690_left_count small_3378690_left_encoded = true := by
  decide +kernel
theorem small_3378690_left_covered : CoveredBy scale carrier boxes small_3378690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3378690_left_root small_3378690_left_fuel small_3378690_left_count small_3378690_left_encoded small_3378690_left_checked

theorem cover_3378690 : CoveredBy scale carrier boxes root_3378690 := by
  apply coveredBy_split_literal root_3378690 small_3378690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3378696 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3378690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3378696
#print axioms cover_3378690

def root_3376652 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3376652 : CoveredBy scale carrier boxes root_3376652 := by
  apply coveredBy_split_literal root_3376652 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1288.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3378690 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1288.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3378690
#print axioms cover_3376652

def root_3376646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376646_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3376646_left_fuel : Nat := 1
def small_3376646_left_count : Nat := 1
def small_3376646_left_encoded : String := "00000003"
theorem small_3376646_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3376646_left_root small_3376646_left_fuel small_3376646_left_count small_3376646_left_encoded = true := by
  decide +kernel
theorem small_3376646_left_covered : CoveredBy scale carrier boxes small_3376646_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3376646_left_root small_3376646_left_fuel small_3376646_left_count small_3376646_left_encoded small_3376646_left_checked

theorem cover_3376646 : CoveredBy scale carrier boxes root_3376646 := by
  apply coveredBy_split_literal root_3376646 small_3376646_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.root_3376652 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3376646_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080.cover_3376652
#print axioms cover_3376646

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0080
