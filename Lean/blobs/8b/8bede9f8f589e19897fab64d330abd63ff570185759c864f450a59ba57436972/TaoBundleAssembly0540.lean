import TaoBundleAssembly0539
import TaoBundleChunkBatch0741
import TaoBundleChunkBatch0742
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540
def root_7877815 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877815_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877815_right_fuel : Nat := 22
def small_7877815_right_count : Nat := 261
def small_7877815_right_encoded : String := "135D44F905000106135D44FD04548A0113867100000000000CFD9BFB0F350CFA0000000204548A09000000081386ACFE000000040C9A86FA000000070F8750FB0000000700000002000000081386AD000CFD9BFB0F350CFA0000000204548A09138670FE0000000700000004000000070F34D0FA00000008000000020000000000000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028000F813D7ECF9000000010780010600000008128A7CFD000000030000000A000000080F8750FB028000F813D7ECF90000000107800106128A40FD022A45810000000813E20100022A458913E1C4FE0B4D43FA00000008108010FB0000000A0000000200000004000000070000000000000003128A7CFD00000003022A458113E1C50000000000022A45890000000A0000000913E20100022A45890000000A13E200FE000000040B4D43FA0000000A108010FB0000000A000000020000000013D7B0F90780010600000008128A7CFD00000003022A4581000000080000000A0000000100000002000000041386ACFE000000040C9A86FA0F878CFB00000002028000F813D7ECF90000000107800106128A40FD0000000800000003128A7CFD00000003022A45810000000913E20100067ECE890000000A000000050000000013D7B0F90780010600000007128A7CFD0000000300000009000000010F8750FB028000F813D7ECF90000000107800106128A40FD022A458113E1C50000000000067ECE8900000008000000070000000700000003128A7CFD00000003022A458113E1C50000000000067ECE8912EA58FE00000009000000040000000913E20100067ECE8912EA58FE0B4D43FA00000007108010FB000000070000000200000004000000070000000013D7B0F90780010600000007128A7CFD00000003022A458113E1C50000000000067ECE8900000008000000060000000700000001000000020F34D0FA04548A09000000081386ACFE00000004028000F813D7ECF90000000107800106000000080000000900000008000000021386AD000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028000F813D7ECF90000000107800106128A40FD0000000700000003128A7CFD00000003067ECE810000000A0000000A000000070F8750FB028000F813D7ECF90000000107800106128A40FD0000000700000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A00000007000000070000000700000002000000041386ACFE000000040C9A86FA000000070F8750FB00000007000000020F34D0FA04548A09138670FE028000F813D7ECF9000000010780010600000005128A7CFD0000000300000005000000080000000400000005000000020000000000000001"
theorem small_7877815_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877815_right_root small_7877815_right_fuel small_7877815_right_count small_7877815_right_encoded = true := by
  decide +kernel
theorem small_7877815_right_covered : CoveredBy scale carrier boxes small_7877815_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877815_right_root small_7877815_right_fuel small_7877815_right_count small_7877815_right_encoded small_7877815_right_checked

theorem cover_7877815 : CoveredBy scale carrier boxes root_7877815 := by
  apply coveredBy_split_literal root_7877815 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7877816 small_7877815_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7877816
  · exact small_7877815_right_covered
#print axioms cover_7877815

def root_7877810 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877810_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877810_right_fuel : Nat := 1
def small_7877810_right_count : Nat := 1
def small_7877810_right_encoded : String := "00000004"
theorem small_7877810_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877810_right_root small_7877810_right_fuel small_7877810_right_count small_7877810_right_encoded = true := by
  decide +kernel
theorem small_7877810_right_covered : CoveredBy scale carrier boxes small_7877810_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877810_right_root small_7877810_right_fuel small_7877810_right_count small_7877810_right_encoded small_7877810_right_checked

theorem cover_7877810 : CoveredBy scale carrier boxes root_7877810 := by
  apply coveredBy_split_literal root_7877810 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877815 small_7877810_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877815
  · exact small_7877810_right_covered
#print axioms cover_7877810

def root_7877809 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877809_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877809_right_fuel : Nat := 24
def small_7877809_right_count : Nat := 173
def small_7877809_right_encoded : String := "12073CFE00000004050000F8135D80F90000000105000106135D44FD04548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF9000000010000000500000007000000020000000400000005000000050000000500000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF9000000010780010600000005128A7CFD0000000300000005128A40F907800106128A40FD0000000700000003128A7CFD00000003022A458113E1C500000000000AD3578910D100FE0B4D43FA10804CFB0000000200000005108010FB00000006000000020000000400000005000000050000000100000002000000040F350CFE000000040C9A86FA000000050F8750FB0C9A86FE000000050F8751090000000400000005000000020F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0000000500000004000000050000000500000000135D44F905000106135D44FD04548A0113867100000000000CFD9BFB000000070F34D0FA00000005000000020000000700000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878CFB00000002028000F813D7ECF9000000010780010600000007128A7CFD00000003022A45810000000900000005000000070F8750FB0000000700000002000000040F350CFE000000040C9A86FA000000070F8750FB00000007000000020F34D0FA0CFD9C090F34D0FE000000050000000400000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C090F34D0FE0000000700000004000000070F34D0FA00000005000000020000000000000001"
theorem small_7877809_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877809_right_root small_7877809_right_fuel small_7877809_right_count small_7877809_right_encoded = true := by
  decide +kernel
theorem small_7877809_right_covered : CoveredBy scale carrier boxes small_7877809_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877809_right_root small_7877809_right_fuel small_7877809_right_count small_7877809_right_encoded small_7877809_right_checked

theorem cover_7877809 : CoveredBy scale carrier boxes root_7877809 := by
  apply coveredBy_split_literal root_7877809 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877810 small_7877809_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877810
  · exact small_7877809_right_covered
#print axioms cover_7877809

def root_7877803 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877803_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877803_left_fuel : Nat := 1
def small_7877803_left_count : Nat := 1
def small_7877803_left_encoded : String := "00000002"
theorem small_7877803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877803_left_root small_7877803_left_fuel small_7877803_left_count small_7877803_left_encoded = true := by
  decide +kernel
theorem small_7877803_left_covered : CoveredBy scale carrier boxes small_7877803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877803_left_root small_7877803_left_fuel small_7877803_left_count small_7877803_left_encoded small_7877803_left_checked

theorem cover_7877803 : CoveredBy scale carrier boxes root_7877803 := by
  apply coveredBy_split_literal root_7877803 small_7877803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877809 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7877803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877809
#print axioms cover_7877803

def root_7877802 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877802_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877802_right_fuel : Nat := 9
def small_7877802_right_count : Nat := 21
def small_7877802_right_encoded : String := "120700FA08A91309120700FE050000F8135D80F90000000105000106135D44FD04548A0100000008000000050000000300000005135D44F905000106000000080000000800000001000000040000000500000002"
theorem small_7877802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877802_right_root small_7877802_right_fuel small_7877802_right_count small_7877802_right_encoded = true := by
  decide +kernel
theorem small_7877802_right_covered : CoveredBy scale carrier boxes small_7877802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877802_right_root small_7877802_right_fuel small_7877802_right_count small_7877802_right_encoded small_7877802_right_checked

theorem cover_7877802 : CoveredBy scale carrier boxes root_7877802 := by
  apply coveredBy_split_literal root_7877802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877803 small_7877802_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877803
  · exact small_7877802_right_covered
#print axioms cover_7877802

def root_7877796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877796_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877796_left_fuel : Nat := 1
def small_7877796_left_count : Nat := 1
def small_7877796_left_encoded : String := "00000000"
theorem small_7877796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877796_left_root small_7877796_left_fuel small_7877796_left_count small_7877796_left_encoded = true := by
  decide +kernel
theorem small_7877796_left_covered : CoveredBy scale carrier boxes small_7877796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877796_left_root small_7877796_left_fuel small_7877796_left_count small_7877796_left_encoded small_7877796_left_checked

theorem cover_7877796 : CoveredBy scale carrier boxes root_7877796 := by
  apply coveredBy_split_literal root_7877796 small_7877796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877802 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7877796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877802
#print axioms cover_7877796

def root_7877795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877795_right_fuel : Nat := 19
def small_7877795_right_count : Nat := 73
def small_7877795_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91309120700FE050000F8135D80F90000000105000106135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA00000007000000050000000400000005000000050000000500000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA000000050F8750FB078000F800000005000000070000000200000004000000050000000500000005135D44F905000106135D44FD0000000700000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA0000000204548A09138670FE00000007000000040000000500000005000000050000000100000004000000050000000500000000"
theorem small_7877795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877795_right_root small_7877795_right_fuel small_7877795_right_count small_7877795_right_encoded = true := by
  decide +kernel
theorem small_7877795_right_covered : CoveredBy scale carrier boxes small_7877795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877795_right_root small_7877795_right_fuel small_7877795_right_count small_7877795_right_encoded small_7877795_right_checked

theorem cover_7877795 : CoveredBy scale carrier boxes root_7877795 := by
  apply coveredBy_split_literal root_7877795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877796 small_7877795_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877796
  · exact small_7877795_right_covered
#print axioms cover_7877795

def root_7877790 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877790_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877790_right_fuel : Nat := 1
def small_7877790_right_count : Nat := 1
def small_7877790_right_encoded : String := "00000004"
theorem small_7877790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877790_right_root small_7877790_right_fuel small_7877790_right_count small_7877790_right_encoded = true := by
  decide +kernel
theorem small_7877790_right_covered : CoveredBy scale carrier boxes small_7877790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877790_right_root small_7877790_right_fuel small_7877790_right_count small_7877790_right_encoded small_7877790_right_checked

theorem cover_7877790 : CoveredBy scale carrier boxes root_7877790 := by
  apply coveredBy_split_literal root_7877790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877795 small_7877790_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877795
  · exact small_7877790_right_covered
#print axioms cover_7877790

def root_7877789 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877789_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877789_right_fuel : Nat := 19
def small_7877789_right_count : Nat := 85
def small_7877789_right_encoded : String := "1151E9090000000408A91301120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D44FD050000FE00000005135D4509000000040000000500000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB078000F8000000050000000700000002000000050000000500000004135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB00000007000000020000000500000005135D44F90500010600000007135D80FD00000003050000FE135D810904548A0113867100000000000CFD9BFB00000007000000070000000700000004135D4509000000040000000700000001120700FA000000050000000212073D0008A912FB12073CFA00000002050000F800000005000000070000000500000000"
theorem small_7877789_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877789_right_root small_7877789_right_fuel small_7877789_right_count small_7877789_right_encoded = true := by
  decide +kernel
theorem small_7877789_right_covered : CoveredBy scale carrier boxes small_7877789_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877789_right_root small_7877789_right_fuel small_7877789_right_count small_7877789_right_encoded small_7877789_right_checked

theorem cover_7877789 : CoveredBy scale carrier boxes root_7877789 := by
  apply coveredBy_split_literal root_7877789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877790 small_7877789_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877790
  · exact small_7877789_right_covered
#print axioms cover_7877789

def root_7877784 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877784_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877784_right_fuel : Nat := 1
def small_7877784_right_count : Nat := 1
def small_7877784_right_encoded : String := "00000003"
theorem small_7877784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877784_right_root small_7877784_right_fuel small_7877784_right_count small_7877784_right_encoded = true := by
  decide +kernel
theorem small_7877784_right_covered : CoveredBy scale carrier boxes small_7877784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877784_right_root small_7877784_right_fuel small_7877784_right_count small_7877784_right_encoded small_7877784_right_checked

theorem cover_7877784 : CoveredBy scale carrier boxes root_7877784 := by
  apply coveredBy_split_literal root_7877784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877789 small_7877784_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877789
  · exact small_7877784_right_covered
#print axioms cover_7877784

def root_7877783 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7877783 : CoveredBy scale carrier boxes root_7877783 := by
  apply coveredBy_split_literal root_7877783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877784 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2964.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877784
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2964.covered
#print axioms cover_7877783

def root_7877777 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877777_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877777_left_fuel : Nat := 1
def small_7877777_left_count : Nat := 1
def small_7877777_left_encoded : String := "00000002"
theorem small_7877777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877777_left_root small_7877777_left_fuel small_7877777_left_count small_7877777_left_encoded = true := by
  decide +kernel
theorem small_7877777_left_covered : CoveredBy scale carrier boxes small_7877777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877777_left_root small_7877777_left_fuel small_7877777_left_count small_7877777_left_encoded small_7877777_left_checked

theorem cover_7877777 : CoveredBy scale carrier boxes root_7877777 := by
  apply coveredBy_split_literal root_7877777 small_7877777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7877783 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7877777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7877783
#print axioms cover_7877777

def root_7888959 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888959_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888959_right_fuel : Nat := 24
def small_7888959_right_count : Nat := 423
def small_7888959_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800106128A40FD022A458113E1C50000000000022A45890000000513E200FE00000004064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD011523410000000513F89500033F67C90000000513BC30FE0000000406E000F812C820F900000001096000FA000000070000000500000005000000000000000312FFACFD00000003011523410000000513F89500033F67C90000000513BC30FE0000000406E000F812C820F900000001096000FA0000000A11AA80FB000000050000000212C7E4F900000005000000010000000011FBE8FB000000050000000212FF70F9000000050000000113E20100022A458913E1C4FE064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD033F67C10000000513BC31000000000A00000000000000030000000A11FBE8FB000000050000000212FF70F900000005000000010000000413E200FE00000004064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD033F67C113BBF50000000000033F67C913BBF4FE000000070000000400000007000000070000000312FFACFD00000003033F67C113BBF50000000000033F67C90000000A13BC30FE0000000406E000F812C820F900000001096000FA0000000711AA80FB00000007000000020000000713BC3100033F67C90000000A000000070000000011FBE8FB0640010612FF70FD033F67C113BBF50000000000033F67C90000000500000007000000070000000312FFACFD00000003033F67C113BBF50000000000033F67C90000000513BC30FE0000000406E000F812C820F900000001082000FA0000000712465CFB00000006000000020000000713BC3100033F67C913BBF4FE06E000F812C820F900000001082000FA0000000700000009000000070000000400000007000000000000000212FF70F908C000FA0000000711FBE8FB064001060000000712FFACFD000000030000000700000002000000010000000000000003128A7CFD00000003022A458113E1C50000000000022A45890000000513E200FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD01152341000000050000000A000000030000000A11FBE8FB08C0010611FBE8FD000000050000000311FC24FD0000000301152341000000050000000A0000000212FF70F908C000FA11FC24FB0000000208C0010611FBE8FD00000005000000030000000A11FBE8FB00000005000000020000000113E20100022A458913E1C4FE064000F812FFACF90000000108C000FA0000000A11FBE8FB08C001060000000A0000000A0000000212FF70F908C000FA0000000A11FBE8FB0000000500000002000000010000000413E200FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD033F67C10000000A0000000A000000030000000A11FBE8FB08C0010611FBE8FD033F67C113BBF50000000000033F67C90000000513BC30FE0000000406E000F80000000812C7E4F9000000060000000113BC3100033F67C913BBF4FE06E000F8000000080000000A0000000400000008000000000000000311FC24FD00000003000000080000000212FF70F908C000FA11FC24FB0000000208C0010611FBE8FD033F67C10000000A0000000A000000030000000A11FBE8FB08C0010611FBE8FD033F67C113BBF50000000000033F67C9000000050000000613BC3100033F67C90000000A00000006000000000000000311FC24FD00000003033F67C10000000A0000000A000000020000000100000000128A40FB07800106128A40FD022A45810000000513E20100022A45890000000513E200FE00000004064000F812FFACF900000001064000FA12FFACFB000000020640010612FF70FD033F67C100000005000000070000000312FFACFD00000003033F67C10000000513BC3100033F67C900000005000000070000000012FF70FB064001060000000612FFACFD00000003000000060000000212FF70F9064000FA12FFACFB00000002064001060000000612FFACFD000000030000000600000006000000010000000000000003128A7CFD00000003022A45810000000513E20100022A45890000000513E200FE00000004064000F812FFACF900000001064000FA12FFACFB0000000208C0010611FBE8FD033F67C10000000500000008000000030000000812FF70FB000000080000000212FF70F9064000FA12FFACFB0000000208C001060000000611FC24FD00000003000000060000000600000001000000000000000200000001"
theorem small_7888959_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888959_right_root small_7888959_right_fuel small_7888959_right_count small_7888959_right_encoded = true := by
  decide +kernel
theorem small_7888959_right_covered : CoveredBy scale carrier boxes small_7888959_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888959_right_root small_7888959_right_fuel small_7888959_right_count small_7888959_right_encoded small_7888959_right_checked

theorem cover_7888959 : CoveredBy scale carrier boxes root_7888959 := by
  apply coveredBy_split_literal root_7888959 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2966.root small_7888959_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2966.covered
  · exact small_7888959_right_covered
#print axioms cover_7888959

def root_7888954 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888954_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888954_right_fuel : Nat := 1
def small_7888954_right_count : Nat := 1
def small_7888954_right_encoded : String := "00000004"
theorem small_7888954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888954_right_root small_7888954_right_fuel small_7888954_right_count small_7888954_right_encoded = true := by
  decide +kernel
theorem small_7888954_right_covered : CoveredBy scale carrier boxes small_7888954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888954_right_root small_7888954_right_fuel small_7888954_right_count small_7888954_right_encoded small_7888954_right_checked

theorem cover_7888954 : CoveredBy scale carrier boxes root_7888954 := by
  apply coveredBy_split_literal root_7888954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7888959 small_7888954_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7888959
  · exact small_7888954_right_covered
#print axioms cover_7888954

def root_7892133 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892133_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892133_right_fuel : Nat := 25
def small_7892133_right_count : Nat := 273
def small_7892133_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800106128A40FD022A458113E1C50000000000067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB000000020640010612FF70FD0115234113F85900000000000569AC490000000500000006000000070000000312FFACFD000000030115234113F85900000000000569AC491340D4FE00000006000000040000000613F895000569AC491340D4FE06E000F812C820F900000001096000FA00000007000000060000000600000004000000060000000011FBE8FB0640010600000006000000060000000212FF70F908C000FA11FC24FB0000000206400106000000060000000600000006000000010000000412EA94FE00000004064000F812FFACF900000001000000060000000613E20100067ECE8912EA58FE064000F812FFACF90000000108C000FA0000000711FBE8FB00000007000000020000000700000004000000070000000000000003128A7CFD00000003022A458113E1C50000000000067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD011523410000000613F895000569AC491340D4FE06E000F812C820F900000001096000FA0000000A00000006000000060000000400000006000000000000000311FC24FD00000003011523410000000613F895000569AC4900000009000000060000000011FBE8FB000000060000000212FF70F908C000FA11FC24FB0000000208C00106000000060000000600000006000000010000000412EA94FE000000040000000613E20100067ECE8912EA58FE064000F812FFACF90000000108C000FA11FC24FB0000000208C0010611FBE8FD033F67C113BBF500000000000569AC491340D4FE06E000F812C820F900000001096000FA0000000A11AA80FB08200106000000060000000600000002000000070000000400000007000000070000000311FC24FD00000003033F67C113BBF500000000000569AC490000000A000000080000000811FBE8FB08C0010611FBE8FD033F67C1000000060000000700000003000000080000000212FF70F908C000FA11FC24FB0000000208C001060000000711FC24FD00000003033F67C1000000060000000711FBE8FB08C00106000000060000000600000002000000010000000412EA94FE00000004064000F812FFACF90000000108C000FA11FC24FB0000000208C001060000000711FC24FD00000003033F67C1000000060000000511FBE8FB00000006000000020000000700000000128A40FB07800106128A40FD022A45810000000613E20100067ECE8912EA58FE064000F812FFACF900000001064000FA00000007000000060000000600000004000000060000000000000003128A7CFD00000003022A45810000000613E20100067ECE8912EA58FE064000F812FFACF900000001064000FA12FFACFB0000000208C00106000000060000000600000006000000060000000400000006000000000000000200000001"
theorem small_7892133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7892133_right_root small_7892133_right_fuel small_7892133_right_count small_7892133_right_encoded = true := by
  decide +kernel
theorem small_7892133_right_covered : CoveredBy scale carrier boxes small_7892133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7892133_right_root small_7892133_right_fuel small_7892133_right_count small_7892133_right_encoded small_7892133_right_checked

theorem cover_7892133 : CoveredBy scale carrier boxes root_7892133 := by
  apply coveredBy_split_literal root_7892133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2967.root small_7892133_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2967.covered
  · exact small_7892133_right_covered
#print axioms cover_7892133

def root_7892127 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892127_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7892127_left_fuel : Nat := 1
def small_7892127_left_count : Nat := 1
def small_7892127_left_encoded : String := "00000004"
theorem small_7892127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7892127_left_root small_7892127_left_fuel small_7892127_left_count small_7892127_left_encoded = true := by
  decide +kernel
theorem small_7892127_left_covered : CoveredBy scale carrier boxes small_7892127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7892127_left_root small_7892127_left_fuel small_7892127_left_count small_7892127_left_encoded small_7892127_left_checked

theorem cover_7892127 : CoveredBy scale carrier boxes root_7892127 := by
  apply coveredBy_split_literal root_7892127 small_7892127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7892133 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7892127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7892133
#print axioms cover_7892127

def root_7888953 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7888953 : CoveredBy scale carrier boxes root_7888953 := by
  apply coveredBy_split_literal root_7888953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7888954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7892127 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7888954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7892127
#print axioms cover_7888953

def root_7888947 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888947_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7888947_left_fuel : Nat := 1
def small_7888947_left_count : Nat := 1
def small_7888947_left_encoded : String := "00000000"
theorem small_7888947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7888947_left_root small_7888947_left_fuel small_7888947_left_count small_7888947_left_encoded = true := by
  decide +kernel
theorem small_7888947_left_covered : CoveredBy scale carrier boxes small_7888947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7888947_left_root small_7888947_left_fuel small_7888947_left_count small_7888947_left_encoded small_7888947_left_checked

theorem cover_7888947 : CoveredBy scale carrier boxes root_7888947 := by
  apply coveredBy_split_literal root_7888947 small_7888947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.root_7888953 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7888947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540.cover_7888953
#print axioms cover_7888947

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0540
