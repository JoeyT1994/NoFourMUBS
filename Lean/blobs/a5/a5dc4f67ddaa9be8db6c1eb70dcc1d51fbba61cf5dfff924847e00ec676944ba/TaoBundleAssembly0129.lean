import TaoBundleAssembly0128
import TaoBundleChunkBatch0488
import TaoBundleChunkBatch0489
import TaoBundleChunkBatch0490
import TaoBundleChunkBatch0491
import TaoBundleChunkBatch0492
import TaoBundleChunkBatch0493
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129
def root_5207905 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207905_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207905_left_fuel : Nat := 28
def small_5207905_left_count : Nat := 227
def small_5207905_left_encoded : String := "138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB0280010613D7B0FD022A457713E20100022A45890000000613E200FE000000040DE7C9F8000000060E5FD8F90B4D43FA00000006000000070000000100000000000000060000000313D7ECFD00000003022A45770000000713E1C5000000000000000006000000020F8750F90C9A86FA0F878CFB000000020280010613D7B0FD022A457700000008000000060000000313D7ECFD00000003022A457713E20100022A45890000000613E200FE000000040B4D43F800000006000000080000000013E1C50000000000000000060F8750FB0280010613D7B0FD022A457713E20100022A45890000000513E200FE000000040B4D43F810804CF9000000010B4D43FA00000008108010FB0000000500000002000000080000000013E1C50000000000022A45890000000613E200FE000000040B4D43F810804CF9000000010B4D43FA00000006108010FB01400106000000060000000600000002108010F90B4D43FA00000008108010FB014001060000000813F614FD00000003011523370000000513F8590000000000033F67C9000000050000000800000002000000010000000313D7ECFD00000003022A457713E20100022A45890000000513E200FE000000040B4D43F810804CF90000000100000007108010F900000005000000010000000013E1C50000000000022A458913E1C4FE0B4D43F800000006108010F900000005000000010000000413E200FE000000040B4D43F810804CF9000000010B4D43FA00000006108010FB03C0010613A510FD000000060000000313A54CFD000000030000000700000002108010F90B4D43FA10804CFB0000000203C0010613A510FD000000060000000313A54CFD000000030115233713F89500033F67C90000000513BC30FE000000040AA6A27800000006000000080000000000000006108010FB03C0010613A510FD011523370000000513F8590000000000033F67C90000000513BC30FE000000040AA6A27810EDACF9000000010000000610ED70F900000008000000010000000313A54CFD00000003011523370000000513F8590000000000033F67C90000000513BC30FE000000040AA6A27810EDACF9000000010000000610ED70F90AA6A27A10EDACFB000000020000000610ED70FB046001061383DCFD00000005000000030000000500000002000000010000000200000001000000020000000100000004"
theorem small_5207905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207905_left_root small_5207905_left_fuel small_5207905_left_count small_5207905_left_encoded = true := by
  decide +kernel
theorem small_5207905_left_covered : CoveredBy scale carrier boxes small_5207905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207905_left_root small_5207905_left_fuel small_5207905_left_count small_5207905_left_encoded small_5207905_left_checked

theorem cover_5207905 : CoveredBy scale carrier boxes root_5207905 := by
  apply coveredBy_split_literal root_5207905 small_5207905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5208389 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5207905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5208389
#print axioms cover_5207905

def root_5207899 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207899_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207899_left_fuel : Nat := 1
def small_5207899_left_count : Nat := 1
def small_5207899_left_encoded : String := "00000002"
theorem small_5207899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207899_left_root small_5207899_left_fuel small_5207899_left_count small_5207899_left_encoded = true := by
  decide +kernel
theorem small_5207899_left_covered : CoveredBy scale carrier boxes small_5207899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207899_left_root small_5207899_left_fuel small_5207899_left_count small_5207899_left_encoded small_5207899_left_checked

theorem cover_5207899 : CoveredBy scale carrier boxes root_5207899 := by
  apply coveredBy_split_literal root_5207899 small_5207899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207905 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5207899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207905
#print axioms cover_5207899

def root_5207898 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207898_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207898_right_fuel : Nat := 13
def small_5207898_right_count : Nat := 29
def small_5207898_right_encoded : String := "0F34D0FA04548A09000000061386ACFE000000040C9A86F80F878CF9000000010280010600000006000000060F8750F9028001060000000813D7ECFD00000003022A457713E201000AD3577B10D13CFA00000002067ECE8900000008000000050000000500000000000000050000000100000002"
theorem small_5207898_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207898_right_root small_5207898_right_fuel small_5207898_right_count small_5207898_right_encoded = true := by
  decide +kernel
theorem small_5207898_right_covered : CoveredBy scale carrier boxes small_5207898_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207898_right_root small_5207898_right_fuel small_5207898_right_count small_5207898_right_encoded small_5207898_right_checked

theorem cover_5207898 : CoveredBy scale carrier boxes root_5207898 := by
  apply coveredBy_split_literal root_5207898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207899 small_5207898_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207899
  · exact small_5207898_right_covered
#print axioms cover_5207898

def root_5207892 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207892_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207892_left_fuel : Nat := 1
def small_5207892_left_count : Nat := 1
def small_5207892_left_encoded : String := "00000001"
theorem small_5207892_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207892_left_root small_5207892_left_fuel small_5207892_left_count small_5207892_left_encoded = true := by
  decide +kernel
theorem small_5207892_left_covered : CoveredBy scale carrier boxes small_5207892_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207892_left_root small_5207892_left_fuel small_5207892_left_count small_5207892_left_encoded small_5207892_left_checked

theorem cover_5207892 : CoveredBy scale carrier boxes root_5207892 := by
  apply coveredBy_split_literal root_5207892 small_5207892_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207898 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5207892_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207898
#print axioms cover_5207892

def root_5207891 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207891_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207891_right_fuel : Nat := 16
def small_5207891_right_count : Nat := 51
def small_5207891_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA0000000204548A09000000061386ACFE000000040C9A86FA0F878CFB000000020280010600000006000000060F8750FB0280010613D7B0FD022A457713E201000AD3577910D13CF800000001067ECE890000000612EA94FE000000040000000510D100F800000006000000010000000013E1C500000000000AD3577910D13CF800000001067ECE890000000600000005000000050000000313D7ECFD00000003022A45770000000700000005000000020F34D0FA000000060000000200000001"
theorem small_5207891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207891_right_root small_5207891_right_fuel small_5207891_right_count small_5207891_right_encoded = true := by
  decide +kernel
theorem small_5207891_right_covered : CoveredBy scale carrier boxes small_5207891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207891_right_root small_5207891_right_fuel small_5207891_right_count small_5207891_right_encoded small_5207891_right_checked

theorem cover_5207891 : CoveredBy scale carrier boxes root_5207891 := by
  apply coveredBy_split_literal root_5207891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207892 small_5207891_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207892
  · exact small_5207891_right_covered
#print axioms cover_5207891

def root_5207885 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207885_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207885_left_fuel : Nat := 1
def small_5207885_left_count : Nat := 1
def small_5207885_left_encoded : String := "00000000"
theorem small_5207885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207885_left_root small_5207885_left_fuel small_5207885_left_count small_5207885_left_encoded = true := by
  decide +kernel
theorem small_5207885_left_covered : CoveredBy scale carrier boxes small_5207885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207885_left_root small_5207885_left_fuel small_5207885_left_count small_5207885_left_encoded small_5207885_left_checked

theorem cover_5207885 : CoveredBy scale carrier boxes root_5207885 := by
  apply coveredBy_split_literal root_5207885 small_5207885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207891 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5207885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207891
#print axioms cover_5207885

def root_5207099 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207099_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207099_left_fuel : Nat := 27
def small_5207099_left_count : Nat := 373
def small_5207099_left_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A09138670FE0C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000007000000070F8750F90C9A86FA0F878CFB00000002000000080F8750FB000000050000000200000001000000041386ACFE000000040C9A86F80F878CF9000000010C9A86FA0F878CFB000000020280010613D7B0FD067ECE7712EA9500067ECE890000000712EA94FE000000040DE7C9F800000007000000080000000012EA590000000000067ECE8912EA58FE0DE7C9F800000007000000080000000412EA94FE000000040DE7C9F80E6014F9000000010DE7C9FA0E6014FB00000002000000060E5FD8FB0140010613F5D8FD0569AC37000000071340D50000000000000000060000000300000007000000020E5FD8F900000008000000010000000313D7ECFD00000003067ECE770000000712EA590000000000067ECE890000000712EA94FE000000040DE7C9F8000000070E5FD8F90DE7C9FA000000090E5FD8FB0000000700000002000000010F8750FB0280010613D7B0FD067ECE7712EA9500067ECE890000000712EA94FE000000040DE7C9F8000000070E5FD8F900000008000000010000000012EA590000000000067ECE8912EA58FE0DE7C9F8000000070E5FD8F90B4D43FA10804CFB000000020000000700000007000000010000000412EA94FE000000040DE7C9F80E6014F9000000010B4D43FA10804CFB00000002014001060000000A00000007000000070E5FD8F90B4D43FA10804CFB00000002014001060000000813F614FD000000030569AC37000000071340D500000000000793F0C9000000070000000A0000000A000000010000000313D7ECFD00000003067ECE770000000712EA590000000000067ECE890000000712EA94FE000000040DE7C9F8000000070E5FD8F90B4D43FA10804CFB00000002000000070000000700000001000000020F8750F90C9A86FA0F878CFB00000002028001060000000813D7ECFD00000003067ECE770000000912EA590000000000067ECE890000000812EA94FE000000040B4D43F800000009000000080F8750FB0280010613D7B0FD067ECE770000000812EA590000000000067ECE890000000812EA94FE00000004000000080000000313D7ECFD00000003067ECE7712EA9500067ECE890000000512EA94FE000000040B4D43F810804CF9000000010B4D43FA0000000900000007000000080000000012EA590000000000067ECE8912EA58FE0B4D43F810804CF9000000010B4D43FA10804CFB000000020000000700000007108010F900000005000000010000000412EA94FE000000040B4D43F810804CF9000000010B4D43FA10804CFB0000000203C0010613A510FD000000080000000300000009108010FB03C0010613A510FD0569AC37000000071340D500000000000793F0C9000000070000000A0000000313A54CFD000000030569AC37000000071340D500000000000000000700000002108010F90B4D43FA10804CFB0000000200000008108010FB03C001060000000813A54CFD000000030569AC37000000051340D5000000000000000009000000020000000100000002000000010F34D0FA04548A09138670FE0C9A86F80F878CF9000000010000000600000008000000041386ACFE000000040C9A86F80F878CF9000000010280010613D7B0FD067ECE7712EA9500000000080000000012EA5900000000000AD3577B00000006000000060000000313D7ECFD00000003067ECE770000000912EA5900000000000AD3577B10D13CFA00000002067ECE890000000600000009000000060F8750F902800106000000080000000900000001000000020F34D0F80CFD9BFB0F350CFA0000000204548A09000000071386ACFE000000040C9A86FA0F878CFB000000020280010613D7B0FD067ECE770000000712EA5900000000000AD35779000000060000000600000003000000070F8750FB00000007000000020F34D0FA04548A09000000061386ACFE00000004028001060000000600000006000000020000000100000000"
theorem small_5207099_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207099_left_root small_5207099_left_fuel small_5207099_left_count small_5207099_left_encoded = true := by
  decide +kernel
theorem small_5207099_left_covered : CoveredBy scale carrier boxes small_5207099_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207099_left_root small_5207099_left_fuel small_5207099_left_count small_5207099_left_encoded small_5207099_left_checked

theorem cover_5207099 : CoveredBy scale carrier boxes root_5207099 := by
  apply coveredBy_split_literal root_5207099 small_5207099_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207885 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5207099_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207885
#print axioms cover_5207099

def root_5207094 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207094_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207094_right_fuel : Nat := 1
def small_5207094_right_count : Nat := 1
def small_5207094_right_encoded : String := "00000003"
theorem small_5207094_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207094_right_root small_5207094_right_fuel small_5207094_right_count small_5207094_right_encoded = true := by
  decide +kernel
theorem small_5207094_right_covered : CoveredBy scale carrier boxes small_5207094_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207094_right_root small_5207094_right_fuel small_5207094_right_count small_5207094_right_encoded small_5207094_right_checked

theorem cover_5207094 : CoveredBy scale carrier boxes root_5207094 := by
  apply coveredBy_split_literal root_5207094 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207099 small_5207094_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207099
  · exact small_5207094_right_covered
#print axioms cover_5207094

def root_5207093 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5207093 : CoveredBy scale carrier boxes root_5207093 := by
  apply coveredBy_split_literal root_5207093 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207094 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1953.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207094
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1953.covered
#print axioms cover_5207093

def root_5207088 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207088_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207088_right_fuel : Nat := 1
def small_5207088_right_count : Nat := 1
def small_5207088_right_encoded : String := "00000004"
theorem small_5207088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207088_right_root small_5207088_right_fuel small_5207088_right_count small_5207088_right_encoded = true := by
  decide +kernel
theorem small_5207088_right_covered : CoveredBy scale carrier boxes small_5207088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207088_right_root small_5207088_right_fuel small_5207088_right_count small_5207088_right_encoded small_5207088_right_checked

theorem cover_5207088 : CoveredBy scale carrier boxes root_5207088 := by
  apply coveredBy_split_literal root_5207088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207093 small_5207088_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207093
  · exact small_5207088_right_covered
#print axioms cover_5207088

def root_5207087 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5207087 : CoveredBy scale carrier boxes root_5207087 := by
  apply coveredBy_split_literal root_5207087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207088 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1954.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207088
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1954.covered
#print axioms cover_5207087

def root_5207081 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207081_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207081_left_fuel : Nat := 1
def small_5207081_left_count : Nat := 1
def small_5207081_left_encoded : String := "00000002"
theorem small_5207081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207081_left_root small_5207081_left_fuel small_5207081_left_count small_5207081_left_encoded = true := by
  decide +kernel
theorem small_5207081_left_covered : CoveredBy scale carrier boxes small_5207081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207081_left_root small_5207081_left_fuel small_5207081_left_count small_5207081_left_encoded small_5207081_left_checked

theorem cover_5207081 : CoveredBy scale carrier boxes root_5207081 := by
  apply coveredBy_split_literal root_5207081 small_5207081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207087 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5207081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207087
#print axioms cover_5207081

def root_5207080 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207080_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207080_right_fuel : Nat := 15
def small_5207080_right_count : Nat := 71
def small_5207080_right_encoded : String := "120700FA08A91309120700FE05000106135D44FD045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A09000000061386ACFE000000040C9A86F8000000090000000800000006000000060000000013867100000000000CFD9BF9000000060000000600000003135D80FD00000003045489F71386AD000CFD9BF90F350CF800000001000000090F34D0F800000006000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A09000000060000000500000005000000050000000412073CFE0000000405000106135D44FD045489F71386AD000CFD9BF90F350CF80000000100000005000000050000000000000005000000030000000500000002"
theorem small_5207080_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207080_right_root small_5207080_right_fuel small_5207080_right_count small_5207080_right_encoded = true := by
  decide +kernel
theorem small_5207080_right_covered : CoveredBy scale carrier boxes small_5207080_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207080_right_root small_5207080_right_fuel small_5207080_right_count small_5207080_right_encoded small_5207080_right_checked

theorem cover_5207080 : CoveredBy scale carrier boxes root_5207080 := by
  apply coveredBy_split_literal root_5207080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207081 small_5207080_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207081
  · exact small_5207080_right_covered
#print axioms cover_5207080

def root_5207074 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207074_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207074_left_fuel : Nat := 1
def small_5207074_left_count : Nat := 1
def small_5207074_left_encoded : String := "00000001"
theorem small_5207074_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207074_left_root small_5207074_left_fuel small_5207074_left_count small_5207074_left_encoded = true := by
  decide +kernel
theorem small_5207074_left_covered : CoveredBy scale carrier boxes small_5207074_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207074_left_root small_5207074_left_fuel small_5207074_left_count small_5207074_left_encoded small_5207074_left_checked

theorem cover_5207074 : CoveredBy scale carrier boxes root_5207074 := by
  apply coveredBy_split_literal root_5207074 small_5207074_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207080 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5207074_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207080
#print axioms cover_5207074

def root_5207073 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207073_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207073_right_fuel : Nat := 15
def small_5207073_right_count : Nat := 81
def small_5207073_right_encoded : String := "120700F808A912FB12073CFA0000000208A91309120700FE05000106135D44FD045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A0900000006000000070000000600000006000000001386710000000000045489F9000000060000000600000003135D80FD00000003045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000700000007138670F80CFD9BFB000000080000000500000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0000000800000005000000050000000412073CFE0000000405000106135D44FD045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000200000005000000050000000500000000000000050000000300000005120700FA08A9130900000006000000050000000200000001"
theorem small_5207073_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207073_right_root small_5207073_right_fuel small_5207073_right_count small_5207073_right_encoded = true := by
  decide +kernel
theorem small_5207073_right_covered : CoveredBy scale carrier boxes small_5207073_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207073_right_root small_5207073_right_fuel small_5207073_right_count small_5207073_right_encoded small_5207073_right_checked

theorem cover_5207073 : CoveredBy scale carrier boxes root_5207073 := by
  apply coveredBy_split_literal root_5207073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207074 small_5207073_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207074
  · exact small_5207073_right_covered
#print axioms cover_5207073

def root_5207067 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5207067_left_fuel : Nat := 1
def small_5207067_left_count : Nat := 1
def small_5207067_left_encoded : String := "00000000"
theorem small_5207067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5207067_left_root small_5207067_left_fuel small_5207067_left_count small_5207067_left_encoded = true := by
  decide +kernel
theorem small_5207067_left_covered : CoveredBy scale carrier boxes small_5207067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5207067_left_root small_5207067_left_fuel small_5207067_left_count small_5207067_left_encoded small_5207067_left_checked

theorem cover_5207067 : CoveredBy scale carrier boxes root_5207067 := by
  apply coveredBy_split_literal root_5207067 small_5207067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207073 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5207067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207073
#print axioms cover_5207067

def root_5204951 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5204951 : CoveredBy scale carrier boxes root_5204951 := by
  apply coveredBy_split_literal root_5204951 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1951.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5207067 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1951.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5207067
#print axioms cover_5204951

def root_5204946 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204946_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204946_right_fuel : Nat := 1
def small_5204946_right_count : Nat := 1
def small_5204946_right_encoded : String := "00000004"
theorem small_5204946_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204946_right_root small_5204946_right_fuel small_5204946_right_count small_5204946_right_encoded = true := by
  decide +kernel
theorem small_5204946_right_covered : CoveredBy scale carrier boxes small_5204946_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204946_right_root small_5204946_right_fuel small_5204946_right_count small_5204946_right_encoded small_5204946_right_checked

theorem cover_5204946 : CoveredBy scale carrier boxes root_5204946 := by
  apply coveredBy_split_literal root_5204946 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204951 small_5204946_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204951
  · exact small_5204946_right_covered
#print axioms cover_5204946

def root_5204945 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204945_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204945_right_fuel : Nat := 24
def small_5204945_right_count : Nat := 327
def small_5204945_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A912FB12073CFA0000000205000106135D44FD050000FE135D81090CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000200000006000000090F34D0F80CFD9BFB0F350CFA000000020000000A0000000500000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80000000A0F8750F900000006000000010F34D0FA00000005000000020F34D0F8000000050000000100000004135D4509000000040CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000200000006000000090F34D0F80CFD9BFB0000000A0000000500000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A0F34D0FA00000005000000020F34D0F8000000050000000100000003135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF9000000010C9A86FA000000090F8750FB00000006000000020F8750F90000000900000001000000090F34D0F8000000050000000100000004135D4509000000040CFD9BF70F350D000CFD9BF9000000090F34D0F80000000900000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF9000000010C9A86FA000000090000000A0F8750F90C9A86FA000000090000000600000001000000090F34D0F80000000500000001120700FA05000106135D44FD050000FE0000000900000005000000030000000900000002120700F808A912FB12073CFA0000000205000106135D44FD050000FE135D81090CFD9BF70F350D00045489F91386ACF8000000010CFD9BFB0F350CFA000000020000000500000005000000050000000000000005000000040000000500000003135D80FD00000003050000FE00000005135D45090000000400000005000000050000000100000000120701000000000008A912F912073CF80000000108A912FB12073CFA0000000205000106135D44FD050000FE135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80000000A0F8750F90000000A000000010000000500000005000000000000000500000004135D450900000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A0000000500000005000000000000000500000003135D80FD00000003050000FE135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF900000001000000050F8750F90C9A86FA0F878CFB00000002000000050F8750FB0780010600000006128A7CFD000000030000000600000002000000010000000500000005000000000000000500000004135D450900000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F80F878CF9000000010C9A86FA000000050000000A0F8750F90C9A86FA0F878CFB000000020780010600000005000000090000000A0000000100000005000000050000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020C9A86F8000000050F8750F90C9A86FA000000050F8750FB0000000A000000020000000100000005000000050000000500000005"
theorem small_5204945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204945_right_root small_5204945_right_fuel small_5204945_right_count small_5204945_right_encoded = true := by
  decide +kernel
theorem small_5204945_right_covered : CoveredBy scale carrier boxes small_5204945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204945_right_root small_5204945_right_fuel small_5204945_right_count small_5204945_right_encoded small_5204945_right_checked

theorem cover_5204945 : CoveredBy scale carrier boxes root_5204945 := by
  apply coveredBy_split_literal root_5204945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204946 small_5204945_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204946
  · exact small_5204945_right_covered
#print axioms cover_5204945

def root_5204940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204940_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204940_right_fuel : Nat := 1
def small_5204940_right_count : Nat := 1
def small_5204940_right_encoded : String := "00000003"
theorem small_5204940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204940_right_root small_5204940_right_fuel small_5204940_right_count small_5204940_right_encoded = true := by
  decide +kernel
theorem small_5204940_right_covered : CoveredBy scale carrier boxes small_5204940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204940_right_root small_5204940_right_fuel small_5204940_right_count small_5204940_right_encoded small_5204940_right_checked

theorem cover_5204940 : CoveredBy scale carrier boxes root_5204940 := by
  apply coveredBy_split_literal root_5204940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204945 small_5204940_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204945
  · exact small_5204940_right_covered
#print axioms cover_5204940

def root_5204939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5204939 : CoveredBy scale carrier boxes root_5204939 := by
  apply coveredBy_split_literal root_5204939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204940 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1955.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1955.covered
#print axioms cover_5204939

def root_5204933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204933_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204933_left_fuel : Nat := 1
def small_5204933_left_count : Nat := 1
def small_5204933_left_encoded : String := "00000002"
theorem small_5204933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204933_left_root small_5204933_left_fuel small_5204933_left_count small_5204933_left_encoded = true := by
  decide +kernel
theorem small_5204933_left_covered : CoveredBy scale carrier boxes small_5204933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204933_left_root small_5204933_left_fuel small_5204933_left_count small_5204933_left_encoded small_5204933_left_checked

theorem cover_5204933 : CoveredBy scale carrier boxes root_5204933 := by
  apply coveredBy_split_literal root_5204933 small_5204933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204939 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5204933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204939
#print axioms cover_5204933

def root_5222025 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5222025 : CoveredBy scale carrier boxes root_5222025 := by
  apply coveredBy_split_literal root_5222025 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1957.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1958.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1957.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1958.covered
#print axioms cover_5222025

def root_5222019 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222019_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222019_left_fuel : Nat := 1
def small_5222019_left_count : Nat := 1
def small_5222019_left_encoded : String := "00000002"
theorem small_5222019_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222019_left_root small_5222019_left_fuel small_5222019_left_count small_5222019_left_encoded = true := by
  decide +kernel
theorem small_5222019_left_covered : CoveredBy scale carrier boxes small_5222019_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222019_left_root small_5222019_left_fuel small_5222019_left_count small_5222019_left_encoded small_5222019_left_checked

theorem cover_5222019 : CoveredBy scale carrier boxes root_5222019 := by
  apply coveredBy_split_literal root_5222019 small_5222019_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222025 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5222019_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222025
#print axioms cover_5222019

def root_5222018 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222018_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222018_right_fuel : Nat := 21
def small_5222018_right_count : Nat := 141
def small_5222018_right_encoded : String := "135D44FB05000106135D44FD045489F71386AD000CFD9BF90F350CF80000000104548A09000000051386ACFE000000040C9A86F80000000A0F8750F900000005000000010F34D0F804548A09000000070000000A000000010000000013867100000000000CFD9BF90F350CF80000000104548A09138670FE0C9A86F80F878CF900000001000000090F8750F90000000500000001000000041386ACFE000000040C9A86F80000000A0F8750F90000000A000000010F34D0F804548A0900000009000000090000000100000003135D80FD00000003045489F71386AD000CFD9BF90F350CF80000000104548A09000000051386ACFE000000040C9A86F80F878CF900000001028000FA00000007000000070F8750F900000006000000010F34D0F804548A090000000700000008000000010000000013867100000000000CFD9BF90F350CF80000000104548A09138670FE0C9A86F8000000070F8750F9028000FA13D7ECFB0000000207800106128A40FD00000005000000030000000713D7B0FB000000050000000200000001000000041386ACFE000000040C9A86F80F878CF900000001000000080F8750F9028000FA13D7ECFB0000000207800106128A40FD022A457713E20100067ECE8900000005000000060000000013E1C50000000000067ECE8912EA58FE0B4D43F80000000700000006000000040000000600000003128A7CFD000000030000000813D7B0FB07800106000000060000000600000002000000010F34D0F8000000080000000100000002"
theorem small_5222018_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222018_right_root small_5222018_right_fuel small_5222018_right_count small_5222018_right_encoded = true := by
  decide +kernel
theorem small_5222018_right_covered : CoveredBy scale carrier boxes small_5222018_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222018_right_root small_5222018_right_fuel small_5222018_right_count small_5222018_right_encoded small_5222018_right_checked

theorem cover_5222018 : CoveredBy scale carrier boxes root_5222018 := by
  apply coveredBy_split_literal root_5222018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222019 small_5222018_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222019
  · exact small_5222018_right_covered
#print axioms cover_5222018

def root_5222013 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222013_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222013_right_fuel : Nat := 1
def small_5222013_right_count : Nat := 1
def small_5222013_right_encoded : String := "00000004"
theorem small_5222013_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222013_right_root small_5222013_right_fuel small_5222013_right_count small_5222013_right_encoded = true := by
  decide +kernel
theorem small_5222013_right_covered : CoveredBy scale carrier boxes small_5222013_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222013_right_root small_5222013_right_fuel small_5222013_right_count small_5222013_right_encoded small_5222013_right_checked

theorem cover_5222013 : CoveredBy scale carrier boxes root_5222013 := by
  apply coveredBy_split_literal root_5222013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222018 small_5222013_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222018
  · exact small_5222013_right_covered
#print axioms cover_5222013

def root_5222012 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222012_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222012_right_fuel : Nat := 30
def small_5222012_right_count : Nat := 497
def small_5222012_right_encoded : String := "12073CFE00000004050000FA135D80FB0000000205000106135D44FD045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80000000A0F8750F9078000FA128A7CFB00000002028001060000000A13D7ECFD00000003067ECE770000000612EA5900000000000000000A0000000600000001000000040000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80F878CF900000001078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A45770000000A000000050000000A0F8750F9078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A457713E201000AD3578910D100FE0B4D43F80000000A0000000A000000040000000A0000000013E1C500000000000AD3578910D100FE0B4D43F80000000A108010F90000000A0000000100000004000000050000000A00000001000000040000000A0F34D0F80CFD9C090F34D0FE0000000500000004000000050000000100000003135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80F878CF900000001078000FA128A7CFB0000000207800106128A40FD067ECE7712EA95000AD35789000000070000000A0000000012EA5900000000000AD35789000000070000000A00000003128A7CFD00000003067ECE770000000712EA59000000000000000007128A40FB07800106128A40FD0000000A00000003128A7CFD0000000300000007000000020F8750F9078000FA128A7CFB0000000207800106128A40FD067ECE770000000612EA5900000000000AD3578910D100FE00000006000000040000000600000003128A7CFD00000003067ECE770000000612EA5900000000000AD3578910D100FE000000060000000400000006128A40FB000000060000000200000001000000040F350CFE000000040C9A86F80F878CF9000000010C9A86FE0F878D09078000FA128A7CFB00000002078001060000000A128A7CFD00000003067ECE770000000612EA5900000000000DE7C9F8000000050000000600000006000000040F875109000000040000000A0F8750F90C9A86FE0000000600000006000000010F34D0F80CFD9C090F34D0FE078000FA128A7CFB00000002078001060000000700000007128A40FB07800106000000070000000700000002000000040F350CFE000000040C9A86FE0F878D09078000FA128A7CFB00000002000000050000000A000000040F8751090000000400000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80F878CF900000001078000FA128A7CFB0000000207800106128A40FD022A457713E201000AD3578910D100FE0DE7C9F8000000080E5FD8F908C000FA11FC24FB00000002064001060000000A000000080000000A00000001000000040000000500000000000000050000000300000008128A40FB07800106128A40FD022A45770000000A000000080000000300000008000000020F8750F9078000FA128A7CFB0000000207800106128A40FD022A457713E201000AD3578910D100FE0B4D43F810804CF90000000108C000FA11FC24FB000000020640010612FF70FD0000000A0000000312FFACFD00000003033F67B70000000613BBF500000000000000000811FBE8FB0000000600000002108010F900000006000000010000000410D13CFE00000004000000060000000013E1C500000000000AD3578910D100FE0B4D43F810804CF90000000108C000FA11FC24FB000000020000000511FBE8FB0000000800000002108010F908C000FA11FC24FB000000020640010612FF70FD0115233700000006000000050000000312FFACFD000000030115233700000006000000050000000600000001000000040000000500000003128A7CFD00000003022A457713E201000AD3578910D100FE0B4D43F800000008000000060000000410D13CFE00000004000000060000000013E1C500000000000AD3578910D100FE000000080000000400000005128A40FB07800106128A40FD022A45770000000613E1C500000000000AD3578910D100FE0B4D43F80000000800000006000000040000000600000003128A7CFD00000003022A457700000006000000080000000200000001000000040F350CFE000000040C9A86F80F878CF9000000010C9A86FE0F878D09078000FA000000050000000A000000040F87510900000004000000050F8750F90C9A86FE0F878D09078000FA128A7CFB0000000207800106128A40FD0000000A00000003128A7CFD00000003022A4577000000060000000500000006000000040F87510900000004078000FA128A7CFB0000000207800106000000050000000600000006000000010F34D0F80CFD9C090F34D0FE00000008000000040000000500000001135D44FB05000106135D44FD045489F70000000A13867100000000000000000A00000003135D80FD00000003045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80000000A0000000600000004000000060F34D0F80000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F80F878CF900000001000000080F8750F90000000600000001000000040000000A0F34D0F80CFD9C090F34D0FE0000000800000004000000080000000100000002"
theorem small_5222012_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222012_right_root small_5222012_right_fuel small_5222012_right_count small_5222012_right_encoded = true := by
  decide +kernel
theorem small_5222012_right_covered : CoveredBy scale carrier boxes small_5222012_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222012_right_root small_5222012_right_fuel small_5222012_right_count small_5222012_right_encoded small_5222012_right_checked

theorem cover_5222012 : CoveredBy scale carrier boxes root_5222012 := by
  apply coveredBy_split_literal root_5222012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222013 small_5222012_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222013
  · exact small_5222012_right_covered
#print axioms cover_5222012

def root_5222006 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222006_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222006_left_fuel : Nat := 1
def small_5222006_left_count : Nat := 1
def small_5222006_left_encoded : String := "00000001"
theorem small_5222006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222006_left_root small_5222006_left_fuel small_5222006_left_count small_5222006_left_encoded = true := by
  decide +kernel
theorem small_5222006_left_covered : CoveredBy scale carrier boxes small_5222006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222006_left_root small_5222006_left_fuel small_5222006_left_count small_5222006_left_encoded small_5222006_left_checked

theorem cover_5222006 : CoveredBy scale carrier boxes root_5222006 := by
  apply coveredBy_split_literal root_5222006 small_5222006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222012 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5222006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222012
#print axioms cover_5222006

def root_5222005 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222005_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5222005_right_fuel : Nat := 15
def small_5222005_right_count : Nat := 91
def small_5222005_right_encoded : String := "120700F808A91309120700FE050000FA135D80FB0000000205000106135D44FD045489F71386AD00045489F91386ACF80000000104548A09000000071386ACFE00000004078000FA0000000700000007138670F804548A09000000060000000800000001000000001386710000000000045489F91386ACF80000000104548A090000000600000008000000080000000300000008135D44FB05000106135D44FD045489F71386AD00045489F91386ACF80000000104548A0900000007000000080000000800000000000000080000000300000008000000020000000412073CFE00000004050000FA135D80FB0000000205000106135D44FD045489F71386AD00045489F90000000A00000005000000000000000500000003135D80FD00000003045489F71386AD00045489F91386ACF8000000010CFD9C090F34D0FE000000050000000400000005000000050000000000000005135D44FB050001060000000A000000080000000200000001"
theorem small_5222005_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5222005_right_root small_5222005_right_fuel small_5222005_right_count small_5222005_right_encoded = true := by
  decide +kernel
theorem small_5222005_right_covered : CoveredBy scale carrier boxes small_5222005_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5222005_right_root small_5222005_right_fuel small_5222005_right_count small_5222005_right_encoded small_5222005_right_checked

theorem cover_5222005 : CoveredBy scale carrier boxes root_5222005 := by
  apply coveredBy_split_literal root_5222005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222006 small_5222005_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222006
  · exact small_5222005_right_covered
#print axioms cover_5222005

def root_5221999 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5221999_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5221999_left_fuel : Nat := 1
def small_5221999_left_count : Nat := 1
def small_5221999_left_encoded : String := "00000000"
theorem small_5221999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5221999_left_root small_5221999_left_fuel small_5221999_left_count small_5221999_left_encoded = true := by
  decide +kernel
theorem small_5221999_left_covered : CoveredBy scale carrier boxes small_5221999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5221999_left_root small_5221999_left_fuel small_5221999_left_count small_5221999_left_encoded small_5221999_left_checked

theorem cover_5221999 : CoveredBy scale carrier boxes root_5221999 := by
  apply coveredBy_split_literal root_5221999 small_5221999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5222005 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5221999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5222005
#print axioms cover_5221999

def root_5220113 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5220113 : CoveredBy scale carrier boxes root_5220113 := by
  apply coveredBy_split_literal root_5220113 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1956.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5221999 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1956.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5221999
#print axioms cover_5220113

def root_5220108 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220108_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220108_right_fuel : Nat := 1
def small_5220108_right_count : Nat := 1
def small_5220108_right_encoded : String := "00000004"
theorem small_5220108_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5220108_right_root small_5220108_right_fuel small_5220108_right_count small_5220108_right_encoded = true := by
  decide +kernel
theorem small_5220108_right_covered : CoveredBy scale carrier boxes small_5220108_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5220108_right_root small_5220108_right_fuel small_5220108_right_count small_5220108_right_encoded small_5220108_right_checked

theorem cover_5220108 : CoveredBy scale carrier boxes root_5220108 := by
  apply coveredBy_split_literal root_5220108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220113 small_5220108_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220113
  · exact small_5220108_right_covered
#print axioms cover_5220108

def root_5220107 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220107_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220107_right_fuel : Nat := 16
def small_5220107_right_count : Nat := 117
def small_5220107_right_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF800000001050000FA135D80FB0000000205000106135D44FD050000FE135D81090CFD9BF7000000060F34D100000000000000000A00000004135D4509000000040000000A00000003135D80FD00000003050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90000000A0F34D0F80000000A0000000100000004135D4509000000040CFD9BF7000000060F34D100000000000000000A135D44FB0500010600000006135D80FD00000003050000FE000000060000000600000002120700F8050000FA135D80FB00000002050001060000000A135D80FD00000003050000FE135D81090CFD9BF70000000A0000000500000004135D450900000004000000070000000A0000000100000000120701000000000008A912F912073CF800000001050000FA135D80FB00000002050001060000000A135D80FD00000003050000FE135D8109045489F71386AD000CFD9BF90000000A0F34D0F80000000A000000010000000013867100000000000CFD9BF90000000A0F34D0F8000000050000000100000004135D450900000004045489F70000000A13867100000000000000000A0000000A120700F8050000FA000000050000000A00000001"
theorem small_5220107_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5220107_right_root small_5220107_right_fuel small_5220107_right_count small_5220107_right_encoded = true := by
  decide +kernel
theorem small_5220107_right_covered : CoveredBy scale carrier boxes small_5220107_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5220107_right_root small_5220107_right_fuel small_5220107_right_count small_5220107_right_encoded small_5220107_right_checked

theorem cover_5220107 : CoveredBy scale carrier boxes root_5220107 := by
  apply coveredBy_split_literal root_5220107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220108 small_5220107_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220108
  · exact small_5220107_right_covered
#print axioms cover_5220107

def root_5220102 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220102_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220102_right_fuel : Nat := 1
def small_5220102_right_count : Nat := 1
def small_5220102_right_encoded : String := "00000003"
theorem small_5220102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5220102_right_root small_5220102_right_fuel small_5220102_right_count small_5220102_right_encoded = true := by
  decide +kernel
theorem small_5220102_right_covered : CoveredBy scale carrier boxes small_5220102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5220102_right_root small_5220102_right_fuel small_5220102_right_count small_5220102_right_encoded small_5220102_right_checked

theorem cover_5220102 : CoveredBy scale carrier boxes root_5220102 := by
  apply coveredBy_split_literal root_5220102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220107 small_5220102_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220107
  · exact small_5220102_right_covered
#print axioms cover_5220102

def root_5220101 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5220101 : CoveredBy scale carrier boxes root_5220101 := by
  apply coveredBy_split_literal root_5220101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220102 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1959.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220102
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1959.covered
#print axioms cover_5220101

def root_5220096 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220096_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5220096_right_fuel : Nat := 1
def small_5220096_right_count : Nat := 1
def small_5220096_right_encoded : String := "00000002"
theorem small_5220096_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5220096_right_root small_5220096_right_fuel small_5220096_right_count small_5220096_right_encoded = true := by
  decide +kernel
theorem small_5220096_right_covered : CoveredBy scale carrier boxes small_5220096_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5220096_right_root small_5220096_right_fuel small_5220096_right_count small_5220096_right_encoded small_5220096_right_checked

theorem cover_5220096 : CoveredBy scale carrier boxes root_5220096 := by
  apply coveredBy_split_literal root_5220096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220101 small_5220096_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220101
  · exact small_5220096_right_covered
#print axioms cover_5220096

def root_5204932 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5204932 : CoveredBy scale carrier boxes root_5204932 := by
  apply coveredBy_split_literal root_5204932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5220096 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5220096
#print axioms cover_5204932

def root_5204926 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204926_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204926_left_fuel : Nat := 1
def small_5204926_left_count : Nat := 1
def small_5204926_left_encoded : String := "00000001"
theorem small_5204926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204926_left_root small_5204926_left_fuel small_5204926_left_count small_5204926_left_encoded = true := by
  decide +kernel
theorem small_5204926_left_covered : CoveredBy scale carrier boxes small_5204926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204926_left_root small_5204926_left_fuel small_5204926_left_count small_5204926_left_encoded small_5204926_left_checked

theorem cover_5204926 : CoveredBy scale carrier boxes root_5204926 := by
  apply coveredBy_split_literal root_5204926 small_5204926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204932 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5204926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204932
#print axioms cover_5204926

def root_5230524 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5230524 : CoveredBy scale carrier boxes root_5230524 := by
  apply coveredBy_split_literal root_5230524 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1960.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1961.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1960.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1961.covered
#print axioms cover_5230524

def root_5230518 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230518_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230518_left_fuel : Nat := 1
def small_5230518_left_count : Nat := 1
def small_5230518_left_encoded : String := "00000002"
theorem small_5230518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230518_left_root small_5230518_left_fuel small_5230518_left_count small_5230518_left_encoded = true := by
  decide +kernel
theorem small_5230518_left_covered : CoveredBy scale carrier boxes small_5230518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230518_left_root small_5230518_left_fuel small_5230518_left_count small_5230518_left_encoded small_5230518_left_checked

theorem cover_5230518 : CoveredBy scale carrier boxes root_5230518 := by
  apply coveredBy_split_literal root_5230518 small_5230518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230524 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5230518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230524
#print axioms cover_5230518

def root_5230517 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230517_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230517_right_fuel : Nat := 13
def small_5230517_right_count : Nat := 57
def small_5230517_right_encoded : String := "120700FA08A91309120700FE050000F8135D80F9000000010500010600000008135D80FD00000003045489F700000009138671000000000000000009135D44F900000008000000010000000412073CFE00000004050000F8135D80F90000000105000106135D44FD045489F71386AD00045489FB1386ACFA000000020CFD9C09000000080000000500000005000000000000000500000003135D80FD00000003045489F70000000900000005135D44F905000106135D44FD045489F7000000080000000500000003135D80FD00000003045489F700000009000000050000000100000002"
theorem small_5230517_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230517_right_root small_5230517_right_fuel small_5230517_right_count small_5230517_right_encoded = true := by
  decide +kernel
theorem small_5230517_right_covered : CoveredBy scale carrier boxes small_5230517_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230517_right_root small_5230517_right_fuel small_5230517_right_count small_5230517_right_encoded small_5230517_right_checked

theorem cover_5230517 : CoveredBy scale carrier boxes root_5230517 := by
  apply coveredBy_split_literal root_5230517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230518 small_5230517_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230518
  · exact small_5230517_right_covered
#print axioms cover_5230517

def root_5230511 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230511_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230511_left_fuel : Nat := 1
def small_5230511_left_count : Nat := 1
def small_5230511_left_encoded : String := "00000000"
theorem small_5230511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230511_left_root small_5230511_left_fuel small_5230511_left_count small_5230511_left_encoded = true := by
  decide +kernel
theorem small_5230511_left_covered : CoveredBy scale carrier boxes small_5230511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230511_left_root small_5230511_left_fuel small_5230511_left_count small_5230511_left_encoded small_5230511_left_checked

theorem cover_5230511 : CoveredBy scale carrier boxes root_5230511 := by
  apply coveredBy_split_literal root_5230511 small_5230511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230517 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5230511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230517
#print axioms cover_5230511

def root_5230173 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230173_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230173_left_fuel : Nat := 18
def small_5230173_left_count : Nat := 157
def small_5230173_left_encoded : String := "12073D0008A912FB12073CFA0000000208A91309120700FE050000F8135D80F90000000105000106135D44FD0CFD9BF7000000050000000800000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000CFD9BFB0F350CFA0000000204548A09000000050000000900000009135D44F90500010600000008135D80FD000000030CFD9BF7000000050F34D100000000000CFD9BFB0000000500000008000000010000000412073CFE00000004050000F8135D80F90000000105000106135D44FD0CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9C0900000005000000060F34D0FA0000000900000002000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002000000080F8750FB0000000600000002000000040F350CFE00000004000000060F34D0FA0CFD9C090F34D0FE0000000800000004000000090000000200000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0000000900000004000000090F34D0FA0000000900000002135D44F905000106135D44FD0CFD9BF70F350D000CFD9BFB0000000600000006000000000F34D100000000000CFD9BFB0F350CFA00000002000000060F34D0FA0CFD9C0900000008000000060000000200000003135D80FD000000030CFD9BF70F350D0000000009000000000F34D100000000000CFD9BFB0F350CFA00000002000000060000000900000001120700FA08A91309120700FE050000F800000009000000080000000412073CFE00000004050000F800000009000000090000000200000000"
theorem small_5230173_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230173_left_root small_5230173_left_fuel small_5230173_left_count small_5230173_left_encoded = true := by
  decide +kernel
theorem small_5230173_left_covered : CoveredBy scale carrier boxes small_5230173_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230173_left_root small_5230173_left_fuel small_5230173_left_count small_5230173_left_encoded small_5230173_left_checked

theorem cover_5230173 : CoveredBy scale carrier boxes root_5230173 := by
  apply coveredBy_split_literal root_5230173 small_5230173_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230511 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5230173_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230511
#print axioms cover_5230173

def root_5230168 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230168_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230168_right_fuel : Nat := 1
def small_5230168_right_count : Nat := 1
def small_5230168_right_encoded : String := "00000004"
theorem small_5230168_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230168_right_root small_5230168_right_fuel small_5230168_right_count small_5230168_right_encoded = true := by
  decide +kernel
theorem small_5230168_right_covered : CoveredBy scale carrier boxes small_5230168_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230168_right_root small_5230168_right_fuel small_5230168_right_count small_5230168_right_encoded small_5230168_right_checked

theorem cover_5230168 : CoveredBy scale carrier boxes root_5230168 := by
  apply coveredBy_split_literal root_5230168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230173 small_5230168_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230173
  · exact small_5230168_right_covered
#print axioms cover_5230168

def root_5230167 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230167_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230167_right_fuel : Nat := 25
def small_5230167_right_count : Nat := 325
def small_5230167_right_encoded : String := "1151E9090000000408A912F712073D0008A912FB12073CFA00000002050000F8135D80F90000000105000106135D44FD050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BFB000000060F34D0FA000000090000000200000004135D4509000000040CFD9BF7000000060F34D100000000000CFD9BFB000000060000000600000003135D80FD00000003050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BFB000000090000000900000004135D4509000000040CFD9BF7000000060F34D100000000000CFD9BFB0F350CFA000000020000000600000009135D44F90500010600000006135D80FD00000003050000FE000000060000000600000001120700FA000000090000000200000000120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D44FD050000FE135D8109045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F8128A7CF9000000010000000600000006000000060F34D0FA00000005000000020000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA000000070F8750FB00000007000000020000000500000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F80000000A00000006000000060F34D0FA00000005000000020000000013867100000000000CFD9BFB000000070000000500000003135D80FD00000003050000FE135D8109045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F80000000900000006000000060F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F800000005128A40F90780010600000005128A7CFD0000000300000005000000010F8750FB078000F8128A7CF9000000010780010600000006128A7CFD00000003078000FE000000050000000600000006000000020F34D0FA000000050000000200000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F8128A7CF90000000107800106000000060000000900000006000000060F34D0FA00000009000000020000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002078000F8128A7CF90000000100000005128A40F900000007000000010F8750FB078000F8128A7CF900000001078001060000000A128A7CFD00000003028000FE0000000613D7B10900000004022A45770000000600000007128A40F90000000600000001000000020F34D0FA0000000500000002135D44F905000106135D44FD050000FE135D8109045489F71386AD000CFD9BFB0000000600000006000000000000000700000004135D450900000004045489F71386AD000CFD9BFB0000000600000006000000000000000700000003135D80FD00000003050000FE135D8109045489F71386AD000CFD9BFB00000006000000060000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA00000007000000060F34D0FA000000070000000200000004135D450900000004045489F71386AD000CFD9BFB00000006000000060000000013867100000000000CFD9BFB000000070F34D0FA000000070000000200000001120700FA050000F800000005135D44F90500010600000005135D80FD00000003050000FE00000005135D450900000004000000090000000100000002"
theorem small_5230167_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230167_right_root small_5230167_right_fuel small_5230167_right_count small_5230167_right_encoded = true := by
  decide +kernel
theorem small_5230167_right_covered : CoveredBy scale carrier boxes small_5230167_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230167_right_root small_5230167_right_fuel small_5230167_right_count small_5230167_right_encoded small_5230167_right_checked

theorem cover_5230167 : CoveredBy scale carrier boxes root_5230167 := by
  apply coveredBy_split_literal root_5230167 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230168 small_5230167_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230168
  · exact small_5230167_right_covered
#print axioms cover_5230167

def root_5230162 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230162_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230162_right_fuel : Nat := 1
def small_5230162_right_count : Nat := 1
def small_5230162_right_encoded : String := "00000003"
theorem small_5230162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230162_right_root small_5230162_right_fuel small_5230162_right_count small_5230162_right_encoded = true := by
  decide +kernel
theorem small_5230162_right_covered : CoveredBy scale carrier boxes small_5230162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230162_right_root small_5230162_right_fuel small_5230162_right_count small_5230162_right_encoded small_5230162_right_checked

theorem cover_5230162 : CoveredBy scale carrier boxes root_5230162 := by
  apply coveredBy_split_literal root_5230162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230167 small_5230162_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230167
  · exact small_5230162_right_covered
#print axioms cover_5230162

def root_5230161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230161_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230161_right_fuel : Nat := 32
def small_5230161_right_count : Nat := 465
def small_5230161_right_encoded : String := "115224FD000000030A0000FE1152250908A912F712073D0008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F800000009135D44F900000009000000010000000412073CFE00000004050000F800000009135D44F9000000090000000100000003120701060000000300000009120700FA000000090000000200000000120701000000000008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A0900000009000000090000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000700000009000000030000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000900000009000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A090000000900000009000000030000000900000009000000010000000412073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE000000090000000400000009000000030F34D1060000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000900000009000000030000000900000002000000040F350CFE000000040C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD0C9A86FE0F878D09078000F80000000900000006000000040F8751090000000400000006000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C0900000009000000060000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FA0000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000100000003120701060000000308A91309120700FE000000090000000400000009120700FA08A912FD12073D0608A91309120700FE0000000900000004000000090000000312070106000000030000000900000002000000041151E9090000000408A912F712073D0008A912FB12073CFA0000000208A912FD12073D06050000F800000009135D44F9000000090000000100000003000000090000000900000000120701000000000008A912FB12073CFA0000000208A912FD12073D06050000F8135D80F900000001050000FE135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD078000F8128A7CF900000001078000FE00000005128A4109000000040000000600000006000000030F878CFD000000030000000900000002000000030F34D10600000003000000090000000900000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA000000090F8750FB0C9A87060000000600000006000000020000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F8128A7CF90000000100000005128A40F9000000090000000100000003000000090F8750FB0C9A87060F8750FD078000F8128A7CF900000001028000FE0000000613D7B10900000004022A45770000000613E1C500000000000B4D43FA10804CFB00000002000000050000000600000006000000030F878CFD00000003078000F8128A7CF900000001028000FE0000000913D7B1090000000400000009128A40F9000000060000000100000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9050000FE135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB00000002000000090000000600000003000000060000000900000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06000000060000000300000006000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000100000003120701060000000300000009120700FA0000000900000002"
theorem small_5230161_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230161_right_root small_5230161_right_fuel small_5230161_right_count small_5230161_right_encoded = true := by
  decide +kernel
theorem small_5230161_right_covered : CoveredBy scale carrier boxes small_5230161_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230161_right_root small_5230161_right_fuel small_5230161_right_count small_5230161_right_encoded small_5230161_right_checked

theorem cover_5230161 : CoveredBy scale carrier boxes root_5230161 := by
  apply coveredBy_split_literal root_5230161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230162 small_5230161_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230162
  · exact small_5230161_right_covered
#print axioms cover_5230161

def root_5230155 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230155_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230155_left_fuel : Nat := 1
def small_5230155_left_count : Nat := 1
def small_5230155_left_encoded : String := "00000002"
theorem small_5230155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230155_left_root small_5230155_left_fuel small_5230155_left_count small_5230155_left_encoded = true := by
  decide +kernel
theorem small_5230155_left_covered : CoveredBy scale carrier boxes small_5230155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230155_left_root small_5230155_left_fuel small_5230155_left_count small_5230155_left_encoded small_5230155_left_checked

theorem cover_5230155 : CoveredBy scale carrier boxes root_5230155 := by
  apply coveredBy_split_literal root_5230155 small_5230155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230161 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5230155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230161
#print axioms cover_5230155

def root_5235753 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5235753 : CoveredBy scale carrier boxes root_5235753 := by
  apply coveredBy_split_literal root_5235753 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1962.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1963.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1962.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1963.covered
#print axioms cover_5235753

def root_5235748 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5235748_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5235748_right_fuel : Nat := 1
def small_5235748_right_count : Nat := 1
def small_5235748_right_encoded : String := "00000002"
theorem small_5235748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5235748_right_root small_5235748_right_fuel small_5235748_right_count small_5235748_right_encoded = true := by
  decide +kernel
theorem small_5235748_right_covered : CoveredBy scale carrier boxes small_5235748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5235748_right_root small_5235748_right_fuel small_5235748_right_count small_5235748_right_encoded small_5235748_right_checked

theorem cover_5235748 : CoveredBy scale carrier boxes root_5235748 := by
  apply coveredBy_split_literal root_5235748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5235753 small_5235748_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5235753
  · exact small_5235748_right_covered
#print axioms cover_5235748

def root_5230154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5230154 : CoveredBy scale carrier boxes root_5230154 := by
  apply coveredBy_split_literal root_5230154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5235748 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230155
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5235748
#print axioms cover_5230154

def root_5230149 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230149_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230149_right_fuel : Nat := 1
def small_5230149_right_count : Nat := 1
def small_5230149_right_encoded : String := "00000001"
theorem small_5230149_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230149_right_root small_5230149_right_fuel small_5230149_right_count small_5230149_right_encoded = true := by
  decide +kernel
theorem small_5230149_right_covered : CoveredBy scale carrier boxes small_5230149_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230149_right_root small_5230149_right_fuel small_5230149_right_count small_5230149_right_encoded small_5230149_right_checked

theorem cover_5230149 : CoveredBy scale carrier boxes root_5230149 := by
  apply coveredBy_split_literal root_5230149 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230154 small_5230149_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230154
  · exact small_5230149_right_covered
#print axioms cover_5230149

def root_5204925 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5204925 : CoveredBy scale carrier boxes root_5204925 := by
  apply coveredBy_split_literal root_5204925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5230149 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204926
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5230149
#print axioms cover_5204925

def root_5204919 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204919_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204919_left_fuel : Nat := 1
def small_5204919_left_count : Nat := 1
def small_5204919_left_encoded : String := "00000000"
theorem small_5204919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204919_left_root small_5204919_left_fuel small_5204919_left_count small_5204919_left_encoded = true := by
  decide +kernel
theorem small_5204919_left_covered : CoveredBy scale carrier boxes small_5204919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204919_left_root small_5204919_left_fuel small_5204919_left_count small_5204919_left_encoded small_5204919_left_checked

theorem cover_5204919 : CoveredBy scale carrier boxes root_5204919 := by
  apply coveredBy_split_literal root_5204919 small_5204919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204925 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5204919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204925
#print axioms cover_5204919

def root_5202253 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5202253 : CoveredBy scale carrier boxes root_5202253 := by
  apply coveredBy_split_literal root_5202253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1950.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5204919 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1950.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5204919
#print axioms cover_5202253

def root_5197647 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197647 : CoveredBy scale carrier boxes root_5197647 := by
  apply coveredBy_split_literal root_5197647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.root_5197648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5202253 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0128.cover_5197648
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5202253
#print axioms cover_5197647

def root_5245547 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5245547 : CoveredBy scale carrier boxes root_5245547 := by
  apply coveredBy_split_literal root_5245547 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1967.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1968.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1967.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1968.covered
#print axioms cover_5245547

def root_5245542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5245542_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5245542_right_fuel : Nat := 1
def small_5245542_right_count : Nat := 1
def small_5245542_right_encoded : String := "00000004"
theorem small_5245542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5245542_right_root small_5245542_right_fuel small_5245542_right_count small_5245542_right_encoded = true := by
  decide +kernel
theorem small_5245542_right_covered : CoveredBy scale carrier boxes small_5245542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5245542_right_root small_5245542_right_fuel small_5245542_right_count small_5245542_right_encoded small_5245542_right_checked

theorem cover_5245542 : CoveredBy scale carrier boxes root_5245542 := by
  apply coveredBy_split_literal root_5245542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5245547 small_5245542_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5245547
  · exact small_5245542_right_covered
#print axioms cover_5245542

def root_5243138 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243138 : CoveredBy scale carrier boxes root_5243138 := by
  apply coveredBy_split_literal root_5243138 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1966.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5245542 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1966.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5245542
#print axioms cover_5243138

def root_5243133 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243133_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243133_right_fuel : Nat := 1
def small_5243133_right_count : Nat := 1
def small_5243133_right_encoded : String := "00000003"
theorem small_5243133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243133_right_root small_5243133_right_fuel small_5243133_right_count small_5243133_right_encoded = true := by
  decide +kernel
theorem small_5243133_right_covered : CoveredBy scale carrier boxes small_5243133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243133_right_root small_5243133_right_fuel small_5243133_right_count small_5243133_right_encoded small_5243133_right_checked

theorem cover_5243133 : CoveredBy scale carrier boxes root_5243133 := by
  apply coveredBy_split_literal root_5243133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5243138 small_5243133_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5243138
  · exact small_5243133_right_covered
#print axioms cover_5243133

def root_5259454 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259454_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259454_left_fuel : Nat := 24
def small_5259454_left_count : Nat := 437
def small_5259454_left_encoded : String := "10804CFB000000020DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000AA6A27810EDACF9000000010BF3E57A100928FB000000020D41288600000005000000091008ECFB0D4128860EFA10FD05A001080000000513317109019FB45713EF35000AF9F3380000000A10B7ECF90BA094BA104604FB000000020000000500000008000000010000000013EEF900000000000AF9F3380000000510B7ECF90BA094BA00000005000000080000000100000004000000030EFA4CFD0000000305A001080000000913317109019FB4570000000913EEF900000000000AF9F3380000000510B7ECF90BA094BA000000051045C8FB0D94794600000005000000090000000200000001000000040000000210ED70F90BF3E57A100928FB000000020D4128860EFA10FD05A001080000000513317109000000080000000400000003000000091008ECFB0D4128860EFA10FD05A001081331350900000004019FB4570000000913EEF900000000000A5351B8000000051120C4F9000000080000000113317109019FB457000000080000000800000004000000030EFA4CFD0000000305A001080000000913317109019FB4570000000913EEF900000000000A5351B8112100F9000000010BA094BA000000091045C8FB0D9479460000000800000009000000021120C4F900000009000000010000000400000002000000010000000013F85900000000000AA6A27810EDACF9000000010BF3E57A000000050000008210ED70F90BF3E57A100928FB000000020D412886000000050EFA4CFD0000000300000005000000820000000112FFAD090115233713F895000AA6A27810EDACF9000000010BF3E57A100928FB000000020D4128860EFA10FD06E0010812C7E50900000004019FB457000000080000000500000006000000030EFA4CFD0000000306E0010812C7E50900000004019FB4570000000900000006000000061008ECFB0D4128860EFA10FD06E0010812C7E50900000004019FB457000000080000000800000008000000030EFA4CFD0000000306E0010812C7E50900000004019FB45713EF35000AF9F33810B828F9000000010BA094BA000000091045C8FB0D9479460EAEACFD0000000800000003000000060000000210B7ECF90BA094BA000000091045C8FB0D947946000000080000000900000002000000010000000013EEF900000000000AF9F3380000000610B7ECF90BA094BA000000061045C8FB00000006000000020000000112C82109019FB45713EF35000AF9F33800000006000000080000000000000006000000040000000210ED70F90BF3E57A100928FB000000020D412886000000080EFA4CFD0000000306E0010812C7E5090000000400000009000000081008ECFB0D412886000000080EFA4CFD0000000306E0010812C7E50900000004019FB45700000008000000080000000800000002000000010000000013F85900000000000AA6A27810EDACF9000000010BF3E57A000000061008ECFB0D4128860EFA10FD0000000600000003000000060000000210ED70F90BF3E57A100928FB000000020D41288600000008000000061008ECFB0D412886000000080EFA4CFD0000000306E0010812C7E50900000004008A921713FE35000A5351B80000000600000008000000000000000600000006000000020000000100000004000000030E6014FD000000030640010812FF710900000004011523370000000913F85900000000000DAED87D0E9661060AA6A27810EDACF9000000010BF3E57A000000050000008210ED70F90BF3E57A100928FB00000002000000090000008200000001000000030E962506000000030AA6A278000000090000000A12FFAD090115233713F895000DAED87D0E9661060AA6A27810EDACF9000000010BF3E57A100928FB00000002000000091008ECFB06E0010812C7E50900000004019FB4570000000913EEF900000000000E0776BD000000060E40FD06000000030000000612C82109019FB45713EF35000E0776BD00000006000000070000000000000006000000040000000210ED70F90BF3E57A100928FB00000002000000091008ECFB06E0010812C7E50900000004019FB4570000000913EEF900000000000E0776BD0E4139060A5351B80000000600000008000000030000000912C82109019FB45713EF35000E0776BD0E41390600000008000000030E40FD0600000003000000090000000000000006000000040000000200000001000000030E962506000000030AA6A2780000000910ED70F900000009000000010000000013F85900000000000DAED87D0E9661060AA6A2780000000610ED70F90BF3E57A000000061008ECFB06E0010800000006000000060000000200000001000000030E962506000000030AA6A278000000060000000A00000004"
theorem small_5259454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5259454_left_root small_5259454_left_fuel small_5259454_left_count small_5259454_left_encoded = true := by
  decide +kernel
theorem small_5259454_left_covered : CoveredBy scale carrier boxes small_5259454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5259454_left_root small_5259454_left_fuel small_5259454_left_count small_5259454_left_encoded small_5259454_left_checked

theorem cover_5259454 : CoveredBy scale carrier boxes root_5259454 := by
  apply coveredBy_split_literal root_5259454 small_5259454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1972.root coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_5259454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1972.covered
#print axioms cover_5259454

def root_5259449 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259449_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-13841408), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259449_right_fuel : Nat := 1
def small_5259449_right_count : Nat := 1
def small_5259449_right_encoded : String := "00000001"
theorem small_5259449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5259449_right_root small_5259449_right_fuel small_5259449_right_count small_5259449_right_encoded = true := by
  decide +kernel
theorem small_5259449_right_covered : CoveredBy scale carrier boxes small_5259449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5259449_right_root small_5259449_right_fuel small_5259449_right_count small_5259449_right_encoded small_5259449_right_checked

theorem cover_5259449 : CoveredBy scale carrier boxes root_5259449 := by
  apply coveredBy_split_literal root_5259449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5259454 small_5259449_right_root coord1 true (-13841408)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5259454
  · exact small_5259449_right_covered
#print axioms cover_5259449

def root_5258677 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258677_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258677_left_fuel : Nat := 23
def small_5258677_left_count : Nat := 371
def small_5258677_left_encoded : String := "10804CF9000000010B4D43FA10804CFB000000020DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000BF3E578000000051008ECF90BF3E57A000000051008ECFB0D412886000000050EFA4CFD00000003000000050000000200000001000000000000000512FFAD090115233713F895000BF3E578100928F9000000010BF3E57A100928FB00000002000000051008ECFB0D4128860EFA10FD000000060000000300000006000000021008ECF90BF3E57A100928FB000000020D4128860EFA10FD0000000600000003000000061008ECFB0D4128860EFA10FD06E0010812C7E50900000004019FB4570000000A0000000500000006000000030EFA4CFD0000000306E0010812C7E50900000004019FB45713EF35000BA094B8000000061045C8F90BA094BA00000006000000070000000100000000000000060000000600000002000000010000000013F85900000000000BF3E578000000061008ECF90BF3E57A000000061008ECFB00000006000000020000000100000004000000030E6014FD000000030640010812FF7109000000040115233713F895000DAED87D0E966106000000050000000300000005000000000000000512FFAD090115233713F895000DAED87D0E9661060BF3E578100928F9000000010BF3E57A00000005000000071008ECF90BF3E57A000000061008ECFB06E0010800000007000000060000000200000001000000030E962506000000030BF3E578000000071008ECF90BF3E57A0000000600000007000000010000000013F85900000000000DAED87D000000060E962506000000030000000600000004108010FB0DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000BF3E578100928F9000000010AA6A27A0000000A0000000A1008ECF90AA6A27A10EDACFB000000020D4128860000000A0EFA4CFD0000000305A0010813313509000000040000000513317109019FB4570000000713EEF900000000000BA094B8000000051045C8F90AF9F33A000000050000000A00000001000000040000000A000000010000000013F85900000000000BF3E578100928F9000000010AA6A27A0000000510ED70FB0000000A000000020000008212FFAD090115233713F895000BF3E578100928F9000000010AA6A27A10EDACFB000000020D4128860000000A0EFA4CFD00000003000000070000000A1008ECF90AA6A27A10EDACFB000000020D4128860EFA10FD0000000A000000030EFA4CFD0000000306E0010812C7E50900000004019FB4570000000713EEF900000000000BA094B8000000061045C8F90AF9F33A00000006000000070000000112C82109019FB45700000007000000060000000410ED70FB0000000A00000002000000010000000013F85900000000000BF3E578100928F9000000010AA6A27A0000000610ED70FB0D4128860000000900000006000000021008ECF90AA6A27A10EDACFB000000020D4128860EFA10FD00000006000000030000000610ED70FB0D412886000000090EFA4CFD0000000306E0010812C7E50900000004008A92170000000A0000000600000006000000020000000100000004000000030E6014FD000000030640010812FF7109000000040115233713F895000DAED87D0E9661060BF3E578000000071008ECF90AA6A27A10EDACFB0000000200000007000000070000000100000003000000070000000013F85900000000000DAED87D0E9661060BF3E578100928F9000000010AA6A27A000000050000000700000082000000030E962506000000030BF3E578000000070000008212FFAD090115233713F895000DAED87D0E9661060BF3E578000000071008ECF90AA6A27A10EDACFB0000000200000007000000070000000100000003000000070000000013F85900000000000DAED87D0E9661060BF3E578000000061008ECF90AA6A27A0000000610ED70FB06E0010800000006000000060000000200000001000000030E962506000000030BF3E578000000061008ECF90AA6A27A0000000600000007000000010000000400000002"
theorem small_5258677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5258677_left_root small_5258677_left_fuel small_5258677_left_count small_5258677_left_encoded = true := by
  decide +kernel
theorem small_5258677_left_covered : CoveredBy scale carrier boxes small_5258677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5258677_left_root small_5258677_left_fuel small_5258677_left_count small_5258677_left_encoded small_5258677_left_checked

theorem cover_5258677 : CoveredBy scale carrier boxes root_5258677 := by
  apply coveredBy_split_literal root_5258677 small_5258677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5259449 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_5258677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5259449
#print axioms cover_5258677

def root_5258671 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258671_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258671_left_fuel : Nat := 1
def small_5258671_left_count : Nat := 1
def small_5258671_left_encoded : String := "00000000"
theorem small_5258671_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5258671_left_root small_5258671_left_fuel small_5258671_left_count small_5258671_left_encoded = true := by
  decide +kernel
theorem small_5258671_left_covered : CoveredBy scale carrier boxes small_5258671_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5258671_left_root small_5258671_left_fuel small_5258671_left_count small_5258671_left_encoded small_5258671_left_checked

theorem cover_5258671 : CoveredBy scale carrier boxes root_5258671 := by
  apply coveredBy_split_literal root_5258671 small_5258671_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.root_5258677 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5258671_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129.cover_5258677
#print axioms cover_5258671

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0129
