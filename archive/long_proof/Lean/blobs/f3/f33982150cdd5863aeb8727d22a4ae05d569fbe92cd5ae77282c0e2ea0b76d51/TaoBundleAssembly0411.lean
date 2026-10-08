import TaoBundleAssembly0410
import TaoBundleChunkBatch0555
import TaoBundleChunkBatch0556
import TaoBundleChunkBatch0557
import TaoBundleChunkBatch0558
import TaoBundleChunkBatch0559
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411
def root_5896014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896014_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896014_left_fuel : Nat := 22
def small_5896014_left_count : Nat := 305
def small_5896014_left_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D44F704548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000A000000040F34D0FA0CFD9BFD0000000A0F34D106000000030000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000050F34D0FE0C9A86FA0F878CFB000000020000000A0000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE830000000812EA94F80000000100000008000000000000000A0F8750FF00000008000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F70000000A000000000000000A0F8750FF0000000500000004000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000060F34D0FE0000000A000000040000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000050F34D0FE0000000A00000004000000030F34D106000000030CFD9BFF0000000A0F34D0FE0000000A000000040F34D0FA0CFD9BFD0000000A0F34D106000000030000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0C9A86FA000000060000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000060F8750FB0C9A86FE0000000A0F8750FF0000000600000004000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060000000A00000002120700FE05000100135D44F704548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0000000A00000004000000030F34D106000000030000000A0F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A86FA0000000A0000000A138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0C9A87060F8750FD0000000A000000030000000A0000000200000004000000030F34D10600000003045489FF0000000A138670FE0000000A000000040F34D0FA0CFD9BFD0000000A0000000A0000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0000000A00000004000000030F34D106000000030000000A0F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A86FA0000000A0000000A138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0C9A87060F8750FD0000000A000000030000000A0000000200000004000000030F34D106000000030000000A0F34D0FA0CFD9BFD0000000A0000000A000000020000000400000003"
theorem small_5896014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896014_left_root small_5896014_left_fuel small_5896014_left_count small_5896014_left_encoded = true := by
  decide +kernel
theorem small_5896014_left_covered : CoveredBy scale carrier boxes small_5896014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896014_left_root small_5896014_left_fuel small_5896014_left_count small_5896014_left_encoded small_5896014_left_checked

theorem cover_5896014 : CoveredBy scale carrier boxes root_5896014 := by
  apply coveredBy_split_literal root_5896014 small_5896014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.root_5896676 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5896014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0410.cover_5896676
#print axioms cover_5896014

def root_5896008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896008_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896008_left_fuel : Nat := 1
def small_5896008_left_count : Nat := 1
def small_5896008_left_encoded : String := "00000002"
theorem small_5896008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896008_left_root small_5896008_left_fuel small_5896008_left_count small_5896008_left_encoded = true := by
  decide +kernel
theorem small_5896008_left_covered : CoveredBy scale carrier boxes small_5896008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896008_left_root small_5896008_left_fuel small_5896008_left_count small_5896008_left_encoded small_5896008_left_checked

theorem cover_5896008 : CoveredBy scale carrier boxes root_5896008 := by
  apply coveredBy_split_literal root_5896008 small_5896008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5896014 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5896008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5896014
#print axioms cover_5896008

def root_5896007 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896007_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896007_right_fuel : Nat := 17
def small_5896007_right_count : Nat := 103
def small_5896007_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D44F704548A03138670F8045489FB1386ACFA000000020CFD9BFD0000000A0F34D106000000030000000A00000008000000011386ACF800000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE00000006000000040000000600000000135D80F70000000004548A030000000A00000006120700FE0000000A0000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F704548A03000000091386ACF800000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE000000060000000600000009000000031386710600000003000000090000000900000000135D80F70000000004548A03138670F8045489FB1386ACFA00000002045489FD0000000A0000000900000009000000011386ACF800000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0000000600000005000000030000000500000005120700FE000000090000000400000002"
theorem small_5896007_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896007_right_root small_5896007_right_fuel small_5896007_right_count small_5896007_right_encoded = true := by
  decide +kernel
theorem small_5896007_right_covered : CoveredBy scale carrier boxes small_5896007_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896007_right_root small_5896007_right_fuel small_5896007_right_count small_5896007_right_encoded small_5896007_right_checked

theorem cover_5896007 : CoveredBy scale carrier boxes root_5896007 := by
  apply coveredBy_split_literal root_5896007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5896008 small_5896007_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5896008
  · exact small_5896007_right_covered
#print axioms cover_5896007

def root_5896002 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896002_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896002_right_fuel : Nat := 1
def small_5896002_right_count : Nat := 1
def small_5896002_right_encoded : String := "00000001"
theorem small_5896002_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896002_right_root small_5896002_right_fuel small_5896002_right_count small_5896002_right_encoded = true := by
  decide +kernel
theorem small_5896002_right_covered : CoveredBy scale carrier boxes small_5896002_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896002_right_root small_5896002_right_fuel small_5896002_right_count small_5896002_right_encoded small_5896002_right_checked

theorem cover_5896002 : CoveredBy scale carrier boxes root_5896002 := by
  apply coveredBy_split_literal root_5896002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5896007 small_5896002_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5896007
  · exact small_5896002_right_covered
#print axioms cover_5896002

def root_5905466 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5905466 : CoveredBy scale carrier boxes root_5905466 := by
  apply coveredBy_split_literal root_5905466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2219.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2220.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2219.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2220.covered
#print axioms cover_5905466

def root_5905460 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905460_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905460_left_fuel : Nat := 1
def small_5905460_left_count : Nat := 1
def small_5905460_left_encoded : String := "00000002"
theorem small_5905460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905460_left_root small_5905460_left_fuel small_5905460_left_count small_5905460_left_encoded = true := by
  decide +kernel
theorem small_5905460_left_covered : CoveredBy scale carrier boxes small_5905460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905460_left_root small_5905460_left_fuel small_5905460_left_count small_5905460_left_encoded small_5905460_left_checked

theorem cover_5905460 : CoveredBy scale carrier boxes root_5905460 := by
  apply coveredBy_split_literal root_5905460 small_5905460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5905466 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5905460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5905466
#print axioms cover_5905460

def root_5905459 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905459_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905459_right_fuel : Nat := 16
def small_5905459_right_count : Nat := 87
def small_5905459_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D44F70CFD9C030F34D0F8045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000060000000400000006000000010F350CF800000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF0000000600000005000000060000000000000006120700FE05000100135D44F70CFD9C030F34D0F8045489FB0000000A0000000A000000010F350CF8000000010000000500000000135D80F7000000000CFD9C030000000A000000050000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F70CFD9C030F34D0F8045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040000000500000005000000030000000500000005000000010000000500000000000000050000000500000002"
theorem small_5905459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905459_right_root small_5905459_right_fuel small_5905459_right_count small_5905459_right_encoded = true := by
  decide +kernel
theorem small_5905459_right_covered : CoveredBy scale carrier boxes small_5905459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905459_right_root small_5905459_right_fuel small_5905459_right_count small_5905459_right_encoded small_5905459_right_checked

theorem cover_5905459 : CoveredBy scale carrier boxes root_5905459 := by
  apply coveredBy_split_literal root_5905459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5905460 small_5905459_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5905460
  · exact small_5905459_right_covered
#print axioms cover_5905459

def root_5905453 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905453_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905453_left_fuel : Nat := 1
def small_5905453_left_count : Nat := 1
def small_5905453_left_encoded : String := "00000001"
theorem small_5905453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905453_left_root small_5905453_left_fuel small_5905453_left_count small_5905453_left_encoded = true := by
  decide +kernel
theorem small_5905453_left_covered : CoveredBy scale carrier boxes small_5905453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905453_left_root small_5905453_left_fuel small_5905453_left_count small_5905453_left_encoded small_5905453_left_checked

theorem cover_5905453 : CoveredBy scale carrier boxes root_5905453 := by
  apply coveredBy_split_literal root_5905453 small_5905453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5905459 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5905453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5905459
#print axioms cover_5905453

def root_5896001 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5896001 : CoveredBy scale carrier boxes root_5896001 := by
  apply coveredBy_split_literal root_5896001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5896002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5905453 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5896002
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5905453
#print axioms cover_5896001

def root_5895995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895995_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895995_left_fuel : Nat := 1
def small_5895995_left_count : Nat := 1
def small_5895995_left_encoded : String := "00000004"
theorem small_5895995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895995_left_root small_5895995_left_fuel small_5895995_left_count small_5895995_left_encoded = true := by
  decide +kernel
theorem small_5895995_left_covered : CoveredBy scale carrier boxes small_5895995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895995_left_root small_5895995_left_fuel small_5895995_left_count small_5895995_left_encoded small_5895995_left_checked

theorem cover_5895995 : CoveredBy scale carrier boxes root_5895995 := by
  apply coveredBy_split_literal root_5895995 small_5895995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5896001 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5896001
#print axioms cover_5895995

def root_5908879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5908879 : CoveredBy scale carrier boxes root_5908879 := by
  apply coveredBy_split_literal root_5908879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2221.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2222.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2221.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2222.covered
#print axioms cover_5908879

def root_5908874 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5908874_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5908874_right_fuel : Nat := 1
def small_5908874_right_count : Nat := 1
def small_5908874_right_encoded : String := "00000004"
theorem small_5908874_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5908874_right_root small_5908874_right_fuel small_5908874_right_count small_5908874_right_encoded = true := by
  decide +kernel
theorem small_5908874_right_covered : CoveredBy scale carrier boxes small_5908874_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5908874_right_root small_5908874_right_fuel small_5908874_right_count small_5908874_right_encoded small_5908874_right_checked

theorem cover_5908874 : CoveredBy scale carrier boxes root_5908874 := by
  apply coveredBy_split_literal root_5908874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5908879 small_5908874_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5908879
  · exact small_5908874_right_covered
#print axioms cover_5908874

def root_5895994 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895994 : CoveredBy scale carrier boxes root_5895994 := by
  apply coveredBy_split_literal root_5895994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5908874 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5908874
#print axioms cover_5895994

def root_5895988 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895988_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895988_left_fuel : Nat := 1
def small_5895988_left_count : Nat := 1
def small_5895988_left_encoded : String := "00000003"
theorem small_5895988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895988_left_root small_5895988_left_fuel small_5895988_left_count small_5895988_left_encoded = true := by
  decide +kernel
theorem small_5895988_left_covered : CoveredBy scale carrier boxes small_5895988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895988_left_root small_5895988_left_fuel small_5895988_left_count small_5895988_left_encoded small_5895988_left_checked

theorem cover_5895988 : CoveredBy scale carrier boxes root_5895988 := by
  apply coveredBy_split_literal root_5895988 small_5895988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895994 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895994
#print axioms cover_5895988

def root_5895132 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895132_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895132_left_fuel : Nat := 28
def small_5895132_left_count : Nat := 403
def small_5895132_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F70500010600000008135D80FD0000000304548A03000000051386ACF8000000010CFD9BFB000000050000000600000000135D80F7000000000500010600000006135D80FD0000000304548A03138670F80CFD9BFB00000005000000060000000100000006120700FE05000100135D44F705000106135D44FD04548A03138670F800000008000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA0F878CFB00000002000000060F8750FB02800100000000050000000600000002000000040000000600000003135D80FD0000000304548A03138670F80CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000040F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002028001000000000A0000000A0F8750FB0280010013D7B0F707800106128A40FD067ECE830000000512EA94F8000000010000000A000000030000000A0000000013D7ECF70000000007800106128A40FD067ECE830000000500000006000000030000000A00000002000000040F34D0FA0000000A0000000200000000135D80F70000000005000106135D44FD04548A03138670F80CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA000000060F8750FB00000005000000020000000400000006000000010000000600000003135D80FD0000000304548A03138670F80CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002078001000000000A000000060F8750FB07800100128A40F707800106000000050000000A00000000128A7CF70000000007800106128A40FD00000006000000030000000A00000002000000040F34D0FA0000000600000002000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF00000006138670FE0C9A86FA000000060F8750FB07800100128A40F707800106128A40FD00000006000000030000000A000000000000000600000002000000040000000600000004120700FA08A912FF00000006120700FE0000000600000004000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F705000106135D44FD0000000600000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFF000000050F34D0FE000000060000000400000006000000010F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFF0000000600000009000000060000000000000006120700FE05000100135D44F705000106135D44FD0CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF00000006138670FE000000060000000400000006000000010000000600000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB0280010013D7B0F707800106000000060000000A000000000000000600000002138670FE0C9A86FA0F878CFB00000002028001000000000A000000060F8750FB0280010013D7B0F707800106128A40FD0AD357830000000A00000006000000030000000A0000000013D7ECF70000000007800106128A40FD00000006000000030000000A00000002000000040F34D0FA0000000600000002000000010F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000006138670FE0C9A86F80F878D030C9A86FA0F878CFB00000002000000060F8750FB0000000700000002000000010F875103000000010C9A86FA0000000600000007000000040000000600000000135D80F7000000000500010600000006135D80FD000000030CFD9C030F34D0F800000006000000010000000600000004120700FA00000006000000021151E8FF08A91303120700F8000000080000000112073CF80000000108A912FB12073CFA00000002050001000000000900000006000000060000000400000003"
theorem small_5895132_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895132_left_root small_5895132_left_fuel small_5895132_left_count small_5895132_left_encoded = true := by
  decide +kernel
theorem small_5895132_left_covered : CoveredBy scale carrier boxes small_5895132_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895132_left_root small_5895132_left_fuel small_5895132_left_count small_5895132_left_encoded small_5895132_left_checked

theorem cover_5895132 : CoveredBy scale carrier boxes root_5895132 := by
  apply coveredBy_split_literal root_5895132 small_5895132_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895988 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5895132_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895988
#print axioms cover_5895132

def root_5895126 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895126_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895126_left_fuel : Nat := 1
def small_5895126_left_count : Nat := 1
def small_5895126_left_encoded : String := "00000002"
theorem small_5895126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895126_left_root small_5895126_left_fuel small_5895126_left_count small_5895126_left_encoded = true := by
  decide +kernel
theorem small_5895126_left_covered : CoveredBy scale carrier boxes small_5895126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895126_left_root small_5895126_left_fuel small_5895126_left_count small_5895126_left_encoded small_5895126_left_checked

theorem cover_5895126 : CoveredBy scale carrier boxes root_5895126 := by
  apply coveredBy_split_literal root_5895126 small_5895126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895132 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895132
#print axioms cover_5895126

def root_5914674 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5914674 : CoveredBy scale carrier boxes root_5914674 := by
  apply coveredBy_split_literal root_5914674 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2224.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2225.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2224.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2225.covered
#print axioms cover_5914674

def root_5914668 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914668_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914668_left_fuel : Nat := 1
def small_5914668_left_count : Nat := 1
def small_5914668_left_encoded : String := "00000004"
theorem small_5914668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914668_left_root small_5914668_left_fuel small_5914668_left_count small_5914668_left_encoded = true := by
  decide +kernel
theorem small_5914668_left_covered : CoveredBy scale carrier boxes small_5914668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914668_left_root small_5914668_left_fuel small_5914668_left_count small_5914668_left_encoded small_5914668_left_checked

theorem cover_5914668 : CoveredBy scale carrier boxes root_5914668 := by
  apply coveredBy_split_literal root_5914668 small_5914668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5914674 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5914668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5914674
#print axioms cover_5914668

def root_5914667 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914667_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914667_right_fuel : Nat := 13
def small_5914667_right_count : Nat := 37
def small_5914667_right_encoded : String := "120700FE05000100135D44F7050000FA135D80FB0000000204548A03138670F8045489FD1386AD06045489FF0000000A000000060000000300000006000000011386ACF800000001045489FD1386AD06045489FF1386ACFE00000004028001000000000A00000008000000080000000300000008135D44FB04548A03000000060000000600000002000000000000000800000004"
theorem small_5914667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914667_right_root small_5914667_right_fuel small_5914667_right_count small_5914667_right_encoded = true := by
  decide +kernel
theorem small_5914667_right_covered : CoveredBy scale carrier boxes small_5914667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914667_right_root small_5914667_right_fuel small_5914667_right_count small_5914667_right_encoded small_5914667_right_checked

theorem cover_5914667 : CoveredBy scale carrier boxes root_5914667 := by
  apply coveredBy_split_literal root_5914667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5914668 small_5914667_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5914668
  · exact small_5914667_right_covered
#print axioms cover_5914667

def root_5914661 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914661_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914661_left_fuel : Nat := 1
def small_5914661_left_count : Nat := 1
def small_5914661_left_encoded : String := "00000003"
theorem small_5914661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914661_left_root small_5914661_left_fuel small_5914661_left_count small_5914661_left_encoded = true := by
  decide +kernel
theorem small_5914661_left_covered : CoveredBy scale carrier boxes small_5914661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914661_left_root small_5914661_left_fuel small_5914661_left_count small_5914661_left_encoded small_5914661_left_checked

theorem cover_5914661 : CoveredBy scale carrier boxes root_5914661 := by
  apply coveredBy_split_literal root_5914661 small_5914661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5914667 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5914661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5914667
#print axioms cover_5914661

def root_5913597 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913597 : CoveredBy scale carrier boxes root_5913597 := by
  apply coveredBy_split_literal root_5913597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2223.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5914661 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2223.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5914661
#print axioms cover_5913597

def root_5913592 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913592_right_fuel : Nat := 1
def small_5913592_right_count : Nat := 1
def small_5913592_right_encoded : String := "00000001"
theorem small_5913592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913592_right_root small_5913592_right_fuel small_5913592_right_count small_5913592_right_encoded = true := by
  decide +kernel
theorem small_5913592_right_covered : CoveredBy scale carrier boxes small_5913592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913592_right_root small_5913592_right_fuel small_5913592_right_count small_5913592_right_encoded small_5913592_right_checked

theorem cover_5913592 : CoveredBy scale carrier boxes root_5913592 := by
  apply coveredBy_split_literal root_5913592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913597 small_5913592_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913597
  · exact small_5913592_right_covered
#print axioms cover_5913592

def root_5913591 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913591 : CoveredBy scale carrier boxes root_5913591 := by
  apply coveredBy_split_literal root_5913591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913592 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2226.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2226.covered
#print axioms cover_5913591

def root_5913585 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913585_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913585_left_fuel : Nat := 1
def small_5913585_left_count : Nat := 1
def small_5913585_left_encoded : String := "00000004"
theorem small_5913585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913585_left_root small_5913585_left_fuel small_5913585_left_count small_5913585_left_encoded = true := by
  decide +kernel
theorem small_5913585_left_covered : CoveredBy scale carrier boxes small_5913585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913585_left_root small_5913585_left_fuel small_5913585_left_count small_5913585_left_encoded small_5913585_left_checked

theorem cover_5913585 : CoveredBy scale carrier boxes root_5913585 := by
  apply coveredBy_split_literal root_5913585 small_5913585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913591 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5913585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913591
#print axioms cover_5913585

def root_5913584 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913584 : CoveredBy scale carrier boxes root_5913584 := by
  apply coveredBy_split_literal root_5913584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913585 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2227.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913585
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2227.covered
#print axioms cover_5913584

def root_5913578 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913578_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913578_left_fuel : Nat := 1
def small_5913578_left_count : Nat := 1
def small_5913578_left_encoded : String := "00000003"
theorem small_5913578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913578_left_root small_5913578_left_fuel small_5913578_left_count small_5913578_left_encoded = true := by
  decide +kernel
theorem small_5913578_left_covered : CoveredBy scale carrier boxes small_5913578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913578_left_root small_5913578_left_fuel small_5913578_left_count small_5913578_left_encoded small_5913578_left_checked

theorem cover_5913578 : CoveredBy scale carrier boxes root_5913578 := by
  apply coveredBy_split_literal root_5913578 small_5913578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913584 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5913578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913584
#print axioms cover_5913578

def root_5912764 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912764_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912764_left_fuel : Nat := 31
def small_5912764_left_count : Nat := 385
def small_5912764_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120700F808A912FF00000005120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD04548A03000000051386ACF800000001045489FF00000005138670FE000000050000000400000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE0280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003067ECE830000000500000007128A40FB07800106128A40FD000000050000000300000007000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD067ECE830000000512EA94F800000001022A457F0000000513E1C4FE03C0010000000009000000090000000400000003128A7CFD00000003067ECE830000000A12EA94F8000000010000000A128A40FB07800106128A40FD067ECE83000000050000000900000003128A7CFD00000003067ECE8300000005000000070000000200000004135D44FB05000106135D44FD0000000500000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE028001000000000713D7ECF700000000028000FA13D7ECFB0000000207800106000000090000000700000007000000040000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD04548A03000000051386ACF800000001045489FF00000005138670FE0780010000000009000000060000000400000003135D80FD0000000304548A03138670F8045489FF00000005138670FE07800100128A40F70000000500000000128A7CF700000000078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F8000000010000000A128A40FB000000050000000200000004000000011386ACF800000001045489FF1386ACFE0000000407800100128A40F7078000FA000000050000000900000000128A7CF700000000078000FA0000000600000009138670FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD067ECE8312EA58F800000005000000010000000600000003128A7CFD00000003067ECE830000000A12EA94F8000000010000000A128A40FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A457F0000000513E1C4FE0640010012FF70F7064000FA000000050000000A0000000012FFACF700000000064000FA0000000A000000090000000400000001000000090000000200000000128A7CF700000000078000FA128A7CFB000000020780010600000006128A7CFD00000003067ECE830000000A00000006128A40FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A457F000000090000000900000001000000090000000200000004135D44FB05000106135D44FD0000000900000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE0780010000000009000000090000000400000002000000040000000112073CF80000000108A912FF12073CFE000000040500010000000009135D80F70000000000000009120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F800000009000000010000000900000003135D80FD000000030CFD9C030F34D0F8045489FF1386ACFE0000000400000009138670FE028001000000000713D7ECF700000000078000FA128A7CFB000000020780010600000009000000070000000900000004000000010F350CF80000000100000009135D44FB000000090000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD0000000900000003135D80FD000000030CFD9C030F34D0F8045489FF00000009138670FE07800100128A40F7078000FA128A7CFB000000020780010600000009128A7CFD000000030AD357830000000A000000060000000900000000128A7CF7000000000000000900000004000000010F350CF80000000100000009135D44FB0000000900000002000000041151E8FF000000050000000400000003"
theorem small_5912764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5912764_left_root small_5912764_left_fuel small_5912764_left_count small_5912764_left_encoded = true := by
  decide +kernel
theorem small_5912764_left_covered : CoveredBy scale carrier boxes small_5912764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5912764_left_root small_5912764_left_fuel small_5912764_left_count small_5912764_left_encoded small_5912764_left_checked

theorem cover_5912764 : CoveredBy scale carrier boxes root_5912764 := by
  apply coveredBy_split_literal root_5912764 small_5912764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5913578 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5912764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5913578
#print axioms cover_5912764

def root_5912759 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912759_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912759_right_fuel : Nat := 1
def small_5912759_right_count : Nat := 1
def small_5912759_right_encoded : String := "00000002"
theorem small_5912759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5912759_right_root small_5912759_right_fuel small_5912759_right_count small_5912759_right_encoded = true := by
  decide +kernel
theorem small_5912759_right_covered : CoveredBy scale carrier boxes small_5912759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5912759_right_root small_5912759_right_fuel small_5912759_right_count small_5912759_right_encoded small_5912759_right_checked

theorem cover_5912759 : CoveredBy scale carrier boxes root_5912759 := by
  apply coveredBy_split_literal root_5912759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5912764 small_5912759_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5912764
  · exact small_5912759_right_covered
#print axioms cover_5912759

def root_5895125 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895125 : CoveredBy scale carrier boxes root_5895125 := by
  apply coveredBy_split_literal root_5895125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5912759 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5912759
#print axioms cover_5895125

def root_5895120 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895120_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895120_right_fuel : Nat := 1
def small_5895120_right_count : Nat := 1
def small_5895120_right_encoded : String := "00000001"
theorem small_5895120_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895120_right_root small_5895120_right_fuel small_5895120_right_count small_5895120_right_encoded = true := by
  decide +kernel
theorem small_5895120_right_covered : CoveredBy scale carrier boxes small_5895120_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895120_right_root small_5895120_right_fuel small_5895120_right_count small_5895120_right_encoded small_5895120_right_checked

theorem cover_5895120 : CoveredBy scale carrier boxes root_5895120 := by
  apply coveredBy_split_literal root_5895120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895125 small_5895120_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895125
  · exact small_5895120_right_covered
#print axioms cover_5895120

def root_5895119 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895119 : CoveredBy scale carrier boxes root_5895119 := by
  apply coveredBy_split_literal root_5895119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895120 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2228.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895120
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2228.covered
#print axioms cover_5895119

def root_5895114 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895114_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895114_right_fuel : Nat := 1
def small_5895114_right_count : Nat := 1
def small_5895114_right_encoded : String := "00000000"
theorem small_5895114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895114_right_root small_5895114_right_fuel small_5895114_right_count small_5895114_right_encoded = true := by
  decide +kernel
theorem small_5895114_right_covered : CoveredBy scale carrier boxes small_5895114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895114_right_root small_5895114_right_fuel small_5895114_right_count small_5895114_right_encoded small_5895114_right_checked

theorem cover_5895114 : CoveredBy scale carrier boxes root_5895114 := by
  apply coveredBy_split_literal root_5895114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895119 small_5895114_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895119
  · exact small_5895114_right_covered
#print axioms cover_5895114

def root_5924873 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5924873 : CoveredBy scale carrier boxes root_5924873 := by
  apply coveredBy_split_literal root_5924873 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2229.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2230.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2229.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2230.covered
#print axioms cover_5924873

def root_5924868 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924868_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924868_right_fuel : Nat := 1
def small_5924868_right_count : Nat := 1
def small_5924868_right_encoded : String := "00000001"
theorem small_5924868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5924868_right_root small_5924868_right_fuel small_5924868_right_count small_5924868_right_encoded = true := by
  decide +kernel
theorem small_5924868_right_covered : CoveredBy scale carrier boxes small_5924868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5924868_right_root small_5924868_right_fuel small_5924868_right_count small_5924868_right_encoded small_5924868_right_checked

theorem cover_5924868 : CoveredBy scale carrier boxes root_5924868 := by
  apply coveredBy_split_literal root_5924868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5924873 small_5924868_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5924873
  · exact small_5924868_right_covered
#print axioms cover_5924868

def root_5924867 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5924867 : CoveredBy scale carrier boxes root_5924867 := by
  apply coveredBy_split_literal root_5924867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5924868 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2231.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5924868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2231.covered
#print axioms cover_5924867

def root_5924861 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924861_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924861_left_fuel : Nat := 1
def small_5924861_left_count : Nat := 1
def small_5924861_left_encoded : String := "00000000"
theorem small_5924861_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5924861_left_root small_5924861_left_fuel small_5924861_left_count small_5924861_left_encoded = true := by
  decide +kernel
theorem small_5924861_left_covered : CoveredBy scale carrier boxes small_5924861_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5924861_left_root small_5924861_left_fuel small_5924861_left_count small_5924861_left_encoded small_5924861_left_checked

theorem cover_5924861 : CoveredBy scale carrier boxes root_5924861 := by
  apply coveredBy_split_literal root_5924861 small_5924861_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5924867 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5924861_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5924867
#print axioms cover_5924861

def root_5895113 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895113 : CoveredBy scale carrier boxes root_5895113 := by
  apply coveredBy_split_literal root_5895113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5924861 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895114
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5924861
#print axioms cover_5895113

def root_5935954 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5935954 : CoveredBy scale carrier boxes root_5935954 := by
  apply coveredBy_split_literal root_5935954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2233.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2234.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2233.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2234.covered
#print axioms cover_5935954

def root_5935948 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935948_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935948_left_fuel : Nat := 1
def small_5935948_left_count : Nat := 1
def small_5935948_left_encoded : String := "00000003"
theorem small_5935948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5935948_left_root small_5935948_left_fuel small_5935948_left_count small_5935948_left_encoded = true := by
  decide +kernel
theorem small_5935948_left_covered : CoveredBy scale carrier boxes small_5935948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5935948_left_root small_5935948_left_fuel small_5935948_left_count small_5935948_left_encoded small_5935948_left_checked

theorem cover_5935948 : CoveredBy scale carrier boxes root_5935948 := by
  apply coveredBy_split_literal root_5935948 small_5935948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5935954 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5935948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5935954
#print axioms cover_5935948

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411
