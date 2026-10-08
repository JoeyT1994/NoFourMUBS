import TaoBundleAssembly0558
import TaoBundleChunkBatch0762
import TaoBundleChunkBatch0763
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559
def root_8116244 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116244_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116244_left_fuel : Nat := 21
def small_8116244_left_count : Nat := 93
def small_8116244_left_encoded : String := "12073D0805000100135D450100000000050000F800000008135D44F90000000800000001135D8101050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000008128A7D01078000F800000008128A40F90000000800000001000000000F8750FD078001000000000A128A7D01078000F8128A7CF9000000010AD3577F0000000500000009000000050000000000000003000000020F878CFB000000020C9A86FC000000080F8750FD0780010000000008128A7D01078000F80000000800000005000000000000000300000008000000020F34D1040000000200000008135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A87040000000A0F878CFB000000020C9A86FC000000080000000500000008000000020F34D1040000000200000008000000010000000000000004"
theorem small_8116244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116244_left_root small_8116244_left_fuel small_8116244_left_count small_8116244_left_encoded = true := by
  decide +kernel
theorem small_8116244_left_covered : CoveredBy scale carrier boxes small_8116244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116244_left_root small_8116244_left_fuel small_8116244_left_count small_8116244_left_encoded small_8116244_left_checked

theorem cover_8116244 : CoveredBy scale carrier boxes root_8116244 := by
  apply coveredBy_split_literal root_8116244 small_8116244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8116438 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8116244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8116438
#print axioms cover_8116244

def root_8116238 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116238_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116238_left_fuel : Nat := 1
def small_8116238_left_count : Nat := 1
def small_8116238_left_encoded : String := "00000003"
theorem small_8116238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116238_left_root small_8116238_left_fuel small_8116238_left_count small_8116238_left_encoded = true := by
  decide +kernel
theorem small_8116238_left_covered : CoveredBy scale carrier boxes small_8116238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116238_left_root small_8116238_left_fuel small_8116238_left_count small_8116238_left_encoded small_8116238_left_checked

theorem cover_8116238 : CoveredBy scale carrier boxes root_8116238 := by
  apply coveredBy_split_literal root_8116238 small_8116238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116244 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8116238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116244
#print axioms cover_8116238

def root_8116237 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116237_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116237_right_fuel : Nat := 7
def small_8116237_right_count : Nat := 13
def small_8116237_right_encoded : String := "120700FC08A912FF0000000812070108000000040500010000000008135D8101050000F800000008000000060000000000000003"
theorem small_8116237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116237_right_root small_8116237_right_fuel small_8116237_right_count small_8116237_right_encoded = true := by
  decide +kernel
theorem small_8116237_right_covered : CoveredBy scale carrier boxes small_8116237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116237_right_root small_8116237_right_fuel small_8116237_right_count small_8116237_right_encoded small_8116237_right_checked

theorem cover_8116237 : CoveredBy scale carrier boxes root_8116237 := by
  apply coveredBy_split_literal root_8116237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116238 small_8116237_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116238
  · exact small_8116237_right_covered
#print axioms cover_8116237

def root_8116232 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116232_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116232_right_fuel : Nat := 1
def small_8116232_right_count : Nat := 1
def small_8116232_right_encoded : String := "00000002"
theorem small_8116232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116232_right_root small_8116232_right_fuel small_8116232_right_count small_8116232_right_encoded = true := by
  decide +kernel
theorem small_8116232_right_covered : CoveredBy scale carrier boxes small_8116232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116232_right_root small_8116232_right_fuel small_8116232_right_count small_8116232_right_encoded small_8116232_right_checked

theorem cover_8116232 : CoveredBy scale carrier boxes root_8116232 := by
  apply coveredBy_split_literal root_8116232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116237 small_8116232_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116237
  · exact small_8116232_right_covered
#print axioms cover_8116232

def root_8116231 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116231_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116231_right_fuel : Nat := 25
def small_8116231_right_count : Nat := 99
def small_8116231_right_encoded : String := "120701040000000208A912FD12073CFC0000000308A912FF00000008120701080000000405000100135D450100000000050000F800000008135D44F90000000800000001135D8101050000F8135D80F900000001045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86FC0F878CFD00000003000000060F8750FD07800100128A410100000000078000F80000000800000006128A7D01078000F8128A7CF900000001067ECE7B12EA9504022A457F00000008000000060000000212EA59040000000200000006000000060000000000000003000000080000000213867104000000020CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86FC000000060F8750FD0780010000000006128A7D0100000006000000000000000300000008135D44F9045489FB1386AD040CFD9BFD0F350CFC00000003045489FF0000000800000006000000060000000213867104000000020CFD9BFD0F350CFC000000030000000600000006000000010000000000000008"
theorem small_8116231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116231_right_root small_8116231_right_fuel small_8116231_right_count small_8116231_right_encoded = true := by
  decide +kernel
theorem small_8116231_right_covered : CoveredBy scale carrier boxes small_8116231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116231_right_root small_8116231_right_fuel small_8116231_right_count small_8116231_right_encoded small_8116231_right_checked

theorem cover_8116231 : CoveredBy scale carrier boxes root_8116231 := by
  apply coveredBy_split_literal root_8116231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116232 small_8116231_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116232
  · exact small_8116231_right_covered
#print axioms cover_8116231

def root_8116225 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116225_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116225_left_fuel : Nat := 1
def small_8116225_left_count : Nat := 1
def small_8116225_left_encoded : String := "00000004"
theorem small_8116225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116225_left_root small_8116225_left_fuel small_8116225_left_count small_8116225_left_encoded = true := by
  decide +kernel
theorem small_8116225_left_covered : CoveredBy scale carrier boxes small_8116225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116225_left_root small_8116225_left_fuel small_8116225_left_count small_8116225_left_encoded small_8116225_left_checked

theorem cover_8116225 : CoveredBy scale carrier boxes root_8116225 := by
  apply coveredBy_split_literal root_8116225 small_8116225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116231 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116231
#print axioms cover_8116225

def root_8116217 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116217_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116217_left_fuel : Nat := 2
def small_8116217_left_count : Nat := 3
def small_8116217_left_encoded : String := "1151E8FF0000000800000004"
theorem small_8116217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116217_left_root small_8116217_left_fuel small_8116217_left_count small_8116217_left_encoded = true := by
  decide +kernel
theorem small_8116217_left_covered : CoveredBy scale carrier boxes small_8116217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116217_left_root small_8116217_left_fuel small_8116217_left_count small_8116217_left_encoded small_8116217_left_checked

theorem cover_8116217 : CoveredBy scale carrier boxes root_8116217 := by
  apply coveredBy_split_literal root_8116217 small_8116217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116225 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8116217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116225
#print axioms cover_8116217

def root_8116211 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116211_left_fuel : Nat := 1
def small_8116211_left_count : Nat := 1
def small_8116211_left_encoded : String := "00000003"
theorem small_8116211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116211_left_root small_8116211_left_fuel small_8116211_left_count small_8116211_left_encoded = true := by
  decide +kernel
theorem small_8116211_left_covered : CoveredBy scale carrier boxes small_8116211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116211_left_root small_8116211_left_fuel small_8116211_left_count small_8116211_left_encoded small_8116211_left_checked

theorem cover_8116211 : CoveredBy scale carrier boxes root_8116211 := by
  apply coveredBy_split_literal root_8116211 small_8116211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116217 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116217
#print axioms cover_8116211

def root_8116210 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8116210 : CoveredBy scale carrier boxes root_8116210 := by
  apply coveredBy_split_literal root_8116210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116211 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3048.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116211
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3048.covered
#print axioms cover_8116210

def root_8116204 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116204_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8116204_left_fuel : Nat := 1
def small_8116204_left_count : Nat := 1
def small_8116204_left_encoded : String := "00000002"
theorem small_8116204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8116204_left_root small_8116204_left_fuel small_8116204_left_count small_8116204_left_encoded = true := by
  decide +kernel
theorem small_8116204_left_covered : CoveredBy scale carrier boxes small_8116204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8116204_left_root small_8116204_left_fuel small_8116204_left_count small_8116204_left_encoded small_8116204_left_checked

theorem cover_8116204 : CoveredBy scale carrier boxes root_8116204 := by
  apply coveredBy_split_literal root_8116204 small_8116204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116210 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8116204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116210
#print axioms cover_8116204

def root_8114276 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8114276 : CoveredBy scale carrier boxes root_8114276 := by
  apply coveredBy_split_literal root_8114276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3045.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8116204 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3045.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8116204
#print axioms cover_8114276

def root_8114271 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8114271_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8114271_right_fuel : Nat := 1
def small_8114271_right_count : Nat := 1
def small_8114271_right_encoded : String := "00000001"
theorem small_8114271_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8114271_right_root small_8114271_right_fuel small_8114271_right_count small_8114271_right_encoded = true := by
  decide +kernel
theorem small_8114271_right_covered : CoveredBy scale carrier boxes small_8114271_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8114271_right_root small_8114271_right_fuel small_8114271_right_count small_8114271_right_encoded small_8114271_right_checked

theorem cover_8114271 : CoveredBy scale carrier boxes root_8114271 := by
  apply coveredBy_split_literal root_8114271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8114276 small_8114271_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8114276
  · exact small_8114271_right_covered
#print axioms cover_8114271

def root_8093069 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8093069 : CoveredBy scale carrier boxes root_8093069 := by
  apply coveredBy_split_literal root_8093069 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.root_8093070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8114271 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0558.cover_8093070
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8114271
#print axioms cover_8093069

def root_8093063 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093063_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8093063_left_fuel : Nat := 1
def small_8093063_left_count : Nat := 1
def small_8093063_left_encoded : String := "00000000"
theorem small_8093063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8093063_left_root small_8093063_left_fuel small_8093063_left_count small_8093063_left_encoded = true := by
  decide +kernel
theorem small_8093063_left_covered : CoveredBy scale carrier boxes small_8093063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8093063_left_root small_8093063_left_fuel small_8093063_left_count small_8093063_left_encoded small_8093063_left_checked

theorem cover_8093063 : CoveredBy scale carrier boxes root_8093063 := by
  apply coveredBy_split_literal root_8093063 small_8093063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8093069 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8093063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8093069
#print axioms cover_8093063

def root_8127751 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127751_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127751_right_fuel : Nat := 24
def small_8127751_right_count : Nat := 433
def small_8127751_right_encoded : String := "120700FC08A912FF12073D0805000104135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F90C9A87080000000900000009000000010000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A8708000000090F878CFF00000004000000090000000400000009138670FC0CFD9BFF0F350D080C9A8708000000090F878CFF0000000400000009000000040000000900000003000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010000000900000000000000040F34D108000000040C9A87000F875101000000000C9A86F800000009000000090F878D010000000900000000138670FC0CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000000000900000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F87510100000000000000050F878D010C9A87080F8750FF00000009000000040F878CFF00000004028001040000000513D7ECFB000000020AD35779000000090000000500000000000000040000000500000005000000010000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000090F878CFF00000004000000090F8750F90000000900000001000000040F34D108000000040C9A86F80000000900000009138670FC0CFD9BFF0F350D08000000080000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080000000700000007000000040F34D1080000000407800104128A40FB0000000A000000020000000A138670FC0CFD9BFF0F350D080C9A8708000000070F878CFF00000004078001040000000900000007000000040F34D108000000040000000A00000003000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F875101000000000C9A86F8000000080F8750F900000008000000010F878D010C9A86F80F878CF9000000010780010400000009128A7CFB00000002067ECE7D12EA94FC000000030AD3577F0000000800000009000000080F8750F9000000090000000100000000138670FC00000008000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0F350D080C9A8700000000080F878D010C9A8708000000070F878CFF0000000407800104128A40FB0AD357790000000800000005000000020000000700000000000000040F34D108000000040C9A87000F87510100000000000000050F878D0107800104128A40FB0AD3577910D13CF800000001067ECE7D12EA94FC000000030AD3577F10D13D08000000050000000400000005000000050000000500000002128A7CFB000000020AD3577910D13CF800000001067ECE7D12EA94FC000000030AD3577F0000000700000005000000050000000500000000138670FC0CFD9BFF000000080000000500000003000000010000000000000004120701080000000405000104135D44FB0CFD9C010F34D100000000000CFD9BF9000000090F34D0F80000000A000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A870000000009000000090000000400000009138670FC00000005000000030F34D0F800000005000000010000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD08000000090000000400000009000000090F34D0F80000000A000000010F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A87000F875101000000000C9A86F80F878CF900000001000000050F8750F90780010400000009128A7CFB0000000200000009000000010F878D010C9A86F80F878CF90000000107800104000000090000000A0F8750F90000000900000001000000000000000413867108000000040C9A87000F87510100000000000000050F878D010000000A00000000138670FC045489FF1386AD080C9A87000F87510100000000000000050F878D010C9A86F80000000900000009000000000000000400000005000000030F34D0F800000005000000010000000000000003"
theorem small_8127751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127751_right_root small_8127751_right_fuel small_8127751_right_count small_8127751_right_encoded = true := by
  decide +kernel
theorem small_8127751_right_covered : CoveredBy scale carrier boxes small_8127751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127751_right_root small_8127751_right_fuel small_8127751_right_count small_8127751_right_encoded small_8127751_right_checked

theorem cover_8127751 : CoveredBy scale carrier boxes root_8127751 := by
  apply coveredBy_split_literal root_8127751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3049.root small_8127751_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3049.covered
  · exact small_8127751_right_covered
#print axioms cover_8127751

def root_8127745 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127745_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127745_left_fuel : Nat := 1
def small_8127745_left_count : Nat := 1
def small_8127745_left_encoded : String := "00000001"
theorem small_8127745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127745_left_root small_8127745_left_fuel small_8127745_left_count small_8127745_left_encoded = true := by
  decide +kernel
theorem small_8127745_left_covered : CoveredBy scale carrier boxes small_8127745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127745_left_root small_8127745_left_fuel small_8127745_left_count small_8127745_left_encoded small_8127745_left_checked

theorem cover_8127745 : CoveredBy scale carrier boxes root_8127745 := by
  apply coveredBy_split_literal root_8127745 small_8127745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8127751 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8127745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8127751
#print axioms cover_8127745

def root_8127744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127744_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127744_right_fuel : Nat := 21
def small_8127744_right_count : Nat := 293
def small_8127744_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060F34D10800000004028001040000000613D7ECFB000000020AD35781000000070000000600000003138670F80CFD9BFD0000000600000007000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0CFD9BFF000000060000000500000003138670F80CFD9BFD000000060F34D0FC0000000500000003000000010000000000000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030000000700000007000000070F350D00045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000070F34D10800000004000000070F34D0FC0CFD9BFF000000070F34D108000000040C9A87000F87510100000000000000050F878D01000000070000000000000003138670F80CFD9BFD0F350CFC000000030000000700000007000000010000000000000004120701080000000405000104135D44FB0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000080F34D0FC0000000A00000003138670F80CFD9BFD000000080000000A000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF000000061386710800000004000000060F34D0FC0000000500000003138670F800000005000000010000000000000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0000000A00000007000000040000000A0F34D0FC0000000A00000003138670F80CFD9BFD0000000A0000000A000000010F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F875101000000000C9A86FC00000006000000060F878D010C9A86FC0F878CFD0000000307800104000000060000000700000006000000000000000413867108000000040C9A87000F87510100000000000000050F878D010000000A000000000F34D0FC0000000500000003138670F80CFD9BFD0F350CFC00000003045489FF1386AD08000000070000000400000005000000050000000100000000120700FC08A912FF12073D0805000104135D44FB0CFD9C010F34D10000000000045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF0F350D0800000007000000040000000500000005000000050000000500000002135D80FB000000020CFD9C010F34D10000000000045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF000000070F34D108000000040000000A138670FC0CFD9BFF000000070000000500000003000000070F350D00045489F91386ACF800000001045489FD1386ACFC000000030CFD9BFF0F350D080000000500000004000000050000000500000005000000000000000412070108000000040500010400000005135D80FB00000002000000050000000300000001"
theorem small_8127744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127744_right_root small_8127744_right_fuel small_8127744_right_count small_8127744_right_encoded = true := by
  decide +kernel
theorem small_8127744_right_covered : CoveredBy scale carrier boxes small_8127744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127744_right_root small_8127744_right_fuel small_8127744_right_count small_8127744_right_encoded small_8127744_right_checked

theorem cover_8127744 : CoveredBy scale carrier boxes root_8127744 := by
  apply coveredBy_split_literal root_8127744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8127745 small_8127744_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8127745
  · exact small_8127744_right_covered
#print axioms cover_8127744

def root_8127739 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127739_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127739_right_fuel : Nat := 1
def small_8127739_right_count : Nat := 1
def small_8127739_right_encoded : String := "00000000"
theorem small_8127739_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127739_right_root small_8127739_right_fuel small_8127739_right_count small_8127739_right_encoded = true := by
  decide +kernel
theorem small_8127739_right_covered : CoveredBy scale carrier boxes small_8127739_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127739_right_root small_8127739_right_fuel small_8127739_right_count small_8127739_right_encoded small_8127739_right_checked

theorem cover_8127739 : CoveredBy scale carrier boxes root_8127739 := by
  apply coveredBy_split_literal root_8127739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8127744 small_8127739_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8127744
  · exact small_8127739_right_covered
#print axioms cover_8127739

def root_8127151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127151_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127151_left_fuel : Nat := 20
def small_8127151_left_count : Nat := 275
def small_8127151_left_encoded : String := "120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01000000091386AD000CFD9BF9000000090F34D0F80CFD9BFD0F350CFC000000030000000900000009000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000007000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000300000009000000090F34D0F80CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000070000000900000003000000010000000000000004120701080000000405000104135D44FB04548A01000000091386AD000CFD9BF9000000090F34D0F800000009000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000009000000011386AD000CFD9BF90F350CF800000001000000090F34D0F80000000A0000000100000000120700FC08A912FF12073D0805000104135D44FB04548A0113867100000000000CFD9BF90F350CF800000001045489FD00000009138670FC0CFD9BFF0F350D08000000090000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF800000001045489FD1386ACFC0000000300000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009000000030F34D0F8045489FD00000009138670FC0CFD9BFF0F350D0800000009000000040000000900000003000000010000000000000002135D80FB0000000204548A0113867100000000000CFD9BF9000000090F34D0F800000009000000011386AD000CFD9BF90F350CF800000001045489FD1386ACFC0000000300000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F900000009000000010000000400000009000000030F34D0F8045489FD1386ACFC000000030CFD9BFF0000000700000009138670FC0CFD9BFF0F350D0800000007000000040000000900000003000000010000000000000004120701080000000405000104000000090000000A00000003120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01000000071386AD00045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF0000000700000009000000030000000700000000000000020000000700000004120701080000000405000104135D44FB04548A01000000081386AD00045489F90000000A0000000800000000000000020000000A120700FC08A912FF12073D0805000104135D44FB04548A010000000A1386AD00045489F91386ACF800000001045489FD0000000A0000000A138670F80000000A000000010000000000000002135D80FB0000000204548A01000000071386AD00045489F91386ACF800000001045489FD00000007000000070000000700000000000000040000000A0000000300000001"
theorem small_8127151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127151_left_root small_8127151_left_fuel small_8127151_left_count small_8127151_left_encoded = true := by
  decide +kernel
theorem small_8127151_left_covered : CoveredBy scale carrier boxes small_8127151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127151_left_root small_8127151_left_fuel small_8127151_left_count small_8127151_left_encoded small_8127151_left_checked

theorem cover_8127151 : CoveredBy scale carrier boxes root_8127151 := by
  apply coveredBy_split_literal root_8127151 small_8127151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8127739 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8127151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8127739
#print axioms cover_8127151

def root_8127145 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127145_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8127145_left_fuel : Nat := 1
def small_8127145_left_count : Nat := 1
def small_8127145_left_encoded : String := "00000004"
theorem small_8127145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8127145_left_root small_8127145_left_fuel small_8127145_left_count small_8127145_left_encoded = true := by
  decide +kernel
theorem small_8127145_left_covered : CoveredBy scale carrier boxes small_8127145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8127145_left_root small_8127145_left_fuel small_8127145_left_count small_8127145_left_encoded small_8127145_left_checked

theorem cover_8127145 : CoveredBy scale carrier boxes root_8127145 := by
  apply coveredBy_split_literal root_8127145 small_8127145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.root_8127151 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8127145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559.cover_8127151
#print axioms cover_8127145

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0559
