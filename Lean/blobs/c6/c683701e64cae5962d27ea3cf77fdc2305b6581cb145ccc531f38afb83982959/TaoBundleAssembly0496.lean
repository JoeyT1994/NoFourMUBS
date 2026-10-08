import TaoBundleAssembly0492
import TaoBundleAssembly0495
import TaoBundleChunkBatch0681
import TaoBundleChunkBatch0682
import TaoBundleChunkBatch0683
import TaoBundleChunkBatch0684
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496
def root_7231125 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231125_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231125_left_fuel : Nat := 28
def small_7231125_left_count : Nat := 403
def small_7231125_left_encoded : String := "12073D0608A912FF12073CFE000000040CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040000000A0000000500000005000000000F878CF7000000000000000A0F34D0FE0000000A000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87060000000A0000000A000000000000000A0000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF000000040AD357830000000810D13D020AD3577B10D13CFA000000020000000800000008000000010F8750FF0000000800000004000000000F878CF7000000000C9A86FE0F878CFF000000040000000A0F8750FF0AD357830000000810D13D020000000800000001000000040F34D0FE0000000A00000004000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FA0F878CFB00000002000000060000000A0F878D030000000A00000001000000000F878CF7000000000000000A0F34D0FE0000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040AD3577D0000000A10D10106000000030B4D4400108010F70000000A000000000000000A0F8750FF0AD3577D10D13D06000000060000000310D10106000000030B4D44000000000810804CF7000000000B4D440210801103000000010000000600000008000000040F8750FB0C9A86FE0000000A0F8750FF0AD3577D0000000510D10106000000030000000500000004000000020F878D030C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040000000A0F8750FF0AD3577D0000000500000008000000040F8750FB0C9A86FE0000000A000000050000000200000001000000000F878CF7000000000C9A87020F875103000000010C9A86FA0F878CFB000000020C9A86FE0000000A0F8750FF00000006000000040000000A0F878D030C9A86FA0F878CFB000000020C9A86FE0000000A0F8750FF0AD3577D0000000510D10106000000030000000A000000040000000A000000010F34D0FE0C9A87000F8750F70000000A000000000000000A000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FE000000060F8750FF00000006000000040F878D030C9A86FE0F878CFF000000040AD3577B10D13CFA000000020AD3577D0000000A10D10106000000030B4D4400108010F70000000A000000000000000A10D100FA0AD3577D0000000610D10106000000030B4D4400108010F7000000080000000000000006000000020F8750FF0AD3577B10D13CFA000000020AD3577D000000080000000810D100FA00000006000000020000000400000001000000000F878CF7000000000C9A87020F87510300000001000000060F878D030C9A86FE0F878CFF000000040AD3577B0000000A000000060F8750FF0000000600000004000000010F34D0FE0C9A87000F8750F70C9A87020000000A0F878D030000000A00000001000000000F878CF7000000000000000A000000040000000200000001000000000F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0000000A0F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0000000A0F8750FF0AD357770000000A10D10100000000000000000A000000040000000A000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0000000A0F34D106000000030CFD9BFF0F350CFE000000040C9A87020000000A0F878D030000000A000000010000000A0F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0000000A000000040000000200000001120700FE0CFD9BF70F350D000CFD9C030000000A0F350D020CFD9BFB0000000A0000000A00000001000000000F34D100000000000000000A0000000400000003"
theorem small_7231125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7231125_left_root small_7231125_left_fuel small_7231125_left_count small_7231125_left_encoded = true := by
  decide +kernel
theorem small_7231125_left_covered : CoveredBy scale carrier boxes small_7231125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7231125_left_root small_7231125_left_fuel small_7231125_left_count small_7231125_left_encoded small_7231125_left_checked

theorem cover_7231125 : CoveredBy scale carrier boxes root_7231125 := by
  apply coveredBy_split_literal root_7231125 small_7231125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7232001 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7231125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7232001
#print axioms cover_7231125

def root_7231119 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231119_left_fuel : Nat := 1
def small_7231119_left_count : Nat := 1
def small_7231119_left_encoded : String := "00000002"
theorem small_7231119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7231119_left_root small_7231119_left_fuel small_7231119_left_count small_7231119_left_encoded = true := by
  decide +kernel
theorem small_7231119_left_covered : CoveredBy scale carrier boxes small_7231119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7231119_left_root small_7231119_left_fuel small_7231119_left_count small_7231119_left_encoded small_7231119_left_checked

theorem cover_7231119 : CoveredBy scale carrier boxes root_7231119 := by
  apply coveredBy_split_literal root_7231119 small_7231119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7231125 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7231119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7231125
#print axioms cover_7231119

def root_7231118 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231118_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231118_right_fuel : Nat := 22
def small_7231118_right_count : Nat := 359
def small_7231118_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE000000040CFD9BF70F350D000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF000000040AD357830000000810D13D0200000008000000010F8750FF0000000800000004000000000F878CF7000000000C9A86FE0F878CFF000000040AD3578300000008000000060F8750FF00000006000000040F34D0FE0C9A87000F8750F700000009000000000000000900000004138670FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0C9A87000F8750F700000009000000000000000600000004000000020F350D02045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0C9A87000F8750F70C9A8702000000060F878D03067ECE7B0000000A00000006000000010000000000000006000000040000000600000001000000000F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060000000A0000000600000006120700FE0CFD9BF70F350D000CFD9C030F34D102000000010000000A0F350D02045489FB1386ACFA000000020CFD9BFD0000000A000000050000000500000001000000000F34D100000000000000000A0000000400000003120701060000000308A912FF12073CFE000000040CFD9BF70F350D000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F8750F70000000900000000000000090F34D0FE00000009000000040000000300000009138670FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A870000000008000000070F34D0FE00000009000000040000000300000009000000020F350D02045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FE000000060F8750FF00000006000000040F878D030C9A86FE000000090F8750FF000000080000000400000001000000000F878CF7000000000C9A8702000000060F878D030C9A86FE000000060F8750FF0000000600000004000000010F34D0FE0C9A8700000000050F878CF7000000000C9A87020000000500000009000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A86FE000000050F8750FF000000070000000400000009000000000F878CF7000000000C9A87020F875103000000010C9A86FE0000000500000007000000090F34D0FE0000000500000004138670FA045489FD1386AD060CFD9BFF000000060F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000000000500000007000000050000000200000001000000000F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF000000090F34D0FE00000009000000040000000300000009138670FA045489FD1386AD060CFD9BFF000000060F34D0FE00000009000000040000000300000007000000020F350D02045489FB1386ACFA00000002045489FD1386AD060CFD9BFF000000060F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A8702000000070F878D0300000007000000010F34D0FE0000000500000004138670FA045489FD0000000613867106000000030CFD9BFF00000006000000050000000200000001120700FE0CFD9BF70F350D000CFD9C030F34D102000000010000000900000005000000000F34D100000000000CFD9C030F34D1020000000100000009000000050000000400000002"
theorem small_7231118_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7231118_right_root small_7231118_right_fuel small_7231118_right_count small_7231118_right_encoded = true := by
  decide +kernel
theorem small_7231118_right_covered : CoveredBy scale carrier boxes small_7231118_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7231118_right_root small_7231118_right_fuel small_7231118_right_count small_7231118_right_encoded small_7231118_right_checked

theorem cover_7231118 : CoveredBy scale carrier boxes root_7231118 := by
  apply coveredBy_split_literal root_7231118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7231119 small_7231118_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7231119
  · exact small_7231118_right_covered
#print axioms cover_7231118

def root_7231113 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231113_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7231113_right_fuel : Nat := 1
def small_7231113_right_count : Nat := 1
def small_7231113_right_encoded : String := "00000001"
theorem small_7231113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7231113_right_root small_7231113_right_fuel small_7231113_right_count small_7231113_right_encoded = true := by
  decide +kernel
theorem small_7231113_right_covered : CoveredBy scale carrier boxes small_7231113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7231113_right_root small_7231113_right_fuel small_7231113_right_count small_7231113_right_encoded small_7231113_right_checked

theorem cover_7231113 : CoveredBy scale carrier boxes root_7231113 := by
  apply coveredBy_split_literal root_7231113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7231118 small_7231113_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7231118
  · exact small_7231113_right_covered
#print axioms cover_7231113

def root_7230549 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230549_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230549_left_fuel : Nat := 19
def small_7230549_left_count : Nat := 259
def small_7230549_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE000000040CFD9BF70F350D0004548A0313867102000000010CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9BFD0000000A0F34D106000000030000000A000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0000000A0F34D106000000030000000A0F34D0FA0CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A870000000008000000090000000A0000000200000001000000000F34D1000000000004548A030000000A1386AD020CFD9BFB0000000A0000000A00000001120700FE0000000A0000000400000003120701060000000308A912FF12073CFE000000040CFD9BF70F350D0004548A0313867102000000010CFD9BFB000000090F34D0FA00000009000000021386AD020CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE00000004000000050F34D0FE000000090000000400000003000000090F34D0FA000000090000000200000001000000000F34D1000000000004548A031386710200000001000000091386AD020CFD9BFB0F350CFA00000002045489FD0000000A000000090F34D0FA000000090000000200000001120700FE0CFD9BF70F350D0004548A03000000091386AD020000000900000001000000000F34D100000000000000000900000004120700FA08A912FD12073D0608A912FF12073CFE000000040CFD9BF70F350D0004548A031386710200000001045489FB1386ACFA000000020CFD9BFD0000000A00000009138670FA0CFD9BFD0F350D060000000A0000000300000008000000021386AD02045489FB1386ACFA000000020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350CFE00000004000000080F34D0FE0000000900000004138670FA0CFD9BFD0F350D060CFD9BFF000000060000000A000000030F34D106000000030CFD9BFF000000080F34D0FE00000009000000040000000200000001000000000F34D1000000000004548A031386710200000001045489FB1386ACFA000000020CFD9BFD0000000A00000009138670FA0CFD9BFD0F350D06000000080000000300000008000000021386AD02045489FB1386ACFA000000020CFD9BFD0000000A0F34D106000000030CFD9BFF000000090000000A138670FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060000000A0000000200000001120700FE0CFD9BF70F350D000000000A000000000F34D1000000000004548A030000000A0000000A0000000400000003120701060000000308A912FF12073CFE000000040CFD9BF70F350D0004548A03000000091386AD020000000900000001000000000F34D1000000000000000009120700FE000000090000000400000002"
theorem small_7230549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230549_left_root small_7230549_left_fuel small_7230549_left_count small_7230549_left_encoded = true := by
  decide +kernel
theorem small_7230549_left_covered : CoveredBy scale carrier boxes small_7230549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230549_left_root small_7230549_left_fuel small_7230549_left_count small_7230549_left_encoded small_7230549_left_checked

theorem cover_7230549 : CoveredBy scale carrier boxes root_7230549 := by
  apply coveredBy_split_literal root_7230549 small_7230549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7231113 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7230549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7231113
#print axioms cover_7230549

def root_7230544 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230544_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230544_right_fuel : Nat := 1
def small_7230544_right_count : Nat := 1
def small_7230544_right_encoded : String := "00000000"
theorem small_7230544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230544_right_root small_7230544_right_fuel small_7230544_right_count small_7230544_right_encoded = true := by
  decide +kernel
theorem small_7230544_right_covered : CoveredBy scale carrier boxes small_7230544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230544_right_root small_7230544_right_fuel small_7230544_right_count small_7230544_right_encoded small_7230544_right_checked

theorem cover_7230544 : CoveredBy scale carrier boxes root_7230544 := by
  apply coveredBy_split_literal root_7230544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230549 small_7230544_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230549
  · exact small_7230544_right_covered
#print axioms cover_7230544

def root_7230543 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7230543 : CoveredBy scale carrier boxes root_7230543 := by
  apply coveredBy_split_literal root_7230543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2724.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230544
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2724.covered
#print axioms cover_7230543

def root_7230537 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230537_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230537_left_fuel : Nat := 1
def small_7230537_left_count : Nat := 1
def small_7230537_left_encoded : String := "00000004"
theorem small_7230537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230537_left_root small_7230537_left_fuel small_7230537_left_count small_7230537_left_encoded = true := by
  decide +kernel
theorem small_7230537_left_covered : CoveredBy scale carrier boxes small_7230537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230537_left_root small_7230537_left_fuel small_7230537_left_count small_7230537_left_encoded small_7230537_left_checked

theorem cover_7230537 : CoveredBy scale carrier boxes root_7230537 := by
  apply coveredBy_split_literal root_7230537 small_7230537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230543 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7230537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230543
#print axioms cover_7230537

def root_7230536 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7230536 : CoveredBy scale carrier boxes root_7230536 := by
  apply coveredBy_split_literal root_7230536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230537 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2725.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230537
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2725.covered
#print axioms cover_7230536

def root_7230530 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230530_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230530_left_fuel : Nat := 1
def small_7230530_left_count : Nat := 1
def small_7230530_left_encoded : String := "00000003"
theorem small_7230530_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230530_left_root small_7230530_left_fuel small_7230530_left_count small_7230530_left_encoded = true := by
  decide +kernel
theorem small_7230530_left_covered : CoveredBy scale carrier boxes small_7230530_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230530_left_root small_7230530_left_fuel small_7230530_left_count small_7230530_left_encoded small_7230530_left_checked

theorem cover_7230530 : CoveredBy scale carrier boxes root_7230530 := by
  apply coveredBy_split_literal root_7230530 small_7230530_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230536 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7230530_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230536
#print axioms cover_7230530

def root_7230182 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230182_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230182_left_fuel : Nat := 20
def small_7230182_left_count : Nat := 163
def small_7230182_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A91303120701020000000108A912FB0000000A120700FA08A912FF12073CFE000000040000000A0000000A0000000212073D0208A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD0CFD9BF70F350D000CFD9C030000000A00000006000000000000000A00000003135D80FD000000030CFD9BF70F350D000CFD9C030000000A0F350D020CFD9BFB0F350CFA000000020000000A0000000600000001000000000F34D100000000000000000A120700FE0000000A00000004120700FA08A912FF00000006120700FE0000000600000004000000020000000100000000120701000000000008A91303120701020000000108A912FB0000000A120700FA08A912FF000000060000000A0000000212073D0208A912FB0000000A00000006000000011151E8FF08A912F712073D0008A91303120701020000000108A912FB12073CFA0000000205000106135D44FD000000050000000300000005120700FA0500010600000006135D80FD00000003050000FE00000006135D44FF0CFD9BF7000000050F34D1000000000000000005000000040000000212073D0208A912FB12073CFA0000000205000106135D44FD050000FE00000006135D44FF000000060000000400000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350D000CFD9C030F34D102000000010000000800000006000000000F34D1000000000000000006135D44FF0CFD9BF70F350D000CFD9C030000000500000006000000000F34D100000000000000000600000004000000060000000100000000120701000000000008A91303120701020000000108A912FB0000000800000006000000060000000400000003"
theorem small_7230182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230182_left_root small_7230182_left_fuel small_7230182_left_count small_7230182_left_encoded = true := by
  decide +kernel
theorem small_7230182_left_covered : CoveredBy scale carrier boxes small_7230182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230182_left_root small_7230182_left_fuel small_7230182_left_count small_7230182_left_encoded small_7230182_left_checked

theorem cover_7230182 : CoveredBy scale carrier boxes root_7230182 := by
  apply coveredBy_split_literal root_7230182 small_7230182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230530 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7230182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230530
#print axioms cover_7230182

def root_7230176 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230176_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230176_left_fuel : Nat := 1
def small_7230176_left_count : Nat := 1
def small_7230176_left_encoded : String := "00000002"
theorem small_7230176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230176_left_root small_7230176_left_fuel small_7230176_left_count small_7230176_left_encoded = true := by
  decide +kernel
theorem small_7230176_left_covered : CoveredBy scale carrier boxes small_7230176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230176_left_root small_7230176_left_fuel small_7230176_left_count small_7230176_left_encoded small_7230176_left_checked

theorem cover_7230176 : CoveredBy scale carrier boxes root_7230176 := by
  apply coveredBy_split_literal root_7230176 small_7230176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230182 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7230176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230182
#print axioms cover_7230176

def root_7230175 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7230175 : CoveredBy scale carrier boxes root_7230175 := by
  apply coveredBy_split_literal root_7230175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230176 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2726.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230176
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2726.covered
#print axioms cover_7230175

def root_7230170 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230170_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7230170_right_fuel : Nat := 1
def small_7230170_right_count : Nat := 1
def small_7230170_right_encoded : String := "00000001"
theorem small_7230170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7230170_right_root small_7230170_right_fuel small_7230170_right_count small_7230170_right_encoded = true := by
  decide +kernel
theorem small_7230170_right_covered : CoveredBy scale carrier boxes small_7230170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7230170_right_root small_7230170_right_fuel small_7230170_right_count small_7230170_right_encoded small_7230170_right_checked

theorem cover_7230170 : CoveredBy scale carrier boxes root_7230170 := by
  apply coveredBy_split_literal root_7230170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230175 small_7230170_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230175
  · exact small_7230170_right_covered
#print axioms cover_7230170

def root_7201584 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7201584 : CoveredBy scale carrier boxes root_7201584 := by
  apply coveredBy_split_literal root_7201584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.root_7201585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7230170 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0495.cover_7201585
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7230170
#print axioms cover_7201584

def root_7201578 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201578_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201578_left_fuel : Nat := 1
def small_7201578_left_count : Nat := 1
def small_7201578_left_encoded : String := "00000000"
theorem small_7201578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201578_left_root small_7201578_left_fuel small_7201578_left_count small_7201578_left_encoded = true := by
  decide +kernel
theorem small_7201578_left_covered : CoveredBy scale carrier boxes small_7201578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201578_left_root small_7201578_left_fuel small_7201578_left_count small_7201578_left_encoded small_7201578_left_checked

theorem cover_7201578 : CoveredBy scale carrier boxes root_7201578 := by
  apply coveredBy_split_literal root_7201578 small_7201578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7201584 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7201578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7201584
#print axioms cover_7201578

def root_7188286 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188286 : CoveredBy scale carrier boxes root_7188286 := by
  apply coveredBy_split_literal root_7188286 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7188287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7201578 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7188287
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7201578
#print axioms cover_7188286

def root_7241359 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7241359 : CoveredBy scale carrier boxes root_7241359 := by
  apply coveredBy_split_literal root_7241359 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2727.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2728.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2727.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2728.covered
#print axioms cover_7241359

def root_7188285 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188285 : CoveredBy scale carrier boxes root_7188285 := by
  apply coveredBy_split_literal root_7188285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7188286 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7241359 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7188286
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7241359
#print axioms cover_7188285

def root_7245543 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7245543 : CoveredBy scale carrier boxes root_7245543 := by
  apply coveredBy_split_literal root_7245543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2729.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2730.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2729.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2730.covered
#print axioms cover_7245543

def root_7245542 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7245542 : CoveredBy scale carrier boxes root_7245542 := by
  apply coveredBy_split_literal root_7245542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7245543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2731.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7245543
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2731.covered
#print axioms cover_7245542

def root_7188284 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188284 : CoveredBy scale carrier boxes root_7188284 := by
  apply coveredBy_split_literal root_7188284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7188285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7245542 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7188285
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7245542
#print axioms cover_7188284

def root_7258119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7258119_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7258119_right_fuel : Nat := 14
def small_7258119_right_count : Nat := 39
def small_7258119_right_encoded : String := "120701000000000008A912FB12073CFA0000000208A91307120701060000000305000102135D450300000001050000FE135D80FF00000004045489F7000000070000000700000007135D8103050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350CFA00000002000000070000000700000000138671000000000000000007000000070000000100000007120700FA0000000700000002"
theorem small_7258119_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7258119_right_root small_7258119_right_fuel small_7258119_right_count small_7258119_right_encoded = true := by
  decide +kernel
theorem small_7258119_right_covered : CoveredBy scale carrier boxes small_7258119_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7258119_right_root small_7258119_right_fuel small_7258119_right_count small_7258119_right_encoded small_7258119_right_checked

theorem cover_7258119 : CoveredBy scale carrier boxes root_7258119 := by
  apply coveredBy_split_literal root_7258119 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2734.root small_7258119_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2734.covered
  · exact small_7258119_right_covered
#print axioms cover_7258119

def root_7258114 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7258114_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7258114_right_fuel : Nat := 1
def small_7258114_right_count : Nat := 1
def small_7258114_right_encoded : String := "00000004"
theorem small_7258114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7258114_right_root small_7258114_right_fuel small_7258114_right_count small_7258114_right_encoded = true := by
  decide +kernel
theorem small_7258114_right_covered : CoveredBy scale carrier boxes small_7258114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7258114_right_root small_7258114_right_fuel small_7258114_right_count small_7258114_right_encoded small_7258114_right_checked

theorem cover_7258114 : CoveredBy scale carrier boxes root_7258114 := by
  apply coveredBy_split_literal root_7258114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7258119 small_7258114_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7258119
  · exact small_7258114_right_covered
#print axioms cover_7258114

def root_7255084 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7255084 : CoveredBy scale carrier boxes root_7255084 := by
  apply coveredBy_split_literal root_7255084 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2733.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7258114 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2733.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7258114
#print axioms cover_7255084

def root_7255079 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7255079_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7255079_right_fuel : Nat := 1
def small_7255079_right_count : Nat := 1
def small_7255079_right_encoded : String := "00000003"
theorem small_7255079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7255079_right_root small_7255079_right_fuel small_7255079_right_count small_7255079_right_encoded = true := by
  decide +kernel
theorem small_7255079_right_covered : CoveredBy scale carrier boxes small_7255079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7255079_right_root small_7255079_right_fuel small_7255079_right_count small_7255079_right_encoded small_7255079_right_checked

theorem cover_7255079 : CoveredBy scale carrier boxes root_7255079 := by
  apply coveredBy_split_literal root_7255079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7255084 small_7255079_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7255084
  · exact small_7255079_right_covered
#print axioms cover_7255079

def root_7254995 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254995_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254995_left_fuel : Nat := 10
def small_7254995_left_count : Nat := 39
def small_7254995_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073D0008A912FB00000005120700FA000000050000000200000000120701000000000008A912FB12073CFA0000000208A912FF00000005120700FE0000000500000004000000071151E8FF08A912F712073D0008A912FB12073CFA00000002050001020000000500000007120700FA0000000500000002000000000000000700000004"
theorem small_7254995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7254995_left_root small_7254995_left_fuel small_7254995_left_count small_7254995_left_encoded = true := by
  decide +kernel
theorem small_7254995_left_covered : CoveredBy scale carrier boxes small_7254995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7254995_left_root small_7254995_left_fuel small_7254995_left_count small_7254995_left_encoded small_7254995_left_checked

theorem cover_7254995 : CoveredBy scale carrier boxes root_7254995 := by
  apply coveredBy_split_literal root_7254995 small_7254995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7255079 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7254995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7255079
#print axioms cover_7254995

def root_7254989 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254989_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7254989_left_fuel : Nat := 1
def small_7254989_left_count : Nat := 1
def small_7254989_left_encoded : String := "00000002"
theorem small_7254989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7254989_left_root small_7254989_left_fuel small_7254989_left_count small_7254989_left_encoded = true := by
  decide +kernel
theorem small_7254989_left_covered : CoveredBy scale carrier boxes small_7254989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7254989_left_root small_7254989_left_fuel small_7254989_left_count small_7254989_left_encoded small_7254989_left_checked

theorem cover_7254989 : CoveredBy scale carrier boxes root_7254989 := by
  apply coveredBy_split_literal root_7254989 small_7254989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7254995 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7254989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7254995
#print axioms cover_7254989

def root_7261545 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7261545 : CoveredBy scale carrier boxes root_7261545 := by
  apply coveredBy_split_literal root_7261545 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2736.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2736.covered
#print axioms cover_7261545

def root_7261539 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261539_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261539_left_fuel : Nat := 1
def small_7261539_left_count : Nat := 1
def small_7261539_left_encoded : String := "00000004"
theorem small_7261539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261539_left_root small_7261539_left_fuel small_7261539_left_count small_7261539_left_encoded = true := by
  decide +kernel
theorem small_7261539_left_covered : CoveredBy scale carrier boxes small_7261539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261539_left_root small_7261539_left_fuel small_7261539_left_count small_7261539_left_encoded small_7261539_left_checked

theorem cover_7261539 : CoveredBy scale carrier boxes root_7261539 := by
  apply coveredBy_split_literal root_7261539 small_7261539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7261545 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7261539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7261545
#print axioms cover_7261539

def root_7261538 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261538_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261538_right_fuel : Nat := 14
def small_7261538_right_count : Nat := 49
def small_7261538_right_encoded : String := "120700FE05000102135D45030000000100000008135D8103050000FA135D80FB000000020CFD9BF70F350D0004548A071386710600000003045489FF1386ACFE000000040C9A8700000000050F878CF700000000000000080000000500000005000000000F34D1000000000000000008135D44FB0CFD9BF70F350D0004548A070000000A1386AD06045489FF1386ACFE000000040C9A870000000006000000080000000600000003000000000F34D1000000000000000008000000020000000100000004"
theorem small_7261538_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261538_right_root small_7261538_right_fuel small_7261538_right_count small_7261538_right_encoded = true := by
  decide +kernel
theorem small_7261538_right_covered : CoveredBy scale carrier boxes small_7261538_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261538_right_root small_7261538_right_fuel small_7261538_right_count small_7261538_right_encoded small_7261538_right_checked

theorem cover_7261538 : CoveredBy scale carrier boxes root_7261538 := by
  apply coveredBy_split_literal root_7261538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7261539 small_7261538_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7261539
  · exact small_7261538_right_covered
#print axioms cover_7261538

def root_7261532 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261532_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7261532_left_fuel : Nat := 1
def small_7261532_left_count : Nat := 1
def small_7261532_left_encoded : String := "00000003"
theorem small_7261532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7261532_left_root small_7261532_left_fuel small_7261532_left_count small_7261532_left_encoded = true := by
  decide +kernel
theorem small_7261532_left_covered : CoveredBy scale carrier boxes small_7261532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7261532_left_root small_7261532_left_fuel small_7261532_left_count small_7261532_left_encoded small_7261532_left_checked

theorem cover_7261532 : CoveredBy scale carrier boxes root_7261532 := by
  apply coveredBy_split_literal root_7261532 small_7261532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7261538 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7261532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7261538
#print axioms cover_7261532

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496
