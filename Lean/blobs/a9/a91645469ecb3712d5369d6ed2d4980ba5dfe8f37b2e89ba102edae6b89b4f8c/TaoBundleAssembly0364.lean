import TaoBundleAssembly0363
import TaoBundleChunkBatch0484
import TaoBundleChunkBatch0485
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364
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
  apply coveredBy_split_literal root_5165207 small_5165207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0363.root_5165705 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5165207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0363.cover_5165705
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
  apply coveredBy_split_literal root_5165201 small_5165201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165207 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5165201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165207
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
  apply coveredBy_split_literal root_5165200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165201 small_5165200_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165201
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
  apply coveredBy_split_literal root_5165194 small_5165194_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165200 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5165194_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165200
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
  apply coveredBy_split_literal root_5165193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165194 small_5165193_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165194
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
  apply coveredBy_split_literal root_5165187 small_5165187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165193 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5165187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165193
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
  apply coveredBy_split_literal root_5164379 small_5164379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5165187 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5164379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5165187
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
  apply coveredBy_split_literal root_5164374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164379 small_5164374_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164379
  · exact small_5164374_right_covered
#print axioms cover_5164374

def root_5164373 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5164373 : CoveredBy scale carrier boxes root_5164373 := by
  apply coveredBy_split_literal root_5164373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164374 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1935.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164374
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
  apply coveredBy_split_literal root_5164368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164373 small_5164368_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164373
  · exact small_5164368_right_covered
#print axioms cover_5164368

def root_5164367 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5164367 : CoveredBy scale carrier boxes root_5164367 := by
  apply coveredBy_split_literal root_5164367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164368 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1936.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164368
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
  apply coveredBy_split_literal root_5164361 small_5164361_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164367 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5164361_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164367
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
  apply coveredBy_split_literal root_5164360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164361 small_5164360_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164361
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
  apply coveredBy_split_literal root_5164354 small_5164354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164360 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5164354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164360
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
  apply coveredBy_split_literal root_5164353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164354 small_5164353_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164354
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
  apply coveredBy_split_literal root_5164347 small_5164347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164353 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5164347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164353
#print axioms cover_5164347

def root_5162217 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162217 : CoveredBy scale carrier boxes root_5162217 := by
  apply coveredBy_split_literal root_5162217 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1933.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5164347 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1933.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5164347
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
  apply coveredBy_split_literal root_5162212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162217 small_5162212_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162217
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
  apply coveredBy_split_literal root_5162211 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162212 small_5162211_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162212
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
  apply coveredBy_split_literal root_5162206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162211 small_5162206_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162211
  · exact small_5162206_right_covered
#print axioms cover_5162206

def root_5162205 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5162205 : CoveredBy scale carrier boxes root_5162205 := by
  apply coveredBy_split_literal root_5162205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1937.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162206
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
  apply coveredBy_split_literal root_5162199 small_5162199_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5162205 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5162199_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5162205
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
  apply coveredBy_split_literal root_5177928 small_5177928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5177934 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5177928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5177934
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
  apply coveredBy_split_literal root_5177927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5177928 small_5177927_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5177928
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
  apply coveredBy_split_literal root_5177921 small_5177921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.root_5177927 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5177921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364.cover_5177927
#print axioms cover_5177921

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0364
