import TaoBundleAssembly0559
import TaoBundleAssembly0560
import TaoBundleAssembly0561
import TaoBundleChunkBatch0763
import TaoBundleChunkBatch0764
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562
def root_8132758 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8132758_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8132758_right_fuel : Nat := 33
def small_8132758_right_count : Nat := 415
def small_8132758_right_encoded : String := "1151E8FD0A0001081151E8FF08A913010000000712073D0008A912F912073CF80000000108A912FB0000000700000007120700F800000007000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FB12073D0408A912FF000000071207010800000004050000FC135D80FD0000000304548A011386710000000000000000051386AD000CFD9BF90F350CF800000001000000050F34D0F80000000700000001000000000000000500000002120701040000000208A912FF0000000700000007120700F808A912FB000000071207010400000002000000070000000112073D0008A912F912073CF80000000108A912FB12073D0408A912FF12073D08050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000500000007000000070F350D000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFF000000070F34D108000000040C9A87000F875101000000000C9A86F8000000070F8750F900000005000000010F878D010000000700000000000000020F34D10400000002000000070F34D0F8000000070000000100000000135D44FD0CFD9C01000000070F350D000CFD9BF90F350CF8000000010CFD9BFB0000000700000007000000070000000000000003000000041207010800000004050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FF00000005138671080000000400000005000000020F34D10400000002000000050F34D0F80CFD9BFB0000000700000007000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FF1386AD080C9A87000F875101000000000C9A86F80F878CF9000000010C9A87040F8750FB0000000600000002000000070F8750F90C9A87040F8750FB000000050000000200000005000000010F878D010C9A86F80F878CF9000000010C9A87040F8750FB00000005000000020000000500000005000000000000000413867108000000040C9A87000F875101000000000C9A86F80F878CF9000000010C9A87040F8750FB078000FC128A7CFD00000003022A457F000000060000000800000006000000020F878CFB00000002078000FC128A7CFD00000003022A457F0000000713E1C508000000040B4D44000000000800000008000000070F8750F90C9A8704000000080F878CFB00000002078000FC128A7CFD00000003022A457F0000000513E1C508000000040000000500000005000000010F878D010C9A86F80F878CF9000000010C9A8704000000080F878CFB00000002078000FC00000008000000050F8750F9000000050000000100000000000000020F34D10400000002045489FF1386AD08000000070000000413867108000000040C9A87000F875101000000000C9A86F80F878CF900000001000000070F8750F9078000FC128A7CFD000000030AD3577B0000000510D10104000000020000000500000005000000010F878D010C9A86F80000000700000005000000000F34D0F80CFD9BFB0F350D04045489FF0000000713867108000000040C9A87000F875101000000000C9A87040F8750FB078000FC128A7CFD000000030AD3577900000006000000060000000600000002000000070F878D010C9A8704000000080000000700000000000000020F34D10400000002000000070000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF900000005000000070F350D000CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FF0000000513867108000000040C9A87000F875101000000000C9A86F80F878CF900000001000000060000000500000005000000020F34D10400000002000000050F34D0F80CFD9BFB000000070000000700000001000000000000000300000002120701040000000208A912FF000000071207010800000004050000FC135D80FD000000030CFD9C010F34D10000000000000000070F350D000CFD9BF90F350CF800000001045489FB1386AD04045489FF0000000713867108000000040C9A8700000000070000000700000002138671040000000200000007000000070000000000000007120700F808A912FB12073D0408A912FF000000071207010800000004050000FC135D80FD000000030CFD9C01000000070F350D00045489F91386ACF8000000010CFD9BFB000000070000000700000007000000000000000700000002120701040000000200000007000000010000000000000003"
theorem small_8132758_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8132758_right_root small_8132758_right_fuel small_8132758_right_count small_8132758_right_encoded = true := by
  decide +kernel
theorem small_8132758_right_covered : CoveredBy scale carrier boxes small_8132758_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8132758_right_root small_8132758_right_fuel small_8132758_right_count small_8132758_right_encoded small_8132758_right_checked

theorem cover_8132758 : CoveredBy scale carrier boxes root_8132758 := by
  apply coveredBy_split_literal root_8132758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0561.root_8132759 small_8132758_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0561.cover_8132759
  · exact small_8132758_right_covered
#print axioms cover_8132758

def root_8132752 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8132752_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8132752_left_fuel : Nat := 1
def small_8132752_left_count : Nat := 1
def small_8132752_left_encoded : String := "00000002"
theorem small_8132752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8132752_left_root small_8132752_left_fuel small_8132752_left_count small_8132752_left_encoded = true := by
  decide +kernel
theorem small_8132752_left_covered : CoveredBy scale carrier boxes small_8132752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8132752_left_root small_8132752_left_fuel small_8132752_left_count small_8132752_left_encoded small_8132752_left_checked

theorem cover_8132752 : CoveredBy scale carrier boxes root_8132752 := by
  apply coveredBy_split_literal root_8132752 small_8132752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8132758 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8132752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8132758
#print axioms cover_8132752

def root_8126516 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8126516 : CoveredBy scale carrier boxes root_8126516 := by
  apply coveredBy_split_literal root_8126516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0560.root_8126517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8132752 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0560.cover_8126517
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8132752
#print axioms cover_8126516

def root_8126510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126510_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126510_left_fuel : Nat := 1
def small_8126510_left_count : Nat := 1
def small_8126510_left_encoded : String := "00000001"
theorem small_8126510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126510_left_root small_8126510_left_fuel small_8126510_left_count small_8126510_left_encoded = true := by
  decide +kernel
theorem small_8126510_left_covered : CoveredBy scale carrier boxes small_8126510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126510_left_root small_8126510_left_fuel small_8126510_left_count small_8126510_left_encoded small_8126510_left_checked

theorem cover_8126510 : CoveredBy scale carrier boxes root_8126510 := by
  apply coveredBy_split_literal root_8126510 small_8126510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8126516 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8126510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8126516
#print axioms cover_8126510

def root_8141020 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8141020 : CoveredBy scale carrier boxes root_8141020 := by
  apply coveredBy_split_literal root_8141020 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3051.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3052.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3051.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3052.covered
#print axioms cover_8141020

def root_8141015 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8141015_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8141015_right_fuel : Nat := 1
def small_8141015_right_count : Nat := 1
def small_8141015_right_encoded : String := "00000001"
theorem small_8141015_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8141015_right_root small_8141015_right_fuel small_8141015_right_count small_8141015_right_encoded = true := by
  decide +kernel
theorem small_8141015_right_covered : CoveredBy scale carrier boxes small_8141015_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8141015_right_root small_8141015_right_fuel small_8141015_right_count small_8141015_right_encoded small_8141015_right_checked

theorem cover_8141015 : CoveredBy scale carrier boxes root_8141015 := by
  apply coveredBy_split_literal root_8141015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8141020 small_8141015_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8141020
  · exact small_8141015_right_covered
#print axioms cover_8141015

def root_8126509 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8126509 : CoveredBy scale carrier boxes root_8126509 := by
  apply coveredBy_split_literal root_8126509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8126510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8141015 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8126510
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8141015
#print axioms cover_8126509

def root_8126504 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126504_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8126504_right_fuel : Nat := 1
def small_8126504_right_count : Nat := 1
def small_8126504_right_encoded : String := "00000000"
theorem small_8126504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8126504_right_root small_8126504_right_fuel small_8126504_right_count small_8126504_right_encoded = true := by
  decide +kernel
theorem small_8126504_right_covered : CoveredBy scale carrier boxes small_8126504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8126504_right_root small_8126504_right_fuel small_8126504_right_count small_8126504_right_encoded small_8126504_right_checked

theorem cover_8126504 : CoveredBy scale carrier boxes root_8126504 := by
  apply coveredBy_split_literal root_8126504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8126509 small_8126504_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8126509
  · exact small_8126504_right_covered
#print axioms cover_8126504

def root_8093062 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093062 : CoveredBy scale carrier boxes root_8093062 := by
  apply coveredBy_split_literal root_8093062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8093063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8126504 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8093063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8126504
#print axioms cover_8093062

def root_8149975 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8149975 : CoveredBy scale carrier boxes root_8149975 := by
  apply coveredBy_split_literal root_8149975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3054.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3055.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3054.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3055.covered
#print axioms cover_8149975

def root_8149969 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149969_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149969_left_fuel : Nat := 1
def small_8149969_left_count : Nat := 1
def small_8149969_left_encoded : String := "00000004"
theorem small_8149969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149969_left_root small_8149969_left_fuel small_8149969_left_count small_8149969_left_encoded = true := by
  decide +kernel
theorem small_8149969_left_covered : CoveredBy scale carrier boxes small_8149969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149969_left_root small_8149969_left_fuel small_8149969_left_count small_8149969_left_encoded small_8149969_left_checked

theorem cover_8149969 : CoveredBy scale carrier boxes root_8149969 := by
  apply coveredBy_split_literal root_8149969 small_8149969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149975 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8149969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149975
#print axioms cover_8149969

def root_8149968 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149968_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149968_right_fuel : Nat := 19
def small_8149968_right_count : Nat := 237
def small_8149968_right_encoded : String := "12073D0805000100135D450100000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A8704000000050F878CFB00000002028001000000000513D7ED01078000FC0000000500000008000000000000000100000005000000020F34D104000000020CFD9C090F34D108000000040C9A86F8000000050F8750F9028001000000000513D7ED01078000FC00000005128A40FD000000080000000300000000000000010F350D0800000005000000040F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A86F80F878CF9000000010C9A8704000000080F878CFB0000000200000008000000080F350D080C9A86F8000000050F8750F90C9A8704000000050F878CFB000000020C9A870800000005000000080000000100000004000000020F34D104000000020CFD9C090F34D108000000040C9A86F8000000090F8750F9028001000000000800000008000000010F350D080C9A86F80F878CF900000001000000050F8750F90C9A87080F87510900000004000000050000000800000001000000040F34D0F80CFD9BFB0F350D0400000005000000020F34D10400000002000000090000000100000003135D8101050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A86F80F878CF9000000010C9A8704000000080000000A0F8750F90C9A8704000000080000000A000000010000000A000000020F34D104000000020CFD9C090F34D108000000040C9A86F80000000A0F8750F90000000A000000010000000A0F34D0F80CFD9BFB0F350D040CFD9C090F34D108000000040C9A8704000000050000000A00000005000000020F34D104000000020000000A00000001135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A86F80F878CF90000000100000008000000080F350D080C9A86F80000000A0F8750F90C9A8704000000080000000A0000000100000004000000020F34D104000000020CFD9C090F34D108000000040C9A86F80F878CF900000001078001000000000800000008000000080000000A0F34D0F80CFD9BFB0F350D040CFD9C090F34D108000000040C9A8704000000080F878CFB000000020780010000000008000000080000000A000000020F34D104000000020CFD9C090F34D10800000004000000090000000A00000001000000030000000000000004"
theorem small_8149968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149968_right_root small_8149968_right_fuel small_8149968_right_count small_8149968_right_encoded = true := by
  decide +kernel
theorem small_8149968_right_covered : CoveredBy scale carrier boxes small_8149968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149968_right_root small_8149968_right_fuel small_8149968_right_count small_8149968_right_encoded small_8149968_right_checked

theorem cover_8149968 : CoveredBy scale carrier boxes root_8149968 := by
  apply coveredBy_split_literal root_8149968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149969 small_8149968_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149969
  · exact small_8149968_right_covered
#print axioms cover_8149968

def root_8149963 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149963_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149963_right_fuel : Nat := 1
def small_8149963_right_count : Nat := 1
def small_8149963_right_encoded : String := "00000002"
theorem small_8149963_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149963_right_root small_8149963_right_fuel small_8149963_right_count small_8149963_right_encoded = true := by
  decide +kernel
theorem small_8149963_right_covered : CoveredBy scale carrier boxes small_8149963_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149963_right_root small_8149963_right_fuel small_8149963_right_count small_8149963_right_encoded small_8149963_right_checked

theorem cover_8149963 : CoveredBy scale carrier boxes root_8149963 := by
  apply coveredBy_split_literal root_8149963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149968 small_8149963_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149968
  · exact small_8149963_right_covered
#print axioms cover_8149963

def root_8149962 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149962_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149962_right_fuel : Nat := 23
def small_8149962_right_count : Nat := 221
def small_8149962_right_encoded : String := "120701040000000208A91309120701080000000405000100135D45010000000000000009135D8101050000FC135D80FD000000030CFD9BF90F350CF800000001045489FB1386AD0404548A0913867108000000040C9A86F80F878CF9000000010780010000000009128A7D0100000007000000000F8750F907800100128A410100000000078000FC128A7CFD00000003067ECE7B12EA9504022A458900000007000000090000000200000009128A40FD0000000900000003128A7D01078000FC128A7CFD00000003067ECE7B12EA9504022A4589000000070000000A0000000212EA590400000002022A45890000000700000006128A40FD067ECE7B00000007000000070000000300000000000000011386AD080C9A86F80F878CF900000001000000090F8750F907800100128A41010000000000000009128A7D01078000FC00000006128A40FD0000000A0000000300000000000000010000000400000002138671040000000204548A0913867108000000040C9A86F8000000090F8750F90780010000000009128A7D01078000FC128A7CFD00000003022A457B0000000600000006000000070000000000000001000000090F34D0F80000000900000001135D44FD0CFD9BF90F350CF800000001045489FB1386AD0404548A091386710800000004000000071386AD080C9A86F8000000090F8750F90780010000000009000000080000000100000004000000021386710400000002000000090F34D0F80000000700000001000000030000000012073D0805000100135D450100000000050000FC135D80FD000000030CFD9BF90F350CF800000001045489FB1386AD040CFD9C090F34D108000000040000000900000006000000020000000900000009135D44FD0CFD9BF90F350CF800000001045489FB1386AD040CFD9C090F34D10800000004000000090000000900000002000000090000000900000003135D8101050000FC135D80FD000000030CFD9BF90F350CF800000001045489FB0000000A13867104000000020CFD9C090F34D1080000000400000006000000060F34D0F80000000A00000001135D44FD0CFD9BF90F350CF800000001045489FB1386AD040CFD9C090F34D108000000040C9A86F800000009000000080000000A0000000213867104000000020CFD9C090F34D1080000000400000009000000090F34D0F80000000900000001000000030000000000000004"
theorem small_8149962_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149962_right_root small_8149962_right_fuel small_8149962_right_count small_8149962_right_encoded = true := by
  decide +kernel
theorem small_8149962_right_covered : CoveredBy scale carrier boxes small_8149962_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149962_right_root small_8149962_right_fuel small_8149962_right_count small_8149962_right_encoded small_8149962_right_checked

theorem cover_8149962 : CoveredBy scale carrier boxes root_8149962 := by
  apply coveredBy_split_literal root_8149962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149963 small_8149962_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149963
  · exact small_8149962_right_covered
#print axioms cover_8149962

def root_8149956 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149956_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149956_left_fuel : Nat := 1
def small_8149956_left_count : Nat := 1
def small_8149956_left_encoded : String := "00000001"
theorem small_8149956_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149956_left_root small_8149956_left_fuel small_8149956_left_count small_8149956_left_encoded = true := by
  decide +kernel
theorem small_8149956_left_covered : CoveredBy scale carrier boxes small_8149956_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149956_left_root small_8149956_left_fuel small_8149956_left_count small_8149956_left_encoded small_8149956_left_checked

theorem cover_8149956 : CoveredBy scale carrier boxes root_8149956 := by
  apply coveredBy_split_literal root_8149956 small_8149956_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149962 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8149956_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149962
#print axioms cover_8149956

def root_8149955 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149955_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149955_right_fuel : Nat := 18
def small_8149955_right_count : Nat := 103
def small_8149955_right_encoded : String := "120700F808A912FB12073D0408A91309120701080000000405000100135D45010000000000000009135D8101050000FC135D80FD00000003045489F91386ACF8000000010CFD9BFB0F350D0404548A0913867108000000040C9A8704000000050F878CFB000000020000000700000005000000020F34D1040000000200000009138670F80CFD9BFB0F350D0400000005000000020000000500000001135D44FD045489F91386ACF8000000010CFD9BFB0F350D0404548A09000000071386AD080C9A8704000000080000000900000004000000020F34D1040000000200000007138670F80000000900000001000000030000000012073D080500010000000005135D8101050000FC00000005135D44FD045489F91386ACF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A8704000000050000000900000005000000020F34D1040000000200000009138670F80CFD9BFB0F350D040000000500000002000000050000000100000003000000000000000400000002120701040000000208A913091207010800000004000000090000000900000001"
theorem small_8149955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149955_right_root small_8149955_right_fuel small_8149955_right_count small_8149955_right_encoded = true := by
  decide +kernel
theorem small_8149955_right_covered : CoveredBy scale carrier boxes small_8149955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149955_right_root small_8149955_right_fuel small_8149955_right_count small_8149955_right_encoded small_8149955_right_checked

theorem cover_8149955 : CoveredBy scale carrier boxes root_8149955 := by
  apply coveredBy_split_literal root_8149955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149956 small_8149955_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149956
  · exact small_8149955_right_covered
#print axioms cover_8149955

def root_8149950 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149950_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149950_right_fuel : Nat := 1
def small_8149950_right_count : Nat := 1
def small_8149950_right_encoded : String := "00000004"
theorem small_8149950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149950_right_root small_8149950_right_fuel small_8149950_right_count small_8149950_right_encoded = true := by
  decide +kernel
theorem small_8149950_right_covered : CoveredBy scale carrier boxes small_8149950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149950_right_root small_8149950_right_fuel small_8149950_right_count small_8149950_right_encoded small_8149950_right_checked

theorem cover_8149950 : CoveredBy scale carrier boxes root_8149950 := by
  apply coveredBy_split_literal root_8149950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149955 small_8149950_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149955
  · exact small_8149950_right_covered
#print axioms cover_8149950

def root_8149874 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149874_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149874_left_fuel : Nat := 14
def small_8149874_left_count : Nat := 35
def small_8149874_left_encoded : String := "1151E9090000000408A912F912073CF80000000108A912FB12073D040500010000000005135D8101050000FC00000005135D44FD0500010800000005135D81090CFD9BF90000000A0F34D0F800000005000000010000000400000003000000000000000212070104000000020500010000000005135D81010000000A00000000120700F80000000500000001"
theorem small_8149874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149874_left_root small_8149874_left_fuel small_8149874_left_count small_8149874_left_encoded = true := by
  decide +kernel
theorem small_8149874_left_covered : CoveredBy scale carrier boxes small_8149874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149874_left_root small_8149874_left_fuel small_8149874_left_count small_8149874_left_encoded small_8149874_left_checked

theorem cover_8149874 : CoveredBy scale carrier boxes root_8149874 := by
  apply coveredBy_split_literal root_8149874 small_8149874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149950 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8149874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149950
#print axioms cover_8149874

def root_8149869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149869_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8149869_right_fuel : Nat := 1
def small_8149869_right_count : Nat := 1
def small_8149869_right_encoded : String := "00000003"
theorem small_8149869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8149869_right_root small_8149869_right_fuel small_8149869_right_count small_8149869_right_encoded = true := by
  decide +kernel
theorem small_8149869_right_covered : CoveredBy scale carrier boxes small_8149869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8149869_right_root small_8149869_right_fuel small_8149869_right_count small_8149869_right_encoded small_8149869_right_checked

theorem cover_8149869 : CoveredBy scale carrier boxes root_8149869 := by
  apply coveredBy_split_literal root_8149869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149874 small_8149869_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149874
  · exact small_8149869_right_covered
#print axioms cover_8149869

def root_8146917 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8146917 : CoveredBy scale carrier boxes root_8146917 := by
  apply coveredBy_split_literal root_8146917 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3053.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8149869 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3053.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8149869
#print axioms cover_8146917

def root_8146911 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146911_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146911_left_fuel : Nat := 1
def small_8146911_left_count : Nat := 1
def small_8146911_left_encoded : String := "00000002"
theorem small_8146911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8146911_left_root small_8146911_left_fuel small_8146911_left_count small_8146911_left_encoded = true := by
  decide +kernel
theorem small_8146911_left_covered : CoveredBy scale carrier boxes small_8146911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8146911_left_root small_8146911_left_fuel small_8146911_left_count small_8146911_left_encoded small_8146911_left_checked

theorem cover_8146911 : CoveredBy scale carrier boxes root_8146911 := by
  apply coveredBy_split_literal root_8146911 small_8146911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8146917 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8146911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8146917
#print axioms cover_8146911

def root_8146113 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146113_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146113_left_fuel : Nat := 33
def small_8146113_left_count : Nat := 369
def small_8146113_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A000108000000051152250908A912F912073CF80000000108A912FD12073CFC0000000308A91309120701080000000405000100135D4501000000000500010400000005135D80FB000000020CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F8000000050F8750F90C9A86FC000000050F8750FD028001000000000513D7ED010780010400000005128A7CFB0000000200000005000000000000000300000001000000050000000500000005135D810105000104135D44FB0CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F80F878CF900000001000000050000000800000005000000050000000500000002135D80FB000000020CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD00000003000000050F8750FD07800100128A4101000000000000000500000008000000030F8750F90C9A86FC0F878CFD0000000307800100128A41010000000000000005128A7D010780010400000007128A7CFB00000002022A458913E1C508000000040B4D43F8000000090000000700000007000000000F8750FD07800100128A4101000000000780010400000007128A7CFB00000002022A458913E1C5080000000400000008000000070000000800000003000000011386AD080C9A86F80F878CF900000001000000050F8750F90C9A86FC000000070F8750FD000000080000000300000001000000040F34D0FC00000005000000030F34D0F800000005000000010000000012073D080000000500000004120700FC0000000500000003120700F80000000500000001000000041151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A91309120701080000000405000100135D45010000000005000104135D44FB050000FC135D80FD000000030CFD9BF900000006000000050000000600000002135D80FB00000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A091386710800000004000000061386AD080C9A86F80F878CF9000000010000000500000008000000040F34D0F80000000500000001135D44FD0CFD9BF9000000060F34D0F8000000060000000100000003135D810105000104135D44FB050000FC135D80FD000000030CFD9BF900000006000000080000000600000002135D80FB00000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F80000000600000008000000080F34D0F804548A091386710800000004000000060000000800000001135D44FD0CFD9BF9000000060F34D0F80000000600000001000000030000000012073D0805000100135D4501000000000500010400000005135D80FB00000002050000FC00000005135D44FD0CFD9BF90F350CF8000000010CFD9C090F34D1080000000400000008000000070F34D0F8000000050000000100000003135D810105000104135D44FB050000FC135D80FD0000000300000005135D44FD0CFD9BF90F350CF8000000010CFD9C0900000008000000070F34D0F800000005000000010000000300000002135D80FB00000002050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000080F350D0800000005000000040F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000080F350D080C9A86F80F878CF9000000010C9A8708000000050000000800000007000000040F34D0F80CFD9C090F34D10800000004000000080000000500000001000000030000000000000004120700F808A9130912070108000000040500010000000005135D81010500010400000005135D80FB00000002050000FC00000005135D44FD0000000600000003000000000000000500000001000000040000000300000002"
theorem small_8146113_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8146113_left_root small_8146113_left_fuel small_8146113_left_count small_8146113_left_encoded = true := by
  decide +kernel
theorem small_8146113_left_covered : CoveredBy scale carrier boxes small_8146113_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8146113_left_root small_8146113_left_fuel small_8146113_left_count small_8146113_left_encoded small_8146113_left_checked

theorem cover_8146113 : CoveredBy scale carrier boxes root_8146113 := by
  apply coveredBy_split_literal root_8146113 small_8146113_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8146911 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8146113_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8146911
#print axioms cover_8146113

def root_8146107 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146107_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8146107_left_fuel : Nat := 1
def small_8146107_left_count : Nat := 1
def small_8146107_left_encoded : String := "00000001"
theorem small_8146107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8146107_left_root small_8146107_left_fuel small_8146107_left_count small_8146107_left_encoded = true := by
  decide +kernel
theorem small_8146107_left_covered : CoveredBy scale carrier boxes small_8146107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8146107_left_root small_8146107_left_fuel small_8146107_left_count small_8146107_left_encoded small_8146107_left_checked

theorem cover_8146107 : CoveredBy scale carrier boxes root_8146107 := by
  apply coveredBy_split_literal root_8146107 small_8146107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8146113 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8146107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8146113
#print axioms cover_8146107

def root_8156811 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156811_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156811_right_fuel : Nat := 14
def small_8156811_right_count : Nat := 39
def small_8156811_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A91309120701080000000405000100135D450100000000050000F8135D80F900000001045489FB000000060000000600000006135D8101050000F8135D80F900000001045489FB1386AD040CFD9BFD0F350CFC00000003000000060000000600000002138671040000000200000006000000060000000000000006120700FC0000000600000003"
theorem small_8156811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156811_right_root small_8156811_right_fuel small_8156811_right_count small_8156811_right_encoded = true := by
  decide +kernel
theorem small_8156811_right_covered : CoveredBy scale carrier boxes small_8156811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156811_right_root small_8156811_right_fuel small_8156811_right_count small_8156811_right_encoded small_8156811_right_checked

theorem cover_8156811 : CoveredBy scale carrier boxes root_8156811 := by
  apply coveredBy_split_literal root_8156811 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3056.root small_8156811_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3056.covered
  · exact small_8156811_right_covered
#print axioms cover_8156811

def root_8156806 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156806_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156806_right_fuel : Nat := 1
def small_8156806_right_count : Nat := 1
def small_8156806_right_encoded : String := "00000004"
theorem small_8156806_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156806_right_root small_8156806_right_fuel small_8156806_right_count small_8156806_right_encoded = true := by
  decide +kernel
theorem small_8156806_right_covered : CoveredBy scale carrier boxes small_8156806_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156806_right_root small_8156806_right_fuel small_8156806_right_count small_8156806_right_encoded small_8156806_right_checked

theorem cover_8156806 : CoveredBy scale carrier boxes root_8156806 := by
  apply coveredBy_split_literal root_8156806 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8156811 small_8156806_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8156811
  · exact small_8156806_right_covered
#print axioms cover_8156806

def root_8156774 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156774_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156774_left_fuel : Nat := 7
def small_8156774_left_count : Nat := 15
def small_8156774_left_encoded : String := "1151E9090000000408A912FB12073D0408A912FD12073CFC00000003050001000000000500000006120700FC00000005000000030000000200000006"
theorem small_8156774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156774_left_root small_8156774_left_fuel small_8156774_left_count small_8156774_left_encoded = true := by
  decide +kernel
theorem small_8156774_left_covered : CoveredBy scale carrier boxes small_8156774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156774_left_root small_8156774_left_fuel small_8156774_left_count small_8156774_left_encoded small_8156774_left_checked

theorem cover_8156774 : CoveredBy scale carrier boxes root_8156774 := by
  apply coveredBy_split_literal root_8156774 small_8156774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8156806 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8156774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8156806
#print axioms cover_8156774

def root_8156768 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156768_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8156768_left_fuel : Nat := 1
def small_8156768_left_count : Nat := 1
def small_8156768_left_encoded : String := "00000003"
theorem small_8156768_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8156768_left_root small_8156768_left_fuel small_8156768_left_count small_8156768_left_encoded = true := by
  decide +kernel
theorem small_8156768_left_covered : CoveredBy scale carrier boxes small_8156768_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8156768_left_root small_8156768_left_fuel small_8156768_left_count small_8156768_left_encoded small_8156768_left_checked

theorem cover_8156768 : CoveredBy scale carrier boxes root_8156768 := by
  apply coveredBy_split_literal root_8156768 small_8156768_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.root_8156774 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8156768_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562.cover_8156774
#print axioms cover_8156768

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0562
