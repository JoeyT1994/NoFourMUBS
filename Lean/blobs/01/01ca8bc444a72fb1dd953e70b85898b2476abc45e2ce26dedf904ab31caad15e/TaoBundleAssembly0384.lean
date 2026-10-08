import TaoBundleAssembly0383
import TaoBundleChunkBatch0508
import TaoBundleChunkBatch0509
import TaoBundleChunkBatch0510
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384
def root_5422999 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422999_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422999_right_fuel : Nat := 27
def small_5422999_right_count : Nat := 455
def small_5422999_right_encoded : String := "120700FC08A912FF12073D0805000100135D44F7050000F8135D80F90000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF000000050F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A87080F8750FF0280010013D7B0F7000000050000000013D7ECF700000000078000F800000009128A40F90000000500000001000000040F878CFF00000004028001000000000900000009000000040F34D108000000040000000900000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF028001000000000900000009000000040F878CFF0000000400000009000000040F34D10800000004028001000000000900000009138670FC0CFD9BFF0F350D080C9A87080F8750FF0280010013D7B0F7078000F800000009000000080000000013D7ECF700000000078000F8128A7CF90000000100000009128A40F9067ECE85000000090000000800000001000000040F878CFF00000004028001000000000913D7ECF700000000078000F80000000900000009000000040F34D10800000004028001000000000913D7ECF7000000000000000900000003135D44F904548A05138670FA045489FD1386ACFC000000030CFD9BFF000000050F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF00000004028001000000000613D7ECF700000000028000F80000000900000006000000040000000600000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF000000050000000400000008000000040F34D1080000000400000008138670FC0CFD9BFF0F350D080C9A87080F8750FF000000080000000400000008000000040F34D1080000000400000006000000030000000100000000135D80F700000000050000F8135D80F90000000104548A05138670FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF000000050000000400000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A87080F8750FF07800100128A40F7078000F800000009128A40F9022A458500000005000000090000000100000000128A7CF700000000078000F800000009128A40F9022A4585000000050000000900000001000000040F878CFF000000040780010000000009128A7CF70000000000000007000000040F34D108000000040000000700000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF0780010000000009128A7CF70000000000000009000000040F878CFF0000000400000009000000040F34D1080000000400000009138670FC0CFD9BFF0F350D080C9A87080F8750FF07800100128A40F7078000F8128A7CF90000000100000009128A40F9067ECE850000000912EA94FA00000002000000090000000100000000128A7CF700000000078000F800000009128A40F9067ECE85000000090000000700000001000000040F878CFF0000000407800100128A40F7078000F800000009000000090000000000000007000000040F34D108000000040000000700000003135D44F904548A05138670FA045489FD1386ACFC000000030CFD9BFF000000050F34D10800000004078001000000000900000007138670FC0CFD9BFF0F350D080C9A87080F8750FF07800100128A40F70000000500000000128A7CF700000000028000F813D7ECF900000001022A4585000000050000000713D7B0F9022A4585000000050000000700000001000000040F878CFF0000000407800100128A40F7028000F813D7ECF9000000010000000913D7B0F900000007000000010000000000000007000000040F34D108000000040000000700000003000000021386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF078001000000000A0000000A000000040F878CFF000000040780010000000009128A7CF70000000000000009000000040F34D1080000000400000007138670FC0CFD9BFF0F350D080C9A87080F8750FF07800100128A40F7028000F813D7ECF900000001067ECE8512EA58FA022A457D0000000513E1C4FC0B4D4408108010FF064001000000000800000007000000040000000700000003000000020000000813D7B0F9000000080000000100000000128A7CF70000000000000007000000040F878CFF0000000400000007000000040F34D1080000000400000007000000030000000100000004120701080000000405000100135D44F7050000F8135D80F90000000104548A05138670FA045489FD1386ACFC00000003045489FF000000090000000600000006000000021386ACFA00000002045489FD1386ACFC00000003045489FF1386AD08028001000000000900000007000000040000000700000007135D44F904548A05000000060000000600000001000000000000000700000003"
theorem small_5422999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422999_right_root small_5422999_right_fuel small_5422999_right_count small_5422999_right_encoded = true := by
  decide +kernel
theorem small_5422999_right_covered : CoveredBy scale carrier boxes small_5422999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422999_right_root small_5422999_right_fuel small_5422999_right_count small_5422999_right_encoded small_5422999_right_checked

theorem cover_5422999 : CoveredBy scale carrier boxes root_5422999 := by
  apply coveredBy_split_literal root_5422999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5423000 small_5422999_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5423000
  · exact small_5422999_right_covered
#print axioms cover_5422999

def root_5422994 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422994_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422994_right_fuel : Nat := 1
def small_5422994_right_count : Nat := 1
def small_5422994_right_encoded : String := "00000002"
theorem small_5422994_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422994_right_root small_5422994_right_fuel small_5422994_right_count small_5422994_right_encoded = true := by
  decide +kernel
theorem small_5422994_right_covered : CoveredBy scale carrier boxes small_5422994_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422994_right_root small_5422994_right_fuel small_5422994_right_count small_5422994_right_encoded small_5422994_right_checked

theorem cover_5422994 : CoveredBy scale carrier boxes root_5422994 := by
  apply coveredBy_split_literal root_5422994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422999 small_5422994_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422999
  · exact small_5422994_right_covered
#print axioms cover_5422994

def root_5422993 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5422993 : CoveredBy scale carrier boxes root_5422993 := by
  apply coveredBy_split_literal root_5422993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2032.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2032.covered
#print axioms cover_5422993

def root_5422987 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422987_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422987_left_fuel : Nat := 1
def small_5422987_left_count : Nat := 1
def small_5422987_left_encoded : String := "00000004"
theorem small_5422987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422987_left_root small_5422987_left_fuel small_5422987_left_count small_5422987_left_encoded = true := by
  decide +kernel
theorem small_5422987_left_covered : CoveredBy scale carrier boxes small_5422987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422987_left_root small_5422987_left_fuel small_5422987_left_count small_5422987_left_encoded small_5422987_left_checked

theorem cover_5422987 : CoveredBy scale carrier boxes root_5422987 := by
  apply coveredBy_split_literal root_5422987 small_5422987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422993 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5422987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422993
#print axioms cover_5422987

def root_5422187 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422187_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422187_left_fuel : Nat := 29
def small_5422187_left_count : Nat := 379
def small_5422187_left_encoded : String := "1151E8FF08A91305120700FA08A912FD00000005120700FC05000100135D44F7050000F8135D80F90000000105000108135D44FF04548A05000000051386ACFA00000002045489FD00000005138670FC000000050000000300000004135D80FF0000000404548A05000000051386ACFA00000002045489FD00000005138670FC0280010013D7B0F7078000F8128A7CF90000000107800108128A40FF0000000500000004128A7CFF00000004067ECE850000000500000008128A40F907800108128A40FF000000050000000400000008000000010000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF067ECE850000000512EA94FA00000002022A457D0000000513E1C4FC03C001000000000A0000000A0000000300000004128A7CFF00000004067ECE850000000912EA94FA0000000200000009128A40F907800108128A40FF067ECE85000000050000000A00000004128A7CFF00000004067ECE8500000005000000080000000100000003135D44F905000108135D44FF0000000500000004135D80FF0000000404548A05000000051386ACFA00000002045489FD00000005138670FC028001000000000813D7ECF700000000028000F813D7ECF900000001078001080000000A0000000800000008000000030000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF04548A05000000051386ACFA00000002045489FD00000005138670FC078001000000000A000000060000000300000004135D80FF0000000404548A05138670FA045489FD00000005138670FC07800100128A40F70000000500000000128A7CF700000000078000F8128A7CF90000000107800108128A40FF0000000500000004128A7CFF00000004022A45850000000513E200FA0000000200000009128A40F9000000050000000100000003000000021386ACFA00000002045489FD1386ACFC0000000307800100128A40F7078000F8000000050000000A00000000128A7CF700000000078000F8000000060000000A138670FC07800100128A40F7078000F8128A7CF90000000107800108128A40FF067ECE8512EA58FA00000005000000020000000600000004128A7CFF00000004067ECE850000000912EA94FA0000000200000009128A40F9078001080000000A128A7CFF00000004067ECE8512EA58FA022A457D0000000513E1C4FC0640010012FF70F7064000F800000005000000090000000012FFACF700000000064000F8000000090000000A00000003000000020000000A0000000100000000128A7CF700000000078000F8128A7CF9000000010780010800000006128A7CFF00000004067ECE850000000900000006128A40F9078001080000000A128A7CFF00000004067ECE8512EA58FA022A457D000000090000000A000000020000000A0000000100000003135D44F905000108135D44FF0000000A00000004135D80FF0000000404548A05000000051386ACFA00000002045489FD00000005138670FC078001000000000A0000000A0000000300000001000000030000000212073CFA0000000208A912FD12073CFC00000003050001000000000A135D80F7000000000000000A120700FC05000100135D44F7050000F8135D80F90000000105000108135D44FF0CFD9C050F34D0FA0000000A000000020000000A00000004135D80FF000000040CFD9C050F34D0FA045489FD1386ACFC000000030000000A138670FC028001000000000813D7ECF700000000078000F8128A7CF900000001078001080000000A000000080000000A00000003000000020F350CFA000000020000000A135D44F90000000A0000000100000000135D80F700000000050000F8135D80F90000000105000108135D44FF0000000A00000004135D80FF000000040CFD9C050F34D0FA045489FD0000000A138670FC07800100128A40F7078000F8128A7CF900000001078001080000000A128A7CFF000000040AD3578500000009000000060000000A00000000128A7CF7000000000000000A00000003000000020F350CFA000000020000000A135D44F90000000A000000010000000300000004"
theorem small_5422187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422187_left_root small_5422187_left_fuel small_5422187_left_count small_5422187_left_encoded = true := by
  decide +kernel
theorem small_5422187_left_covered : CoveredBy scale carrier boxes small_5422187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422187_left_root small_5422187_left_fuel small_5422187_left_count small_5422187_left_encoded small_5422187_left_checked

theorem cover_5422187 : CoveredBy scale carrier boxes root_5422187 := by
  apply coveredBy_split_literal root_5422187 small_5422187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422987 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5422187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422987
#print axioms cover_5422187

def root_5422181 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422181_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422181_left_fuel : Nat := 1
def small_5422181_left_count : Nat := 1
def small_5422181_left_encoded : String := "00000003"
theorem small_5422181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422181_left_root small_5422181_left_fuel small_5422181_left_count small_5422181_left_encoded = true := by
  decide +kernel
theorem small_5422181_left_covered : CoveredBy scale carrier boxes small_5422181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422181_left_root small_5422181_left_fuel small_5422181_left_count small_5422181_left_encoded small_5422181_left_checked

theorem cover_5422181 : CoveredBy scale carrier boxes root_5422181 := by
  apply coveredBy_split_literal root_5422181 small_5422181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422187 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5422181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422187
#print axioms cover_5422181

def root_5422180 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5422180 : CoveredBy scale carrier boxes root_5422180 := by
  apply coveredBy_split_literal root_5422180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2033.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422181
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2033.covered
#print axioms cover_5422180

def root_5422175 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422175_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422175_right_fuel : Nat := 1
def small_5422175_right_count : Nat := 1
def small_5422175_right_encoded : String := "00000002"
theorem small_5422175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422175_right_root small_5422175_right_fuel small_5422175_right_count small_5422175_right_encoded = true := by
  decide +kernel
theorem small_5422175_right_covered : CoveredBy scale carrier boxes small_5422175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422175_right_root small_5422175_right_fuel small_5422175_right_count small_5422175_right_encoded small_5422175_right_checked

theorem cover_5422175 : CoveredBy scale carrier boxes root_5422175 := by
  apply coveredBy_split_literal root_5422175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422180 small_5422175_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422180
  · exact small_5422175_right_covered
#print axioms cover_5422175

def root_5422174 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422174_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422174_right_fuel : Nat := 20
def small_5422174_right_count : Nat := 183
def small_5422174_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A912FD0000000A120700FC050001000000000A0000000A0000000300000004115224FF0000000408A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000F8135D80F900000001050000FA135D81050CFD9BFD000000080F34D0FC000000080000000300000002135D450500000002000000080000000800000000135D80F700000000050000F8135D80F900000001050000FA135D81050CFD9BFD0F350CFC000000030000000A0F34D0FC0CFD9BFF000000080F34D10800000004000000080000000300000002135D4505000000020CFD9BFD0F350CFC000000030000000A0F34D0FC0000000800000003135D44F9050000FA0000000A0000000A000000010000000412070108000000040500010000000008135D80F700000000050000F8135D80F900000001050000FA135D81050CFD9BFD0F350CFC00000003045489FF000000081386710800000004000000080F34D0FC000000080000000300000002135D4505000000020CFD9BFD000000080F34D0FC000000080000000300000008120700FC08A912FF12073D080500010000000008135D80F700000000050000F8135D80F900000001050000FA135D8105045489FD1386ACFC000000030CFD9BFF00000008000000050000000500000002135D45050000000200000008000000080000000412070108000000040500010000000005135D80F700000000050000F80000000500000008000000031151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912FF0000000A120701080000000405000100135D44F7050000F8135D80F900000001050000FA0000000A135D4505000000020000000A0000000800000000135D80F700000000050000F8135D80F900000001050000FA0000000A135D450500000002050000FC135D80FD00000003045489FF000000081386710800000004000000080000000A0000000A00000003"
theorem small_5422174_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422174_right_root small_5422174_right_fuel small_5422174_right_count small_5422174_right_encoded = true := by
  decide +kernel
theorem small_5422174_right_covered : CoveredBy scale carrier boxes small_5422174_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422174_right_root small_5422174_right_fuel small_5422174_right_count small_5422174_right_encoded small_5422174_right_checked

theorem cover_5422174 : CoveredBy scale carrier boxes root_5422174 := by
  apply coveredBy_split_literal root_5422174 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422175 small_5422174_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422175
  · exact small_5422174_right_covered
#print axioms cover_5422174

def root_5422169 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422169_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5422169_right_fuel : Nat := 1
def small_5422169_right_count : Nat := 1
def small_5422169_right_encoded : String := "00000001"
theorem small_5422169_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5422169_right_root small_5422169_right_fuel small_5422169_right_count small_5422169_right_encoded = true := by
  decide +kernel
theorem small_5422169_right_covered : CoveredBy scale carrier boxes small_5422169_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5422169_right_root small_5422169_right_fuel small_5422169_right_count small_5422169_right_encoded small_5422169_right_checked

theorem cover_5422169 : CoveredBy scale carrier boxes root_5422169 := by
  apply coveredBy_split_literal root_5422169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422174 small_5422169_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422174
  · exact small_5422169_right_covered
#print axioms cover_5422169

def root_5403127 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403127 : CoveredBy scale carrier boxes root_5403127 := by
  apply coveredBy_split_literal root_5403127 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.root_5403128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5422169 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0383.cover_5403128
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5422169
#print axioms cover_5403127

def root_5403122 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403122_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5403122_right_fuel : Nat := 1
def small_5403122_right_count : Nat := 1
def small_5403122_right_encoded : String := "00000000"
theorem small_5403122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5403122_right_root small_5403122_right_fuel small_5403122_right_count small_5403122_right_encoded = true := by
  decide +kernel
theorem small_5403122_right_covered : CoveredBy scale carrier boxes small_5403122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5403122_right_root small_5403122_right_fuel small_5403122_right_count small_5403122_right_encoded small_5403122_right_checked

theorem cover_5403122 : CoveredBy scale carrier boxes root_5403122 := by
  apply coveredBy_split_literal root_5403122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5403127 small_5403122_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5403127
  · exact small_5403122_right_covered
#print axioms cover_5403122

def root_5435686 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5435686 : CoveredBy scale carrier boxes root_5435686 := by
  apply coveredBy_split_literal root_5435686 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2035.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2036.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2035.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2036.covered
#print axioms cover_5435686

def root_5435681 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5435681_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5435681_right_fuel : Nat := 1
def small_5435681_right_count : Nat := 1
def small_5435681_right_encoded : String := "00000001"
theorem small_5435681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5435681_right_root small_5435681_right_fuel small_5435681_right_count small_5435681_right_encoded = true := by
  decide +kernel
theorem small_5435681_right_covered : CoveredBy scale carrier boxes small_5435681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5435681_right_root small_5435681_right_fuel small_5435681_right_count small_5435681_right_encoded small_5435681_right_checked

theorem cover_5435681 : CoveredBy scale carrier boxes root_5435681 := by
  apply coveredBy_split_literal root_5435681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5435686 small_5435681_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5435686
  · exact small_5435681_right_covered
#print axioms cover_5435681

def root_5432821 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5432821 : CoveredBy scale carrier boxes root_5432821 := by
  apply coveredBy_split_literal root_5432821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2034.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5435681 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2034.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5435681
#print axioms cover_5432821

def root_5432815 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5432815_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5432815_left_fuel : Nat := 1
def small_5432815_left_count : Nat := 1
def small_5432815_left_encoded : String := "00000000"
theorem small_5432815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5432815_left_root small_5432815_left_fuel small_5432815_left_count small_5432815_left_encoded = true := by
  decide +kernel
theorem small_5432815_left_covered : CoveredBy scale carrier boxes small_5432815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5432815_left_root small_5432815_left_fuel small_5432815_left_count small_5432815_left_encoded small_5432815_left_checked

theorem cover_5432815 : CoveredBy scale carrier boxes root_5432815 := by
  apply coveredBy_split_literal root_5432815 small_5432815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5432821 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5432815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5432821
#print axioms cover_5432815

def root_5403121 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403121 : CoveredBy scale carrier boxes root_5403121 := by
  apply coveredBy_split_literal root_5403121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5403122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5432815 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5403122
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5432815
#print axioms cover_5403121

def root_5443651 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5443651 : CoveredBy scale carrier boxes root_5443651 := by
  apply coveredBy_split_literal root_5443651 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2039.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2040.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2039.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2040.covered
#print axioms cover_5443651

def root_5443645 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443645_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443645_left_fuel : Nat := 1
def small_5443645_left_count : Nat := 1
def small_5443645_left_encoded : String := "00000001"
theorem small_5443645_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5443645_left_root small_5443645_left_fuel small_5443645_left_count small_5443645_left_encoded = true := by
  decide +kernel
theorem small_5443645_left_covered : CoveredBy scale carrier boxes small_5443645_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5443645_left_root small_5443645_left_fuel small_5443645_left_count small_5443645_left_encoded small_5443645_left_checked

theorem cover_5443645 : CoveredBy scale carrier boxes root_5443645 := by
  apply coveredBy_split_literal root_5443645 small_5443645_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443651 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5443645_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443651
#print axioms cover_5443645

def root_5443644 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443644_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443644_right_fuel : Nat := 9
def small_5443644_right_count : Nat := 21
def small_5443644_right_encoded : String := "0F34D0F804548A05138670FA04548A09138671080000000407800100128A40F7078000FC0000000A0000000700000000128A7CF700000000078000FC000000080000000800000005000000020000000500000001"
theorem small_5443644_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5443644_right_root small_5443644_right_fuel small_5443644_right_count small_5443644_right_encoded = true := by
  decide +kernel
theorem small_5443644_right_covered : CoveredBy scale carrier boxes small_5443644_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5443644_right_root small_5443644_right_fuel small_5443644_right_count small_5443644_right_encoded small_5443644_right_checked

theorem cover_5443644 : CoveredBy scale carrier boxes root_5443644 := by
  apply coveredBy_split_literal root_5443644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443645 small_5443644_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443645
  · exact small_5443644_right_covered
#print axioms cover_5443644

def root_5443638 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443638_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443638_left_fuel : Nat := 1
def small_5443638_left_count : Nat := 1
def small_5443638_left_encoded : String := "00000003"
theorem small_5443638_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5443638_left_root small_5443638_left_fuel small_5443638_left_count small_5443638_left_encoded = true := by
  decide +kernel
theorem small_5443638_left_covered : CoveredBy scale carrier boxes small_5443638_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5443638_left_root small_5443638_left_fuel small_5443638_left_count small_5443638_left_encoded small_5443638_left_checked

theorem cover_5443638 : CoveredBy scale carrier boxes root_5443638 := by
  apply coveredBy_split_literal root_5443638 small_5443638_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443644 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5443638_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443644
#print axioms cover_5443638

def root_5443637 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443637_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443637_right_fuel : Nat := 20
def small_5443637_right_count : Nat := 221
def small_5443637_right_encoded : String := "135D44FD0CFD9BF90F350CF80000000104548A05138670FA04548A0913867108000000040C9A86F80F878CF9000000010780010000000007128A7CF700000000028000FC00000008000000070F8750F907800100128A40F7028000FC13D7ECFD00000003022A458513E1C4FA022A45890000000513E201080B4D43F800000007108010F90000000800000001000000040000000213E200FA00000002022A458900000007000000090000000700000000128A7CF700000000028000FC13D7ECFD00000003022A45850000000813E200FA00000002022A458913E1C508000000040000000613E201080B4D43F800000008108010F900000008000000010000000413D7B0FD022A45850000000813E200FA00000002022A4589000000060000000800000003000000011386AD080C9A86F80F878CF90000000107800100128A40F70000000900000000128A7CF700000000028000FC13D7ECFD00000003022A45850000000813E200FA00000002067ECE890000000800000005000000090F8750F907800100128A40F70000000900000000128A7CF700000000028000FC13D7ECFD00000003022A458513E1C4FA067ECE8900000008000000080000000200000009000000090000000100000004000000021386ACFA0000000204548A0913867108000000040C9A86F80F878CF90000000107800100128A40F70000000700000000128A7CF700000000028000FC13D7ECFD00000003067ECE8512EA58FA00000006000000020000000613D7B0FD00000006000000030F8750F907800100128A40F7028000FC13D7ECFD00000003067ECE8512EA58FA0000000900000002000000090000000700000000128A7CF700000000028000FC13D7ECFD00000003067ECE8512EA58FA022A458913E1C508000000040000000613E201080B4D43F800000009108010F90000000900000001000000040000000212EA94FA00000002022A458913E1C50800000004000000060000000913D7B0FD067ECE8512EA58FA00000009000000020000000900000003000000011386AD080C9A86F8000000090F8750F90000000900000001000000040F34D0F804548A05138670FA04548A09000000071386AD080780010000000007128A7CF700000000028000FC000000050000000700000004000000021386ACFA0000000204548A091386710800000004078001000000000700000006000000050000000100000003"
theorem small_5443637_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5443637_right_root small_5443637_right_fuel small_5443637_right_count small_5443637_right_encoded = true := by
  decide +kernel
theorem small_5443637_right_covered : CoveredBy scale carrier boxes small_5443637_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5443637_right_root small_5443637_right_fuel small_5443637_right_count small_5443637_right_encoded small_5443637_right_checked

theorem cover_5443637 : CoveredBy scale carrier boxes root_5443637 := by
  apply coveredBy_split_literal root_5443637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443638 small_5443637_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443638
  · exact small_5443637_right_covered
#print axioms cover_5443637

def root_5443631 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443631_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5443631_left_fuel : Nat := 1
def small_5443631_left_count : Nat := 1
def small_5443631_left_encoded : String := "00000000"
theorem small_5443631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5443631_left_root small_5443631_left_fuel small_5443631_left_count small_5443631_left_encoded = true := by
  decide +kernel
theorem small_5443631_left_covered : CoveredBy scale carrier boxes small_5443631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5443631_left_root small_5443631_left_fuel small_5443631_left_count small_5443631_left_encoded small_5443631_left_checked

theorem cover_5443631 : CoveredBy scale carrier boxes root_5443631 := by
  apply coveredBy_split_literal root_5443631 small_5443631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443637 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5443631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443637
#print axioms cover_5443631

def root_5441785 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5441785 : CoveredBy scale carrier boxes root_5441785 := by
  apply coveredBy_split_literal root_5441785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2038.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5443631 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2038.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5443631
#print axioms cover_5441785

def root_5441779 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441779_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441779_left_fuel : Nat := 1
def small_5441779_left_count : Nat := 1
def small_5441779_left_encoded : String := "00000004"
theorem small_5441779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441779_left_root small_5441779_left_fuel small_5441779_left_count small_5441779_left_encoded = true := by
  decide +kernel
theorem small_5441779_left_covered : CoveredBy scale carrier boxes small_5441779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441779_left_root small_5441779_left_fuel small_5441779_left_count small_5441779_left_encoded small_5441779_left_checked

theorem cover_5441779 : CoveredBy scale carrier boxes root_5441779 := by
  apply coveredBy_split_literal root_5441779 small_5441779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5441785 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5441779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5441785
#print axioms cover_5441779

def root_5441778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441778_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441778_right_fuel : Nat := 16
def small_5441778_right_count : Nat := 61
def small_5441778_right_encoded : String := "12073D0805000100135D44F7050000FC135D80FD000000030CFD9BF90F350CF80000000104548A05138670FA0CFD9C090F34D108000000040C9A86F80000000900000005000000050000000200000005000000050000000900000000135D80F700000000050000FC135D80FD000000030CFD9BF90F350CF80000000104548A05138670FA0CFD9C090F34D108000000040C9A86F8000000050F8750F90780010000000005128A7CF700000000000000050000000100000005000000020000000500000005135D44FD0CFD9BF90F350CF80000000104548A05138670FA000000090000000200000005000000050000000300000004"
theorem small_5441778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441778_right_root small_5441778_right_fuel small_5441778_right_count small_5441778_right_encoded = true := by
  decide +kernel
theorem small_5441778_right_covered : CoveredBy scale carrier boxes small_5441778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441778_right_root small_5441778_right_fuel small_5441778_right_count small_5441778_right_encoded small_5441778_right_checked

theorem cover_5441778 : CoveredBy scale carrier boxes root_5441778 := by
  apply coveredBy_split_literal root_5441778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5441779 small_5441778_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5441779
  · exact small_5441778_right_covered
#print axioms cover_5441778

def root_5441773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441773_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441773_right_fuel : Nat := 1
def small_5441773_right_count : Nat := 1
def small_5441773_right_encoded : String := "00000002"
theorem small_5441773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441773_right_root small_5441773_right_fuel small_5441773_right_count small_5441773_right_encoded = true := by
  decide +kernel
theorem small_5441773_right_covered : CoveredBy scale carrier boxes small_5441773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441773_right_root small_5441773_right_fuel small_5441773_right_count small_5441773_right_encoded small_5441773_right_checked

theorem cover_5441773 : CoveredBy scale carrier boxes root_5441773 := by
  apply coveredBy_split_literal root_5441773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.root_5441778 small_5441773_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384.cover_5441778
  · exact small_5441773_right_covered
#print axioms cover_5441773

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0384
