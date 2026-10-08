import TaoBundleAssembly0199
import TaoBundleAssembly0227
import TaoBundleAssembly0257
import TaoBundleAssembly0262
import TaoBundleAssembly0270
import TaoBundleAssembly0274
import TaoBundleAssembly0279
import TaoBundleAssembly0280
import TaoBundleChunkBatch0364
import TaoBundleChunkBatch0365
import TaoBundleChunkBatch0366
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281
def root_3875704 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875704_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875704_left_fuel : Nat := 13
def small_3875704_left_count : Nat := 39
def small_3875704_left_encoded : String := "1151E907000000030A0001081151E8FF08A9130512070104000000020000000612073D04050000F600000008135D450100000000000000080000000200000004115224FF0000000408A9130512070104000000020000000612073D0408A912FF12073D08050000F6135D8101050000F8135D810305000106000000070000000500000001000000050000000000000005000000040000000500000002"
theorem small_3875704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875704_left_root small_3875704_left_fuel small_3875704_left_count small_3875704_left_encoded = true := by
  decide +kernel
theorem small_3875704_left_covered : CoveredBy scale carrier boxes small_3875704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875704_left_root small_3875704_left_fuel small_3875704_left_count small_3875704_left_encoded small_3875704_left_checked

theorem cover_3875704 : CoveredBy scale carrier boxes root_3875704 := by
  apply coveredBy_split_literal root_3875704 small_3875704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1454.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3875704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1454.covered
#print axioms cover_3875704

def root_3875699 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875699_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875699_right_fuel : Nat := 1
def small_3875699_right_count : Nat := 1
def small_3875699_right_encoded : String := "00000002"
theorem small_3875699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875699_right_root small_3875699_right_fuel small_3875699_right_count small_3875699_right_encoded = true := by
  decide +kernel
theorem small_3875699_right_covered : CoveredBy scale carrier boxes small_3875699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875699_right_root small_3875699_right_fuel small_3875699_right_count small_3875699_right_encoded small_3875699_right_checked

theorem cover_3875699 : CoveredBy scale carrier boxes root_3875699 := by
  apply coveredBy_split_literal root_3875699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3875704 small_3875699_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3875704
  · exact small_3875699_right_covered
#print axioms cover_3875699

def root_3875415 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875415_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875415_left_fuel : Nat := 20
def small_3875415_left_count : Nat := 135
def small_3875415_left_encoded : String := "1151E905000000020A0001061151E9070000000300000005115225070A0001081151E8FF08A913071207010600000003050000F6135D8101050000F8135D8103050001040000000A135D810505000108135D44FF04548A0713867106000000030000000A0000000900000004135D80FF0000000404548A071386710600000003078000F60000000A128A410100000000000000071386AD06078000F60000000A128A410100000000000000070000000300000002000000010000000A00000000135D450100000000050000F8135D810305000104135D45050000000200000007135D810505000108135D44FF0000000900000004135D80FF0000000404548A0700000007000000050000000200000001135D45030000000105000104000000070000000912073D06050000F6135D8101050000F8135D81030500010400000009135D810505000108000000090000000900000002000000010000000900000000000000090000000300000004115224FF0000000408A91307120701060000000308A912FF12073D08050000F6135D8101050000F8135D81030500010400000007135D810504548A07000000070000000500000002000000010000000700000000135D45010000000000000005000000040000000512073D0608A912FF12073D08050000F6135D8101050000F8135D81030500010400000007000000050000000100000005000000000000000500000004000000050000000300000003"
theorem small_3875415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875415_left_root small_3875415_left_fuel small_3875415_left_count small_3875415_left_encoded = true := by
  decide +kernel
theorem small_3875415_left_covered : CoveredBy scale carrier boxes small_3875415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875415_left_root small_3875415_left_fuel small_3875415_left_count small_3875415_left_encoded small_3875415_left_checked

theorem cover_3875415 : CoveredBy scale carrier boxes root_3875415 := by
  apply coveredBy_split_literal root_3875415 small_3875415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3875699 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3875415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3875699
#print axioms cover_3875415

def root_3875409 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875409_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3875409_left_fuel : Nat := 1
def small_3875409_left_count : Nat := 1
def small_3875409_left_encoded : String := "00000001"
theorem small_3875409_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3875409_left_root small_3875409_left_fuel small_3875409_left_count small_3875409_left_encoded = true := by
  decide +kernel
theorem small_3875409_left_covered : CoveredBy scale carrier boxes small_3875409_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3875409_left_root small_3875409_left_fuel small_3875409_left_count small_3875409_left_encoded small_3875409_left_checked

theorem cover_3875409 : CoveredBy scale carrier boxes root_3875409 := by
  apply coveredBy_split_literal root_3875409 small_3875409_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3875415 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3875409_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3875415
#print axioms cover_3875409

def root_3860549 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3860549 : CoveredBy scale carrier boxes root_3860549 := by
  apply coveredBy_split_literal root_3860549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3860550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3875409 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3860550
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3875409
#print axioms cover_3860549

def root_3860543 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860543_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860543_left_fuel : Nat := 1
def small_3860543_left_count : Nat := 1
def small_3860543_left_encoded : String := "00000000"
theorem small_3860543_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860543_left_root small_3860543_left_fuel small_3860543_left_count small_3860543_left_encoded = true := by
  decide +kernel
theorem small_3860543_left_covered : CoveredBy scale carrier boxes small_3860543_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860543_left_root small_3860543_left_fuel small_3860543_left_count small_3860543_left_encoded small_3860543_left_checked

theorem cover_3860543 : CoveredBy scale carrier boxes root_3860543 := by
  apply coveredBy_split_literal root_3860543 small_3860543_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3860549 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3860543_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3860549
#print axioms cover_3860543

def root_3822427 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822427 : CoveredBy scale carrier boxes root_3822427 := by
  apply coveredBy_split_literal root_3822427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3822428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3860543 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3822428
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3860543
#print axioms cover_3822427

def root_3822426 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822426 : CoveredBy scale carrier boxes root_3822426 := by
  apply coveredBy_split_literal root_3822426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3822427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1455.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3822427
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1455.covered
#print axioms cover_3822426

def root_3779326 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3779326 : CoveredBy scale carrier boxes root_3779326 := by
  apply coveredBy_split_literal root_3779326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.root_3779327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3822426 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0274.cover_3779327
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3822426
#print axioms cover_3779326

def root_3704604 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704604 : CoveredBy scale carrier boxes root_3704604 := by
  apply coveredBy_split_literal root_3704604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0270.root_3704605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3779326 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0270.cover_3704605
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3779326
#print axioms cover_3704604

def root_3642262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642262 : CoveredBy scale carrier boxes root_3642262 := by
  apply coveredBy_split_literal root_3642262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3642263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3704604 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3642263
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3704604
#print axioms cover_3642262

def root_3334846 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334846 : CoveredBy scale carrier boxes root_3334846 := by
  apply coveredBy_split_literal root_3334846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3334847 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3642262 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3334847
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3642262
#print axioms cover_3334846

def root_2966716 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2966716 : CoveredBy scale carrier boxes root_2966716 := by
  apply coveredBy_split_literal root_2966716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.root_2966717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3334846 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0227.cover_2966717
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3334846
#print axioms cover_2966716

def root_2513322 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513322 : CoveredBy scale carrier boxes root_2513322 := by
  apply coveredBy_split_literal root_2513322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0199.root_2513323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_2966716 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0199.cover_2513323
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_2966716
#print axioms cover_2513322

def root_3880872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880872 : CoveredBy scale carrier boxes root_3880872 := by
  apply coveredBy_split_literal root_3880872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1456.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1457.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1456.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1457.covered
#print axioms cover_3880872

def root_3890464 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890464_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890464_left_fuel : Nat := 14
def small_3890464_left_count : Nat := 77
def small_3890464_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA00000002000000050000000500000004115224FF0000000400000005000000031151E90700000003000000051151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120700FC08A912FF12073D08050000F600000005135D4501000000000000000500000004000000050000000312073CFC0000000308A912FF12073D08050000F600000005135D450100000000000000050000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D08050000F600000005135D45010000000000000008000000041207010800000004050000F600000005135D450100000000000000090000000200000001"
theorem small_3890464_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3890464_left_root small_3890464_left_fuel small_3890464_left_count small_3890464_left_encoded = true := by
  decide +kernel
theorem small_3890464_left_covered : CoveredBy scale carrier boxes small_3890464_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3890464_left_root small_3890464_left_fuel small_3890464_left_count small_3890464_left_encoded small_3890464_left_checked

theorem cover_3890464 : CoveredBy scale carrier boxes root_3890464 := by
  apply coveredBy_split_literal root_3890464 small_3890464_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1460.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3890464_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1460.covered
#print axioms cover_3890464

def root_3890458 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890458_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3890458_left_fuel : Nat := 1
def small_3890458_left_count : Nat := 1
def small_3890458_left_encoded : String := "00000000"
theorem small_3890458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3890458_left_root small_3890458_left_fuel small_3890458_left_count small_3890458_left_encoded = true := by
  decide +kernel
theorem small_3890458_left_covered : CoveredBy scale carrier boxes small_3890458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3890458_left_root small_3890458_left_fuel small_3890458_left_count small_3890458_left_encoded small_3890458_left_checked

theorem cover_3890458 : CoveredBy scale carrier boxes root_3890458 := by
  apply coveredBy_split_literal root_3890458 small_3890458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3890464 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3890458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3890464
#print axioms cover_3890458

def root_3888768 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3888768 : CoveredBy scale carrier boxes root_3888768 := by
  apply coveredBy_split_literal root_3888768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1459.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3890458 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1459.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3890458
#print axioms cover_3888768

def root_3888767 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3888767 : CoveredBy scale carrier boxes root_3888767 := by
  apply coveredBy_split_literal root_3888767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3888768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1461.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3888768
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1461.covered
#print axioms cover_3888767

def root_3885777 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3885777 : CoveredBy scale carrier boxes root_3885777 := by
  apply coveredBy_split_literal root_3885777 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1458.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3888767 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1458.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3888767
#print axioms cover_3885777

def root_3880871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880871 : CoveredBy scale carrier boxes root_3880871 := by
  apply coveredBy_split_literal root_3880871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3880872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3885777 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3880872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3885777
#print axioms cover_3880871

def root_3899763 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3899763 : CoveredBy scale carrier boxes root_3899763 := by
  apply coveredBy_split_literal root_3899763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1463.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1464.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1463.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1464.covered
#print axioms cover_3899763

def root_3899757 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899757_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899757_left_fuel : Nat := 1
def small_3899757_left_count : Nat := 1
def small_3899757_left_encoded : String := "00000001"
theorem small_3899757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899757_left_root small_3899757_left_fuel small_3899757_left_count small_3899757_left_encoded = true := by
  decide +kernel
theorem small_3899757_left_covered : CoveredBy scale carrier boxes small_3899757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899757_left_root small_3899757_left_fuel small_3899757_left_count small_3899757_left_encoded small_3899757_left_checked

theorem cover_3899757 : CoveredBy scale carrier boxes root_3899757 := by
  apply coveredBy_split_literal root_3899757 small_3899757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899763 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_3899757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899763
#print axioms cover_3899757

def root_3899297 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899297_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899297_left_fuel : Nat := 21
def small_3899297_left_count : Nat := 219
def small_3899297_left_encoded : String := "13D7B0F9067ECE8112EA58F6022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000A108010FF014001020000000A13F614F9000000010569AC411340D4F6033F67BD0000000513BBF506000000030000000A00000000134110F600000000033F67BD0000000A13BBF506000000030BF3E57A000000060000000A000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF00000004014001020000000A13F614F9000000010569AC4100000009134110F6000000000115233D0000000A00000005108010FF0140010213F5D8F90569AC411340D4F60115233D0000000A0000000700000000134110F6000000000115233D00000006000000070000000113F614F9000000010569AC411340D4F60115233D13F895060BF3E57A100928FB00000002000000091008ECFB0000000A000000020000000313F85906000000030BF3E57A000000091008ECFB000000090000000200000000134110F6000000000115233D13F895060BF3E57A100928FB000000020AA6A27E10EDACFF0000000401E001020000000600000009000000061008ECFB0AA6A27E0000000A00000006000000020000000313F85906000000030BF3E57A100928FB000000020AA6A27E00000009000000061008ECFB0AA6A27E10EDACFF0000000401E001020000000600000009000000060000000200000004108010FB0B4D43FE10804CFF000000040000000A108010FF014001020000000A13F614F9000000010569AC410000000A134110F6000000000000000A00000004000000020000000012EA94F600000000022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000A108010FF014001020000000613F614F9000000010793F0C1128220F6000000060000000000000006000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000400000005108010FF014001020000000613F614F9000000010793F0C1128220F60115233D0000000600000005000000000000000500000004108010FB0B4D43FE10804CFF000000040000000A108010FF014001020000000613F614F9000000010793F0C1128220F60115233D0000000A13F85906000000030AA6A27A00000006000000080000000000000006000000040000000200000001"
theorem small_3899297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899297_left_root small_3899297_left_fuel small_3899297_left_count small_3899297_left_encoded = true := by
  decide +kernel
theorem small_3899297_left_covered : CoveredBy scale carrier boxes small_3899297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899297_left_root small_3899297_left_fuel small_3899297_left_count small_3899297_left_encoded small_3899297_left_checked

theorem cover_3899297 : CoveredBy scale carrier boxes root_3899297 := by
  apply coveredBy_split_literal root_3899297 small_3899297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899757 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_3899297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899757
#print axioms cover_3899297

def root_3899292 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899292_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899292_right_fuel : Nat := 1
def small_3899292_right_count : Nat := 1
def small_3899292_right_encoded : String := "00000004"
theorem small_3899292_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899292_right_root small_3899292_right_fuel small_3899292_right_count small_3899292_right_encoded = true := by
  decide +kernel
theorem small_3899292_right_covered : CoveredBy scale carrier boxes small_3899292_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899292_right_root small_3899292_right_fuel small_3899292_right_count small_3899292_right_encoded small_3899292_right_checked

theorem cover_3899292 : CoveredBy scale carrier boxes root_3899292 := by
  apply coveredBy_split_literal root_3899292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899297 small_3899292_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899297
  · exact small_3899292_right_covered
#print axioms cover_3899292

def root_3899046 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899046_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899046_left_fuel : Nat := 17
def small_3899046_left_count : Nat := 117
def small_3899046_left_encoded : String := "0F878CFF000000040280010213D7B0F9067ECE8112EA58F6022A457D0000000A13E1C506000000030B4D43FA10804CFB00000002000000090000000A0000000012EA94F600000000022A457D0000000A13E1C506000000030B4D43FA10804CFB0000000200000005000000050000000113D7ECF900000001067ECE8112EA58F6022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000070E5FD8FF03C001020000000A13A54CF9000000010569AC410000000800000007000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF03C001020000000A13A54CF9000000010569AC4100000009134110F6000000000115233D000000070000000500000004000000020000000012EA94F600000000022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010213A510F90793F0C10000000A000000050000000113A54CF9000000010793F0C1000000070000000500000004108010FB0DE7C9FE000000070E5FD8FF03C001020000000A0000000700000004000000020000000300000005"
theorem small_3899046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899046_left_root small_3899046_left_fuel small_3899046_left_count small_3899046_left_encoded = true := by
  decide +kernel
theorem small_3899046_left_covered : CoveredBy scale carrier boxes small_3899046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899046_left_root small_3899046_left_fuel small_3899046_left_count small_3899046_left_encoded small_3899046_left_checked

theorem cover_3899046 : CoveredBy scale carrier boxes root_3899046 := by
  apply coveredBy_split_literal root_3899046 small_3899046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899292 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3899046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899292
#print axioms cover_3899046

def root_3899041 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899041_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3899041_right_fuel : Nat := 1
def small_3899041_right_count : Nat := 1
def small_3899041_right_encoded : String := "00000002"
theorem small_3899041_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3899041_right_root small_3899041_right_fuel small_3899041_right_count small_3899041_right_encoded = true := by
  decide +kernel
theorem small_3899041_right_covered : CoveredBy scale carrier boxes small_3899041_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3899041_right_root small_3899041_right_fuel small_3899041_right_count small_3899041_right_encoded small_3899041_right_checked

theorem cover_3899041 : CoveredBy scale carrier boxes root_3899041 := by
  apply coveredBy_split_literal root_3899041 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899046 small_3899041_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899046
  · exact small_3899041_right_covered
#print axioms cover_3899041

def root_3898315 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898315_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898315_left_fuel : Nat := 23
def small_3898315_left_count : Nat := 345
def small_3898315_left_encoded : String := "0F878CFB000000020C9A86FE0F878CFF000000040280010213D7B0F9067ECE8112EA58F6000000090000000012EA94F600000000022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF00000004000000050E5FD8FF014001020000000A13F614F9000000010793F0C10000000900000005000000040000000200000003000000050000000113D7ECF900000001067ECE8112EA58F6022A457D13E201060DE7C9FA000000080E5FD8FB000000090000000200000003000000090000000012EA94F600000000022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF0000000400000005000000050000000200000003000000050F8750FF0280010213D7B0F9067ECE8112EA58F6022A457D13E201060DE7C9FA0E6014FB000000020B4D43FE00000009000000080E5FD8FB0B4D43FE10804CFF000000040140010213F5D8F9000000090000000113F614F9000000010569AC4100000008134110F600000000033F67BD0000000800000009108010FF0140010213F5D8F90569AC411340D4F6033F67BD000000080000000900000000000000060000000113F614F9000000010569AC4100000008134110F600000000033F67BD0000000813BBF506000000030D41287A000000060EFA10FB000000060000000200000004000000020000000313E1C506000000030DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE00000009108010FF0140010213F5D8F90569AC4100000007134110F600000000000000070000000113F614F9000000010569AC4100000009134110F6000000000115233D13F895060D41287A000000060EFA10FB0AA6A27E000000090000000600000002000000030000000500000004000000020000000012EA94F600000000022A457D13E201060DE7C9FA0E6014FB000000020B4D43FE10804CFF000000040140010213F5D8F90793F0C100000009000000050000000113F614F9000000010793F0C10000000800000005108010FF00000006000000040E5FD8FB0B4D43FE10804CFF000000040140010213F5D8F90793F0C10000000A000000060000000113F614F9000000010793F0C1128220F6033F67BD13BC31060D41287A000000080000000A00000003000000050000000000000005108010FF0000000600000004000000020000000313E1C506000000030DE7C9FA0E6014FB0000000200000005000000050000000113D7ECF900000001067ECE8112EA58F6022A457D13E201060DE7C9FA000000080E5FD8FB0B4D43FE10804CFF000000040000000800000008000000020000000313E1C506000000030DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE10804CFF0000000400000009108010FF03C0010213A510F90569AC4100000009134110F6000000000115233D13F895060D41287A000000080EFA10FB0AA6A27E00000009000000080000000200000003000000050000000113A54CF9000000010569AC4100000008134110F6000000000115233D000000080000000500000004000000020000000012EA94F600000000022A457D13E201060DE7C9FA0E6014FB000000020B4D43FE10804CFF0000000400000005000000080E5FD8FB0B4D43FE10804CFF0000000403C0010213A510F90793F0C1128220F6033F67BD000000080000000500000000000000050000000113A54CF9000000010793F0C10000000800000005108010FF03C0010213A510F90793F0C1128220F6033F67BD0000000813BBF506000000030D41287A000000060EFA10FB000000060000000200000000000000060000000113A54CF9000000010793F0C10000000812825CF600000000033F67BD00000008000000050000000400000002000000030000000500000004"
theorem small_3898315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3898315_left_root small_3898315_left_fuel small_3898315_left_count small_3898315_left_encoded = true := by
  decide +kernel
theorem small_3898315_left_covered : CoveredBy scale carrier boxes small_3898315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3898315_left_root small_3898315_left_fuel small_3898315_left_count small_3898315_left_encoded small_3898315_left_checked

theorem cover_3898315 : CoveredBy scale carrier boxes root_3898315 := by
  apply coveredBy_split_literal root_3898315 small_3898315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3899041 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3898315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3899041
#print axioms cover_3898315

def root_3898309 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898309_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898309_left_fuel : Nat := 1
def small_3898309_left_count : Nat := 1
def small_3898309_left_encoded : String := "00000004"
theorem small_3898309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3898309_left_root small_3898309_left_fuel small_3898309_left_count small_3898309_left_encoded = true := by
  decide +kernel
theorem small_3898309_left_covered : CoveredBy scale carrier boxes small_3898309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3898309_left_root small_3898309_left_fuel small_3898309_left_count small_3898309_left_encoded small_3898309_left_checked

theorem cover_3898309 : CoveredBy scale carrier boxes root_3898309 := by
  apply coveredBy_split_literal root_3898309 small_3898309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3898315 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3898309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3898315
#print axioms cover_3898309

def root_3898308 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898308_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898308_right_fuel : Nat := 9
def small_3898308_right_count : Nat := 21
def small_3898308_right_encoded : String := "0F34D0FE0C9A86FA0F878CFB000000020280010200000009000000090F8750FB028001020000000A13D7ECF900000001067ECE8112EA58F6022A457D000000070000000500000000000000050000000200000004"
theorem small_3898308_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3898308_right_root small_3898308_right_fuel small_3898308_right_count small_3898308_right_encoded = true := by
  decide +kernel
theorem small_3898308_right_covered : CoveredBy scale carrier boxes small_3898308_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3898308_right_root small_3898308_right_fuel small_3898308_right_count small_3898308_right_encoded small_3898308_right_checked

theorem cover_3898308 : CoveredBy scale carrier boxes root_3898308 := by
  apply coveredBy_split_literal root_3898308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3898309 small_3898308_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3898309
  · exact small_3898308_right_covered
#print axioms cover_3898308

def root_3898302 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898302_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3898302_left_fuel : Nat := 1
def small_3898302_left_count : Nat := 1
def small_3898302_left_encoded : String := "00000003"
theorem small_3898302_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3898302_left_root small_3898302_left_fuel small_3898302_left_count small_3898302_left_encoded = true := by
  decide +kernel
theorem small_3898302_left_covered : CoveredBy scale carrier boxes small_3898302_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3898302_left_root small_3898302_left_fuel small_3898302_left_count small_3898302_left_encoded small_3898302_left_checked

theorem cover_3898302 : CoveredBy scale carrier boxes root_3898302 := by
  apply coveredBy_split_literal root_3898302 small_3898302_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3898308 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3898302_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3898308
#print axioms cover_3898302

def root_3897692 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897692_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897692_left_fuel : Nat := 23
def small_3897692_left_count : Nat := 293
def small_3897692_left_encoded : String := "1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010213D7B0F9067ECE8112EA58F6067ECE7D0000000812EA5906000000030DE7C9FA000000080000000A0000000012EA94F600000000067ECE7D12EA95060DE7C9FA000000080000000A0000000312EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0E6014FF00000004000000090E5FD8FF0140010213F5D8F90793F0C10000000812825CF6000000000569AC3D00000006000000050000000100000008000000040E5FD8FB0000000A000000020000000113D7ECF900000001067ECE810000000812EA94F600000000067ECE7D0000000812EA5906000000030DE7C9FA000000080E5FD8FB0DE7C9FE000000070E5FD8FF0000000800000004000000020F8750FF0280010213D7B0F9067ECE8112EA58F6067ECE7D0000000812EA5906000000030DE7C9FA000000080E5FD8FB0B4D43FE10804CFF000000040000000800000008000000020000000012EA94F600000000067ECE7D12EA95060DE7C9FA000000080E5FD8FB0000000A000000020000000312EA5906000000030DE7C9FA0E6014FB000000020B4D43FE10804CFF00000004014001020000000600000008000000060E5FD8FB0B4D43FE10804CFF00000004014001020000000613F614F9000000010793F0C1000000080000000600000006000000020000000113D7ECF900000001067ECE810000000812EA94F600000000067ECE7D0000000812EA5906000000030DE7C9FA000000080E5FD8FB0B4D43FE10804CFF00000004000000080000000800000002000000040F8750FB0C9A86FE0F878CFF00000004028001020000000A13D7ECF900000001067ECE8112EA58F6067ECE7D000000070000000A0000000012EA94F600000000067ECE7D0000000712EA5906000000030B4D43FA00000007000000070F8750FF0280010213D7B0F9067ECE810000000A12EA94F6000000000000000A0000000113D7ECF900000001067ECE8112EA58F6067ECE7D0000000512EA5906000000030B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000800000008108010FB00000005000000020000000012EA94F600000000067ECE7D12EA95060B4D43FA10804CFB000000020B4D43FE00000007000000080000000A0000000312EA5906000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000403C0010213A510F90000000A0000000100000007108010FF03C0010213A510F90793F0C100000008000000060000000113A54CF9000000010793F0C10000000812825CF6000000000000000800000004108010FB0B4D43FE10804CFF0000000400000007108010FF03C001020000000A13A54CF9000000010793F0C10000000500000007000000040000000200000004000000020F34D0FE0C9A86FA0F878CFB000000020280010213D7B0F9067ECE810000000912EA94F600000000067ECE7D0000000712EA5906000000030AD3577F00000009000000050000000113D7ECF900000001067ECE8112EA58F6067ECE7D000000070000000900000000000000070F8750FB028001020000000A00000007000000020000000400000003"
theorem small_3897692_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897692_left_root small_3897692_left_fuel small_3897692_left_count small_3897692_left_encoded = true := by
  decide +kernel
theorem small_3897692_left_covered : CoveredBy scale carrier boxes small_3897692_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897692_left_root small_3897692_left_fuel small_3897692_left_count small_3897692_left_encoded small_3897692_left_checked

theorem cover_3897692 : CoveredBy scale carrier boxes root_3897692 := by
  apply coveredBy_split_literal root_3897692 small_3897692_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3898302 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3897692_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3898302
#print axioms cover_3897692

def root_3897686 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897686_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897686_left_fuel : Nat := 1
def small_3897686_left_count : Nat := 1
def small_3897686_left_encoded : String := "00000002"
theorem small_3897686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897686_left_root small_3897686_left_fuel small_3897686_left_count small_3897686_left_encoded = true := by
  decide +kernel
theorem small_3897686_left_covered : CoveredBy scale carrier boxes small_3897686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897686_left_root small_3897686_left_fuel small_3897686_left_count small_3897686_left_encoded small_3897686_left_checked

theorem cover_3897686 : CoveredBy scale carrier boxes root_3897686 := by
  apply coveredBy_split_literal root_3897686 small_3897686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3897692 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3897686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3897692
#print axioms cover_3897686

def root_3897685 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897685_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897685_right_fuel : Nat := 16
def small_3897685_right_count : Nat := 67
def small_3897685_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010213D7B0F9067ECE810000000812EA94F6000000000AD3577B10D13CFA00000002067ECE7D0000000812EA590600000003000000080000000800000001000000080F8750FF00000008000000040F34D0FE028001020000000900000008000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010200000009000000090F8750FF0280010213D7B0F9067ECE810000000912EA94F6000000000AD3577B10D13CFA0000000200000005000000050000000113D7ECF900000001067ECE810000000800000005000000040000000500000002"
theorem small_3897685_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897685_right_root small_3897685_right_fuel small_3897685_right_count small_3897685_right_encoded = true := by
  decide +kernel
theorem small_3897685_right_covered : CoveredBy scale carrier boxes small_3897685_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897685_right_root small_3897685_right_fuel small_3897685_right_count small_3897685_right_encoded small_3897685_right_checked

theorem cover_3897685 : CoveredBy scale carrier boxes root_3897685 := by
  apply coveredBy_split_literal root_3897685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3897686 small_3897685_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3897686
  · exact small_3897685_right_covered
#print axioms cover_3897685

def root_3897679 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897679_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897679_left_fuel : Nat := 1
def small_3897679_left_count : Nat := 1
def small_3897679_left_encoded : String := "00000000"
theorem small_3897679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897679_left_root small_3897679_left_fuel small_3897679_left_count small_3897679_left_encoded = true := by
  decide +kernel
theorem small_3897679_left_covered : CoveredBy scale carrier boxes small_3897679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897679_left_root small_3897679_left_fuel small_3897679_left_count small_3897679_left_encoded small_3897679_left_checked

theorem cover_3897679 : CoveredBy scale carrier boxes root_3897679 := by
  apply coveredBy_split_literal root_3897679 small_3897679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3897685 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3897679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3897685
#print axioms cover_3897679

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281
