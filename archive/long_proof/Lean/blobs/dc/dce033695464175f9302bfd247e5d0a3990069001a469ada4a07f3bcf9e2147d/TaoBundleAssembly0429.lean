import TaoBundleAssembly0428
import TaoBundleChunkBatch0584
import TaoBundleChunkBatch0585
import TaoBundleChunkBatch0586
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429
def root_6205633 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205633_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205633_left_fuel : Nat := 24
def small_6205633_left_count : Nat := 399
def small_6205633_left_encoded : String := "12073D0408A912FD12073D0608A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB0F350D040CFD9BFD0F350D0604548A09000000091386ACFE000000040C9A87000F8750F70C9A870400000005000000070000000000000008000000030F34D1060000000300000008000000020F34D104000000020CFD9BFD0F350D0604548A09138670FE00000007000000041386ACFE000000040C9A8700000000050F878CF70000000000000005000000030F34D1060000000304548A090000000700000005000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D06000000090000000300000009000000020F34D104000000020CFD9BFD000000070F34D1060000000300000007000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020CFD9BFD0F350D06000000090000000300000008000000010F350CF800000001000000090000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A8704000000050F878CFB0000000200000005000000030F34D1060000000300000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A8706000000050F878CFD0000000300000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE0000000400000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF70000000000000009000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8704000000050F878CFB0000000200000005000000000F878CF7000000000C9A86F8000000080F875103000000010C9A87040000000500000009000000030F34D106000000030CFD9C090F34D0FE000000080000000400000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F80000000500000009000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F8751090000000400000005000000030F878CFD000000030C9A86FE000000050F8751090000000400000008000000030F34D106000000030CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A86FE0000000500000006000000000F878CF7000000000C9A86F8000000080F8751030000000100000008000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060000000500000008000000030F34D1060000000300000008000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9C0900000009000000080000000300000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE000000050F87510900000004000000050000000300000008000000010F875103000000010C9A87060000000900000008000000030F34D106000000030000000800000003120701060000000308A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F800000008000000010000000800000000000000080000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D10400000002045489FD1386AD060CFD9C090F34D0FE0000000800000004000000080000000300000008000000000F34D100000000000000000800000002"
theorem small_6205633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6205633_left_root small_6205633_left_fuel small_6205633_left_count small_6205633_left_encoded = true := by
  decide +kernel
theorem small_6205633_left_covered : CoveredBy scale carrier boxes small_6205633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6205633_left_root small_6205633_left_fuel small_6205633_left_count small_6205633_left_encoded small_6205633_left_checked

theorem cover_6205633 : CoveredBy scale carrier boxes root_6205633 := by
  apply coveredBy_split_literal root_6205633 small_6205633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206493 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6205633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206493
#print axioms cover_6205633

def root_6205627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6205627_left_fuel : Nat := 1
def small_6205627_left_count : Nat := 1
def small_6205627_left_encoded : String := "00000001"
theorem small_6205627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6205627_left_root small_6205627_left_fuel small_6205627_left_count small_6205627_left_encoded = true := by
  decide +kernel
theorem small_6205627_left_covered : CoveredBy scale carrier boxes small_6205627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6205627_left_root small_6205627_left_fuel small_6205627_left_count small_6205627_left_encoded small_6205627_left_checked

theorem cover_6205627 : CoveredBy scale carrier boxes root_6205627 := by
  apply coveredBy_split_literal root_6205627 small_6205627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6205633 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6205627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6205633
#print axioms cover_6205627

def root_6203705 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203705 : CoveredBy scale carrier boxes root_6203705 := by
  apply coveredBy_split_literal root_6203705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2336.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6205627 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2336.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6205627
#print axioms cover_6203705

def root_6203700 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203700_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203700_right_fuel : Nat := 1
def small_6203700_right_count : Nat := 1
def small_6203700_right_encoded : String := "00000000"
theorem small_6203700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203700_right_root small_6203700_right_fuel small_6203700_right_count small_6203700_right_encoded = true := by
  decide +kernel
theorem small_6203700_right_covered : CoveredBy scale carrier boxes small_6203700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203700_right_root small_6203700_right_fuel small_6203700_right_count small_6203700_right_encoded small_6203700_right_checked

theorem cover_6203700 : CoveredBy scale carrier boxes root_6203700 := by
  apply coveredBy_split_literal root_6203700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6203705 small_6203700_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6203705
  · exact small_6203700_right_covered
#print axioms cover_6203700

def root_6203699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203699 : CoveredBy scale carrier boxes root_6203699 := by
  apply coveredBy_split_literal root_6203699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6203700 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2340.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6203700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2340.covered
#print axioms cover_6203699

def root_6203694 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203694_right_fuel : Nat := 1
def small_6203694_right_count : Nat := 1
def small_6203694_right_encoded : String := "00000004"
theorem small_6203694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203694_right_root small_6203694_right_fuel small_6203694_right_count small_6203694_right_encoded = true := by
  decide +kernel
theorem small_6203694_right_covered : CoveredBy scale carrier boxes small_6203694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203694_right_root small_6203694_right_fuel small_6203694_right_count small_6203694_right_encoded small_6203694_right_checked

theorem cover_6203694 : CoveredBy scale carrier boxes root_6203694 := by
  apply coveredBy_split_literal root_6203694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6203699 small_6203694_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6203699
  · exact small_6203694_right_covered
#print axioms cover_6203694

def root_6216067 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216067_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216067_right_fuel : Nat := 40
def small_6216067_right_count : Nat := 405
def small_6216067_right_encoded : String := "0F34D100000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0000000A0F34D10600000003000000060000000213867104000000020CFD9BFD0000000A0F34D1060000000300000006000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD00000003078000FE128A7D090AD3577710D13D00067ECE7B0000000612EA5904000000020B4D43F80000000A10801103000000010DE7CA060000000A000000060000000010D10100000000000000000800000004128A4109000000040AD3577710D13D00000000060000000000000006000000030F34D106000000030C9A86F80F878D0300000006000000010F87510300000001078000FE00000008000000060000000213867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000A0F878CFD00000003078000FE128A7D090AD357770000000A10D10100000000000000000700000004128A41090000000400000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090AD357770000000A10D10100000000000000000A00000004128A4109000000040000000A000000030F878CFD00000003078000FE128A7D090AD3577710D13D00022A457B13E201040B4D43F810804D030DE7CA060000000A0E6014FD0000000308C000FE00000008000000060000000110801103000000010DE7CA060E5FD8FD0000000A000000030E6014FD0000000308C000FE11FC25090BE879B700000008000000080000000411FBE90900000004000000060000000213E1C504000000020B4D43F810804D030DE7CA060000000A0E6014FD0000000308C000FE11FC25090BE879B71011AD000115233B0000000A000000070000000010117100000000000000000700000004000000070000000110801103000000010DE7CA060E5FD8FD08C000FE11FC25090BE879B71011AD000115233B0000000A13F85904000000020AA6A2780000000A10ED7103000000010D412886000000070EFA4CFD00000003096000FE11AABD090C730AD7000000070000000700000004000000070000000010117100000000000000000A0000000411FBE909000000040BE879B70000000700000007000000030E6014FD0000000308C000FE11FC25090BE879B71011AD000115233B13F895040DAED87D0E9661060AA6A2780000000A10ED710300000001096000FE0000000800000005000000030E96250600000003000000080000000213F85904000000020DAED87D0E9661060AA6A27810EDAD03000000070000000110ED710300000001096000FE11AABD090C730AD70FA74500008A921B13FE35040E0776BD0E413906000000070000000300000007000000020000000700000000000000070000000400000005000000030E962506000000030AA6A27810EDAD030000000700000001000000050000000010117100000000000115233B000000080000000700000004000000050000000010D1010000000000022A457B13E201040B4D43F810804D030000000A0000000110801103000000010DE7CA060E5FD8FD0000000A00000003000000050000000213E1C504000000020B4D43F810804D03000000070000000110801103000000010DE7CA06000000070000000500000004128A4109000000040AD3577710D13D00022A457B13E201040B4D43F80000000A10801103000000010DE7CA060000000A0000000500000002000000070000000010D101000000000000000007000000030F34D106000000030C9A86F80F878D03078000FE128A7D090AD3577710D13D00022A457B0000000613E1C504000000020AD3577D10D13D060000000700000003000000060000000010D1010000000000022A457B000000060000000700000004128A41090000000400000006000000010F87510300000001078000FE128A7D090AD3577710D13D00022A457B13E201040AD3577D10D13D060B4D43F8000000060000000600000003000000060000000213E1C504000000020AD3577D10D13D060B4D43F810804D0308C000FE11FC25090BE879B71011AD000115233B0000000613F85904000000020BE879BD000000060000000600000000101171000000000000000007000000040000000500000001000000050000000310D1010600000003000000050000000010D1010000000000000000050000000400000005"
theorem small_6216067_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216067_right_root small_6216067_right_fuel small_6216067_right_count small_6216067_right_encoded = true := by
  decide +kernel
theorem small_6216067_right_covered : CoveredBy scale carrier boxes small_6216067_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216067_right_root small_6216067_right_fuel small_6216067_right_count small_6216067_right_encoded small_6216067_right_checked

theorem cover_6216067 : CoveredBy scale carrier boxes root_6216067 := by
  apply coveredBy_split_literal root_6216067 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2341.root small_6216067_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2341.covered
  · exact small_6216067_right_covered
#print axioms cover_6216067

def root_6216062 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216062_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216062_right_fuel : Nat := 1
def small_6216062_right_count : Nat := 1
def small_6216062_right_encoded : String := "00000004"
theorem small_6216062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216062_right_root small_6216062_right_fuel small_6216062_right_count small_6216062_right_encoded = true := by
  decide +kernel
theorem small_6216062_right_covered : CoveredBy scale carrier boxes small_6216062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216062_right_root small_6216062_right_fuel small_6216062_right_count small_6216062_right_encoded small_6216062_right_checked

theorem cover_6216062 : CoveredBy scale carrier boxes root_6216062 := by
  apply coveredBy_split_literal root_6216062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216067 small_6216062_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216067
  · exact small_6216062_right_covered
#print axioms cover_6216062

def root_6216061 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216061_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216061_right_fuel : Nat := 21
def small_6216061_right_count : Nat := 127
def small_6216061_right_encoded : String := "135D4509000000040CFD9BF70F350D000CFD9C030F34D0F8045489FB0000000613867104000000020CFD9BFD0F350D060000000A0000000300000006000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A87000F8750F70C9A86F80000000600000006000000000F878CF7000000000C9A86F80000000A0F875103000000010C9A87060000000A00000006000000030F34D10600000003000000060000000213867104000000020CFD9BFD0F350D060C9A87000F8750F70C9A86F80F878D030000000A000000010F875103000000010C9A87060000000A0F878CFD0000000300000006000000000F878CF7000000000C9A86F80000000A0F875103000000010C9A87060000000A0F878CFD00000003028000FE13D7ED09022A457B0000000613E1C504000000020DE7CA0000000006000000070000000400000005000000030F34D1060000000300000006000000000F34D100000000000CFD9C030F34D0F8045489FB0000000600000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A87060000000A00000006000000030F34D10600000003000000060000000213867104000000020CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A87060000000700000005000000030F34D1060000000300000005"
theorem small_6216061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216061_right_root small_6216061_right_fuel small_6216061_right_count small_6216061_right_encoded = true := by
  decide +kernel
theorem small_6216061_right_covered : CoveredBy scale carrier boxes small_6216061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216061_right_root small_6216061_right_fuel small_6216061_right_count small_6216061_right_encoded small_6216061_right_checked

theorem cover_6216061 : CoveredBy scale carrier boxes root_6216061 := by
  apply coveredBy_split_literal root_6216061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216062 small_6216061_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216062
  · exact small_6216061_right_covered
#print axioms cover_6216061

def root_6216056 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216056_right_fuel : Nat := 1
def small_6216056_right_count : Nat := 1
def small_6216056_right_encoded : String := "00000003"
theorem small_6216056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216056_right_root small_6216056_right_fuel small_6216056_right_count small_6216056_right_encoded = true := by
  decide +kernel
theorem small_6216056_right_covered : CoveredBy scale carrier boxes small_6216056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216056_right_root small_6216056_right_fuel small_6216056_right_count small_6216056_right_encoded small_6216056_right_checked

theorem cover_6216056 : CoveredBy scale carrier boxes root_6216056 := by
  apply coveredBy_split_literal root_6216056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216061 small_6216056_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216061
  · exact small_6216056_right_covered
#print axioms cover_6216056

def root_6216055 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216055_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216055_right_fuel : Nat := 15
def small_6216055_right_count : Nat := 55
def small_6216055_right_encoded : String := "1207010600000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000006000000010F350CF800000001045489FB000000061386710400000002045489FD1386AD060C9A8700000000060F878CF7000000000C9A86F8000000060000000600000003138671060000000300000006000000000F34D100000000000CFD9C03000000060F350CF800000001045489FB000000061386710400000002045489FD1386AD060C9A86F80000000600000005000000030000000600000004135D4509000000040CFD9BF70F350D00000000060000000000000006"
theorem small_6216055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216055_right_root small_6216055_right_fuel small_6216055_right_count small_6216055_right_encoded = true := by
  decide +kernel
theorem small_6216055_right_covered : CoveredBy scale carrier boxes small_6216055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216055_right_root small_6216055_right_fuel small_6216055_right_count small_6216055_right_encoded small_6216055_right_checked

theorem cover_6216055 : CoveredBy scale carrier boxes root_6216055 := by
  apply coveredBy_split_literal root_6216055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216056 small_6216055_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216056
  · exact small_6216055_right_covered
#print axioms cover_6216055

def root_6216049 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216049_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6216049_left_fuel : Nat := 1
def small_6216049_left_count : Nat := 1
def small_6216049_left_encoded : String := "00000002"
theorem small_6216049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6216049_left_root small_6216049_left_fuel small_6216049_left_count small_6216049_left_encoded = true := by
  decide +kernel
theorem small_6216049_left_covered : CoveredBy scale carrier boxes small_6216049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6216049_left_root small_6216049_left_fuel small_6216049_left_count small_6216049_left_encoded small_6216049_left_checked

theorem cover_6216049 : CoveredBy scale carrier boxes root_6216049 := by
  apply coveredBy_split_literal root_6216049 small_6216049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216055 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6216049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216055
#print axioms cover_6216049

def root_6215723 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215723_left_fuel : Nat := 20
def small_6215723_left_count : Nat := 149
def small_6215723_left_encoded : String := "12073D0408A912FD12073D06050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F80CFD9BFB000000060F34D1040000000200000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060C9A8700000000060F878CF700000000000000060000000300000006000000020F34D104000000020CFD9BFD0F350D060C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A87060F8750FD0000000A0000000300000006000000000F878CF7000000000C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A0000000300000006000000030F34D1060000000300000006000000000F34D100000000000CFD9C030F34D0F80CFD9BFB000000060F34D1040000000200000006000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350D060C9A86F800000006000000060000000300000006000000020F34D104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000A00000006000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD0000000300000006000000030F34D106000000030000000600000004135D4509000000040CFD9BF70F350D000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D1040000000200000006000000000F34D100000000000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D1040000000200000006000000031207010600000003050000FE135D81090CFD9BF70F350D00000000060000000000000006000000040000000600000002"
theorem small_6215723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215723_left_root small_6215723_left_fuel small_6215723_left_count small_6215723_left_encoded = true := by
  decide +kernel
theorem small_6215723_left_covered : CoveredBy scale carrier boxes small_6215723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215723_left_root small_6215723_left_fuel small_6215723_left_count small_6215723_left_encoded small_6215723_left_checked

theorem cover_6215723 : CoveredBy scale carrier boxes root_6215723 := by
  apply coveredBy_split_literal root_6215723 small_6215723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6216049 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6215723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6216049
#print axioms cover_6215723

def root_6215717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215717_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215717_left_fuel : Nat := 1
def small_6215717_left_count : Nat := 1
def small_6215717_left_encoded : String := "00000001"
theorem small_6215717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215717_left_root small_6215717_left_fuel small_6215717_left_count small_6215717_left_encoded = true := by
  decide +kernel
theorem small_6215717_left_covered : CoveredBy scale carrier boxes small_6215717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215717_left_root small_6215717_left_fuel small_6215717_left_count small_6215717_left_encoded small_6215717_left_checked

theorem cover_6215717 : CoveredBy scale carrier boxes root_6215717 := by
  apply coveredBy_split_literal root_6215717 small_6215717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6215723 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6215717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6215723
#print axioms cover_6215717

def root_6215627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215627_left_fuel : Nat := 14
def small_6215627_left_count : Nat := 41
def small_6215627_left_encoded : String := "120700F808A912FB12073D0408A912FD12073D06050000FE0000000600000006000000030000000600000002120701040000000208A912FD12073D06050000FE135D81090CFD9BF70F350D0004548A03000000061386ACF800000001045489FB0000000613867104000000020000000A000000000F34D100000000000000000A00000004135D450900000004000000060000000312070106000000030000000600000001"
theorem small_6215627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215627_left_root small_6215627_left_fuel small_6215627_left_count small_6215627_left_encoded = true := by
  decide +kernel
theorem small_6215627_left_covered : CoveredBy scale carrier boxes small_6215627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215627_left_root small_6215627_left_fuel small_6215627_left_count small_6215627_left_encoded small_6215627_left_checked

theorem cover_6215627 : CoveredBy scale carrier boxes root_6215627 := by
  apply coveredBy_split_literal root_6215627 small_6215627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6215717 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6215627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6215717
#print axioms cover_6215627

def root_6215622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215622_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215622_right_fuel : Nat := 1
def small_6215622_right_count : Nat := 1
def small_6215622_right_encoded : String := "00000000"
theorem small_6215622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215622_right_root small_6215622_right_fuel small_6215622_right_count small_6215622_right_encoded = true := by
  decide +kernel
theorem small_6215622_right_covered : CoveredBy scale carrier boxes small_6215622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215622_right_root small_6215622_right_fuel small_6215622_right_count small_6215622_right_encoded small_6215622_right_checked

theorem cover_6215622 : CoveredBy scale carrier boxes root_6215622 := by
  apply coveredBy_split_literal root_6215622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6215627 small_6215622_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6215627
  · exact small_6215622_right_covered
#print axioms cover_6215622

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429
