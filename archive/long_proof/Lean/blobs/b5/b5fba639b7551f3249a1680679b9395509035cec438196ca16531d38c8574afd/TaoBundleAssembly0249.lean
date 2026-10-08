import TaoBundleAssembly0248
import TaoBundleChunkBatch0338
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249
def root_3563992 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563992_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563992_right_fuel : Nat := 25
def small_3563992_right_count : Nat := 257
def small_3563992_right_encoded : String := "1207010800000004050000F8135D81030CFD9C010F34D0F60CFD9BFB0F350D0404548A071386710600000003045489FF00000008000000080000000A000000020F34D1040000000204548A071386710600000003045489FF00000008000000081386AD06045489FF1386AD0800000006000000041386710800000004078000F8000000060000000600000003000000000F350CF6000000000CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A86F60F878D010C9A87040F8750FB0000000A000000020F878CFB00000002078000F8128A7D03022A45870000000813E20106067ECE7F0000000A00000008000000030000000100000008000000000F875101000000000C9A87040F8750FB078000F8128A7D03022A458713E1C50600000003067ECE7F00000008000000080000000A00000001128A410300000001022A4587000000080000000A000000020F878CFB00000002078000F8128A7D03022A458713E1C50600000003067ECE7F12EA95080B4D43F60000000800000005000000040000000513E20106067ECE7F12EA95080B4D43F610804D010DE7CA040000000700000005000000000000000500000004000000050000000300000001000000050000000413867108000000040C9A86F60F878D010C9A8704000000080F878CFB0000000200000008000000000F875101000000000C9A87040F8750FB078000F8128A7D03022A45870000000800000007000000010000000500000002000000051386AD06045489FF1386AD080C9A86F60F878D010000000A000000000F875101000000000C9A87040F8750FB0000000A000000020F878CFB00000002078000F8128A7D030000000700000001000000050000000413867108000000040C9A86F60F878D010000000A000000000F875101000000000C9A8704000000070000000500000003000000020F34D1040000000204548A071386710600000003045489FF1386AD080C9A86F60F878D01078000F8128A7D030AD3577B10D13D04022A4587000000080000000600000002000000060000000100000005000000000000000500000004000000051386AD06045489FF1386AD080C9A86F60F878D01078000F8128A7D030AD3577B10D13D040000000600000002000000060000000100000005000000000000000500000004000000050000000300000001135D4503000000010CFD9C010F34D0F60CFD9BFB0F350D0404548A07000000080000000A0000000200000008000000000F350CF6000000000CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A86F6000000080000000500000004000000081386AD06045489FF1386AD080C9A86F60000000A000000050000000413867108000000040000000500000003000000020F34D1040000000200000005"
theorem small_3563992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563992_right_root small_3563992_right_fuel small_3563992_right_count small_3563992_right_encoded = true := by
  decide +kernel
theorem small_3563992_right_covered : CoveredBy scale carrier boxes small_3563992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563992_right_root small_3563992_right_fuel small_3563992_right_count small_3563992_right_encoded small_3563992_right_checked

theorem cover_3563992 : CoveredBy scale carrier boxes root_3563992 := by
  apply coveredBy_split_literal root_3563992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0248.root_3563993 small_3563992_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0248.cover_3563993
  · exact small_3563992_right_covered
#print axioms cover_3563992

def root_3563986 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563986_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563986_left_fuel : Nat := 1
def small_3563986_left_count : Nat := 1
def small_3563986_left_encoded : String := "00000003"
theorem small_3563986_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563986_left_root small_3563986_left_fuel small_3563986_left_count small_3563986_left_encoded = true := by
  decide +kernel
theorem small_3563986_left_covered : CoveredBy scale carrier boxes small_3563986_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563986_left_root small_3563986_left_fuel small_3563986_left_count small_3563986_left_encoded small_3563986_left_checked

theorem cover_3563986 : CoveredBy scale carrier boxes root_3563986 := by
  apply coveredBy_split_literal root_3563986 small_3563986_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563992 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3563986_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563992
#print axioms cover_3563986

def root_3563985 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563985_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563985_right_fuel : Nat := 18
def small_3563985_right_count : Nat := 161
def small_3563985_right_encoded : String := "12073D0608A912FF12073D08050000F8135D81030CFD9C010F34D0F60CFD9BFB0F350D040000000A000000020F34D104000000020CFD9C070000000600000006000000000F350CF6000000000CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F60F878D010000000A000000000F875101000000000C9A87040000000A0F878CFB0000000200000006000000040F34D108000000040C9A86F60000000A0F875101000000000000000A0F350D060CFD9BFF0000000A0F34D108000000040000000A00000003000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF00000006000000060F350D06000000060000000300000001135D4503000000010CFD9C010F34D0F60CFD9BFB0F350D040000000A000000020F34D1040000000200000006000000000F350CF6000000000CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D0800000006000000040F34D108000000040000000A0F350D060000000A00000003000000020F34D1040000000200000006000000041207010800000004050000F8135D81030CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9BFB0F350D040CFD9C070F34D10600000003045489FF0000000A13867108000000040000000A0000000A000000020F34D104000000020CFD9C070F34D10600000003045489FF1386AD080C9A86F60F878D01000000060000000000000005000000041386710800000004000000050000000700000001135D4503000000010CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9BFB0F350D040CFD9C070F34D106000000030000000A0000000A000000020F34D104000000020CFD9C07000000060000000500000003"
theorem small_3563985_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563985_right_root small_3563985_right_fuel small_3563985_right_count small_3563985_right_encoded = true := by
  decide +kernel
theorem small_3563985_right_covered : CoveredBy scale carrier boxes small_3563985_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563985_right_root small_3563985_right_fuel small_3563985_right_count small_3563985_right_encoded small_3563985_right_checked

theorem cover_3563985 : CoveredBy scale carrier boxes root_3563985 := by
  apply coveredBy_split_literal root_3563985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563986 small_3563985_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563986
  · exact small_3563985_right_covered
#print axioms cover_3563985

def root_3563980 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563980_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563980_right_fuel : Nat := 1
def small_3563980_right_count : Nat := 1
def small_3563980_right_encoded : String := "00000002"
theorem small_3563980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563980_right_root small_3563980_right_fuel small_3563980_right_count small_3563980_right_encoded = true := by
  decide +kernel
theorem small_3563980_right_covered : CoveredBy scale carrier boxes small_3563980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563980_right_root small_3563980_right_fuel small_3563980_right_count small_3563980_right_encoded small_3563980_right_checked

theorem cover_3563980 : CoveredBy scale carrier boxes root_3563980 := by
  apply coveredBy_split_literal root_3563980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563985 small_3563980_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563985
  · exact small_3563980_right_covered
#print axioms cover_3563980

def root_3563979 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563979_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563979_right_fuel : Nat := 19
def small_3563979_right_count : Nat := 77
def small_3563979_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073D08050000F8135D81030CFD9C010F34D0F600000006000000000F350CF600000000045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D080C9A86F6000000060F875101000000000C9A8708000000060000000600000004000000060000000600000002138671040000000204548A0713867106000000030CFD9BFF0F350D08000000060000000400000006000000060000000100000006000000041207010800000004050000F8135D81030CFD9C01000000060F350CF60000000000000005000000010000000512073D0608A912FF12073D08050000F80000000600000006000000041207010800000004050000F8135D81030CFD9C01000000060F350CF60000000000000006000000010000000600000003"
theorem small_3563979_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563979_right_root small_3563979_right_fuel small_3563979_right_count small_3563979_right_encoded = true := by
  decide +kernel
theorem small_3563979_right_covered : CoveredBy scale carrier boxes small_3563979_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563979_right_root small_3563979_right_fuel small_3563979_right_count small_3563979_right_encoded small_3563979_right_checked

theorem cover_3563979 : CoveredBy scale carrier boxes root_3563979 := by
  apply coveredBy_split_literal root_3563979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563980 small_3563979_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563980
  · exact small_3563979_right_covered
#print axioms cover_3563979

def root_3563973 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563973_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563973_left_fuel : Nat := 1
def small_3563973_left_count : Nat := 1
def small_3563973_left_encoded : String := "00000000"
theorem small_3563973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563973_left_root small_3563973_left_fuel small_3563973_left_count small_3563973_left_encoded = true := by
  decide +kernel
theorem small_3563973_left_covered : CoveredBy scale carrier boxes small_3563973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563973_left_root small_3563973_left_fuel small_3563973_left_count small_3563973_left_encoded small_3563973_left_checked

theorem cover_3563973 : CoveredBy scale carrier boxes root_3563973 := by
  apply coveredBy_split_literal root_3563973 small_3563973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563979 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3563973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563979
#print axioms cover_3563973

def root_3563757 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563757_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563757_left_fuel : Nat := 18
def small_3563757_left_count : Nat := 103
def small_3563757_left_encoded : String := "120700F608A912FB12073D0408A91307120701060000000308A912FF12073D08050000F8135D810304548A01138670F60CFD9BFB0F350D040000000A0000000200000006000000001386ACF6000000000CFD9BFB0F350D0404548A0713867106000000030CFD9BFF000000070F34D10800000004000000080000000A000000020F34D104000000020000000600000001135D45030000000104548A01000000061386ACF6000000000CFD9BFB0F350D040000000A0000000200000006000000041207010800000004050000F8135D810304548A01000000081386ACF6000000000CFD9BFB0000000A0F34D1040000000204548A070000000600000006000000010000000812073D0608A912FF12073D08050000F8135D810304548A010000000A1386ACF6000000000CFD9BFB0000000A0000000A00000001135D45030000000104548A01000000060000000A0000000412070108000000040000000A0000000300000002120701040000000208A91307120701060000000308A912FF000000060000000612073D0608A912FF00000006000000060000000300000000"
theorem small_3563757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563757_left_root small_3563757_left_fuel small_3563757_left_count small_3563757_left_encoded = true := by
  decide +kernel
theorem small_3563757_left_covered : CoveredBy scale carrier boxes small_3563757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563757_left_root small_3563757_left_fuel small_3563757_left_count small_3563757_left_encoded small_3563757_left_checked

theorem cover_3563757 : CoveredBy scale carrier boxes root_3563757 := by
  apply coveredBy_split_literal root_3563757 small_3563757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563973 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3563757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563973
#print axioms cover_3563757

def root_3563751 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563751_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563751_left_fuel : Nat := 1
def small_3563751_left_count : Nat := 1
def small_3563751_left_encoded : String := "00000004"
theorem small_3563751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563751_left_root small_3563751_left_fuel small_3563751_left_count small_3563751_left_encoded = true := by
  decide +kernel
theorem small_3563751_left_covered : CoveredBy scale carrier boxes small_3563751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563751_left_root small_3563751_left_fuel small_3563751_left_count small_3563751_left_encoded small_3563751_left_checked

theorem cover_3563751 : CoveredBy scale carrier boxes root_3563751 := by
  apply coveredBy_split_literal root_3563751 small_3563751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563757 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3563751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563757
#print axioms cover_3563751

def root_3563383 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563383_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563383_left_fuel : Nat := 23
def small_3563383_left_count : Nat := 175
def small_3563383_left_encoded : String := "1151E8FF08A91301120700F608A912FB12073D0408A9130712070106000000030000000600000006000000021207010400000002000000060000000012073CF60000000008A912FB12073D0408A913071207010600000003050000F8135D810305000108135D44FF0CFD9C01000000070F350CF6000000000CFD9BFB000000070F34D104000000020000000700000004135D80FF000000040CFD9C010F34D0F60CFD9BFB000000070F34D1040000000200000006000000000F350CF6000000000CFD9BFB0F350D0404548A0713867106000000030C9A86F6000000050F875101000000000C9A870400000005000000071386AD060C9A86F60F878D0100000005000000000F875101000000000C9A8704000000090F878CFB00000002078000F8000000090000000600000003000000020F34D1040000000204548A071386710600000003000000070000000600000001135D45030000000105000108135D44FF0CFD9C01000000060F350CF6000000000CFD9BFB000000060000000600000004135D80FF000000040CFD9C01000000060F350CF6000000000CFD9BFB0F350D0404548A0713867106000000030000000700000006000000020F34D104000000020000000612073D06050000F8135D810305000108135D44FF0CFD9C01000000060F350CF6000000000CFD9BFB000000060000000600000004135D80FF000000040CFD9C01000000060F350CF6000000000CFD9BFB0F350D040CFD9C070F34D106000000030C9A86F6000000060F875101000000000C9A8704000000090000000600000006000000020F34D104000000020000000600000001000000060000000300000002120701040000000208A913071207010600000003050000F8135D81030500010800000006135D80FF000000040CFD9C01000000060F350CF600000000045489FB000000060000000600000001000000060000000600000004"
theorem small_3563383_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563383_left_root small_3563383_left_fuel small_3563383_left_count small_3563383_left_encoded = true := by
  decide +kernel
theorem small_3563383_left_covered : CoveredBy scale carrier boxes small_3563383_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563383_left_root small_3563383_left_fuel small_3563383_left_count small_3563383_left_encoded small_3563383_left_checked

theorem cover_3563383 : CoveredBy scale carrier boxes root_3563383 := by
  apply coveredBy_split_literal root_3563383 small_3563383_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563751 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3563383_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563751
#print axioms cover_3563383

def root_3563378 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563378_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563378_right_fuel : Nat := 1
def small_3563378_right_count : Nat := 1
def small_3563378_right_encoded : String := "00000003"
theorem small_3563378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563378_right_root small_3563378_right_fuel small_3563378_right_count small_3563378_right_encoded = true := by
  decide +kernel
theorem small_3563378_right_covered : CoveredBy scale carrier boxes small_3563378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563378_right_root small_3563378_right_fuel small_3563378_right_count small_3563378_right_encoded small_3563378_right_checked

theorem cover_3563378 : CoveredBy scale carrier boxes root_3563378 := by
  apply coveredBy_split_literal root_3563378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563383 small_3563378_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563383
  · exact small_3563378_right_covered
#print axioms cover_3563378

def root_3563288 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563288_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563288_left_fuel : Nat := 16
def small_3563288_left_count : Nat := 41
def small_3563288_left_encoded : String := "1151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A91301120700F608A912FB0000000A000000060000000012073CF60000000008A912FB12073D0408A912FF12073D08050000F8135D81030500010600000006135D81070CFD9C01000000060F350CF600000000000000060000000300000001000000060000000412070108000000040000000A00000002120701040000000200000006"
theorem small_3563288_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563288_left_root small_3563288_left_fuel small_3563288_left_count small_3563288_left_encoded = true := by
  decide +kernel
theorem small_3563288_left_covered : CoveredBy scale carrier boxes small_3563288_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563288_left_root small_3563288_left_fuel small_3563288_left_count small_3563288_left_encoded small_3563288_left_checked

theorem cover_3563288 : CoveredBy scale carrier boxes root_3563288 := by
  apply coveredBy_split_literal root_3563288 small_3563288_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563378 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3563288_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563378
#print axioms cover_3563288

def root_3563282 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563282_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3563282_left_fuel : Nat := 1
def small_3563282_left_count : Nat := 1
def small_3563282_left_encoded : String := "00000002"
theorem small_3563282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3563282_left_root small_3563282_left_fuel small_3563282_left_count small_3563282_left_encoded = true := by
  decide +kernel
theorem small_3563282_left_covered : CoveredBy scale carrier boxes small_3563282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3563282_left_root small_3563282_left_fuel small_3563282_left_count small_3563282_left_encoded small_3563282_left_checked

theorem cover_3563282 : CoveredBy scale carrier boxes root_3563282 := by
  apply coveredBy_split_literal root_3563282 small_3563282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563288 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3563282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563288
#print axioms cover_3563282

def root_3562792 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3562792_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3562792_left_fuel : Nat := 27
def small_3562792_left_count : Nat := 229
def small_3562792_left_encoded : String := "1151E8FB0A0001061151E907000000030A0001081151E8FF00000005000000040000000A115225070A0001081151E8FF08A91301120700F6000000050000000012073CF60000000008A913071207010600000003050000F800000005135D4503000000010500010400000005135D80FB000000020500010800000005135D80FF000000040CFD9C01000000090F350CF6000000000000000912073D06050000F800000005135D4503000000010500010400000005135D80FB0000000205000108000000050000000A0000000300000004115224FF0000000408A91301120700F608A91307120701060000000308A912FF0000000A1207010800000004000000080000000A0000000012073CF60000000008A91307120701060000000308A912FF12073D08050000F8135D810305000104135D44FB0CFD9C010000000A0F350CF60000000004548A0713867106000000030000000A0000000A00000002135D80FB000000020CFD9C010F34D0F60000000A000000000F350CF60000000004548A0713867106000000030CFD9BFF0F350D080C9A86F6000000050F875101000000000C9A8708000000050F878CFF00000004078000F8000000050000000A000000040F34D108000000040C9A86F60000000A0F87510100000000078000F80000000A0000000A1386AD060CFD9BFF0000000A0F34D108000000040000000A0000000300000001135D45030000000105000104135D44FB0000000A00000002135D80FB000000020CFD9C010F34D0F60000000A000000000F350CF60000000004548A0713867106000000030CFD9BFF0F350D080C9A86F60000000A0F875101000000000000000A000000040F34D108000000040000000A0000000A000000041207010800000004050000F8135D8103050001040000000A135D80FB000000020CFD9C010000000A0F350CF60000000004548A071386710600000003045489FF1386AD080C9A86F60000000A0F875101000000000000000A0000000413867108000000040C9A86F6000000080F875101000000000000000A0000000A00000001135D450300000001050001040000000A135D80FB000000020CFD9C010000000A0F350CF60000000004548A071386710600000003000000080000000A12073D0608A912FF12073D08050000F8135D8103050001040000000A135D80FB000000020CFD9C010000000A0000000A00000001135D4503000000010000000A0000000412070108000000040000000A000000030000000300000002"
theorem small_3562792_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3562792_left_root small_3562792_left_fuel small_3562792_left_count small_3562792_left_encoded = true := by
  decide +kernel
theorem small_3562792_left_covered : CoveredBy scale carrier boxes small_3562792_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3562792_left_root small_3562792_left_fuel small_3562792_left_count small_3562792_left_encoded small_3562792_left_checked

theorem cover_3562792 : CoveredBy scale carrier boxes root_3562792 := by
  apply coveredBy_split_literal root_3562792 small_3562792_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3563282 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3562792_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3563282
#print axioms cover_3562792

def root_3562786 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3562786_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3562786_left_fuel : Nat := 1
def small_3562786_left_count : Nat := 1
def small_3562786_left_encoded : String := "00000001"
theorem small_3562786_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3562786_left_root small_3562786_left_fuel small_3562786_left_count small_3562786_left_encoded = true := by
  decide +kernel
theorem small_3562786_left_covered : CoveredBy scale carrier boxes small_3562786_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3562786_left_root small_3562786_left_fuel small_3562786_left_count small_3562786_left_encoded small_3562786_left_checked

theorem cover_3562786 : CoveredBy scale carrier boxes root_3562786 := by
  apply coveredBy_split_literal root_3562786 small_3562786_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3562792 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3562786_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3562792
#print axioms cover_3562786

def root_3541670 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3541670 : CoveredBy scale carrier boxes root_3541670 := by
  apply coveredBy_split_literal root_3541670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0248.root_3541671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3562786 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0248.cover_3541671
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3562786
#print axioms cover_3541670

def root_3541665 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3541665_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3541665_right_fuel : Nat := 1
def small_3541665_right_count : Nat := 1
def small_3541665_right_encoded : String := "00000000"
theorem small_3541665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3541665_right_root small_3541665_right_fuel small_3541665_right_count small_3541665_right_encoded = true := by
  decide +kernel
theorem small_3541665_right_covered : CoveredBy scale carrier boxes small_3541665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3541665_right_root small_3541665_right_fuel small_3541665_right_count small_3541665_right_encoded small_3541665_right_checked

theorem cover_3541665 : CoveredBy scale carrier boxes root_3541665 := by
  apply coveredBy_split_literal root_3541665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3541670 small_3541665_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3541670
  · exact small_3541665_right_covered
#print axioms cover_3541665

def root_3570372 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3570372 : CoveredBy scale carrier boxes root_3570372 := by
  apply coveredBy_split_literal root_3570372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1352.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1352.covered
#print axioms cover_3570372

def root_3570366 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570366_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570366_left_fuel : Nat := 1
def small_3570366_left_count : Nat := 1
def small_3570366_left_encoded : String := "00000001"
theorem small_3570366_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570366_left_root small_3570366_left_fuel small_3570366_left_count small_3570366_left_encoded = true := by
  decide +kernel
theorem small_3570366_left_covered : CoveredBy scale carrier boxes small_3570366_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570366_left_root small_3570366_left_fuel small_3570366_left_count small_3570366_left_encoded small_3570366_left_checked

theorem cover_3570366 : CoveredBy scale carrier boxes root_3570366 := by
  apply coveredBy_split_literal root_3570366 small_3570366_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570372 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3570366_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570372
#print axioms cover_3570366

def root_3570246 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570246_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570246_left_fuel : Nat := 11
def small_3570246_left_count : Nat := 55
def small_3570246_left_encoded : String := "0F34D0F80CFD9BFB0F350D0404548A0713867106000000030CFD9BFF0F350D080C9A8704000000050F878CFB000000020C9A87080000000500000006000000040F34D10800000004000000061386AD060CFD9BFF0F350D0800000008000000040F34D108000000040000000700000003000000020F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A8708000000080F878CFF00000004078000F60000000800000008000000040F34D10800000004000000071386AD060CFD9BFF000000080F34D10800000004000000070000000300000001"
theorem small_3570246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570246_left_root small_3570246_left_fuel small_3570246_left_count small_3570246_left_encoded = true := by
  decide +kernel
theorem small_3570246_left_covered : CoveredBy scale carrier boxes small_3570246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570246_left_root small_3570246_left_fuel small_3570246_left_count small_3570246_left_encoded small_3570246_left_checked

theorem cover_3570246 : CoveredBy scale carrier boxes root_3570246 := by
  apply coveredBy_split_literal root_3570246 small_3570246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570366 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3570246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570366
#print axioms cover_3570246

def root_3570241 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570241_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570241_right_fuel : Nat := 1
def small_3570241_right_count : Nat := 1
def small_3570241_right_encoded : String := "00000000"
theorem small_3570241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570241_right_root small_3570241_right_fuel small_3570241_right_count small_3570241_right_encoded = true := by
  decide +kernel
theorem small_3570241_right_covered : CoveredBy scale carrier boxes small_3570241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570241_right_root small_3570241_right_fuel small_3570241_right_count small_3570241_right_encoded small_3570241_right_checked

theorem cover_3570241 : CoveredBy scale carrier boxes root_3570241 := by
  apply coveredBy_split_literal root_3570241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570246 small_3570241_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570246
  · exact small_3570241_right_covered
#print axioms cover_3570241

def root_3570240 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570240_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570240_right_fuel : Nat := 17
def small_3570240_right_count : Nat := 139
def small_3570240_right_encoded : String := "135D4501000000000CFD9C030F34D0F80CFD9BFB0F350D0404548A0713867106000000030CFD9BFF000000060000000700000007000000020F34D1040000000204548A0713867106000000030CFD9BFF0F350D080000000800000004000000071386AD060CFD9BFF000000080000000700000003000000010F350CF8000000010CFD9BFB0F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A8704000000070F878CFB000000020C9A87080000000800000007000000010F875103000000010C9A87040F8750FB0C9A87080F8750FF028000F600000008000000070000000400000007000000020F878CFB000000020C9A87080F8750FF028000F600000008000000070000000400000007000000040F34D10800000004000000071386AD060CFD9BFF0F350D080C9A86F80F878D030C9A87040000000700000008000000010F875103000000010C9A8704000000070F878CFB000000020C9A87080000000700000007000000040000000700000003000000020F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A86F80F878D030C9A8708000000080F878CFF0000000400000007000000010F875103000000010C9A87080F8750FF028000F600000008000000050000000400000005000000040F34D10800000004000000051386AD060CFD9BFF0F350D080C9A86F8000000080F875103000000010C9A87080000000800000005000000040F34D108000000040000000500000003"
theorem small_3570240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570240_right_root small_3570240_right_fuel small_3570240_right_count small_3570240_right_encoded = true := by
  decide +kernel
theorem small_3570240_right_covered : CoveredBy scale carrier boxes small_3570240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570240_right_root small_3570240_right_fuel small_3570240_right_count small_3570240_right_encoded small_3570240_right_checked

theorem cover_3570240 : CoveredBy scale carrier boxes root_3570240 := by
  apply coveredBy_split_literal root_3570240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570241 small_3570240_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570241
  · exact small_3570240_right_covered
#print axioms cover_3570240

def root_3570235 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570235_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570235_right_fuel : Nat := 1
def small_3570235_right_count : Nat := 1
def small_3570235_right_encoded : String := "00000004"
theorem small_3570235_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570235_right_root small_3570235_right_fuel small_3570235_right_count small_3570235_right_encoded = true := by
  decide +kernel
theorem small_3570235_right_covered : CoveredBy scale carrier boxes small_3570235_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570235_right_root small_3570235_right_fuel small_3570235_right_count small_3570235_right_encoded small_3570235_right_checked

theorem cover_3570235 : CoveredBy scale carrier boxes root_3570235 := by
  apply coveredBy_split_literal root_3570235 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570240 small_3570235_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570240
  · exact small_3570235_right_covered
#print axioms cover_3570235

def root_3570234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570234_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570234_right_fuel : Nat := 15
def small_3570234_right_count : Nat := 33
def small_3570234_right_encoded : String := "1207010800000004050000F6135D81010CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A86F8000000070F875103000000010C9A87040000000700000007000000040000000700000007000000020F34D10400000002000000070000000000000007"
theorem small_3570234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570234_right_root small_3570234_right_fuel small_3570234_right_count small_3570234_right_encoded = true := by
  decide +kernel
theorem small_3570234_right_covered : CoveredBy scale carrier boxes small_3570234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570234_right_root small_3570234_right_fuel small_3570234_right_count small_3570234_right_encoded small_3570234_right_checked

theorem cover_3570234 : CoveredBy scale carrier boxes root_3570234 := by
  apply coveredBy_split_literal root_3570234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570235 small_3570234_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570235
  · exact small_3570234_right_covered
#print axioms cover_3570234

def root_3570228 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570228_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570228_left_fuel : Nat := 1
def small_3570228_left_count : Nat := 1
def small_3570228_left_encoded : String := "00000003"
theorem small_3570228_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570228_left_root small_3570228_left_fuel small_3570228_left_count small_3570228_left_encoded = true := by
  decide +kernel
theorem small_3570228_left_covered : CoveredBy scale carrier boxes small_3570228_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570228_left_root small_3570228_left_fuel small_3570228_left_count small_3570228_left_encoded small_3570228_left_checked

theorem cover_3570228 : CoveredBy scale carrier boxes root_3570228 := by
  apply coveredBy_split_literal root_3570228 small_3570228_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570234 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3570228_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570234
#print axioms cover_3570228

def root_3570227 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570227_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570227_right_fuel : Nat := 19
def small_3570227_right_count : Nat := 123
def small_3570227_right_encoded : String := "12073D0608A912FF12073D08050000F6135D81010CFD9C030F34D0F80CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF000000080000000700000008000000020F34D104000000020CFD9C070F34D106000000030000000800000008000000010F350CF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F80F878D0300000008000000010F875103000000010C9A87040F8750FB0C9A870800000008000000070000000200000008000000040F34D10800000004000000070F350D060CFD9BFF0F350D0800000008000000040000000700000003000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F8000000080F8751030000000100000008000000040F34D10800000004000000070F350D060CFD9BFF000000080F34D10800000004000000070000000300000000135D4501000000000CFD9C030F34D0F80CFD9BFB0F350D0400000007000000020F34D1040000000200000008000000010F350CF8000000010CFD9BFB0F350D040CFD9C070000000700000007000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080000000800000004000000070F350D060000000700000003000000041207010800000004050000F6000000070000000700000003"
theorem small_3570227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570227_right_root small_3570227_right_fuel small_3570227_right_count small_3570227_right_encoded = true := by
  decide +kernel
theorem small_3570227_right_covered : CoveredBy scale carrier boxes small_3570227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570227_right_root small_3570227_right_fuel small_3570227_right_count small_3570227_right_encoded small_3570227_right_checked

theorem cover_3570227 : CoveredBy scale carrier boxes root_3570227 := by
  apply coveredBy_split_literal root_3570227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570228 small_3570227_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570228
  · exact small_3570227_right_covered
#print axioms cover_3570227

def root_3570222 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570222_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3570222_right_fuel : Nat := 1
def small_3570222_right_count : Nat := 1
def small_3570222_right_encoded : String := "00000002"
theorem small_3570222_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3570222_right_root small_3570222_right_fuel small_3570222_right_count small_3570222_right_encoded = true := by
  decide +kernel
theorem small_3570222_right_covered : CoveredBy scale carrier boxes small_3570222_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3570222_right_root small_3570222_right_fuel small_3570222_right_count small_3570222_right_encoded small_3570222_right_checked

theorem cover_3570222 : CoveredBy scale carrier boxes root_3570222 := by
  apply coveredBy_split_literal root_3570222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.root_3570227 small_3570222_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249.cover_3570227
  · exact small_3570222_right_covered
#print axioms cover_3570222

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0249
