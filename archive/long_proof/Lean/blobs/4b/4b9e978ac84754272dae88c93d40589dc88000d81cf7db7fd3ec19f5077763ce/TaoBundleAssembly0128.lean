import TaoBundleAssembly0127
import TaoBundleChunkBatch0483
import TaoBundleChunkBatch0484
import TaoBundleChunkBatch0485
import TaoBundleChunkBatch0486
import TaoBundleChunkBatch0487
import TaoBundleChunkBatch0488
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128
def root_5165207 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165207_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165207_left_fuel : Nat := 28
def small_5165207_left_count : Nat := 233
def small_5165207_left_encoded : String := "138670FC0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB0280010813D7B0FF022A457700000007000000060000000413D7ECFF00000004022A457713E20100022A45870000000613E200FC000000030DE7C9F8000000060E5FD8F90B4D43FA0000000600000007000000010000000013E1C5000000000000000006000000020F8750F90C9A86FA0F878CFB000000020280010813D7B0FF022A457713E20100022A45870000000613E200FC000000030B4D43F8000000060000000800000000000000060000000413D7ECFF00000004022A45770000000813E1C50000000000000000060F8750FB0280010813D7B0FF022A457713E20100022A45870000000513E200FC000000030B4D43F810804CF90000000100000007108010F900000005000000010000000013E1C50000000000022A45870000000613E200FC000000030B4D43F810804CF9000000010B4D43FA0000000600000007108010F90B4D43FA10804CFB00000002014001080000000600000006108010FB014001080000000713F614FF00000004011523370000000513F8590000000000033F67C7000000050000000700000002000000010000000413D7ECFF00000004022A457713E20100022A45870000000513E200FC000000030B4D43F810804CF9000000010B4D43FA00000008108010FB0000000500000002108010F900000005000000010000000013E1C50000000000022A458713E1C4FC0B4D43F800000006108010F900000005000000010000000313E200FC000000030B4D43F810804CF9000000010B4D43FA00000006108010FB03C0010813A510FF000000060000000413A54CFF000000040115233713F89500033F67C70000000513BC30FC000000030BF3E5780000000600000008000000000000000600000002108010F90B4D43FA10804CFB0000000203C0010813A510FF000000060000000413A54CFF0000000400000008108010FB03C0010813A510FF011523370000000513F8590000000000033F67C70000000513BC30FC000000030AA6A27810EDACF9000000010000000610ED70F90AA6A27A0000000610ED70FB0000000500000002000000010000000413A54CFF00000004011523370000000513F8590000000000033F67C70000000513BC30FC000000030AA6A27810EDACF9000000010000000610ED70F90AA6A27A10EDACFB000000020000000610ED70FB046001081383DCFF00000005000000040000000500000002000000010000000200000001000000020000000100000003"
theorem small_5165207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165207_left_root small_5165207_left_fuel small_5165207_left_count small_5165207_left_encoded = true := by
  decide +kernel
theorem small_5165207_left_covered : CoveredBy scale carrier boxes small_5165207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165207_left_root small_5165207_left_fuel small_5165207_left_count small_5165207_left_encoded small_5165207_left_checked

theorem cover_5165207 : CoveredBy scale carrier boxes root_5165207 := by
  apply coveredBy_split_literal root_5165207 small_5165207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5165705 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5165207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5165705
#print axioms cover_5165207

def root_5165201 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165201_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165201_left_fuel : Nat := 1
def small_5165201_left_count : Nat := 1
def small_5165201_left_encoded : String := "00000002"
theorem small_5165201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165201_left_root small_5165201_left_fuel small_5165201_left_count small_5165201_left_encoded = true := by
  decide +kernel
theorem small_5165201_left_covered : CoveredBy scale carrier boxes small_5165201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165201_left_root small_5165201_left_fuel small_5165201_left_count small_5165201_left_encoded small_5165201_left_checked

theorem cover_5165201 : CoveredBy scale carrier boxes root_5165201 := by
  apply coveredBy_split_literal root_5165201 small_5165201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165207 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5165201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165207
#print axioms cover_5165201

def root_5165200 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165200_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165200_right_fuel : Nat := 14
def small_5165200_right_count : Nat := 45
def small_5165200_right_encoded : String := "0F34D0FA04548A07000000061386ACFC000000030C9A86F80F878CF9000000010280010800000006000000060F8750F90280010813D7B0FF022A457713E201000AD3577B10D13CFA00000002067ECE870000000612EA94FC000000030000000510D100FA00000006000000020000000013E1C500000000000AD3577B10D13CFA00000002067ECE870000000600000005000000050000000413D7ECFF00000004022A457700000008000000050000000100000002"
theorem small_5165200_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165200_right_root small_5165200_right_fuel small_5165200_right_count small_5165200_right_encoded = true := by
  decide +kernel
theorem small_5165200_right_covered : CoveredBy scale carrier boxes small_5165200_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165200_right_root small_5165200_right_fuel small_5165200_right_count small_5165200_right_encoded small_5165200_right_checked

theorem cover_5165200 : CoveredBy scale carrier boxes root_5165200 := by
  apply coveredBy_split_literal root_5165200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165201 small_5165200_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165201
  · exact small_5165200_right_covered
#print axioms cover_5165200

def root_5165194 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165194_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165194_left_fuel : Nat := 1
def small_5165194_left_count : Nat := 1
def small_5165194_left_encoded : String := "00000001"
theorem small_5165194_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165194_left_root small_5165194_left_fuel small_5165194_left_count small_5165194_left_encoded = true := by
  decide +kernel
theorem small_5165194_left_covered : CoveredBy scale carrier boxes small_5165194_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165194_left_root small_5165194_left_fuel small_5165194_left_count small_5165194_left_encoded small_5165194_left_checked

theorem cover_5165194 : CoveredBy scale carrier boxes root_5165194 := by
  apply coveredBy_split_literal root_5165194 small_5165194_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165200 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5165194_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165200
#print axioms cover_5165194

def root_5165193 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165193_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165193_right_fuel : Nat := 15
def small_5165193_right_count : Nat := 35
def small_5165193_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA0000000204548A07000000061386ACFC000000030C9A86FA0F878CFB000000020280010800000006000000060F8750FB028001080000000713D7ECFF00000004022A457713E201000AD3577910D13CF800000001067ECE870000000700000005000000050000000000000005000000020F34D0FA000000060000000200000001"
theorem small_5165193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165193_right_root small_5165193_right_fuel small_5165193_right_count small_5165193_right_encoded = true := by
  decide +kernel
theorem small_5165193_right_covered : CoveredBy scale carrier boxes small_5165193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165193_right_root small_5165193_right_fuel small_5165193_right_count small_5165193_right_encoded small_5165193_right_checked

theorem cover_5165193 : CoveredBy scale carrier boxes root_5165193 := by
  apply coveredBy_split_literal root_5165193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165194 small_5165193_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165194
  · exact small_5165193_right_covered
#print axioms cover_5165193

def root_5165187 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165187_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5165187_left_fuel : Nat := 1
def small_5165187_left_count : Nat := 1
def small_5165187_left_encoded : String := "00000000"
theorem small_5165187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5165187_left_root small_5165187_left_fuel small_5165187_left_count small_5165187_left_encoded = true := by
  decide +kernel
theorem small_5165187_left_covered : CoveredBy scale carrier boxes small_5165187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5165187_left_root small_5165187_left_fuel small_5165187_left_count small_5165187_left_encoded small_5165187_left_checked

theorem cover_5165187 : CoveredBy scale carrier boxes root_5165187 := by
  apply coveredBy_split_literal root_5165187 small_5165187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165193 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5165187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165193
#print axioms cover_5165187

def root_5164379 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164379_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164379_left_fuel : Nat := 27
def small_5164379_left_count : Nat := 379
def small_5164379_left_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07138670FC0C9A86F80F878CF9000000010C9A86FA000000080F8750FB00000007000000020F8750F90C9A86FA000000080F8750FB000000050000000200000001000000031386ACFC000000030C9A86F80F878CF9000000010C9A86FA0F878CFB000000020280010813D7B0FF067ECE7712EA9500067ECE870000000712EA94FC000000030DE7C9F80E6014F900000001000000070E5FD8F90DE7C9FA0000000800000007000000010000000012EA590000000000067ECE8712EA58FC0DE7C9F80E6014F900000001000000060E5FD8F900000008000000010000000312EA94FC000000030DE7C9F80E6014F9000000010DE7C9FA0E6014FB0000000200000006000000070E5FD8F90DE7C9FA0E6014FB000000020140010813F5D8FF0569AC37000000071340D500000000000000000600000004000000080E5FD8FB0000000700000002000000010000000413D7ECFF00000004067ECE770000000812EA590000000000067ECE870000000812EA94FC000000030DE7C9F80E6014F9000000010DE7C9FA000000080E5FD8FB0000000A000000020E5FD8F900000008000000010F8750FB028001080000000713D7ECFF00000004067ECE770000000A12EA590000000000067ECE870000000712EA94FC000000030DE7C9F80000000A0E5FD8F90000000A00000001000000020F8750F90C9A86FA0F878CFB000000020280010813D7B0FF067ECE7712EA9500067ECE870000000812EA94FC000000030B4D43F810804CF90000000100000008000000080000000012EA590000000000067ECE8712EA58FC0B4D43F810804CF90000000100000008000000080000000312EA94FC000000030B4D43F810804CF9000000010DE7C9FA0E6014FB000000020140010800000009000000080E5FD8FB014001080000000713F614FF000000040569AC37000000071340D500000000000793F0C7000000070000000900000002108010F90DE7C9FA000000080E5FD8FB0000000900000002000000010000000413D7ECFF00000004067ECE770000000812EA590000000000067ECE870000000812EA94FC000000030B4D43F810804CF90000000100000008000000080F8750FB0280010813D7B0FF067ECE770000000712EA590000000000067ECE870000000712EA94FC00000003000000070000000413D7ECFF00000004067ECE7712EA9500067ECE870000000512EA94FC000000030B4D43F80000000A108010F900000005000000010000000012EA590000000000067ECE8712EA58FC0B4D43F810804CF9000000010B4D43FA0000000800000007108010F900000005000000010000000312EA94FC000000030B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010813A510FF00000007000000040000000A108010FB0000000700000002108010F90B4D43FA10804CFB0000000203C0010813A510FF0569AC37000000081340D500000000000793F0C700000007000000090000000413A54CFF000000040569AC37000000081340D5000000000000000008108010FB03C001080000000713A54CFF000000040569AC37000000051340D500000000000000000A000000020000000100000002000000010F34D0FA04548A07000000081386ACFC000000030C9A86F80F878CF9000000010280010813D7B0FF067ECE770000000812EA5900000000000AD3577B000000060000000600000004000000080F8750F90000000800000001000000020F34D0F80CFD9BFB0F350CFA0000000204548A07138670FC0C9A86FA0F878CFB000000020000000600000007000000031386ACFC000000030C9A86FA0F878CFB000000020280010813D7B0FF067ECE7712EA9500000000070000000012EA5900000000000AD3577900000006000000060000000413D7ECFF00000004067ECE770000000A12EA5900000000000AD3577910D13CF800000001067ECE87000000060000000A000000060F8750FB02800108000000070000000A000000020F34D0FA04548A07000000061386ACFC00000003028001080000000600000006000000020000000100000000"
theorem small_5164379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164379_left_root small_5164379_left_fuel small_5164379_left_count small_5164379_left_encoded = true := by
  decide +kernel
theorem small_5164379_left_covered : CoveredBy scale carrier boxes small_5164379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164379_left_root small_5164379_left_fuel small_5164379_left_count small_5164379_left_encoded small_5164379_left_checked

theorem cover_5164379 : CoveredBy scale carrier boxes root_5164379 := by
  apply coveredBy_split_literal root_5164379 small_5164379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5165187 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5164379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5165187
#print axioms cover_5164379

def root_5164374 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164374_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164374_right_fuel : Nat := 1
def small_5164374_right_count : Nat := 1
def small_5164374_right_encoded : String := "00000004"
theorem small_5164374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164374_right_root small_5164374_right_fuel small_5164374_right_count small_5164374_right_encoded = true := by
  decide +kernel
theorem small_5164374_right_covered : CoveredBy scale carrier boxes small_5164374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164374_right_root small_5164374_right_fuel small_5164374_right_count small_5164374_right_encoded small_5164374_right_checked

theorem cover_5164374 : CoveredBy scale carrier boxes root_5164374 := by
  apply coveredBy_split_literal root_5164374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164379 small_5164374_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164379
  · exact small_5164374_right_covered
#print axioms cover_5164374

def root_5164373 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5164373 : CoveredBy scale carrier boxes root_5164373 := by
  apply coveredBy_split_literal root_5164373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164374 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1935.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164374
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1935.covered
#print axioms cover_5164373

def root_5164368 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164368_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164368_right_fuel : Nat := 1
def small_5164368_right_count : Nat := 1
def small_5164368_right_encoded : String := "00000003"
theorem small_5164368_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164368_right_root small_5164368_right_fuel small_5164368_right_count small_5164368_right_encoded = true := by
  decide +kernel
theorem small_5164368_right_covered : CoveredBy scale carrier boxes small_5164368_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164368_right_root small_5164368_right_fuel small_5164368_right_count small_5164368_right_encoded small_5164368_right_checked

theorem cover_5164368 : CoveredBy scale carrier boxes root_5164368 := by
  apply coveredBy_split_literal root_5164368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164373 small_5164368_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164373
  · exact small_5164368_right_covered
#print axioms cover_5164368

def root_5164367 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5164367 : CoveredBy scale carrier boxes root_5164367 := by
  apply coveredBy_split_literal root_5164367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164368 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1936.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164368
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1936.covered
#print axioms cover_5164367

def root_5164361 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164361_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164361_left_fuel : Nat := 1
def small_5164361_left_count : Nat := 1
def small_5164361_left_encoded : String := "00000002"
theorem small_5164361_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164361_left_root small_5164361_left_fuel small_5164361_left_count small_5164361_left_encoded = true := by
  decide +kernel
theorem small_5164361_left_covered : CoveredBy scale carrier boxes small_5164361_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164361_left_root small_5164361_left_fuel small_5164361_left_count small_5164361_left_encoded small_5164361_left_checked

theorem cover_5164361 : CoveredBy scale carrier boxes root_5164361 := by
  apply coveredBy_split_literal root_5164361 small_5164361_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164367 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5164361_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164367
#print axioms cover_5164361

def root_5164360 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164360_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164360_right_fuel : Nat := 13
def small_5164360_right_count : Nat := 61
def small_5164360_right_encoded : String := "120700FA08A91307120700FC05000108135D44FF045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A07000000060000000800000006000000060000000013867100000000000CFD9BF9000000060000000600000004135D80FF00000004045489F71386AD000CFD9BF90F350CF800000001045489FB00000008138670FA0000000700000002000000080000000013867100000000000CFD9BF900000007000000050000000312073CFC0000000305000108135D44FF045489F71386AD000CFD9BF90F350CF80000000100000005000000050000000000000005000000040000000500000002"
theorem small_5164360_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164360_right_root small_5164360_right_fuel small_5164360_right_count small_5164360_right_encoded = true := by
  decide +kernel
theorem small_5164360_right_covered : CoveredBy scale carrier boxes small_5164360_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164360_right_root small_5164360_right_fuel small_5164360_right_count small_5164360_right_encoded small_5164360_right_checked

theorem cover_5164360 : CoveredBy scale carrier boxes root_5164360 := by
  apply coveredBy_split_literal root_5164360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164361 small_5164360_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164361
  · exact small_5164360_right_covered
#print axioms cover_5164360

def root_5164354 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164354_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164354_left_fuel : Nat := 1
def small_5164354_left_count : Nat := 1
def small_5164354_left_encoded : String := "00000001"
theorem small_5164354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164354_left_root small_5164354_left_fuel small_5164354_left_count small_5164354_left_encoded = true := by
  decide +kernel
theorem small_5164354_left_covered : CoveredBy scale carrier boxes small_5164354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164354_left_root small_5164354_left_fuel small_5164354_left_count small_5164354_left_encoded small_5164354_left_checked

theorem cover_5164354 : CoveredBy scale carrier boxes root_5164354 := by
  apply coveredBy_split_literal root_5164354 small_5164354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164360 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5164354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164360
#print axioms cover_5164354

def root_5164353 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164353_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164353_right_fuel : Nat := 17
def small_5164353_right_count : Nat := 89
def small_5164353_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120700FC05000108135D44FF045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07000000061386ACFC000000030C9A86FA0000000A000000070000000600000006000000001386710000000000045489F9000000060000000600000004135D80FF00000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0000000A0F34D0FA0000000600000002138670F80CFD9BFB0000000A0000000500000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07000000060000000500000005000000050000000312073CFC0000000305000108135D44FF045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000200000005000000050000000500000000000000050000000400000005120700FA08A9130700000006000000050000000200000001"
theorem small_5164353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164353_right_root small_5164353_right_fuel small_5164353_right_count small_5164353_right_encoded = true := by
  decide +kernel
theorem small_5164353_right_covered : CoveredBy scale carrier boxes small_5164353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164353_right_root small_5164353_right_fuel small_5164353_right_count small_5164353_right_encoded small_5164353_right_checked

theorem cover_5164353 : CoveredBy scale carrier boxes root_5164353 := by
  apply coveredBy_split_literal root_5164353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164354 small_5164353_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164354
  · exact small_5164353_right_covered
#print axioms cover_5164353

def root_5164347 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164347_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5164347_left_fuel : Nat := 1
def small_5164347_left_count : Nat := 1
def small_5164347_left_encoded : String := "00000000"
theorem small_5164347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5164347_left_root small_5164347_left_fuel small_5164347_left_count small_5164347_left_encoded = true := by
  decide +kernel
theorem small_5164347_left_covered : CoveredBy scale carrier boxes small_5164347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5164347_left_root small_5164347_left_fuel small_5164347_left_count small_5164347_left_encoded small_5164347_left_checked

theorem cover_5164347 : CoveredBy scale carrier boxes root_5164347 := by
  apply coveredBy_split_literal root_5164347 small_5164347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164353 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5164347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164353
#print axioms cover_5164347

def root_5162217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162217 : CoveredBy scale carrier boxes root_5162217 := by
  apply coveredBy_split_literal root_5162217 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1933.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5164347 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1933.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5164347
#print axioms cover_5162217

def root_5162212 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162212_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162212_right_fuel : Nat := 1
def small_5162212_right_count : Nat := 1
def small_5162212_right_encoded : String := "00000004"
theorem small_5162212_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162212_right_root small_5162212_right_fuel small_5162212_right_count small_5162212_right_encoded = true := by
  decide +kernel
theorem small_5162212_right_covered : CoveredBy scale carrier boxes small_5162212_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162212_right_root small_5162212_right_fuel small_5162212_right_count small_5162212_right_encoded small_5162212_right_checked

theorem cover_5162212 : CoveredBy scale carrier boxes root_5162212 := by
  apply coveredBy_split_literal root_5162212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162217 small_5162212_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162217
  · exact small_5162212_right_covered
#print axioms cover_5162212

def root_5162211 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162211_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162211_right_fuel : Nat := 29
def small_5162211_right_count : Nat := 495
def small_5162211_right_encoded : String := "115224FF0000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC08A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0000000A000000020000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07000000080000000A0F34D0FA00000008000000020F34D0F80000000800000001000000041207010800000004000000080000000312073CFC0000000308A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0000000A0F34D0FA0000000A000000020000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D0FC0000000A000000030000000A0F34D0FA0CFD9C07000000080000000A000000020F34D0F80000000A000000010000000412070108000000040000000A120700FA08A91307120700FC08A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A07138670FC0CFD9BFF0F350D08000000080000000400000008000000030000000A138670FA04548A07138670FC0CFD9BFF0F350D080C9A87000F8750F70000000800000000000000080000000400000008000000031386ACFC000000030CFD9BFF0F350D080C9A87000F8750F70000000800000000000000080000000400000008000000020F34D0F80000000800000001000000000F34D100000000000CFD9BF90F350CF800000001045489FB00000008138670FA000000070000000200000008000000041207010800000004000000080000000312073CFC0000000308A912FF12073D080CFD9BF70F350D000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D0FC0000000A000000030000000A138670FA0CFD9C070F34D0FC0CFD9BFF0F350D080C9A87000000000A0000000500000004000000050000000300000005000000020F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C0700000008000000050000000500000005000000040000000500000002120700F808A912FB12073CFA0000000208A91307120700FC0000000A000000030000000A120700FA08A913070000000800000005000000020000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC08A912FF12073D08045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF0F350D080000000800000004000000080F34D0FA00000008000000020F34D0F800000008000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A07000000081386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010C9A86FA000000080F8750FB0000000A000000020F8750F90C9A86FA000000070F8750FB0C9A87080F8750FF022A4577000000080000000700000004000000070000000200000001000000040F34D10800000004000000070F34D0FA00000007000000020F34D0F80CFD9BFB0F350CFA0000000204548A07000000080000000A0F34D0FA000000050000000200000001000000041207010800000004000000080000000312073CFC0000000308A912FF12073D08045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A86FA000000080000000A00000001000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A86FA0F878CFB000000020C9A86FC0000000A0F87510700000003000000050F8750FB0000000A0000000200000001000000040F34D108000000040000000A0F34D0FA0CFD9C070000000800000005000000020F34D0F80CFD9BFB0000000A00000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A86FA000000050F8750FB0000000A000000020F8750F90C9A86FA000000070F8750FB0C9A87080F8750FF022A45770000000A00000005000000040000000700000002000000010000000400000005000000030F350CFC000000030CFD9BFF0F350D080C9A86F8000000050F8750F90C9A86FA000000050F8750FB0C9A86FC000000050F8751070000000300000005000000020000000100000004000000050F34D0FA00000005000000020F34D0F80000000500000001000000041207010800000004045489F71386AD000CFD9BF90F350CF80000000100000008000000050000000013867100000000000CFD9BF90000000700000005120700FA08A91307120700FC08A912FF12073D08045489F71386AD000CFD9BF9000000070000000800000000000000070000000400000005000000030000000500000002120700F808A912FB12073CFA0000000208A91307120700FC08A912FF12073D08045489F70000000A1386710000000000045489F91386ACF8000000010CFD9BFB0000000A0000000500000005000000040000000500000003000000050000000500000001"
theorem small_5162211_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162211_right_root small_5162211_right_fuel small_5162211_right_count small_5162211_right_encoded = true := by
  decide +kernel
theorem small_5162211_right_covered : CoveredBy scale carrier boxes small_5162211_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162211_right_root small_5162211_right_fuel small_5162211_right_count small_5162211_right_encoded small_5162211_right_checked

theorem cover_5162211 : CoveredBy scale carrier boxes root_5162211 := by
  apply coveredBy_split_literal root_5162211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162212 small_5162211_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162212
  · exact small_5162211_right_covered
#print axioms cover_5162211

def root_5162206 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162206_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162206_right_fuel : Nat := 1
def small_5162206_right_count : Nat := 1
def small_5162206_right_encoded : String := "00000003"
theorem small_5162206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162206_right_root small_5162206_right_fuel small_5162206_right_count small_5162206_right_encoded = true := by
  decide +kernel
theorem small_5162206_right_covered : CoveredBy scale carrier boxes small_5162206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162206_right_root small_5162206_right_fuel small_5162206_right_count small_5162206_right_encoded small_5162206_right_checked

theorem cover_5162206 : CoveredBy scale carrier boxes root_5162206 := by
  apply coveredBy_split_literal root_5162206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162211 small_5162206_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162211
  · exact small_5162206_right_covered
#print axioms cover_5162206

def root_5162205 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162205 : CoveredBy scale carrier boxes root_5162205 := by
  apply coveredBy_split_literal root_5162205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1937.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162206
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1937.covered
#print axioms cover_5162205

def root_5162199 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162199_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162199_left_fuel : Nat := 1
def small_5162199_left_count : Nat := 1
def small_5162199_left_encoded : String := "00000002"
theorem small_5162199_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162199_left_root small_5162199_left_fuel small_5162199_left_count small_5162199_left_encoded = true := by
  decide +kernel
theorem small_5162199_left_covered : CoveredBy scale carrier boxes small_5162199_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162199_left_root small_5162199_left_fuel small_5162199_left_count small_5162199_left_encoded small_5162199_left_checked

theorem cover_5162199 : CoveredBy scale carrier boxes root_5162199 := by
  apply coveredBy_split_literal root_5162199 small_5162199_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162205 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162199_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162205
#print axioms cover_5162199

def root_5177934 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5177934 : CoveredBy scale carrier boxes root_5177934 := by
  apply coveredBy_split_literal root_5177934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1938.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1939.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1938.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1939.covered
#print axioms cover_5177934

def root_5177928 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177928_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177928_left_fuel : Nat := 1
def small_5177928_left_count : Nat := 1
def small_5177928_left_encoded : String := "00000001"
theorem small_5177928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177928_left_root small_5177928_left_fuel small_5177928_left_count small_5177928_left_encoded = true := by
  decide +kernel
theorem small_5177928_left_covered : CoveredBy scale carrier boxes small_5177928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177928_left_root small_5177928_left_fuel small_5177928_left_count small_5177928_left_encoded small_5177928_left_checked

theorem cover_5177928 : CoveredBy scale carrier boxes root_5177928 := by
  apply coveredBy_split_literal root_5177928 small_5177928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177934 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5177928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177934
#print axioms cover_5177928

def root_5177927 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177927_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177927_right_fuel : Nat := 13
def small_5177927_right_count : Nat := 57
def small_5177927_right_encoded : String := "120700F808A91307120700FC050000FA135D80FB000000020500010800000007135D80FF00000004045489F70000000A13867100000000000000000A135D44FB00000007000000020000000312073CFC00000003050000FA135D80FB0000000205000108135D44FF045489F71386AD00045489F91386ACF8000000010CFD9C07000000070000000500000005000000000000000500000004135D80FF00000004045489F70000000A00000005135D44FB05000108135D44FF045489F7000000070000000500000004135D80FF00000004045489F70000000A000000050000000200000001"
theorem small_5177927_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177927_right_root small_5177927_right_fuel small_5177927_right_count small_5177927_right_encoded = true := by
  decide +kernel
theorem small_5177927_right_covered : CoveredBy scale carrier boxes small_5177927_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177927_right_root small_5177927_right_fuel small_5177927_right_count small_5177927_right_encoded small_5177927_right_checked

theorem cover_5177927 : CoveredBy scale carrier boxes root_5177927 := by
  apply coveredBy_split_literal root_5177927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177928 small_5177927_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177928
  · exact small_5177927_right_covered
#print axioms cover_5177927

def root_5177921 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177921_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177921_left_fuel : Nat := 1
def small_5177921_left_count : Nat := 1
def small_5177921_left_encoded : String := "00000000"
theorem small_5177921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177921_left_root small_5177921_left_fuel small_5177921_left_count small_5177921_left_encoded = true := by
  decide +kernel
theorem small_5177921_left_covered : CoveredBy scale carrier boxes small_5177921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177921_left_root small_5177921_left_fuel small_5177921_left_count small_5177921_left_encoded small_5177921_left_checked

theorem cover_5177921 : CoveredBy scale carrier boxes root_5177921 := by
  apply coveredBy_split_literal root_5177921 small_5177921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177927 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5177921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177927
#print axioms cover_5177921

def root_5177583 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177583_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177583_left_fuel : Nat := 18
def small_5177583_left_count : Nat := 157
def small_5177583_left_encoded : String := "12073D0008A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF7000000050000000700000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF80000000104548A07000000050000000A0000000A135D44FB0500010800000007135D80FF000000040CFD9BF7000000050F34D100000000000CFD9BF90000000500000007000000020000000312073CFC00000003050000FA135D80FB0000000205000108135D44FF0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C0700000005000000060F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000070F8750F90000000600000001000000030F350CFC00000003000000060F34D0F80CFD9C070F34D0FC00000007000000030000000A0000000100000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030000000A0F34D0F80000000A00000001135D44FB05000108135D44FF0CFD9BF70F350D000CFD9BF90000000600000006000000000F34D100000000000CFD9BF90F350CF800000001000000060F34D0F80CFD9C0700000007000000060000000100000004135D80FF000000040CFD9BF70F350D000000000A000000000F34D100000000000CFD9BF90F350CF800000001000000060000000A00000002120700F808A91307120700FC050000FA0000000A000000070000000312073CFC00000003050000FA0000000A0000000A0000000100000000"
theorem small_5177583_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177583_left_root small_5177583_left_fuel small_5177583_left_count small_5177583_left_encoded = true := by
  decide +kernel
theorem small_5177583_left_covered : CoveredBy scale carrier boxes small_5177583_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177583_left_root small_5177583_left_fuel small_5177583_left_count small_5177583_left_encoded small_5177583_left_checked

theorem cover_5177583 : CoveredBy scale carrier boxes root_5177583 := by
  apply coveredBy_split_literal root_5177583 small_5177583_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177921 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5177583_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177921
#print axioms cover_5177583

def root_5177578 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177578_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177578_right_fuel : Nat := 1
def small_5177578_right_count : Nat := 1
def small_5177578_right_encoded : String := "00000004"
theorem small_5177578_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177578_right_root small_5177578_right_fuel small_5177578_right_count small_5177578_right_encoded = true := by
  decide +kernel
theorem small_5177578_right_covered : CoveredBy scale carrier boxes small_5177578_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177578_right_root small_5177578_right_fuel small_5177578_right_count small_5177578_right_encoded small_5177578_right_checked

theorem cover_5177578 : CoveredBy scale carrier boxes root_5177578 := by
  apply coveredBy_split_literal root_5177578 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177583 small_5177578_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177583
  · exact small_5177578_right_covered
#print axioms cover_5177578

def root_5177577 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177577_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177577_right_fuel : Nat := 27
def small_5177577_right_count : Nat := 235
def small_5177577_right_encoded : String := "115224FF0000000408A912F712073D0008A912F912073CF80000000108A91307120700FC08A912FF12073D08050000FA0000000A135D44FB0000000A00000002000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA0000000A135D44FB0000000A00000002000000040000000A120700F80000000A0000000100000000120701000000000008A912F912073CF80000000108A91307120700FC08A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF80000000104548A070000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF80000000104548A07138670FC0CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000800000009000000040000000A000000010000000400000009000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000A0000000A000000040000000A00000001000000040000000A0F34D0F80000000A00000001135D44FB045489F70000000A13867100000000000CFD9BF90F350CF80000000104548A070000000A0000000A0000000A000000020000000412070108000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078000FA0000000A0000000A000000040000000A00000001000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010000000A0F8750F90C9A86FC0F878D070C9A87080F8750FF078000FA0000000A00000006000000040000000A000000030F875107000000030C9A8708000000060000000A00000001000000040F34D108000000040000000A0F34D0F80000000A00000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9C070000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86F80000000A00000006000000040000000A0F34D0F80000000A00000001000000020000000412070108000000040000000A120700F808A91307120700FC0000000A000000030000000A00000001"
theorem small_5177577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177577_right_root small_5177577_right_fuel small_5177577_right_count small_5177577_right_encoded = true := by
  decide +kernel
theorem small_5177577_right_covered : CoveredBy scale carrier boxes small_5177577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177577_right_root small_5177577_right_fuel small_5177577_right_count small_5177577_right_encoded small_5177577_right_checked

theorem cover_5177577 : CoveredBy scale carrier boxes root_5177577 := by
  apply coveredBy_split_literal root_5177577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177578 small_5177577_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177578
  · exact small_5177577_right_covered
#print axioms cover_5177577

def root_5177572 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177572_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177572_right_fuel : Nat := 1
def small_5177572_right_count : Nat := 1
def small_5177572_right_encoded : String := "00000003"
theorem small_5177572_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177572_right_root small_5177572_right_fuel small_5177572_right_count small_5177572_right_encoded = true := by
  decide +kernel
theorem small_5177572_right_covered : CoveredBy scale carrier boxes small_5177572_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177572_right_root small_5177572_right_fuel small_5177572_right_count small_5177572_right_encoded small_5177572_right_checked

theorem cover_5177572 : CoveredBy scale carrier boxes root_5177572 := by
  apply coveredBy_split_literal root_5177572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177577 small_5177572_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177577
  · exact small_5177572_right_covered
#print axioms cover_5177572

def root_5177571 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5177571 : CoveredBy scale carrier boxes root_5177571 := by
  apply coveredBy_split_literal root_5177571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1940.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177572
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1940.covered
#print axioms cover_5177571

def root_5177566 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177566_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5177566_right_fuel : Nat := 1
def small_5177566_right_count : Nat := 1
def small_5177566_right_encoded : String := "00000002"
theorem small_5177566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5177566_right_root small_5177566_right_fuel small_5177566_right_count small_5177566_right_encoded = true := by
  decide +kernel
theorem small_5177566_right_covered : CoveredBy scale carrier boxes small_5177566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5177566_right_root small_5177566_right_fuel small_5177566_right_count small_5177566_right_encoded small_5177566_right_checked

theorem cover_5177566 : CoveredBy scale carrier boxes root_5177566 := by
  apply coveredBy_split_literal root_5177566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177571 small_5177566_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177571
  · exact small_5177566_right_covered
#print axioms cover_5177566

def root_5162198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162198 : CoveredBy scale carrier boxes root_5162198 := by
  apply coveredBy_split_literal root_5162198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5177566 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162199
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5177566
#print axioms cover_5162198

def root_5162192 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162192_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162192_left_fuel : Nat := 1
def small_5162192_left_count : Nat := 1
def small_5162192_left_encoded : String := "00000001"
theorem small_5162192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162192_left_root small_5162192_left_fuel small_5162192_left_count small_5162192_left_encoded = true := by
  decide +kernel
theorem small_5162192_left_covered : CoveredBy scale carrier boxes small_5162192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162192_left_root small_5162192_left_fuel small_5162192_left_count small_5162192_left_encoded small_5162192_left_checked

theorem cover_5162192 : CoveredBy scale carrier boxes root_5162192 := by
  apply coveredBy_split_literal root_5162192 small_5162192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162198 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162198
#print axioms cover_5162192

def root_5185071 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5185071 : CoveredBy scale carrier boxes root_5185071 := by
  apply coveredBy_split_literal root_5185071 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1942.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1943.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1942.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1943.covered
#print axioms cover_5185071

def root_5185065 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185065_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185065_left_fuel : Nat := 1
def small_5185065_left_count : Nat := 1
def small_5185065_left_encoded : String := "00000001"
theorem small_5185065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185065_left_root small_5185065_left_fuel small_5185065_left_count small_5185065_left_encoded = true := by
  decide +kernel
theorem small_5185065_left_covered : CoveredBy scale carrier boxes small_5185065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185065_left_root small_5185065_left_fuel small_5185065_left_count small_5185065_left_encoded small_5185065_left_checked

theorem cover_5185065 : CoveredBy scale carrier boxes root_5185065 := by
  apply coveredBy_split_literal root_5185065 small_5185065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185071 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5185065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185071
#print axioms cover_5185065

def root_5185064 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185064_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185064_right_fuel : Nat := 21
def small_5185064_right_count : Nat := 141
def small_5185064_right_encoded : String := "135D44F905000108135D44FF045489F71386AD000CFD9BFB0F350CFA0000000204548A07000000051386ACFC000000030C9A86FA000000090F8750FB00000005000000020F34D0FA04548A070000000800000009000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A07138670FC0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000031386ACFC000000030C9A86FA000000090F8750FB00000009000000020F34D0FA04548A070000000A000000090000000200000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA0000000204548A07000000051386ACFC000000030C9A86FA0F878CFB00000002028000F800000008000000080F8750FB00000006000000020F34D0FA04548A070000000800000007000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A07138670FC0C9A86FA000000080F8750FB028000F813D7ECF90000000107800108128A40FF00000005000000040000000813D7B0F9000000050000000100000002000000031386ACFC000000030C9A86FA0F878CFB00000002000000070F8750FB028000F813D7ECF90000000107800108128A40FF022A457713E20100067ECE8700000005000000060000000013E1C50000000000067ECE8712EA58FC0B4D43FA0000000700000006000000030000000600000004128A7CFF000000040000000713D7B0F907800108000000060000000600000001000000020F34D0FA000000070000000200000001"
theorem small_5185064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185064_right_root small_5185064_right_fuel small_5185064_right_count small_5185064_right_encoded = true := by
  decide +kernel
theorem small_5185064_right_covered : CoveredBy scale carrier boxes small_5185064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185064_right_root small_5185064_right_fuel small_5185064_right_count small_5185064_right_encoded small_5185064_right_checked

theorem cover_5185064 : CoveredBy scale carrier boxes root_5185064 := by
  apply coveredBy_split_literal root_5185064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185065 small_5185064_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185065
  · exact small_5185064_right_covered
#print axioms cover_5185064

def root_5185059 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185059_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185059_right_fuel : Nat := 1
def small_5185059_right_count : Nat := 1
def small_5185059_right_encoded : String := "00000003"
theorem small_5185059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185059_right_root small_5185059_right_fuel small_5185059_right_count small_5185059_right_encoded = true := by
  decide +kernel
theorem small_5185059_right_covered : CoveredBy scale carrier boxes small_5185059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185059_right_root small_5185059_right_fuel small_5185059_right_count small_5185059_right_encoded small_5185059_right_checked

theorem cover_5185059 : CoveredBy scale carrier boxes root_5185059 := by
  apply coveredBy_split_literal root_5185059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185064 small_5185059_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185064
  · exact small_5185059_right_covered
#print axioms cover_5185059

def root_5185058 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185058_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185058_right_fuel : Nat := 30
def small_5185058_right_count : Nat := 497
def small_5185058_right_encoded : String := "12073CFC00000003050000F8135D80F90000000105000108135D44FF045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA000000090F8750FB078000F8128A7CF900000001028001080000000913D7ECFF00000004067ECE770000000612EA59000000000000000009000000060000000200000003000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF900000001028001080000000913D7ECFF00000004022A45770000000900000005000000090F8750FB078000F8128A7CF900000001028001080000000913D7ECFF00000004022A457713E201000AD3578710D100FC0B4D43FA000000090000000900000003000000090000000013E1C500000000000AD3578710D100FC0B4D43FA00000009108010FB00000009000000020000000300000005000000090000000200000003000000090F34D0FA0CFD9C070F34D0FC0000000500000003000000050000000200000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A40FF067ECE7712EA95000AD3578700000008000000090000000012EA5900000000000AD35787000000080000000900000004128A7CFF00000004067ECE770000000812EA59000000000000000008128A40F907800108128A40FF0000000900000004128A7CFF0000000400000008000000010F8750FB078000F8128A7CF90000000107800108128A40FF067ECE770000000612EA5900000000000AD3578710D100FC00000006000000030000000600000004128A7CFF00000004067ECE770000000612EA5900000000000AD3578710D100FC000000060000000300000006128A40F9000000060000000100000002000000030F350CFC000000030C9A86FA0F878CFB000000020C9A86FC0F878D07078000F8128A7CF9000000010780010800000009128A7CFF00000004067ECE770000000612EA5900000000000DE7C9FA000000050000000600000006000000030F87510700000003000000090F8750FB0C9A86FC0000000600000006000000020F34D0FA0CFD9C070F34D0FC078000F8128A7CF900000001078001080000000800000007128A40F907800108000000080000000700000001000000030F350CFC000000030C9A86FC0F878D07078000F8128A7CF9000000010000000500000009000000030F8751070000000300000005000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800108128A40FF022A457713E201000AD3578710D100FC0DE7C9FA000000070E5FD8FB08C000F811FC24F9000000010640010800000009000000070000000900000002000000030000000500000000000000050000000400000007128A40F907800108128A40FF022A457700000009000000070000000400000007000000010F8750FB078000F8128A7CF90000000107800108128A40FF022A457713E201000AD3578710D100FC0B4D43FA10804CFB0000000208C000F811FC24F9000000010640010812FF70FF000000090000000412FFACFF00000004033F67B70000000613BBF500000000000000000711FBE8F90000000600000001108010FB00000006000000020000000310D13CFC00000003000000060000000013E1C500000000000AD3578710D100FC0B4D43FA10804CFB0000000208C000F811FC24F9000000010000000511FBE8F90000000700000001108010FB08C000F811FC24F9000000010640010812FF70FF0115233700000006000000050000000412FFACFF000000040115233700000006000000050000000600000002000000030000000500000004128A7CFF00000004022A457713E201000AD3578710D100FC0B4D43FA00000007000000060000000310D13CFC00000003000000060000000013E1C500000000000AD3578710D100FC000000070000000300000005128A40F907800108128A40FF022A45770000000613E1C500000000000AD3578710D100FC0B4D43FA0000000700000006000000030000000600000004128A7CFF00000004022A457700000006000000070000000100000002000000030F350CFC000000030C9A86FA0F878CFB000000020C9A86FC0F878D07078000F80000000500000009000000030F87510700000003000000050F8750FB0C9A86FC0F878D07078000F8128A7CF90000000107800108128A40FF0000000900000004128A7CFF00000004022A4577000000060000000500000006000000030F87510700000003078000F8128A7CF90000000107800108000000050000000600000006000000020F34D0FA0CFD9C070F34D0FC00000007000000030000000500000002135D44F905000108135D44FF045489F70000000913867100000000000000000900000004135D80FF00000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA000000090000000600000003000000060F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878CFB00000002000000070F8750FB000000060000000200000003000000090F34D0FA0CFD9C070F34D0FC0000000700000003000000070000000200000001"
theorem small_5185058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185058_right_root small_5185058_right_fuel small_5185058_right_count small_5185058_right_encoded = true := by
  decide +kernel
theorem small_5185058_right_covered : CoveredBy scale carrier boxes small_5185058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185058_right_root small_5185058_right_fuel small_5185058_right_count small_5185058_right_encoded small_5185058_right_checked

theorem cover_5185058 : CoveredBy scale carrier boxes root_5185058 := by
  apply coveredBy_split_literal root_5185058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185059 small_5185058_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185059
  · exact small_5185058_right_covered
#print axioms cover_5185058

def root_5185052 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185052_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185052_left_fuel : Nat := 1
def small_5185052_left_count : Nat := 1
def small_5185052_left_encoded : String := "00000002"
theorem small_5185052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185052_left_root small_5185052_left_fuel small_5185052_left_count small_5185052_left_encoded = true := by
  decide +kernel
theorem small_5185052_left_covered : CoveredBy scale carrier boxes small_5185052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185052_left_root small_5185052_left_fuel small_5185052_left_count small_5185052_left_encoded small_5185052_left_checked

theorem cover_5185052 : CoveredBy scale carrier boxes root_5185052 := by
  apply coveredBy_split_literal root_5185052 small_5185052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185058 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5185052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185058
#print axioms cover_5185052

def root_5185051 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185051_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185051_right_fuel : Nat := 15
def small_5185051_right_count : Nat := 91
def small_5185051_right_encoded : String := "120700FA08A91307120700FC050000F8135D80F90000000105000108135D44FF045489F71386AD00045489FB1386ACFA0000000204548A07000000081386ACFC00000003078000F80000000800000008138670FA04548A07000000060000000700000002000000001386710000000000045489FB1386ACFA0000000204548A070000000600000007000000070000000400000007135D44F905000108135D44FF045489F71386AD00045489FB1386ACFA0000000204548A0700000008000000070000000700000000000000070000000400000007000000010000000312073CFC00000003050000F8135D80F90000000105000108135D44FF045489F71386AD00045489FB0000000900000005000000000000000500000004135D80FF00000004045489F71386AD00045489FB1386ACFA000000020CFD9C070F34D0FC000000050000000300000005000000050000000000000005135D44F90500010800000009000000070000000100000002"
theorem small_5185051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185051_right_root small_5185051_right_fuel small_5185051_right_count small_5185051_right_encoded = true := by
  decide +kernel
theorem small_5185051_right_covered : CoveredBy scale carrier boxes small_5185051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185051_right_root small_5185051_right_fuel small_5185051_right_count small_5185051_right_encoded small_5185051_right_checked

theorem cover_5185051 : CoveredBy scale carrier boxes root_5185051 := by
  apply coveredBy_split_literal root_5185051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185052 small_5185051_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185052
  · exact small_5185051_right_covered
#print axioms cover_5185051

def root_5185045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5185045_left_fuel : Nat := 1
def small_5185045_left_count : Nat := 1
def small_5185045_left_encoded : String := "00000000"
theorem small_5185045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5185045_left_root small_5185045_left_fuel small_5185045_left_count small_5185045_left_encoded = true := by
  decide +kernel
theorem small_5185045_left_covered : CoveredBy scale carrier boxes small_5185045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5185045_left_root small_5185045_left_fuel small_5185045_left_count small_5185045_left_encoded small_5185045_left_checked

theorem cover_5185045 : CoveredBy scale carrier boxes root_5185045 := by
  apply coveredBy_split_literal root_5185045 small_5185045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185051 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5185045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185051
#print axioms cover_5185045

def root_5183159 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183159 : CoveredBy scale carrier boxes root_5183159 := by
  apply coveredBy_split_literal root_5183159 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1941.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5185045 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1941.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5185045
#print axioms cover_5183159

def root_5183154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183154_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183154_right_fuel : Nat := 1
def small_5183154_right_count : Nat := 1
def small_5183154_right_encoded : String := "00000004"
theorem small_5183154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183154_right_root small_5183154_right_fuel small_5183154_right_count small_5183154_right_encoded = true := by
  decide +kernel
theorem small_5183154_right_covered : CoveredBy scale carrier boxes small_5183154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183154_right_root small_5183154_right_fuel small_5183154_right_count small_5183154_right_encoded small_5183154_right_checked

theorem cover_5183154 : CoveredBy scale carrier boxes root_5183154 := by
  apply coveredBy_split_literal root_5183154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183159 small_5183154_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183159
  · exact small_5183154_right_covered
#print axioms cover_5183154

def root_5183153 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183153 : CoveredBy scale carrier boxes root_5183153 := by
  apply coveredBy_split_literal root_5183153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183154 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1944.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1944.covered
#print axioms cover_5183153

def root_5183148 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183148_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183148_right_fuel : Nat := 1
def small_5183148_right_count : Nat := 1
def small_5183148_right_encoded : String := "00000003"
theorem small_5183148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183148_right_root small_5183148_right_fuel small_5183148_right_count small_5183148_right_encoded = true := by
  decide +kernel
theorem small_5183148_right_covered : CoveredBy scale carrier boxes small_5183148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183148_right_root small_5183148_right_fuel small_5183148_right_count small_5183148_right_encoded small_5183148_right_checked

theorem cover_5183148 : CoveredBy scale carrier boxes root_5183148 := by
  apply coveredBy_split_literal root_5183148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183153 small_5183148_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183153
  · exact small_5183148_right_covered
#print axioms cover_5183148

def root_5183147 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183147 : CoveredBy scale carrier boxes root_5183147 := by
  apply coveredBy_split_literal root_5183147 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183148 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1945.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183148
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1945.covered
#print axioms cover_5183147

def root_5183141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183141_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183141_left_fuel : Nat := 1
def small_5183141_left_count : Nat := 1
def small_5183141_left_encoded : String := "00000002"
theorem small_5183141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183141_left_root small_5183141_left_fuel small_5183141_left_count small_5183141_left_encoded = true := by
  decide +kernel
theorem small_5183141_left_covered : CoveredBy scale carrier boxes small_5183141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183141_left_root small_5183141_left_fuel small_5183141_left_count small_5183141_left_encoded small_5183141_left_checked

theorem cover_5183141 : CoveredBy scale carrier boxes root_5183141 := by
  apply coveredBy_split_literal root_5183141 small_5183141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183147 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5183141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183147
#print axioms cover_5183141

def root_5193183 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193183_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193183_right_fuel : Nat := 24
def small_5193183_right_count : Nat := 179
def small_5193183_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F7000000061207010000000000050000F8135D80F900000001050000FA135D80FB00000002050000FC135D81070500010800000006135D80FF000000040000000600000003135D4507000000030500010800000006135D80FF00000004045489F700000006138671000000000000000009135D44FB0000000600000002135D44F9000000060000000100000004115224FF0000000408A912F712073D0008A912FF12073D08050000F8135D80F90000000100000006000000060000000412070108000000040000000A00000000120701000000000008A912FF12073D08050000F8135D80F900000001050000FA135D80FB00000002050000FC135D8107045489F70000000613867100000000000CFD9BFF0F350D080C9A8708000000060F878CFF0000000400000006000000040000000600000003135D450700000003045489F71386AD000CFD9BFF0F350D080000000600000004000000060000000013867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F8128A7CF9000000010000000600000006000000040F878CFF00000004078000F8128A7CF900000001078000FA128A7CFB00000002000000060000000600000006000000040F34D10800000004078000F8128A7CF900000001078000FA0000000A0000000600000006135D44FB050000FC00000006135D4507000000030000000600000002135D44F9050000FA135D80FB00000002050000FC00000006135D450700000003000000060000000600000001000000041207010800000004050000F8135D80F900000001050000FA135D80FB00000002050000FC00000006135D4507000000030000000A135D44FB050000FC00000006135D4507000000030000000A00000002135D44F9050000FA135D80FB00000002050000FC00000006135D450700000003045489F7000000061386710000000000000000060000000600000001"
theorem small_5193183_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5193183_right_root small_5193183_right_fuel small_5193183_right_count small_5193183_right_encoded = true := by
  decide +kernel
theorem small_5193183_right_covered : CoveredBy scale carrier boxes small_5193183_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5193183_right_root small_5193183_right_fuel small_5193183_right_count small_5193183_right_encoded small_5193183_right_checked

theorem cover_5193183 : CoveredBy scale carrier boxes root_5193183 := by
  apply coveredBy_split_literal root_5193183 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1946.root small_5193183_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1946.covered
  · exact small_5193183_right_covered
#print axioms cover_5193183

def root_5193178 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193178_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5193178_right_fuel : Nat := 1
def small_5193178_right_count : Nat := 1
def small_5193178_right_encoded : String := "00000002"
theorem small_5193178_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5193178_right_root small_5193178_right_fuel small_5193178_right_count small_5193178_right_encoded = true := by
  decide +kernel
theorem small_5193178_right_covered : CoveredBy scale carrier boxes small_5193178_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5193178_right_root small_5193178_right_fuel small_5193178_right_count small_5193178_right_encoded small_5193178_right_checked

theorem cover_5193178 : CoveredBy scale carrier boxes root_5193178 := by
  apply coveredBy_split_literal root_5193178 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5193183 small_5193178_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5193183
  · exact small_5193178_right_covered
#print axioms cover_5193178

def root_5183140 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5183140 : CoveredBy scale carrier boxes root_5183140 := by
  apply coveredBy_split_literal root_5183140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5193178 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5193178
#print axioms cover_5183140

def root_5183135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183135_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5183135_right_fuel : Nat := 1
def small_5183135_right_count : Nat := 1
def small_5183135_right_encoded : String := "00000001"
theorem small_5183135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5183135_right_root small_5183135_right_fuel small_5183135_right_count small_5183135_right_encoded = true := by
  decide +kernel
theorem small_5183135_right_covered : CoveredBy scale carrier boxes small_5183135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5183135_right_root small_5183135_right_fuel small_5183135_right_count small_5183135_right_encoded small_5183135_right_checked

theorem cover_5183135 : CoveredBy scale carrier boxes root_5183135 := by
  apply coveredBy_split_literal root_5183135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183140 small_5183135_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183140
  · exact small_5183135_right_covered
#print axioms cover_5183135

def root_5162191 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162191 : CoveredBy scale carrier boxes root_5162191 := by
  apply coveredBy_split_literal root_5162191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5183135 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162192
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5183135
#print axioms cover_5162191

def root_5162185 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5162185_left_fuel : Nat := 1
def small_5162185_left_count : Nat := 1
def small_5162185_left_encoded : String := "00000000"
theorem small_5162185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5162185_left_root small_5162185_left_fuel small_5162185_left_count small_5162185_left_encoded = true := by
  decide +kernel
theorem small_5162185_left_covered : CoveredBy scale carrier boxes small_5162185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5162185_left_root small_5162185_left_fuel small_5162185_left_count small_5162185_left_encoded small_5162185_left_checked

theorem cover_5162185 : CoveredBy scale carrier boxes root_5162185 := by
  apply coveredBy_split_literal root_5162185 small_5162185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162191 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162191
#print axioms cover_5162185

def root_5159597 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5159597 : CoveredBy scale carrier boxes root_5159597 := by
  apply coveredBy_split_literal root_5159597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1932.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5162185 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1932.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5162185
#print axioms cover_5159597

def root_5159596 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5159596 : CoveredBy scale carrier boxes root_5159596 := by
  apply coveredBy_split_literal root_5159596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5159597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1947.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5159597
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1947.covered
#print axioms cover_5159596

def root_5136704 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5136704 : CoveredBy scale carrier boxes root_5136704 := by
  apply coveredBy_split_literal root_5136704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5136705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5159596 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5136705
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5159596
#print axioms cover_5136704

def root_5076042 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076042 : CoveredBy scale carrier boxes root_5076042 := by
  apply coveredBy_split_literal root_5076042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.root_5076043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5136704 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0127.cover_5076043
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5136704
#print axioms cover_5076042

def root_5197648 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197648 : CoveredBy scale carrier boxes root_5197648 := by
  apply coveredBy_split_literal root_5197648 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1948.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1949.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1948.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1949.covered
#print axioms cover_5197648

def root_5209865 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209865_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209865_left_fuel : Nat := 23
def small_5209865_left_count : Nat := 421
def small_5209865_left_encoded : String := "13E20100067ECE8912EA58FE0B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010613A510FD033F67B713BC3100000000080000000013BBF500000000000569AC491340D4FE0000000700000004134110FE000000040BF3E578100928F9000000010BF3E57A0000000600000007000000080000000313A54CFD00000003033F67B70000000713BBF500000000000569AC4900000007134110FE0000000400000007108010FB03C0010613A510FD033F67B70000000713BBF500000000000569AC4900000007134110FE000000040BF3E578000000071008ECF90AA6A27A10EDACFB000000020000000810ED70FB03200106000000080000000700000002000000010000000313A54CFD000000030000000700000002108010F90B4D43FA10804CFB0000000203C001060000000813A54CFD00000003033F67B70000000813BBF500000000000569AC490000000800000009108010FB03C0010613A510FD033F67B70000000513BBF500000000000569AC4900000005000000080000000313A54CFD00000003033F67B70000000513BBF500000000000569AC4900000005134110FE000000040AA6A27810EDACF9000000010AA6A27A10EDACFB000000020460010600000008000000070000000710ED70F90AA6A27A0000000810ED70FB046001060000000800000005000000020000000100000002000000010000000412EA94FE000000040B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010613A510FD033F67B713BC31000793F0C90000000812825CFE000000040BF3E578100928F9000000010BF3E57A100928FB00000002000000050000000A000000080000000013BBF500000000000793F0C9128220FE0BF3E578100928F9000000010BF3E57A100928FB00000002000000051008ECFB032001060000000813C144FD0000000302B4D6970000000700000005000000020000000800000004000000050000000313A54CFD00000003033F67B713BC31000793F0C900000007000000090000000013BBF500000000000793F0C9128220FE0BF3E578100928F9000000010BF3E57A100928FB0000000200000005000000071008ECF90BF3E57A000000091008ECFB0000000900000002000000010000000400000005108010FB03C0010613A510FD033F67B713BC31000793F0C9128220FE0BF3E578000000071008ECF90000000800000001000000040000000A0000000013BBF500000000000793F0C9128220FE0BF3E578100928F9000000010AA6A27A10EDACFB000000020000000A0000000A1008ECF90AA6A27A10EDACFB00000002032001060000000813C144FD0000000302B4D697000000080000000A0000000A00000001000000040000000A0000000313A54CFD00000003033F67B713BC31000793F0C90000000712825CFE000000040BF3E578000000071008ECF90AA6A27A000000090000000A000000010000000013BBF500000000000793F0C9128220FE0BF3E578000000071008ECF90AA6A27A10EDACFB00000002046001061383DCFD02B4D6970000000713D0D1000000000007095FA90000000700000005000000030000000710ED70FB046001060000000A0000000700000002000000010000000412825CFE000000040BF3E578100928F900000001000000051008ECF90AA6A27A10EDACFB000000020460010600000005138418FD00000003000000050000000A0000000100000002108010F90B4D43FA10804CFB0000000203C001060000000813A54CFD00000003033F67B70000000913BBF500000000000793F0C9128220FE000000090000000400000009108010FB03C0010613A510FD033F67B70000000813BBF500000000000793F0C9000000080000000A0000000313A54CFD00000003033F67B713BC31000793F0C9128220FE0AA6A27810EDACF9000000010AA6A27A0000000900000007000000080000000412825CFE000000040AA6A27800000009000000060000000013BBF500000000000793F0C9128220FE0AA6A27810EDACF9000000010AA6A27A10EDACFB0000000204600106000000080000000910ED70FB046001061383DCFD0000000A00000003138418FD0000000302B4D6970000000713D0D1000000000007095FA900000007000000090000000210ED70F90AA6A27A10EDACFB000000020000000810ED70FB04600106000000060000000900000002000000010000000412825CFE000000040AA6A27810EDACF9000000010AA6A27A10EDACFB00000002046001060000000A000000090000000A10ED70F90AA6A27A000000090000000600000001000000020000000100000000"
theorem small_5209865_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209865_left_root small_5209865_left_fuel small_5209865_left_count small_5209865_left_encoded = true := by
  decide +kernel
theorem small_5209865_left_covered : CoveredBy scale carrier boxes small_5209865_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209865_left_root small_5209865_left_fuel small_5209865_left_count small_5209865_left_encoded small_5209865_left_checked

theorem cover_5209865 : CoveredBy scale carrier boxes root_5209865 := by
  apply coveredBy_split_literal root_5209865 small_5209865_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1952.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_5209865_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1952.covered
#print axioms cover_5209865

def root_5209859 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209859_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209859_left_fuel : Nat := 1
def small_5209859_left_count : Nat := 1
def small_5209859_left_encoded : String := "00000003"
theorem small_5209859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209859_left_root small_5209859_left_fuel small_5209859_left_count small_5209859_left_encoded = true := by
  decide +kernel
theorem small_5209859_left_covered : CoveredBy scale carrier boxes small_5209859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209859_left_root small_5209859_left_fuel small_5209859_left_count small_5209859_left_encoded small_5209859_left_checked

theorem cover_5209859 : CoveredBy scale carrier boxes root_5209859 := by
  apply coveredBy_split_literal root_5209859 small_5209859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209865 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5209859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209865
#print axioms cover_5209859

def root_5209413 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209413_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209413_left_fuel : Nat := 21
def small_5209413_left_count : Nat := 213
def small_5209413_left_encoded : String := "13D7B0FD022A457713E20100067ECE8912EA58FE0B4D43F810804CF9000000010B4D43FA10804CFB0000000200000008108010FB014001060000000813F614FD00000003033F67B70000000813BBF500000000000569AC4900000008134110FE000000040BF3E5780000000A0000000800000002000000080000000412EA94FE000000040B4D43F810804CF9000000010B4D43FA10804CFB0000000200000008108010FB014001060000000813F614FD00000003033F67B70000000A0000000A00000002000000080000000013E1C50000000000067ECE8912EA58FE0B4D43F810804CF9000000010B4D43FA10804CFB00000002014001060000000813F614FD000000030115233713F895000569AC4900000006134110FE00000004000000080000000000000006108010FB0140010613F5D8FD0115233713F895000569AC49000000080000000A0000000013F85900000000000569AC49000000090000000A0000000313F614FD000000030115233713F895000569AC491340D4FE0BF3E578100928F900000001000000061008ECF9000000080000000100000004134110FE000000040BF3E578100928F9000000010AA6A27A10EDACFB0000000201E0010600000006000000060000000A1008ECF90AA6A27A000000080000000A000000010000000013F85900000000000569AC491340D4FE0BF3E578000000061008ECF9000000060000000100000004134110FE000000040BF3E578100928F9000000010AA6A27A00000006000000091008ECF90AA6A27A10EDACFB0000000201E0010600000006000000060000000A0000000100000002108010F90B4D43FA10804CFB0000000200000008108010FB014001060000000813F614FD00000003011523370000000813F85900000000000569AC4900000008134110FE000000040000000800000002000000010000000412EA94FE000000040B4D43F810804CF9000000010B4D43FA10804CFB0000000200000005108010FB014001060000000A13F614FD00000003011523370000000A0000000500000002108010F90B4D43FA10804CFB0000000200000008108010FB014001060000000813F614FD00000003011523370000000813F85900000000000793F0C9128220FE0AA6A2780000000A000000070000000400000005000000020000000100000003"
theorem small_5209413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209413_left_root small_5209413_left_fuel small_5209413_left_count small_5209413_left_encoded = true := by
  decide +kernel
theorem small_5209413_left_covered : CoveredBy scale carrier boxes small_5209413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209413_left_root small_5209413_left_fuel small_5209413_left_count small_5209413_left_encoded small_5209413_left_checked

theorem cover_5209413 : CoveredBy scale carrier boxes root_5209413 := by
  apply coveredBy_split_literal root_5209413 small_5209413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209859 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5209413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209859
#print axioms cover_5209413

def root_5209408 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209408_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209408_right_fuel : Nat := 1
def small_5209408_right_count : Nat := 1
def small_5209408_right_encoded : String := "00000002"
theorem small_5209408_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209408_right_root small_5209408_right_fuel small_5209408_right_count small_5209408_right_encoded = true := by
  decide +kernel
theorem small_5209408_right_covered : CoveredBy scale carrier boxes small_5209408_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209408_right_root small_5209408_right_fuel small_5209408_right_count small_5209408_right_encoded small_5209408_right_checked

theorem cover_5209408 : CoveredBy scale carrier boxes root_5209408 := by
  apply coveredBy_split_literal root_5209408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209413 small_5209408_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209413
  · exact small_5209408_right_covered
#print axioms cover_5209408

def root_5209158 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209158_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209158_left_fuel : Nat := 17
def small_5209158_left_count : Nat := 117
def small_5209158_left_encoded : String := "0F878CFB000000020280010613D7B0FD022A457713E20100000000080000000013E1C50000000000067ECE8912EA58FE0B4D43F810804CF90000000100000006000000080000000412EA94FE000000040B4D43F810804CF90000000100000005000000050000000313D7ECFD00000003022A457713E20100067ECE8912EA58FE0B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000060E5FD8FB03C001060000000813A54CFD00000003033F67B70000000713BBF500000000000000000600000002000000080000000412EA94FE000000040B4D43F810804CF9000000010DE7C9FA0E6014FB00000002000000050E5FD8FB03C0010613A510FD033F67B700000008000000050000000313A54CFD00000003033F67B7000000090000000500000002108010F90DE7C9FA000000090E5FD8FB03C00106000000080000000900000002000000010000000013E1C50000000000067ECE8912EA58FE0B4D43F810804CF9000000010DE7C9FA000000060E5FD8FB0000000600000002108010F90DE7C9FA0E6014FB00000002000000060E5FD8FB03C001060000000813A54CFD00000003011523370000000813F85900000000000569AC49000000060000000500000002000000010000000400000005"
theorem small_5209158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209158_left_root small_5209158_left_fuel small_5209158_left_count small_5209158_left_encoded = true := by
  decide +kernel
theorem small_5209158_left_covered : CoveredBy scale carrier boxes small_5209158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209158_left_root small_5209158_left_fuel small_5209158_left_count small_5209158_left_encoded small_5209158_left_checked

theorem cover_5209158 : CoveredBy scale carrier boxes root_5209158 := by
  apply coveredBy_split_literal root_5209158 small_5209158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209408 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5209158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209408
#print axioms cover_5209158

def root_5209153 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209153_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5209153_right_fuel : Nat := 1
def small_5209153_right_count : Nat := 1
def small_5209153_right_encoded : String := "00000001"
theorem small_5209153_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5209153_right_root small_5209153_right_fuel small_5209153_right_count small_5209153_right_encoded = true := by
  decide +kernel
theorem small_5209153_right_covered : CoveredBy scale carrier boxes small_5209153_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5209153_right_root small_5209153_right_fuel small_5209153_right_count small_5209153_right_encoded small_5209153_right_checked

theorem cover_5209153 : CoveredBy scale carrier boxes root_5209153 := by
  apply coveredBy_split_literal root_5209153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209158 small_5209153_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209158
  · exact small_5209153_right_covered
#print axioms cover_5209153

def root_5208395 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5208395_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5208395_left_fuel : Nat := 23
def small_5208395_left_count : Nat := 361
def small_5208395_left_encoded : String := "0F878CF9000000010C9A86FA0F878CFB000000020280010613D7B0FD022A457713E20100067ECE8912EA58FE000000060000000412EA94FE000000040DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FA0E6014FB00000002000000050E5FD8FB014001060000000813F614FD00000003033F67B713BC31000793F0C90000000600000005000000000000000500000002000000010000000013E1C50000000000067ECE8900000006000000050000000313D7ECFD00000003022A457713E20100067ECE8912EA58FE0DE7C9F8000000060E5FD8F900000006000000010000000412EA94FE000000040DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FA0E6014FB000000020000000500000005000000010000000013E1C50000000000067ECE8900000006000000050F8750FB0280010613D7B0FD022A457713E20100067ECE8912EA58FE0DE7C9F80E6014F9000000010B4D43FA00000006000000070E5FD8F90B4D43FA10804CFB000000020140010613F5D8FD000000060000000313F614FD00000003033F67B70000000700000006108010FB0140010613F5D8FD033F67B713BC31000569AC49000000070000000A0000000013BBF500000000000569AC49000000060000000A0000000313F614FD00000003033F67B70000000713BBF500000000000569AC4900000006134110FE000000040D412878000000070EFA10F90000000A0000000100000002000000010000000412EA94FE000000040DE7C9F80E6014F9000000010B4D43FA10804CFB000000020140010613F5D8FD033F67B70000000A000000050000000313F614FD00000003033F67B70000000700000005108010FB0000000A000000020E5FD8F90B4D43FA10804CFB000000020140010613F5D8FD033F67B70000000813BBF500000000000000000A0000000313F614FD00000003033F67B713BC31000793F0C9128220FE0D412878000000070000000800000004000000050000000000000005108010FB0000000A00000002000000010000000013E1C50000000000067ECE8912EA58FE0DE7C9F80E6014F900000001000000060E5FD8F90B4D43FA00000006108010FB0140010613F5D8FD0115233713F895000569AC49000000060000000A00000000000000060000000313F614FD000000030115233713F895000569AC4900000006134110FE000000040D412878000000060EFA10F90AA6A27A000000060000000A00000001000000000000000600000002000000010000000412EA94FE000000040DE7C9F80E6014F90000000100000005000000050000000313D7ECFD00000003022A457713E20100067ECE8912EA58FE0DE7C9F8000000070E5FD8F90B4D43FA10804CFB000000020000000700000007000000010000000412EA94FE000000040DE7C9F80E6014F9000000010B4D43FA10804CFB0000000200000005000000070E5FD8F90B4D43FA10804CFB0000000203C0010613A510FD033F67B713BC31000793F0C9000000070000000500000000000000050000000313A54CFD00000003033F67B70000000700000005108010FB03C0010613A510FD033F67B713BC31000793F0C9000000070000000A0000000013BBF500000000000793F0C9128220FE0D412878000000070EFA10F90000000A0000000100000004000000050000000313A54CFD00000003033F67B70000000713BBF500000000000793F0C9000000070000000500000002000000010000000013E1C50000000000067ECE8912EA58FE0DE7C9F80E6014F900000001000000060E5FD8F90B4D43FA10804CFB0000000200000006108010FB03C0010613A510FD0115233713F895000569AC4900000006134110FE000000040D412878000000060EFA10F90AA6A27A00000006000000070000000100000000000000060000000313A54CFD00000003011523370000000713F85900000000000569AC4900000006000000050000000200000001000000040000000500000002"
theorem small_5208395_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5208395_left_root small_5208395_left_fuel small_5208395_left_count small_5208395_left_encoded = true := by
  decide +kernel
theorem small_5208395_left_covered : CoveredBy scale carrier boxes small_5208395_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5208395_left_root small_5208395_left_fuel small_5208395_left_count small_5208395_left_encoded small_5208395_left_checked

theorem cover_5208395 : CoveredBy scale carrier boxes root_5208395 := by
  apply coveredBy_split_literal root_5208395 small_5208395_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5209153 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5208395_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5209153
#print axioms cover_5208395

def root_5208389 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5208389_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5208389_left_fuel : Nat := 1
def small_5208389_left_count : Nat := 1
def small_5208389_left_encoded : String := "00000004"
theorem small_5208389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5208389_left_root small_5208389_left_fuel small_5208389_left_count small_5208389_left_encoded = true := by
  decide +kernel
theorem small_5208389_left_covered : CoveredBy scale carrier boxes small_5208389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5208389_left_root small_5208389_left_fuel small_5208389_left_count small_5208389_left_encoded small_5208389_left_checked

theorem cover_5208389 : CoveredBy scale carrier boxes root_5208389 := by
  apply coveredBy_split_literal root_5208389 small_5208389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5208395 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5208389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5208395
#print axioms cover_5208389

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128
