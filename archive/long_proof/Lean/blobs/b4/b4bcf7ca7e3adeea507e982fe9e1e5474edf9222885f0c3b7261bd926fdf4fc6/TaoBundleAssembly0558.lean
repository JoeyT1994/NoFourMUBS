import TaoBundleAssembly0557
import TaoBundleChunkBatch0760
import TaoBundleChunkBatch0761
import TaoBundleChunkBatch0762
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558
def root_8097944 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097944_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097944_right_fuel : Nat := 20
def small_8097944_right_count : Nat := 145
def small_8097944_right_encoded : String := "0F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000005128A7D010AD3577910D13CF800000001067ECE7F0000000712EA5908000000040B4D4404000000050000000700000007000000000F8750FD07800100000000070000000700000003000000020F878CFB000000020C9A86FC0F878CFD00000003078001000000000700000007000000070000000413867108000000040C9A87040F8750FB0C9A86FC0F878CFD00000003000000050F8750FD07800100128A41010000000000000005128A7D010AD3577910D13CF800000001022A457F0000000613E1C508000000040B4D4404000000050000000A10D100F800000005000000010000000000000003000000020F878CFB000000020C9A86FC0F878CFD00000003000000050F8750FD07800100128A4101000000000AD3577910D13CF800000001022A457F000000070000000500000005128A7D010AD3577910D13CF800000001022A457F0000000713E1C508000000040DE7CA040E5FD8FB0000000700000002000000070000000700000000000000030F34D0FC045489FF1386AD0800000005000000040000000500000003000000020F34D104000000020CFD9BFD0F350CFC00000003045489FF0000000713867108000000040C9A86FC0F878CFD000000030780010000000005128A7D010AD3577910D13CF8000000010AD3577B000000070000000500000005000000000F8750FD00000007000000030F34D0FC000000050000000300000001"
theorem small_8097944_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097944_right_root small_8097944_right_fuel small_8097944_right_count small_8097944_right_encoded = true := by
  decide +kernel
theorem small_8097944_right_covered : CoveredBy scale carrier boxes small_8097944_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097944_right_root small_8097944_right_fuel small_8097944_right_count small_8097944_right_encoded small_8097944_right_checked

theorem cover_8097944 : CoveredBy scale carrier boxes root_8097944 := by
  apply coveredBy_split_literal root_8097944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0557.root_8097945 small_8097944_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0557.cover_8097945
  · exact small_8097944_right_covered
#print axioms cover_8097944

def root_8097939 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097939_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097939_right_fuel : Nat := 1
def small_8097939_right_count : Nat := 1
def small_8097939_right_encoded : String := "00000000"
theorem small_8097939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097939_right_root small_8097939_right_fuel small_8097939_right_count small_8097939_right_encoded = true := by
  decide +kernel
theorem small_8097939_right_covered : CoveredBy scale carrier boxes small_8097939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097939_right_root small_8097939_right_fuel small_8097939_right_count small_8097939_right_encoded small_8097939_right_checked

theorem cover_8097939 : CoveredBy scale carrier boxes root_8097939 := by
  apply coveredBy_split_literal root_8097939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8097944 small_8097939_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8097944
  · exact small_8097939_right_covered
#print axioms cover_8097939

def root_8096331 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8096331 : CoveredBy scale carrier boxes root_8096331 := by
  apply coveredBy_split_literal root_8096331 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3039.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8097939 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3039.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8097939
#print axioms cover_8096331

def root_8096325 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096325_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096325_left_fuel : Nat := 1
def small_8096325_left_count : Nat := 1
def small_8096325_left_encoded : String := "00000004"
theorem small_8096325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096325_left_root small_8096325_left_fuel small_8096325_left_count small_8096325_left_encoded = true := by
  decide +kernel
theorem small_8096325_left_covered : CoveredBy scale carrier boxes small_8096325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096325_left_root small_8096325_left_fuel small_8096325_left_count small_8096325_left_encoded small_8096325_left_checked

theorem cover_8096325 : CoveredBy scale carrier boxes root_8096325 := by
  apply coveredBy_split_literal root_8096325 small_8096325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096331 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8096325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096331
#print axioms cover_8096325

def root_8096021 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096021_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096021_left_fuel : Nat := 25
def small_8096021_left_count : Nat := 143
def small_8096021_left_encoded : String := "12073D0805000100135D4501000000000CFD9BF9000000080F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A87040F8750FB0C9A86FC0000000800000007000000020000000700000008000000020F34D104000000020000000800000001135D81010CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A86F80F878CF9000000010C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000008128A7D010AD3577F0000000710D10108000000040DE7C9F8000000070E5FD8F90000000800000001000000000F8750FD07800100000000070000000700000003000000020F878CFB000000020C9A86FC00000008000000070F8750F90C9A87040F8750FB0C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D010AD3577F0000000710D10108000000040B4D43F800000006108010F90B4D440400000006000000050000000100000000000000030000000200000008000000010F34D0FC0000000800000003000000020F34D10400000002000000080F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A87040F8750FB0C9A86FC0F878CFD00000003000000070000000700000002000000070F34D0FC0000000800000003000000020F34D104000000020CFD9BFD0000000700000007000000010000000000000004"
theorem small_8096021_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096021_left_root small_8096021_left_fuel small_8096021_left_count small_8096021_left_encoded = true := by
  decide +kernel
theorem small_8096021_left_covered : CoveredBy scale carrier boxes small_8096021_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096021_left_root small_8096021_left_fuel small_8096021_left_count small_8096021_left_encoded small_8096021_left_checked

theorem cover_8096021 : CoveredBy scale carrier boxes root_8096021 := by
  apply coveredBy_split_literal root_8096021 small_8096021_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096325 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8096021_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096325
#print axioms cover_8096021

def root_8096015 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096015_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096015_left_fuel : Nat := 1
def small_8096015_left_count : Nat := 1
def small_8096015_left_encoded : String := "00000003"
theorem small_8096015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096015_left_root small_8096015_left_fuel small_8096015_left_count small_8096015_left_encoded = true := by
  decide +kernel
theorem small_8096015_left_covered : CoveredBy scale carrier boxes small_8096015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096015_left_root small_8096015_left_fuel small_8096015_left_count small_8096015_left_encoded small_8096015_left_checked

theorem cover_8096015 : CoveredBy scale carrier boxes root_8096015 := by
  apply coveredBy_split_literal root_8096015 small_8096015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096021 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8096015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096021
#print axioms cover_8096015

def root_8096014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096014_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096014_right_fuel : Nat := 13
def small_8096014_right_count : Nat := 31
def small_8096014_right_encoded : String := "120700FC08A912FF00000008120701080000000405000100135D45010000000000000005135D81010CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FD1386ACFC00000003045489FF000000080000000500000005000000020F34D10400000002000000080F34D0F800000005000000010000000000000003"
theorem small_8096014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096014_right_root small_8096014_right_fuel small_8096014_right_count small_8096014_right_encoded = true := by
  decide +kernel
theorem small_8096014_right_covered : CoveredBy scale carrier boxes small_8096014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096014_right_root small_8096014_right_fuel small_8096014_right_count small_8096014_right_encoded small_8096014_right_checked

theorem cover_8096014 : CoveredBy scale carrier boxes root_8096014 := by
  apply coveredBy_split_literal root_8096014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096015 small_8096014_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096015
  · exact small_8096014_right_covered
#print axioms cover_8096014

def root_8096009 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096009_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096009_right_fuel : Nat := 1
def small_8096009_right_count : Nat := 1
def small_8096009_right_encoded : String := "00000002"
theorem small_8096009_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096009_right_root small_8096009_right_fuel small_8096009_right_count small_8096009_right_encoded = true := by
  decide +kernel
theorem small_8096009_right_covered : CoveredBy scale carrier boxes small_8096009_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096009_right_root small_8096009_right_fuel small_8096009_right_count small_8096009_right_encoded small_8096009_right_checked

theorem cover_8096009 : CoveredBy scale carrier boxes root_8096009 := by
  apply coveredBy_split_literal root_8096009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096014 small_8096009_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096014
  · exact small_8096009_right_covered
#print axioms cover_8096009

def root_8096008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096008_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096008_right_fuel : Nat := 26
def small_8096008_right_count : Nat := 153
def small_8096008_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF12073D080000000800000004120701080000000405000100135D4501000000000CFD9BF90F350CF800000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F8000000080F8750F9000000080000000100000008000000021386710400000002000000080F34D0F80000000500000001135D81010CFD9BF90F350CF800000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F8000000080F8750F900000008000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010000000008128A7D01067ECE7B0000000700000007000000000F8750FD00000007000000030F8750F90C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D01067ECE7B12EA9504022A457F0000000713E1C508000000040000000700000002000000070000000000000003000000010F34D0FC00000008000000030000000213867104000000020CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD0000000300000008000000070F8750F90C9A86FC000000080F8750FD0780010000000007000000070000000300000001000000080F34D0F8045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC00000003000000070F34D0FC00000005000000030000000100000000120700FC0000000800000003"
theorem small_8096008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096008_right_root small_8096008_right_fuel small_8096008_right_count small_8096008_right_encoded = true := by
  decide +kernel
theorem small_8096008_right_covered : CoveredBy scale carrier boxes small_8096008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096008_right_root small_8096008_right_fuel small_8096008_right_count small_8096008_right_encoded small_8096008_right_checked

theorem cover_8096008 : CoveredBy scale carrier boxes root_8096008 := by
  apply coveredBy_split_literal root_8096008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096009 small_8096008_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096009
  · exact small_8096008_right_covered
#print axioms cover_8096008

def root_8096002 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096002_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096002_left_fuel : Nat := 1
def small_8096002_left_count : Nat := 1
def small_8096002_left_encoded : String := "00000001"
theorem small_8096002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096002_left_root small_8096002_left_fuel small_8096002_left_count small_8096002_left_encoded = true := by
  decide +kernel
theorem small_8096002_left_covered : CoveredBy scale carrier boxes small_8096002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096002_left_root small_8096002_left_fuel small_8096002_left_count small_8096002_left_encoded small_8096002_left_checked

theorem cover_8096002 : CoveredBy scale carrier boxes root_8096002 := by
  apply coveredBy_split_literal root_8096002 small_8096002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096008 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8096002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096008
#print axioms cover_8096002

def root_8096001 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096001_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096001_right_fuel : Nat := 19
def small_8096001_right_count : Nat := 115
def small_8096001_right_encoded : String := "120700F808A912FB12073D0408A912FD12073CFC0000000308A912FF12073D0805000100135D450100000000045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030000000700000005000000020F34D1040000000200000007138670F80000000500000001135D8101045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030000000700000007000000020F34D1040000000200000007138670F800000007000000010000000000000004120701080000000405000100135D45010000000000000005135D8101045489F91386ACF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040000000500000007000000040000000500000005000000020F34D104000000020CFD9BFD0F350CFC000000030000000700000005138670F80CFD9BFB0F350D040000000500000002000000050000000100000000120700FC000000050000000300000002120701040000000208A912FD12073CFC0000000308A912FF0000000712070108000000040500010000000005135D8101045489F91386ACF800000001045489FB00000007000000050000000500000000120700FC000000050000000300000001"
theorem small_8096001_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096001_right_root small_8096001_right_fuel small_8096001_right_count small_8096001_right_encoded = true := by
  decide +kernel
theorem small_8096001_right_covered : CoveredBy scale carrier boxes small_8096001_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096001_right_root small_8096001_right_fuel small_8096001_right_count small_8096001_right_encoded small_8096001_right_checked

theorem cover_8096001 : CoveredBy scale carrier boxes root_8096001 := by
  apply coveredBy_split_literal root_8096001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096002 small_8096001_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096002
  · exact small_8096001_right_covered
#print axioms cover_8096001

def root_8095995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095995_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095995_left_fuel : Nat := 1
def small_8095995_left_count : Nat := 1
def small_8095995_left_encoded : String := "00000004"
theorem small_8095995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095995_left_root small_8095995_left_fuel small_8095995_left_count small_8095995_left_encoded = true := by
  decide +kernel
theorem small_8095995_left_covered : CoveredBy scale carrier boxes small_8095995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095995_left_root small_8095995_left_fuel small_8095995_left_count small_8095995_left_encoded small_8095995_left_checked

theorem cover_8095995 : CoveredBy scale carrier boxes root_8095995 := by
  apply coveredBy_split_literal root_8095995 small_8095995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8096001 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8096001
#print axioms cover_8095995

def root_8095979 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095979_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095979_left_fuel : Nat := 4
def small_8095979_left_count : Nat := 7
def small_8095979_left_encoded : String := "1151E8FF08A912F900000008120700F8000000080000000100000004"
theorem small_8095979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095979_left_root small_8095979_left_fuel small_8095979_left_count small_8095979_left_encoded = true := by
  decide +kernel
theorem small_8095979_left_covered : CoveredBy scale carrier boxes small_8095979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095979_left_root small_8095979_left_fuel small_8095979_left_count small_8095979_left_encoded small_8095979_left_checked

theorem cover_8095979 : CoveredBy scale carrier boxes root_8095979 := by
  apply coveredBy_split_literal root_8095979 small_8095979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8095995 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8095979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8095995
#print axioms cover_8095979

def root_8095973 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095973_left_fuel : Nat := 1
def small_8095973_left_count : Nat := 1
def small_8095973_left_encoded : String := "00000003"
theorem small_8095973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095973_left_root small_8095973_left_fuel small_8095973_left_count small_8095973_left_encoded = true := by
  decide +kernel
theorem small_8095973_left_covered : CoveredBy scale carrier boxes small_8095973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095973_left_root small_8095973_left_fuel small_8095973_left_count small_8095973_left_encoded small_8095973_left_checked

theorem cover_8095973 : CoveredBy scale carrier boxes root_8095973 := by
  apply coveredBy_split_literal root_8095973 small_8095973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8095979 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8095979
#print axioms cover_8095973

def root_8111014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111014_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111014_left_fuel : Nat := 1
def small_8111014_left_count : Nat := 1
def small_8111014_left_encoded : String := "00000001"
theorem small_8111014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111014_left_root small_8111014_left_fuel small_8111014_left_count small_8111014_left_encoded = true := by
  decide +kernel
theorem small_8111014_left_covered : CoveredBy scale carrier boxes small_8111014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111014_left_root small_8111014_left_fuel small_8111014_left_count small_8111014_left_encoded small_8111014_left_checked

theorem cover_8111014 : CoveredBy scale carrier boxes root_8111014 := by
  apply coveredBy_split_literal root_8111014 small_8111014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3044.root coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8111014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3044.covered
#print axioms cover_8111014

def root_8111013 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111013_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111013_right_fuel : Nat := 15
def small_8111013_right_count : Nat := 43
def small_8111013_right_encoded : String := "120700F808A912FB12073D0408A912FF00000007120701080000000405000100135D450100000000050000FC135D80FD00000003045489F91386ACF8000000010CFD9BFB0F350D04045489FF000000060000000500000002000000070000000700000007135D8101050000FC135D80FD00000003045489F91386ACF8000000010CFD9BFB00000007000000070000000700000007000000000000000212070104000000020000000700000001"
theorem small_8111013_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111013_right_root small_8111013_right_fuel small_8111013_right_count small_8111013_right_encoded = true := by
  decide +kernel
theorem small_8111013_right_covered : CoveredBy scale carrier boxes small_8111013_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111013_right_root small_8111013_right_fuel small_8111013_right_count small_8111013_right_encoded small_8111013_right_checked

theorem cover_8111013 : CoveredBy scale carrier boxes root_8111013 := by
  apply coveredBy_split_literal root_8111013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8111014 small_8111013_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8111014
  · exact small_8111013_right_covered
#print axioms cover_8111013

def root_8111007 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111007_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8111007_left_fuel : Nat := 1
def small_8111007_left_count : Nat := 1
def small_8111007_left_encoded : String := "00000004"
theorem small_8111007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8111007_left_root small_8111007_left_fuel small_8111007_left_count small_8111007_left_encoded = true := by
  decide +kernel
theorem small_8111007_left_covered : CoveredBy scale carrier boxes small_8111007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8111007_left_root small_8111007_left_fuel small_8111007_left_count small_8111007_left_encoded small_8111007_left_checked

theorem cover_8111007 : CoveredBy scale carrier boxes root_8111007 := by
  apply coveredBy_split_literal root_8111007 small_8111007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8111013 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8111007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8111013
#print axioms cover_8111007

def root_8110953 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110953_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110953_left_fuel : Nat := 8
def small_8110953_left_count : Nat := 25
def small_8110953_left_encoded : String := "1151E8FF08A912F912073CF80000000108A912FB12073D0405000100135D45010000000000000008000000070000000200000007120700F808A912FB12073D0405000100135D4501000000000000000A0000000700000002000000070000000100000004"
theorem small_8110953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8110953_left_root small_8110953_left_fuel small_8110953_left_count small_8110953_left_encoded = true := by
  decide +kernel
theorem small_8110953_left_covered : CoveredBy scale carrier boxes small_8110953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8110953_left_root small_8110953_left_fuel small_8110953_left_count small_8110953_left_encoded small_8110953_left_checked

theorem cover_8110953 : CoveredBy scale carrier boxes root_8110953 := by
  apply coveredBy_split_literal root_8110953 small_8110953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8111007 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8110953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8111007
#print axioms cover_8110953

def root_8110948 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110948_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8110948_right_fuel : Nat := 1
def small_8110948_right_count : Nat := 1
def small_8110948_right_encoded : String := "00000003"
theorem small_8110948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8110948_right_root small_8110948_right_fuel small_8110948_right_count small_8110948_right_encoded = true := by
  decide +kernel
theorem small_8110948_right_covered : CoveredBy scale carrier boxes small_8110948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8110948_right_root small_8110948_right_fuel small_8110948_right_count small_8110948_right_encoded small_8110948_right_checked

theorem cover_8110948 : CoveredBy scale carrier boxes root_8110948 := by
  apply coveredBy_split_literal root_8110948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8110953 small_8110948_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8110953
  · exact small_8110948_right_covered
#print axioms cover_8110948

def root_8095972 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8095972 : CoveredBy scale carrier boxes root_8095972 := by
  apply coveredBy_split_literal root_8095972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8095973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8110948 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8095973
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8110948
#print axioms cover_8095972

def root_8095966 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095966_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8095966_left_fuel : Nat := 1
def small_8095966_left_count : Nat := 1
def small_8095966_left_encoded : String := "00000002"
theorem small_8095966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8095966_left_root small_8095966_left_fuel small_8095966_left_count small_8095966_left_encoded = true := by
  decide +kernel
theorem small_8095966_left_covered : CoveredBy scale carrier boxes small_8095966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8095966_left_root small_8095966_left_fuel small_8095966_left_count small_8095966_left_encoded small_8095966_left_checked

theorem cover_8095966 : CoveredBy scale carrier boxes root_8095966 := by
  apply coveredBy_split_literal root_8095966 small_8095966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8095972 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8095966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8095972
#print axioms cover_8095966

def root_8093076 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093076 : CoveredBy scale carrier boxes root_8093076 := by
  apply coveredBy_split_literal root_8093076 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3038.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8095966 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3038.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8095966
#print axioms cover_8093076

def root_8093070 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093070_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093070_left_fuel : Nat := 1
def small_8093070_left_count : Nat := 1
def small_8093070_left_encoded : String := "00000001"
theorem small_8093070_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8093070_left_root small_8093070_left_fuel small_8093070_left_count small_8093070_left_encoded = true := by
  decide +kernel
theorem small_8093070_left_covered : CoveredBy scale carrier boxes small_8093070_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8093070_left_root small_8093070_left_fuel small_8093070_left_count small_8093070_left_encoded small_8093070_left_checked

theorem cover_8093070 : CoveredBy scale carrier boxes root_8093070 := by
  apply coveredBy_split_literal root_8093070 small_8093070_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8093076 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8093070_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8093076
#print axioms cover_8093070

def root_8118745 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118745_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118745_left_fuel : Nat := 19
def small_8118745_left_count : Nat := 223
def small_8118745_left_encoded : String := "1386AD080C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A410100000000078000F8128A7CF900000001067ECE7F0000000812EA5908000000040B4D4404108010FB0DE7C9FC0E6014FD0000000300000008000000090000000200000008128A40F9067ECE7F0000000812EA5908000000040B4D4404000000090000000800000001128A7D01078000F8128A7CF900000001067ECE7F12EA95080B4D440400000009000000080000000412EA5908000000040B4D44040000000910804CFB000000020DE7C9FC0E6014FD000000030000000900000009128A40F9067ECE7F000000090000000900000001000000000F8750FD07800100128A410100000000078000F8128A7CF900000001067ECE7F12EA95080B4D44040000000A10804CFB000000020000000A0000000412EA5908000000040B4D4404108010FB0B4D43FC10804CFD0000000300000009000000090000000210804CFB000000020B4D43FC10804CFD000000030640010012FF71010000000008C000F8000000080000000812FFAD010000000900000000108010FD064001000000000A0000000500000003128A40F9067ECE7F0000000512EA5908000000040B4D4404000000090000000500000001128A7D01078000F8128A7CF900000001067ECE7F0000000512EA5908000000040B4D44040000000900000005000000050000000000000003000000020F878CFB000000020C9A86FC0F878CFD0000000307800100128A41010000000000000008128A7D01078000F8128A7CF900000001067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB0DE7C9FC0E6014FD00000003000000080E5FD8FD08C001000000000800000009000000030000000200000008128A40F9067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB00000009000000020000000800000001000000000F8750FD07800100128A410100000000078000F8128A7CF900000001067ECE7F0000000812EA5908000000040DE7CA040E5FD8FB0B4D43FC10804CFD0000000300000008108010FD064001000000000A00000005000000030000000200000008128A40F9067ECE7F0000000512EA5908000000040DE7CA040E5FD8FB00000005000000020000000500000001128A7D01078000F8128A7CF900000001067ECE7F0000000512EA5908000000040DE7CA040E5FD8FB00000005000000020000000500000005000000000000000300000004"
theorem small_8118745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118745_left_root small_8118745_left_fuel small_8118745_left_count small_8118745_left_encoded = true := by
  decide +kernel
theorem small_8118745_left_covered : CoveredBy scale carrier boxes small_8118745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118745_left_root small_8118745_left_fuel small_8118745_left_count small_8118745_left_encoded small_8118745_left_checked

theorem cover_8118745 : CoveredBy scale carrier boxes root_8118745 := by
  apply coveredBy_split_literal root_8118745 small_8118745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3047.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8118745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3047.covered
#print axioms cover_8118745

def root_8118739 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118739_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118739_left_fuel : Nat := 1
def small_8118739_left_count : Nat := 1
def small_8118739_left_encoded : String := "00000003"
theorem small_8118739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118739_left_root small_8118739_left_fuel small_8118739_left_count small_8118739_left_encoded = true := by
  decide +kernel
theorem small_8118739_left_covered : CoveredBy scale carrier boxes small_8118739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118739_left_root small_8118739_left_fuel small_8118739_left_count small_8118739_left_encoded small_8118739_left_checked

theorem cover_8118739 : CoveredBy scale carrier boxes root_8118739 := by
  apply coveredBy_split_literal root_8118739 small_8118739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118745 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8118739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118745
#print axioms cover_8118739

def root_8118738 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118738_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118738_right_fuel : Nat := 15
def small_8118738_right_count : Nat := 89
def small_8118738_right_encoded : String := "0F34D0FC045489FF1386AD080C9A87040F8750FB0780010000000008128A7D01078000F800000008128A40F90AD3577D0000000800000008000000010000000000000002000000080000000413867108000000040C9A87040F8750FB07800100128A410100000000078000F8128A7CF9000000010AD3577D10D13CFC00000003022A457F0000000813E1C508000000040B4D4404000000050000000600000008128A40F90AD3577D10D13CFC00000003022A457F00000008000000060000000600000001128A7D01078000F8128A7CF9000000010AD3577D10D13CFC00000003022A457F13E2010800000009000000040000000910D100FC0000000600000003128A40F9000000090000000100000000000000020F878CFB0000000207800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF9000000010AD3577D10D13CFC000000030000000600000006000000060000000000000003"
theorem small_8118738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118738_right_root small_8118738_right_fuel small_8118738_right_count small_8118738_right_encoded = true := by
  decide +kernel
theorem small_8118738_right_covered : CoveredBy scale carrier boxes small_8118738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118738_right_root small_8118738_right_fuel small_8118738_right_count small_8118738_right_encoded small_8118738_right_checked

theorem cover_8118738 : CoveredBy scale carrier boxes root_8118738 := by
  apply coveredBy_split_literal root_8118738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118739 small_8118738_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118739
  · exact small_8118738_right_covered
#print axioms cover_8118738

def root_8118733 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118733_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118733_right_fuel : Nat := 1
def small_8118733_right_count : Nat := 1
def small_8118733_right_encoded : String := "00000002"
theorem small_8118733_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118733_right_root small_8118733_right_fuel small_8118733_right_count small_8118733_right_encoded = true := by
  decide +kernel
theorem small_8118733_right_covered : CoveredBy scale carrier boxes small_8118733_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118733_right_root small_8118733_right_fuel small_8118733_right_count small_8118733_right_encoded small_8118733_right_checked

theorem cover_8118733 : CoveredBy scale carrier boxes root_8118733 := by
  apply coveredBy_split_literal root_8118733 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118738 small_8118733_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118738
  · exact small_8118733_right_covered
#print axioms cover_8118733

def root_8118732 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118732_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118732_right_fuel : Nat := 31
def small_8118732_right_count : Nat := 265
def small_8118732_right_encoded : String := "0F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D01078000F8128A7CF9000000010AD3577B10D13D04067ECE7F0000000512EA5908000000040B4D43FC10804CFD0000000300000008000000050000000210D101040000000200000008128A40F9000000050000000100000000000000030000000413867108000000040C9A86FC0F878CFD0000000307800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080DE7C9FC000000060E5FD8FD000000080000000300000004000000060000000210D10104000000020000000600000006000000000F8750FD07800100128A410100000000078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080B4D43FC00000008108010FD064001000000000812FFAD0108C000F8000000080000000500000000000000030000000413E1C508000000040B4D43FC10804CFD00000003064001000000000612FFAD010000000600000000108010FD0640010012FF71010000000008C000F811FC24F9000000010BE879BB1011AD040115233F0000000813F85908000000040AA6A27C0000000610ED70FD05A001001331350100000000096000F80000000800000006133171010000000600000000000000030000000210117104000000020000000611FBE8F90BE879BB00000006000000060000000112FFAD0108C000F811FC24F9000000010BE879BB1011AD040115233F13F895080AA6A27C10EDACFD0000000306E001000000000600000005000000050000000413F85908000000040AA6A27C0000000610ED70FD00000005000000030000000210117104000000020000000611FBE8F90BE879BB00000005000000060000000100000000000000030000000210D1010400000002022A457F0000000800000006128A40F90AD3577B10D13D04022A457F13E201080B4D43FC000000080000000500000004000000060000000210D10104000000020000000600000001128A7D01078000F8128A7CF9000000010AD3577B10D13D04022A457F13E201080B4D43FC10804CFD0000000308C0010011FBE9010000000008C000F8000000080000000500000005000000050000000413E1C508000000040B4D43FC10804CFD0000000308C001000000000611FC25010000000600000000108010FD08C0010011FBE9010000000008C000F811FC24F9000000010BE879BB000000051011710400000002000000050000000500000005000000030000000210D1010400000002022A457F13E201080B4D43FC10804CFD0000000300000006000000050000000400000006128A40F90AD3577B0000000510D1010400000002000000050000000100000000000000030F34D0FC0000000800000003"
theorem small_8118732_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118732_right_root small_8118732_right_fuel small_8118732_right_count small_8118732_right_encoded = true := by
  decide +kernel
theorem small_8118732_right_covered : CoveredBy scale carrier boxes small_8118732_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118732_right_root small_8118732_right_fuel small_8118732_right_count small_8118732_right_encoded small_8118732_right_checked

theorem cover_8118732 : CoveredBy scale carrier boxes root_8118732 := by
  apply coveredBy_split_literal root_8118732 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118733 small_8118732_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118733
  · exact small_8118732_right_covered
#print axioms cover_8118732

def root_8118726 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118726_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118726_left_fuel : Nat := 1
def small_8118726_left_count : Nat := 1
def small_8118726_left_encoded : String := "00000001"
theorem small_8118726_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118726_left_root small_8118726_left_fuel small_8118726_left_count small_8118726_left_encoded = true := by
  decide +kernel
theorem small_8118726_left_covered : CoveredBy scale carrier boxes small_8118726_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118726_left_root small_8118726_left_fuel small_8118726_left_count small_8118726_left_encoded small_8118726_left_checked

theorem cover_8118726 : CoveredBy scale carrier boxes root_8118726 := by
  apply coveredBy_split_literal root_8118726 small_8118726_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118732 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8118726_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118732
#print axioms cover_8118726

def root_8118725 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118725_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118725_right_fuel : Nat := 18
def small_8118725_right_count : Nat := 139
def small_8118725_right_encoded : String := "135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A410100000000028000F813D7ECF900000001067ECE7F000000080000000900000009128A7D01028000F80000000900000005000000000F8750FD0000000500000003000000020F878CFB000000020C9A86FC0F878CFD0000000307800100128A41010000000000000008128A7D0100000005000000000F8750FD00000005000000030000000413867108000000040C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A41010000000000000007000000090F8750FD07800100128A410100000000028000F800000009000000050000000500000003000000020F878CFB000000020C9A86FC0F878CFD00000003000000060F8750FD07800100128A410100000000028000F813D7ECF900000001022A457F0000000513E1C50800000004000000050000000500000005000000030F34D0FC045489FF1386AD080C9A87040F8750FB07800100128A41010000000000000008128A7D01028000F80000000900000006000000000000000200000008000000040000000600000003000000020F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003000000080F8750FD00000005000000030000000413867108000000040C9A86FC000000060F8750FD078001000000000600000005000000030F34D0FC000000060000000300000001"
theorem small_8118725_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118725_right_root small_8118725_right_fuel small_8118725_right_count small_8118725_right_encoded = true := by
  decide +kernel
theorem small_8118725_right_covered : CoveredBy scale carrier boxes small_8118725_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118725_right_root small_8118725_right_fuel small_8118725_right_count small_8118725_right_encoded small_8118725_right_checked

theorem cover_8118725 : CoveredBy scale carrier boxes root_8118725 := by
  apply coveredBy_split_literal root_8118725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118726 small_8118725_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118726
  · exact small_8118725_right_covered
#print axioms cover_8118725

def root_8118720 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118720_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8118720_right_fuel : Nat := 1
def small_8118720_right_count : Nat := 1
def small_8118720_right_encoded : String := "00000000"
theorem small_8118720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8118720_right_root small_8118720_right_fuel small_8118720_right_count small_8118720_right_encoded = true := by
  decide +kernel
theorem small_8118720_right_covered : CoveredBy scale carrier boxes small_8118720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8118720_right_root small_8118720_right_fuel small_8118720_right_count small_8118720_right_encoded small_8118720_right_checked

theorem cover_8118720 : CoveredBy scale carrier boxes root_8118720 := by
  apply coveredBy_split_literal root_8118720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118725 small_8118720_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118725
  · exact small_8118720_right_covered
#print axioms cover_8118720

def root_8116444 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8116444 : CoveredBy scale carrier boxes root_8116444 := by
  apply coveredBy_split_literal root_8116444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3046.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8118720 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3046.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8118720
#print axioms cover_8116444

def root_8116438 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116438_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116438_left_fuel : Nat := 1
def small_8116438_left_count : Nat := 1
def small_8116438_left_encoded : String := "00000004"
theorem small_8116438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116438_left_root small_8116438_left_fuel small_8116438_left_count small_8116438_left_encoded = true := by
  decide +kernel
theorem small_8116438_left_covered : CoveredBy scale carrier boxes small_8116438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116438_left_root small_8116438_left_fuel small_8116438_left_count small_8116438_left_encoded small_8116438_left_checked

theorem cover_8116438 : CoveredBy scale carrier boxes root_8116438 := by
  apply coveredBy_split_literal root_8116438 small_8116438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8116444 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8116438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8116444
#print axioms cover_8116438

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558
