import TaoBundleAssembly0282
import TaoBundleChunkBatch0366
import TaoBundleChunkBatch0368
import TaoBundleChunkBatch0369
import TaoBundleChunkBatch0370
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283
def root_3909327 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909327_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909327_right_fuel : Nat := 27
def small_3909327_right_count : Nat := 455
def small_3909327_right_encoded : String := "120700FA08A912FD12073D0605000102135D44F9050000FE135D80FF0000000404548A01138670F6045489FB1386ACFA000000020CFD9BFD000000050F34D1060000000300000008138670FA0CFD9BFD0F350D060C9A87060F8750FD0280010213D7B0F9000000050000000113D7ECF900000001078000FE00000008128A40FF0000000500000004000000030F878CFD00000003028001020000000800000008000000030F34D106000000030000000800000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060C9A87060F8750FD028001020000000800000008000000030F878CFD0000000300000008000000030F34D10600000003028001020000000800000008138670FA0CFD9BFD0F350D060C9A87060F8750FD0280010213D7B0F9078000FE00000008000000060000000113D7ECF900000001078000FE128A7CFF0000000400000008128A40FF067ECE81000000080000000600000004000000030F878CFD00000003028001020000000813D7ECF900000001078000FE0000000800000008000000030F34D10600000003028001020000000813D7ECF9000000010000000800000002135D44FF04548A01138670F6045489FB1386ACFA000000020CFD9BFD000000050F34D1060000000300000008138670FA0CFD9BFD0F350D060C9A87060F8750FD00000005000000030F878CFD00000003028001020000000713D7ECF900000001028000FE0000000800000007000000030000000700000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060C9A87060F8750FD000000050000000300000006000000030F34D1060000000300000006138670FA0CFD9BFD0F350D060C9A87060F8750FD000000060000000300000006000000030F34D1060000000300000006000000020000000400000001135D80F900000001050000FE135D80FF0000000404548A01138670F6045489FB1386ACFA000000020CFD9BFD0F350D060C9A87060F8750FD000000050000000300000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060C9A87060F8750FD07800102128A40F9078000FE00000008128A40FF022A458100000005000000080000000400000001128A7CF900000001078000FE00000008128A40FF022A4581000000050000000800000004000000030F878CFD000000030780010200000008128A7CF90000000100000008000000030F34D106000000030000000A00000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060C9A87060F8750FD0780010200000008128A7CF90000000100000008000000030F878CFD0000000300000008000000030F34D1060000000300000008138670FA0CFD9BFD0F350D060C9A87060F8750FD07800102128A40F9078000FE128A7CFF0000000400000008128A40FF067ECE810000000812EA94F600000000000000080000000400000001128A7CF900000001078000FE00000008128A40FF067ECE81000000080000000800000004000000030F878CFD0000000307800102128A40F9078000FE0000000800000008000000010000000A000000030F34D106000000030000000A00000002135D44FF04548A01138670F6045489FB1386ACFA000000020CFD9BFD000000050F34D10600000003078001020000000800000008138670FA0CFD9BFD0F350D060C9A87060F8750FD07800102128A40F90000000500000001128A7CF900000001028000FE13D7ECFF00000004022A4581000000050000000A13D7B0FF022A4581000000050000000A00000004000000030F878CFD0000000307800102128A40F9028000FE13D7ECFF000000040000000813D7B0FF0000000A00000004000000010000000A000000030F34D106000000030000000A00000002000000001386ACF600000000045489FB1386ACFA000000020CFD9BFD0F350D060C9A87060F8750FD078001020000000900000009000000030F878CFD000000030780010200000008128A7CF90000000100000008000000030F34D106000000030000000A138670FA0CFD9BFD0F350D060C9A87060F8750FD07800102128A40F9028000FE13D7ECFF00000004067ECE8112EA58F6022A457B0000000513E1C4FA0B4D4406108010FD064001020000000600000008000000030000000600000002000000000000000613D7B0FF000000060000000400000001128A7CF9000000010000000A000000030F878CFD000000030000000A000000030F34D106000000030000000A000000020000000400000003120701060000000305000102135D44F9050000FE135D80FF0000000404548A01138670F6045489FB1386ACFA00000002045489FD000000080000000700000007000000001386ACF600000000045489FB1386ACFA00000002045489FD1386AD06028001020000000800000008000000030000000A0000000A135D44FF04548A01000000070000000700000004000000010000000A00000002"
theorem small_3909327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909327_right_root small_3909327_right_fuel small_3909327_right_count small_3909327_right_encoded = true := by
  decide +kernel
theorem small_3909327_right_covered : CoveredBy scale carrier boxes small_3909327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909327_right_root small_3909327_right_fuel small_3909327_right_count small_3909327_right_encoded small_3909327_right_checked

theorem cover_3909327 : CoveredBy scale carrier boxes root_3909327 := by
  apply coveredBy_split_literal root_3909327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3909328 small_3909327_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3909328
  · exact small_3909327_right_covered
#print axioms cover_3909327

def root_3909322 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909322_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909322_right_fuel : Nat := 1
def small_3909322_right_count : Nat := 1
def small_3909322_right_encoded : String := "00000000"
theorem small_3909322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909322_right_root small_3909322_right_fuel small_3909322_right_count small_3909322_right_encoded = true := by
  decide +kernel
theorem small_3909322_right_covered : CoveredBy scale carrier boxes small_3909322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909322_right_root small_3909322_right_fuel small_3909322_right_count small_3909322_right_encoded small_3909322_right_checked

theorem cover_3909322 : CoveredBy scale carrier boxes root_3909322 := by
  apply coveredBy_split_literal root_3909322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3909327 small_3909322_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3909327
  · exact small_3909322_right_covered
#print axioms cover_3909322

def root_3909321 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3909321 : CoveredBy scale carrier boxes root_3909321 := by
  apply coveredBy_split_literal root_3909321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3909322 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1469.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3909322
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1469.covered
#print axioms cover_3909321

def root_3909316 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909316_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3909316_right_fuel : Nat := 1
def small_3909316_right_count : Nat := 1
def small_3909316_right_encoded : String := "00000004"
theorem small_3909316_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3909316_right_root small_3909316_right_fuel small_3909316_right_count small_3909316_right_encoded = true := by
  decide +kernel
theorem small_3909316_right_covered : CoveredBy scale carrier boxes small_3909316_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3909316_right_root small_3909316_right_fuel small_3909316_right_count small_3909316_right_encoded small_3909316_right_checked

theorem cover_3909316 : CoveredBy scale carrier boxes root_3909316 := by
  apply coveredBy_split_literal root_3909316 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3909321 small_3909316_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3909321
  · exact small_3909316_right_covered
#print axioms cover_3909316

def root_3896624 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3896624 : CoveredBy scale carrier boxes root_3896624 := by
  apply coveredBy_split_literal root_3896624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.root_3896625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3909316 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0282.cover_3896625
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3909316
#print axioms cover_3896624

def root_3896618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896618_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3896618_left_fuel : Nat := 1
def small_3896618_left_count : Nat := 1
def small_3896618_left_encoded : String := "00000003"
theorem small_3896618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3896618_left_root small_3896618_left_fuel small_3896618_left_count small_3896618_left_encoded = true := by
  decide +kernel
theorem small_3896618_left_covered : CoveredBy scale carrier boxes small_3896618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3896618_left_root small_3896618_left_fuel small_3896618_left_count small_3896618_left_encoded small_3896618_left_checked

theorem cover_3896618 : CoveredBy scale carrier boxes root_3896618 := by
  apply coveredBy_split_literal root_3896618 small_3896618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3896624 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3896618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3896624
#print axioms cover_3896618

def root_3894956 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894956 : CoveredBy scale carrier boxes root_3894956 := by
  apply coveredBy_split_literal root_3894956 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1462.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3896618 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1462.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3896618
#print axioms cover_3894956

def root_3894950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894950_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894950_left_fuel : Nat := 1
def small_3894950_left_count : Nat := 1
def small_3894950_left_encoded : String := "00000002"
theorem small_3894950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3894950_left_root small_3894950_left_fuel small_3894950_left_count small_3894950_left_encoded = true := by
  decide +kernel
theorem small_3894950_left_covered : CoveredBy scale carrier boxes small_3894950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3894950_left_root small_3894950_left_fuel small_3894950_left_count small_3894950_left_encoded small_3894950_left_checked

theorem cover_3894950 : CoveredBy scale carrier boxes root_3894950 := by
  apply coveredBy_split_literal root_3894950 small_3894950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894956 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3894950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894956
#print axioms cover_3894950

def root_3916779 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3916779 : CoveredBy scale carrier boxes root_3916779 := by
  apply coveredBy_split_literal root_3916779 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1470.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1471.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1470.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1471.covered
#print axioms cover_3916779

def root_3916773 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916773_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916773_left_fuel : Nat := 1
def small_3916773_left_count : Nat := 1
def small_3916773_left_encoded : String := "00000004"
theorem small_3916773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3916773_left_root small_3916773_left_fuel small_3916773_left_count small_3916773_left_encoded = true := by
  decide +kernel
theorem small_3916773_left_covered : CoveredBy scale carrier boxes small_3916773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3916773_left_root small_3916773_left_fuel small_3916773_left_count small_3916773_left_encoded small_3916773_left_checked

theorem cover_3916773 : CoveredBy scale carrier boxes root_3916773 := by
  apply coveredBy_split_literal root_3916773 small_3916773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916779 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3916773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916779
#print axioms cover_3916773

def root_3916772 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3916772 : CoveredBy scale carrier boxes root_3916772 := by
  apply coveredBy_split_literal root_3916772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916773 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1472.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916773
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1472.covered
#print axioms cover_3916772

def root_3916766 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916766_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916766_left_fuel : Nat := 1
def small_3916766_left_count : Nat := 1
def small_3916766_left_encoded : String := "00000003"
theorem small_3916766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3916766_left_root small_3916766_left_fuel small_3916766_left_count small_3916766_left_encoded = true := by
  decide +kernel
theorem small_3916766_left_covered : CoveredBy scale carrier boxes small_3916766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3916766_left_root small_3916766_left_fuel small_3916766_left_count small_3916766_left_encoded small_3916766_left_checked

theorem cover_3916766 : CoveredBy scale carrier boxes root_3916766 := by
  apply coveredBy_split_literal root_3916766 small_3916766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916772 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3916766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916772
#print axioms cover_3916766

def root_3916720 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916720_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916720_left_fuel : Nat := 9
def small_3916720_left_count : Nat := 21
def small_3916720_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120700F60000000A0000000012073CF60000000008A912FF12073CFE00000004050001020000000900000007000000071151E8FF000000050000000400000003"
theorem small_3916720_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3916720_left_root small_3916720_left_fuel small_3916720_left_count small_3916720_left_encoded = true := by
  decide +kernel
theorem small_3916720_left_covered : CoveredBy scale carrier boxes small_3916720_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3916720_left_root small_3916720_left_fuel small_3916720_left_count small_3916720_left_encoded small_3916720_left_checked

theorem cover_3916720 : CoveredBy scale carrier boxes root_3916720 := by
  apply coveredBy_split_literal root_3916720 small_3916720_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916766 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3916720_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916766
#print axioms cover_3916720

def root_3916715 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916715_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3916715_right_fuel : Nat := 1
def small_3916715_right_count : Nat := 1
def small_3916715_right_encoded : String := "00000002"
theorem small_3916715_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3916715_right_root small_3916715_right_fuel small_3916715_right_count small_3916715_right_encoded = true := by
  decide +kernel
theorem small_3916715_right_covered : CoveredBy scale carrier boxes small_3916715_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3916715_right_root small_3916715_right_fuel small_3916715_right_count small_3916715_right_encoded small_3916715_right_checked

theorem cover_3916715 : CoveredBy scale carrier boxes root_3916715 := by
  apply coveredBy_split_literal root_3916715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916720 small_3916715_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916720
  · exact small_3916715_right_covered
#print axioms cover_3916715

def root_3894949 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894949 : CoveredBy scale carrier boxes root_3894949 := by
  apply coveredBy_split_literal root_3894949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3916715 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894950
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3916715
#print axioms cover_3894949

def root_3894944 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894944_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894944_right_fuel : Nat := 1
def small_3894944_right_count : Nat := 1
def small_3894944_right_encoded : String := "00000001"
theorem small_3894944_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3894944_right_root small_3894944_right_fuel small_3894944_right_count small_3894944_right_encoded = true := by
  decide +kernel
theorem small_3894944_right_covered : CoveredBy scale carrier boxes small_3894944_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3894944_right_root small_3894944_right_fuel small_3894944_right_count small_3894944_right_encoded small_3894944_right_checked

theorem cover_3894944 : CoveredBy scale carrier boxes root_3894944 := by
  apply coveredBy_split_literal root_3894944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894949 small_3894944_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894949
  · exact small_3894944_right_covered
#print axioms cover_3894944

def root_3922772 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922772_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922772_left_fuel : Nat := 29
def small_3922772_left_count : Nat := 255
def small_3922772_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120700F608A912F912073D0208A912FB00000007120700FA08A912FF12073CFE000000040500010600000007135D80FD0000000304548A01138670F60000000700000000000000070000000700000002000000011207010200000001000000070000000012073CF60000000008A912F912073D0208A912FB00000007120700FA0000000700000002000000011207010200000001000000071151E8FF08A91301120700F608A912F912073D0208A912FB12073CFA0000000205000106135D44FD0000000900000003135D80FD00000003050000FE135D80FF0000000404548A01138670F6000000070000000000000007135D44FF0000000900000004120700FA05000106135D44FD050000FE135D80FF0000000404548A01138670F60CFD9BF90F350D02045489FB00000005138670FA000000070000000200000001000000070000000000000007135D44FF000000090000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F60CFD9BF90F350D02045489FB1386ACFA0000000200000007138670FA0C9A87020F8750F907800106128A40FD078000FE00000007128A40FF022A458100000005000000070000000400000003128A7CFD00000003078000FE128A7CFF00000004022A458113E1C4F6022A457B00000005000000060000000000000007128A40FF022A45810000000513E200F600000000022A457B000000050000000A00000004000000010F878CF9000000010780010600000007128A7CFD000000030000000A00000002000000010F34D1020000000100000007000000001386ACF6000000000CFD9BF90F350D02045489FB00000007138670FA0C9A87020F8750F90780010600000007128A7CFD00000003078000FE00000007128A40FF0000000900000004000000010000000700000002000000010F34D1020000000100000007135D44FF04548A01138670F60CFD9BF90F350D02045489FB00000005138670FA0C9A87020F8750F90780010600000009128A7CFD00000003028000FE13D7ECFF00000004022A4581000000050000000900000009000000010F878CF900000001000000090000000200000001000000090000000000000009000000040000000200000001120701020000000108A912FB00000007000000090000000012073CF60000000008A912F912073D0208A912FB12073CFA000000020500010600000007135D80FD00000003050000FE0000000700000009120700FA05000106135D44FD0000000900000003135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F6000000070000000000000007135D44FF000000090000000400000002000000011207010200000001000000090000000400000003"
theorem small_3922772_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3922772_left_root small_3922772_left_fuel small_3922772_left_count small_3922772_left_encoded = true := by
  decide +kernel
theorem small_3922772_left_covered : CoveredBy scale carrier boxes small_3922772_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3922772_left_root small_3922772_left_fuel small_3922772_left_count small_3922772_left_encoded small_3922772_left_checked

theorem cover_3922772 : CoveredBy scale carrier boxes root_3922772 := by
  apply coveredBy_split_literal root_3922772 small_3922772_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1473.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3922772_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1473.covered
#print axioms cover_3922772

def root_3922766 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922766_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922766_left_fuel : Nat := 1
def small_3922766_left_count : Nat := 1
def small_3922766_left_encoded : String := "00000002"
theorem small_3922766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3922766_left_root small_3922766_left_fuel small_3922766_left_count small_3922766_left_encoded = true := by
  decide +kernel
theorem small_3922766_left_covered : CoveredBy scale carrier boxes small_3922766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3922766_left_root small_3922766_left_fuel small_3922766_left_count small_3922766_left_encoded small_3922766_left_checked

theorem cover_3922766 : CoveredBy scale carrier boxes root_3922766 := by
  apply coveredBy_split_literal root_3922766 small_3922766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3922772 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3922766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3922772
#print axioms cover_3922766

def root_3922765 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3922765 : CoveredBy scale carrier boxes root_3922765 := by
  apply coveredBy_split_literal root_3922765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3922766 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1474.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3922766
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1474.covered
#print axioms cover_3922765

def root_3922759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922759_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3922759_left_fuel : Nat := 1
def small_3922759_left_count : Nat := 1
def small_3922759_left_encoded : String := "00000001"
theorem small_3922759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3922759_left_root small_3922759_left_fuel small_3922759_left_count small_3922759_left_encoded = true := by
  decide +kernel
theorem small_3922759_left_covered : CoveredBy scale carrier boxes small_3922759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3922759_left_root small_3922759_left_fuel small_3922759_left_count small_3922759_left_encoded small_3922759_left_checked

theorem cover_3922759 : CoveredBy scale carrier boxes root_3922759 := by
  apply coveredBy_split_literal root_3922759 small_3922759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3922765 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3922759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3922765
#print axioms cover_3922759

def root_3894943 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894943 : CoveredBy scale carrier boxes root_3894943 := by
  apply coveredBy_split_literal root_3894943 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3922759 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894944
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3922759
#print axioms cover_3894943

def root_3894938 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894938_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894938_right_fuel : Nat := 1
def small_3894938_right_count : Nat := 1
def small_3894938_right_encoded : String := "00000000"
theorem small_3894938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3894938_right_root small_3894938_right_fuel small_3894938_right_count small_3894938_right_encoded = true := by
  decide +kernel
theorem small_3894938_right_covered : CoveredBy scale carrier boxes small_3894938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3894938_right_root small_3894938_right_fuel small_3894938_right_count small_3894938_right_encoded small_3894938_right_checked

theorem cover_3894938 : CoveredBy scale carrier boxes root_3894938 := by
  apply coveredBy_split_literal root_3894938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894943 small_3894938_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894943
  · exact small_3894938_right_covered
#print axioms cover_3894938

def root_3927407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3927407 : CoveredBy scale carrier boxes root_3927407 := by
  apply coveredBy_split_literal root_3927407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1475.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1476.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1475.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1476.covered
#print axioms cover_3927407

def root_3927401 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3927401_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3927401_left_fuel : Nat := 1
def small_3927401_left_count : Nat := 1
def small_3927401_left_encoded : String := "00000000"
theorem small_3927401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3927401_left_root small_3927401_left_fuel small_3927401_left_count small_3927401_left_encoded = true := by
  decide +kernel
theorem small_3927401_left_covered : CoveredBy scale carrier boxes small_3927401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3927401_left_root small_3927401_left_fuel small_3927401_left_count small_3927401_left_encoded small_3927401_left_checked

theorem cover_3927401 : CoveredBy scale carrier boxes root_3927401 := by
  apply coveredBy_split_literal root_3927401 small_3927401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3927407 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3927401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3927407
#print axioms cover_3927401

def root_3894937 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3894937 : CoveredBy scale carrier boxes root_3894937 := by
  apply coveredBy_split_literal root_3894937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3927401 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894938
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3927401
#print axioms cover_3894937

def root_3894936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894936_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3894936_right_fuel : Nat := 20
def small_3894936_right_count : Nat := 239
def small_3894936_right_encoded : String := "0A0000F6115225010A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A91301120700F6000000070000000000000007000000041151E909000000040000000700000003115224FD000000030A0000FE1152250908A91301120700F608A912FB12073CFA0000000208A912FD12073D0608A91309120700FE00000007000000040000000700000003120701060000000308A91309120700FE0500010200000009000000050000000400000005120700FA08A912FD0000000800000005000000020000000012073CF60000000008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE000000070000000400000005000000030000000500000005000000041151E90900000004000000051151E8FB0A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A91301120700F608A912FD0000000A0000000A0000000012073CF60000000008A912FD00000007120701060000000308A91309120700FE000000050000000400000005000000041151E909000000040000000A0000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A91301120700F608A912F912073D0208A912FB12073CFA0000000208A912FD00000007000000050000000500000001000000050000000012073CF60000000008A912F912073D0208A912FB00000007000000050000000100000005000000041151E9090000000408A91301120700F60000000500000000000000071151E8FB0A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A91301120700F6000000070000000000000007000000041151E909000000040000000700000002000000001151E901000000000A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0000000700000003115224FD000000030A0000FE000000051151E90900000004000000051151E8FB0A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A912FD00000007120701060000000308A91309120700FE000000050000000400000005000000041151E90900000004000000070000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0000000700000003115224FD000000030A0000FE1152250908A912F912073D0208A912FB000000070000000500000001120701020000000100000007000000041151E90900000004000000071151E8FB0000000700000002"
theorem small_3894936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3894936_right_root small_3894936_right_fuel small_3894936_right_count small_3894936_right_encoded = true := by
  decide +kernel
theorem small_3894936_right_covered : CoveredBy scale carrier boxes small_3894936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3894936_right_root small_3894936_right_fuel small_3894936_right_count small_3894936_right_encoded small_3894936_right_checked

theorem cover_3894936 : CoveredBy scale carrier boxes root_3894936 := by
  apply coveredBy_split_literal root_3894936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3894937 small_3894936_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3894937
  · exact small_3894936_right_covered
#print axioms cover_3894936

def root_3932024 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932024_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932024_right_fuel : Nat := 19
def small_3932024_right_count : Nat := 181
def small_3932024_right_encoded : String := "1151E8FB0A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91301120700F608A912FF00000005120701080000000405000102135D44F90000000A00000001135D80F900000001050000FA000000090000000A0000000012073CF60000000008A912FF000000090000000A00000003115224FD000000030A0001081151E8FF08A91301120700F608A912FD00000005120701060000000305000102135D44F9050000FA135D80FB0000000205000108135D44FF0000000900000004000000090000000900000001135D80F900000001050000FA135D80FB0000000205000108135D44FF00000009000000040000000900000009000000000000000900000004115224FF0000000408A91301120700F608A912FD12073D0608A912FF12073D0805000102135D44F9050000FA135D80FB0000000204548A010000000500000009135D44FB000000050000000200000001135D80F900000001050000FA000000090000000900000004120701080000000405000102135D44F9050000FA00000006135D44FB04548A01138670F60CFD9BFD000000050000000600000000000000060000000200000001135D80F900000001050000FA135D80FB0000000204548A01138670F60CFD9BFD0000000500000008000000001386ACF6000000000CFD9BFD0000000600000006135D44FB04548A0100000005000000090000000200000003120701060000000308A912FF12073D0805000102135D44F9050000FA000000060000000900000001000000090000000412070108000000040500010200000006000000060000000012073CF60000000008A912FD12073D0608A912FF12073D0805000102135D44F90000000900000001000000090000000412070108000000040500010200000006135D80F900000001050000FA00000006135D44FB000000090000000200000003120701060000000308A912FF0000000912070108000000040000000600000002"
theorem small_3932024_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3932024_right_root small_3932024_right_fuel small_3932024_right_count small_3932024_right_encoded = true := by
  decide +kernel
theorem small_3932024_right_covered : CoveredBy scale carrier boxes small_3932024_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3932024_right_root small_3932024_right_fuel small_3932024_right_count small_3932024_right_encoded small_3932024_right_checked

theorem cover_3932024 : CoveredBy scale carrier boxes root_3932024 := by
  apply coveredBy_split_literal root_3932024 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1477.root small_3932024_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1477.covered
  · exact small_3932024_right_covered
#print axioms cover_3932024

def root_3932019 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932019_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3932019_right_fuel : Nat := 1
def small_3932019_right_count : Nat := 1
def small_3932019_right_encoded : String := "00000001"
theorem small_3932019_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3932019_right_root small_3932019_right_fuel small_3932019_right_count small_3932019_right_encoded = true := by
  decide +kernel
theorem small_3932019_right_covered : CoveredBy scale carrier boxes small_3932019_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3932019_right_root small_3932019_right_fuel small_3932019_right_count small_3932019_right_encoded small_3932019_right_checked

theorem cover_3932019 : CoveredBy scale carrier boxes root_3932019 := by
  apply coveredBy_split_literal root_3932019 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.root_3932024 small_3932019_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283.cover_3932024
  · exact small_3932019_right_covered
#print axioms cover_3932019

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0283
