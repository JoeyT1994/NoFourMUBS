import TaoBundleAssembly0144
import TaoBundleChunkBatch0559
import TaoBundleChunkBatch0560
import TaoBundleChunkBatch0561
import TaoBundleChunkBatch0562
import TaoBundleChunkBatch0563
import TaoBundleChunkBatch0564
import TaoBundleChunkBatch0565
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145
def root_5932461 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932461_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932461_left_fuel : Nat := 31
def small_5932461_left_count : Nat := 253
def small_5932461_left_encoded : String := "138670FE0C9A86FA0F878CFB000000020280010013D7B0F7028001060000000813D7ECFD00000003067ECE830000000812EA94F800000001022A45890000000613E200FE000000040DE7C9FA0E6014FB00000002000000060E5FD8FB014001000000000800000006000000020000000013D7ECF700000000028001060000000613D7ECFD00000003067ECE8312EA58F8022A45890000000613E200FE000000040DE7C9FA000000060E5FD8FB000000060000000200000001000000060F8750FB0280010013D7B0F7028001060000000813D7ECFD00000003067ECE830000000812EA94F800000001022A45890000000813E200FE000000040B4D43FA10804CFB00000002014001000000000813F614F70000000003C001060000000813A54CFD000000030793F0C30000000812825CF80000000100000008108010FB014001000000000713F614F70000000003C001060000000800000007000000020000000013D7ECF7000000000280010613D7B0FD067ECE8300000008000000060000000313D7ECFD00000003067ECE8312EA58F8022A45890000000513E200FE000000040B4D43FA10804CFB0000000203C0010013A510F703C001060000000513A54CFD000000030569AC4300000005134110F800000001000000080000000013A54CF70000000003C001060000000613A54CFD000000030569AC431340D4F8000000060000000100000006108010FB03C0010013A510F703C001060000000513A54CFD000000030569AC4300000005134110F800000001000000080000000013A54CF70000000003C0010613A510FD0569AC4300000005000000060000000313A54CFD000000030569AC4300000005134110F800000001033F67C90000000513BC30FE000000040AA6A27A10EDACFB000000020000000610ED70FB046001001383DCF70460010600000005138418FD0000000305F43D63000000051317F8F80000000103C9F8E900000005000000C9000000000000000600000002000000020000000112EA94F800000001022A45890000000613E200FE000000040B4D43FA10804CFB0000000203C0010013A510F703C001060000000613A54CFD000000030793F0C3128220F80000000600000001000000060000000000000006108010FB03C0010013A510F703C0010613A510FD0793F0C300000008000000060000000313A54CFD000000030793F0C3128220F8033F67C90000000813BC30FE000000040AA6A27A10EDACFB0000000203200100000000070000000610ED70FB00000007000000020000000112825CF800000001033F67C900000006000000070000000013A54CF70000000003C001060000000613A54CFD000000030793F0C3128220F8000000060000000100000006000000020000000200000004"
theorem small_5932461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5932461_left_root small_5932461_left_fuel small_5932461_left_count small_5932461_left_encoded = true := by
  decide +kernel
theorem small_5932461_left_covered : CoveredBy scale carrier boxes small_5932461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5932461_left_root small_5932461_left_fuel small_5932461_left_count small_5932461_left_encoded small_5932461_left_checked

theorem cover_5932461 : CoveredBy scale carrier boxes root_5932461 := by
  apply coveredBy_split_literal root_5932461 small_5932461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5932987 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5932461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5932987
#print axioms cover_5932461

def root_5932455 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932455_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932455_left_fuel : Nat := 1
def small_5932455_left_count : Nat := 1
def small_5932455_left_encoded : String := "00000002"
theorem small_5932455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5932455_left_root small_5932455_left_fuel small_5932455_left_count small_5932455_left_encoded = true := by
  decide +kernel
theorem small_5932455_left_covered : CoveredBy scale carrier boxes small_5932455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5932455_left_root small_5932455_left_fuel small_5932455_left_count small_5932455_left_encoded small_5932455_left_checked

theorem cover_5932455 : CoveredBy scale carrier boxes root_5932455 := by
  apply coveredBy_split_literal root_5932455 small_5932455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5932461 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5932455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5932461
#print axioms cover_5932455

def root_5932454 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932454_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932454_right_fuel : Nat := 15
def small_5932454_right_count : Nat := 47
def small_5932454_right_encoded : String := "0F34D0FA04548A09138670FE00000006000000041386ACFE000000040280010013D7B0F70280010613D7B0FD067ECE8312EA58F80AD3577B10D13CFA0000000200000008000000080000000112EA94F8000000010AD3577B10D13CFA00000002067ECE890000000612EA94FE000000040140010000000008000000060000000600000003000000090000000013D7ECF7000000000280010613D7B0FD000000060000000313D7ECFD00000003067ECE83000000090000000600000002"
theorem small_5932454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5932454_right_root small_5932454_right_fuel small_5932454_right_count small_5932454_right_encoded = true := by
  decide +kernel
theorem small_5932454_right_covered : CoveredBy scale carrier boxes small_5932454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5932454_right_root small_5932454_right_fuel small_5932454_right_count small_5932454_right_encoded small_5932454_right_checked

theorem cover_5932454 : CoveredBy scale carrier boxes root_5932454 := by
  apply coveredBy_split_literal root_5932454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5932455 small_5932454_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5932455
  · exact small_5932454_right_covered
#print axioms cover_5932454

def root_5932448 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932448_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932448_left_fuel : Nat := 1
def small_5932448_left_count : Nat := 1
def small_5932448_left_encoded : String := "00000001"
theorem small_5932448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5932448_left_root small_5932448_left_fuel small_5932448_left_count small_5932448_left_encoded = true := by
  decide +kernel
theorem small_5932448_left_covered : CoveredBy scale carrier boxes small_5932448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5932448_left_root small_5932448_left_fuel small_5932448_left_count small_5932448_left_encoded small_5932448_left_checked

theorem cover_5932448 : CoveredBy scale carrier boxes root_5932448 := by
  apply coveredBy_split_literal root_5932448 small_5932448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5932454 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5932448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5932454
#print axioms cover_5932448

def root_5931752 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931752_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931752_left_fuel : Nat := 33
def small_5931752_left_count : Nat := 335
def small_5931752_left_encoded : String := "138670F80CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028001000000000513D7ECF700000000028001060000000513D7ECFD00000003022A45830000000513E200F800000001022A45890000000513E200FE000000040DE7C9FA0E6014FB0000000200000006000000080F8750FB0000000500000002000000041386ACFE000000040C9A86FA0F878CFB000000020280010013D7B0F70280010600000008000000090000000013D7ECF7000000000280010613D7B0FD022A45830000000813E200F800000001067ECE890000000812EA94FE000000040DE7C9FA0E6014FB00000002000000080E5FD8FB03C001000000000813A54CF700000000014001060000000700000007000000020000000313D7ECFD00000003022A45830000000913E200F800000001067ECE8912EA58FE0DE7C9FA000000090E5FD8FB000000090000000200000004000000090F8750FB0280010013D7B0F7028001060000000813D7ECFD00000003022A45830000000813E200F800000001067ECE8900000008000000090000000013D7ECF7000000000280010613D7B0FD022A45830000000813E200F800000001067ECE890000000812EA94FE000000040B4D43FA10804CFB0000000203C001000000000813A54CF700000000014001060000000813F614FD00000003033F67C30000000813BC30F8000000010793F0C9000000080000000A108010FB03C001000000000813A54CF700000000014001060000000813F614FD000000030000000A000000020000000313D7ECFD00000003022A458313E1C4F8067ECE8912EA58FE0000000500000004000000090000000113E200F800000001067ECE8912EA58FE0B4D43FA10804CFB0000000203C0010013A510F703C0010600000005000000090000000013A54CF70000000003C0010613A510FD033F67C30000000513BC30F800000001000000080000000313A54CFD00000003033F67C30000000913BC30F8000000010569AC491340D4FE000000090000000400000009108010FB03C0010013A510F703C001060000000513A54CFD00000003033F67C30000000513BC30F8000000010569AC4900000005000000090000000013A54CF70000000003C0010613A510FD033F67C30000000513BC30F8000000010569AC4900000005134110FE00000004000000080000000313A54CFD00000003033F67C30000000513BC30F8000000010569AC4900000005134110FE000000040AA6A27A10EDACFB000000020000000910ED70FB046001001383DCF704600106000000050000000900000000138418F700000000046001061383DCFD03C9F8E300000005000000C9000000030000000900000002000000020000000412EA94FE000000040B4D43FA10804CFB0000000203C001000000000913A54CF70000000003C0010613A510FD033F67C30000000913BC30F8000000010793F0C9128220FE0000000900000004000000090000000300000009108010FB03C0010013A510F703C0010613A510FD033F67C30000000613BC30F8000000010793F0C9000000080000000600000003000000090000000013A54CF70000000003C0010613A510FD033F67C313BBF4F80793F0C900000008000000060000000113BC30F8000000010793F0C9128220FE0AA6A27A10EDACFB000000020460010000000008138418F70000000003200106000000070000000910ED70FB0000000A00000002000000040000000A0000000313A54CFD00000003033F67C30000000913BC30F8000000010793F0C9128220FE00000009000000040000000600000002000000020F34D0FA04548A0900000008000000090000000200000001"
theorem small_5931752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931752_left_root small_5931752_left_fuel small_5931752_left_count small_5931752_left_encoded = true := by
  decide +kernel
theorem small_5931752_left_covered : CoveredBy scale carrier boxes small_5931752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931752_left_root small_5931752_left_fuel small_5931752_left_count small_5931752_left_encoded small_5931752_left_checked

theorem cover_5931752 : CoveredBy scale carrier boxes root_5931752 := by
  apply coveredBy_split_literal root_5931752 small_5931752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5932448 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5931752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5932448
#print axioms cover_5931752

def root_5931747 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931747_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931747_right_fuel : Nat := 1
def small_5931747_right_count : Nat := 1
def small_5931747_right_encoded : String := "00000003"
theorem small_5931747_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931747_right_root small_5931747_right_fuel small_5931747_right_count small_5931747_right_encoded = true := by
  decide +kernel
theorem small_5931747_right_covered : CoveredBy scale carrier boxes small_5931747_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931747_right_root small_5931747_right_fuel small_5931747_right_count small_5931747_right_encoded small_5931747_right_checked

theorem cover_5931747 : CoveredBy scale carrier boxes root_5931747 := by
  apply coveredBy_split_literal root_5931747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931752 small_5931747_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931752
  · exact small_5931747_right_covered
#print axioms cover_5931747

def root_5941259 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941259_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941259_left_fuel : Nat := 29
def small_5941259_left_count : Nat := 475
def small_5941259_left_encoded : String := "138670FE0C9A86FA0F878CFB000000020280010013D7B0F707800106128A40FD067ECE830000000A12EA94F800000001022A45890000000A13E200FE000000040DE7C9FA0000000A0000000A000000030000000A0000000013D7ECF70000000007800106128A40FD067ECE8312EA58F8022A45890000000613E200FE000000040DE7C9FA0000000A0000000A0000000112EA94F800000001022A45890000000613E200FE000000040DE7C9FA000000060000000A00000003128A7CFD000000030000000A0F8750FB0280010013D7B0F707800106128A40FD067ECE8312EA58F8022A458913E1C4FE000000050000000413E200FE000000040B4D43FA10804CFB00000002014001000000000A13F614F7000000000640010612FF70FD0000000A0000000300000009108010FB0140010013F5D8F706400106000000080000000A0000000013F614F7000000000640010612FF70FD0569AC4300000005134110F800000001033F67C90000000513BC30FE00000004000000080000000312FFACFD000000030569AC430000000A0000000A000000020000000112EA94F800000001022A458913E1C4FE0B4D43FA0000000A108010FB01400100000000070000000A000000020000000413E200FE000000040B4D43FA10804CFB000000020140010013F5D8F70640010612FF70FD0000000700000003000000070000000013F614F7000000000640010612FF70FD0000000A000000030000000A108010FB014001000000000713F614F7000000000640010612FF70FD0000000700000003000000070000000200000003128A7CFD00000003067ECE8312EA58F8022A45890000000A13E200FE000000040B4D43FA000000090000000A0000000112EA94F800000001022A45890000000A13E200FE000000040B4D43FA0000000A0000000A0000000013D7ECF70000000007800106128A40FD067ECE8312EA58F8022A458913E1C4FE0B4D43FA10804CFB000000020000000A108010FB03C001000000000513A54CF7000000000000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000203C0010013A510F70640010612FF70FD0569AC430000000A0000000A000000030000000A0000000013A54CF7000000000640010612FF70FD0569AC430000000A0000000A000000030000000A108010FB03C0010013A510F70640010612FF70FD0569AC4300000005134110F800000001033F67C90000000513BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB0320010013C108F705A0010600000007000000070000000013C144F70000000005A00106133134FD05F43D630000000500000007000000030000000A000000020000000312FFACFD000000030569AC430000000A0000000A0000000013A54CF7000000000640010612FF70FD0569AC431340D4F8033F67C90000000513BC30FE000000040AA6A27A10EDACFB00000002046001000000000A0000000A10ED70FB0460010000000005138418F70000000005A00106000000050000000A0000000200000001134110F800000001033F67C913BBF4FE0000000A0000000413BC30FE000000040AA6A27A10EDACFB00000002046001000000000A0000000A10ED70FB046001001383DCF705A00106133134FD05F43D630000000A0000000A000000030000000A00000000138418F70000000005A00106133134FD05F43D630000000A00000006000000030000000A000000020000000312FFACFD000000030569AC430000000A134110F8000000010000000A000000020000000112EA94F800000001022A458913E1C4FE0B4D43FA10804CFB0000000200000006108010FB03C001000000000A13A54CF7000000000000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000203C0010013A510F70640010612FF70FD0793F0C30000000A0000000A000000030000000A0000000013A54CF7000000000640010612FF70FD00000006000000030000000A108010FB03C0010013A510F70640010612FF70FD0793F0C3128220F8033F67C90000000A13BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB00000007000000020000000112825CF800000001000000070000000312FFACFD000000030793F0C30000000A000000070000000013A54CF7000000000640010612FF70FD0793F0C3128220F8033F67C90000000613BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB046001001383DCF705A00106133134FD00000007000000030000000700000000138418F70000000005A00106000000060000000A000000020000000112825CF800000001033F67C90000000613BC30FE000000040AA6A27A0000000610ED70FB00000007000000020000000312FFACFD000000030793F0C30000000A0000000A0000000200000003128A7CFD00000003067ECE8312EA58F8022A45890000000A13E200FE000000040B4D43FA10804CFB000000020000000A108010FB03C001000000000A0000000A000000020000000112EA94F800000001022A45890000000A13E200FE000000040B4D43FA10804CFB000000020000000A108010FB03C001000000000A0000000A000000020000000200000004"
theorem small_5941259_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941259_left_root small_5941259_left_fuel small_5941259_left_count small_5941259_left_encoded = true := by
  decide +kernel
theorem small_5941259_left_covered : CoveredBy scale carrier boxes small_5941259_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941259_left_root small_5941259_left_fuel small_5941259_left_count small_5941259_left_encoded small_5941259_left_checked

theorem cover_5941259 : CoveredBy scale carrier boxes root_5941259 := by
  apply coveredBy_split_literal root_5941259 small_5941259_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2235.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5941259_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2235.covered
#print axioms cover_5941259

def root_5941253 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941253_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941253_left_fuel : Nat := 1
def small_5941253_left_count : Nat := 1
def small_5941253_left_encoded : String := "00000002"
theorem small_5941253_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941253_left_root small_5941253_left_fuel small_5941253_left_count small_5941253_left_encoded = true := by
  decide +kernel
theorem small_5941253_left_covered : CoveredBy scale carrier boxes small_5941253_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941253_left_root small_5941253_left_fuel small_5941253_left_count small_5941253_left_encoded small_5941253_left_checked

theorem cover_5941253 : CoveredBy scale carrier boxes root_5941253 := by
  apply coveredBy_split_literal root_5941253 small_5941253_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5941259 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5941253_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5941259
#print axioms cover_5941253

def root_5941252 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941252_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941252_right_fuel : Nat := 5
def small_5941252_right_count : Nat := 9
def small_5941252_right_encoded : String := "0F34D0FA04548A09138670FE028001000000000A0000000A000000040000000900000002"
theorem small_5941252_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941252_right_root small_5941252_right_fuel small_5941252_right_count small_5941252_right_encoded = true := by
  decide +kernel
theorem small_5941252_right_covered : CoveredBy scale carrier boxes small_5941252_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941252_right_root small_5941252_right_fuel small_5941252_right_count small_5941252_right_encoded small_5941252_right_checked

theorem cover_5941252 : CoveredBy scale carrier boxes root_5941252 := by
  apply coveredBy_split_literal root_5941252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5941253 small_5941252_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5941253
  · exact small_5941252_right_covered
#print axioms cover_5941252

def root_5941246 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941246_left_fuel : Nat := 1
def small_5941246_left_count : Nat := 1
def small_5941246_left_encoded : String := "00000001"
theorem small_5941246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941246_left_root small_5941246_left_fuel small_5941246_left_count small_5941246_left_encoded = true := by
  decide +kernel
theorem small_5941246_left_covered : CoveredBy scale carrier boxes small_5941246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941246_left_root small_5941246_left_fuel small_5941246_left_count small_5941246_left_encoded small_5941246_left_checked

theorem cover_5941246 : CoveredBy scale carrier boxes root_5941246 := by
  apply coveredBy_split_literal root_5941246 small_5941246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5941252 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5941246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5941252
#print axioms cover_5941246

def root_5940964 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940964_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940964_left_fuel : Nat := 29
def small_5940964_left_count : Nat := 137
def small_5940964_left_encoded : String := "138670F80CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028001000000000913D7ECF70000000007800106128A40FD022A45830000000913E200F800000001022A45890000000A0000000900000003000000090F8750FB0280010013D7B0F707800106128A40FD0000000500000003000000090000000013D7ECF70000000007800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE000000040B4D43FA10804CFB0000000203C001000000000913A54CF7000000000640010612FF70FD000000050000000300000009108010FB03C001000000000513A54CF700000000064001060000000512FFACFD00000003033F67C30000000513BC30F8000000010000000A0000000200000003128A7CFD00000003022A45830000000913E200F800000001022A45890000000A0000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB028001000000000913D7ECF70000000007800106128A40FD022A45830000000913E200F800000001067ECE8912EA58FE0B4D43FA00000009108010FB03C001000000000913A54CF7000000000640010612FF70FD033F67C30000000913BC30F8000000010569AC491340D4FE0AA6A27A0000000910ED70FB04600100000000050000000900000002000000040000000900000003000000090000000200000004000000090000000300000009000000020F34D0FA000000090000000200000001"
theorem small_5940964_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5940964_left_root small_5940964_left_fuel small_5940964_left_count small_5940964_left_encoded = true := by
  decide +kernel
theorem small_5940964_left_covered : CoveredBy scale carrier boxes small_5940964_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5940964_left_root small_5940964_left_fuel small_5940964_left_count small_5940964_left_encoded small_5940964_left_checked

theorem cover_5940964 : CoveredBy scale carrier boxes root_5940964 := by
  apply coveredBy_split_literal root_5940964 small_5940964_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5941246 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5940964_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5941246
#print axioms cover_5940964

def root_5940958 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940958_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940958_left_fuel : Nat := 1
def small_5940958_left_count : Nat := 1
def small_5940958_left_encoded : String := "00000003"
theorem small_5940958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5940958_left_root small_5940958_left_fuel small_5940958_left_count small_5940958_left_encoded = true := by
  decide +kernel
theorem small_5940958_left_covered : CoveredBy scale carrier boxes small_5940958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5940958_left_root small_5940958_left_fuel small_5940958_left_count small_5940958_left_encoded small_5940958_left_checked

theorem cover_5940958 : CoveredBy scale carrier boxes root_5940958 := by
  apply coveredBy_split_literal root_5940958 small_5940958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5940964 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5940958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5940964
#print axioms cover_5940958

def root_5931746 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931746 : CoveredBy scale carrier boxes root_5931746 := by
  apply coveredBy_split_literal root_5931746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5940958 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931747
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5940958
#print axioms cover_5931746

def root_5931741 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931741_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931741_right_fuel : Nat := 1
def small_5931741_right_count : Nat := 1
def small_5931741_right_encoded : String := "00000000"
theorem small_5931741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931741_right_root small_5931741_right_fuel small_5931741_right_count small_5931741_right_encoded = true := by
  decide +kernel
theorem small_5931741_right_covered : CoveredBy scale carrier boxes small_5931741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931741_right_root small_5931741_right_fuel small_5931741_right_count small_5931741_right_encoded small_5931741_right_checked

theorem cover_5931741 : CoveredBy scale carrier boxes root_5931741 := by
  apply coveredBy_split_literal root_5931741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931746 small_5931741_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931746
  · exact small_5931741_right_covered
#print axioms cover_5931741

def root_5944442 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5944442 : CoveredBy scale carrier boxes root_5944442 := by
  apply coveredBy_split_literal root_5944442 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2236.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2237.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2236.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2237.covered
#print axioms cover_5944442

def root_5944437 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944437_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944437_right_fuel : Nat := 1
def small_5944437_right_count : Nat := 1
def small_5944437_right_encoded : String := "00000003"
theorem small_5944437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5944437_right_root small_5944437_right_fuel small_5944437_right_count small_5944437_right_encoded = true := by
  decide +kernel
theorem small_5944437_right_covered : CoveredBy scale carrier boxes small_5944437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5944437_right_root small_5944437_right_fuel small_5944437_right_count small_5944437_right_encoded small_5944437_right_checked

theorem cover_5944437 : CoveredBy scale carrier boxes root_5944437 := by
  apply coveredBy_split_literal root_5944437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5944442 small_5944437_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5944442
  · exact small_5944437_right_covered
#print axioms cover_5944437

def root_5944436 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5944436 : CoveredBy scale carrier boxes root_5944436 := by
  apply coveredBy_split_literal root_5944436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5944437 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2238.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5944437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2238.covered
#print axioms cover_5944436

def root_5944430 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944430_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944430_left_fuel : Nat := 1
def small_5944430_left_count : Nat := 1
def small_5944430_left_encoded : String := "00000000"
theorem small_5944430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5944430_left_root small_5944430_left_fuel small_5944430_left_count small_5944430_left_encoded = true := by
  decide +kernel
theorem small_5944430_left_covered : CoveredBy scale carrier boxes small_5944430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5944430_left_root small_5944430_left_fuel small_5944430_left_count small_5944430_left_encoded small_5944430_left_checked

theorem cover_5944430 : CoveredBy scale carrier boxes root_5944430 := by
  apply coveredBy_split_literal root_5944430 small_5944430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5944436 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5944430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5944436
#print axioms cover_5944430

def root_5931740 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931740 : CoveredBy scale carrier boxes root_5931740 := by
  apply coveredBy_split_literal root_5931740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5944430 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5944430
#print axioms cover_5931740

def root_5931735 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931735_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931735_right_fuel : Nat := 1
def small_5931735_right_count : Nat := 1
def small_5931735_right_encoded : String := "00000004"
theorem small_5931735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931735_right_root small_5931735_right_fuel small_5931735_right_count small_5931735_right_encoded = true := by
  decide +kernel
theorem small_5931735_right_covered : CoveredBy scale carrier boxes small_5931735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931735_right_root small_5931735_right_fuel small_5931735_right_count small_5931735_right_encoded small_5931735_right_checked

theorem cover_5931735 : CoveredBy scale carrier boxes root_5931735 := by
  apply coveredBy_split_literal root_5931735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931740 small_5931735_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931740
  · exact small_5931735_right_covered
#print axioms cover_5931735

def root_5931734 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931734 : CoveredBy scale carrier boxes root_5931734 := by
  apply coveredBy_split_literal root_5931734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931735 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2239.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2239.covered
#print axioms cover_5931734

def root_5931728 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931728_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931728_left_fuel : Nat := 1
def small_5931728_left_count : Nat := 1
def small_5931728_left_encoded : String := "00000002"
theorem small_5931728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931728_left_root small_5931728_left_fuel small_5931728_left_count small_5931728_left_encoded = true := by
  decide +kernel
theorem small_5931728_left_covered : CoveredBy scale carrier boxes small_5931728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931728_left_root small_5931728_left_fuel small_5931728_left_count small_5931728_left_encoded small_5931728_left_checked

theorem cover_5931728 : CoveredBy scale carrier boxes root_5931728 := by
  apply coveredBy_split_literal root_5931728 small_5931728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931734 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5931728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931734
#print axioms cover_5931728

def root_5931727 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931727_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931727_right_fuel : Nat := 9
def small_5931727_right_count : Nat := 39
def small_5931727_right_encoded : String := "120700FA08A91309120700FE05000100135D44F705000106135D44FD04548A030000000900000006000000030000000900000000135D80F7000000000500010600000006135D80FD0000000304548A0300000007000000060000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000106135D44FD04548A030000000900000005000000030000000500000002"
theorem small_5931727_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931727_right_root small_5931727_right_fuel small_5931727_right_count small_5931727_right_encoded = true := by
  decide +kernel
theorem small_5931727_right_covered : CoveredBy scale carrier boxes small_5931727_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931727_right_root small_5931727_right_fuel small_5931727_right_count small_5931727_right_encoded small_5931727_right_checked

theorem cover_5931727 : CoveredBy scale carrier boxes root_5931727 := by
  apply coveredBy_split_literal root_5931727 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931728 small_5931727_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931728
  · exact small_5931727_right_covered
#print axioms cover_5931727

def root_5931722 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931722_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931722_right_fuel : Nat := 1
def small_5931722_right_count : Nat := 1
def small_5931722_right_encoded : String := "00000001"
theorem small_5931722_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931722_right_root small_5931722_right_fuel small_5931722_right_count small_5931722_right_encoded = true := by
  decide +kernel
theorem small_5931722_right_covered : CoveredBy scale carrier boxes small_5931722_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931722_right_root small_5931722_right_fuel small_5931722_right_count small_5931722_right_encoded small_5931722_right_checked

theorem cover_5931722 : CoveredBy scale carrier boxes root_5931722 := by
  apply coveredBy_split_literal root_5931722 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931727 small_5931722_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931727
  · exact small_5931722_right_covered
#print axioms cover_5931722

def root_5931721 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931721 : CoveredBy scale carrier boxes root_5931721 := by
  apply coveredBy_split_literal root_5931721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2240.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931722
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2240.covered
#print axioms cover_5931721

def root_5931716 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931716_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931716_right_fuel : Nat := 1
def small_5931716_right_count : Nat := 1
def small_5931716_right_encoded : String := "00000004"
theorem small_5931716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931716_right_root small_5931716_right_fuel small_5931716_right_count small_5931716_right_encoded = true := by
  decide +kernel
theorem small_5931716_right_covered : CoveredBy scale carrier boxes small_5931716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931716_right_root small_5931716_right_fuel small_5931716_right_count small_5931716_right_encoded small_5931716_right_checked

theorem cover_5931716 : CoveredBy scale carrier boxes root_5931716 := by
  apply coveredBy_split_literal root_5931716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931721 small_5931716_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931721
  · exact small_5931716_right_covered
#print axioms cover_5931716

def root_5931715 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931715_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931715_right_fuel : Nat := 6
def small_5931715_right_count : Nat := 11
def small_5931715_right_encoded : String := "1151E9090000000408A91303120700F808A912FB12073CFA0000000200000005000000050000000100000005"
theorem small_5931715_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931715_right_root small_5931715_right_fuel small_5931715_right_count small_5931715_right_encoded = true := by
  decide +kernel
theorem small_5931715_right_covered : CoveredBy scale carrier boxes small_5931715_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931715_right_root small_5931715_right_fuel small_5931715_right_count small_5931715_right_encoded small_5931715_right_checked

theorem cover_5931715 : CoveredBy scale carrier boxes root_5931715 := by
  apply coveredBy_split_literal root_5931715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931716 small_5931715_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931716
  · exact small_5931715_right_covered
#print axioms cover_5931715

def root_5931710 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931710_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931710_right_fuel : Nat := 1
def small_5931710_right_count : Nat := 1
def small_5931710_right_encoded : String := "00000003"
theorem small_5931710_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931710_right_root small_5931710_right_fuel small_5931710_right_count small_5931710_right_encoded = true := by
  decide +kernel
theorem small_5931710_right_covered : CoveredBy scale carrier boxes small_5931710_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931710_right_root small_5931710_right_fuel small_5931710_right_count small_5931710_right_encoded small_5931710_right_checked

theorem cover_5931710 : CoveredBy scale carrier boxes root_5931710 := by
  apply coveredBy_split_literal root_5931710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931715 small_5931710_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931715
  · exact small_5931710_right_covered
#print axioms cover_5931710

def root_5931709 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931709_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931709_right_fuel : Nat := 29
def small_5931709_right_count : Nat := 329
def small_5931709_right_encoded : String := "115224FD000000030A0000FE1152250908A91303120700F808A912FB12073CFA0000000208A912FD12073D0608A91309120700FE05000100135D44F704548A03138670F800000009000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A00000003000000090F8750FB0C9A87060F8750FD0280010013D7B0F7067ECE83000000090000000A0000000013D7ECF700000000067ECE830000000A0000000A000000030F878CFD0000000302800100000000090000000A00000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD028001000000000913D7ECF700000000067ECE830000000900000005000000030000000900000002000000030F34D10600000003000000090F34D0FA000000090000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD07800100128A40F7022A4583000000090000000A00000000128A7CF700000000022A45830000000A0000000A000000030F878CFD000000030000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD078001000000000900000009000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A000000030000000A0F8750FB0C9A87060F8750FD07800100128A40F7067ECE830000000A0000000A00000000128A7CF700000000067ECE830000000A00000005000000030F878CFD00000003078001000000000A0000000800000002000000041386ACFE000000040C9A86FA0F878CFB000000020000000500000005000000030F34D10600000003000000050F34D0FA0CFD9BFD0F350D0604548A090000000A000000050000000300000005000000020000000412073CFE0000000405000100135D44F704548A03000000091386ACF8000000010000000500000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020000000500000005000000010000000500000003120701060000000308A91309120700FE0500010000000009000000050000000400000005120700FA08A912FD12073D0608A91309120700FE0000000900000004000000050000000300000005000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A91309120700FE05000100135D44F70CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A00000003000000050F8750FB0C9A87060F8750FD0280010013D7B0F70AD357830000000A000000050000000013D7ECF7000000000AD357830000000A00000005000000030F878CFD000000030000000500000002000000040000000500000003000000050F34D0FA0CFD9BFD0F350D0604548A09138670FE0000000A0000000400000005000000030000000500000002000000010F350CF8000000010000000500000000135D80F7000000000CFD9C030F34D0F80CFD9BFB0F350CFA00000002000000050000000500000001000000050000000400000005000000030000000500000005000000041151E9090000000400000005"
theorem small_5931709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931709_right_root small_5931709_right_fuel small_5931709_right_count small_5931709_right_encoded = true := by
  decide +kernel
theorem small_5931709_right_covered : CoveredBy scale carrier boxes small_5931709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931709_right_root small_5931709_right_fuel small_5931709_right_count small_5931709_right_encoded small_5931709_right_checked

theorem cover_5931709 : CoveredBy scale carrier boxes root_5931709 := by
  apply coveredBy_split_literal root_5931709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931710 small_5931709_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931710
  · exact small_5931709_right_covered
#print axioms cover_5931709

def root_5931703 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931703_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931703_left_fuel : Nat := 1
def small_5931703_left_count : Nat := 1
def small_5931703_left_encoded : String := "00000002"
theorem small_5931703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931703_left_root small_5931703_left_fuel small_5931703_left_count small_5931703_left_encoded = true := by
  decide +kernel
theorem small_5931703_left_covered : CoveredBy scale carrier boxes small_5931703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931703_left_root small_5931703_left_fuel small_5931703_left_count small_5931703_left_encoded small_5931703_left_checked

theorem cover_5931703 : CoveredBy scale carrier boxes root_5931703 := by
  apply coveredBy_split_literal root_5931703 small_5931703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931709 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5931703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931709
#print axioms cover_5931703

def root_5957938 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957938_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957938_left_fuel : Nat := 29
def small_5957938_left_count : Nat := 253
def small_5957938_left_encoded : String := "138670F804548A09138670FE0280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F800000001022A45890000000500000006128A40FB0780010600000005128A7CFD0000000300000006000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE0000000403C001000000000513A54CF70000000008C000FA0000000511FBE8FB000000050000000200000003128A7CFD00000003022A458313E1C4F8022A458900000005000000090000000113E200F800000001022A458913E1C4FE03C001000000000513A54CF70000000008C000FA000000050000000A0000000413E200FE0000000403C0010013A510F708C000FA11FC24FB000000020000000911FBE8FB00000006000000020000000013A54CF70000000008C000FA11FC24FB0000000208C0010611FBE8FD033F67C3000000050000000A000000030000000911FBE8FB08C0010611FBE8FD033F67C30000000513BC30F800000001033F67C900000005000000060000000311FC24FD000000030000000600000002128A40FB07800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F800000001022A4589000000050000000600000002000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB00000002078001060000000600000006000000060000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD022A458313E1C4F8067ECE8912EA58FE03C001000000000613A54CF70000000008C000FA000000090000000600000004000000060000000113E200F800000001067ECE8912EA58FE03C0010013A510F708C000FA11FC24FB00000002064001060000000600000006000000060000000013A54CF70000000008C000FA11FC24FB000000020640010612FF70FD033F67C313BBF4F80569AC4900000005000000060000000113BC30F8000000010569AC491340D4FE046001001383DCF70000000500000000138418F700000000096000FA11AABCFB0000000205A00106000000050000000911AA80FB000000050000000200000004000000060000000312FFACFD00000003033F67C30000000613BC30F8000000010569AC491340D4FE046001000000000600000009000000040000000611FBE8FB06400106000000060000000600000002000000040000000600000003128A7CFD00000003022A45830000000613E200F800000001067ECE8912EA58FE03C001000000000613A54CF70000000008C000FA00000009000000060000000400000006128A40FB000000060000000200000001"
theorem small_5957938_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5957938_left_root small_5957938_left_fuel small_5957938_left_count small_5957938_left_encoded = true := by
  decide +kernel
theorem small_5957938_left_covered : CoveredBy scale carrier boxes small_5957938_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5957938_left_root small_5957938_left_fuel small_5957938_left_count small_5957938_left_encoded small_5957938_left_checked

theorem cover_5957938 : CoveredBy scale carrier boxes root_5957938 := by
  apply coveredBy_split_literal root_5957938 small_5957938_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2242.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5957938_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2242.covered
#print axioms cover_5957938

def root_5957932 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957932_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957932_left_fuel : Nat := 1
def small_5957932_left_count : Nat := 1
def small_5957932_left_encoded : String := "00000003"
theorem small_5957932_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5957932_left_root small_5957932_left_fuel small_5957932_left_count small_5957932_left_encoded = true := by
  decide +kernel
theorem small_5957932_left_covered : CoveredBy scale carrier boxes small_5957932_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5957932_left_root small_5957932_left_fuel small_5957932_left_count small_5957932_left_encoded small_5957932_left_checked

theorem cover_5957932 : CoveredBy scale carrier boxes root_5957932 := by
  apply coveredBy_split_literal root_5957932 small_5957932_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5957938 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5957932_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5957938
#print axioms cover_5957932

def root_5955894 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955894 : CoveredBy scale carrier boxes root_5955894 := by
  apply coveredBy_split_literal root_5955894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2241.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5957932 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2241.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5957932
#print axioms cover_5955894

def root_5955888 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955888_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955888_left_fuel : Nat := 1
def small_5955888_left_count : Nat := 1
def small_5955888_left_encoded : String := "00000002"
theorem small_5955888_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955888_left_root small_5955888_left_fuel small_5955888_left_count small_5955888_left_encoded = true := by
  decide +kernel
theorem small_5955888_left_covered : CoveredBy scale carrier boxes small_5955888_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955888_left_root small_5955888_left_fuel small_5955888_left_count small_5955888_left_encoded small_5955888_left_checked

theorem cover_5955888 : CoveredBy scale carrier boxes root_5955888 := by
  apply coveredBy_split_literal root_5955888 small_5955888_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955894 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5955888_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955894
#print axioms cover_5955888

def root_5955887 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955887_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955887_right_fuel : Nat := 19
def small_5955887_right_count : Nat := 127
def small_5955887_right_encoded : String := "135D44FB05000106135D44FD04548A03138670F804548A090000000500000006000000011386ACF80000000104548A09000000091386ACFE000000040280010013D7B0F7028000FA13D7ECFB000000020280010613D7B0FD067ECE8300000006000000070000000300000006000000060000000013D7ECF700000000028000FA13D7ECFB00000002028001060000000913D7ECFD00000003067ECE83000000060000000913D7B0FB000000090000000200000003135D80FD0000000304548A03138670F804548A09138670FE028001000000000613D7ECF700000000028000FA13D7ECFB0000000207800106128A40FD0000000500000003128A7CFD0000000300000006000000060000000400000006000000011386ACF80000000104548A09138670FE0280010013D7B0F7028000FA00000007000000070000000013D7ECF700000000028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8022A45890000000513E200FE0000000403C001000000000600000009000000010000000700000003128A7CFD00000003067ECE8312EA58F8022A45890000000700000006000000010000000713D7B0FB07800106000000070000000700000002000000041386ACFE00000004028001000000000613D7ECF700000000028000FA13D7ECFB000000020780010600000006000000060000000600000002"
theorem small_5955887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955887_right_root small_5955887_right_fuel small_5955887_right_count small_5955887_right_encoded = true := by
  decide +kernel
theorem small_5955887_right_covered : CoveredBy scale carrier boxes small_5955887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955887_right_root small_5955887_right_fuel small_5955887_right_count small_5955887_right_encoded small_5955887_right_checked

theorem cover_5955887 : CoveredBy scale carrier boxes root_5955887 := by
  apply coveredBy_split_literal root_5955887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955888 small_5955887_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955888
  · exact small_5955887_right_covered
#print axioms cover_5955887

def root_5955882 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955882_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955882_right_fuel : Nat := 1
def small_5955882_right_count : Nat := 1
def small_5955882_right_encoded : String := "00000000"
theorem small_5955882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955882_right_root small_5955882_right_fuel small_5955882_right_count small_5955882_right_encoded = true := by
  decide +kernel
theorem small_5955882_right_covered : CoveredBy scale carrier boxes small_5955882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955882_right_root small_5955882_right_fuel small_5955882_right_count small_5955882_right_encoded small_5955882_right_checked

theorem cover_5955882 : CoveredBy scale carrier boxes root_5955882 := by
  apply coveredBy_split_literal root_5955882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955887 small_5955882_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955887
  · exact small_5955882_right_covered
#print axioms cover_5955882

def root_5961760 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5961760 : CoveredBy scale carrier boxes root_5961760 := by
  apply coveredBy_split_literal root_5961760 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2243.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2244.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2243.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2244.covered
#print axioms cover_5961760

def root_5961755 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961755_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961755_right_fuel : Nat := 1
def small_5961755_right_count : Nat := 1
def small_5961755_right_encoded : String := "00000003"
theorem small_5961755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961755_right_root small_5961755_right_fuel small_5961755_right_count small_5961755_right_encoded = true := by
  decide +kernel
theorem small_5961755_right_covered : CoveredBy scale carrier boxes small_5961755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961755_right_root small_5961755_right_fuel small_5961755_right_count small_5961755_right_encoded small_5961755_right_checked

theorem cover_5961755 : CoveredBy scale carrier boxes root_5961755 := by
  apply coveredBy_split_literal root_5961755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961760 small_5961755_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961760
  · exact small_5961755_right_covered
#print axioms cover_5961755

def root_5965204 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5965204 : CoveredBy scale carrier boxes root_5965204 := by
  apply coveredBy_split_literal root_5965204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2245.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2246.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2245.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2246.covered
#print axioms cover_5965204

def root_5965199 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965199_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965199_right_fuel : Nat := 1
def small_5965199_right_count : Nat := 1
def small_5965199_right_encoded : String := "00000001"
theorem small_5965199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5965199_right_root small_5965199_right_fuel small_5965199_right_count small_5965199_right_encoded = true := by
  decide +kernel
theorem small_5965199_right_covered : CoveredBy scale carrier boxes small_5965199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5965199_right_root small_5965199_right_fuel small_5965199_right_count small_5965199_right_encoded small_5965199_right_checked

theorem cover_5965199 : CoveredBy scale carrier boxes root_5965199 := by
  apply coveredBy_split_literal root_5965199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5965204 small_5965199_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5965204
  · exact small_5965199_right_covered
#print axioms cover_5965199

def root_5970292 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5970292 : CoveredBy scale carrier boxes root_5970292 := by
  apply coveredBy_split_literal root_5970292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2247.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2248.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2247.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2248.covered
#print axioms cover_5970292

def root_5970286 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5970286_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5970286_left_fuel : Nat := 1
def small_5970286_left_count : Nat := 1
def small_5970286_left_encoded : String := "00000001"
theorem small_5970286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5970286_left_root small_5970286_left_fuel small_5970286_left_count small_5970286_left_encoded = true := by
  decide +kernel
theorem small_5970286_left_covered : CoveredBy scale carrier boxes small_5970286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5970286_left_root small_5970286_left_fuel small_5970286_left_count small_5970286_left_encoded small_5970286_left_checked

theorem cover_5970286 : CoveredBy scale carrier boxes root_5970286 := by
  apply coveredBy_split_literal root_5970286 small_5970286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5970292 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5970286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5970292
#print axioms cover_5970286

def root_5965198 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5965198 : CoveredBy scale carrier boxes root_5965198 := by
  apply coveredBy_split_literal root_5965198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5965199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5970286 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5965199
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5970286
#print axioms cover_5965198

def root_5965192 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965192_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965192_left_fuel : Nat := 1
def small_5965192_left_count : Nat := 1
def small_5965192_left_encoded : String := "00000003"
theorem small_5965192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5965192_left_root small_5965192_left_fuel small_5965192_left_count small_5965192_left_encoded = true := by
  decide +kernel
theorem small_5965192_left_covered : CoveredBy scale carrier boxes small_5965192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5965192_left_root small_5965192_left_fuel small_5965192_left_count small_5965192_left_encoded small_5965192_left_checked

theorem cover_5965192 : CoveredBy scale carrier boxes root_5965192 := by
  apply coveredBy_split_literal root_5965192 small_5965192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5965198 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5965192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5965198
#print axioms cover_5965192

def root_5961754 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5961754 : CoveredBy scale carrier boxes root_5961754 := by
  apply coveredBy_split_literal root_5961754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5965192 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961755
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5965192
#print axioms cover_5961754

def root_5961748 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961748_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961748_left_fuel : Nat := 1
def small_5961748_left_count : Nat := 1
def small_5961748_left_encoded : String := "00000002"
theorem small_5961748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961748_left_root small_5961748_left_fuel small_5961748_left_count small_5961748_left_encoded = true := by
  decide +kernel
theorem small_5961748_left_covered : CoveredBy scale carrier boxes small_5961748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961748_left_root small_5961748_left_fuel small_5961748_left_count small_5961748_left_encoded small_5961748_left_checked

theorem cover_5961748 : CoveredBy scale carrier boxes root_5961748 := by
  apply coveredBy_split_literal root_5961748 small_5961748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961754 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5961748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961754
#print axioms cover_5961748

def root_5961747 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961747_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961747_right_fuel : Nat := 25
def small_5961747_right_count : Nat := 401
def small_5961747_right_encoded : String := "135D44FB05000106135D44FD04548A03138670F804548A09138670FE07800100128A40F70000000500000000128A7CF70000000000000009000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB00000002028001060000000A13D7ECFD00000003022A45830000000613E200F800000001067ECE8912EA58FE06400100000000060000000900000004000000060000000A00000000128A7CF700000000028000FA13D7ECFB00000002028001060000000913D7ECFD00000003022A45830000000A0000000A0000000A000000011386ACF80000000104548A09000000091386ACFE0000000407800100000000090000000900000003135D80FD0000000304548A03138670F804548A09138670FE07800100128A40F7028000FA13D7ECFB0000000207800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE000000040640010012FF70F7000000060000000012FFACF70000000003C000FA13A54CFB00000002064001060000000912FFACFD00000003033F67C300000005000000090000000900000003128A7CFD00000003022A458313E1C4F8022A458900000005000000060000000113E200F800000001022A458913E1C4FE064001000000000512FFACF70000000003C000FA0000000513A510FB0000000500000002000000040000000613D7B0FB07800106128A40FD022A4583000000050000000900000003128A7CFD00000003022A458300000005000000060000000200000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD022A458313E1C4F8022A45890000000513E200FE0000000408C001000000000511FC24F70000000003C000FA00000005000000090000000113E200F800000001022A4589000000090000000900000003128A7CFD00000003022A458313E1C4F8022A458900000005000000080000000113E200F800000001022A458913E1C4FE00000008000000040000000813D7B0FB07800106128A40FD022A4583000000050000000900000003128A7CFD00000003022A458313E1C4F8022A45890000000500000006000000010000000800000002000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB000000020780010600000006000000060000000600000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD022A458313E1C4F8067ECE8912EA58FE08C001000000000611FC24F70000000003C000FA13A54CFB00000002064001060000000A000000060000000600000004000000060000000113E200F800000001067ECE8912EA58FE08C0010011FBE8F703C000FA13A54CFB00000002064001060000000900000006000000060000000000000008000000040000000600000003128A7CFD00000003022A4583000000060000000813D7B0FB07800106128A40FD022A45830000000613E200F80000000100000006000000030000000600000002000000011386ACF80000000104548A09138670FE07800100128A40F7028000FA13D7ECFB000000020780010600000009128A7CFD00000003067ECE8312EA58F8022A458913E1C4FE0640010012FF70F703C000FA13A54CFB0000000208C0010600000007000000070000000700000000000000090000000413E200FE000000040640010000000006000000080000000112EA94F8000000010000000913D7B0FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A4589000000090000000600000001000000070000000200000000128A7CF700000000028000FA13D7ECFB000000020780010600000009128A7CFD00000003067ECE8312EA58F800000008000000010000000800000009000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8067ECE8912EA58FE06400100000000060000000900000004000000060000000112EA94F800000001067ECE89000000090000000500000003128A7CFD00000003067ECE83000000060000000513D7B0FB07800106128A40FD067ECE83000000060000000900000003000000060000000200000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8067ECE8900000009000000050000000100000005000000030000000813D7B0FB0780010600000009000000080000000200000002"
theorem small_5961747_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961747_right_root small_5961747_right_fuel small_5961747_right_count small_5961747_right_encoded = true := by
  decide +kernel
theorem small_5961747_right_covered : CoveredBy scale carrier boxes small_5961747_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961747_right_root small_5961747_right_fuel small_5961747_right_count small_5961747_right_encoded small_5961747_right_checked

theorem cover_5961747 : CoveredBy scale carrier boxes root_5961747 := by
  apply coveredBy_split_literal root_5961747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961748 small_5961747_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961748
  · exact small_5961747_right_covered
#print axioms cover_5961747

def root_5961741 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961741_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961741_left_fuel : Nat := 1
def small_5961741_left_count : Nat := 1
def small_5961741_left_encoded : String := "00000000"
theorem small_5961741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961741_left_root small_5961741_left_fuel small_5961741_left_count small_5961741_left_encoded = true := by
  decide +kernel
theorem small_5961741_left_covered : CoveredBy scale carrier boxes small_5961741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961741_left_root small_5961741_left_fuel small_5961741_left_count small_5961741_left_encoded small_5961741_left_checked

theorem cover_5961741 : CoveredBy scale carrier boxes root_5961741 := by
  apply coveredBy_split_literal root_5961741 small_5961741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961747 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5961741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961747
#print axioms cover_5961741

def root_5955881 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955881 : CoveredBy scale carrier boxes root_5955881 := by
  apply coveredBy_split_literal root_5955881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5961741 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5961741
#print axioms cover_5955881

def root_5955876 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955876_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955876_right_fuel : Nat := 1
def small_5955876_right_count : Nat := 1
def small_5955876_right_encoded : String := "00000004"
theorem small_5955876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955876_right_root small_5955876_right_fuel small_5955876_right_count small_5955876_right_encoded = true := by
  decide +kernel
theorem small_5955876_right_covered : CoveredBy scale carrier boxes small_5955876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955876_right_root small_5955876_right_fuel small_5955876_right_count small_5955876_right_encoded small_5955876_right_checked

theorem cover_5955876 : CoveredBy scale carrier boxes root_5955876 := by
  apply coveredBy_split_literal root_5955876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955881 small_5955876_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955881
  · exact small_5955876_right_covered
#print axioms cover_5955876

def root_5955875 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955875_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955875_right_fuel : Nat := 24
def small_5955875_right_count : Nat := 285
def small_5955875_right_encoded : String := "12073CFE0000000405000100135D44F7050000FA135D80FB0000000205000106135D44FD04548A03138670F80CFD9C090F34D0FE028001000000000613D7ECF700000000078000FA128A7CFB00000002028001060000000600000006000000060000000400000006000000011386ACF8000000010CFD9C090F34D0FE0280010013D7B0F7078000FA128A7CFB000000020280010613D7B0FD067ECE83000000060000000A0000000300000006000000060000000013D7ECF700000000078000FA128A7CFB000000020280010613D7B0FD0000000A0000000313D7ECFD00000003067ECE830000000600000005128A40FB028001060000000A0000000600000002000000040F350CFE000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE000000060000000400000006000000011386ACF8000000010CFD9C090F34D0FE028001000000000613D7ECF700000000078000FA128A7CFB0000000207800106128A40FD067ECE8300000006000000050000000300000005000000050000000400000005135D44FB05000106135D44FD04548A03000000061386ACF8000000010000000600000003000000060000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD04548A03138670F80CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A4583000000060000000A0000000A00000000128A7CF700000000078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A45830000000A0000000A0000000A000000040000000A000000011386ACF8000000010CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB00000002028001060000000A13D7ECFD00000003067ECE8312EA58F80AD3578910D100FE0640010012FF70F70000000A000000000000000500000004000000050000000100000005128A40FB0000000A0000000200000000128A7CF700000000078000FA128A7CFB000000020000000500000005000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD022A45830000000613E200F8000000010AD3578910D100FE00000006000000040000000500000003128A7CFD00000003000000060000000600000000128A7CF700000000078000FA128A7CFB0000000207800106128A40FD022A458313E1C4F80AD3578910D100FE08C0010000000006000000070000000400000005000000010000000500000003128A7CFD0000000300000005128A40FB07800106128A40FD022A4583000000060000000500000003128A7CFD00000003000000050000000200000004000000050000000100000005135D44FB05000106135D44FD04548A030000000A1386ACF8000000010CFD9C090F34D0FE078001000000000A00000005000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE000000060000000400000005000000010000000500000002"
theorem small_5955875_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955875_right_root small_5955875_right_fuel small_5955875_right_count small_5955875_right_encoded = true := by
  decide +kernel
theorem small_5955875_right_covered : CoveredBy scale carrier boxes small_5955875_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955875_right_root small_5955875_right_fuel small_5955875_right_count small_5955875_right_encoded small_5955875_right_checked

theorem cover_5955875 : CoveredBy scale carrier boxes root_5955875 := by
  apply coveredBy_split_literal root_5955875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955876 small_5955875_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955876
  · exact small_5955875_right_covered
#print axioms cover_5955875

def root_5955870 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955870_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955870_right_fuel : Nat := 1
def small_5955870_right_count : Nat := 1
def small_5955870_right_encoded : String := "00000001"
theorem small_5955870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955870_right_root small_5955870_right_fuel small_5955870_right_count small_5955870_right_encoded = true := by
  decide +kernel
theorem small_5955870_right_covered : CoveredBy scale carrier boxes small_5955870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955870_right_root small_5955870_right_fuel small_5955870_right_count small_5955870_right_encoded small_5955870_right_checked

theorem cover_5955870 : CoveredBy scale carrier boxes root_5955870 := by
  apply coveredBy_split_literal root_5955870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955875 small_5955870_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955875
  · exact small_5955870_right_covered
#print axioms cover_5955870

def root_5955869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955869_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955869_right_fuel : Nat := 26
def small_5955869_right_count : Nat := 319
def small_5955869_right_encoded : String := "12073CF80000000108A91309120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F804548A09138670FE028001000000000900000009000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB000000020280010613D7B0FD0AD3578310D100F80000000900000001000000070000000300000007128A40FB00000007000000020000000013D7ECF700000000078000FA128A7CFB00000002028001060000000913D7ECFD000000030AD3578310D100F8067ECE8900000009000000050000000100000005128A40FB0000000900000002000000010F350CF8000000010000000900000003135D80FD000000030CFD9C030F34D0F804548A09138670FE0280010013D7B0F7078000FA00000007000000070000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8022A45890000000700000007000000010000000700000003128A7CFD000000030AD3578310D100F8022A458900000007000000070000000100000007128A40FB0000000700000002000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD000000070000000300000007128A40FB00000007000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8067ECE8912EA58FE03C00100000000070000000500000004000000050000000100000005000000030000000500000005000000010F350CF80000000104548A090000000700000005135D44FB05000106135D44FD0CFD9C030F34D0F800000009000000010000000700000003135D80FD000000030CFD9C030F34D0F804548A09000000071386ACFE0000000402800100000000070000000500000001000000070000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F804548A09000000091386ACFE0000000407800100128A40F7078000FA128A7CFB00000002028001060000000913D7ECFD000000030AD3578310D100F8067ECE89000000090000000500000001000000050000000900000000128A7CF70000000000000009000000010000000900000003135D80FD000000030CFD9C030F34D0F804548A09138670FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8022A45890000000900000009000000010000000900000003128A7CFD000000030AD3578310D100F8022A458913E1C4FE064001000000000A12FFACF7000000000000000A00000004000000050000000100000005128A40FB0780010600000009128A7CFD000000030AD3578310D100F8022A4589000000070000000500000001000000050000000200000000128A7CF700000000078000FA128A7CFB000000020780010600000009128A7CFD0000000300000005128A40FB000000090000000200000004000000050000000100000005135D44FB0500010600000009135D80FD000000030CFD9C030F34D0F804548A0900000009000000050000000100000005000000020000000412073CFE0000000405000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F80CFD9C090F34D0FE0280010013D7B0F7078000FA128A7CFB0000000200000005000000050000000000000005000000040000000500000001000000050000000300000005000000050000000000000005"
theorem small_5955869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955869_right_root small_5955869_right_fuel small_5955869_right_count small_5955869_right_encoded = true := by
  decide +kernel
theorem small_5955869_right_covered : CoveredBy scale carrier boxes small_5955869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955869_right_root small_5955869_right_fuel small_5955869_right_count small_5955869_right_encoded small_5955869_right_checked

theorem cover_5955869 : CoveredBy scale carrier boxes root_5955869 := by
  apply coveredBy_split_literal root_5955869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955870 small_5955869_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955870
  · exact small_5955869_right_covered
#print axioms cover_5955869

def root_5955864 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955864_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955864_right_fuel : Nat := 1
def small_5955864_right_count : Nat := 1
def small_5955864_right_encoded : String := "00000004"
theorem small_5955864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955864_right_root small_5955864_right_fuel small_5955864_right_count small_5955864_right_encoded = true := by
  decide +kernel
theorem small_5955864_right_covered : CoveredBy scale carrier boxes small_5955864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955864_right_root small_5955864_right_fuel small_5955864_right_count small_5955864_right_encoded small_5955864_right_checked

theorem cover_5955864 : CoveredBy scale carrier boxes root_5955864 := by
  apply coveredBy_split_literal root_5955864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955869 small_5955864_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955869
  · exact small_5955864_right_covered
#print axioms cover_5955864

def root_5955863 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955863_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955863_right_fuel : Nat := 4
def small_5955863_right_count : Nat := 7
def small_5955863_right_encoded : String := "1151E9090000000408A91303120700F8000000050000000100000005"
theorem small_5955863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955863_right_root small_5955863_right_fuel small_5955863_right_count small_5955863_right_encoded = true := by
  decide +kernel
theorem small_5955863_right_covered : CoveredBy scale carrier boxes small_5955863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955863_right_root small_5955863_right_fuel small_5955863_right_count small_5955863_right_encoded small_5955863_right_checked

theorem cover_5955863 : CoveredBy scale carrier boxes root_5955863 := by
  apply coveredBy_split_literal root_5955863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955864 small_5955863_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955864
  · exact small_5955863_right_covered
#print axioms cover_5955863

def root_5955858 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955858_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955858_right_fuel : Nat := 1
def small_5955858_right_count : Nat := 1
def small_5955858_right_encoded : String := "00000003"
theorem small_5955858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955858_right_root small_5955858_right_fuel small_5955858_right_count small_5955858_right_encoded = true := by
  decide +kernel
theorem small_5955858_right_covered : CoveredBy scale carrier boxes small_5955858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955858_right_root small_5955858_right_fuel small_5955858_right_count small_5955858_right_encoded small_5955858_right_checked

theorem cover_5955858 : CoveredBy scale carrier boxes root_5955858 := by
  apply coveredBy_split_literal root_5955858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955863 small_5955858_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955863
  · exact small_5955858_right_covered
#print axioms cover_5955858

def root_5955857 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955857 : CoveredBy scale carrier boxes root_5955857 := by
  apply coveredBy_split_literal root_5955857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955858 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2249.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955858
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2249.covered
#print axioms cover_5955857

def root_5955852 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955852_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955852_right_fuel : Nat := 1
def small_5955852_right_count : Nat := 1
def small_5955852_right_encoded : String := "00000002"
theorem small_5955852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955852_right_root small_5955852_right_fuel small_5955852_right_count small_5955852_right_encoded = true := by
  decide +kernel
theorem small_5955852_right_covered : CoveredBy scale carrier boxes small_5955852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955852_right_root small_5955852_right_fuel small_5955852_right_count small_5955852_right_encoded small_5955852_right_checked

theorem cover_5955852 : CoveredBy scale carrier boxes root_5955852 := by
  apply coveredBy_split_literal root_5955852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955857 small_5955852_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955857
  · exact small_5955852_right_covered
#print axioms cover_5955852

def root_5931702 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931702 : CoveredBy scale carrier boxes root_5931702 := by
  apply coveredBy_split_literal root_5931702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5955852 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5955852
#print axioms cover_5931702

def root_5931697 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931697_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931697_right_fuel : Nat := 1
def small_5931697_right_count : Nat := 1
def small_5931697_right_encoded : String := "00000001"
theorem small_5931697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931697_right_root small_5931697_right_fuel small_5931697_right_count small_5931697_right_encoded = true := by
  decide +kernel
theorem small_5931697_right_covered : CoveredBy scale carrier boxes small_5931697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931697_right_root small_5931697_right_fuel small_5931697_right_count small_5931697_right_encoded small_5931697_right_checked

theorem cover_5931697 : CoveredBy scale carrier boxes root_5931697 := by
  apply coveredBy_split_literal root_5931697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931702 small_5931697_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931702
  · exact small_5931697_right_covered
#print axioms cover_5931697

def root_5931696 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931696_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931696_right_fuel : Nat := 16
def small_5931696_right_count : Nat := 89
def small_5931696_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA000000020000000500000005000000041151E909000000040000000500000003115224FD000000030A0000FE000000051151E90900000004000000051151E8FB0A0001061151E8FD0A0000FE1152250908A91309120700FE000000050000000400000005000000041151E909000000040000000500000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE0500010000000005135D80F700000000050000F800000005135D450300000001000000050000000412073CFE000000040500010000000005135D80F7000000000000000500000003120701060000000308A91309120700FE000000050000000400000005000000041151E9090000000408A912FD12073D060500010000000005135D80F700000000050000F80000000500000006000000030000000600000002"
theorem small_5931696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931696_right_root small_5931696_right_fuel small_5931696_right_count small_5931696_right_encoded = true := by
  decide +kernel
theorem small_5931696_right_covered : CoveredBy scale carrier boxes small_5931696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931696_right_root small_5931696_right_fuel small_5931696_right_count small_5931696_right_encoded small_5931696_right_checked

theorem cover_5931696 : CoveredBy scale carrier boxes root_5931696 := by
  apply coveredBy_split_literal root_5931696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931697 small_5931696_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931697
  · exact small_5931696_right_covered
#print axioms cover_5931696

def root_5931691 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931691_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931691_right_fuel : Nat := 1
def small_5931691_right_count : Nat := 1
def small_5931691_right_encoded : String := "00000000"
theorem small_5931691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931691_right_root small_5931691_right_fuel small_5931691_right_count small_5931691_right_encoded = true := by
  decide +kernel
theorem small_5931691_right_covered : CoveredBy scale carrier boxes small_5931691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931691_right_root small_5931691_right_fuel small_5931691_right_count small_5931691_right_encoded small_5931691_right_checked

theorem cover_5931691 : CoveredBy scale carrier boxes root_5931691 := by
  apply coveredBy_split_literal root_5931691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931696 small_5931691_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931696
  · exact small_5931691_right_covered
#print axioms cover_5931691

def root_5978696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978696_right_fuel : Nat := 21
def small_5978696_right_count : Nat := 259
def small_5978696_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE000000051151E909000000040000000500000003115224FD000000030A0000FE1152250908A912F712073D0008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE00000005000000040000000500000003000000050000000500000000120701000000000008A912FB12073CFA0000000208A912FD00000005120701060000000300000008120700FA08A912FD0000000512070106000000030000000A00000002000000041151E9090000000408A912F712073D0008A912FB12073CFA0000000208A912FD12073D06050000F800000005135D45030000000100000005000000031207010600000003050000F80000000500000008120700FA08A912FD000000051207010600000003050000F800000005000000080000000200000000120701000000000008A912FB12073CFA0000000208A912FD12073D06050000F8000000050000000800000003120701060000000300000008120700FA08A912FD12073D06050000F8000000050000000800000003120701060000000300000008000000021151E8FB0A0001061151E8FD0A0000FE1152250908A912F712073D0008A91309120700FE050000F800000005000000090000000412073CFE00000004050000F800000005135D4503000000010000000500000000120701000000000000000009000000041151E9090000000408A912F712073D00050000F80000000500000009000000000000000900000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D0608A91309120700FE050000F8135D8103050000FA00000005135D44FB0CFD9BF70F350D000000000500000000000000050000000200000001135D450300000001050000FA00000005135D44FB0CFD9BF70F350D000CFD9BFD00000009000000050000000000000009000000020000000412073CFE00000004050000F8135D8103050000FA00000005135D44FB0CFD9BF70F350D000000000500000000000000050000000200000001135D450300000001050000FA00000005135D44FB0CFD9BF70F350D000CFD9BFD0000000800000005000000000F34D10000000000000000080000000200000003120701060000000308A91309120700FE00000008000000040000000800000000120701000000000008A912FD12073D0608A91309120700FE0000000800000004000000080000000300000008000000041151E9090000000408A912F712073D0008A912FD12073D06050000F8135D8103050000FA00000008135D44FB050000FE00000008000000060000000200000001135D450300000001050000FA00000008000000090000000312070106000000030000000600000000120701000000000008A912FD000000080000000800000002"
theorem small_5978696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5978696_right_root small_5978696_right_fuel small_5978696_right_count small_5978696_right_encoded = true := by
  decide +kernel
theorem small_5978696_right_covered : CoveredBy scale carrier boxes small_5978696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5978696_right_root small_5978696_right_fuel small_5978696_right_count small_5978696_right_encoded small_5978696_right_checked

theorem cover_5978696 : CoveredBy scale carrier boxes root_5978696 := by
  apply coveredBy_split_literal root_5978696 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2250.root small_5978696_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2250.covered
  · exact small_5978696_right_covered
#print axioms cover_5978696

def root_5978690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978690_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978690_left_fuel : Nat := 1
def small_5978690_left_count : Nat := 1
def small_5978690_left_encoded : String := "00000000"
theorem small_5978690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5978690_left_root small_5978690_left_fuel small_5978690_left_count small_5978690_left_encoded = true := by
  decide +kernel
theorem small_5978690_left_covered : CoveredBy scale carrier boxes small_5978690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5978690_left_root small_5978690_left_fuel small_5978690_left_count small_5978690_left_encoded small_5978690_left_checked

theorem cover_5978690 : CoveredBy scale carrier boxes root_5978690 := by
  apply coveredBy_split_literal root_5978690 small_5978690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5978696 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5978690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5978696
#print axioms cover_5978690

def root_5931690 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931690 : CoveredBy scale carrier boxes root_5931690 := by
  apply coveredBy_split_literal root_5931690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5978690 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931691
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5978690
#print axioms cover_5931690

def root_5895112 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895112 : CoveredBy scale carrier boxes root_5895112 := by
  apply coveredBy_split_literal root_5895112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5931690 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5931690
#print axioms cover_5895112

def root_5985379 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5985379 : CoveredBy scale carrier boxes root_5985379 := by
  apply coveredBy_split_literal root_5985379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2252.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2253.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2252.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2253.covered
#print axioms cover_5985379

def root_5982215 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5982215 : CoveredBy scale carrier boxes root_5982215 := by
  apply coveredBy_split_literal root_5982215 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2251.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5985379 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2251.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5985379
#print axioms cover_5982215

def root_5895111 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895111 : CoveredBy scale carrier boxes root_5895111 := by
  apply coveredBy_split_literal root_5895111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5895112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5982215 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5895112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5982215
#print axioms cover_5895111

def root_5993688 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5993688 : CoveredBy scale carrier boxes root_5993688 := by
  apply coveredBy_split_literal root_5993688 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2256.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2257.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2256.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2257.covered
#print axioms cover_5993688

def root_5993682 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993682_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993682_left_fuel : Nat := 1
def small_5993682_left_count : Nat := 1
def small_5993682_left_encoded : String := "00000004"
theorem small_5993682_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993682_left_root small_5993682_left_fuel small_5993682_left_count small_5993682_left_encoded = true := by
  decide +kernel
theorem small_5993682_left_covered : CoveredBy scale carrier boxes small_5993682_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993682_left_root small_5993682_left_fuel small_5993682_left_count small_5993682_left_encoded small_5993682_left_checked

theorem cover_5993682 : CoveredBy scale carrier boxes root_5993682 := by
  apply coveredBy_split_literal root_5993682 small_5993682_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5993688 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5993682_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5993688
#print axioms cover_5993682

def root_5993681 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993681_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993681_right_fuel : Nat := 20
def small_5993681_right_count : Nat := 221
def small_5993681_right_encoded : String := "135D44FF04548A03138670F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB000000020780010000000008128A7CF700000000028000FE00000007000000070F8750FB07800100128A40F7028000FE13D7ECFF00000004022A458313E1C4F8022A45870000000513E201060B4D43FA00000007108010FB0000000700000002000000030000000113E200F800000001022A4587000000080000000A0000000800000000128A7CF700000000028000FE13D7ECFF00000004022A45830000000713E200F800000001022A458713E1C506000000030000000613E201060B4D43FA00000007108010FB00000007000000020000000313D7B0FF022A45830000000713E200F800000001022A4587000000060000000700000004000000021386AD060C9A86FA0F878CFB0000000207800100128A40F70000000A00000000128A7CF700000000028000FE13D7ECFF00000004022A45830000000713E200F800000001067ECE8700000007000000050000000A0F8750FB07800100128A40F70000000A00000000128A7CF700000000028000FE13D7ECFF00000004022A458313E1C4F8067ECE870000000700000007000000010000000A0000000A00000002000000030F34D0FA04548A07000000081386AD060780010000000008128A7CF700000000028000FE00000005000000070000000300000002000000011386ACF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB0000000207800100128A40F70000000800000000128A7CF700000000028000FE13D7ECFF00000004067ECE8312EA58F800000006000000010000000613D7B0FF00000006000000040F8750FB07800100128A40F7028000FE13D7ECFF00000004067ECE8312EA58F80000000A000000010000000A0000000800000000128A7CF700000000028000FE13D7ECFF00000004067ECE8312EA58F8022A458713E1C506000000030000000613E201060B4D43FA0000000A108010FB0000000A00000002000000030000000112EA94F800000001022A458713E1C50600000003000000060000000A13D7B0FF067ECE8312EA58F80000000A000000010000000900000004000000021386AD060C9A86FA0000000A0F8750FB0000000A00000002000000030F34D0FA04548A071386710600000003078001000000000800000006000000050000000200000004"
theorem small_5993681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993681_right_root small_5993681_right_fuel small_5993681_right_count small_5993681_right_encoded = true := by
  decide +kernel
theorem small_5993681_right_covered : CoveredBy scale carrier boxes small_5993681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993681_right_root small_5993681_right_fuel small_5993681_right_count small_5993681_right_encoded small_5993681_right_checked

theorem cover_5993681 : CoveredBy scale carrier boxes root_5993681 := by
  apply coveredBy_split_literal root_5993681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5993682 small_5993681_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5993682
  · exact small_5993681_right_covered
#print axioms cover_5993681

def root_5993675 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993675_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993675_left_fuel : Nat := 1
def small_5993675_left_count : Nat := 1
def small_5993675_left_encoded : String := "00000000"
theorem small_5993675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993675_left_root small_5993675_left_fuel small_5993675_left_count small_5993675_left_encoded = true := by
  decide +kernel
theorem small_5993675_left_covered : CoveredBy scale carrier boxes small_5993675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993675_left_root small_5993675_left_fuel small_5993675_left_count small_5993675_left_encoded small_5993675_left_checked

theorem cover_5993675 : CoveredBy scale carrier boxes root_5993675 := by
  apply coveredBy_split_literal root_5993675 small_5993675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5993681 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5993675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5993681
#print axioms cover_5993675

def root_5991827 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5991827 : CoveredBy scale carrier boxes root_5991827 := by
  apply coveredBy_split_literal root_5991827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2255.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5993675 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2255.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5993675
#print axioms cover_5991827

def root_5991821 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991821_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991821_left_fuel : Nat := 1
def small_5991821_left_count : Nat := 1
def small_5991821_left_encoded : String := "00000003"
theorem small_5991821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991821_left_root small_5991821_left_fuel small_5991821_left_count small_5991821_left_encoded = true := by
  decide +kernel
theorem small_5991821_left_covered : CoveredBy scale carrier boxes small_5991821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991821_left_root small_5991821_left_fuel small_5991821_left_count small_5991821_left_encoded small_5991821_left_checked

theorem cover_5991821 : CoveredBy scale carrier boxes root_5991821 := by
  apply coveredBy_split_literal root_5991821 small_5991821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991827 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5991821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991827
#print axioms cover_5991821

def root_5991820 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991820_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991820_right_fuel : Nat := 16
def small_5991820_right_count : Nat := 59
def small_5991820_right_encoded : String := "12073D0605000100135D44F7050000FE135D80FF0000000404548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0000000A00000005000000050000000500000001000000050000000A00000000135D80F700000000050000FE135D80FF0000000404548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000050F8750FB0780010000000005128A7CF700000000000000050000000200000005000000050000000100000005135D44FF04548A03138670F80CFD9BFB0000000A0000000500000001000000050000000400000003"
theorem small_5991820_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991820_right_root small_5991820_right_fuel small_5991820_right_count small_5991820_right_encoded = true := by
  decide +kernel
theorem small_5991820_right_covered : CoveredBy scale carrier boxes small_5991820_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991820_right_root small_5991820_right_fuel small_5991820_right_count small_5991820_right_encoded small_5991820_right_checked

theorem cover_5991820 : CoveredBy scale carrier boxes root_5991820 := by
  apply coveredBy_split_literal root_5991820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991821 small_5991820_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991821
  · exact small_5991820_right_covered
#print axioms cover_5991820

def root_5991814 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991814_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991814_left_fuel : Nat := 1
def small_5991814_left_count : Nat := 1
def small_5991814_left_encoded : String := "00000002"
theorem small_5991814_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991814_left_root small_5991814_left_fuel small_5991814_left_count small_5991814_left_encoded = true := by
  decide +kernel
theorem small_5991814_left_covered : CoveredBy scale carrier boxes small_5991814_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991814_left_root small_5991814_left_fuel small_5991814_left_count small_5991814_left_encoded small_5991814_left_checked

theorem cover_5991814 : CoveredBy scale carrier boxes root_5991814 := by
  apply coveredBy_split_literal root_5991814 small_5991814_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991820 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5991814_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991820
#print axioms cover_5991814

def root_5991813 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991813_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991813_right_fuel : Nat := 9
def small_5991813_right_count : Nat := 23
def small_5991813_right_encoded : String := "120700FA08A91307120701060000000305000100135D44F7050000FE135D80FF0000000404548A0300000008000000050000000800000000135D80F700000000050000FE00000005135D44FF00000008000000040000000500000002"
theorem small_5991813_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991813_right_root small_5991813_right_fuel small_5991813_right_count small_5991813_right_encoded = true := by
  decide +kernel
theorem small_5991813_right_covered : CoveredBy scale carrier boxes small_5991813_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991813_right_root small_5991813_right_fuel small_5991813_right_count small_5991813_right_encoded small_5991813_right_checked

theorem cover_5991813 : CoveredBy scale carrier boxes root_5991813 := by
  apply coveredBy_split_literal root_5991813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991814 small_5991813_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991814
  · exact small_5991813_right_covered
#print axioms cover_5991813

def root_5991808 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991808_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991808_right_fuel : Nat := 1
def small_5991808_right_count : Nat := 1
def small_5991808_right_encoded : String := "00000001"
theorem small_5991808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991808_right_root small_5991808_right_fuel small_5991808_right_count small_5991808_right_encoded = true := by
  decide +kernel
theorem small_5991808_right_covered : CoveredBy scale carrier boxes small_5991808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991808_right_root small_5991808_right_fuel small_5991808_right_count small_5991808_right_encoded small_5991808_right_checked

theorem cover_5991808 : CoveredBy scale carrier boxes root_5991808 := by
  apply coveredBy_split_literal root_5991808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991813 small_5991808_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991813
  · exact small_5991808_right_covered
#print axioms cover_5991808

def root_5991807 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991807_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991807_right_fuel : Nat := 28
def small_5991807_right_count : Nat := 175
def small_5991807_right_encoded : String := "12073CF80000000108A912FB12073CFA0000000208A91307120701060000000305000100135D44F7050000FE135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002000000050F8750FB028001000000000A13D7ECF700000000078000FE128A7CFF00000004000000050000000A0000000200000005000000050000000100000005135D44FF0CFD9C030F34D0F80CFD9BFB0000000A00000005000000010000000A0000000400000000135D80F700000000050000FE135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002000000050F8750FB07800100128A40F7078000FE128A7CFF0000000400000005128A40FF0000000A0000000400000000128A7CF700000000078000FE128A7CFF0000000400000005128A40FF0AD3578310D100F8022A458713E1C506000000030B4D43FA10804CFB0000000200000005108010FB000000090000000200000005000000010000000500000004000000020000000500000005000000010F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F8000000050F87510300000001000000050000000500000005135D44FF0CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002078001000000000A128A7CF700000000028000FE13D7ECFF000000040AD3578310D100F80000000500000001000000050000000A0F8750FB0000000A000000020000000A0F34D0FA0000000500000002000000010F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F80000000A0000000A0000000A0F34D0FA00000005000000020000000412073D060000000500000003120700FA0000000500000002"
theorem small_5991807_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991807_right_root small_5991807_right_fuel small_5991807_right_count small_5991807_right_encoded = true := by
  decide +kernel
theorem small_5991807_right_covered : CoveredBy scale carrier boxes small_5991807_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991807_right_root small_5991807_right_fuel small_5991807_right_count small_5991807_right_encoded small_5991807_right_checked

theorem cover_5991807 : CoveredBy scale carrier boxes root_5991807 := by
  apply coveredBy_split_literal root_5991807 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991808 small_5991807_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991808
  · exact small_5991807_right_covered
#print axioms cover_5991807

def root_5991802 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991802_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991802_right_fuel : Nat := 1
def small_5991802_right_count : Nat := 1
def small_5991802_right_encoded : String := "00000004"
theorem small_5991802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991802_right_root small_5991802_right_fuel small_5991802_right_count small_5991802_right_encoded = true := by
  decide +kernel
theorem small_5991802_right_covered : CoveredBy scale carrier boxes small_5991802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991802_right_root small_5991802_right_fuel small_5991802_right_count small_5991802_right_encoded small_5991802_right_checked

theorem cover_5991802 : CoveredBy scale carrier boxes root_5991802 := by
  apply coveredBy_split_literal root_5991802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991807 small_5991802_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991807
  · exact small_5991802_right_covered
#print axioms cover_5991802

def root_5989718 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989718 : CoveredBy scale carrier boxes root_5989718 := by
  apply coveredBy_split_literal root_5989718 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2254.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5991802 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2254.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5991802
#print axioms cover_5989718

def root_5989713 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989713_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989713_right_fuel : Nat := 1
def small_5989713_right_count : Nat := 1
def small_5989713_right_encoded : String := "00000003"
theorem small_5989713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989713_right_root small_5989713_right_fuel small_5989713_right_count small_5989713_right_encoded = true := by
  decide +kernel
theorem small_5989713_right_covered : CoveredBy scale carrier boxes small_5989713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989713_right_root small_5989713_right_fuel small_5989713_right_count small_5989713_right_encoded small_5989713_right_checked

theorem cover_5989713 : CoveredBy scale carrier boxes root_5989713 := by
  apply coveredBy_split_literal root_5989713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.root_5989718 small_5989713_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145.cover_5989718
  · exact small_5989713_right_covered
#print axioms cover_5989713

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0145
