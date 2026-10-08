import TaoBundleAssembly0579
import TaoBundleChunkBatch0787
import TaoBundleChunkBatch0788
import TaoBundleChunkBatch0789
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580
def root_8419590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8419590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8419590_left_fuel : Nat := 16
def small_8419590_left_count : Nat := 79
def small_8419590_left_encoded : String := "1151E9090000000408A91301120701000000000008A912F90000000A120700F80000000A0000000112073D0008A912F912073CF80000000108A9130512070104000000020000000A12073D04050000FC135D80FD0000000305000108135D4509000000040CFD9C01000000080F350D000CFD9BF90000000A0000000800000000135D81090CFD9C01000000080F350D000CFD9BF90F350CF80000000100000008000000080000000000000004135D44FD05000108135D4509000000040CFD9C01000000080F350D000000000800000000000000080000000300000002120700F808A9130512070104000000020000000A12073D04050000FC135D80FD0000000305000108135D4509000000040000000800000008135D44FD05000108135D450900000004000000080000000800000003000000020000000100000000"
theorem small_8419590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8419590_left_root small_8419590_left_fuel small_8419590_left_count small_8419590_left_encoded = true := by
  decide +kernel
theorem small_8419590_left_covered : CoveredBy scale carrier boxes small_8419590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8419590_left_root small_8419590_left_fuel small_8419590_left_count small_8419590_left_encoded small_8419590_left_checked

theorem cover_8419590 : CoveredBy scale carrier boxes root_8419590 := by
  apply coveredBy_split_literal root_8419590 small_8419590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0579.root_8419762 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8419590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0579.cover_8419762
#print axioms cover_8419590

def root_8419585 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8419585_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8419585_right_fuel : Nat := 1
def small_8419585_right_count : Nat := 1
def small_8419585_right_encoded : String := "00000003"
theorem small_8419585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8419585_right_root small_8419585_right_fuel small_8419585_right_count small_8419585_right_encoded = true := by
  decide +kernel
theorem small_8419585_right_covered : CoveredBy scale carrier boxes small_8419585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8419585_right_root small_8419585_right_fuel small_8419585_right_count small_8419585_right_encoded small_8419585_right_checked

theorem cover_8419585 : CoveredBy scale carrier boxes root_8419585 := by
  apply coveredBy_split_literal root_8419585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8419590 small_8419585_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8419590
  · exact small_8419585_right_covered
#print axioms cover_8419585

def root_8409061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8409061 : CoveredBy scale carrier boxes root_8409061 := by
  apply coveredBy_split_literal root_8409061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0579.root_8409062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8419585 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0579.cover_8409062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8419585
#print axioms cover_8409061

def root_8409056 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8409056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8409056_right_fuel : Nat := 1
def small_8409056_right_count : Nat := 1
def small_8409056_right_encoded : String := "00000002"
theorem small_8409056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8409056_right_root small_8409056_right_fuel small_8409056_right_count small_8409056_right_encoded = true := by
  decide +kernel
theorem small_8409056_right_covered : CoveredBy scale carrier boxes small_8409056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8409056_right_root small_8409056_right_fuel small_8409056_right_count small_8409056_right_encoded small_8409056_right_checked

theorem cover_8409056 : CoveredBy scale carrier boxes root_8409056 := by
  apply coveredBy_split_literal root_8409056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8409061 small_8409056_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8409061
  · exact small_8409056_right_covered
#print axioms cover_8409056

def root_8406380 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8406380 : CoveredBy scale carrier boxes root_8406380 := by
  apply coveredBy_split_literal root_8406380 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3146.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8409056 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3146.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8409056
#print axioms cover_8406380

def root_8406374 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8406374_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8406374_left_fuel : Nat := 1
def small_8406374_left_count : Nat := 1
def small_8406374_left_encoded : String := "00000001"
theorem small_8406374_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8406374_left_root small_8406374_left_fuel small_8406374_left_count small_8406374_left_encoded = true := by
  decide +kernel
theorem small_8406374_left_covered : CoveredBy scale carrier boxes small_8406374_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8406374_left_root small_8406374_left_fuel small_8406374_left_count small_8406374_left_encoded small_8406374_left_checked

theorem cover_8406374 : CoveredBy scale carrier boxes root_8406374 := by
  apply coveredBy_split_literal root_8406374 small_8406374_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8406380 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8406374_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8406380
#print axioms cover_8406374

def root_8427710 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427710_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427710_right_fuel : Nat := 16
def small_8427710_right_count : Nat := 127
def small_8427710_right_encoded : String := "12073D08050000F8135D80F9000000010CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFD0000000A000000060F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87040F87510500000002000000070F878D050C9A86FC0000000600000006000000020F350D080C9A87040F875105000000020000000A00000006000000040F34D0FC0CFD9C090F34D10800000004000000060000000600000003000000020F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC0000000300000006000000060F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F8751050000000200000007000000060F878D010C9A87040F87510500000002000000070F878D050000000600000002000000000F350D080C9A8700000000060F878D010000000600000000000000040F34D0FC0CFD9C090F34D108000000040000000600000006000000030000000200000000135D44F90CFD9C010F34D100000000000CFD9C05000000060F350D040CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000060000000600000006000000020F350D000CFD9C05000000060F350D040CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000006000000060000000600000002000000000000000100000004"
theorem small_8427710_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427710_right_root small_8427710_right_fuel small_8427710_right_count small_8427710_right_encoded = true := by
  decide +kernel
theorem small_8427710_right_covered : CoveredBy scale carrier boxes small_8427710_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427710_right_root small_8427710_right_fuel small_8427710_right_count small_8427710_right_encoded small_8427710_right_checked

theorem cover_8427710 : CoveredBy scale carrier boxes root_8427710 := by
  apply coveredBy_split_literal root_8427710 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3152.root small_8427710_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3152.covered
  · exact small_8427710_right_covered
#print axioms cover_8427710

def root_8427704 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427704_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427704_left_fuel : Nat := 1
def small_8427704_left_count : Nat := 1
def small_8427704_left_encoded : String := "00000003"
theorem small_8427704_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427704_left_root small_8427704_left_fuel small_8427704_left_count small_8427704_left_encoded = true := by
  decide +kernel
theorem small_8427704_left_covered : CoveredBy scale carrier boxes small_8427704_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427704_left_root small_8427704_left_fuel small_8427704_left_count small_8427704_left_encoded small_8427704_left_checked

theorem cover_8427704 : CoveredBy scale carrier boxes root_8427704 := by
  apply coveredBy_split_literal root_8427704 small_8427704_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427710 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8427704_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427710
#print axioms cover_8427704

def root_8427703 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427703_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427703_right_fuel : Nat := 10
def small_8427703_right_count : Nat := 27
def small_8427703_right_encoded : String := "120700FC08A913091207010800000004050000F8135D80F9000000010CFD9C010F34D10000000000000000070F350D000CFD9C050F34D10400000002000000060000000700000000135D44F9000000060000000112073D08050000F800000006000000060000000400000003"
theorem small_8427703_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427703_right_root small_8427703_right_fuel small_8427703_right_count small_8427703_right_encoded = true := by
  decide +kernel
theorem small_8427703_right_covered : CoveredBy scale carrier boxes small_8427703_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427703_right_root small_8427703_right_fuel small_8427703_right_count small_8427703_right_encoded small_8427703_right_checked

theorem cover_8427703 : CoveredBy scale carrier boxes root_8427703 := by
  apply coveredBy_split_literal root_8427703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427704 small_8427703_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427704
  · exact small_8427703_right_covered
#print axioms cover_8427703

def root_8427698 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427698_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427698_right_fuel : Nat := 1
def small_8427698_right_count : Nat := 1
def small_8427698_right_encoded : String := "00000002"
theorem small_8427698_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427698_right_root small_8427698_right_fuel small_8427698_right_count small_8427698_right_encoded = true := by
  decide +kernel
theorem small_8427698_right_covered : CoveredBy scale carrier boxes small_8427698_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427698_right_root small_8427698_right_fuel small_8427698_right_count small_8427698_right_encoded small_8427698_right_checked

theorem cover_8427698 : CoveredBy scale carrier boxes root_8427698 := by
  apply coveredBy_split_literal root_8427698 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427703 small_8427698_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427703
  · exact small_8427698_right_covered
#print axioms cover_8427698

def root_8427530 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427530_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427530_left_fuel : Nat := 19
def small_8427530_left_count : Nat := 79
def small_8427530_left_encoded : String := "120701040000000208A912FD12073CFC0000000308A913091207010800000004050000F8135D80F9000000010CFD9C010F34D1000000000004548A051386710400000002000000061386AD040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC00000006000000050000000600000006000000020F350D0004548A0513867104000000020CFD9BFD0F350CFC0000000300000006000000061386AD040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A8700000000060F878D010C9A86FC00000006000000060000000000000006000000060000000200000000135D44F90CFD9C01000000060F350D0000000006000000000000000112073D08050000F8135D80F9000000010CFD9C01000000060F350D0000000006000000000000000600000004120700FC0000000600000003"
theorem small_8427530_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427530_left_root small_8427530_left_fuel small_8427530_left_count small_8427530_left_encoded = true := by
  decide +kernel
theorem small_8427530_left_covered : CoveredBy scale carrier boxes small_8427530_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427530_left_root small_8427530_left_fuel small_8427530_left_count small_8427530_left_encoded small_8427530_left_checked

theorem cover_8427530 : CoveredBy scale carrier boxes root_8427530 := by
  apply coveredBy_split_literal root_8427530 small_8427530_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427698 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8427530_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427698
#print axioms cover_8427530

def root_8427525 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427525_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8427525_right_fuel : Nat := 1
def small_8427525_right_count : Nat := 1
def small_8427525_right_encoded : String := "00000000"
theorem small_8427525_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8427525_right_root small_8427525_right_fuel small_8427525_right_count small_8427525_right_encoded = true := by
  decide +kernel
theorem small_8427525_right_covered : CoveredBy scale carrier boxes small_8427525_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8427525_right_root small_8427525_right_fuel small_8427525_right_count small_8427525_right_encoded small_8427525_right_checked

theorem cover_8427525 : CoveredBy scale carrier boxes root_8427525 := by
  apply coveredBy_split_literal root_8427525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427530 small_8427525_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427530
  · exact small_8427525_right_covered
#print axioms cover_8427525

def root_8426865 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426865_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426865_left_fuel : Nat := 27
def small_8426865_left_count : Nat := 311
def small_8426865_left_encoded : String := "120701000000000008A91305120701040000000208A912FD12073CFC0000000308A913091207010800000004050000F8135D80F90000000104548A010000000A1386AD0004548A05000000061386AD040CFD9BFD0000000A0000000600000002000000000000000500000006120700FC08A9130900000006000000060000000312073D0408A912FD12073CFC0000000308A913091207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9C050F34D104000000020CFD9BFD0000000A000000090F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F875105000000020C9A86FC000000070F8750FD078000F8128A7CF9000000010000000900000005000000030F878D0500000009000000021386AD080C9A87040F875105000000020C9A86FC000000070F8750FD078000F80000000800000008000000030000000A000000040F34D0FC0000000700000003000000021386AD000CFD9C050F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD0000000300000009000000050000000A0F34D0FC00000006000000030F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F875105000000020C9A86FC000000070F8750FD078000F8128A7CF900000001067ECE8112EA590000000000000000070000000700000009000000030F878D050C9A86FC0F878CFD00000003000000090F8750FD078000F8128A7CF900000001067ECE8112EA5900000000000000000912EA9500022A4589000000090000000A000000000000000500000003000000021386AD080C9A87040F87510500000002000000070F878D050C9A86FC0000000A0F8750FD078000F80000000A0000000A0000000300000002000000040F34D0FC00000007000000030000000200000000135D44F904548A0113867100000000000CFD9C05000000090F350D040CFD9BFD0F350CFC0000000304548A09000000091386AD080C9A870400000007000000050000000400000009000000021386AD000CFD9C050F34D10400000002000000090F350D040CFD9BFD0F350CFC0000000304548A09000000091386AD080C9A87040000000700000006000000040000000900000002000000000000000112073D08050000F8135D80F90000000104548A0113867100000000000000000A1386AD000CFD9C050F34D104000000020000000A0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87040F87510500000002000000070000000A0000000A0F34D0FC0000000A000000030000000200000000135D44F904548A0113867100000000000CFD9C050F34D10400000002000000060F350D040CFD9BFD0F350CFC000000030CFD9C0900000006000000060F34D0FC0000000700000003000000021386AD000CFD9C05000000060F350D040CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000006000000060000000600000002000000000000000100000004120700FC08A913091207010800000004050000F8135D80F90000000104548A0100000009000000070000000912073D08050000F8135D80F90000000104548A010000000A1386AD000CFD9C05000000060000000700000000135D44F904548A011386710000000000000000070000000700000001000000040000000300000002"
theorem small_8426865_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8426865_left_root small_8426865_left_fuel small_8426865_left_count small_8426865_left_encoded = true := by
  decide +kernel
theorem small_8426865_left_covered : CoveredBy scale carrier boxes small_8426865_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8426865_left_root small_8426865_left_fuel small_8426865_left_count small_8426865_left_encoded small_8426865_left_checked

theorem cover_8426865 : CoveredBy scale carrier boxes root_8426865 := by
  apply coveredBy_split_literal root_8426865 small_8426865_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8427525 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8426865_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8427525
#print axioms cover_8426865

def root_8426860 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426860_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426860_right_fuel : Nat := 1
def small_8426860_right_count : Nat := 1
def small_8426860_right_encoded : String := "00000004"
theorem small_8426860_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8426860_right_root small_8426860_right_fuel small_8426860_right_count small_8426860_right_encoded = true := by
  decide +kernel
theorem small_8426860_right_covered : CoveredBy scale carrier boxes small_8426860_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8426860_right_root small_8426860_right_fuel small_8426860_right_count small_8426860_right_encoded small_8426860_right_checked

theorem cover_8426860 : CoveredBy scale carrier boxes root_8426860 := by
  apply coveredBy_split_literal root_8426860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8426865 small_8426860_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8426865
  · exact small_8426860_right_covered
#print axioms cover_8426860

def root_8426698 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426698_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426698_left_fuel : Nat := 14
def small_8426698_left_count : Nat := 73
def small_8426698_left_encoded : String := "1151E9090000000408A91301120701000000000008A913050000000A12073D0408A912FD0000000A120700FC0000000A000000030000000212073D0008A9130512070104000000020000000612073D0408A912FD12073CFC00000003050000F8135D80F90000000105000108135D4509000000040CFD9C010F34D100000000000000000A0F350D000000000600000000135D81090CFD9C01000000060F350D00000000060000000000000004135D44F905000108135D4509000000040CFD9C010F34D100000000000000000A000000060000000600000001120700FC050000F8135D80F90000000105000108135D4509000000040000000600000006135D44F905000108135D450900000004000000060000000600000001000000030000000200000000"
theorem small_8426698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8426698_left_root small_8426698_left_fuel small_8426698_left_count small_8426698_left_encoded = true := by
  decide +kernel
theorem small_8426698_left_covered : CoveredBy scale carrier boxes small_8426698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8426698_left_root small_8426698_left_fuel small_8426698_left_count small_8426698_left_encoded small_8426698_left_checked

theorem cover_8426698 : CoveredBy scale carrier boxes root_8426698 := by
  apply coveredBy_split_literal root_8426698 small_8426698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8426860 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8426698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8426860
#print axioms cover_8426698

def root_8426692 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426692_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8426692_left_fuel : Nat := 1
def small_8426692_left_count : Nat := 1
def small_8426692_left_encoded : String := "00000003"
theorem small_8426692_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8426692_left_root small_8426692_left_fuel small_8426692_left_count small_8426692_left_encoded = true := by
  decide +kernel
theorem small_8426692_left_covered : CoveredBy scale carrier boxes small_8426692_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8426692_left_root small_8426692_left_fuel small_8426692_left_count small_8426692_left_encoded small_8426692_left_checked

theorem cover_8426692 : CoveredBy scale carrier boxes root_8426692 := by
  apply coveredBy_split_literal root_8426692 small_8426692_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8426698 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8426692_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8426698
#print axioms cover_8426692

def root_8435492 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8435492 : CoveredBy scale carrier boxes root_8435492 := by
  apply coveredBy_split_literal root_8435492 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3154.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3155.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3154.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3155.covered
#print axioms cover_8435492

def root_8435487 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8435487_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8435487_right_fuel : Nat := 1
def small_8435487_right_count : Nat := 1
def small_8435487_right_encoded : String := "00000000"
theorem small_8435487_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8435487_right_root small_8435487_right_fuel small_8435487_right_count small_8435487_right_encoded = true := by
  decide +kernel
theorem small_8435487_right_covered : CoveredBy scale carrier boxes small_8435487_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8435487_right_root small_8435487_right_fuel small_8435487_right_count small_8435487_right_encoded small_8435487_right_checked

theorem cover_8435487 : CoveredBy scale carrier boxes root_8435487 := by
  apply coveredBy_split_literal root_8435487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8435492 small_8435487_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8435492
  · exact small_8435487_right_covered
#print axioms cover_8435487

def root_8432985 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8432985 : CoveredBy scale carrier boxes root_8432985 := by
  apply coveredBy_split_literal root_8432985 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3153.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8435487 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3153.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8435487
#print axioms cover_8432985

def root_8432979 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432979_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432979_left_fuel : Nat := 1
def small_8432979_left_count : Nat := 1
def small_8432979_left_encoded : String := "00000004"
theorem small_8432979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8432979_left_root small_8432979_left_fuel small_8432979_left_count small_8432979_left_encoded = true := by
  decide +kernel
theorem small_8432979_left_covered : CoveredBy scale carrier boxes small_8432979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8432979_left_root small_8432979_left_fuel small_8432979_left_count small_8432979_left_encoded small_8432979_left_checked

theorem cover_8432979 : CoveredBy scale carrier boxes root_8432979 := by
  apply coveredBy_split_literal root_8432979 small_8432979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432985 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8432979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432985
#print axioms cover_8432979

def root_8432978 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432978_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432978_right_fuel : Nat := 23
def small_8432978_right_count : Nat := 375
def small_8432978_right_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040B4D44000000000510804D010B4D44040000000510804D0508C000F80000000511FBE8F90000000700000001000000020000000012EA95080B4D4400000000050000000700000004128A40FD067ECE8912EA5908000000040B4D44000000000910804D0100000009000000000000000900000003128A40F9078000FC128A7CFD00000003067ECE8912EA5908000000040B4D4400000000070000000700000007128A40FD067ECE8912EA5908000000040B4D440010801101000000000B4D44041080110500000002064000F800000009000000070000000910804D010B4D440410801105000000020000000710804D05064000F812FFACF900000001064000FC12FFACFD000000030569AC491340D5080000000400000007000000060000000812FF70F9064000FC000000060000000500000001000000020000000012EA95080B4D440010801101000000000B4D4404000000070000000610804D0100000008000000000000000400000003000000010F878D05078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040B4D440010801101000000000000000910804D010DE7CA040E5FD9050000000208C000F80000000911FBE8F900000006000000010E60150508C000F80000000900000006000000020000000012EA95080B4D44000000000610804D01000000060000000000000004128A40FD067ECE8912EA590800000004000000090000000900000003128A40F9078000FC128A7CFD00000003067ECE8912EA5908000000040000000600000006128A40FD067ECE8912EA5908000000040B4D440010801101000000000DE7CA040E5FD90500000002000000060000000610804D010DE7CA040E5FD90500000002064000F812FFACF90000000100000006000000050000000500000000000000060000000300000001000000020F878D010C9A87040F87510500000002078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA000E5FD901000000000B4D44040000000710804D0508C000F811FC24F90000000108C000FC000000050000000811FBE8F90000000700000001000000020E6015010B4D44040000000710804D0508C000F80000000800000008000000020000000012EA95080DE7CA000E5FD90100000000000000070000000700000004128A40FD067ECE8912EA590800000004000000080000000800000003128A40F9078000FC128A7CFD00000003067ECE8912EA5908000000040000000700000007128A40FD067ECE8912EA5908000000040DE7CA000E5FD901000000000B4D44040000000810804D05064000F8000000080000000500000002000000080000000800000003000000010F878D05078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA000E5FD901000000000DE7CA040E5FD9050000000208C000F811FC24F90000000108C000FC11FC24FD000000030569AC491340D508000000040D4128800000000600000007000000060000000811FBE8F908C000FC0000000600000006000000010E60150508C000F811FC24F90000000108C000FC000000060000000600000006000000020E6015010DE7CA040E5FD9050000000208C000F800000008000000080E60150508C000F80000000800000006000000020000000012EA95080DE7CA000E5FD901000000000DE7CA0400000008000000060E601501000000080000000000000004128A40FD067ECE8912EA5908000000040DE7CA000E5FD901000000000DE7CA04000000080E6015050000000800000002000000080000000800000003128A40F9078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA00000000060E601501000000060000000000000006128A40FD067ECE8912EA5908000000040000000512EA950800000006000000040000000300000001000000020000000000000004"
theorem small_8432978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8432978_right_root small_8432978_right_fuel small_8432978_right_count small_8432978_right_encoded = true := by
  decide +kernel
theorem small_8432978_right_covered : CoveredBy scale carrier boxes small_8432978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8432978_right_root small_8432978_right_fuel small_8432978_right_count small_8432978_right_encoded small_8432978_right_checked

theorem cover_8432978 : CoveredBy scale carrier boxes root_8432978 := by
  apply coveredBy_split_literal root_8432978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432979 small_8432978_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432979
  · exact small_8432978_right_covered
#print axioms cover_8432978

def root_8432973 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432973_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432973_right_fuel : Nat := 1
def small_8432973_right_count : Nat := 1
def small_8432973_right_encoded : String := "00000002"
theorem small_8432973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8432973_right_root small_8432973_right_fuel small_8432973_right_count small_8432973_right_encoded = true := by
  decide +kernel
theorem small_8432973_right_covered : CoveredBy scale carrier boxes small_8432973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8432973_right_root small_8432973_right_fuel small_8432973_right_count small_8432973_right_encoded small_8432973_right_checked

theorem cover_8432973 : CoveredBy scale carrier boxes root_8432973 := by
  apply coveredBy_split_literal root_8432973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432978 small_8432973_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432978
  · exact small_8432973_right_covered
#print axioms cover_8432973

def root_8432351 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432351_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432351_left_fuel : Nat := 35
def small_8432351_left_count : Nat := 293
def small_8432351_left_encoded : String := "0F34D1040000000204548A0913867108000000040C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D1010400000002022A458913E1C508000000040B4D440010801101000000000000000910804D0108C000F811FC24F90000000108C000FC000000060000000500000005000000000000000610D13D04022A458913E1C508000000040B4D4400108011010000000008C000F80000000911FBE8F908C000FC11FC24FD000000030000000611FBE8FD00000009000000030000000110804D0108C000F811FC24F90000000108C000FC11FC24FD000000030BE879C51011710400000002000000060000000911FBE8FD000000090000000311FBE8F908C000FC11FC24FD000000030000000600000005000000010000000013E201080B4D44000000000910804D0108C000F80000000900000006000000000000000400000002128A40FD0AD3578510D1010400000002022A4589000000050000000910D13D04022A458913E1C508000000040B4D44000000000900000005000000090000000200000003128A40F9078000FC128A7CFD000000030AD3578510D10104000000020000000610D13D04022A458913E1C508000000040B4D44000000000600000005000000060000000200000005000000010F878D01078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D10104000000020000000510D13D04022A458913E1C508000000040DE7CA000E5FD9010000000008C000F811FC24F90000000108C000FC11FC24FD000000030BE879C510117104000000020115234913F859080000000400000005000000061011AD040115234913F85908000000040D4128800EFA110100000000096000F811AABCF9000000010000000911AA80F9096000FC0000000600000005000000010EFA4D01096000F811AABCF900000001096000FC11AABCFD000000030C730AE5000000060FA74504008A922913FDF908000000040D9479400000000600000005000000060000000200000005000000050000000013F895080D412880000000060EFA4D010000000600000000000000040000000200000005000000050000000513E201080DE7CA000E5FD9010000000008C000F811FC24F90000000108C000FC11FC24FD000000030000000611FBE8FD0BE879C5000000060000000900000003000000060E60150108C000F811FC24F90000000108C000FC11FC24FD000000030000000600000005000000050000000000000004000000020000000500000005000000001386AD080C9A87000F87510100000000078000F8128A7CF900000001078000FC128A7CFD000000030AD357850000000600000006128A40FD0AD3578510D1010400000002000000060000000900000003128A40F900000006000000010F878D01078000F8128A7CF900000001078000FC128A7CFD000000030AD357850000000610D13D04067ECE8912EA590800000004000000060000000600000002128A40FD0AD3578510D10104000000020000000510D13D04067ECE8912EA59080000000400000005000000060000000200000003128A40F9078000FC0000000600000005000000010000000000000004"
theorem small_8432351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8432351_left_root small_8432351_left_fuel small_8432351_left_count small_8432351_left_encoded = true := by
  decide +kernel
theorem small_8432351_left_covered : CoveredBy scale carrier boxes small_8432351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8432351_left_root small_8432351_left_fuel small_8432351_left_count small_8432351_left_encoded small_8432351_left_checked

theorem cover_8432351 : CoveredBy scale carrier boxes root_8432351 := by
  apply coveredBy_split_literal root_8432351 small_8432351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432973 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8432351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432973
#print axioms cover_8432351

def root_8432346 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432346_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8432346_right_fuel : Nat := 1
def small_8432346_right_count : Nat := 1
def small_8432346_right_encoded : String := "00000000"
theorem small_8432346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8432346_right_root small_8432346_right_fuel small_8432346_right_count small_8432346_right_encoded = true := by
  decide +kernel
theorem small_8432346_right_covered : CoveredBy scale carrier boxes small_8432346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8432346_right_root small_8432346_right_fuel small_8432346_right_count small_8432346_right_encoded small_8432346_right_checked

theorem cover_8432346 : CoveredBy scale carrier boxes root_8432346 := by
  apply coveredBy_split_literal root_8432346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.root_8432351 small_8432346_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580.cover_8432351
  · exact small_8432346_right_covered
#print axioms cover_8432346

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0580
