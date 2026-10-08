import TaoBundleAssembly0670
import TaoBundleChunkBatch0935
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671
def root_9969055 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969055_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969055_left_fuel : Nat := 29
def small_9969055_left_count : Nat := 425
def small_9969055_left_encoded : String := "120701000000000008A91303120701020000000108A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF0000000404548A01000000080000000800000008000000031207010600000003050000FE135D80FF0000000404548A011386710000000000000000051386AD0004548A03000000081386AD020CFD9BFB0F350CFA000000020000000500000008000000010000000000000005120700FA08A912FD12073D060000000800000003000000080000000212073D0208A912FB12073CFA0000000208A912FD12073D06050000FE135D80FF0000000404548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020000000A0F34D0FA00000006000000020F350D0200000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0000000A0F34D106000000030C9A86FA0F878CFB0000000200000008000000050F34D0FA00000006000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD000000060F34D1060000000300000006000000060000000100000000135D44FF04548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000005000000080F350D0200000006000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000008000000080F350D020CFD9BFB0000000600000006000000010000000000000004000000031207010600000003050000FE135D80FF0000000404548A0113867100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002000000050F34D0FA045489FD1386AD06078000FE00000008000000070000000300000007000000020F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A87020F87510300000001000000060F878D030C9A86FA0F878CFB000000020000000600000005000000010000000313867106000000030C9A87020F875103000000010C9A86FA000000070F8750FB078000FE128A7CFF00000004022A4581000000070000000700000005000000020F878D030C9A86FA0F878CFB000000020000000700000005000000010F34D0FA045489FD000000060000000700000002000000011386AD000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002078000FE128A7CFF00000004067ECE81000000080000000800000005000000050000000313867106000000030C9A86FA0F878CFB00000002078000FE128A7CFF00000004067ECE8112EA5900000000000000000512EA95000AD357830000000810D13D0200000008000000010000000000000005000000050F34D0FA045489FD1386AD060000000800000003138671060000000300000007000000020F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A87020F87510300000001000000060F878D030C9A86FA0F878CFB00000002000000060F8750FB078000FE128A7CFF000000040000000A0000000500000002000000010000000313867106000000030C9A87020F875103000000010C9A86FA0F878CFB00000002000000060F8750FB078000FE128A7CFF00000004067ECE8112EA590000000000022A457D000000060000000712EA9500022A457D0000000613E1C506000000030000000700000000128A40FF067ECE81000000070000000600000004000000020F878D030C9A86FA0F878CFB00000002078000FE128A7CFF00000004067ECE810000000712EA9500022A457D000000060000000700000000000000070F8750FB078000FE128A7CFF00000004067ECE8112EA5900000000000000000512EA9500022A457D13E201060DE7CA020000000A000000050000000313E1C506000000030DE7CA020000000700000005000000000000000500000002000000010F34D0FA045489FD00000006138671060000000300000007000000020000000100000000135D44FF04548A0113867100000000000CFD9C030F34D10200000001000000050F350D020CFD9BFB0F350CFA00000002045489FD000000050000000700000007000000011386AD000CFD9C030F34D102000000010CFD9BFB00000005000000080F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A870200000006000000050000000313867106000000030C9A870200000007000000050F34D0FA0000000600000002000000010000000000000004120700FA08A912FD000000061207010600000003050000FE135D80FF0000000404548A011386710000000000000000071386AD000CFD9C03000000070000000600000000000000070000000200000001"
theorem small_9969055_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969055_left_root small_9969055_left_fuel small_9969055_left_count small_9969055_left_encoded = true := by
  decide +kernel
theorem small_9969055_left_covered : CoveredBy scale carrier boxes small_9969055_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969055_left_root small_9969055_left_fuel small_9969055_left_count small_9969055_left_encoded small_9969055_left_checked

theorem cover_9969055 : CoveredBy scale carrier boxes root_9969055 := by
  apply coveredBy_split_literal root_9969055 small_9969055_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9969965 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9969055_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9969965
#print axioms cover_9969055

def root_9969050 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969050_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969050_right_fuel : Nat := 1
def small_9969050_right_count : Nat := 1
def small_9969050_right_encoded : String := "00000004"
theorem small_9969050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969050_right_root small_9969050_right_fuel small_9969050_right_count small_9969050_right_encoded = true := by
  decide +kernel
theorem small_9969050_right_covered : CoveredBy scale carrier boxes small_9969050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969050_right_root small_9969050_right_fuel small_9969050_right_count small_9969050_right_encoded small_9969050_right_checked

theorem cover_9969050 : CoveredBy scale carrier boxes root_9969050 := by
  apply coveredBy_split_literal root_9969050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9969055 small_9969050_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9969055
  · exact small_9969050_right_covered
#print axioms cover_9969050

def root_9951000 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951000 : CoveredBy scale carrier boxes root_9951000 := by
  apply coveredBy_split_literal root_9951000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9951001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9969050 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9951001
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9969050
#print axioms cover_9951000

def root_9950994 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950994_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950994_left_fuel : Nat := 1
def small_9950994_left_count : Nat := 1
def small_9950994_left_encoded : String := "00000003"
theorem small_9950994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9950994_left_root small_9950994_left_fuel small_9950994_left_count small_9950994_left_encoded = true := by
  decide +kernel
theorem small_9950994_left_covered : CoveredBy scale carrier boxes small_9950994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9950994_left_root small_9950994_left_fuel small_9950994_left_count small_9950994_left_encoded small_9950994_left_checked

theorem cover_9950994 : CoveredBy scale carrier boxes root_9950994 := by
  apply coveredBy_split_literal root_9950994 small_9950994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9951000 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9950994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9951000
#print axioms cover_9950994

def root_9950692 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950692_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950692_left_fuel : Nat := 19
def small_9950692_left_count : Nat := 145
def small_9950692_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A91303120701020000000108A912FB12073CFA0000000208A912FF12073CFE000000040500010600000008135D80FD0000000304548A010000000A1386AD0004548A03000000081386AD020CFD9BFB0000000A0000000800000001000000000000000A120700FA08A912FF00000006120700FE0500010600000005135D80FD0000000304548A0113867100000000000000000600000005000000040000000212073D0208A912FB12073CFA0000000208A912FF000000060000000A000000060000000112073D0008A91303120701020000000108A912FB00000007120700FA08A912FF00000008000000070000000212073D0208A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD0CFD9C010F34D10000000000000000060000000700000003135D80FD000000030CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0000000700000006000000060F350D000CFD9C030F34D10200000001000000070F350D020CFD9BFB00000007000000050000000100000000120700FE0000000500000004120700FA000000050000000200000001000000001151E8FF08A91301120701000000000008A913031207010200000001000000080000000612073D0008A913030000000812073D0208A912FB12073CFA000000020500010600000008135D80FD00000003050000FE135D80FF000000040CFD9C010000000800000008000000080000000600000001000000000000000400000003"
theorem small_9950692_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9950692_left_root small_9950692_left_fuel small_9950692_left_count small_9950692_left_encoded = true := by
  decide +kernel
theorem small_9950692_left_covered : CoveredBy scale carrier boxes small_9950692_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9950692_left_root small_9950692_left_fuel small_9950692_left_count small_9950692_left_encoded small_9950692_left_checked

theorem cover_9950692 : CoveredBy scale carrier boxes root_9950692 := by
  apply coveredBy_split_literal root_9950692 small_9950692_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9950994 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9950692_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9950994
#print axioms cover_9950692

def root_9950686 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950686_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950686_left_fuel : Nat := 1
def small_9950686_left_count : Nat := 1
def small_9950686_left_encoded : String := "00000002"
theorem small_9950686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9950686_left_root small_9950686_left_fuel small_9950686_left_count small_9950686_left_encoded = true := by
  decide +kernel
theorem small_9950686_left_covered : CoveredBy scale carrier boxes small_9950686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9950686_left_root small_9950686_left_fuel small_9950686_left_count small_9950686_left_encoded small_9950686_left_checked

theorem cover_9950686 : CoveredBy scale carrier boxes root_9950686 := by
  apply coveredBy_split_literal root_9950686 small_9950686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9950692 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9950686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9950692
#print axioms cover_9950686

def root_9975064 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975064_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975064_right_fuel : Nat := 17
def small_9975064_right_count : Nat := 107
def small_9975064_right_encoded : String := "135D44FB0CFD9C010F34D100000000000CFD9C030F34D10200000001045489FD0000000A0000000A0F350D020000000A000000010F350D000CFD9C030F34D10200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A8700000000070F878D010C9A86FE000000070000000A00000000000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FE000000070F8750FF028000FA0000000700000005000000040F878D010C9A86FE0F878CFF000000040000000600000005000000000F34D0FE00000006000000040F350D02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070000000A0000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A87020F875103000000010C9A86FE000000070F8750FF028000FA0000000700000007000000040F878D030C9A86FE000000070F8750FF028000FA000000070000000700000004000000010F878D010C9A87020000000A0F878D030000000A00000001000000000000000A000000010000000000000002"
theorem small_9975064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9975064_right_root small_9975064_right_fuel small_9975064_right_count small_9975064_right_encoded = true := by
  decide +kernel
theorem small_9975064_right_covered : CoveredBy scale carrier boxes small_9975064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9975064_right_root small_9975064_right_fuel small_9975064_right_count small_9975064_right_encoded small_9975064_right_checked

theorem cover_9975064 : CoveredBy scale carrier boxes root_9975064 := by
  apply coveredBy_split_literal root_9975064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3738.root small_9975064_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3738.covered
  · exact small_9975064_right_covered
#print axioms cover_9975064

def root_9975058 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975058_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975058_left_fuel : Nat := 1
def small_9975058_left_count : Nat := 1
def small_9975058_left_encoded : String := "00000004"
theorem small_9975058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9975058_left_root small_9975058_left_fuel small_9975058_left_count small_9975058_left_encoded = true := by
  decide +kernel
theorem small_9975058_left_covered : CoveredBy scale carrier boxes small_9975058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9975058_left_root small_9975058_left_fuel small_9975058_left_count small_9975058_left_encoded small_9975058_left_checked

theorem cover_9975058 : CoveredBy scale carrier boxes root_9975058 := by
  apply coveredBy_split_literal root_9975058 small_9975058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9975064 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9975058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9975064
#print axioms cover_9975058

def root_9975057 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975057_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975057_right_fuel : Nat := 9
def small_9975057_right_count : Nat := 31
def small_9975057_right_encoded : String := "120700FE050000FA135D80FB000000020CFD9C010F34D100000000000000000A0F350D000CFD9C030F34D10200000001000000070F350D02045489FD00000007000000080000000100000000135D44FB0CFD9C010000000A0F350D000CFD9C030F34D102000000010000000600000007000000000000000200000004"
theorem small_9975057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9975057_right_root small_9975057_right_fuel small_9975057_right_count small_9975057_right_encoded = true := by
  decide +kernel
theorem small_9975057_right_covered : CoveredBy scale carrier boxes small_9975057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9975057_right_root small_9975057_right_fuel small_9975057_right_count small_9975057_right_encoded small_9975057_right_checked

theorem cover_9975057 : CoveredBy scale carrier boxes root_9975057 := by
  apply coveredBy_split_literal root_9975057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9975058 small_9975057_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9975058
  · exact small_9975057_right_covered
#print axioms cover_9975057

def root_9975051 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975051_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9975051_left_fuel : Nat := 1
def small_9975051_left_count : Nat := 1
def small_9975051_left_encoded : String := "00000003"
theorem small_9975051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9975051_left_root small_9975051_left_fuel small_9975051_left_count small_9975051_left_encoded = true := by
  decide +kernel
theorem small_9975051_left_covered : CoveredBy scale carrier boxes small_9975051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9975051_left_root small_9975051_left_fuel small_9975051_left_count small_9975051_left_encoded small_9975051_left_checked

theorem cover_9975051 : CoveredBy scale carrier boxes root_9975051 := by
  apply coveredBy_split_literal root_9975051 small_9975051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9975057 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9975051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9975057
#print axioms cover_9975051

def root_9974797 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9974797_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9974797_left_fuel : Nat := 18
def small_9974797_left_count : Nat := 117
def small_9974797_left_encoded : String := "12073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040000000A0000000A0F350D020000000A000000010F350D000CFD9C030F34D102000000010CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000070F878D010000000700000000000000070F350D020CFD9BFD0F350D060CFD9BFF0000000700000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A87020000000A0F878D030000000A00000001000000000F34D0FE00000007000000040000000100000000135D44FB0CFD9C010F34D100000000000CFD9C030000000A0000000A0F350D000CFD9C030F34D102000000010CFD9BFD000000070F34D10600000003000000070F350D020CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040000000A00000007000000010000000000000002120700FE050000FA135D80FB000000020CFD9C010F34D100000000000000000A00000007135D44FB0CFD9C010000000700000007000000020000000400000003"
theorem small_9974797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9974797_left_root small_9974797_left_fuel small_9974797_left_count small_9974797_left_encoded = true := by
  decide +kernel
theorem small_9974797_left_covered : CoveredBy scale carrier boxes small_9974797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9974797_left_root small_9974797_left_fuel small_9974797_left_count small_9974797_left_encoded small_9974797_left_checked

theorem cover_9974797 : CoveredBy scale carrier boxes root_9974797 := by
  apply coveredBy_split_literal root_9974797 small_9974797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9975051 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9974797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9975051
#print axioms cover_9974797

def root_9974792 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9974792_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9974792_right_fuel : Nat := 1
def small_9974792_right_count : Nat := 1
def small_9974792_right_encoded : String := "00000001"
theorem small_9974792_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9974792_right_root small_9974792_right_fuel small_9974792_right_count small_9974792_right_encoded = true := by
  decide +kernel
theorem small_9974792_right_covered : CoveredBy scale carrier boxes small_9974792_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9974792_right_root small_9974792_right_fuel small_9974792_right_count small_9974792_right_encoded small_9974792_right_checked

theorem cover_9974792 : CoveredBy scale carrier boxes root_9974792 := by
  apply coveredBy_split_literal root_9974792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9974797 small_9974792_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9974797
  · exact small_9974792_right_covered
#print axioms cover_9974792

def root_9973958 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973958_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973958_left_fuel : Nat := 27
def small_9973958_left_count : Nat := 389
def small_9973958_left_encoded : String := "120701020000000108A912FD12073D0608A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D1000000000004548A0313867102000000010CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350CFE00000004000000050000000A1386AD020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A000000050000000A000000010F350D0004548A031386710200000001000000071386AD020CFD9BFD000000070F34D10600000003000000070000000100000000135D44FB0CFD9C010F34D1000000000004548A0313867102000000010CFD9BFD0F350D0600000007000000030000000A1386AD020CFD9BFD0000000A0000000A000000010F350D0004548A031386710200000001000000071386AD020CFD9BFD000000070F34D1060000000300000007000000010000000000000002120700FE000000070000000400000003120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9C010F34D1000000000004548A031386710200000001045489FD1386AD060CFD9BFF0F350CFE00000004000000050F34D0FE078000FA0000000A00000006000000040000000313867106000000030CFD9BFF0F350CFE0000000400000005000000061386AD02045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA128A7CFB000000020AD357810000000A10D13D000000000A0000000000000005000000050000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA128A7CFB000000020AD357810000000A10D13D00067ECE830000000612EA95020000000A000000010000000000000005000000050F34D0FE0000000600000004000000010F350D0004548A031386710200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FE0F878CFF00000004000000070000000500000000000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FE000000060F8750FF078000FA128A7CFB00000002022A4583000000060000000600000005000000040F878D010C9A86FE0F878CFF000000040000000600000005000000000F34D0FE00000006000000041386AD02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FE0F878CFF00000004000000070F8750FF078000FA128A7CFB00000002000000080000000500000004000000000F34D0FE00000007000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FE0F878CFF00000004000000070F8750FF078000FA128A7CFB00000002067ECE8312EA590200000001022A457D000000070000000612EA9502022A457D0000000713E1C506000000030000000600000001128A40FB067ECE83000000060000000600000002000000040F878D010C9A86FE0F878CFF00000004078000FA128A7CFB00000002067ECE830000000612EA9502022A457D000000070000000600000001000000060F8750FF078000FA128A7CFB00000002067ECE8312EA5902000000010000000512EA9502022A457D13E201060DE7CA0000000008000000050000000313E1C506000000030DE7CA000000000600000005000000010000000500000004000000000F34D0FE00000006000000040000000100000000135D44FB0CFD9C010F34D1000000000004548A03000000051386AD02045489FD000000050000000A000000010F350D0004548A031386710200000001045489FD1386AD060CFD9BFF0F350CFE00000004000000050000000600000003000000061386AD02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000000000700000005000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A8700000000060000000500000006000000010000000000000002120700FE050000FA135D80FB000000020CFD9C010F34D1000000000004548A030000000600000006000000070000000600000004"
theorem small_9973958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973958_left_root small_9973958_left_fuel small_9973958_left_count small_9973958_left_encoded = true := by
  decide +kernel
theorem small_9973958_left_covered : CoveredBy scale carrier boxes small_9973958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973958_left_root small_9973958_left_fuel small_9973958_left_count small_9973958_left_encoded small_9973958_left_checked

theorem cover_9973958 : CoveredBy scale carrier boxes root_9973958 := by
  apply coveredBy_split_literal root_9973958 small_9973958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9974792 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9973958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9974792
#print axioms cover_9973958

def root_9973953 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973953_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973953_right_fuel : Nat := 1
def small_9973953_right_count : Nat := 1
def small_9973953_right_encoded : String := "00000000"
theorem small_9973953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973953_right_root small_9973953_right_fuel small_9973953_right_count small_9973953_right_encoded = true := by
  decide +kernel
theorem small_9973953_right_covered : CoveredBy scale carrier boxes small_9973953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973953_right_root small_9973953_right_fuel small_9973953_right_count small_9973953_right_encoded small_9973953_right_checked

theorem cover_9973953 : CoveredBy scale carrier boxes root_9973953 := by
  apply coveredBy_split_literal root_9973953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9973958 small_9973953_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9973958
  · exact small_9973953_right_covered
#print axioms cover_9973953

def root_9973763 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973763_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973763_left_fuel : Nat := 19
def small_9973763_left_count : Nat := 93
def small_9973763_left_encoded : String := "120701000000000008A91303120701020000000108A912FD12073D0608A912FF12073CFE00000004050000FA135D80FB0000000204548A010000000A1386AD0004548A030000000A0000000A000000000000000A0000000A00000003120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A010000000A1386AD0004548A031386710200000001000000051386AD02045489FD0000000A0000000A0000000100000000000000050000000A12073D0208A912FD12073D0608A912FF12073CFE00000004050000FA0000000A0000000A0000000A00000003120701060000000308A912FF12073CFE00000004050000FA135D80FB0000000204548A0113867100000000000CFD9C030000000A0F350D020000000A000000011386AD000CFD9C030000000A0F350D02045489FD0000000A13867106000000030CFD9BFF0F350CFE000000040C9A87020000000A0000000A0000000A00000001000000000000000A0000000A00000001"
theorem small_9973763_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973763_left_root small_9973763_left_fuel small_9973763_left_count small_9973763_left_encoded = true := by
  decide +kernel
theorem small_9973763_left_covered : CoveredBy scale carrier boxes small_9973763_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973763_left_root small_9973763_left_fuel small_9973763_left_count small_9973763_left_encoded small_9973763_left_checked

theorem cover_9973763 : CoveredBy scale carrier boxes root_9973763 := by
  apply coveredBy_split_literal root_9973763 small_9973763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9973953 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9973763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9973953
#print axioms cover_9973763

def root_9973757 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973757_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973757_left_fuel : Nat := 1
def small_9973757_left_count : Nat := 1
def small_9973757_left_encoded : String := "00000004"
theorem small_9973757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973757_left_root small_9973757_left_fuel small_9973757_left_count small_9973757_left_encoded = true := by
  decide +kernel
theorem small_9973757_left_covered : CoveredBy scale carrier boxes small_9973757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973757_left_root small_9973757_left_fuel small_9973757_left_count small_9973757_left_encoded small_9973757_left_checked

theorem cover_9973757 : CoveredBy scale carrier boxes root_9973757 := by
  apply coveredBy_split_literal root_9973757 small_9973757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9973763 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9973757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9973763
#print axioms cover_9973757

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671
