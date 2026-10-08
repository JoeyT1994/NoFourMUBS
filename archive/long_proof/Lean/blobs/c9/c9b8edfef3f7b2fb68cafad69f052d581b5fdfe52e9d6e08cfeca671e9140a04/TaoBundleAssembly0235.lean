import TaoBundleAssembly0234
import TaoBundleChunkBatch0933
import TaoBundleChunkBatch0935
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235
def root_9957304 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957304_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957304_right_fuel : Nat := 14
def small_9957304_right_count : Nat := 59
def small_9957304_right_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A86FA000000050000000A00000007000000031386710600000003045489FF1386ACFE000000040C9A86FA000000050F8750FB0000000A000000020000000A0F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA0000000500000002000000010F350D000CFD9C030F34D102000000010CFD9BFB000000050F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA0000000500000002000000010000000000000004"
theorem small_9957304_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957304_right_root small_9957304_right_fuel small_9957304_right_count small_9957304_right_encoded = true := by
  decide +kernel
theorem small_9957304_right_covered : CoveredBy scale carrier boxes small_9957304_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957304_right_root small_9957304_right_fuel small_9957304_right_count small_9957304_right_encoded small_9957304_right_checked

theorem cover_9957304 : CoveredBy scale carrier boxes root_9957304 := by
  apply coveredBy_split_literal root_9957304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9957305 small_9957304_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9957305
  · exact small_9957304_right_covered
#print axioms cover_9957304

def root_9957298 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957298_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9957298_left_fuel : Nat := 1
def small_9957298_left_count : Nat := 1
def small_9957298_left_encoded : String := "00000003"
theorem small_9957298_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9957298_left_root small_9957298_left_fuel small_9957298_left_count small_9957298_left_encoded = true := by
  decide +kernel
theorem small_9957298_left_covered : CoveredBy scale carrier boxes small_9957298_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9957298_left_root small_9957298_left_fuel small_9957298_left_count small_9957298_left_encoded small_9957298_left_checked

theorem cover_9957298 : CoveredBy scale carrier boxes root_9957298 := by
  apply coveredBy_split_literal root_9957298 small_9957298_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9957304 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9957298_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9957304
#print axioms cover_9957298

def root_9956556 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956556_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956556_left_fuel : Nat := 24
def small_9956556_left_count : Nat := 337
def small_9956556_left_encoded : String := "12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A8706000000060F878CFD000000030C9A86FE00000006000000060F8750FB0000000A000000020F34D0FE0000000700000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040AD3578110D10100000000000AD357830000000A10D13D02000000060000000110D13D000AD3578310D10102000000010000000710D13D020AD3577D0000000610D10106000000030000000600000001000000000F8750FF0AD357810000000800000008000000040F8750FB0C9A86FE0F878CFF000000040AD357810000000A10D13D0000000007000000000F8750FF0AD357810000000810D13D00000000080000000000000004000000020F34D0FE0C9A86FA0F878CFB000000020AD3578110D10100000000000000000A000000070F8750FB0000000700000002000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040AD3578110D101000000000000000006000000060F8750FF00000006000000040F34D0FE0000000500000004000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060000000A000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87020F87510300000001000000060F878D030C9A86FA0F878CFB00000002000000060F8750FB0000000A00000002000000010F34D0FE0C9A8702000000050F878D030000000A00000001000000040F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000050000000400000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FA0F878CFB000000020C9A86FE0F878CFF0000000400000007000000080F8750FB0C9A86FE000000070F8750FF000000070000000400000002000000000F34D0FE00000007000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0000000800000005000000030F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D0100000008000000000F34D0FE0000000500000004000000020F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87000F87510100000000000000070F878D010C9A8702000000060F878D030C9A86FA000000060000000700000001000000000F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA0000000500000007000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB00000006000000020F878D030C9A86FA0F878CFB000000020C9A86FE00000005000000060F8750FB0C9A86FE000000070F8750FF0AD3577D0000000610D101060000000300000006000000040000000200000001000000000F34D0FE00000005000000040F34D0FA00000005000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB000000070F34D0FA00000005000000020F350D0200000005000000010F350D0000000005000000000000000400000003"
theorem small_9956556_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956556_left_root small_9956556_left_fuel small_9956556_left_count small_9956556_left_encoded = true := by
  decide +kernel
theorem small_9956556_left_covered : CoveredBy scale carrier boxes small_9956556_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956556_left_root small_9956556_left_fuel small_9956556_left_count small_9956556_left_encoded small_9956556_left_checked

theorem cover_9956556 : CoveredBy scale carrier boxes root_9956556 := by
  apply coveredBy_split_literal root_9956556 small_9956556_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9957298 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9956556_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9957298
#print axioms cover_9956556

def root_9956550 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956550_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956550_left_fuel : Nat := 1
def small_9956550_left_count : Nat := 1
def small_9956550_left_encoded : String := "00000002"
theorem small_9956550_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956550_left_root small_9956550_left_fuel small_9956550_left_count small_9956550_left_encoded = true := by
  decide +kernel
theorem small_9956550_left_covered : CoveredBy scale carrier boxes small_9956550_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956550_left_root small_9956550_left_fuel small_9956550_left_count small_9956550_left_encoded small_9956550_left_checked

theorem cover_9956550 : CoveredBy scale carrier boxes root_9956550 := by
  apply coveredBy_split_literal root_9956550 small_9956550_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9956556 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9956550_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9956556
#print axioms cover_9956550

def root_9956549 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956549_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956549_right_fuel : Nat := 18
def small_9956549_right_count : Nat := 125
def small_9956549_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000050000000400000006000000060F350D000000000500000000120700FE000000050000000400000003120701060000000308A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE00000005000000080F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000008000000040F34D0FE0000000500000004138670FA045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0000000500000004000000020F350D02045489FB00000005138670FA0000000500000002000000010F350D000CFD9C030F34D10200000001045489FB00000005138670FA00000005000000020F350D02045489FB00000005138670FA00000005000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C03000000050F350D0200000005000000010F350D000CFD9C03000000050F350D020000000500000001000000000000000400000002"
theorem small_9956549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956549_right_root small_9956549_right_fuel small_9956549_right_count small_9956549_right_encoded = true := by
  decide +kernel
theorem small_9956549_right_covered : CoveredBy scale carrier boxes small_9956549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956549_right_root small_9956549_right_fuel small_9956549_right_count small_9956549_right_encoded small_9956549_right_checked

theorem cover_9956549 : CoveredBy scale carrier boxes root_9956549 := by
  apply coveredBy_split_literal root_9956549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9956550 small_9956549_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9956550
  · exact small_9956549_right_covered
#print axioms cover_9956549

def root_9956544 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956544_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9956544_right_fuel : Nat := 1
def small_9956544_right_count : Nat := 1
def small_9956544_right_encoded : String := "00000001"
theorem small_9956544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9956544_right_root small_9956544_right_fuel small_9956544_right_count small_9956544_right_encoded = true := by
  decide +kernel
theorem small_9956544_right_covered : CoveredBy scale carrier boxes small_9956544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9956544_right_root small_9956544_right_fuel small_9956544_right_count small_9956544_right_encoded small_9956544_right_checked

theorem cover_9956544 : CoveredBy scale carrier boxes root_9956544 := by
  apply coveredBy_split_literal root_9956544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9956549 small_9956544_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9956549
  · exact small_9956544_right_covered
#print axioms cover_9956544

def root_9954440 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9954440 : CoveredBy scale carrier boxes root_9954440 := by
  apply coveredBy_split_literal root_9954440 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3732.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9956544 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3732.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9956544
#print axioms cover_9954440

def root_9954435 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9954435_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9954435_right_fuel : Nat := 1
def small_9954435_right_count : Nat := 1
def small_9954435_right_encoded : String := "00000000"
theorem small_9954435_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9954435_right_root small_9954435_right_fuel small_9954435_right_count small_9954435_right_encoded = true := by
  decide +kernel
theorem small_9954435_right_covered : CoveredBy scale carrier boxes small_9954435_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9954435_right_root small_9954435_right_fuel small_9954435_right_count small_9954435_right_encoded small_9954435_right_checked

theorem cover_9954435 : CoveredBy scale carrier boxes root_9954435 := by
  apply coveredBy_split_literal root_9954435 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9954440 small_9954435_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9954440
  · exact small_9954435_right_covered
#print axioms cover_9954435

def root_9951007 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951007 : CoveredBy scale carrier boxes root_9951007 := by
  apply coveredBy_split_literal root_9951007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9951008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9954435 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9951008
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9954435
#print axioms cover_9951007

def root_9951001 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951001_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9951001_left_fuel : Nat := 1
def small_9951001_left_count : Nat := 1
def small_9951001_left_encoded : String := "00000004"
theorem small_9951001_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9951001_left_root small_9951001_left_fuel small_9951001_left_count small_9951001_left_encoded = true := by
  decide +kernel
theorem small_9951001_left_covered : CoveredBy scale carrier boxes small_9951001_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9951001_left_root small_9951001_left_fuel small_9951001_left_count small_9951001_left_encoded small_9951001_left_checked

theorem cover_9951001 : CoveredBy scale carrier boxes root_9951001 := by
  apply coveredBy_split_literal root_9951001 small_9951001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9951007 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9951001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9951007
#print axioms cover_9951001

def root_9970286 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970286_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970286_right_fuel : Nat := 17
def small_9970286_right_count : Nat := 107
def small_9970286_right_encoded : String := "135D44FF0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000008000000080F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A8702000000060F878D030C9A86FA0000000600000008000000010000000313867106000000030C9A87020F875103000000010C9A86FA000000060F8750FB028000FE0000000600000005000000020F878D030C9A86FA0F878CFB000000020000000700000005000000010F34D0FA0000000600000002000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA00000002045489FD1386AD060C9A8700000000080F878D010C9A87020000000600000008000000000000000313867106000000030C9A87000F875101000000000C9A87020F875103000000010C9A86FA000000060F8750FB028000FE000000060000000600000002000000080F878D010C9A87020F875103000000010C9A86FA000000060F8750FB028000FE0000000600000006000000020F878D030000000800000001000000000F34D0FA045489FD000000060000000800000002000000010000000000000004"
theorem small_9970286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970286_right_root small_9970286_right_fuel small_9970286_right_count small_9970286_right_encoded = true := by
  decide +kernel
theorem small_9970286_right_covered : CoveredBy scale carrier boxes small_9970286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970286_right_root small_9970286_right_fuel small_9970286_right_count small_9970286_right_encoded small_9970286_right_checked

theorem cover_9970286 : CoveredBy scale carrier boxes root_9970286 := by
  apply coveredBy_split_literal root_9970286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3737.root small_9970286_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3737.covered
  · exact small_9970286_right_covered
#print axioms cover_9970286

def root_9970280 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970280_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970280_left_fuel : Nat := 1
def small_9970280_left_count : Nat := 1
def small_9970280_left_encoded : String := "00000003"
theorem small_9970280_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970280_left_root small_9970280_left_fuel small_9970280_left_count small_9970280_left_encoded = true := by
  decide +kernel
theorem small_9970280_left_covered : CoveredBy scale carrier boxes small_9970280_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970280_left_root small_9970280_left_fuel small_9970280_left_count small_9970280_left_encoded small_9970280_left_checked

theorem cover_9970280 : CoveredBy scale carrier boxes root_9970280 := by
  apply coveredBy_split_literal root_9970280 small_9970280_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970286 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9970280_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970286
#print axioms cover_9970280

def root_9970068 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970068_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970068_left_fuel : Nat := 16
def small_9970068_left_count : Nat := 99
def small_9970068_left_encoded : String := "12073D06050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0000000800000008000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030C9A8702000000060F878D03000000060000000100000006000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000006000000030F34D106000000030C9A87000F875101000000000C9A870200000006000000080F878D010C9A8702000000060F878D030000000800000001000000000F34D0FA00000006000000020000000100000000135D44FF0CFD9C010F34D100000000000CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030000000600000006000000010F350D000CFD9C03000000080F350D020CFD9BFB0F350CFA000000020CFD9BFD00000006000000080000000800000001000000000000000400000003"
theorem small_9970068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970068_left_root small_9970068_left_fuel small_9970068_left_count small_9970068_left_encoded = true := by
  decide +kernel
theorem small_9970068_left_covered : CoveredBy scale carrier boxes small_9970068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970068_left_root small_9970068_left_fuel small_9970068_left_count small_9970068_left_encoded small_9970068_left_checked

theorem cover_9970068 : CoveredBy scale carrier boxes root_9970068 := by
  apply coveredBy_split_literal root_9970068 small_9970068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970280 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9970068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970280
#print axioms cover_9970068

def root_9970062 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970062_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970062_left_fuel : Nat := 1
def small_9970062_left_count : Nat := 1
def small_9970062_left_encoded : String := "00000002"
theorem small_9970062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970062_left_root small_9970062_left_fuel small_9970062_left_count small_9970062_left_encoded = true := by
  decide +kernel
theorem small_9970062_left_covered : CoveredBy scale carrier boxes small_9970062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970062_left_root small_9970062_left_fuel small_9970062_left_count small_9970062_left_encoded small_9970062_left_checked

theorem cover_9970062 : CoveredBy scale carrier boxes root_9970062 := by
  apply coveredBy_split_literal root_9970062 small_9970062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970068 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9970062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970068
#print axioms cover_9970062

def root_9970061 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970061_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970061_right_fuel : Nat := 11
def small_9970061_right_count : Nat := 53
def small_9970061_right_encoded : String := "120700FA08A912FD12073D06050000FE135D80FF000000040CFD9C010F34D100000000000000000600000006135D44FF0CFD9C010F34D10000000000000000060000000600000004000000031207010600000003050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D1020000000100000008000000060F350D000CFD9C03000000080F350D02045489FB00000006000000060000000100000000135D44FF0CFD9C010F34D100000000000CFD9C0300000007000000060F350D0000000008000000000000000400000002"
theorem small_9970061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970061_right_root small_9970061_right_fuel small_9970061_right_count small_9970061_right_encoded = true := by
  decide +kernel
theorem small_9970061_right_covered : CoveredBy scale carrier boxes small_9970061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970061_right_root small_9970061_right_fuel small_9970061_right_count small_9970061_right_encoded small_9970061_right_checked

theorem cover_9970061 : CoveredBy scale carrier boxes root_9970061 := by
  apply coveredBy_split_literal root_9970061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970062 small_9970061_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970062
  · exact small_9970061_right_covered
#print axioms cover_9970061

def root_9970056 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970056_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9970056_right_fuel : Nat := 1
def small_9970056_right_count : Nat := 1
def small_9970056_right_encoded : String := "00000001"
theorem small_9970056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9970056_right_root small_9970056_right_fuel small_9970056_right_count small_9970056_right_encoded = true := by
  decide +kernel
theorem small_9970056_right_covered : CoveredBy scale carrier boxes small_9970056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9970056_right_root small_9970056_right_fuel small_9970056_right_count small_9970056_right_encoded small_9970056_right_checked

theorem cover_9970056 : CoveredBy scale carrier boxes root_9970056 := by
  apply coveredBy_split_literal root_9970056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970061 small_9970056_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970061
  · exact small_9970056_right_covered
#print axioms cover_9970056

def root_9969970 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969970_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969970_left_fuel : Nat := 17
def small_9969970_left_count : Nat := 41
def small_9969970_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D06050000FE0000000800000008000000031207010600000003050000FE135D80FF000000040CFD9C010F34D10000000000000000080F350D0004548A031386710200000001000000081386AD020CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A870000000008000000080000000800000001000000000000000800000008"
theorem small_9969970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969970_left_root small_9969970_left_fuel small_9969970_left_count small_9969970_left_encoded = true := by
  decide +kernel
theorem small_9969970_left_covered : CoveredBy scale carrier boxes small_9969970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969970_left_root small_9969970_left_fuel small_9969970_left_count small_9969970_left_encoded small_9969970_left_checked

theorem cover_9969970 : CoveredBy scale carrier boxes root_9969970 := by
  apply coveredBy_split_literal root_9969970 small_9969970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9970056 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9969970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9970056
#print axioms cover_9969970

def root_9969965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969965_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9969965_right_fuel : Nat := 1
def small_9969965_right_count : Nat := 1
def small_9969965_right_encoded : String := "00000000"
theorem small_9969965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9969965_right_root small_9969965_right_fuel small_9969965_right_count small_9969965_right_encoded = true := by
  decide +kernel
theorem small_9969965_right_covered : CoveredBy scale carrier boxes small_9969965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9969965_right_root small_9969965_right_fuel small_9969965_right_count small_9969965_right_encoded small_9969965_right_checked

theorem cover_9969965 : CoveredBy scale carrier boxes root_9969965 := by
  apply coveredBy_split_literal root_9969965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9969970 small_9969965_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9969970
  · exact small_9969965_right_covered
#print axioms cover_9969965

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
  apply coveredBy_split_literal root_9969055 small_9969055_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9969965 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9969055_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9969965
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
  apply coveredBy_split_literal root_9969050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9969055 small_9969050_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9969055
  · exact small_9969050_right_covered
#print axioms cover_9969050

def root_9951000 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9951000 : CoveredBy scale carrier boxes root_9951000 := by
  apply coveredBy_split_literal root_9951000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9951001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9969050 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9951001
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9969050
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
  apply coveredBy_split_literal root_9950994 small_9950994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9951000 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9950994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9951000
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
  apply coveredBy_split_literal root_9950692 small_9950692_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9950994 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9950692_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9950994
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
  apply coveredBy_split_literal root_9950686 small_9950686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9950692 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9950686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9950692
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
  apply coveredBy_split_literal root_9975058 small_9975058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9975064 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9975058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9975064
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
  apply coveredBy_split_literal root_9975057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9975058 small_9975057_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9975058
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
  apply coveredBy_split_literal root_9975051 small_9975051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9975057 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9975051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9975057
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
  apply coveredBy_split_literal root_9974797 small_9974797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9975051 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9974797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9975051
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
  apply coveredBy_split_literal root_9974792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9974797 small_9974792_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9974797
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
  apply coveredBy_split_literal root_9973958 small_9973958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9974792 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9973958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9974792
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
  apply coveredBy_split_literal root_9973953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973958 small_9973953_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973958
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
  apply coveredBy_split_literal root_9973763 small_9973763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973953 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9973763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973953
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
  apply coveredBy_split_literal root_9973757 small_9973757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973763 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9973757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973763
#print axioms cover_9973757

def root_9980487 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980487_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980487_left_fuel : Nat := 26
def small_9980487_left_count : Nat := 465
def small_9980487_left_encoded : String := "0F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004022A457D0000000913E1C506000000030B4D44000000000910804D010B4D44020000000910804D0308C000FA11FC24FB0000000200000009000000090000000100000000128A40FF022A457D0000000913E1C506000000030B4D44000000000910804D010B4D44020000000910804D0308C000FA0000000900000009000000010000000000000004128A40FB078000FE128A7CFF00000004022A457D0000000913E1C506000000030B4D44000000000910804D010B4D44020000000910804D03064000FA00000009000000090000000100000000128A40FF022A457D0000000913E1C506000000030B4D44000000000910804D010B4D44020000000910804D0300000009000000010000000000000004000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF00000004022A457D13E201060B4D440010801101000000000DE7CA02000000090000000710804D010DE7CA020E5FD9030000000108C000FA00000009000000090E60150308C000FA11FC24FB0000000208C000FE000000070000000811FBE8FB000000070000000200000001000000000000000313E1C506000000030B4D440010801101000000000DE7CA020E5FD9030000000108C000FA11FC24FB0000000200000009000000090E60150308C000FA11FC24FB000000020000000A11FBE8FB08C000FE0000000711FBE8FF0115233D0000000713F85906000000030000000900000004000000020000000110804D010DE7CA020E5FD9030000000108C000FA11FC24FB0000000208C000FE11FC24FF000000040115233D0000000913F85906000000030BF3E58000000005100929010D412882000000050EFA4D0300000009000000010000000011FBE8FF0115233D0000000913F85906000000030BF3E580000000091009290100000009000000000000000411FBE8FB08C000FE11FC24FF000000040115233D0000000713F85906000000030BF3E5800000000710092901000000090000000011FBE8FF0115233D0000000913F85906000000030000000900000004000000020E60150308C000FA11FC24FB0000000208C000FE11FC24FF000000040115233D13F895060DAED8830E9625020000000100000007000000070000000313F85906000000030DAED8830E962502000000010BF3E5800000000A10092901096000FA0000000A11AA80FB0000000700000002000000000E9661020BF3E5800000000A10092901096000FA0000000A11AA80FB0000000700000002000000000000000111FBE8FF0115233D0000000813F85906000000030DAED8830E96250200000001000000080000000A0000000411FBE8FB08C000FE11FC24FF000000040115233D0000000713F85906000000030DAED8830E96250200000001000000070000000711FBE8FF0115233D13F895060DAED8830E96250200000001000000080E96610200000009000000010000000313F85906000000030DAED8830E962502000000010BF3E5801008ED0100000000082000FA0000000700000005000000050E9661020BF3E5800000000910092901082000FA124698FB000000020000000900000005000000000000000100000004000000020000000100000000128A40FF022A457D13E201060B4D440010801101000000000DE7CA02000000090000000810804D010DE7CA020E5FD903000000010000000900000008000000000000000313E1C506000000030B4D440010801101000000000DE7CA020E5FD9030000000108C000FA00000009000000090E60150308C000FA0000000811FBE8FB064000FE12FFACFF000000040000000800000005000000020000000110804D010DE7CA020E5FD9030000000108C000FA11FC24FB00000002064000FE12FFACFF00000004000000090000000811FBE8FB064000FE12FFACFF000000040000000900000005000000020E60150308C000FA0000000800000005000000010000000000000004128A40FB078000FE128A7CFF00000004022A457D13E201060B4D44000000000710804D010DE7CA020E5FD903000000010000000700000007000000000000000313E1C506000000030B4D440010801101000000000DE7CA020E5FD90300000001064000FA00000007000000070E601503064000FA00000007000000070000000110804D010DE7CA020E5FD90300000001064000FA12FFACFB0000000208C000FE11FC24FF00000004000000070000000912FF70FB08C000FE0000000700000009000000020E601503064000FA12FFACFB0000000208C000FE11FC24FF000000040000000700000005000000050000000100000000128A40FF022A457D13E201060B4D440010801101000000000DE7CA02000000090E601503000000050000000110804D010DE7CA020E5FD903000000010000000900000005000000000000000313E1C506000000030B4D440010801101000000000DE7CA020E5FD90300000001000000090E601503000000050000000110804D010000000500000000000000040000000200000001"
theorem small_9980487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9980487_left_root small_9980487_left_fuel small_9980487_left_count small_9980487_left_encoded = true := by
  decide +kernel
theorem small_9980487_left_covered : CoveredBy scale carrier boxes small_9980487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9980487_left_root small_9980487_left_fuel small_9980487_left_count small_9980487_left_encoded small_9980487_left_checked

theorem cover_9980487 : CoveredBy scale carrier boxes root_9980487 := by
  apply coveredBy_split_literal root_9980487 small_9980487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3739.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9980487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3739.covered
#print axioms cover_9980487

def root_9980481 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980481_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980481_left_fuel : Nat := 1
def small_9980481_left_count : Nat := 1
def small_9980481_left_encoded : String := "00000003"
theorem small_9980481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9980481_left_root small_9980481_left_fuel small_9980481_left_count small_9980481_left_encoded = true := by
  decide +kernel
theorem small_9980481_left_covered : CoveredBy scale carrier boxes small_9980481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9980481_left_root small_9980481_left_fuel small_9980481_left_count small_9980481_left_encoded small_9980481_left_checked

theorem cover_9980481 : CoveredBy scale carrier boxes root_9980481 := by
  apply coveredBy_split_literal root_9980481 small_9980481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9980487 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9980481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9980487
#print axioms cover_9980481

def root_9980119 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980119_left_fuel : Nat := 18
def small_9980119_left_count : Nat := 173
def small_9980119_left_encoded : String := "1386AD060C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002078000FE0000000900000009128A40FB078000FE0000000900000009000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE7D0000000712EA5906000000030B4D44000000000710804D010DE7CA02000000090000000700000000128A40FF0000000800000004128A40FB078000FE128A7CFF0000000400000007128A40FF067ECE7D0000000712EA5906000000030B4D44000000000810804D010DE7CA020000000900000005000000000000000400000002000000010F878D010C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE7D0000000612EA5906000000030DE7CA000000000900000006128A40FF0000000600000004128A40FB078000FE128A7CFF000000040000000A128A40FF067ECE7D0000000612EA5906000000030DE7CA00000000090000000A00000004000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE7D12EA95060DE7CA000E5FD901000000000DE7CA0200000009000000070000000A0000000312EA5906000000030DE7CA000E5FD901000000000DE7CA020E5FD9030000000108C000FA00000009000000090E60150308C000FA0000000811FBE8FB0000000700000002000000010E6015010DE7CA020E5FD9030000000108C000FA000000060000000A0E60150308C000FA11FC24FB0000000200000008000000050000000100000000128A40FF067ECE7D0000000812EA5906000000030DE7CA00000000080E601501000000050000000000000004128A40FB078000FE128A7CFF00000004067ECE7D0000000A12EA5906000000030DE7CA000E5FD901000000000000000A0000000A0000000500000002000000010000000000000003"
theorem small_9980119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9980119_left_root small_9980119_left_fuel small_9980119_left_count small_9980119_left_encoded = true := by
  decide +kernel
theorem small_9980119_left_covered : CoveredBy scale carrier boxes small_9980119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9980119_left_root small_9980119_left_fuel small_9980119_left_count small_9980119_left_encoded small_9980119_left_checked

theorem cover_9980119 : CoveredBy scale carrier boxes root_9980119 := by
  apply coveredBy_split_literal root_9980119 small_9980119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9980481 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9980119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9980481
#print axioms cover_9980119

def root_9980114 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980114_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9980114_right_fuel : Nat := 1
def small_9980114_right_count : Nat := 1
def small_9980114_right_encoded : String := "00000001"
theorem small_9980114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9980114_right_root small_9980114_right_fuel small_9980114_right_count small_9980114_right_encoded = true := by
  decide +kernel
theorem small_9980114_right_covered : CoveredBy scale carrier boxes small_9980114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9980114_right_root small_9980114_right_fuel small_9980114_right_count small_9980114_right_encoded small_9980114_right_checked

theorem cover_9980114 : CoveredBy scale carrier boxes root_9980114 := by
  apply coveredBy_split_literal root_9980114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9980119 small_9980114_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9980119
  · exact small_9980114_right_covered
#print axioms cover_9980114

def root_9979614 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979614_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979614_left_fuel : Nat := 30
def small_9979614_left_count : Nat := 235
def small_9979614_left_encoded : String := "0F34D10200000001045489FD1386AD060C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040000000800000008128A40FB078000FE128A7CFF000000040000000700000005000000020F878D01078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578300000008000000080000000500000005000000000000000313867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D1010200000001022A457D0000000813E1C506000000030B4D44000000000810804D01000000080000000010D13D02022A457D13E201060B4D44000000000810804D0108C000FA0000000811FBE8FB08C000FE000000070000000500000002000000000000000313E1C506000000030B4D4400108011010000000008C000FA11FC24FB000000020000000A11FBE8FB08C000FE0000000711FBE8FF00000008000000040000000210804D0108C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C31011710200000001000000081011AD020115233D0000000713F85906000000030BF3E5800000000810092901096000FA0000000811AA80FB000000070000000200000000000000010000000811FBE8FB08C000FE11FC24FF000000040BE879C31011710200000001000000070000000700000005000000020000000000000001128A40FF0AD35783000000080000000800000004128A40FB078000FE128A7CFF000000040AD3578310D10102000000010000000510D13D02022A457D13E201060B4D440000000007000000050000000313E1C506000000030B4D44001080110100000000064000FA0000000700000005000000050000000100000005000000020F878D01078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D10102000000010000000510D13D02022A457D13E201060DE7CA000E5FD9010000000008C000FA11FC24FB000000020000000800000005000000050000000313E1C506000000030DE7CA000E5FD9010000000008C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C31011710200000001000000051011AD020115233D0000000813F85906000000030D4128800EFA110100000000096000FA11AABCFB000000020000000811AA80FB096000FE11AABCFF000000040000000700000005000000020EFA4D01096000FA11AABCFB000000020000000800000005000000000000000100000005000000050000000500000001000000050000000500000000"
theorem small_9979614_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979614_left_root small_9979614_left_fuel small_9979614_left_count small_9979614_left_encoded = true := by
  decide +kernel
theorem small_9979614_left_covered : CoveredBy scale carrier boxes small_9979614_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979614_left_root small_9979614_left_fuel small_9979614_left_count small_9979614_left_encoded small_9979614_left_checked

theorem cover_9979614 : CoveredBy scale carrier boxes root_9979614 := by
  apply coveredBy_split_literal root_9979614 small_9979614_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9980114 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9979614_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9980114
#print axioms cover_9979614

def root_9979609 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979609_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979609_right_fuel : Nat := 1
def small_9979609_right_count : Nat := 1
def small_9979609_right_encoded : String := "00000000"
theorem small_9979609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979609_right_root small_9979609_right_fuel small_9979609_right_count small_9979609_right_encoded = true := by
  decide +kernel
theorem small_9979609_right_covered : CoveredBy scale carrier boxes small_9979609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979609_right_root small_9979609_right_fuel small_9979609_right_count small_9979609_right_encoded small_9979609_right_checked

theorem cover_9979609 : CoveredBy scale carrier boxes root_9979609 := by
  apply coveredBy_split_literal root_9979609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979614 small_9979609_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979614
  · exact small_9979609_right_covered
#print axioms cover_9979609

def root_9979107 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979107_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979107_left_fuel : Nat := 32
def small_9979107_left_count : Nat := 237
def small_9979107_left_encoded : String := "0F34D100000000000CFD9C030F34D10200000001000000050F350D02045489FD1386AD060C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040000000A128A40FF00000006000000040000000A0F878D03078000FA128A7CFB00000002078000FE128A7CFF000000040AD357810000000A0000000A0000000500000005000000010000000313867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D1010000000000022A457D0000000A13E1C506000000030B4D44020000000A10804D030000000A0000000110D13D00022A457D13E201060B4D44020000000A10804D0308C000FA11FC24FB00000002000000060000000A000000010000000313E1C506000000030B4D4402108011030000000108C000FA11FC24FB0000000208C000FE000000060000000611FBE8FB0000000A0000000210804D0308C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C110117100000000000000000A1011AD000115233D0000000613F85906000000030BF3E5820000000810092903096000FA11AABCFB00000002000000060000000A000000010000000011FBE8FF0BE879C1101171000000000000000006000000060000000411FBE8FB08C000FE0000000A00000005000000020000000100000000128A40FF0AD3578110D10100000000000000000510D13D00022A457D13E201060B4D440200000006000000050000000313E1C506000000030B4D4402108011030000000108C000FA0000000600000005000000050000000000000004128A40FB078000FE128A7CFF000000040AD357810000000A0000000A00000005000000020F878D03078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578110D10100000000000000000510D13D00022A457D13E201060DE7CA020E5FD9030000000108C000FA11FC24FB0000000208C000FE0000000A0000000500000005000000050000000313E1C506000000030DE7CA020E5FD9030000000108C000FA11FC24FB0000000208C000FE11FC24FF000000040BE879C11011710000000000000000051011AD000115233D0000000A13F85906000000030D4128820EFA110300000001096000FA11AABCFB00000002096000FE0000000A11AA80FF00000006000000040000000A0EFA4D03096000FA11AABCFB00000002096000FE11AABCFF000000040000000A000000050000000500000001000000000000000500000005000000050000000000000005000000050000000100000001"
theorem small_9979107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979107_left_root small_9979107_left_fuel small_9979107_left_count small_9979107_left_encoded = true := by
  decide +kernel
theorem small_9979107_left_covered : CoveredBy scale carrier boxes small_9979107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979107_left_root small_9979107_left_fuel small_9979107_left_count small_9979107_left_encoded small_9979107_left_checked

theorem cover_9979107 : CoveredBy scale carrier boxes root_9979107 := by
  apply coveredBy_split_literal root_9979107 small_9979107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979609 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9979107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979609
#print axioms cover_9979107

def root_9979101 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979101_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979101_left_fuel : Nat := 1
def small_9979101_left_count : Nat := 1
def small_9979101_left_encoded : String := "00000004"
theorem small_9979101_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979101_left_root small_9979101_left_fuel small_9979101_left_count small_9979101_left_encoded = true := by
  decide +kernel
theorem small_9979101_left_covered : CoveredBy scale carrier boxes small_9979101_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979101_left_root small_9979101_left_fuel small_9979101_left_count small_9979101_left_encoded small_9979101_left_checked

theorem cover_9979101 : CoveredBy scale carrier boxes root_9979101 := by
  apply coveredBy_split_literal root_9979101 small_9979101_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979107 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9979101_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979107
#print axioms cover_9979101

def root_9979100 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979100_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979100_right_fuel : Nat := 22
def small_9979100_right_count : Nat := 139
def small_9979100_right_encoded : String := "135D44FF0CFD9C010F34D100000000000CFD9C03000000050F350D02045489FD00000005138671060000000300000005000000010F350D000CFD9C030F34D10200000001045489FD000000051386710600000003000000050F350D02045489FD1386AD060C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB000000020000000600000009000000080F878D010C9A87020F87510300000001078000FA00000006128A40FB000000050000000200000008000000000000000313867106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002028000FE13D7ECFF00000004022A457D0000000913E1C506000000030B4D44000000000910804D01000000090000000000000009128A40FB028000FE13D7ECFF00000004022A457D0000000913E1C506000000030B4D44000000000910804D01000000090000000000000005000000020F878D03078000FA128A7CFB00000002028000FE13D7ECFF00000004022A457D0000000813E1C506000000030B4D44000000000810804D0100000005000000000000000500000005000000010F878D010C9A87020F87510300000001078000FA128A7CFB00000002028000FE13D7ECFF00000004022A457D0000000613E1C506000000030DE7CA000E5FD901000000000B4D44020000000610804D0300000005000000010E601501000000050000000000000005000000050000000500000000000000010000000000000004"
theorem small_9979100_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979100_right_root small_9979100_right_fuel small_9979100_right_count small_9979100_right_encoded = true := by
  decide +kernel
theorem small_9979100_right_covered : CoveredBy scale carrier boxes small_9979100_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979100_right_root small_9979100_right_fuel small_9979100_right_count small_9979100_right_encoded small_9979100_right_checked

theorem cover_9979100 : CoveredBy scale carrier boxes root_9979100 := by
  apply coveredBy_split_literal root_9979100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979101 small_9979100_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979101
  · exact small_9979100_right_covered
#print axioms cover_9979100

def root_9979094 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979094_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979094_left_fuel : Nat := 1
def small_9979094_left_count : Nat := 1
def small_9979094_left_encoded : String := "00000002"
theorem small_9979094_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979094_left_root small_9979094_left_fuel small_9979094_left_count small_9979094_left_encoded = true := by
  decide +kernel
theorem small_9979094_left_covered : CoveredBy scale carrier boxes small_9979094_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979094_left_root small_9979094_left_fuel small_9979094_left_count small_9979094_left_encoded small_9979094_left_checked

theorem cover_9979094 : CoveredBy scale carrier boxes root_9979094 := by
  apply coveredBy_split_literal root_9979094 small_9979094_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979100 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9979094_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979100
#print axioms cover_9979094

def root_9979093 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979093_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979093_right_fuel : Nat := 22
def small_9979093_right_count : Nat := 179
def small_9979093_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C03000000050F350D02045489FD00000005138671060000000300000005000000010F350D000CFD9C030F34D10200000001045489FD000000051386710600000003000000050F350D02045489FD1386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE0000000700000009000000090F878D03028000FA13D7ECFB00000002078000FE00000007128A40FF00000005000000040000000A000000010F878D010C9A87020000000A0F878D030000000500000001000000000000000313867106000000030C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A457D0000000913E1C506000000030B4D44000000000910804D010000000900000000128A40FF022A457D0000000913E1C506000000030B4D44000000000910804D0100000009000000000000000413D7B0FB078000FE128A7CFF000000040000000900000005000000020F878D03028000FA13D7ECFB00000002078000FE128A7CFF00000004022A457D0000000713E1C506000000030B4D440010801101000000000000000710804D0100000005000000000000000500000005000000010F878D010C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A457D0000000A13E1C506000000030DE7CA000E5FD901000000000000000A0000000A000000050000000500000005000000000000000100000000135D44FF0CFD9C010F34D10000000000000000050F350D000CFD9C030F34D10200000001000000050F350D02045489FD1386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA000000090000000500000005000000050000000313867106000000030000000500000001000000000000000400000002"
theorem small_9979093_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979093_right_root small_9979093_right_fuel small_9979093_right_count small_9979093_right_encoded = true := by
  decide +kernel
theorem small_9979093_right_covered : CoveredBy scale carrier boxes small_9979093_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979093_right_root small_9979093_right_fuel small_9979093_right_count small_9979093_right_encoded small_9979093_right_checked

theorem cover_9979093 : CoveredBy scale carrier boxes root_9979093 := by
  apply coveredBy_split_literal root_9979093 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979094 small_9979093_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979094
  · exact small_9979093_right_covered
#print axioms cover_9979093

def root_9979087 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979087_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9979087_left_fuel : Nat := 1
def small_9979087_left_count : Nat := 1
def small_9979087_left_encoded : String := "00000003"
theorem small_9979087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9979087_left_root small_9979087_left_fuel small_9979087_left_count small_9979087_left_encoded = true := by
  decide +kernel
theorem small_9979087_left_covered : CoveredBy scale carrier boxes small_9979087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9979087_left_root small_9979087_left_fuel small_9979087_left_count small_9979087_left_encoded small_9979087_left_checked

theorem cover_9979087 : CoveredBy scale carrier boxes root_9979087 := by
  apply coveredBy_split_literal root_9979087 small_9979087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979093 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9979087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979093
#print axioms cover_9979087

def root_9978725 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978725_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978725_left_fuel : Nat := 18
def small_9978725_left_count : Nat := 169
def small_9978725_left_encoded : String := "12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFD00000008000000080F350D020CFD9BFD0000000A0F34D106000000030000000A000000010F350D000CFD9C030F34D102000000010CFD9BFD000000080F34D10600000003000000080F350D020CFD9BFD0F350D060C9A8700000000080000000A000000030F34D106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA00000006000000090F878D03078000FA00000008128A40FB0000000700000002000000010F878D010C9A87020F87510300000001078000FA000000060000000A0F878D03078000FA128A7CFB00000002000000080000000A00000001000000000000000100000000135D44FF0CFD9C010F34D100000000000CFD9C030F34D10200000001000000050F350D020CFD9BFD0000000A0F34D106000000030C9A87020F875103000000010000000600000005000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFD000000080F34D106000000030C9A87000000000800000008000000010000000000000004135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9C030F34D102000000010CFD9BFD000000080F34D106000000030C9A87000F8751010000000000000007000000050F350D020CFD9BFD0000000A0F34D106000000030C9A87000F875101000000000000000A0000000A0000000100000000135D44FF0CFD9C010F34D100000000000000000A0F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFD000000080F34D106000000030C9A87000F875101000000000C9A87020000000A00000005000000050000000100000000000000040000000200000003"
theorem small_9978725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978725_left_root small_9978725_left_fuel small_9978725_left_count small_9978725_left_encoded = true := by
  decide +kernel
theorem small_9978725_left_covered : CoveredBy scale carrier boxes small_9978725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978725_left_root small_9978725_left_fuel small_9978725_left_count small_9978725_left_encoded small_9978725_left_checked

theorem cover_9978725 : CoveredBy scale carrier boxes root_9978725 := by
  apply coveredBy_split_literal root_9978725 small_9978725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9979087 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9979087
#print axioms cover_9978725

def root_9978720 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978720_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978720_right_fuel : Nat := 1
def small_9978720_right_count : Nat := 1
def small_9978720_right_encoded : String := "00000001"
theorem small_9978720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978720_right_root small_9978720_right_fuel small_9978720_right_count small_9978720_right_encoded = true := by
  decide +kernel
theorem small_9978720_right_covered : CoveredBy scale carrier boxes small_9978720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978720_right_root small_9978720_right_fuel small_9978720_right_count small_9978720_right_encoded small_9978720_right_checked

theorem cover_9978720 : CoveredBy scale carrier boxes root_9978720 := by
  apply coveredBy_split_literal root_9978720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978725 small_9978720_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978725
  · exact small_9978720_right_covered
#print axioms cover_9978720

def root_9978552 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978552_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978552_left_fuel : Nat := 20
def small_9978552_left_count : Nat := 79
def small_9978552_left_encoded : String := "120701020000000108A912FD12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C01000000080F350D00000000080000000000000008135D44FB050000FE135D80FF000000040CFD9C01000000050F350D0004548A03000000051386AD020CFD9BFD000000050F34D106000000030000000500000001000000000000000500000002000000031207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D10000000000000000050F350D0004548A031386710200000001000000051386AD02045489FD1386AD060C9A870000000008000000050000000313867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040000000800000005000000050000000500000001000000000000000500000005"
theorem small_9978552_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978552_left_root small_9978552_left_fuel small_9978552_left_count small_9978552_left_encoded = true := by
  decide +kernel
theorem small_9978552_left_covered : CoveredBy scale carrier boxes small_9978552_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978552_left_root small_9978552_left_fuel small_9978552_left_count small_9978552_left_encoded small_9978552_left_checked

theorem cover_9978552 : CoveredBy scale carrier boxes root_9978552 := by
  apply coveredBy_split_literal root_9978552 small_9978552_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978720 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978552_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978720
#print axioms cover_9978552

def root_9978547 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978547_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978547_right_fuel : Nat := 1
def small_9978547_right_count : Nat := 1
def small_9978547_right_encoded : String := "00000000"
theorem small_9978547_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978547_right_root small_9978547_right_fuel small_9978547_right_count small_9978547_right_encoded = true := by
  decide +kernel
theorem small_9978547_right_covered : CoveredBy scale carrier boxes small_9978547_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978547_right_root small_9978547_right_fuel small_9978547_right_count small_9978547_right_encoded small_9978547_right_checked

theorem cover_9978547 : CoveredBy scale carrier boxes root_9978547 := by
  apply coveredBy_split_literal root_9978547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978552 small_9978547_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978552
  · exact small_9978547_right_covered
#print axioms cover_9978547

def root_9978379 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978379_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978379_left_fuel : Nat := 22
def small_9978379_left_count : Nat := 79
def small_9978379_left_encoded : String := "120701000000000008A9130312070102000000010000000512073D0208A912FD12073D06050000FA135D80FB00000002050000FE135D80FF0000000404548A010000000A0000000A135D44FF04548A01000000051386AD000CFD9C03000000050F350D020CFD9BFD000000050F34D10600000003000000050000000100000000000000040000000A000000031207010600000003050000FA135D80FB00000002050000FE135D80FF0000000404548A011386710000000000000000051386AD000CFD9C030F34D10200000001000000050F350D02045489FD1386AD060C9A87020000000A000000050000000313867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040000000A0000000500000005000000050000000100000000000000050000000500000001"
theorem small_9978379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978379_left_root small_9978379_left_fuel small_9978379_left_count small_9978379_left_encoded = true := by
  decide +kernel
theorem small_9978379_left_covered : CoveredBy scale carrier boxes small_9978379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978379_left_root small_9978379_left_fuel small_9978379_left_count small_9978379_left_encoded small_9978379_left_checked

theorem cover_9978379 : CoveredBy scale carrier boxes root_9978379 := by
  apply coveredBy_split_literal root_9978379 small_9978379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978547 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978547
#print axioms cover_9978379

def root_9978374 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978374_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978374_right_fuel : Nat := 1
def small_9978374_right_count : Nat := 1
def small_9978374_right_encoded : String := "00000004"
theorem small_9978374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978374_right_root small_9978374_right_fuel small_9978374_right_count small_9978374_right_encoded = true := by
  decide +kernel
theorem small_9978374_right_covered : CoveredBy scale carrier boxes small_9978374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978374_right_root small_9978374_right_fuel small_9978374_right_count small_9978374_right_encoded small_9978374_right_checked

theorem cover_9978374 : CoveredBy scale carrier boxes root_9978374 := by
  apply coveredBy_split_literal root_9978374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978379 small_9978374_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978379
  · exact small_9978374_right_covered
#print axioms cover_9978374

def root_9973756 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9973756 : CoveredBy scale carrier boxes root_9973756 := by
  apply coveredBy_split_literal root_9973756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9978374 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973757
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9978374
#print axioms cover_9973756

def root_9973750 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973750_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973750_left_fuel : Nat := 1
def small_9973750_left_count : Nat := 1
def small_9973750_left_encoded : String := "00000003"
theorem small_9973750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973750_left_root small_9973750_left_fuel small_9973750_left_count small_9973750_left_encoded = true := by
  decide +kernel
theorem small_9973750_left_covered : CoveredBy scale carrier boxes small_9973750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973750_left_root small_9973750_left_fuel small_9973750_left_count small_9973750_left_encoded small_9973750_left_checked

theorem cover_9973750 : CoveredBy scale carrier boxes root_9973750 := by
  apply coveredBy_split_literal root_9973750 small_9973750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_9973756 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9973750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_9973756
#print axioms cover_9973750

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235
