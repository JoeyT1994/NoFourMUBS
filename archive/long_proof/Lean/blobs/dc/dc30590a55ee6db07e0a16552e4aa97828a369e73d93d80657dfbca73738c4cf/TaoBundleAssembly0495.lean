import TaoBundleAssembly0494
import TaoBundleChunkBatch0680
import TaoBundleChunkBatch0681
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495
def root_7219088 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219088_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219088_right_fuel : Nat := 31
def small_7219088_right_count : Nat := 265
def small_7219088_right_encoded : String := "0F34D100000000000CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002000000060F8750FB07800102128A41030000000100000006128A7D03078000FE128A7CFF000000040AD3577710D13D00067ECE7D0000000512EA5906000000030B4D43FA10804CFB0000000200000006000000050000000010D101000000000000000006128A40FF000000050000000400000001000000020000000313867106000000030C9A86FA0F878CFB0000000207800102128A410300000001078000FE0000000600000007128A7D03078000FE128A7CFF000000040AD3577710D13D00022A457D13E201060DE7C9FA000000060E5FD8FB000000060000000200000003000000070000000010D10100000000000000000700000007000000010F8750FB07800102128A410300000001078000FE128A7CFF000000040AD3577710D13D00022A457D13E201060B4D43FA00000006108010FB064001020000000612FFAD0308C000FE000000060000000500000001000000020000000313E1C506000000030B4D43FA10804CFB00000002064001020000000712FFAD030000000700000001108010FB0640010212FF71030000000108C000FE11FC24FF000000040BE879B71011AD000115233D0000000613F85906000000030AA6A27A0000000710ED70FB05A001021331350300000001096000FE0000000600000007133171030000000700000001000000020000000010117100000000000000000611FBE8FF0BE879B700000007000000070000000412FFAD0308C000FE11FC24FF000000040BE879B71011AD000115233D13F895060AA6A27A10EDACFB0000000206E001020000000600000005000000050000000313F85906000000030AA6A27A0000000710ED70FB00000005000000020000000010117100000000000000000711FBE8FF0BE879B700000005000000070000000400000001000000020000000010D1010000000000022A457D0000000600000007128A40FF0AD3577710D13D00022A457D13E201060B4D43FA000000060000000500000003000000070000000010D10100000000000000000700000004128A7D03078000FE128A7CFF000000040AD3577710D13D00022A457D13E201060B4D43FA10804CFB0000000208C0010211FBE9030000000108C000FE000000060000000500000005000000050000000313E1C506000000030B4D43FA10804CFB0000000208C001020000000711FC25030000000700000001108010FB08C0010211FBE9030000000108C000FE11FC24FF000000040BE879B7000000051011710000000000000000050000000500000005000000020000000010D1010000000000022A457D13E201060B4D43FA10804CFB0000000200000006000000050000000300000007128A40FF0AD357770000000510D1010000000000000000050000000400000001000000020F34D0FA0000000600000002"
theorem small_7219088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219088_right_root small_7219088_right_fuel small_7219088_right_count small_7219088_right_encoded = true := by
  decide +kernel
theorem small_7219088_right_covered : CoveredBy scale carrier boxes small_7219088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219088_right_root small_7219088_right_fuel small_7219088_right_count small_7219088_right_encoded small_7219088_right_checked

theorem cover_7219088 : CoveredBy scale carrier boxes root_7219088 := by
  apply coveredBy_split_literal root_7219088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7219089 small_7219088_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7219089
  · exact small_7219088_right_covered
#print axioms cover_7219088

def root_7219082 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219082_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219082_left_fuel : Nat := 1
def small_7219082_left_count : Nat := 1
def small_7219082_left_encoded : String := "00000004"
theorem small_7219082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219082_left_root small_7219082_left_fuel small_7219082_left_count small_7219082_left_encoded = true := by
  decide +kernel
theorem small_7219082_left_covered : CoveredBy scale carrier boxes small_7219082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219082_left_root small_7219082_left_fuel small_7219082_left_count small_7219082_left_encoded small_7219082_left_checked

theorem cover_7219082 : CoveredBy scale carrier boxes root_7219082 := by
  apply coveredBy_split_literal root_7219082 small_7219082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7219088 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7219082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7219088
#print axioms cover_7219082

def root_7219081 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219081_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219081_right_fuel : Nat := 18
def small_7219081_right_count : Nat := 139
def small_7219081_right_encoded : String := "135D44FF0CFD9BF70F350D000CFD9BFB0F350CFA00000002045489FD1386AD060C9A87000F8750F70C9A86FA0F878CFB0000000207800102128A410300000001028000FE13D7ECFF00000004067ECE7D000000060000000800000008128A7D03028000FE0000000800000005000000010F8750FB0000000500000002000000000F878CF7000000000C9A86FA0F878CFB0000000207800102128A41030000000100000006128A7D0300000005000000010F8750FB00000005000000020000000313867106000000030C9A87000F8750F70C9A86FA0F878CFB0000000207800102128A4103000000010000000A000000080F8750FB07800102128A410300000001028000FE00000008000000050000000500000002000000000F878CF7000000000C9A86FA0F878CFB00000002000000070F8750FB07800102128A410300000001028000FE13D7ECFF00000004022A457D0000000513E1C50600000003000000050000000500000005000000020F34D0FA045489FD1386AD060C9A87000F8750F707800102128A41030000000100000006128A7D03028000FE0000000800000007000000010000000000000006000000030000000700000002000000000F34D100000000000CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002000000060F8750FB00000005000000020000000313867106000000030C9A86FA000000070F8750FB078001020000000700000005000000020F34D0FA000000070000000200000004"
theorem small_7219081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219081_right_root small_7219081_right_fuel small_7219081_right_count small_7219081_right_encoded = true := by
  decide +kernel
theorem small_7219081_right_covered : CoveredBy scale carrier boxes small_7219081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219081_right_root small_7219081_right_fuel small_7219081_right_count small_7219081_right_encoded small_7219081_right_checked

theorem cover_7219081 : CoveredBy scale carrier boxes root_7219081 := by
  apply coveredBy_split_literal root_7219081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7219082 small_7219081_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7219082
  · exact small_7219081_right_covered
#print axioms cover_7219081

def root_7219076 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219076_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219076_right_fuel : Nat := 1
def small_7219076_right_count : Nat := 1
def small_7219076_right_encoded : String := "00000001"
theorem small_7219076_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219076_right_root small_7219076_right_fuel small_7219076_right_count small_7219076_right_encoded = true := by
  decide +kernel
theorem small_7219076_right_covered : CoveredBy scale carrier boxes small_7219076_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219076_right_root small_7219076_right_fuel small_7219076_right_count small_7219076_right_encoded small_7219076_right_checked

theorem cover_7219076 : CoveredBy scale carrier boxes root_7219076 := by
  apply coveredBy_split_literal root_7219076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7219081 small_7219076_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7219081
  · exact small_7219076_right_covered
#print axioms cover_7219076

def root_7216800 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7216800 : CoveredBy scale carrier boxes root_7216800 := by
  apply coveredBy_split_literal root_7216800 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2719.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7219076 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2719.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7219076
#print axioms cover_7216800

def root_7216794 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216794_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216794_left_fuel : Nat := 1
def small_7216794_left_count : Nat := 1
def small_7216794_left_encoded : String := "00000003"
theorem small_7216794_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216794_left_root small_7216794_left_fuel small_7216794_left_count small_7216794_left_encoded = true := by
  decide +kernel
theorem small_7216794_left_covered : CoveredBy scale carrier boxes small_7216794_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216794_left_root small_7216794_left_fuel small_7216794_left_count small_7216794_left_encoded small_7216794_left_checked

theorem cover_7216794 : CoveredBy scale carrier boxes root_7216794 := by
  apply coveredBy_split_literal root_7216794 small_7216794_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216800 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7216794_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216800
#print axioms cover_7216794

def root_7216600 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216600_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216600_left_fuel : Nat := 21
def small_7216600_left_count : Nat := 93
def small_7216600_left_encoded : String := "12073D0605000102135D450300000001050000FE00000006135D44FF0000000600000004135D8103050000FE135D80FF000000040CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030C9A87000F8750F70C9A86FA0F878CFB000000020780010200000006128A7D03078000FE00000006128A40FF0000000600000004000000010F8750FB0780010200000009128A7D03078000FE128A7CFF000000040AD3577D0000000500000008000000050000000100000002000000000F878CF7000000000C9A86FA000000060F8750FB0780010200000006128A7D03078000FE0000000600000005000000010000000200000006000000000F34D1000000000000000006135D44FF0CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030C9A8700000000090F878CF7000000000C9A86FA000000060000000500000006000000000F34D1000000000000000006000000040000000100000003"
theorem small_7216600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216600_left_root small_7216600_left_fuel small_7216600_left_count small_7216600_left_encoded = true := by
  decide +kernel
theorem small_7216600_left_covered : CoveredBy scale carrier boxes small_7216600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216600_left_root small_7216600_left_fuel small_7216600_left_count small_7216600_left_encoded small_7216600_left_checked

theorem cover_7216600 : CoveredBy scale carrier boxes root_7216600 := by
  apply coveredBy_split_literal root_7216600 small_7216600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216794 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7216600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216794
#print axioms cover_7216600

def root_7216594 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216594_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216594_left_fuel : Nat := 1
def small_7216594_left_count : Nat := 1
def small_7216594_left_encoded : String := "00000002"
theorem small_7216594_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216594_left_root small_7216594_left_fuel small_7216594_left_count small_7216594_left_encoded = true := by
  decide +kernel
theorem small_7216594_left_covered : CoveredBy scale carrier boxes small_7216594_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216594_left_root small_7216594_left_fuel small_7216594_left_count small_7216594_left_encoded small_7216594_left_checked

theorem cover_7216594 : CoveredBy scale carrier boxes root_7216594 := by
  apply coveredBy_split_literal root_7216594 small_7216594_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216600 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7216594_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216600
#print axioms cover_7216594

def root_7216593 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216593_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216593_right_fuel : Nat := 7
def small_7216593_right_count : Nat := 13
def small_7216593_right_encoded : String := "120700FA08A912FD0000000612070106000000030500010200000006135D8103050000FE00000006000000070000000100000002"
theorem small_7216593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216593_right_root small_7216593_right_fuel small_7216593_right_count small_7216593_right_encoded = true := by
  decide +kernel
theorem small_7216593_right_covered : CoveredBy scale carrier boxes small_7216593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216593_right_root small_7216593_right_fuel small_7216593_right_count small_7216593_right_encoded small_7216593_right_checked

theorem cover_7216593 : CoveredBy scale carrier boxes root_7216593 := by
  apply coveredBy_split_literal root_7216593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216594 small_7216593_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216594
  · exact small_7216593_right_covered
#print axioms cover_7216593

def root_7216588 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216588_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216588_right_fuel : Nat := 1
def small_7216588_right_count : Nat := 1
def small_7216588_right_encoded : String := "00000000"
theorem small_7216588_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216588_right_root small_7216588_right_fuel small_7216588_right_count small_7216588_right_encoded = true := by
  decide +kernel
theorem small_7216588_right_covered : CoveredBy scale carrier boxes small_7216588_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216588_right_root small_7216588_right_fuel small_7216588_right_count small_7216588_right_encoded small_7216588_right_checked

theorem cover_7216588 : CoveredBy scale carrier boxes root_7216588 := by
  apply coveredBy_split_literal root_7216588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216593 small_7216588_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216593
  · exact small_7216588_right_covered
#print axioms cover_7216588

def root_7216587 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216587_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216587_right_fuel : Nat := 25
def small_7216587_right_count : Nat := 99
def small_7216587_right_encoded : String := "120701000000000008A912FB12073CFA0000000208A912FD00000006120701060000000305000102135D450300000001050000FE00000006135D44FF0000000600000004135D8103050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350CFA00000002045489FD0000000613867106000000030C9A86FA0F878CFB00000002000000070F8750FB07800102128A410300000001078000FE0000000600000006128A7D03078000FE128A7CFF00000004067ECE7712EA9500022A457D00000006000000070000000012EA59000000000000000007000000070000000100000002000000060000000013867100000000000CFD9BFB0F350CFA00000002045489FD0000000613867106000000030C9A86FA000000060F8750FB0780010200000006128A7D0300000007000000010000000200000006135D44FF045489F71386AD000CFD9BFB0F350CFA00000002045489FD0000000600000007000000060000000013867100000000000CFD9BFB0F350CFA000000020000000700000006000000040000000100000006"
theorem small_7216587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216587_right_root small_7216587_right_fuel small_7216587_right_count small_7216587_right_encoded = true := by
  decide +kernel
theorem small_7216587_right_covered : CoveredBy scale carrier boxes small_7216587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216587_right_root small_7216587_right_fuel small_7216587_right_count small_7216587_right_encoded small_7216587_right_checked

theorem cover_7216587 : CoveredBy scale carrier boxes root_7216587 := by
  apply coveredBy_split_literal root_7216587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216588 small_7216587_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216588
  · exact small_7216587_right_covered
#print axioms cover_7216587

def root_7216582 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216582_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7216582_right_fuel : Nat := 1
def small_7216582_right_count : Nat := 1
def small_7216582_right_encoded : String := "00000004"
theorem small_7216582_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7216582_right_root small_7216582_right_fuel small_7216582_right_count small_7216582_right_encoded = true := by
  decide +kernel
theorem small_7216582_right_covered : CoveredBy scale carrier boxes small_7216582_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7216582_right_root small_7216582_right_fuel small_7216582_right_count small_7216582_right_encoded small_7216582_right_checked

theorem cover_7216582 : CoveredBy scale carrier boxes root_7216582 := by
  apply coveredBy_split_literal root_7216582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216587 small_7216582_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216587
  · exact small_7216582_right_covered
#print axioms cover_7216582

def root_7201656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7201656 : CoveredBy scale carrier boxes root_7201656 := by
  apply coveredBy_split_literal root_7201656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7216582 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201657
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7216582
#print axioms cover_7201656

def root_7201650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201650_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201650_left_fuel : Nat := 1
def small_7201650_left_count : Nat := 1
def small_7201650_left_encoded : String := "00000003"
theorem small_7201650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201650_left_root small_7201650_left_fuel small_7201650_left_count small_7201650_left_encoded = true := by
  decide +kernel
theorem small_7201650_left_covered : CoveredBy scale carrier boxes small_7201650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201650_left_root small_7201650_left_fuel small_7201650_left_count small_7201650_left_encoded small_7201650_left_checked

theorem cover_7201650 : CoveredBy scale carrier boxes root_7201650 := by
  apply coveredBy_split_literal root_7201650 small_7201650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201656 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7201650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201656
#print axioms cover_7201650

def root_7201598 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201598_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201598_left_fuel : Nat := 10
def small_7201598_left_count : Nat := 23
def small_7201598_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A912FF00000006120700FE000000060000000400000006000000001207010000000000000000061151E8FF000000060000000400000003"
theorem small_7201598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201598_left_root small_7201598_left_fuel small_7201598_left_count small_7201598_left_encoded = true := by
  decide +kernel
theorem small_7201598_left_covered : CoveredBy scale carrier boxes small_7201598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201598_left_root small_7201598_left_fuel small_7201598_left_count small_7201598_left_encoded small_7201598_left_checked

theorem cover_7201598 : CoveredBy scale carrier boxes root_7201598 := by
  apply coveredBy_split_literal root_7201598 small_7201598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201650 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7201598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201650
#print axioms cover_7201598

def root_7201592 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201592_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201592_left_fuel : Nat := 1
def small_7201592_left_count : Nat := 1
def small_7201592_left_encoded : String := "00000002"
theorem small_7201592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201592_left_root small_7201592_left_fuel small_7201592_left_count small_7201592_left_encoded = true := by
  decide +kernel
theorem small_7201592_left_covered : CoveredBy scale carrier boxes small_7201592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201592_left_root small_7201592_left_fuel small_7201592_left_count small_7201592_left_encoded small_7201592_left_checked

theorem cover_7201592 : CoveredBy scale carrier boxes root_7201592 := by
  apply coveredBy_split_literal root_7201592 small_7201592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201598 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7201592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201598
#print axioms cover_7201592

def root_7224075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224075_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224075_right_fuel : Nat := 19
def small_7224075_right_count : Nat := 63
def small_7224075_right_encoded : String := "120701000000000008A912FD0000000A120701060000000308A912FF12073CFE0000000405000102135D450300000001050000FA135D80FB00000002045489F71386AD00045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF02800102000000080000000A0000000400000008000000000000000A0000000A135D8103050000FA135D80FB00000002045489F71386AD00045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A86FE0000000A0F8750FF078001020000000A0000000A000000040000000A0000000013867100000000000000000A0000000A000000010000000A"
theorem small_7224075_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7224075_right_root small_7224075_right_fuel small_7224075_right_count small_7224075_right_encoded = true := by
  decide +kernel
theorem small_7224075_right_covered : CoveredBy scale carrier boxes small_7224075_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7224075_right_root small_7224075_right_fuel small_7224075_right_count small_7224075_right_encoded small_7224075_right_checked

theorem cover_7224075 : CoveredBy scale carrier boxes root_7224075 := by
  apply coveredBy_split_literal root_7224075 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2721.root small_7224075_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2721.covered
  · exact small_7224075_right_covered
#print axioms cover_7224075

def root_7224069 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224069_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224069_left_fuel : Nat := 1
def small_7224069_left_count : Nat := 1
def small_7224069_left_encoded : String := "00000004"
theorem small_7224069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7224069_left_root small_7224069_left_fuel small_7224069_left_count small_7224069_left_encoded = true := by
  decide +kernel
theorem small_7224069_left_covered : CoveredBy scale carrier boxes small_7224069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7224069_left_root small_7224069_left_fuel small_7224069_left_count small_7224069_left_encoded small_7224069_left_checked

theorem cover_7224069 : CoveredBy scale carrier boxes root_7224069 := by
  apply coveredBy_split_literal root_7224069 small_7224069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7224075 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7224069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7224075
#print axioms cover_7224069

def root_7224068 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7224068 : CoveredBy scale carrier boxes root_7224068 := by
  apply coveredBy_split_literal root_7224068 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7224069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2722.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7224069
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2722.covered
#print axioms cover_7224068

def root_7224062 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7224062_left_fuel : Nat := 1
def small_7224062_left_count : Nat := 1
def small_7224062_left_encoded : String := "00000003"
theorem small_7224062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7224062_left_root small_7224062_left_fuel small_7224062_left_count small_7224062_left_encoded = true := by
  decide +kernel
theorem small_7224062_left_covered : CoveredBy scale carrier boxes small_7224062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7224062_left_root small_7224062_left_fuel small_7224062_left_count small_7224062_left_encoded small_7224062_left_checked

theorem cover_7224062 : CoveredBy scale carrier boxes root_7224062 := by
  apply coveredBy_split_literal root_7224062 small_7224062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7224068 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7224062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7224068
#print axioms cover_7224062

def root_7223964 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7223964_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7223964_left_fuel : Nat := 11
def small_7223964_left_count : Nat := 45
def small_7223964_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FF12073CFE0000000405000102135D450300000001000000060000000A120700FE05000102135D450300000001000000090000000A000000040000000012070100000000000000000A1151E8FF08A912F712073D000500010200000006135D8103050000FA00000006135D44FB0500010600000006000000050000000200000001000000001207010000000000000000060000000400000003"
theorem small_7223964_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7223964_left_root small_7223964_left_fuel small_7223964_left_count small_7223964_left_encoded = true := by
  decide +kernel
theorem small_7223964_left_covered : CoveredBy scale carrier boxes small_7223964_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7223964_left_root small_7223964_left_fuel small_7223964_left_count small_7223964_left_encoded small_7223964_left_checked

theorem cover_7223964 : CoveredBy scale carrier boxes root_7223964 := by
  apply coveredBy_split_literal root_7223964 small_7223964_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7224062 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7223964_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7224062
#print axioms cover_7223964

def root_7223959 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7223959_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7223959_right_fuel : Nat := 1
def small_7223959_right_count : Nat := 1
def small_7223959_right_encoded : String := "00000002"
theorem small_7223959_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7223959_right_root small_7223959_right_fuel small_7223959_right_count small_7223959_right_encoded = true := by
  decide +kernel
theorem small_7223959_right_covered : CoveredBy scale carrier boxes small_7223959_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7223959_right_root small_7223959_right_fuel small_7223959_right_count small_7223959_right_encoded small_7223959_right_checked

theorem cover_7223959 : CoveredBy scale carrier boxes root_7223959 := by
  apply coveredBy_split_literal root_7223959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7223964 small_7223959_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7223964
  · exact small_7223959_right_covered
#print axioms cover_7223959

def root_7201591 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7201591 : CoveredBy scale carrier boxes root_7201591 := by
  apply coveredBy_split_literal root_7201591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7223959 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7223959
#print axioms cover_7201591

def root_7201585 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201585_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201585_left_fuel : Nat := 1
def small_7201585_left_count : Nat := 1
def small_7201585_left_encoded : String := "00000001"
theorem small_7201585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201585_left_root small_7201585_left_fuel small_7201585_left_count small_7201585_left_encoded = true := by
  decide +kernel
theorem small_7201585_left_covered : CoveredBy scale carrier boxes small_7201585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201585_left_root small_7201585_left_fuel small_7201585_left_count small_7201585_left_encoded small_7201585_left_checked

theorem cover_7201585 : CoveredBy scale carrier boxes root_7201585 := by
  apply coveredBy_split_literal root_7201585 small_7201585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201591 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7201585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201591
#print axioms cover_7201585

def root_7232014 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232014_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232014_right_fuel : Nat := 26
def small_7232014_right_count : Nat := 335
def small_7232014_right_encoded : String := "0F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE000000090F8750FF00000005000000040000000A0000000A0000000313867106000000030CFD9BFF000000090F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE000000090F8750FF00000009000000040F34D0FE00000009000000040000000300000009000000020F350D020CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040000000A0F8750FF0AD3577710D13D00067ECE7D0000000612EA5906000000030B4D440210801103000000010000000610804D030DE7C9FA0E6014FB00000002000000060000000A000000010000000010D101000000000000000006000000040F8750FB0C9A86FE0000000A0F8750FF0AD357770000000A0000000A00000004000000020F878D030C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040000000A0F8750FF0AD3577710D13D00067ECE7D0000000A000000090000000010D10100000000000000000A000000040F8750FB0000000A00000002000000010F34D0FE0000000A000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040AD357770000000910D1010000000000000000090F8750FF0AD3577710D13D00022A457D13E201060B4D440210801103000000010DE7C9FA000000090E5FD8FB0B4D43FE00000009108010FF0000000900000004000000020000000900000003000000090000000010D1010000000000022A457D13E201060B4D440210801103000000010DE7C9FA000000060000000A000000090000000300000007000000040F8750FB0C9A86FE0F878CFF000000040AD3577710D13D00022A457D0000000A00000009000000000000000A0F8750FF0AD3577710D13D00022A457D13E201060B4D440210801103000000010B4D43FA10804CFB000000020000000A0000000A10804D03000000050000000100000003000000090000000010D1010000000000022A457D0000000A0000000900000004000000020F878D030C9A86FA0F878CFB000000020C9A86FE000000090F8750FF00000009000000040F8750FB0C9A86FE000000090F8750FF000000090000000400000002000000010F34D0FE0C9A87020F875103000000010C9A86FA0F878CFB000000020AD35777000000090000000A0000000A0F878D030000000900000001000000040F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE000000060F8750FF00000006000000040F878D030C9A86FE0F878CFF000000040AD3577710D13D000AD3577B0000000910D100FA00000006000000020000000010D10100000000000AD3577B00000009000000060F8750FF0AD3577710D13D000AD3577B10D13CFA00000002067ECE7D0000000600000009000000060000000010D10100000000000000000600000004000000010F34D0FE0C9A87020000000A0F878D030000000A00000001000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FE0F878CFF000000040AD357770000000910D1010000000000000000090F8750FF0AD357770000000700000007000000040F878D0300000009000000010F34D0FE0C9A87020000000900000009000000040000000200000001"
theorem small_7232014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7232014_right_root small_7232014_right_fuel small_7232014_right_count small_7232014_right_encoded = true := by
  decide +kernel
theorem small_7232014_right_covered : CoveredBy scale carrier boxes small_7232014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7232014_right_root small_7232014_right_fuel small_7232014_right_count small_7232014_right_encoded small_7232014_right_checked

theorem cover_7232014 : CoveredBy scale carrier boxes root_7232014 := by
  apply coveredBy_split_literal root_7232014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2723.root small_7232014_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2723.covered
  · exact small_7232014_right_covered
#print axioms cover_7232014

def root_7232008 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232008_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232008_left_fuel : Nat := 1
def small_7232008_left_count : Nat := 1
def small_7232008_left_encoded : String := "00000004"
theorem small_7232008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7232008_left_root small_7232008_left_fuel small_7232008_left_count small_7232008_left_encoded = true := by
  decide +kernel
theorem small_7232008_left_covered : CoveredBy scale carrier boxes small_7232008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7232008_left_root small_7232008_left_fuel small_7232008_left_count small_7232008_left_encoded small_7232008_left_checked

theorem cover_7232008 : CoveredBy scale carrier boxes root_7232008 := by
  apply coveredBy_split_literal root_7232008 small_7232008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7232014 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7232008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7232014
#print axioms cover_7232008

def root_7232007 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232007_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232007_right_fuel : Nat := 17
def small_7232007_right_count : Nat := 75
def small_7232007_right_encoded : String := "120700FE0CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD0000000A000000090F34D0FA00000009000000020F350D020CFD9BFB0F350CFA00000002045489FD0000000A1386710600000003045489FF1386ACFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FA000000050000000A00000009000000000F878CF7000000000000000A138670FE0000000A000000040F34D0FA045489FD1386AD06045489FF1386ACFE000000040C9A8700000000050000000A0000000500000003000000050000000200000001000000000F34D100000000000CFD9C030F34D102000000010000000A0F350D020CFD9BFB0F350CFA000000020000000A0F34D0FA045489FD0000000A00000005000000020000000100000004"
theorem small_7232007_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7232007_right_root small_7232007_right_fuel small_7232007_right_count small_7232007_right_encoded = true := by
  decide +kernel
theorem small_7232007_right_covered : CoveredBy scale carrier boxes small_7232007_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7232007_right_root small_7232007_right_fuel small_7232007_right_count small_7232007_right_encoded small_7232007_right_checked

theorem cover_7232007 : CoveredBy scale carrier boxes root_7232007 := by
  apply coveredBy_split_literal root_7232007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7232008 small_7232007_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7232008
  · exact small_7232007_right_covered
#print axioms cover_7232007

def root_7232001 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232001_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7232001_left_fuel : Nat := 1
def small_7232001_left_count : Nat := 1
def small_7232001_left_encoded : String := "00000003"
theorem small_7232001_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7232001_left_root small_7232001_left_fuel small_7232001_left_count small_7232001_left_encoded = true := by
  decide +kernel
theorem small_7232001_left_covered : CoveredBy scale carrier boxes small_7232001_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7232001_left_root small_7232001_left_fuel small_7232001_left_count small_7232001_left_encoded small_7232001_left_checked

theorem cover_7232001 : CoveredBy scale carrier boxes root_7232001 := by
  apply coveredBy_split_literal root_7232001 small_7232001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7232007 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7232001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7232007
#print axioms cover_7232001

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495
