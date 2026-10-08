import TaoBundleAssembly0531
import TaoBundleChunkBatch0731
import TaoBundleChunkBatch0732
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532
def root_7768329 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7768329_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7768329_right_fuel : Nat := 19
def small_7768329_right_count : Nat := 83
def small_7768329_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF12073CFE00000004050000FA135D80FB00000002050000FC00000009135D44FD000000090000000300000009120700FE050000FA135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF800000001000000090000000900000009135D44FD04548A0113867100000000000CFD9BF90F350CF800000001045489FF00000005000000090000000900000009000000030000000900000004120700F8000000090000000112073D0008A912F912073CF80000000108A912FF0000000900000009120700F80000000900000001000000001151E8FF08A91301120701000000000008A912F9000000050000000612073D0008A912F900000009120700F80000000600000001000000000000000400000003"
theorem small_7768329_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7768329_right_root small_7768329_right_fuel small_7768329_right_count small_7768329_right_encoded = true := by
  decide +kernel
theorem small_7768329_right_covered : CoveredBy scale carrier boxes small_7768329_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7768329_right_root small_7768329_right_fuel small_7768329_right_count small_7768329_right_encoded small_7768329_right_checked

theorem cover_7768329 : CoveredBy scale carrier boxes root_7768329 := by
  apply coveredBy_split_literal root_7768329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0531.root_7768330 small_7768329_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0531.cover_7768330
  · exact small_7768329_right_covered
#print axioms cover_7768329

def root_7768324 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7768324_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7768324_right_fuel : Nat := 1
def small_7768324_right_count : Nat := 1
def small_7768324_right_encoded : String := "00000002"
theorem small_7768324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7768324_right_root small_7768324_right_fuel small_7768324_right_count small_7768324_right_encoded = true := by
  decide +kernel
theorem small_7768324_right_covered : CoveredBy scale carrier boxes small_7768324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7768324_right_root small_7768324_right_fuel small_7768324_right_count small_7768324_right_encoded small_7768324_right_checked

theorem cover_7768324 : CoveredBy scale carrier boxes root_7768324 := by
  apply coveredBy_split_literal root_7768324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7768329 small_7768324_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7768329
  · exact small_7768324_right_covered
#print axioms cover_7768324

def root_7760070 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7760070 : CoveredBy scale carrier boxes root_7760070 := by
  apply coveredBy_split_literal root_7760070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0531.root_7760071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7768324 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0531.cover_7760071
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7768324
#print axioms cover_7760070

def root_7760064 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760064_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7760064_left_fuel : Nat := 1
def small_7760064_left_count : Nat := 1
def small_7760064_left_encoded : String := "00000001"
theorem small_7760064_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7760064_left_root small_7760064_left_fuel small_7760064_left_count small_7760064_left_encoded = true := by
  decide +kernel
theorem small_7760064_left_covered : CoveredBy scale carrier boxes small_7760064_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7760064_left_root small_7760064_left_fuel small_7760064_left_count small_7760064_left_encoded small_7760064_left_checked

theorem cover_7760064 : CoveredBy scale carrier boxes root_7760064 := by
  apply coveredBy_split_literal root_7760064 small_7760064_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7760070 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7760064_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7760070
#print axioms cover_7760064

def root_7774839 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7774839 : CoveredBy scale carrier boxes root_7774839 := by
  apply coveredBy_split_literal root_7774839 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2922.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2923.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2922.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2923.covered
#print axioms cover_7774839

def root_7774833 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774833_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774833_left_fuel : Nat := 1
def small_7774833_left_count : Nat := 1
def small_7774833_left_encoded : String := "00000002"
theorem small_7774833_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774833_left_root small_7774833_left_fuel small_7774833_left_count small_7774833_left_encoded = true := by
  decide +kernel
theorem small_7774833_left_covered : CoveredBy scale carrier boxes small_7774833_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774833_left_root small_7774833_left_fuel small_7774833_left_count small_7774833_left_encoded small_7774833_left_checked

theorem cover_7774833 : CoveredBy scale carrier boxes root_7774833 := by
  apply coveredBy_split_literal root_7774833 small_7774833_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774839 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7774833_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774839
#print axioms cover_7774833

def root_7774832 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774832_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774832_right_fuel : Nat := 14
def small_7774832_right_count : Nat := 67
def small_7774832_right_encoded : String := "120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F800000006135D44F904548A01000000080000000A00000001120700FE050000F8135D80F90000000104548A011386710000000000045489FB1386ACFA000000020CFD9BFD000000060F34D0FC0000000600000003000000061386AD00045489FB1386ACFA000000020CFD9BFD000000060F34D0FC00000006000000030000000600000000135D44F904548A01000000081386AD0000000008000000000000000100000004120700FC08A912FF0000000A120700FE050000F8135D80F90000000104548A011386710000000000045489FB0000000A0000000A0000000A0000000A000000040000000300000002"
theorem small_7774832_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774832_right_root small_7774832_right_fuel small_7774832_right_count small_7774832_right_encoded = true := by
  decide +kernel
theorem small_7774832_right_covered : CoveredBy scale carrier boxes small_7774832_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774832_right_root small_7774832_right_fuel small_7774832_right_count small_7774832_right_encoded small_7774832_right_checked

theorem cover_7774832 : CoveredBy scale carrier boxes root_7774832 := by
  apply coveredBy_split_literal root_7774832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774833 small_7774832_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774833
  · exact small_7774832_right_covered
#print axioms cover_7774832

def root_7774826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774826_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774826_left_fuel : Nat := 1
def small_7774826_left_count : Nat := 1
def small_7774826_left_encoded : String := "00000000"
theorem small_7774826_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774826_left_root small_7774826_left_fuel small_7774826_left_count small_7774826_left_encoded = true := by
  decide +kernel
theorem small_7774826_left_covered : CoveredBy scale carrier boxes small_7774826_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774826_left_root small_7774826_left_fuel small_7774826_left_count small_7774826_left_encoded small_7774826_left_checked

theorem cover_7774826 : CoveredBy scale carrier boxes root_7774826 := by
  apply coveredBy_split_literal root_7774826 small_7774826_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774832 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7774826_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774832
#print axioms cover_7774826

def root_7774825 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774825_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774825_right_fuel : Nat := 22
def small_7774825_right_count : Nat := 325
def small_7774825_right_encoded : String := "12073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030CFD9BFF0000000A0F34D0FE0C9A86FA0000000A00000009000000040000000A0F34D0FA0000000A000000020F350D000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030000000A0000000A0F34D0FA0000000A0000000200000000135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC000000030000000A0000000A0F34D0FA0000000A000000020F350D000CFD9BFB0000000A0F34D0FA0000000A000000020000000000000001120700FE050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86FA0F878CFB000000020C9A86FC000000090F8750FD000000060000000300000009138670FE00000007000000040F34D0FC045489FF1386ACFE000000040C9A86FA0F878CFB000000020000000A0F8750FB078000F800000009000000070000000200000007000000030F34D0FA0CFD9BFD0F350CFC00000003045489FF00000006000000070F34D0FC045489FF0000000A0000000700000003000000020F350D000CFD9BFB0F350CFA000000020CFD9BFD000000090F34D0FC00000007000000030F34D0FA0CFD9BFD000000070F34D0FC00000007000000030000000200000000135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD000000070F34D0FC00000007000000030F34D0FA0CFD9BFD000000070F34D0FC0000000700000003000000020F350D000CFD9BFB000000070F34D0FA0000000700000002000000000000000100000004120700FC08A912FF12073CFE00000004050000F80000000A0000000A120700FE050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF1386ACFE000000040C9A86FA0000000A0F8750FB0000000A0000000200000007138670FC045489FF0000000A00000005000000030F34D0FA0000000A000000020F350D000CFD9BFB0F350CFA00000002045489FD000000070000000A0F34D0FA0000000A0000000200000000135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FD00000007000000050F34D0FA00000007000000020F350D000CFD9BFB000000070000000700000000000000010000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F8135D80F9000000010CFD9C010000000A0F350D000000000A00000000135D44F90CFD9C010000000A0000000A00000001120700FE050000F8135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD000000060F34D0FC0000000700000003138670FA00000006000000020F350D00045489FB1386ACFA000000020CFD9BFD000000070000000A138670FA0CFD9BFD000000060000000A0000000200000000135D44F90CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0000000700000007138670FA0CFD9BFD0000000600000005000000020F350D00045489FB0000000700000007000000000000000100000004120700FC08A912FF0000000A120700FE050000F8135D80F9000000010000000A0000000A00000004000000030000000200000000"
theorem small_7774825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774825_right_root small_7774825_right_fuel small_7774825_right_count small_7774825_right_encoded = true := by
  decide +kernel
theorem small_7774825_right_covered : CoveredBy scale carrier boxes small_7774825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774825_right_root small_7774825_right_fuel small_7774825_right_count small_7774825_right_encoded small_7774825_right_checked

theorem cover_7774825 : CoveredBy scale carrier boxes root_7774825 := by
  apply coveredBy_split_literal root_7774825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774826 small_7774825_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774826
  · exact small_7774825_right_covered
#print axioms cover_7774825

def root_7774819 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774819_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774819_left_fuel : Nat := 1
def small_7774819_left_count : Nat := 1
def small_7774819_left_encoded : String := "00000004"
theorem small_7774819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774819_left_root small_7774819_left_fuel small_7774819_left_count small_7774819_left_encoded = true := by
  decide +kernel
theorem small_7774819_left_covered : CoveredBy scale carrier boxes small_7774819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774819_left_root small_7774819_left_fuel small_7774819_left_count small_7774819_left_encoded small_7774819_left_checked

theorem cover_7774819 : CoveredBy scale carrier boxes root_7774819 := by
  apply coveredBy_split_literal root_7774819 small_7774819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774825 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7774819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774825
#print axioms cover_7774819

def root_7774818 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774818_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774818_right_fuel : Nat := 17
def small_7774818_right_count : Nat := 65
def small_7774818_right_encoded : String := "1151E8FF08A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC00000003050000F8135D80F900000001050000FE0000000A135D44FF0000000A000000040000000A120700FC050000F8135D80F900000001050000FE135D80FF0000000404548A0113867100000000000CFD9BFB0F350CFA000000020000000A0000000A0000000A135D44FF04548A0113867100000000000CFD9BFB0F350CFA00000002045489FD000000050000000A0000000A0000000A000000040000000A00000003120700FA0000000A0000000212073D0008A912FB12073CFA0000000208A912FD0000000A0000000A120700FA0000000A000000020000000000000004"
theorem small_7774818_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774818_right_root small_7774818_right_fuel small_7774818_right_count small_7774818_right_encoded = true := by
  decide +kernel
theorem small_7774818_right_covered : CoveredBy scale carrier boxes small_7774818_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774818_right_root small_7774818_right_fuel small_7774818_right_count small_7774818_right_encoded small_7774818_right_checked

theorem cover_7774818 : CoveredBy scale carrier boxes root_7774818 := by
  apply coveredBy_split_literal root_7774818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774819 small_7774818_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774819
  · exact small_7774818_right_covered
#print axioms cover_7774818

def root_7774812 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774812_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774812_left_fuel : Nat := 1
def small_7774812_left_count : Nat := 1
def small_7774812_left_encoded : String := "00000003"
theorem small_7774812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774812_left_root small_7774812_left_fuel small_7774812_left_count small_7774812_left_encoded = true := by
  decide +kernel
theorem small_7774812_left_covered : CoveredBy scale carrier boxes small_7774812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774812_left_root small_7774812_left_fuel small_7774812_left_count small_7774812_left_encoded small_7774812_left_checked

theorem cover_7774812 : CoveredBy scale carrier boxes root_7774812 := by
  apply coveredBy_split_literal root_7774812 small_7774812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774818 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7774812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774818
#print axioms cover_7774812

def root_7774811 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774811_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774811_right_fuel : Nat := 27
def small_7774811_right_count : Nat := 499
def small_7774811_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF12073CFE00000004050000F8135D80F900000001050000FC135D80FD0000000304548A0113867100000000000CFD9BFB00000005000000061386AD000CFD9BFB0F350CFA000000020CFD9BFF000000050F34D0FE00000006000000040000000600000000135D44FD04548A01000000050000000600000003135D44F9050000FC135D80FD0000000304548A01000000051386AD000CFD9BFB000000050F34D0FA000000060000000200000000135D44FD04548A01000000051386AD000CFD9BFB0000000500000008000000000000000300000001120700FE050000F8135D80F900000001050000FC135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001078000FC00000008128A40FD00000008000000030000000800000002000000040F34D0FA00000006000000021386AD000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB078000F8000000060000000900000002138670FE0C9A86FA0F878CFB00000002078000F800000006000000070F8750FB078000F8000000090000000700000002000000040F34D0FA000000060000000200000000135D44FD04548A0113867100000000000CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001028000FC0000000613D7B0FD00000006000000030000000800000002000000040F34D0FA00000006000000021386AD000CFD9BFB0F350CFA00000002045489FF1386ACFE0000000400000006138670FE0C9A86FA0F878CFB00000002078000F800000006128A40F900000006000000010F8750FB078000F8128A7CF90000000100000009128A40F9028000FC0000000713D7B0FD067ECE810000000800000007000000030000000100000002000000040F34D0FA00000006000000020000000000000003135D44F9050000FC135D80FD0000000304548A01000000081386AD000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000080F8750FB028000F813D7ECF900000001078000FC00000007000000080000000700000002000000070000000800000000135D44FD04548A01000000081386AD000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000080F8750FB0000000500000002138670FE0C9A86FA000000070F8750FB0000000700000002000000040000000800000000000000030000000100000004120700FA08A912FF00000006120700FE050000F80000000600000008000000040000000212073D0008A912FB12073CFA0000000208A912FF12073CFE00000004050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0000000600000009000000060F350D000CFD9BFB000000090000000900000000135D44FD0CFD9C010F34D10000000000000000060F350D000CFD9BFB00000006000000060000000000000003135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BFB0000000A0F34D0FA00000006000000020F350D000CFD9BFB0000000A0000000A00000000135D44FD0CFD9C010F34D100000000000CFD9BFB0000000A0F34D0FA00000006000000020F350D000CFD9BFB0000000A0F34D0FA0000000600000002000000000000000300000001120700FE050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF1386ACFE0000000400000009138670FE00000007000000040F34D0FA045489FF0000000600000007000000020F350D000CFD9BFB000000070F34D0FA000000070000000200000000135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0000000600000009138670FE0C9A86FA0000000700000009000000040F34D0FA00000006000000020F350D000CFD9BFB0F350CFA00000002000000090F34D0FA00000006000000020000000000000003135D44F9050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BFB000000070F34D0FA000000070000000200000007135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000070F8750FB0000000700000002000000070F34D0FA00000008000000020F350D000000000700000000000000030000000100000004120700FA08A912FF12073CFE00000004050000F800000006135D44F9050000FC000000060000000600000001120700FE050000F8135D80F900000001050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD0000000600000003135D44F9050000FC135D80FD000000030CFD9C010000000800000007135D44FD0CFD9C01000000080000000500000003000000010000000400000002000000001151E8FF08A91301120701000000000008A912FB000000050000000612073D0008A912FB0000000A120700FA0000000600000002000000000000000400000003"
theorem small_7774811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774811_right_root small_7774811_right_fuel small_7774811_right_count small_7774811_right_encoded = true := by
  decide +kernel
theorem small_7774811_right_covered : CoveredBy scale carrier boxes small_7774811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774811_right_root small_7774811_right_fuel small_7774811_right_count small_7774811_right_encoded small_7774811_right_checked

theorem cover_7774811 : CoveredBy scale carrier boxes root_7774811 := by
  apply coveredBy_split_literal root_7774811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774812 small_7774811_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774812
  · exact small_7774811_right_covered
#print axioms cover_7774811

def root_7774805 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774805_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7774805_left_fuel : Nat := 1
def small_7774805_left_count : Nat := 1
def small_7774805_left_encoded : String := "00000002"
theorem small_7774805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7774805_left_root small_7774805_left_fuel small_7774805_left_count small_7774805_left_encoded = true := by
  decide +kernel
theorem small_7774805_left_covered : CoveredBy scale carrier boxes small_7774805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7774805_left_root small_7774805_left_fuel small_7774805_left_count small_7774805_left_encoded small_7774805_left_checked

theorem cover_7774805 : CoveredBy scale carrier boxes root_7774805 := by
  apply coveredBy_split_literal root_7774805 small_7774805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7774811 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7774805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7774811
#print axioms cover_7774805

def root_7785834 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7785834 : CoveredBy scale carrier boxes root_7785834 := by
  apply coveredBy_split_literal root_7785834 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2926.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2927.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2926.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2927.covered
#print axioms cover_7785834

def root_7785828 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785828_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785828_left_fuel : Nat := 1
def small_7785828_left_count : Nat := 1
def small_7785828_left_encoded : String := "00000000"
theorem small_7785828_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785828_left_root small_7785828_left_fuel small_7785828_left_count small_7785828_left_encoded = true := by
  decide +kernel
theorem small_7785828_left_covered : CoveredBy scale carrier boxes small_7785828_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785828_left_root small_7785828_left_fuel small_7785828_left_count small_7785828_left_encoded small_7785828_left_checked

theorem cover_7785828 : CoveredBy scale carrier boxes root_7785828 := by
  apply coveredBy_split_literal root_7785828 small_7785828_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7785834 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7785828_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7785834
#print axioms cover_7785828

def root_7785827 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785827_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785827_right_fuel : Nat := 23
def small_7785827_right_count : Nat := 307
def small_7785827_right_encoded : String := "13E20100067ECE7D12EA94FC00000003067ECE7F12EA94FE0000000408C000F811FC24F90000000108C000FA11FC24FB00000002033F67C113BBF500000000000793F0BD00000009128220FC0793F0BF0000000A128220FE096000F8000000090000000A000000040000000313BC310000000009000000000000000911FBE8F908C000FA11FC24FB000000020000000A11FBE8FB033F67C113BBF500000000000793F0BD12825CFC000000030793F0BF0000000500000009128220FC0793F0BF0000000A128220FE082000F8000000090000000A000000040000000313BC31000793F0BD000000090000000A00000000000000020000000112EA58FE08C000F811FC24F90000000108C000FA11FC24FB00000002033F67C113BBF500000000000793F0BD00000009128220FC0569AC3F134110FE00000004000000090000000900000003000000090000000911FBE8F908C000FA11FC24FB00000002033F67C113BBF500000000000793F0BD00000007128220FC00000007000000030000000711FBE8FB033F67C113BBF500000000000793F0BD00000009128220FC0569AC3F134110FE00000004082000F80000000900000007000000070000000313BC3100000000090000000000000002000000010000000412EA58FC067ECE7F12EA94FE0000000408C000F811FC24F90000000108C000FA11FC24FB00000002033F67C113BBF500000000000569AC3D134110FC000000030000000A0000000A0000000A11FBE8FB033F67C113BBF500000000000569AC3D134110FC000000030793F0BF00000008128220FE000000080000000400000008000000080000000211FBE8F908C000FA0000000A11FBE8FB033F67C113BBF500000000000569AC3D134110FC000000030793F0BF0000000A128220FE082000F8000000080000000A000000041340D4FC0793F0BF00000008000000080000000313BC31000000000A00000000000000020000000112EA58FE08C000F811FC24F90000000108C000FA11FC24FB00000002033F67C113BBF500000000000569AC3D134110FC000000030569AC3F134110FE00000004096000F811AABCF900000001096000FA11AABCFB0000000202B4D6A113D0D1000000000005F43D5D0000000900000008000000070000000811AA80F9096000FA0000000711AA80FB02B4D6A113D0D1000000000005F43D5D00000007000000080000000700000002000000011340D4FE096000F811AABCF900000001096000FA000000070000000900000007000000041340D4FC0569AC3F134110FE00000004096000F80000000811AA80F90000000800000001000000050000000313BC31000569AC3D134110FC000000030569AC3F134110FE00000004096000F8000000080000000700000005000000050000000011FBE8FB033F67C113BBF500000000000569AC3D134110FC000000030569AC3F000000080000000900000008000000080000000211FBE8F908C000FA11FC24FB00000002033F67C113BBF500000000000569AC3D000000071340D4FC0569AC3F0000000A00000005000000030000000711FBE8FB033F67C113BBF500000000000569AC3D134110FC000000030569AC3F134110FE00000004082000F80000000800000006000000060000000613BC31000569AC3D0000000700000005000000000000000200000001000000040000000300000000"
theorem small_7785827_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785827_right_root small_7785827_right_fuel small_7785827_right_count small_7785827_right_encoded = true := by
  decide +kernel
theorem small_7785827_right_covered : CoveredBy scale carrier boxes small_7785827_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785827_right_root small_7785827_right_fuel small_7785827_right_count small_7785827_right_encoded small_7785827_right_checked

theorem cover_7785827 : CoveredBy scale carrier boxes root_7785827 := by
  apply coveredBy_split_literal root_7785827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7785828 small_7785827_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7785828
  · exact small_7785827_right_covered
#print axioms cover_7785827

def root_7785821 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785821_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7785821_left_fuel : Nat := 1
def small_7785821_left_count : Nat := 1
def small_7785821_left_encoded : String := "00000002"
theorem small_7785821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7785821_left_root small_7785821_left_fuel small_7785821_left_count small_7785821_left_encoded = true := by
  decide +kernel
theorem small_7785821_left_covered : CoveredBy scale carrier boxes small_7785821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7785821_left_root small_7785821_left_fuel small_7785821_left_count small_7785821_left_encoded small_7785821_left_checked

theorem cover_7785821 : CoveredBy scale carrier boxes root_7785821 := by
  apply coveredBy_split_literal root_7785821 small_7785821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.root_7785827 coord2 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7785821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532.cover_7785827
#print axioms cover_7785821

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0532
