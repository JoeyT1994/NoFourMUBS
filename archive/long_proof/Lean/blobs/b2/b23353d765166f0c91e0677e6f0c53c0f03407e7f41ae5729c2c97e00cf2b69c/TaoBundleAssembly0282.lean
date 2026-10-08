import TaoBundleAssembly0281
import TaoBundleChunkBatch0367
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282
def root_3897083 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897083_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897083_left_fuel : Nat := 34
def small_3897083_left_count : Nat := 279
def small_3897083_left_encoded : String := "138670F60CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF0000000400000008000000080F8750FB0C9A86FE0F878CFF000000040000000A0F8750FF0000000500000004000000020F34D0FE0C9A86FA0F878CFB00000002000000090000000A000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004000000090F8750FF0280010213D7B0F9022A45810000000913E200F600000000022A457D13E201060DE7C9FA000000080E5FD8FB0B4D43FE00000009000000080000000200000003000000090000000113D7ECF900000001022A45810000000813E200F600000000022A457D0000000800000009000000040F8750FB0C9A86FE0F878CFF000000040280010213D7B0F9022A4581000000090000000A0000000113D7ECF900000001022A45810000000913E200F600000000022A457D13E201060B4D43FA000000090000000A00000003000000090F8750FF0280010213D7B0F9022A458113E1C4F6022A457D0000000513E1C50600000003000000090000000013E200F600000000022A457D13E201060B4D43FA10804CFB000000020B4D43FE0000000A108010FF00000005000000040000000A0000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE00000009108010FF01400102000000090000000900000004108010FB0B4D43FE0000000A108010FF014001020000000A13F614F900000001033F67C1000000050000000A00000004000000020000000113D7ECF900000001022A458113E1C4F6022A457D0000000513E1C506000000030B4D43FA00000008108010FB00000005000000020000000013E200F600000000022A457D13E201060B4D43FA10804CFB0000000200000008108010FB00000005000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE00000009108010FF03C0010213A510F9000000090000000113A54CF9000000010000000800000004108010FB0B4D43FE10804CFF0000000403C0010213A510F9000000090000000113A54CF900000001033F67C10000000913BC30F6000000000115233D13F895060AA6A27A000000080000000A0000000300000009108010FF03C0010213A510F9033F67C10000000513BC30F6000000000115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0000000A000000020000000113A54CF900000001033F67C10000000513BC30F6000000000115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0AA6A27E10EDACFF000000040000000910ED70FF046001021383DCF90000000500000001000000050000000400000002000000040000000200000004000000020F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF00000008000000080000000313867106000000030CFD9BFF00000009000000090000000200000000"
theorem small_3897083_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897083_left_root small_3897083_left_fuel small_3897083_left_count small_3897083_left_encoded = true := by
  decide +kernel
theorem small_3897083_left_covered : CoveredBy scale carrier boxes small_3897083_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897083_left_root small_3897083_left_fuel small_3897083_left_count small_3897083_left_encoded small_3897083_left_checked

theorem cover_3897083 : CoveredBy scale carrier boxes root_3897083 := by
  apply coveredBy_split_literal root_3897083 small_3897083_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_3897679 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3897083_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_3897679
#print axioms cover_3897083

def root_3897078 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897078_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897078_right_fuel : Nat := 1
def small_3897078_right_count : Nat := 1
def small_3897078_right_encoded : String := "00000001"
theorem small_3897078_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897078_right_root small_3897078_right_fuel small_3897078_right_count small_3897078_right_encoded = true := by
  decide +kernel
theorem small_3897078_right_covered : CoveredBy scale carrier boxes small_3897078_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897078_right_root small_3897078_right_fuel small_3897078_right_count small_3897078_right_encoded small_3897078_right_checked

theorem cover_3897078 : CoveredBy scale carrier boxes root_3897078 := by
  apply coveredBy_split_literal root_3897078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897083 small_3897078_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897083
  · exact small_3897078_right_covered
#print axioms cover_3897078

def root_3897077 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3897077 : CoveredBy scale carrier boxes root_3897077 := by
  apply coveredBy_split_literal root_3897077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897078 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1465.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897078
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1465.covered
#print axioms cover_3897077

def root_3897071 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897071_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897071_left_fuel : Nat := 1
def small_3897071_left_count : Nat := 1
def small_3897071_left_encoded : String := "00000004"
theorem small_3897071_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897071_left_root small_3897071_left_fuel small_3897071_left_count small_3897071_left_encoded = true := by
  decide +kernel
theorem small_3897071_left_covered : CoveredBy scale carrier boxes small_3897071_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897071_left_root small_3897071_left_fuel small_3897071_left_count small_3897071_left_encoded small_3897071_left_checked

theorem cover_3897071 : CoveredBy scale carrier boxes root_3897071 := by
  apply coveredBy_split_literal root_3897071 small_3897071_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897077 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3897071_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897077
#print axioms cover_3897071

def root_3897070 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897070_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897070_right_fuel : Nat := 13
def small_3897070_right_count : Nat := 45
def small_3897070_right_encoded : String := "120700FE05000102135D44F904548A01000000091386ACF6000000000CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A86FA00000007000000070000000500000003000000050000000900000001135D80F90000000104548A01138670F60CFD9BFB0F350CFA00000002045489FD000000070000000900000009000000001386ACF6000000000CFD9BFB0F350CFA00000002045489FD00000007000000050000000500000004"
theorem small_3897070_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897070_right_root small_3897070_right_fuel small_3897070_right_count small_3897070_right_encoded = true := by
  decide +kernel
theorem small_3897070_right_covered : CoveredBy scale carrier boxes small_3897070_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897070_right_root small_3897070_right_fuel small_3897070_right_count small_3897070_right_encoded small_3897070_right_checked

theorem cover_3897070 : CoveredBy scale carrier boxes root_3897070 := by
  apply coveredBy_split_literal root_3897070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897071 small_3897070_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897071
  · exact small_3897070_right_covered
#print axioms cover_3897070

def root_3897064 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897064_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3897064_left_fuel : Nat := 1
def small_3897064_left_count : Nat := 1
def small_3897064_left_encoded : String := "00000003"
theorem small_3897064_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3897064_left_root small_3897064_left_fuel small_3897064_left_count small_3897064_left_encoded = true := by
  decide +kernel
theorem small_3897064_left_covered : CoveredBy scale carrier boxes small_3897064_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3897064_left_root small_3897064_left_fuel small_3897064_left_count small_3897064_left_encoded small_3897064_left_checked

theorem cover_3897064 : CoveredBy scale carrier boxes root_3897064 := by
  apply coveredBy_split_literal root_3897064 small_3897064_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897070 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3897064_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897070
#print axioms cover_3897064

def root_3896644 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896644_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896644_left_fuel : Nat := 22
def small_3896644_left_count : Nat := 195
def small_3896644_left_encoded : String := "12073D0608A912FF12073CFE0000000405000102135D44F904548A01138670F60CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030CFD9BFF00000005000000080F34D0FA0CFD9BFD0F350D060CFD9BFF0000000500000008000000030F34D106000000030000000800000002000000001386ACF6000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000050000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010213D7B0F9067ECE810000000812EA94F6000000000000000A00000001000000080F8750FF0280010213D7B0F9000000080000000100000008000000040F8750FB0C9A86FE0F878CFF000000040000000A0F8750FF0000000500000004000000020F34D0FE0C9A86FA0000000700000007000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D106000000030CFD9BFF0F350CFE0000000400000008000000080000000200000001135D80F90000000104548A01138670F60CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0000000500000007000000030F34D106000000030CFD9BFF0F350CFE0000000400000008000000080F34D0FA0CFD9BFD000000080F34D106000000030000000800000002000000001386ACF6000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA000000080F8750FB00000007000000020F34D0FE00000007000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A8706000000070000000800000007000000030F34D106000000030000000800000002120700FE05000102135D44F904548A01138670F60CFD9BFB0000000A0F34D0FA0000000800000002000000001386ACF6000000000CFD9BFB000000070F34D0FA000000080000000200000001135D80F90000000104548A0100000008000000070000000400000003"
theorem small_3896644_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896644_left_root small_3896644_left_fuel small_3896644_left_count small_3896644_left_encoded = true := by
  decide +kernel
theorem small_3896644_left_covered : CoveredBy scale carrier boxes small_3896644_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896644_left_root small_3896644_left_fuel small_3896644_left_count small_3896644_left_encoded small_3896644_left_checked

theorem cover_3896644 : CoveredBy scale carrier boxes root_3896644 := by
  apply coveredBy_split_literal root_3896644 small_3896644_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3897064 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3896644_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3897064
#print axioms cover_3896644

def root_3896638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896638_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896638_left_fuel : Nat := 1
def small_3896638_left_count : Nat := 1
def small_3896638_left_encoded : String := "00000002"
theorem small_3896638_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896638_left_root small_3896638_left_fuel small_3896638_left_count small_3896638_left_encoded = true := by
  decide +kernel
theorem small_3896638_left_covered : CoveredBy scale carrier boxes small_3896638_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896638_left_root small_3896638_left_fuel small_3896638_left_count small_3896638_left_encoded small_3896638_left_checked

theorem cover_3896638 : CoveredBy scale carrier boxes root_3896638 := by
  apply coveredBy_split_literal root_3896638 small_3896638_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896644 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3896638_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896644
#print axioms cover_3896638

def root_3896637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896637_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896637_right_fuel : Nat := 19
def small_3896637_right_count : Nat := 215
def small_3896637_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F904548A01138670F6045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040000000800000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D106000000030000000800000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D106000000030CFD9BFF0F350CFE0000000400000008000000080000000200000001135D80F90000000104548A01138670F6045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040000000800000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D106000000030000000800000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0000000800000008000000030000000800000008000000030F34D106000000030000000800000002120700FE000000080000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F904548A01000000091386ACF600000000045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040000000800000008000000031386710600000003000000090000000900000001135D80F90000000104548A01138670F6045489FB1386ACFA00000002045489FD000000080000000800000009000000001386ACF600000000045489FB1386ACFA00000002045489FD000000080000000500000005120700FE000000090000000400000002"
theorem small_3896637_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896637_right_root small_3896637_right_fuel small_3896637_right_count small_3896637_right_encoded = true := by
  decide +kernel
theorem small_3896637_right_covered : CoveredBy scale carrier boxes small_3896637_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896637_right_root small_3896637_right_fuel small_3896637_right_count small_3896637_right_encoded small_3896637_right_checked

theorem cover_3896637 : CoveredBy scale carrier boxes root_3896637 := by
  apply coveredBy_split_literal root_3896637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896638 small_3896637_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896638
  · exact small_3896637_right_covered
#print axioms cover_3896637

def root_3896632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896632_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896632_right_fuel : Nat := 1
def small_3896632_right_count : Nat := 1
def small_3896632_right_encoded : String := "00000000"
theorem small_3896632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896632_right_root small_3896632_right_fuel small_3896632_right_count small_3896632_right_encoded = true := by
  decide +kernel
theorem small_3896632_right_covered : CoveredBy scale carrier boxes small_3896632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896632_right_root small_3896632_right_fuel small_3896632_right_count small_3896632_right_encoded small_3896632_right_checked

theorem cover_3896632 : CoveredBy scale carrier boxes root_3896632 := by
  apply coveredBy_split_literal root_3896632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896637 small_3896632_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896637
  · exact small_3896632_right_covered
#print axioms cover_3896632

def root_3905921 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3905921_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3905921_right_fuel : Nat := 20
def small_3905921_right_count : Nat := 233
def small_3905921_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F90CFD9C010F34D0F6045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000008000000030000000800000008000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000080000000800000008138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0000000800000008000000030F878CFD000000030000000800000008000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE00000008000000050000000500000002000000000F350CF600000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86F60F878D010C9A87060F8750FD000000080000000300000008000000000F875101000000000000000800000008000000030F34D106000000030CFD9BFF0F350CFE000000040000000500000005138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86F60F878D010C9A87060F8750FD000000080000000300000008000000000F87510100000000000000050000000500000003000000050000000200000001135D80F9000000010CFD9C010F34D0F6045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000007000000030000000800000007000000030F34D106000000030CFD9BFF0F350CFE000000040000000800000005138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0000000800000008000000030000000800000008000000030F34D106000000030000000500000002000000000F350CF600000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86F60F878D0100000008000000000000000800000005000000030000000500000005120700FE05000102135D44F90CFD9C010F34D0F6045489FB1386ACFA000000020CFD9BFD000000070F34D106000000030000000500000008000000000F350CF6000000000000000500000001135D80F9000000010CFD9C0100000008000000050000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F90CFD9C010F34D0F6045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040000000500000005000000030000000500000005000000000000000500000001000000050000000500000002"
theorem small_3905921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3905921_right_root small_3905921_right_fuel small_3905921_right_count small_3905921_right_encoded = true := by
  decide +kernel
theorem small_3905921_right_covered : CoveredBy scale carrier boxes small_3905921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3905921_right_root small_3905921_right_fuel small_3905921_right_count small_3905921_right_encoded small_3905921_right_checked

theorem cover_3905921 : CoveredBy scale carrier boxes root_3905921 := by
  apply coveredBy_split_literal root_3905921 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1466.root small_3905921_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1466.covered
  · exact small_3905921_right_covered
#print axioms cover_3905921

def root_3905915 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3905915_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3905915_left_fuel : Nat := 1
def small_3905915_left_count : Nat := 1
def small_3905915_left_encoded : String := "00000000"
theorem small_3905915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3905915_left_root small_3905915_left_fuel small_3905915_left_count small_3905915_left_encoded = true := by
  decide +kernel
theorem small_3905915_left_covered : CoveredBy scale carrier boxes small_3905915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3905915_left_root small_3905915_left_fuel small_3905915_left_count small_3905915_left_encoded small_3905915_left_checked

theorem cover_3905915 : CoveredBy scale carrier boxes root_3905915 := by
  apply coveredBy_split_literal root_3905915 small_3905915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3905921 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3905915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3905921
#print axioms cover_3905915

def root_3896631 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3896631 : CoveredBy scale carrier boxes root_3896631 := by
  apply coveredBy_split_literal root_3896631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3905915 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3905915
#print axioms cover_3896631

def root_3896625 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896625_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896625_left_fuel : Nat := 1
def small_3896625_left_count : Nat := 1
def small_3896625_left_encoded : String := "00000004"
theorem small_3896625_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896625_left_root small_3896625_left_fuel small_3896625_left_count small_3896625_left_encoded = true := by
  decide +kernel
theorem small_3896625_left_covered : CoveredBy scale carrier boxes small_3896625_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896625_left_root small_3896625_left_fuel small_3896625_left_count small_3896625_left_encoded small_3896625_left_checked

theorem cover_3896625 : CoveredBy scale carrier boxes root_3896625 := by
  apply coveredBy_split_literal root_3896625 small_3896625_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896631 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3896625_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896631
#print axioms cover_3896625

def root_3909570 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3909570 : CoveredBy scale carrier boxes root_3909570 := by
  apply coveredBy_split_literal root_3909570 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1467.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1468.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1467.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1468.covered
#print axioms cover_3909570

def root_3909564 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909564_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909564_left_fuel : Nat := 1
def small_3909564_left_count : Nat := 1
def small_3909564_left_encoded : String := "00000003"
theorem small_3909564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909564_left_root small_3909564_left_fuel small_3909564_left_count small_3909564_left_encoded = true := by
  decide +kernel
theorem small_3909564_left_covered : CoveredBy scale carrier boxes small_3909564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909564_left_root small_3909564_left_fuel small_3909564_left_count small_3909564_left_encoded small_3909564_left_checked

theorem cover_3909564 : CoveredBy scale carrier boxes root_3909564 := by
  apply coveredBy_split_literal root_3909564 small_3909564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3909570 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3909564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3909570
#print axioms cover_3909564

def root_3909334 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909334_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909334_left_fuel : Nat := 15
def small_3909334_left_count : Nat := 109
def small_3909334_left_encoded : String := "12073D0605000102135D44F9050000FE135D80FF0000000404548A01000000051386ACF6000000000CFD9BFB000000050F34D0FA0CFD9BFD000000050F34D106000000030280010213D7B0F9078000FE0000000800000006000000010000000800000002135D44FF04548A01000000051386ACF6000000000CFD9BFB000000050F34D0FA0CFD9BFD000000050F34D1060000000300000006000000020000000400000001135D80F900000001050000FE135D80FF0000000404548A01138670F60CFD9BFB000000050F34D0FA0CFD9BFD000000050F34D106000000030000000800000002000000001386ACF6000000000CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030C9A86FA0F878CFB000000020780010200000008000000080F8750FB00000005000000020F34D0FA0CFD9BFD0F350D060C9A87060F8750FD00000005000000030F878CFD0000000300000008000000030F34D106000000030000000800000002135D44FF04548A01000000051386ACF6000000000CFD9BFB000000050F34D0FA0CFD9BFD000000050F34D10600000003078001020000000800000008000000020000000400000003"
theorem small_3909334_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909334_left_root small_3909334_left_fuel small_3909334_left_count small_3909334_left_encoded = true := by
  decide +kernel
theorem small_3909334_left_covered : CoveredBy scale carrier boxes small_3909334_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909334_left_root small_3909334_left_fuel small_3909334_left_count small_3909334_left_encoded small_3909334_left_checked

theorem cover_3909334 : CoveredBy scale carrier boxes root_3909334 := by
  apply coveredBy_split_literal root_3909334 small_3909334_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3909564 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3909334_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3909564
#print axioms cover_3909334

def root_3909328 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909328_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909328_left_fuel : Nat := 1
def small_3909328_left_count : Nat := 1
def small_3909328_left_encoded : String := "00000002"
theorem small_3909328_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909328_left_root small_3909328_left_fuel small_3909328_left_count small_3909328_left_encoded = true := by
  decide +kernel
theorem small_3909328_left_covered : CoveredBy scale carrier boxes small_3909328_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909328_left_root small_3909328_left_fuel small_3909328_left_count small_3909328_left_encoded small_3909328_left_checked

theorem cover_3909328 : CoveredBy scale carrier boxes root_3909328 := by
  apply coveredBy_split_literal root_3909328 small_3909328_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3909334 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3909328_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3909334
#print axioms cover_3909328

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282
