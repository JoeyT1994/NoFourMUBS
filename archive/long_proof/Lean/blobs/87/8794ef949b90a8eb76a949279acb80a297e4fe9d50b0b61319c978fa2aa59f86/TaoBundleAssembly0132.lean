import TaoBundleAssembly0131
import TaoBundleChunkBatch0497
import TaoBundleChunkBatch0498
import TaoBundleChunkBatch0499
import TaoBundleChunkBatch0500
import TaoBundleChunkBatch0501
import TaoBundleChunkBatch0502
import TaoBundleChunkBatch0503
import TaoBundleChunkBatch0504
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132
def root_5309463 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309463_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309463_left_fuel : Nat := 32
def small_5309463_left_count : Nat := 179
def small_5309463_left_encoded : String := "12073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF12073D0805000106135D4507000000030CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0CFD9BFF0F350D080C9A86F80000000A000000080000000400000008000000020000000A135D81070CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA00000008000000020000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87080F8750FF078001060000000A128A7D070AD357770000000810D10100000000000DE7C9F80000000A0000000800000003000000040000000A0F8750FB0000000A000000020F8750F90C9A86FA0F878CFB000000020C9A87080F8750FF07800106000000080000000800000004000000080F8750FB0C9A87080F8750FF07800106128A4107000000030000000A128A7D070AD357770000000810D10100000000000B4D43F810804CF9000000010B4D43FA00000008108010FB0000000A000000020000000900000003000000040000000A0000000200000001000000040F34D108000000040000000A0F34D0FA0CFD9BFF0F350D080C9A86F80F878CF90000000100000008000000080000000400000008000000020F34D0F80CFD9BFB0000000A0F34D0FA0000000A0000000200000001000000030000000412070108000000040000000A120700FA08A912FF12073D0805000106135D4507000000030CFD9BF7000000080F34D100000000000CFD9BF90000000800000005135D81070CFD9BF7000000080F34D100000000000CFD9BF90F350CF8000000010000000800000008000000030000000412070108000000040000000800000002120700F808A912FB0000000A120700FA00000005000000020000000100000000"
theorem small_5309463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309463_left_root small_5309463_left_fuel small_5309463_left_count small_5309463_left_encoded = true := by
  decide +kernel
theorem small_5309463_left_covered : CoveredBy scale carrier boxes small_5309463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309463_left_root small_5309463_left_fuel small_5309463_left_count small_5309463_left_encoded small_5309463_left_checked

theorem cover_5309463 : CoveredBy scale carrier boxes root_5309463 := by
  apply coveredBy_split_literal root_5309463 small_5309463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.root_5309843 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5309463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0131.cover_5309843
#print axioms cover_5309463

def root_5309457 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309457_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5309457_left_fuel : Nat := 1
def small_5309457_left_count : Nat := 1
def small_5309457_left_encoded : String := "00000004"
theorem small_5309457_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5309457_left_root small_5309457_left_fuel small_5309457_left_count small_5309457_left_encoded = true := by
  decide +kernel
theorem small_5309457_left_covered : CoveredBy scale carrier boxes small_5309457_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5309457_left_root small_5309457_left_fuel small_5309457_left_count small_5309457_left_encoded small_5309457_left_checked

theorem cover_5309457 : CoveredBy scale carrier boxes root_5309457 := by
  apply coveredBy_split_literal root_5309457 small_5309457_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5309463 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5309457_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5309463
#print axioms cover_5309457

def root_5307111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307111 : CoveredBy scale carrier boxes root_5307111 := by
  apply coveredBy_split_literal root_5307111 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1989.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5309457 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1989.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5309457
#print axioms cover_5307111

def root_5307105 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307105_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307105_left_fuel : Nat := 1
def small_5307105_left_count : Nat := 1
def small_5307105_left_encoded : String := "00000003"
theorem small_5307105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307105_left_root small_5307105_left_fuel small_5307105_left_count small_5307105_left_encoded = true := by
  decide +kernel
theorem small_5307105_left_covered : CoveredBy scale carrier boxes small_5307105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307105_left_root small_5307105_left_fuel small_5307105_left_count small_5307105_left_encoded small_5307105_left_checked

theorem cover_5307105 : CoveredBy scale carrier boxes root_5307105 := by
  apply coveredBy_split_literal root_5307105 small_5307105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307111 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5307105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307111
#print axioms cover_5307105

def root_5324451 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5324451 : CoveredBy scale carrier boxes root_5324451 := by
  apply coveredBy_split_literal root_5324451 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1996.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1997.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1996.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1997.covered
#print axioms cover_5324451

def root_5324446 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324446_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324446_right_fuel : Nat := 1
def small_5324446_right_count : Nat := 1
def small_5324446_right_encoded : String := "00000004"
theorem small_5324446_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5324446_right_root small_5324446_right_fuel small_5324446_right_count small_5324446_right_encoded = true := by
  decide +kernel
theorem small_5324446_right_covered : CoveredBy scale carrier boxes small_5324446_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5324446_right_root small_5324446_right_fuel small_5324446_right_count small_5324446_right_encoded small_5324446_right_checked

theorem cover_5324446 : CoveredBy scale carrier boxes root_5324446 := by
  apply coveredBy_split_literal root_5324446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5324451 small_5324446_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5324451
  · exact small_5324446_right_covered
#print axioms cover_5324446

def root_5331676 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5331676 : CoveredBy scale carrier boxes root_5331676 := by
  apply coveredBy_split_literal root_5331676 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1999.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2000.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1999.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2000.covered
#print axioms cover_5331676

def root_5331671 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331671_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331671_right_fuel : Nat := 1
def small_5331671_right_count : Nat := 1
def small_5331671_right_encoded : String := "00000004"
theorem small_5331671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331671_right_root small_5331671_right_fuel small_5331671_right_count small_5331671_right_encoded = true := by
  decide +kernel
theorem small_5331671_right_covered : CoveredBy scale carrier boxes small_5331671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331671_right_root small_5331671_right_fuel small_5331671_right_count small_5331671_right_encoded small_5331671_right_checked

theorem cover_5331671 : CoveredBy scale carrier boxes root_5331671 := by
  apply coveredBy_split_literal root_5331671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331676 small_5331671_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331676
  · exact small_5331671_right_covered
#print axioms cover_5331671

def root_5331670 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331670_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331670_right_fuel : Nat := 23
def small_5331670_right_count : Nat := 275
def small_5331670_right_encoded : String := "1207010800000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF00000008000000080F350D06045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000080F8750FB0C9A8706000000080F878D07000000080000000300000002000000080000000413867108000000040C9A86F80F878CF9000000010C9A86FA000000080F8750FB0C9A870600000008000000080000000200000008000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF1386AD080C9A86FA000000060F8750FB00000006000000020000000413867108000000040C9A86FA000000060F8750FB067ECE770000000A00000006000000020F350D06045489FF1386AD080C9A86FA0000000A0F8750FB0000000A000000020000000413867108000000040000000A000000030F34D0FA0CFD9C07000000080F350D06045489FF00000008000000080000000300000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF000000061386710800000004000000060F350D06045489FF1386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A87060F87510700000003022A45770000000800000006000000060F8750FB0C9A87060F87510700000003022A457713E20100067ECE7F12EA95080DE7C9F800000006000000080000000412EA59080000000400000008000000000000000600000006000000020F8750F90C9A86FA0F878CFB00000002000000080F8750FB0C9A87060F87510700000003022A45770000000813E1C50000000000067ECE7F00000006000000080F878D07000000050000000300000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A870600000008000000060F8750FB0C9A87060F87510700000003022A457700000008000000090F878D070000000600000003000000020F8750F90C9A86FA000000080F8750FB0C9A8706000000080F878D0700000008000000030000000200000001000000030F34D0FA0CFD9C07000000080F350D06045489FF000000080000000800000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D06045489FF1386AD080C9A86FA0F878CFB000000020C9A87060F875107000000030000000A000000060F8750FB00000009000000020000000413867108000000040C9A86FA0F878CFB000000020C9A87060F875107000000030000000A000000060F8750FB0000000900000002000000030F34D0FA0CFD9C070F34D10600000003000000060F350D06045489FF1386AD080C9A87060F8751070000000300000005000000060000000413867108000000040C9A87060000000500000006000000030000000200000001"
theorem small_5331670_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331670_right_root small_5331670_right_fuel small_5331670_right_count small_5331670_right_encoded = true := by
  decide +kernel
theorem small_5331670_right_covered : CoveredBy scale carrier boxes small_5331670_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331670_right_root small_5331670_right_fuel small_5331670_right_count small_5331670_right_encoded small_5331670_right_checked

theorem cover_5331670 : CoveredBy scale carrier boxes root_5331670 := by
  apply coveredBy_split_literal root_5331670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331671 small_5331670_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331671
  · exact small_5331670_right_covered
#print axioms cover_5331670

def root_5331665 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331665_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331665_right_fuel : Nat := 1
def small_5331665_right_count : Nat := 1
def small_5331665_right_encoded : String := "00000003"
theorem small_5331665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331665_right_root small_5331665_right_fuel small_5331665_right_count small_5331665_right_encoded = true := by
  decide +kernel
theorem small_5331665_right_covered : CoveredBy scale carrier boxes small_5331665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331665_right_root small_5331665_right_fuel small_5331665_right_count small_5331665_right_encoded small_5331665_right_checked

theorem cover_5331665 : CoveredBy scale carrier boxes root_5331665 := by
  apply coveredBy_split_literal root_5331665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331670 small_5331665_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331670
  · exact small_5331665_right_covered
#print axioms cover_5331665

def root_5331489 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331489_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331489_left_fuel : Nat := 14
def small_5331489_left_count : Nat := 79
def small_5331489_left_encoded : String := "120701060000000308A912FF12073D08045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07000000051386AD060CFD9BFF000000050F34D1080000000400000005000000030F34D0FA00000008000000020F34D0F80CFD9BFB0F350CFA0000000204548A07000000061386AD060CFD9BFF000000060F34D1080000000400000006000000030F34D0FA0000000600000002000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB000000060F34D0FA00000006000000020F34D0F80000000600000001000000041207010800000004045489F71386AD000CFD9BF90F350CF800000001000000080F34D0F80CFD9BFB000000060F34D0FA0000000600000002000000010000000013867100000000000CFD9BF9000000060F34D0F80000000600000001"
theorem small_5331489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331489_left_root small_5331489_left_fuel small_5331489_left_count small_5331489_left_encoded = true := by
  decide +kernel
theorem small_5331489_left_covered : CoveredBy scale carrier boxes small_5331489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331489_left_root small_5331489_left_fuel small_5331489_left_count small_5331489_left_encoded small_5331489_left_checked

theorem cover_5331489 : CoveredBy scale carrier boxes root_5331489 := by
  apply coveredBy_split_literal root_5331489 small_5331489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331665 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5331489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331665
#print axioms cover_5331489

def root_5331483 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331483_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331483_left_fuel : Nat := 1
def small_5331483_left_count : Nat := 1
def small_5331483_left_encoded : String := "00000002"
theorem small_5331483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331483_left_root small_5331483_left_fuel small_5331483_left_count small_5331483_left_encoded = true := by
  decide +kernel
theorem small_5331483_left_covered : CoveredBy scale carrier boxes small_5331483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331483_left_root small_5331483_left_fuel small_5331483_left_count small_5331483_left_encoded small_5331483_left_checked

theorem cover_5331483 : CoveredBy scale carrier boxes root_5331483 := by
  apply coveredBy_split_literal root_5331483 small_5331483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331489 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5331483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331489
#print axioms cover_5331483

def root_5331482 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331482_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331482_right_fuel : Nat := 20
def small_5331482_right_count : Nat := 151
def small_5331482_right_encoded : String := "120700FA08A91307120701060000000308A912FF12073D08045489F70000000800000006000000041207010800000004045489F7000000080000000612073D0608A912FF12073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000080F350D060CFD9BFF000000080000000800000003000000080F34D0F8045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9BFF00000006000000080F350D060CFD9BFF0F350D080C9A8706000000050F878D070000000800000003000000040F34D108000000040000000800000003138670FA0CFD9C07000000080F350D06000000050000000300000002000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87060F8751070000000300000005000000060F8750F90C9A8706000000080000000800000001000000040F34D108000000040000000800000003138670FA0CFD9C07000000080F350D060CFD9BFF000000080000000800000003000000020F34D0F8045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF000000060000000500000003138670FA0CFD9C0700000006000000050000000200000001000000041207010800000004045489F70000000813867100000000000CFD9BF90F350CF800000001000000080F34D0F8045489FB1386ACFA000000020CFD9C07000000060F350D06000000050000000300000008000000010000000300000002"
theorem small_5331482_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331482_right_root small_5331482_right_fuel small_5331482_right_count small_5331482_right_encoded = true := by
  decide +kernel
theorem small_5331482_right_covered : CoveredBy scale carrier boxes small_5331482_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331482_right_root small_5331482_right_fuel small_5331482_right_count small_5331482_right_encoded small_5331482_right_checked

theorem cover_5331482 : CoveredBy scale carrier boxes root_5331482 := by
  apply coveredBy_split_literal root_5331482 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331483 small_5331482_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331483
  · exact small_5331482_right_covered
#print axioms cover_5331482

def root_5331476 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331476_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331476_left_fuel : Nat := 1
def small_5331476_left_count : Nat := 1
def small_5331476_left_encoded : String := "00000001"
theorem small_5331476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331476_left_root small_5331476_left_fuel small_5331476_left_count small_5331476_left_encoded = true := by
  decide +kernel
theorem small_5331476_left_covered : CoveredBy scale carrier boxes small_5331476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331476_left_root small_5331476_left_fuel small_5331476_left_count small_5331476_left_encoded small_5331476_left_checked

theorem cover_5331476 : CoveredBy scale carrier boxes root_5331476 := by
  apply coveredBy_split_literal root_5331476 small_5331476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331482 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5331476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331482
#print axioms cover_5331476

def root_5331475 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331475_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331475_right_fuel : Nat := 24
def small_5331475_right_count : Nat := 357
def small_5331475_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120701060000000308A912FF12073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB000000060F34D0FA0000000600000002138670F80CFD9BFB0000000600000006000000010000000000000006000000041207010800000004045489F71386AD00045489F900000006138670F80CFD9BFB000000060000000600000001000000000000000612073D0608A912FF12073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86FA000000060F8750FB0000000600000002000000040F34D10800000004000000060F350D060CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87060F875107000000030000000A0F878D070C9A87080F8750FF000000060000000400000006000000030F8750FB0C9A87060F875107000000030000000A0F878D070C9A87080F8750FF00000007000000040000000A0000000300000002000000040F34D108000000040000000A000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF000000060F34D10800000004000000060F350D060CFD9BFF0F350D080C9A8706000000050F878D070C9A8708000000050000000600000003000000040F34D108000000040000000A0000000300000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86FA0000000600000009000000040F34D10800000004000000060F350D060000000A000000030F34D0FA0CFD9C070F34D10600000003000000060F350D0600000005000000030000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87060F8751070000000300000005000000060F8750FB0C9A87060F875107000000030C9A87080F8750FF0000000600000004000000060F878D07000000060000000300000002000000040F34D108000000040C9A86FA0000000600000009000000030F34D0FA0CFD9C070F34D10600000003000000060F350D060CFD9BFF00000006000000050000000300000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86FA0000000500000009000000040F34D1080000000400000009000000030F34D0FA0CFD9C0700000006000000050000000200000001000000041207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003045489FF1386AD080C9A86FA00000006000000090000000413867108000000040000000A0000000A0F34D0FA0CFD9C070F34D10600000003000000060000000A00000002138670F80000000A00000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C07000000090F350D060000000A000000030F34D0FA0CFD9C07000000060F350D06000000050000000300000002138670F80CFD9BFB0F350CFA00000002000000090F34D0FA00000005000000020000000100000003120700FA08A91307120701060000000308A912FF0000000612070108000000040000000612073D0608A912FF12073D08045489F71386AD00045489F91386ACF800000001045489FB1386ACFA000000020CFD9C070F34D10600000003000000060F350D060000000500000003138670FA0000000500000002138670F80000000500000001000000001386710000000000045489F91386ACF800000001045489FB1386ACFA000000020CFD9C0700000006000000050000000500000005000000041207010800000004045489F71386AD00000000050000000000000005000000030000000200000001"
theorem small_5331475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331475_right_root small_5331475_right_fuel small_5331475_right_count small_5331475_right_encoded = true := by
  decide +kernel
theorem small_5331475_right_covered : CoveredBy scale carrier boxes small_5331475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331475_right_root small_5331475_right_fuel small_5331475_right_count small_5331475_right_encoded small_5331475_right_checked

theorem cover_5331475 : CoveredBy scale carrier boxes root_5331475 := by
  apply coveredBy_split_literal root_5331475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331476 small_5331475_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331476
  · exact small_5331475_right_covered
#print axioms cover_5331475

def root_5331469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331469_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5331469_left_fuel : Nat := 1
def small_5331469_left_count : Nat := 1
def small_5331469_left_encoded : String := "00000000"
theorem small_5331469_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5331469_left_root small_5331469_left_fuel small_5331469_left_count small_5331469_left_encoded = true := by
  decide +kernel
theorem small_5331469_left_covered : CoveredBy scale carrier boxes small_5331469_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5331469_left_root small_5331469_left_fuel small_5331469_left_count small_5331469_left_encoded small_5331469_left_checked

theorem cover_5331469 : CoveredBy scale carrier boxes root_5331469 := by
  apply coveredBy_split_literal root_5331469 small_5331469_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331475 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5331469_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331475
#print axioms cover_5331469

def root_5329507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5329507 : CoveredBy scale carrier boxes root_5329507 := by
  apply coveredBy_split_literal root_5329507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1998.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5331469 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1998.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5331469
#print axioms cover_5329507

def root_5329501 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5329501_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5329501_left_fuel : Nat := 1
def small_5329501_left_count : Nat := 1
def small_5329501_left_encoded : String := "00000004"
theorem small_5329501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5329501_left_root small_5329501_left_fuel small_5329501_left_count small_5329501_left_encoded = true := by
  decide +kernel
theorem small_5329501_left_covered : CoveredBy scale carrier boxes small_5329501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5329501_left_root small_5329501_left_fuel small_5329501_left_count small_5329501_left_encoded small_5329501_left_checked

theorem cover_5329501 : CoveredBy scale carrier boxes root_5329501 := by
  apply coveredBy_split_literal root_5329501 small_5329501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5329507 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5329501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5329507
#print axioms cover_5329501

def root_5324445 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5324445 : CoveredBy scale carrier boxes root_5324445 := by
  apply coveredBy_split_literal root_5324445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5324446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5329501 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5324446
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5329501
#print axioms cover_5324445

def root_5324440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324440_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5324440_right_fuel : Nat := 1
def small_5324440_right_count : Nat := 1
def small_5324440_right_encoded : String := "00000003"
theorem small_5324440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5324440_right_root small_5324440_right_fuel small_5324440_right_count small_5324440_right_encoded = true := by
  decide +kernel
theorem small_5324440_right_covered : CoveredBy scale carrier boxes small_5324440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5324440_right_root small_5324440_right_fuel small_5324440_right_count small_5324440_right_encoded small_5324440_right_checked

theorem cover_5324440 : CoveredBy scale carrier boxes root_5324440 := by
  apply coveredBy_split_literal root_5324440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5324445 small_5324440_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5324445
  · exact small_5324440_right_covered
#print axioms cover_5324440

def root_5307104 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307104 : CoveredBy scale carrier boxes root_5307104 := by
  apply coveredBy_split_literal root_5307104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5324440 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307105
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5324440
#print axioms cover_5307104

def root_5307098 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307098_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307098_left_fuel : Nat := 1
def small_5307098_left_count : Nat := 1
def small_5307098_left_encoded : String := "00000002"
theorem small_5307098_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307098_left_root small_5307098_left_fuel small_5307098_left_count small_5307098_left_encoded = true := by
  decide +kernel
theorem small_5307098_left_covered : CoveredBy scale carrier boxes small_5307098_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307098_left_root small_5307098_left_fuel small_5307098_left_count small_5307098_left_encoded small_5307098_left_checked

theorem cover_5307098 : CoveredBy scale carrier boxes root_5307098 := by
  apply coveredBy_split_literal root_5307098 small_5307098_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307104 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307098_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307104
#print axioms cover_5307098

def root_5341227 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341227_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341227_right_fuel : Nat := 28
def small_5341227_right_count : Nat := 231
def small_5341227_right_encoded : String := "0F34D108000000040C9A86F80F878CF900000001078000FA128A7CFB0000000207800106128A4107000000030000000A128A7D07022A457713E201000AD3577F10D13D080DE7C9F8000000090E5FD8F90000000A00000001000000040000000A000000000000000900000003000000090F8750F9078000FA128A7CFB0000000207800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F80000000A108010F908C000FA0000000A11FBE8FB0000000A00000002000000010000000410D10108000000040000000A0000000013E1C500000000000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB000000020000000900000009108010F908C000FA11FC24FB000000020640010612FF710700000003011523370000000A13F85900000000000BE879BF1011AD080AA6A2780000000910ED70F9096000FA11AABCFB0000000205A00106000000091331710700000009000000030000000900000001000000040000000912FFAD070115233713F895000BE879BF1011AD080AA6A27810EDACF900000001096000FA0000000A0000000500000005000000041011710800000004000000090000000013F85900000000000BE879BF1011AD080AA6A2780000000910ED70F9000000050000000100000004000000090000000311FBE8FB0640010612FF710700000003011523370000000A0000000912FFAD070115233700000005000000090000000300000002000000010000000410D101080000000400000009128A7D07022A457713E201000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB0000000208C0010611FBE907000000030000000A0000000500000005000000050000000410D10108000000040B4D43F810804CF90000000100000009000000050000000013E1C500000000000AD3577F10D13D080B4D43F810804CF90000000108C000FA11FC24FB000000020000000900000009108010F908C000FA11FC24FB0000000208C0010611FBE90700000003011523370000000513F85900000000000BE879BF00000005000000090000000500000005000000010000000410D10108000000040000000900000003128A40FB07800106128A410700000003022A457713E201000AD3577F10D13D080B4D43F80000000A00000005000000040000000A0000000013E1C500000000000AD3577F0000000900000009128A7D07022A45770000000513E1C500000000000AD3577F0000000500000009000000030000000200000001"
theorem small_5341227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341227_right_root small_5341227_right_fuel small_5341227_right_count small_5341227_right_encoded = true := by
  decide +kernel
theorem small_5341227_right_covered : CoveredBy scale carrier boxes small_5341227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341227_right_root small_5341227_right_fuel small_5341227_right_count small_5341227_right_encoded small_5341227_right_checked

theorem cover_5341227 : CoveredBy scale carrier boxes root_5341227 := by
  apply coveredBy_split_literal root_5341227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2003.root small_5341227_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2003.covered
  · exact small_5341227_right_covered
#print axioms cover_5341227

def root_5341221 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341221_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341221_left_fuel : Nat := 1
def small_5341221_left_count : Nat := 1
def small_5341221_left_encoded : String := "00000001"
theorem small_5341221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341221_left_root small_5341221_left_fuel small_5341221_left_count small_5341221_left_encoded = true := by
  decide +kernel
theorem small_5341221_left_covered : CoveredBy scale carrier boxes small_5341221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341221_left_root small_5341221_left_fuel small_5341221_left_count small_5341221_left_encoded small_5341221_left_checked

theorem cover_5341221 : CoveredBy scale carrier boxes root_5341221 := by
  apply coveredBy_split_literal root_5341221 small_5341221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5341227 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5341221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5341227
#print axioms cover_5341221

def root_5341220 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341220_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341220_right_fuel : Nat := 15
def small_5341220_right_count : Nat := 69
def small_5341220_right_encoded : String := "0F34D0F80CFD9BFF0F350D080C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003022A45770000000A13E1C500000000000AD3577910D13CF8000000010B4D4408000000050000000900000005128A7D07022A457713E201000AD3577910D13CF80000000100000007000000070000000013E1C500000000000AD3577910D13CF800000001000000070000000700000003128A40FB07800106128A410700000003022A45770000000A00000007128A7D07000000070000000300000002000000040F878CFF00000004078000FA128A7CFB00000002078001060000000A128A7D07022A45770000000A000000090000000300000009000000040F34D108000000040000000900000001"
theorem small_5341220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341220_right_root small_5341220_right_fuel small_5341220_right_count small_5341220_right_encoded = true := by
  decide +kernel
theorem small_5341220_right_covered : CoveredBy scale carrier boxes small_5341220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341220_right_root small_5341220_right_fuel small_5341220_right_count small_5341220_right_encoded small_5341220_right_checked

theorem cover_5341220 : CoveredBy scale carrier boxes root_5341220 := by
  apply coveredBy_split_literal root_5341220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5341221 small_5341220_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5341221
  · exact small_5341220_right_covered
#print axioms cover_5341220

def root_5341214 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341214_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5341214_left_fuel : Nat := 1
def small_5341214_left_count : Nat := 1
def small_5341214_left_encoded : String := "00000000"
theorem small_5341214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5341214_left_root small_5341214_left_fuel small_5341214_left_count small_5341214_left_encoded = true := by
  decide +kernel
theorem small_5341214_left_covered : CoveredBy scale carrier boxes small_5341214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5341214_left_root small_5341214_left_fuel small_5341214_left_count small_5341214_left_encoded small_5341214_left_checked

theorem cover_5341214 : CoveredBy scale carrier boxes root_5341214 := by
  apply coveredBy_split_literal root_5341214 small_5341214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5341220 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5341214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5341220
#print axioms cover_5341214

def root_5340554 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340554_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340554_left_fuel : Nat := 23
def small_5340554_left_count : Nat := 311
def small_5340554_left_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000A0E5FD8F90B4D4408108010FF00000007000000040000000A00000001128A7D07067ECE7712EA95000DE7C9F80E6014F90000000100000007000000070000000012EA5900000000000DE7C9F80E6014F900000001000000070000000700000003128A40FB07800106128A410700000003067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000700000007128A7D07067ECE7700000007000000070000000300000002000000040F878CFF00000004078000FA128A7CFB00000002078001060000000A128A7D07067ECE770000000A12EA5900000000000DE7C9F80E6014F9000000010000000A0E5FD8F90DE7CA080E5FD8FF08C000FA11FC24FB0000000208C00106000000070000000700000007000000040000000A0000000100000003128A40FB078001060000000A128A7D07067ECE770000000A12EA5900000000000DE7C9F80000000A0E5FD8F9000000050000000100000003000000020F8750F90C9A87080F8750FF078000FA128A7CFB0000000207800106128A410700000003067ECE7712EA95000B4D43F810804CF9000000010B4D4408000000060000000A000000060000000012EA5900000000000B4D43F810804CF9000000010B4D4408108010FF000000070000000410804CFF0000000408C000FA11FC24FB00000002064001060000000A0000000711FBE8FB0000000700000002108010F90B4D4408108010FF000000070000000410804CFF0000000408C000FA000000090000000500000001128A7D07067ECE770000000512EA5900000000000B4D43F810804CF900000001000000070000000500000003128A40FB07800106128A410700000003067ECE770000000512EA5900000000000B4D43F810804CF90000000100000007000000050000000500000002000000040F878CFF00000004078000FA128A7CFB0000000207800106128A410700000003067ECE770000000A12EA5900000000000B4D43F810804CF9000000010000000A108010F90DE7CA080E5FD8FF08C000FA11FC24FB0000000206400106000000060000000500000005000000040000000A00000001128A7D07067ECE770000000512EA5900000000000B4D43F810804CF9000000010DE7CA080E5FD8FF0000000500000004000000050000000500000003128A40FB07800106128A410700000003067ECE770000000512EA5900000000000B4D43F810804CF9000000010000000A00000005000000050000000200000001000000040F34D108000000040C9A86F80F878CF9000000010000000A0F8750F9078000FA128A7CFB00000002078001060000000A128A7D07067ECE770000000A12EA5900000000000AD3577F10D13D080B4D43F810804CF9000000010000000A000000050000000410D10108000000040000000A00000003128A40FB078001060000000A0000000500000002000000010F34D0F80CFD9BFF0F350D080C9A87080F8750FF078000FA0000000A128A40FB078001060000000A128A7D07067ECE770000000A000000070000000300000002000000040000000A000000040F34D108000000040000000A0000000100000000"
theorem small_5340554_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5340554_left_root small_5340554_left_fuel small_5340554_left_count small_5340554_left_encoded = true := by
  decide +kernel
theorem small_5340554_left_covered : CoveredBy scale carrier boxes small_5340554_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5340554_left_root small_5340554_left_fuel small_5340554_left_count small_5340554_left_encoded small_5340554_left_checked

theorem cover_5340554 : CoveredBy scale carrier boxes root_5340554 := by
  apply coveredBy_split_literal root_5340554 small_5340554_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5341214 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5340554_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5341214
#print axioms cover_5340554

def root_5340549 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340549_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5340549_right_fuel : Nat := 1
def small_5340549_right_count : Nat := 1
def small_5340549_right_encoded : String := "00000003"
theorem small_5340549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5340549_right_root small_5340549_right_fuel small_5340549_right_count small_5340549_right_encoded = true := by
  decide +kernel
theorem small_5340549_right_covered : CoveredBy scale carrier boxes small_5340549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5340549_right_root small_5340549_right_fuel small_5340549_right_count small_5340549_right_encoded small_5340549_right_checked

theorem cover_5340549 : CoveredBy scale carrier boxes root_5340549 := by
  apply coveredBy_split_literal root_5340549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5340554 small_5340549_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5340554
  · exact small_5340549_right_covered
#print axioms cover_5340549

def root_5338537 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5338537 : CoveredBy scale carrier boxes root_5338537 := by
  apply coveredBy_split_literal root_5338537 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2002.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5340549 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2002.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5340549
#print axioms cover_5338537

def root_5338531 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338531_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338531_left_fuel : Nat := 1
def small_5338531_left_count : Nat := 1
def small_5338531_left_encoded : String := "00000002"
theorem small_5338531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338531_left_root small_5338531_left_fuel small_5338531_left_count small_5338531_left_encoded = true := by
  decide +kernel
theorem small_5338531_left_covered : CoveredBy scale carrier boxes small_5338531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338531_left_root small_5338531_left_fuel small_5338531_left_count small_5338531_left_encoded small_5338531_left_checked

theorem cover_5338531 : CoveredBy scale carrier boxes root_5338531 := by
  apply coveredBy_split_literal root_5338531 small_5338531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338537 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5338531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338537
#print axioms cover_5338531

def root_5338530 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338530_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338530_right_fuel : Nat := 21
def small_5338530_right_count : Nat := 253
def small_5338530_right_encoded : String := "135D44FB05000106135D450700000003045489F71386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000060000000A00000006000000040F34D108000000040000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000202800106000000080000000800000008000000040F878CFF00000004000000090F8750F90C9A87080F8750FF028000FA13D7ECFB00000002028001060000000613D7ED07022A457700000006000000070000000300000006000000040F878CFF00000004028000FA13D7ECFB00000002028001060000000613D7ED07022A45770000000613E1C500000000000B4D43F80000000900000006000000030000000600000001000000040F34D10800000004000000090F34D0F80CFD9BFF0F350D080C9A87080F8750FF028000FA00000009000000080000000400000009000000040000000900000001135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000207800106128A410700000003067ECE7700000006000000070000000713D7B0FB07800106000000060000000500000002000000040F878CFF00000004028000FA13D7ECFB00000002078001060000000A128A7D07000000050000000313D7B0FB078001060000000600000005000000020F8750F90C9A87080F8750FF00000005000000040000000500000001000000040F34D108000000040C9A86F80F878CF9000000010000000A0F8750F900000005000000010F34D0F80CFD9BFF0F350D080C9A87080F8750FF028000FA13D7ECFB00000002078001060000000A128A7D07000000070000000300000009000000040000000A000000040F34D1080000000400000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF028000FA13D7ECFB0000000207800106000000070000000700000007000000040F878CFF00000004000000090F8750F90C9A87080F8750FF028000FA13D7ECFB0000000207800106000000070000000500000005000000040F878CFF00000004028000FA13D7ECFB0000000207800106128A410700000003022A45770000000513E1C5000000000000000005000000050000000500000001000000040F34D108000000040C9A86F8000000090F8750F9028000FA13D7ECFB0000000207800106000000090000000500000005000000010F34D0F80CFD9BFF0000000900000009000000010000000300000002"
theorem small_5338530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338530_right_root small_5338530_right_fuel small_5338530_right_count small_5338530_right_encoded = true := by
  decide +kernel
theorem small_5338530_right_covered : CoveredBy scale carrier boxes small_5338530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338530_right_root small_5338530_right_fuel small_5338530_right_count small_5338530_right_encoded small_5338530_right_checked

theorem cover_5338530 : CoveredBy scale carrier boxes root_5338530 := by
  apply coveredBy_split_literal root_5338530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338531 small_5338530_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338531
  · exact small_5338530_right_covered
#print axioms cover_5338530

def root_5338525 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338525_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338525_right_fuel : Nat := 1
def small_5338525_right_count : Nat := 1
def small_5338525_right_encoded : String := "00000004"
theorem small_5338525_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338525_right_root small_5338525_right_fuel small_5338525_right_count small_5338525_right_encoded = true := by
  decide +kernel
theorem small_5338525_right_covered : CoveredBy scale carrier boxes small_5338525_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338525_right_root small_5338525_right_fuel small_5338525_right_count small_5338525_right_encoded small_5338525_right_checked

theorem cover_5338525 : CoveredBy scale carrier boxes root_5338525 := by
  apply coveredBy_split_literal root_5338525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338530 small_5338525_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338530
  · exact small_5338525_right_covered
#print axioms cover_5338525

def root_5338524 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338524_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338524_right_fuel : Nat := 19
def small_5338524_right_count : Nat := 63
def small_5338524_right_encoded : String := "1207010800000004050000FA135D80FB0000000205000106135D4507000000030000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF800000001045489FF1386AD080C9A86F80F878CF900000001000000090F8750F9078000FA128A7CFB0000000207800106128A4107000000030000000A128A7D07022A45770000000A000000090000000300000009000000010000000413867108000000040C9A86F8000000090F8750F9078000FA0000000A00000009000000010000000A00000003135D44FB05000106135D4507000000030000000A135D8107045489F70000000A1386710000000000000000090000000300000002"
theorem small_5338524_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338524_right_root small_5338524_right_fuel small_5338524_right_count small_5338524_right_encoded = true := by
  decide +kernel
theorem small_5338524_right_covered : CoveredBy scale carrier boxes small_5338524_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338524_right_root small_5338524_right_fuel small_5338524_right_count small_5338524_right_encoded small_5338524_right_checked

theorem cover_5338524 : CoveredBy scale carrier boxes root_5338524 := by
  apply coveredBy_split_literal root_5338524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338525 small_5338524_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338525
  · exact small_5338524_right_covered
#print axioms cover_5338524

def root_5338518 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338518_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338518_left_fuel : Nat := 1
def small_5338518_left_count : Nat := 1
def small_5338518_left_encoded : String := "00000001"
theorem small_5338518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338518_left_root small_5338518_left_fuel small_5338518_left_count small_5338518_left_encoded = true := by
  decide +kernel
theorem small_5338518_left_covered : CoveredBy scale carrier boxes small_5338518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338518_left_root small_5338518_left_fuel small_5338518_left_count small_5338518_left_encoded small_5338518_left_checked

theorem cover_5338518 : CoveredBy scale carrier boxes root_5338518 := by
  apply coveredBy_split_literal root_5338518 small_5338518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338524 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5338518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338524
#print axioms cover_5338518

def root_5338517 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338517_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338517_right_fuel : Nat := 7
def small_5338517_right_count : Nat := 15
def small_5338517_right_encoded : String := "120700F808A912FF12073D08050000FA0000000A135D44FB050001060000000A00000009000000020000000412070108000000040000000900000001"
theorem small_5338517_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338517_right_root small_5338517_right_fuel small_5338517_right_count small_5338517_right_encoded = true := by
  decide +kernel
theorem small_5338517_right_covered : CoveredBy scale carrier boxes small_5338517_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338517_right_root small_5338517_right_fuel small_5338517_right_count small_5338517_right_encoded small_5338517_right_checked

theorem cover_5338517 : CoveredBy scale carrier boxes root_5338517 := by
  apply coveredBy_split_literal root_5338517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338518 small_5338517_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338518
  · exact small_5338517_right_covered
#print axioms cover_5338517

def root_5338511 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338511_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338511_left_fuel : Nat := 1
def small_5338511_left_count : Nat := 1
def small_5338511_left_encoded : String := "00000000"
theorem small_5338511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338511_left_root small_5338511_left_fuel small_5338511_left_count small_5338511_left_encoded = true := by
  decide +kernel
theorem small_5338511_left_covered : CoveredBy scale carrier boxes small_5338511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338511_left_root small_5338511_left_fuel small_5338511_left_count small_5338511_left_encoded small_5338511_left_checked

theorem cover_5338511 : CoveredBy scale carrier boxes root_5338511 := by
  apply coveredBy_split_literal root_5338511 small_5338511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338517 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5338511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338517
#print axioms cover_5338511

def root_5338305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338305_left_fuel : Nat := 25
def small_5338305_left_count : Nat := 97
def small_5338305_left_encoded : String := "12073D0008A912F912073CF80000000108A912FF12073D08050000FA135D80FB0000000205000106135D4507000000030000000A135D81070CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF078000FA0000000A128A40FB0000000A00000002000000040000000A0F8750F90C9A87080F8750FF078000FA128A7CFB000000020780010600000006128A7D070AD3577700000005000000070000000300000006000000040F878CFF00000004078000FA0000000A0000000600000001000000040F34D108000000040000000A0000000A00000003135D44FB05000106135D4507000000030000000A135D81070CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000060000000A00000006000000040F34D108000000040000000A0000000A00000003000000020000000412070108000000040000000A0000000A00000000"
theorem small_5338305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338305_left_root small_5338305_left_fuel small_5338305_left_count small_5338305_left_encoded = true := by
  decide +kernel
theorem small_5338305_left_covered : CoveredBy scale carrier boxes small_5338305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338305_left_root small_5338305_left_fuel small_5338305_left_count small_5338305_left_encoded small_5338305_left_checked

theorem cover_5338305 : CoveredBy scale carrier boxes root_5338305 := by
  apply coveredBy_split_literal root_5338305 small_5338305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338511 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5338305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338511
#print axioms cover_5338305

def root_5338299 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338299_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338299_left_fuel : Nat := 1
def small_5338299_left_count : Nat := 1
def small_5338299_left_encoded : String := "00000004"
theorem small_5338299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338299_left_root small_5338299_left_fuel small_5338299_left_count small_5338299_left_encoded = true := by
  decide +kernel
theorem small_5338299_left_covered : CoveredBy scale carrier boxes small_5338299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338299_left_root small_5338299_left_fuel small_5338299_left_count small_5338299_left_encoded small_5338299_left_checked

theorem cover_5338299 : CoveredBy scale carrier boxes root_5338299 := by
  apply coveredBy_split_literal root_5338299 small_5338299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338305 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5338299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338305
#print axioms cover_5338299

def root_5336665 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5336665 : CoveredBy scale carrier boxes root_5336665 := by
  apply coveredBy_split_literal root_5336665 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2001.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5338299 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2001.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5338299
#print axioms cover_5336665

def root_5336659 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336659_left_fuel : Nat := 1
def small_5336659_left_count : Nat := 1
def small_5336659_left_encoded : String := "00000003"
theorem small_5336659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5336659_left_root small_5336659_left_fuel small_5336659_left_count small_5336659_left_encoded = true := by
  decide +kernel
theorem small_5336659_left_covered : CoveredBy scale carrier boxes small_5336659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5336659_left_root small_5336659_left_fuel small_5336659_left_count small_5336659_left_encoded small_5336659_left_checked

theorem cover_5336659 : CoveredBy scale carrier boxes root_5336659 := by
  apply coveredBy_split_literal root_5336659 small_5336659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5336665 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5336659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5336665
#print axioms cover_5336659

def root_5345721 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5345721 : CoveredBy scale carrier boxes root_5345721 := by
  apply coveredBy_split_literal root_5345721 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2004.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2005.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2004.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2005.covered
#print axioms cover_5345721

def root_5345716 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5345716_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5345716_right_fuel : Nat := 1
def small_5345716_right_count : Nat := 1
def small_5345716_right_encoded : String := "00000003"
theorem small_5345716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5345716_right_root small_5345716_right_fuel small_5345716_right_count small_5345716_right_encoded = true := by
  decide +kernel
theorem small_5345716_right_covered : CoveredBy scale carrier boxes small_5345716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5345716_right_root small_5345716_right_fuel small_5345716_right_count small_5345716_right_encoded small_5345716_right_checked

theorem cover_5345716 : CoveredBy scale carrier boxes root_5345716 := by
  apply coveredBy_split_literal root_5345716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5345721 small_5345716_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5345721
  · exact small_5345716_right_covered
#print axioms cover_5345716

def root_5336658 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5336658 : CoveredBy scale carrier boxes root_5336658 := by
  apply coveredBy_split_literal root_5336658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5336659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5345716 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5336659
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5345716
#print axioms cover_5336658

def root_5336653 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336653_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336653_right_fuel : Nat := 1
def small_5336653_right_count : Nat := 1
def small_5336653_right_encoded : String := "00000002"
theorem small_5336653_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5336653_right_root small_5336653_right_fuel small_5336653_right_count small_5336653_right_encoded = true := by
  decide +kernel
theorem small_5336653_right_covered : CoveredBy scale carrier boxes small_5336653_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5336653_right_root small_5336653_right_fuel small_5336653_right_count small_5336653_right_encoded small_5336653_right_checked

theorem cover_5336653 : CoveredBy scale carrier boxes root_5336653 := by
  apply coveredBy_split_literal root_5336653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5336658 small_5336653_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5336658
  · exact small_5336653_right_covered
#print axioms cover_5336653

def root_5307097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307097 : CoveredBy scale carrier boxes root_5307097 := by
  apply coveredBy_split_literal root_5307097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5336653 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307098
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5336653
#print axioms cover_5307097

def root_5307091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307091_left_fuel : Nat := 1
def small_5307091_left_count : Nat := 1
def small_5307091_left_encoded : String := "00000001"
theorem small_5307091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307091_left_root small_5307091_left_fuel small_5307091_left_count small_5307091_left_encoded = true := by
  decide +kernel
theorem small_5307091_left_covered : CoveredBy scale carrier boxes small_5307091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307091_left_root small_5307091_left_fuel small_5307091_left_count small_5307091_left_encoded small_5307091_left_checked

theorem cover_5307091 : CoveredBy scale carrier boxes root_5307091 := by
  apply coveredBy_split_literal root_5307091 small_5307091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307097 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307097
#print axioms cover_5307091

def root_5350051 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350051_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350051_left_fuel : Nat := 20
def small_5350051_left_count : Nat := 103
def small_5350051_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F90000000105000106135D4507000000030CFD9BF70F350D000CFD9BFB0000000A00000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020000000800000006000000040F34D10800000004000000080F34D0FA0000000800000002135D81070CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFF000000080000000800000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB00000002000000080F8750FB0C9A87080F8750FF00000009000000040F878CFF000000040000000800000002000000040F34D10800000004000000080F34D0FA000000080000000200000003135D44F905000106135D4507000000030CFD9BF7000000060F34D1000000000000000008135D81070CFD9BF7000000080F34D1000000000000000008000000030000000100000004120701080000000400000008120700FA08A912FF00000008000000080000000200000000"
theorem small_5350051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5350051_left_root small_5350051_left_fuel small_5350051_left_count small_5350051_left_encoded = true := by
  decide +kernel
theorem small_5350051_left_covered : CoveredBy scale carrier boxes small_5350051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5350051_left_root small_5350051_left_fuel small_5350051_left_count small_5350051_left_encoded small_5350051_left_checked

theorem cover_5350051 : CoveredBy scale carrier boxes root_5350051 := by
  apply coveredBy_split_literal root_5350051 small_5350051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2006.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5350051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2006.covered
#print axioms cover_5350051

def root_5350045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350045_left_fuel : Nat := 1
def small_5350045_left_count : Nat := 1
def small_5350045_left_encoded : String := "00000004"
theorem small_5350045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5350045_left_root small_5350045_left_fuel small_5350045_left_count small_5350045_left_encoded = true := by
  decide +kernel
theorem small_5350045_left_covered : CoveredBy scale carrier boxes small_5350045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5350045_left_root small_5350045_left_fuel small_5350045_left_count small_5350045_left_encoded small_5350045_left_checked

theorem cover_5350045 : CoveredBy scale carrier boxes root_5350045 := by
  apply coveredBy_split_literal root_5350045 small_5350045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5350051 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5350045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5350051
#print axioms cover_5350045

def root_5349803 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349803_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349803_left_fuel : Nat := 16
def small_5349803_left_count : Nat := 113
def small_5349803_left_encoded : String := "1151E8FF08A912F712073D0008A912FB12073CFA00000002050000F8135D80F90000000105000106135D4507000000030500010800000009135D80FF000000040CFD9BF70F350D000CFD9BFB0000000600000006000000000F34D1000000000000000009135D810705000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D000CFD9BFB000000090F34D0FA0000000800000002000000000F34D100000000000CFD9BFB000000090000000900000003135D44F905000106135D450700000003000000090000000900000001120700FA050000F8135D80F90000000105000106135D4507000000030000000900000009000000090000000200000000120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D4507000000030500010800000009135D80FF00000004045489F700000009138671000000000000000009135D81070500010800000009135D80FF00000004045489F71386AD000CFD9BFB000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB000000090F34D0FA00000009000000020000000300000009120700FA050000F800000009000000090000000200000004"
theorem small_5349803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349803_left_root small_5349803_left_fuel small_5349803_left_count small_5349803_left_encoded = true := by
  decide +kernel
theorem small_5349803_left_covered : CoveredBy scale carrier boxes small_5349803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349803_left_root small_5349803_left_fuel small_5349803_left_count small_5349803_left_encoded small_5349803_left_checked

theorem cover_5349803 : CoveredBy scale carrier boxes root_5349803 := by
  apply coveredBy_split_literal root_5349803 small_5349803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5350045 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5349803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5350045
#print axioms cover_5349803

def root_5349797 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349797_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349797_left_fuel : Nat := 1
def small_5349797_left_count : Nat := 1
def small_5349797_left_encoded : String := "00000003"
theorem small_5349797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349797_left_root small_5349797_left_fuel small_5349797_left_count small_5349797_left_encoded = true := by
  decide +kernel
theorem small_5349797_left_covered : CoveredBy scale carrier boxes small_5349797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349797_left_root small_5349797_left_fuel small_5349797_left_count small_5349797_left_encoded small_5349797_left_checked

theorem cover_5349797 : CoveredBy scale carrier boxes root_5349797 := by
  apply coveredBy_split_literal root_5349797 small_5349797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349803 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5349797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349803
#print axioms cover_5349797

def root_5349796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5349796 : CoveredBy scale carrier boxes root_5349796 := by
  apply coveredBy_split_literal root_5349796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349797 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2007.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349797
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2007.covered
#print axioms cover_5349796

def root_5349790 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349790_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349790_left_fuel : Nat := 1
def small_5349790_left_count : Nat := 1
def small_5349790_left_encoded : String := "00000002"
theorem small_5349790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349790_left_root small_5349790_left_fuel small_5349790_left_count small_5349790_left_encoded = true := by
  decide +kernel
theorem small_5349790_left_covered : CoveredBy scale carrier boxes small_5349790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349790_left_root small_5349790_left_fuel small_5349790_left_count small_5349790_left_encoded small_5349790_left_checked

theorem cover_5349790 : CoveredBy scale carrier boxes root_5349790 := by
  apply coveredBy_split_literal root_5349790 small_5349790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349796 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5349790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349796
#print axioms cover_5349790

def root_5354954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354954_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354954_right_fuel : Nat := 20
def small_5354954_right_count : Nat := 135
def small_5354954_right_encoded : String := "115225070A0001081151E8FF08A912F712073D0008A913070000000512073D06050000F8135D80F900000001050000FA135D80FB0000000205000108000000070000000500000005000000050000000300000000120701000000000008A913070000000512073D06050000F8135D80F900000001050000FA135D80FB000000020500010800000007135D80FF00000004045489F70000000500000007135D44FB0000000500000002135D44F900000005000000010000000300000004115224FF0000000408A912F712073D0008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000050F34D10000000000000000050000000500000005000000041207010800000004050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000080F34D100000000000000000500000005000000050000000300000000120701000000000008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000013867100000000000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000500000005000000041207010800000004000000050000000300000003"
theorem small_5354954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5354954_right_root small_5354954_right_fuel small_5354954_right_count small_5354954_right_encoded = true := by
  decide +kernel
theorem small_5354954_right_covered : CoveredBy scale carrier boxes small_5354954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5354954_right_root small_5354954_right_fuel small_5354954_right_count small_5354954_right_encoded small_5354954_right_checked

theorem cover_5354954 : CoveredBy scale carrier boxes root_5354954 := by
  apply coveredBy_split_literal root_5354954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2008.root small_5354954_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2008.covered
  · exact small_5354954_right_covered
#print axioms cover_5354954

def root_5354949 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354949_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354949_right_fuel : Nat := 1
def small_5354949_right_count : Nat := 1
def small_5354949_right_encoded : String := "00000002"
theorem small_5354949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5354949_right_root small_5354949_right_fuel small_5354949_right_count small_5354949_right_encoded = true := by
  decide +kernel
theorem small_5354949_right_covered : CoveredBy scale carrier boxes small_5354949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5354949_right_root small_5354949_right_fuel small_5354949_right_count small_5354949_right_encoded small_5354949_right_checked

theorem cover_5354949 : CoveredBy scale carrier boxes root_5354949 := by
  apply coveredBy_split_literal root_5354949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5354954 small_5354949_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5354954
  · exact small_5354949_right_covered
#print axioms cover_5354949

def root_5349789 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5349789 : CoveredBy scale carrier boxes root_5349789 := by
  apply coveredBy_split_literal root_5349789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5354949 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349790
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5354949
#print axioms cover_5349789

def root_5349784 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349784_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349784_right_fuel : Nat := 1
def small_5349784_right_count : Nat := 1
def small_5349784_right_encoded : String := "00000001"
theorem small_5349784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349784_right_root small_5349784_right_fuel small_5349784_right_count small_5349784_right_encoded = true := by
  decide +kernel
theorem small_5349784_right_covered : CoveredBy scale carrier boxes small_5349784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349784_right_root small_5349784_right_fuel small_5349784_right_count small_5349784_right_encoded small_5349784_right_checked

theorem cover_5349784 : CoveredBy scale carrier boxes root_5349784 := by
  apply coveredBy_split_literal root_5349784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349789 small_5349784_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349789
  · exact small_5349784_right_covered
#print axioms cover_5349784

def root_5307090 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307090 : CoveredBy scale carrier boxes root_5307090 := by
  apply coveredBy_split_literal root_5307090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5349784 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307091
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5349784
#print axioms cover_5307090

def root_5307084 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307084_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307084_left_fuel : Nat := 1
def small_5307084_left_count : Nat := 1
def small_5307084_left_encoded : String := "00000000"
theorem small_5307084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307084_left_root small_5307084_left_fuel small_5307084_left_count small_5307084_left_encoded = true := by
  decide +kernel
theorem small_5307084_left_covered : CoveredBy scale carrier boxes small_5307084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307084_left_root small_5307084_left_fuel small_5307084_left_count small_5307084_left_encoded small_5307084_left_checked

theorem cover_5307084 : CoveredBy scale carrier boxes root_5307084 := by
  apply coveredBy_split_literal root_5307084 small_5307084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307090 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307090
#print axioms cover_5307084

def root_5304986 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5304986 : CoveredBy scale carrier boxes root_5304986 := by
  apply coveredBy_split_literal root_5304986 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1988.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5307084 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1988.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5307084
#print axioms cover_5304986

def root_5366914 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5366914 : CoveredBy scale carrier boxes root_5366914 := by
  apply coveredBy_split_literal root_5366914 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2013.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2014.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2013.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2014.covered
#print axioms cover_5366914

def root_5366908 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366908_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366908_left_fuel : Nat := 1
def small_5366908_left_count : Nat := 1
def small_5366908_left_encoded : String := "00000003"
theorem small_5366908_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366908_left_root small_5366908_left_fuel small_5366908_left_count small_5366908_left_encoded = true := by
  decide +kernel
theorem small_5366908_left_covered : CoveredBy scale carrier boxes small_5366908_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366908_left_root small_5366908_left_fuel small_5366908_left_count small_5366908_left_encoded small_5366908_left_checked

theorem cover_5366908 : CoveredBy scale carrier boxes root_5366908 := by
  apply coveredBy_split_literal root_5366908 small_5366908_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366914 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_5366908_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366914
#print axioms cover_5366908

def root_5372148 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5372148 : CoveredBy scale carrier boxes root_5372148 := by
  apply coveredBy_split_literal root_5372148 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2015.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2016.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2015.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2016.covered
#print axioms cover_5372148

def root_5372143 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5372143_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5372143_right_fuel : Nat := 1
def small_5372143_right_count : Nat := 1
def small_5372143_right_encoded : String := "00000003"
theorem small_5372143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5372143_right_root small_5372143_right_fuel small_5372143_right_count small_5372143_right_encoded = true := by
  decide +kernel
theorem small_5372143_right_covered : CoveredBy scale carrier boxes small_5372143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5372143_right_root small_5372143_right_fuel small_5372143_right_count small_5372143_right_encoded small_5372143_right_checked

theorem cover_5372143 : CoveredBy scale carrier boxes root_5372143 := by
  apply coveredBy_split_literal root_5372143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5372148 small_5372143_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5372148
  · exact small_5372143_right_covered
#print axioms cover_5372143

def root_5366907 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5366907 : CoveredBy scale carrier boxes root_5366907 := by
  apply coveredBy_split_literal root_5366907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5372143 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366908
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5372143
#print axioms cover_5366907

def root_5366901 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366901_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366901_left_fuel : Nat := 1
def small_5366901_left_count : Nat := 1
def small_5366901_left_encoded : String := "00000002"
theorem small_5366901_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366901_left_root small_5366901_left_fuel small_5366901_left_count small_5366901_left_encoded = true := by
  decide +kernel
theorem small_5366901_left_covered : CoveredBy scale carrier boxes small_5366901_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366901_left_root small_5366901_left_fuel small_5366901_left_count small_5366901_left_encoded small_5366901_left_checked

theorem cover_5366901 : CoveredBy scale carrier boxes root_5366901 := by
  apply coveredBy_split_literal root_5366901 small_5366901_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366907 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5366901_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366907
#print axioms cover_5366901

def root_5366900 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366900_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366900_right_fuel : Nat := 17
def small_5366900_right_count : Nat := 121
def small_5366900_right_encoded : String := "0F34D0FA0CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F80F878CF900000001022A457713E201000AD3577B10D13CFA000000020AD3578710D10106000000030AD3578910D10108000000040000000610D13D08000000050000000410D13D06000000050000000310D100FA00000005000000020000000013E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030000000610D13D06000000050000000310D100FA00000005000000020F8750F9022A457713E201000AD3577B10D13CFA000000020AD357870000000810D13D060000000800000003000000080000000013E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030AD357890000000610D13D080B4D43F800000006000000080000000410D13D06000000080000000300000008000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09022A45770000000913E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030000000900000005000000050000000400000001000000040F350D060CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A8706000000050F878D070000000800000003000000010F350D0800000005000000040000000300000002"
theorem small_5366900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366900_right_root small_5366900_right_fuel small_5366900_right_count small_5366900_right_encoded = true := by
  decide +kernel
theorem small_5366900_right_covered : CoveredBy scale carrier boxes small_5366900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366900_right_root small_5366900_right_fuel small_5366900_right_count small_5366900_right_encoded small_5366900_right_checked

theorem cover_5366900 : CoveredBy scale carrier boxes root_5366900 := by
  apply coveredBy_split_literal root_5366900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366901 small_5366900_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366901
  · exact small_5366900_right_covered
#print axioms cover_5366900

def root_5366894 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366894_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366894_left_fuel : Nat := 1
def small_5366894_left_count : Nat := 1
def small_5366894_left_encoded : String := "00000001"
theorem small_5366894_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366894_left_root small_5366894_left_fuel small_5366894_left_count small_5366894_left_encoded = true := by
  decide +kernel
theorem small_5366894_left_covered : CoveredBy scale carrier boxes small_5366894_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366894_left_root small_5366894_left_fuel small_5366894_left_count small_5366894_left_encoded small_5366894_left_checked

theorem cover_5366894 : CoveredBy scale carrier boxes root_5366894 := by
  apply coveredBy_split_literal root_5366894 small_5366894_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366900 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5366894_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366900
#print axioms cover_5366894

def root_5366893 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366893_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366893_right_fuel : Nat := 19
def small_5366893_right_count : Nat := 131
def small_5366893_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA0F878CFB00000002022A457713E201000AD3577910D13CF8000000010AD3578710D10106000000030AD3578910D10108000000040000000610D13D08000000050000000410D13D06000000050000000310D100F800000005000000010000000013E1C500000000000AD3577910D13CF8000000010AD3578710D10106000000030000000610D13D06000000050000000310D100F800000005000000010F8750FB022A457713E201000AD3577910D13CF8000000010AD357870000000710D13D060AD357890000000710D13D08000000070000000400000003000000070000000013E1C500000000000AD3577910D13CF8000000010AD357870000000710D13D060AD3578910D10108000000040B4D43FA000000060000000710D13D0800000007000000040000000300000007000000020F350D080C9A86FA000000050F8750FB0C9A8708000000050F878D09000000070000000400000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000050F8750FB0C9A8706000000050F878D07022A45770000000A13E1C500000000000AD3577910D13CF8000000010AD3578910D10108000000040000000A000000050000000500000003000000020F350D080000000500000004000000030F34D0FA000000050000000200000001"
theorem small_5366893_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366893_right_root small_5366893_right_fuel small_5366893_right_count small_5366893_right_encoded = true := by
  decide +kernel
theorem small_5366893_right_covered : CoveredBy scale carrier boxes small_5366893_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366893_right_root small_5366893_right_fuel small_5366893_right_count small_5366893_right_encoded small_5366893_right_checked

theorem cover_5366893 : CoveredBy scale carrier boxes root_5366893 := by
  apply coveredBy_split_literal root_5366893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366894 small_5366893_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366894
  · exact small_5366893_right_covered
#print axioms cover_5366893

def root_5366887 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366887_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366887_left_fuel : Nat := 1
def small_5366887_left_count : Nat := 1
def small_5366887_left_encoded : String := "00000000"
theorem small_5366887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366887_left_root small_5366887_left_fuel small_5366887_left_count small_5366887_left_encoded = true := by
  decide +kernel
theorem small_5366887_left_covered : CoveredBy scale carrier boxes small_5366887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366887_left_root small_5366887_left_fuel small_5366887_left_count small_5366887_left_encoded small_5366887_left_checked

theorem cover_5366887 : CoveredBy scale carrier boxes root_5366887 := by
  apply coveredBy_split_literal root_5366887 small_5366887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366893 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5366887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366893
#print axioms cover_5366887

def root_5365237 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5365237 : CoveredBy scale carrier boxes root_5365237 := by
  apply coveredBy_split_literal root_5365237 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2012.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5366887 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2012.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5366887
#print axioms cover_5365237

def root_5365232 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5365232_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5365232_right_fuel : Nat := 1
def small_5365232_right_count : Nat := 1
def small_5365232_right_encoded : String := "00000004"
theorem small_5365232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5365232_right_root small_5365232_right_fuel small_5365232_right_count small_5365232_right_encoded = true := by
  decide +kernel
theorem small_5365232_right_covered : CoveredBy scale carrier boxes small_5365232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5365232_right_root small_5365232_right_fuel small_5365232_right_count small_5365232_right_encoded small_5365232_right_checked

theorem cover_5365232 : CoveredBy scale carrier boxes root_5365232 := by
  apply coveredBy_split_literal root_5365232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5365237 small_5365232_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5365237
  · exact small_5365232_right_covered
#print axioms cover_5365232

def root_5363892 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5363892 : CoveredBy scale carrier boxes root_5363892 := by
  apply coveredBy_split_literal root_5363892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2011.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5365232 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2011.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5365232
#print axioms cover_5363892

def root_5363887 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5363887_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5363887_right_fuel : Nat := 1
def small_5363887_right_count : Nat := 1
def small_5363887_right_encoded : String := "00000003"
theorem small_5363887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5363887_right_root small_5363887_right_fuel small_5363887_right_count small_5363887_right_encoded = true := by
  decide +kernel
theorem small_5363887_right_covered : CoveredBy scale carrier boxes small_5363887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5363887_right_root small_5363887_right_fuel small_5363887_right_count small_5363887_right_encoded small_5363887_right_checked

theorem cover_5363887 : CoveredBy scale carrier boxes root_5363887 := by
  apply coveredBy_split_literal root_5363887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5363892 small_5363887_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5363892
  · exact small_5363887_right_covered
#print axioms cover_5363887

def root_5362117 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5362117 : CoveredBy scale carrier boxes root_5362117 := by
  apply coveredBy_split_literal root_5362117 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2010.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5363887 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2010.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5363887
#print axioms cover_5362117

def root_5362111 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362111_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362111_left_fuel : Nat := 1
def small_5362111_left_count : Nat := 1
def small_5362111_left_encoded : String := "00000002"
theorem small_5362111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362111_left_root small_5362111_left_fuel small_5362111_left_count small_5362111_left_encoded = true := by
  decide +kernel
theorem small_5362111_left_covered : CoveredBy scale carrier boxes small_5362111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362111_left_root small_5362111_left_fuel small_5362111_left_count small_5362111_left_encoded small_5362111_left_checked

theorem cover_5362111 : CoveredBy scale carrier boxes root_5362111 := by
  apply coveredBy_split_literal root_5362111 small_5362111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362117 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5362111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362117
#print axioms cover_5362111

def root_5362110 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362110_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362110_right_fuel : Nat := 21
def small_5362110_right_count : Nat := 223
def small_5362110_right_encoded : String := "120700FA08A91307120701060000000308A913091207010800000004045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A070000000600000008000000080F34D0F8045489FB00000006138670FA04548A07000000060000000800000002000000010000000013867100000000000CFD9BF9000000060F34D0F8000000060000000112073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A0713867106000000030000000900000009000000090F34D0F8045489FB1386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004067ECE770000000900000005000000050000000500000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A0713867106000000030CFD9C090000000A000000091386AD060CFD9C090F34D108000000040C9A86F80F878CF900000001022A457713E20100067ECE7B000000060000000500000000000000050000000A0F350D08000000050000000400000003138670FA04548A070000000A00000009000000020F34D0F800000005000000010000000412073D0608A913091207010800000004045489F71386AD000CFD9BF90F350CF800000001000000080F34D0F8045489FB1386ACFA000000020CFD9C070F34D1060000000304548A0900000008000000050000000500000005000000010000000013867100000000000CFD9BF90F350CF800000001000000080F34D0F8000000050000000112073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F80000000500000008000000090F350D060000000500000003138670FA0CFD9C07000000050F350D060000000500000003000000020F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000050F8750F900000008000000010F350D0800000005000000040F350D060000000500000003138670FA0CFD9C070F34D106000000030CFD9C0900000005000000090F350D060000000500000003000000020F34D0F8045489FB00000005138670FA000000050000000200000001000000040000000300000002"
theorem small_5362110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362110_right_root small_5362110_right_fuel small_5362110_right_count small_5362110_right_encoded = true := by
  decide +kernel
theorem small_5362110_right_covered : CoveredBy scale carrier boxes small_5362110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362110_right_root small_5362110_right_fuel small_5362110_right_count small_5362110_right_encoded small_5362110_right_checked

theorem cover_5362110 : CoveredBy scale carrier boxes root_5362110 := by
  apply coveredBy_split_literal root_5362110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362111 small_5362110_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362111
  · exact small_5362110_right_covered
#print axioms cover_5362110

def root_5362104 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362104_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362104_left_fuel : Nat := 1
def small_5362104_left_count : Nat := 1
def small_5362104_left_encoded : String := "00000001"
theorem small_5362104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362104_left_root small_5362104_left_fuel small_5362104_left_count small_5362104_left_encoded = true := by
  decide +kernel
theorem small_5362104_left_covered : CoveredBy scale carrier boxes small_5362104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362104_left_root small_5362104_left_fuel small_5362104_left_count small_5362104_left_encoded small_5362104_left_checked

theorem cover_5362104 : CoveredBy scale carrier boxes root_5362104 := by
  apply coveredBy_split_literal root_5362104 small_5362104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362110 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5362104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362110
#print axioms cover_5362104

def root_5362103 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362103_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362103_right_fuel : Nat := 23
def small_5362103_right_count : Nat := 349
def small_5362103_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120701060000000308A913091207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07000000061386AD0604548A090000000600000007000000030F34D0FA0000000600000002138670F80CFD9BFB000000070F34D0FA04548A07000000061386AD0604548A090000000600000005000000030000000200000001000000001386710000000000045489F900000006138670F80CFD9BFB000000060F34D0FA00000006000000020000000112073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA04548A07000000070000000500000002138670F80CFD9BFB000000070F34D0FA000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA0000000500000002138670F80CFD9BFB000000070F34D0FA0000000500000002000000010000000412073D0608A913091207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A0913867108000000040000000A0000000A0000000A0F34D0FA0CFD9C070F34D1060000000304548A091386710800000004067ECE770000000A00000005000000050000000500000002138670F80000000A00000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A09000000091386AD080C9A86FA0F878CFB00000002022A457713E20100067ECE790000000600000005000000000000000500000009000000040F350D060000000A000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C07000000090000000A0F34D0FA00000005000000020000000112073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA00000005000000070F350D0800000005000000040F350D0600000005000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C07000000050000000A0F34D0FA000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA000000050F8750FB00000007000000020F350D0800000005000000040F350D0600000005000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C0900000005000000070F350D0600000005000000030F34D0FA0000000500000002000000010000000400000003120700FA08A91307120701060000000308A913091207010800000004045489F71386AD00045489F91386ACF800000001045489FB000000060000000500000005000000000000000512073D08045489F7000000051386710000000000045489F900000005138670F800000005000000010000000412073D0608A913091207010800000004045489F7000000051386710000000000045489F900000005138670F8000000050000000112073D08045489F71386AD00045489F900000005138670F80000000500000001000000001386710000000000045489F91386ACF800000001045489FB00000005138670FA0CFD9C07000000050F350D06000000050000000300000002138670F8045489FB1386ACFA000000020CFD9C07000000050F350D060000000500000003138670FA0CFD9C07000000050F350D060000000500000003000000020000000100000004000000030000000200000001"
theorem small_5362103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362103_right_root small_5362103_right_fuel small_5362103_right_count small_5362103_right_encoded = true := by
  decide +kernel
theorem small_5362103_right_covered : CoveredBy scale carrier boxes small_5362103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362103_right_root small_5362103_right_fuel small_5362103_right_count small_5362103_right_encoded small_5362103_right_checked

theorem cover_5362103 : CoveredBy scale carrier boxes root_5362103 := by
  apply coveredBy_split_literal root_5362103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362104 small_5362103_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362104
  · exact small_5362103_right_covered
#print axioms cover_5362103

def root_5362097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362097_left_fuel : Nat := 1
def small_5362097_left_count : Nat := 1
def small_5362097_left_encoded : String := "00000000"
theorem small_5362097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362097_left_root small_5362097_left_fuel small_5362097_left_count small_5362097_left_encoded = true := by
  decide +kernel
theorem small_5362097_left_covered : CoveredBy scale carrier boxes small_5362097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362097_left_root small_5362097_left_fuel small_5362097_left_count small_5362097_left_encoded small_5362097_left_checked

theorem cover_5362097 : CoveredBy scale carrier boxes root_5362097 := by
  apply coveredBy_split_literal root_5362097 small_5362097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362103 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5362097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362103
#print axioms cover_5362097

def root_5360189 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5360189 : CoveredBy scale carrier boxes root_5360189 := by
  apply coveredBy_split_literal root_5360189 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2009.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5362097 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2009.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5362097
#print axioms cover_5360189

def root_5360184 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5360184_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5360184_right_fuel : Nat := 1
def small_5360184_right_count : Nat := 1
def small_5360184_right_encoded : String := "00000004"
theorem small_5360184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5360184_right_root small_5360184_right_fuel small_5360184_right_count small_5360184_right_encoded = true := by
  decide +kernel
theorem small_5360184_right_covered : CoveredBy scale carrier boxes small_5360184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5360184_right_root small_5360184_right_fuel small_5360184_right_count small_5360184_right_encoded small_5360184_right_checked

theorem cover_5360184 : CoveredBy scale carrier boxes root_5360184 := by
  apply coveredBy_split_literal root_5360184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5360189 small_5360184_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5360189
  · exact small_5360184_right_covered
#print axioms cover_5360184

def root_5359650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359650_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359650_left_fuel : Nat := 28
def small_5359650_left_count : Nat := 245
def small_5359650_left_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A9130712070106000000030000000912073D060500010800000005135D81090CFD9BF70F350D000CFD9BF90000000900000005000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000900000009000000090F34D0F800000005000000010000000400000003120700FA0000000500000002120700F808A912FB00000005120700FA00000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A91307120701060000000305000108135D450900000004045489F71386AD00000000090000000013867100000000000CFD9BF90F350CF8000000010000000900000005135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030000000700000009000000090F34D0F80CFD9BFB0000000700000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F80F878CF9000000010C9A86FA00000009000000070F8750F900000009000000011386AD060C9A86F80F878CF9000000010C9A86FA00000005000000070F8750F90C9A86FA000000090F8750FB000000090000000200000001000000030F34D0FA00000005000000020F34D0F800000005000000010000000412073D060500010800000005135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86F800000005000000090F350D0600000005000000030F34D0FA00000005000000020F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86F8000000050F8750F90C9A86FA000000050F8750FB0780010800000005128A7D09022A45770000000913E1C50000000000000000080000000400000002000000010F350D0600000005000000030F34D0FA00000005000000020F34D0F800000005000000010000000400000003120700FA08A913070000000512073D060500010800000005135D810900000005000000040000000300000002120700F808A912FB12073CFA0000000208A913070000000512073D060500010800000005135D8109000000050000000400000003120700FA08A913070000000512073D060500010800000005135D81090000000500000004000000030000000200000001"
theorem small_5359650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359650_left_root small_5359650_left_fuel small_5359650_left_count small_5359650_left_encoded = true := by
  decide +kernel
theorem small_5359650_left_covered : CoveredBy scale carrier boxes small_5359650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359650_left_root small_5359650_left_fuel small_5359650_left_count small_5359650_left_encoded small_5359650_left_checked

theorem cover_5359650 : CoveredBy scale carrier boxes root_5359650 := by
  apply coveredBy_split_literal root_5359650 small_5359650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5360184 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5359650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5360184
#print axioms cover_5359650

def root_5359645 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359645_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359645_right_fuel : Nat := 1
def small_5359645_right_count : Nat := 1
def small_5359645_right_encoded : String := "00000003"
theorem small_5359645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359645_right_root small_5359645_right_fuel small_5359645_right_count small_5359645_right_encoded = true := by
  decide +kernel
theorem small_5359645_right_covered : CoveredBy scale carrier boxes small_5359645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359645_right_root small_5359645_right_fuel small_5359645_right_count small_5359645_right_encoded small_5359645_right_checked

theorem cover_5359645 : CoveredBy scale carrier boxes root_5359645 := by
  apply coveredBy_split_literal root_5359645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5359650 small_5359645_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5359650
  · exact small_5359645_right_covered
#print axioms cover_5359645

def root_5359033 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359033_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359033_left_fuel : Nat := 30
def small_5359033_left_count : Nat := 279
def small_5359033_left_encoded : String := "1151E907000000030A0001081151E9090000000408A912F712073D0008A912F9000000050000000600000000120701000000000008A912F912073CF80000000108A912FB00000005120700FA0000000500000002120700F808A912FB00000005120700FA0000000500000002000000011152250908A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A9130912070108000000040000000A12073D080500010600000005135D81070CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0000000A0000000500000005000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000A0000000A0F34D0FA00000005000000020F34D0F800000005000000010000000300000004120700FA0000000500000002120700F808A912FB00000005120700FA00000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A91309120701080000000405000106135D450700000003045489F71386AD000000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0000000A0000000500000005135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A091386710800000004000000080000000A000000080F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A0913867108000000040C9A86F80F878CF9000000010000000A0F8750F900000008000000011386AD080C9A86F80F878CF9000000010000000A0F8750F90C9A86FA000000070F8750FB0000000A0000000200000001000000040F34D0FA00000005000000020F34D0F800000005000000010000000312073D080500010600000005135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A86FA000000050000000A000000010F350D0800000005000000040F34D0FA00000005000000020F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A86FA000000050F8750FB0780010600000005128A7D07022A45770000000A13E1C50000000000000000070000000300000002000000010F350D0800000005000000040F34D0FA00000005000000020F34D0F800000005000000010000000300000004120700FA08A913090000000512073D080500010600000005135D810700000005000000030000000400000002120700F808A912FB12073CFA0000000208A913090000000512073D080500010600000005135D8107000000050000000300000004120700FA08A913090000000512073D080500010600000005135D8107000000050000000300000004000000020000000100000004"
theorem small_5359033_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359033_left_root small_5359033_left_fuel small_5359033_left_count small_5359033_left_encoded = true := by
  decide +kernel
theorem small_5359033_left_covered : CoveredBy scale carrier boxes small_5359033_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359033_left_root small_5359033_left_fuel small_5359033_left_count small_5359033_left_encoded small_5359033_left_checked

theorem cover_5359033 : CoveredBy scale carrier boxes root_5359033 := by
  apply coveredBy_split_literal root_5359033 small_5359033_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5359645 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5359033_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5359645
#print axioms cover_5359033

def root_5359027 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359027_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359027_left_fuel : Nat := 1
def small_5359027_left_count : Nat := 1
def small_5359027_left_encoded : String := "00000002"
theorem small_5359027_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359027_left_root small_5359027_left_fuel small_5359027_left_count small_5359027_left_encoded = true := by
  decide +kernel
theorem small_5359027_left_covered : CoveredBy scale carrier boxes small_5359027_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359027_left_root small_5359027_left_fuel small_5359027_left_count small_5359027_left_encoded small_5359027_left_checked

theorem cover_5359027 : CoveredBy scale carrier boxes root_5359027 := by
  apply coveredBy_split_literal root_5359027 small_5359027_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5359033 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5359027_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5359033
#print axioms cover_5359027

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132
