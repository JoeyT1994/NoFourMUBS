import TaoBundleAssembly0134
import TaoBundleChunkBatch0508
import TaoBundleChunkBatch0509
import TaoBundleChunkBatch0510
import TaoBundleChunkBatch0511
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135
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
  apply coveredBy_split_literal root_5422999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5423000 small_5422999_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5423000
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
  apply coveredBy_split_literal root_5422994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422999 small_5422994_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422999
  · exact small_5422994_right_covered
#print axioms cover_5422994

def root_5422993 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5422993 : CoveredBy scale carrier boxes root_5422993 := by
  apply coveredBy_split_literal root_5422993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2032.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422994
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
  apply coveredBy_split_literal root_5422987 small_5422987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422993 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5422987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422993
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
  apply coveredBy_split_literal root_5422187 small_5422187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422987 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5422187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422987
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
  apply coveredBy_split_literal root_5422181 small_5422181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422187 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5422181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422187
#print axioms cover_5422181

def root_5422180 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5422180 : CoveredBy scale carrier boxes root_5422180 := by
  apply coveredBy_split_literal root_5422180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2033.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422181
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
  apply coveredBy_split_literal root_5422175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422180 small_5422175_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422180
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
  apply coveredBy_split_literal root_5422174 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422175 small_5422174_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422175
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
  apply coveredBy_split_literal root_5422169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422174 small_5422169_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422174
  · exact small_5422169_right_covered
#print axioms cover_5422169

def root_5403127 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403127 : CoveredBy scale carrier boxes root_5403127 := by
  apply coveredBy_split_literal root_5403127 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.root_5403128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5422169 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0134.cover_5403128
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5422169
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
  apply coveredBy_split_literal root_5403122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5403127 small_5403122_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5403127
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
  apply coveredBy_split_literal root_5435681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5435686 small_5435681_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5435686
  · exact small_5435681_right_covered
#print axioms cover_5435681

def root_5432821 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5432821 : CoveredBy scale carrier boxes root_5432821 := by
  apply coveredBy_split_literal root_5432821 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2034.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5435681 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2034.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5435681
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
  apply coveredBy_split_literal root_5432815 small_5432815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5432821 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5432815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5432821
#print axioms cover_5432815

def root_5403121 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5403121 : CoveredBy scale carrier boxes root_5403121 := by
  apply coveredBy_split_literal root_5403121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5403122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5432815 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5403122
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5432815
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
  apply coveredBy_split_literal root_5443645 small_5443645_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443651 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5443645_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443651
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
  apply coveredBy_split_literal root_5443644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443645 small_5443644_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443645
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
  apply coveredBy_split_literal root_5443638 small_5443638_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443644 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5443638_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443644
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
  apply coveredBy_split_literal root_5443637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443638 small_5443637_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443638
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
  apply coveredBy_split_literal root_5443631 small_5443631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443637 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5443631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443637
#print axioms cover_5443631

def root_5441785 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5441785 : CoveredBy scale carrier boxes root_5441785 := by
  apply coveredBy_split_literal root_5441785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2038.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5443631 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2038.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5443631
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
  apply coveredBy_split_literal root_5441779 small_5441779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441785 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5441779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441785
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
  apply coveredBy_split_literal root_5441778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441779 small_5441778_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441779
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
  apply coveredBy_split_literal root_5441773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441778 small_5441773_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441778
  · exact small_5441773_right_covered
#print axioms cover_5441773

def root_5441772 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441772_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441772_right_fuel : Nat := 26
def small_5441772_right_count : Nat := 175
def small_5441772_right_encoded : String := "12073CFA0000000208A91309120701080000000405000100135D44F7050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF900000001000000050F8750F9028001000000000913D7ECF700000000078000FC128A7CFD0000000300000005000000090000000100000005000000020000000500000005135D44FD0CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000900000002000000090F34D0F800000005000000010000000300000000135D80F700000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF900000001000000050F8750F907800100128A40F7078000FC128A7CFD0000000300000005128A40FD000000090000000300000000128A7CF700000000078000FC128A7CFD0000000300000005128A40FD0AD3578510D100FA022A458913E1C508000000040B4D43F810804CF90000000100000005108010F90000000A00000001000000050000000200000005000000030000000100000005000000020F350CFA0000000204548A0913867108000000040C9A86F8000000050F8750F90C9A86FA000000050F875105000000020000000500000001000000050F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A0913867108000000040C9A86F80F878CF9000000010780010000000009128A7CF700000000028000FC13D7ECFD000000030AD3578510D100FA000000050000000200000005000000090F8750F9000000090000000100000009000000020F350CFA0000000204548A0913867108000000040C9A86F8000000090F8750F90000000900000001000000090F34D0F80CFD9C050F34D0FA000000050000000200000005000000010000000312073D080000000500000004"
theorem small_5441772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441772_right_root small_5441772_right_fuel small_5441772_right_count small_5441772_right_encoded = true := by
  decide +kernel
theorem small_5441772_right_covered : CoveredBy scale carrier boxes small_5441772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441772_right_root small_5441772_right_fuel small_5441772_right_count small_5441772_right_encoded small_5441772_right_checked

theorem cover_5441772 : CoveredBy scale carrier boxes root_5441772 := by
  apply coveredBy_split_literal root_5441772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441773 small_5441772_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441773
  · exact small_5441772_right_covered
#print axioms cover_5441772

def root_5441766 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441766_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441766_left_fuel : Nat := 1
def small_5441766_left_count : Nat := 1
def small_5441766_left_encoded : String := "00000001"
theorem small_5441766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441766_left_root small_5441766_left_fuel small_5441766_left_count small_5441766_left_encoded = true := by
  decide +kernel
theorem small_5441766_left_covered : CoveredBy scale carrier boxes small_5441766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441766_left_root small_5441766_left_fuel small_5441766_left_count small_5441766_left_encoded small_5441766_left_checked

theorem cover_5441766 : CoveredBy scale carrier boxes root_5441766 := by
  apply coveredBy_split_literal root_5441766 small_5441766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441772 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5441766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441772
#print axioms cover_5441766

def root_5441765 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441765_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441765_right_fuel : Nat := 13
def small_5441765_right_count : Nat := 31
def small_5441765_right_encoded : String := "120700F808A91305120700FA08A91309120701080000000405000100135D44F7050000FC135D80FD00000003045489F91386ACF80000000104548A050000000700000005000000050000000700000000135D80F700000000050000FC00000005135D44FD000000070000000300000005000000020000000500000001"
theorem small_5441765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441765_right_root small_5441765_right_fuel small_5441765_right_count small_5441765_right_encoded = true := by
  decide +kernel
theorem small_5441765_right_covered : CoveredBy scale carrier boxes small_5441765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441765_right_root small_5441765_right_fuel small_5441765_right_count small_5441765_right_encoded small_5441765_right_checked

theorem cover_5441765 : CoveredBy scale carrier boxes root_5441765 := by
  apply coveredBy_split_literal root_5441765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441766 small_5441765_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441766
  · exact small_5441765_right_covered
#print axioms cover_5441765

def root_5441760 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441760_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441760_right_fuel : Nat := 1
def small_5441760_right_count : Nat := 1
def small_5441760_right_encoded : String := "00000004"
theorem small_5441760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441760_right_root small_5441760_right_fuel small_5441760_right_count small_5441760_right_encoded = true := by
  decide +kernel
theorem small_5441760_right_covered : CoveredBy scale carrier boxes small_5441760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441760_right_root small_5441760_right_fuel small_5441760_right_count small_5441760_right_encoded small_5441760_right_checked

theorem cover_5441760 : CoveredBy scale carrier boxes root_5441760 := by
  apply coveredBy_split_literal root_5441760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441765 small_5441760_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441765
  · exact small_5441760_right_covered
#print axioms cover_5441760

def root_5441744 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441744_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441744_left_fuel : Nat := 4
def small_5441744_left_count : Nat := 7
def small_5441744_left_encoded : String := "1151E9090000000408A912F912073CF8000000010000000500000005"
theorem small_5441744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441744_left_root small_5441744_left_fuel small_5441744_left_count small_5441744_left_encoded = true := by
  decide +kernel
theorem small_5441744_left_covered : CoveredBy scale carrier boxes small_5441744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441744_left_root small_5441744_left_fuel small_5441744_left_count small_5441744_left_encoded small_5441744_left_checked

theorem cover_5441744 : CoveredBy scale carrier boxes root_5441744 := by
  apply coveredBy_split_literal root_5441744 small_5441744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441760 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5441744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441760
#print axioms cover_5441744

def root_5441739 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441739_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5441739_right_fuel : Nat := 1
def small_5441739_right_count : Nat := 1
def small_5441739_right_encoded : String := "00000003"
theorem small_5441739_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5441739_right_root small_5441739_right_fuel small_5441739_right_count small_5441739_right_encoded = true := by
  decide +kernel
theorem small_5441739_right_covered : CoveredBy scale carrier boxes small_5441739_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5441739_right_root small_5441739_right_fuel small_5441739_right_count small_5441739_right_encoded small_5441739_right_checked

theorem cover_5441739 : CoveredBy scale carrier boxes root_5441739 := by
  apply coveredBy_split_literal root_5441739 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441744 small_5441739_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441744
  · exact small_5441739_right_covered
#print axioms cover_5441739

def root_5439585 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439585 : CoveredBy scale carrier boxes root_5439585 := by
  apply coveredBy_split_literal root_5439585 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2037.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5441739 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2037.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5441739
#print axioms cover_5439585

def root_5439580 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439580_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439580_right_fuel : Nat := 1
def small_5439580_right_count : Nat := 1
def small_5439580_right_encoded : String := "00000002"
theorem small_5439580_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439580_right_root small_5439580_right_fuel small_5439580_right_count small_5439580_right_encoded = true := by
  decide +kernel
theorem small_5439580_right_covered : CoveredBy scale carrier boxes small_5439580_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439580_right_root small_5439580_right_fuel small_5439580_right_count small_5439580_right_encoded small_5439580_right_checked

theorem cover_5439580 : CoveredBy scale carrier boxes root_5439580 := by
  apply coveredBy_split_literal root_5439580 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439585 small_5439580_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439585
  · exact small_5439580_right_covered
#print axioms cover_5439580

def root_5439579 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439579_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439579_right_fuel : Nat := 24
def small_5439579_right_count : Nat := 95
def small_5439579_right_encoded : String := "1151E905000000020A0000FC115224FD00000003000000051151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A91309120701080000000405000100135D44F7050000FA135D8105050000FC000000050000000900000002135D4505000000020000000900000000135D80F700000000050000FA135D8105050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000050F8750F90780010000000005128A7CF70000000000000005000000010000000500000005135D44FD0CFD9BF9000000090F34D0F800000005000000010000000300000002135D450500000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000050F8750F900000009000000010000000500000005135D44FD000000090000000312073D080500010000000005135D80F7000000000000000500000004120700F800000005000000010000000400000003"
theorem small_5439579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439579_right_root small_5439579_right_fuel small_5439579_right_count small_5439579_right_encoded = true := by
  decide +kernel
theorem small_5439579_right_covered : CoveredBy scale carrier boxes small_5439579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439579_right_root small_5439579_right_fuel small_5439579_right_count small_5439579_right_encoded small_5439579_right_checked

theorem cover_5439579 : CoveredBy scale carrier boxes root_5439579 := by
  apply coveredBy_split_literal root_5439579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439580 small_5439579_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439580
  · exact small_5439579_right_covered
#print axioms cover_5439579

def root_5439573 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439573_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439573_left_fuel : Nat := 1
def small_5439573_left_count : Nat := 1
def small_5439573_left_encoded : String := "00000001"
theorem small_5439573_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439573_left_root small_5439573_left_fuel small_5439573_left_count small_5439573_left_encoded = true := by
  decide +kernel
theorem small_5439573_left_covered : CoveredBy scale carrier boxes small_5439573_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439573_left_root small_5439573_left_fuel small_5439573_left_count small_5439573_left_encoded small_5439573_left_checked

theorem cover_5439573 : CoveredBy scale carrier boxes root_5439573 := by
  apply coveredBy_split_literal root_5439573 small_5439573_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439579 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5439573_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439579
#print axioms cover_5439573

def root_5453373 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453373_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453373_right_fuel : Nat := 25
def small_5453373_right_count : Nat := 339
def small_5453373_right_encoded : String := "128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA022A458913E1C5080000000408C0010011FBE8F708C000F800000008000000050000000011FC24F7000000000000000913E2010808C0010011FBE8F708C000F80000000811FBE8F908C000FC0000000700000008000000010000000011FC24F70000000000000007000000040000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD00000003033F67C5000000080000000711FBE8FD033F67C50000000813BC30FA000000020115234913F859080000000408200100000000080000000813F8950800000008000000040000000311FBE8F908C000FC0000000711FBE8FD033F67C50000000513BC30FA0000000201152349000000050000000700000003000000010000000011FC24F70000000008C000F811FC24F90000000108C000FC000000070000000811FBE8F9000000070000000113E2010808C0010011FBE8F708C000F811FC24F90000000108C000FC0000000711FBE8FD033F67C50000000813BC30FA00000002033F67C900000008000000070000000311FBE8F90000000700000001000000000000000700000004128A40FD022A458513E1C4FA022A45890000000513E2010808C0010011FBE8F708C000F80000000811FBE8F900000005000000010000000011FC24F70000000000000008000000040000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C50000000513BC30FA0000000201152349000000050000000812FF70FD000000050000000311FBE8F900000005000000010000000011FC24F70000000008C000F811FC24F9000000010000000811FBE8F9064000FC12FFACFD00000003033F67C5000000050000000A000000050000000113E2010808C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C50000000813BC30FA00000002033F67C9000000080000000812FF70FD033F67C50000000813BC30FA00000002033F67C900000008000000080000000311FBE8F9064000FC12FFACFD00000003033F67C513BBF4FA033F67C90000000513BC3108082001000000000800000007000000040000000213BC30FA00000002033F67C913BBF508000000040820010012465CF7082000F8124698F90000000106E000FC00000007000000080000000A00000000000000070000000712FF70FD033F67C513BBF4FA033F67C900000005000000080000000213BC30FA00000002033F67C90000000A0000000900000003000000010000000011FC24F70000000008C000F811FC24F900000001064000FC000000080000000811FBE8F9064000FC12FFACFD000000030000000712FF70FD033F67C5000000080000000A00000003000000010000000400000003128A40F9078000FC128A7CFD00000003022A458513E1C4FA022A458900000005000000070000000213E200FA00000002022A458913E1C5080000000408C0010011FBE8F7064000F812FFACF90000000108C000FC0000000711FBE8FD000000050000000312FF70F90000000500000001000000000000000700000007128A40FD022A45850000000513E200FA00000002022A45890000000513E2010808C0010011FBE8F7064000F812FFACF900000001064000FC12FFACFD00000003033F67C5000000050000000712FF70FD0000000A0000000312FF70F90000000A000000010000000011FC24F700000000064000F812FFACF900000001064000FC000000070000000A0000000A000000040000000300000001"
theorem small_5453373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453373_right_root small_5453373_right_fuel small_5453373_right_count small_5453373_right_encoded = true := by
  decide +kernel
theorem small_5453373_right_covered : CoveredBy scale carrier boxes small_5453373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453373_right_root small_5453373_right_fuel small_5453373_right_count small_5453373_right_encoded small_5453373_right_checked

theorem cover_5453373 : CoveredBy scale carrier boxes root_5453373 := by
  apply coveredBy_split_literal root_5453373 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2043.root small_5453373_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2043.covered
  · exact small_5453373_right_covered
#print axioms cover_5453373

def root_5453367 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453367_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453367_left_fuel : Nat := 1
def small_5453367_left_count : Nat := 1
def small_5453367_left_encoded : String := "00000004"
theorem small_5453367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453367_left_root small_5453367_left_fuel small_5453367_left_count small_5453367_left_encoded = true := by
  decide +kernel
theorem small_5453367_left_covered : CoveredBy scale carrier boxes small_5453367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453367_left_root small_5453367_left_fuel small_5453367_left_count small_5453367_left_encoded small_5453367_left_checked

theorem cover_5453367 : CoveredBy scale carrier boxes root_5453367 := by
  apply coveredBy_split_literal root_5453367 small_5453367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453373 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5453367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453373
#print axioms cover_5453367

def root_5453366 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453366_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453366_right_fuel : Nat := 21
def small_5453366_right_count : Nat := 345
def small_5453366_right_encoded : String := "1386AD0807800100128A40F7078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA067ECE8912EA5908000000040640010012FF70F708C000F811FC24F90000000108C000FC0000000600000006000000060000000012FFACF70000000008C000F811FC24F90000000108C000FC0000000A0000000811FBE8F90000000600000001000000060000000213E200FA00000002067ECE8912EA5908000000040640010012FF70F708C000F811FC24F90000000108C000FC11FC24FD000000030000000600000009000000060000000012FFACF70000000008C000F811FC24F90000000108C000FC11FC24FD000000030000000711FBE8FD033F67C513BBF4FA0569AC49000000080000000600000002000000090000000311FBE8F908C000FC0000000611FBE8FD033F67C50000000600000006000000030000000112EA9508064001000000000512FFACF7000000000000000500000004128A40FD022A458513E1C4FA067ECE8912EA5908000000040640010012FF70F708C000F80000000911FBE8F900000009000000010000000012FFACF70000000008C000F811FC24F900000001064000FC000000080000000811FBE8F9064000FC12FFACFD00000003011523450000000600000006000000090000000100000009000000020000000900000003128A40F9078000FC128A7CFD00000003022A45850000000600000006128A40FD022A458513E1C4FA067ECE8912EA590800000004064001000000000612FFACF700000000064000F812FFACF9000000010000000600000006000000060000000213E200FA00000002067ECE8912EA590800000004064001000000000612FFACF700000000064000F8000000090000000600000006000000030000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F900000007000000010000000000000007000000070000000213E200FA00000002067ECE8912EA59080000000408C00100000000070000000700000007128A40FD022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F9064000FC12FFACFD000000030000000800000008000000010000000011FC24F7000000000000000812EA950808C0010011FBE8F708C000F80000000811FBE8F900000009000000010000000011FC24F70000000000000008000000040000000213E200FA00000002067ECE8912EA59080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD00000003033F67C500000008000000090000000911FBE8F9064000FC12FFACFD00000003033F67C513BBF4FA00000007000000020000000700000009000000010000000011FC24F70000000008C000F811FC24F9000000010000000811FBE8F9064000FC0000000712FF70FD033F67C50000000800000007000000030000000112EA9508000000090000000400000003128A40F9078000FC128A7CFD00000003022A45850000000700000007128A40FD022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F7064000F812FFACF900000001064000FC0000000712FF70FD0115234500000005000000090000000312FF70F900000006000000010000000011FC24F7000000000000000712EA950808C001000000000600000007000000040000000213E200FA00000002067ECE8912EA59080000000408C0010011FBE8F7064000F812FFACF900000001064000FC000000070000000912FF70F9064000FC000000060000000600000001000000000000000712EA950808C00100000000090000000700000004000000030000000100000004"
theorem small_5453366_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453366_right_root small_5453366_right_fuel small_5453366_right_count small_5453366_right_encoded = true := by
  decide +kernel
theorem small_5453366_right_covered : CoveredBy scale carrier boxes small_5453366_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453366_right_root small_5453366_right_fuel small_5453366_right_count small_5453366_right_encoded small_5453366_right_checked

theorem cover_5453366 : CoveredBy scale carrier boxes root_5453366 := by
  apply coveredBy_split_literal root_5453366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453367 small_5453366_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453367
  · exact small_5453366_right_covered
#print axioms cover_5453366

def root_5453361 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453361_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453361_right_fuel : Nat := 1
def small_5453361_right_count : Nat := 1
def small_5453361_right_encoded : String := "00000002"
theorem small_5453361_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453361_right_root small_5453361_right_fuel small_5453361_right_count small_5453361_right_encoded = true := by
  decide +kernel
theorem small_5453361_right_covered : CoveredBy scale carrier boxes small_5453361_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453361_right_root small_5453361_right_fuel small_5453361_right_count small_5453361_right_encoded small_5453361_right_checked

theorem cover_5453361 : CoveredBy scale carrier boxes root_5453361 := by
  apply coveredBy_split_literal root_5453361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453366 small_5453361_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453366
  · exact small_5453361_right_covered
#print axioms cover_5453361

def root_5457497 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457497_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457497_right_fuel : Nat := 25
def small_5457497_right_count : Nat := 351
def small_5457497_right_encoded : String := "128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD000000030569AC45000000070000000711FBE8FD0569AC451340D4FA0115234913F85908000000040820010012465CF7096000F811AABCF9000000010000000611AA80F90000000A0000000100000000124698F7000000000000000613F895080820010012465CF7096000F811AABCF9000000010000000811AA80F9000000070000000100000000000000070000000400000002134110FA000000020115234913F8590800000004082001000000000A0000000A13F895080820010012465CF7096000F811AABCF900000001082000FC000000070000000A0000000A0000000000000007000000040000000311FBE8F908C000FC0000000711FBE8FD0569AC451340D4FA011523490000000A00000007000000020000000A00000003000000010000000011FC24F70000000008C000F811FC24F90000000108C000FC0000000711FBE8FD0569AC450000000700000007000000030000000713E2010808C0010011FBE8F708C000F811FC24F90000000108C000FC0000000711FBE8FD0569AC451340D4FA033F67C913BBF50800000004000000070000000700000002000000070000000311FBE8F900000007000000010000000000000007000000040000000212EA94FA00000002022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F90000000108C000FC11FC24FD000000030000000711FBE8FD0793F0C5128220FA0000000A000000020000000A0000000311FBE8F908C000FC000000070000000A000000010000000011FC24F7000000000000000713E2010808C0010011FBE8F708C000F811FC24F9000000010000000511FBE8F90000000700000001000000000000000700000004128A40FD067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD000000030569AC451340D4FA011523490000000613F895080820010012465CF7096000F8000000080000000A00000000124698F7000000000000000800000004000000020000000A0000000A0000000A0000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030569AC4500000008000000060000000A0000000A13E2010808C0010011FBE8F708C000F811FC24F900000001064000FC12FFACFD000000030569AC451340D4FA033F67C913BBF508000000040820010012465CF70000000900000000124698F700000000000000080000000900000002000000090000000911FBE8F9064000FC12FFACFD000000030569AC451340D4FA033F67C90000000A00000007000000020000000900000009000000010000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030569AC45000000080000000712FF70FD0569AC4500000008000000090000000311FBE8F9064000FC000000070000000A00000001000000040000000212EA94FA00000002022A45890000000A13E2010808C0010011FBE8F7000000090000000011FC24F70000000008C000F811FC24F900000001064000FC12FFACFD000000030793F0C5128220FA000000070000000200000005000000090000000A0000000400000003128A40F9078000FC128A7CFD00000003067ECE8512EA58FA022A458913E1C5080000000408C0010011FBE8F7064000F812FFACF90000000108C000FC000000070000000A000000070000000000000007000000070000000212EA94FA00000002022A45890000000A00000007128A40FD067ECE8512EA58FA022A45890000000A13E2010808C001000000000A0000000A00000004000000020000000A0000000300000001"
theorem small_5457497_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457497_right_root small_5457497_right_fuel small_5457497_right_count small_5457497_right_encoded = true := by
  decide +kernel
theorem small_5457497_right_covered : CoveredBy scale carrier boxes small_5457497_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457497_right_root small_5457497_right_fuel small_5457497_right_count small_5457497_right_encoded small_5457497_right_checked

theorem cover_5457497 : CoveredBy scale carrier boxes root_5457497 := by
  apply coveredBy_split_literal root_5457497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2044.root small_5457497_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2044.covered
  · exact small_5457497_right_covered
#print axioms cover_5457497

def root_5457491 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457491_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457491_left_fuel : Nat := 1
def small_5457491_left_count : Nat := 1
def small_5457491_left_encoded : String := "00000004"
theorem small_5457491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457491_left_root small_5457491_left_fuel small_5457491_left_count small_5457491_left_encoded = true := by
  decide +kernel
theorem small_5457491_left_covered : CoveredBy scale carrier boxes small_5457491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457491_left_root small_5457491_left_fuel small_5457491_left_count small_5457491_left_encoded small_5457491_left_checked

theorem cover_5457491 : CoveredBy scale carrier boxes root_5457491 := by
  apply coveredBy_split_literal root_5457491 small_5457491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5457497 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5457491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5457497
#print axioms cover_5457491

def root_5457490 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457490_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457490_right_fuel : Nat := 17
def small_5457490_right_count : Nat := 107
def small_5457490_right_encoded : String := "1386AD0807800100128A40F7078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA5908000000040640010012FF70F7000000090000000012FFACF70000000008C000F80000000511FBE8F908C000FC00000005000000090000000100000005000000020000000500000009128A40F9078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA59080000000400000006000000060000000200000009000000090000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8512EA58FA067ECE8912EA59080000000400000007000000050000000200000005128A40FD067ECE8512EA58FA067ECE8912EA59080000000408C001000000000911FC24F70000000008C000F80000000911FBE8F9000000090000000100000009000000020000000900000003128A40F9078000FC128A7CFD00000003067ECE850000000700000007128A40FD067ECE8512EA58FA067ECE8912EA59080000000408C0010011FBE8F7000000090000000000000007000000090000000200000009000000030000000100000004"
theorem small_5457490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457490_right_root small_5457490_right_fuel small_5457490_right_count small_5457490_right_encoded = true := by
  decide +kernel
theorem small_5457490_right_covered : CoveredBy scale carrier boxes small_5457490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457490_right_root small_5457490_right_fuel small_5457490_right_count small_5457490_right_encoded small_5457490_right_checked

theorem cover_5457490 : CoveredBy scale carrier boxes root_5457490 := by
  apply coveredBy_split_literal root_5457490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5457491 small_5457490_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5457491
  · exact small_5457490_right_covered
#print axioms cover_5457490

def root_5457484 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457484_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5457484_left_fuel : Nat := 1
def small_5457484_left_count : Nat := 1
def small_5457484_left_encoded : String := "00000002"
theorem small_5457484_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5457484_left_root small_5457484_left_fuel small_5457484_left_count small_5457484_left_encoded = true := by
  decide +kernel
theorem small_5457484_left_covered : CoveredBy scale carrier boxes small_5457484_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5457484_left_root small_5457484_left_fuel small_5457484_left_count small_5457484_left_encoded small_5457484_left_checked

theorem cover_5457484 : CoveredBy scale carrier boxes root_5457484 := by
  apply coveredBy_split_literal root_5457484 small_5457484_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5457490 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5457484_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5457490
#print axioms cover_5457484

def root_5453360 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5453360 : CoveredBy scale carrier boxes root_5453360 := by
  apply coveredBy_split_literal root_5453360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5457484 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453361
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5457484
#print axioms cover_5453360

def root_5453354 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453354_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453354_left_fuel : Nat := 1
def small_5453354_left_count : Nat := 1
def small_5453354_left_encoded : String := "00000003"
theorem small_5453354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453354_left_root small_5453354_left_fuel small_5453354_left_count small_5453354_left_encoded = true := by
  decide +kernel
theorem small_5453354_left_covered : CoveredBy scale carrier boxes small_5453354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453354_left_root small_5453354_left_fuel small_5453354_left_count small_5453354_left_encoded small_5453354_left_checked

theorem cover_5453354 : CoveredBy scale carrier boxes root_5453354 := by
  apply coveredBy_split_literal root_5453354 small_5453354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453360 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453360
#print axioms cover_5453354

def root_5453353 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453353_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453353_right_fuel : Nat := 21
def small_5453353_right_count : Nat := 185
def small_5453353_right_encoded : String := "135D44FD04548A05138670FA04548A09138671080000000407800100128A40F7078000F8128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E200FA00000002022A4589000000050000000913D7B0FD022A4585000000050000000900000003128A40F9000000050000000100000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E200FA00000002022A45890000000513E2010808C0010011FBE8F708C000F80000000911FBE8F900000009000000010000000011FC24F70000000008C000F80000000811FBE8F90000000A000000010000000413D7B0FD022A4585000000050000000A00000003128A40F9028000FC13D7ECFD00000003022A4585000000050000000A00000005000000011386AD0807800100128A40F7078000F800000009128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F708C000F80000000811FBE8F900000008000000010000000011FC24F7000000000000000800000009000000020000000900000009128A40F9028000FC13D7ECFD00000003022A458513E1C4FA067ECE8912EA59080000000408C0010011FBE8F7000000050000000011FC24F700000000064000F812FFACF90000000103C000FC000000080000000500000005000000090000000200000009000000090000000100000004000000021386ACFA0000000204548A09138671080000000407800100128A40F7078000F8128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA58FA000000090000000200000009000000090000000A00000000128A7CF700000000078000F8128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA58FA022A45890000000A13E2010808C00100000000090000000A00000004000000020000000A000000090000000A0000000900000003"
theorem small_5453353_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453353_right_root small_5453353_right_fuel small_5453353_right_count small_5453353_right_encoded = true := by
  decide +kernel
theorem small_5453353_right_covered : CoveredBy scale carrier boxes small_5453353_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453353_right_root small_5453353_right_fuel small_5453353_right_count small_5453353_right_encoded small_5453353_right_checked

theorem cover_5453353 : CoveredBy scale carrier boxes root_5453353 := by
  apply coveredBy_split_literal root_5453353 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453354 small_5453353_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453354
  · exact small_5453353_right_covered
#print axioms cover_5453353

def root_5453347 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453347_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453347_left_fuel : Nat := 1
def small_5453347_left_count : Nat := 1
def small_5453347_left_encoded : String := "00000001"
theorem small_5453347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453347_left_root small_5453347_left_fuel small_5453347_left_count small_5453347_left_encoded = true := by
  decide +kernel
theorem small_5453347_left_covered : CoveredBy scale carrier boxes small_5453347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453347_left_root small_5453347_left_fuel small_5453347_left_count small_5453347_left_encoded small_5453347_left_checked

theorem cover_5453347 : CoveredBy scale carrier boxes root_5453347 := by
  apply coveredBy_split_literal root_5453347 small_5453347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453353 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453353
#print axioms cover_5453347

def root_5453346 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453346_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453346_right_fuel : Nat := 18
def small_5453346_right_count : Nat := 201
def small_5453346_right_encoded : String := "135D44F9050000FC135D80FD0000000304548A05138670FA04548A09138671080000000407800100128A40F7028000F813D7ECF900000001078000FC128A7CFD00000003022A45850000000513E200FA00000002022A45890000000500000006128A40FD000000050000000313D7B0F9078000FC00000006000000050000000100000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD00000003022A45850000000500000007128A40FD022A4585000000050000000A0000000313D7B0F9078000FC000000070000000A000000011386AD0807800100128A40F70000000600000000128A7CF700000000028000F813D7ECF900000001078000FC00000007128A40FD022A458513E1C4FA067ECE8912EA59080000000400000006000000060000000213E200FA00000002067ECE8912EA59080000000400000007000000060000000313D7B0F9000000060000000100000004000000021386ACFA0000000204548A09138671080000000407800100128A40F7028000F813D7ECF900000001078000FC128A7CFD00000003067ECE8512EA58FA022A45890000000A00000006000000020000000A0000000A0000000A00000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD00000003067ECE8512EA58FA0000000700000002000000070000000A0000000A1386AD0807800100128A40F7028000F813D7ECF900000001078000FC00000006000000060000000600000000128A7CF700000000028000F813D7ECF900000001078000FC00000007128A40FD067ECE8512EA58FA067ECE890000000A0000000600000002000000090000000313D7B0F9078000FC000000060000000A0000000100000004135D44FD04548A05138670FA04548A09000000051386AD0807800100128A40F7028000F8000000090000000600000000128A7CF700000000028000F813D7ECF900000001028000FC13D7ECFD00000003022A458513E1C4FA067ECE890000000500000006000000020000000A000000090000000A00000004000000021386ACFA0000000204548A090000000A1386AD0807800100000000090000000A000000040000000300000001"
theorem small_5453346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453346_right_root small_5453346_right_fuel small_5453346_right_count small_5453346_right_encoded = true := by
  decide +kernel
theorem small_5453346_right_covered : CoveredBy scale carrier boxes small_5453346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453346_right_root small_5453346_right_fuel small_5453346_right_count small_5453346_right_encoded small_5453346_right_checked

theorem cover_5453346 : CoveredBy scale carrier boxes root_5453346 := by
  apply coveredBy_split_literal root_5453346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453347 small_5453346_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453347
  · exact small_5453346_right_covered
#print axioms cover_5453346

def root_5453340 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453340_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5453340_left_fuel : Nat := 1
def small_5453340_left_count : Nat := 1
def small_5453340_left_encoded : String := "00000000"
theorem small_5453340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5453340_left_root small_5453340_left_fuel small_5453340_left_count small_5453340_left_encoded = true := by
  decide +kernel
theorem small_5453340_left_covered : CoveredBy scale carrier boxes small_5453340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5453340_left_root small_5453340_left_fuel small_5453340_left_count small_5453340_left_encoded small_5453340_left_checked

theorem cover_5453340 : CoveredBy scale carrier boxes root_5453340 := by
  apply coveredBy_split_literal root_5453340 small_5453340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453346 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5453340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453346
#print axioms cover_5453340

def root_5451394 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5451394 : CoveredBy scale carrier boxes root_5451394 := by
  apply coveredBy_split_literal root_5451394 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2042.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5453340 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2042.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5453340
#print axioms cover_5451394

def root_5451388 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451388_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451388_left_fuel : Nat := 1
def small_5451388_left_count : Nat := 1
def small_5451388_left_encoded : String := "00000004"
theorem small_5451388_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451388_left_root small_5451388_left_fuel small_5451388_left_count small_5451388_left_encoded = true := by
  decide +kernel
theorem small_5451388_left_covered : CoveredBy scale carrier boxes small_5451388_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451388_left_root small_5451388_left_fuel small_5451388_left_count small_5451388_left_encoded small_5451388_left_checked

theorem cover_5451388 : CoveredBy scale carrier boxes root_5451388 := by
  apply coveredBy_split_literal root_5451388 small_5451388_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451394 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5451388_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451394
#print axioms cover_5451388

def root_5451387 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451387_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451387_right_fuel : Nat := 18
def small_5451387_right_count : Nat := 81
def small_5451387_right_encoded : String := "12073D0805000100135D44F7050000F800000009135D44F9050000FC00000006000000060000000100000000135D80F700000000050000F8135D80F900000001050000FC135D80FD0000000304548A05138670FA0CFD9C090F34D1080000000407800100128A40F7078000F8000000090000000600000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD000000030000000500000009128A40F9078000FC00000006000000090000000100000005000000021386ACFA000000020CFD9C090F34D108000000040780010000000005128A7CF700000000000000050000000500000009135D44F9050000FC135D80FD0000000304548A05138670FA0CFD9C090F34D108000000040000000600000006000000021386ACFA000000020CFD9C090F34D108000000040000000600000005000000090000000100000004"
theorem small_5451387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451387_right_root small_5451387_right_fuel small_5451387_right_count small_5451387_right_encoded = true := by
  decide +kernel
theorem small_5451387_right_covered : CoveredBy scale carrier boxes small_5451387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451387_right_root small_5451387_right_fuel small_5451387_right_count small_5451387_right_encoded small_5451387_right_checked

theorem cover_5451387 : CoveredBy scale carrier boxes root_5451387 := by
  apply coveredBy_split_literal root_5451387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451388 small_5451387_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451388
  · exact small_5451387_right_covered
#print axioms cover_5451387

def root_5451382 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451382_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451382_right_fuel : Nat := 1
def small_5451382_right_count : Nat := 1
def small_5451382_right_encoded : String := "00000002"
theorem small_5451382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451382_right_root small_5451382_right_fuel small_5451382_right_count small_5451382_right_encoded = true := by
  decide +kernel
theorem small_5451382_right_covered : CoveredBy scale carrier boxes small_5451382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451382_right_root small_5451382_right_fuel small_5451382_right_count small_5451382_right_encoded small_5451382_right_checked

theorem cover_5451382 : CoveredBy scale carrier boxes root_5451382 := by
  apply coveredBy_split_literal root_5451382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451387 small_5451382_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451387
  · exact small_5451382_right_covered
#print axioms cover_5451382

def root_5451381 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451381_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451381_right_fuel : Nat := 29
def small_5451381_right_count : Nat := 365
def small_5451381_right_encoded : String := "12073CFA0000000208A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA04548A0913867108000000040280010013D7B0F7078000F800000009128A40F900000009000000010000000013D7ECF700000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA00000009000000020000000500000009128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A0000000200000008000000090000000100000009000000020F350CFA0000000204548A0913867108000000040C9A86FA00000009000000090000000500000009135D44F9050000FC135D80FD000000030CFD9C050F34D0FA04548A090000000A00000006000000020F350CFA0000000204548A090000000800000006135D44FD0CFD9C050F34D0FA000000090000000200000009000000030000000100000000135D80F700000000050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA04548A09138671080000000407800100128A40F7078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA022A458913E1C508000000040640010012FF70F708C000F8000000090000000A0000000012FFACF70000000008C000F811FC24F90000000108C000FC00000005000000090000000A000000050000000200000005128A40FD0AD3578510D100FA00000009000000020000000900000003128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A000000020000000A0000000A0000000100000000128A7CF700000000078000F8128A7CF900000001078000FC128A7CFD000000030AD3578510D100FA022A458913E1C5080000000408C0010011FBE8F708C000F811FC24F900000001000000050000000A0000000011FC24F70000000000000007000000050000000200000005128A40FD0AD3578510D100FA0000000A000000020000000A00000003128A40F9078000FC128A7CFD000000030AD3578510D100FA0000000A000000020000000A0000000A000000011386AD0807800100128A40F7078000F800000009128A40F9000000090000000100000000128A7CF700000000078000F8128A7CF90000000100000005128A40F9078000FC128A7CFD0000000300000005000000090000000100000004000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D0507800100128A40F7078000F8000000090000000A00000000128A7CF700000000078000F8128A7CF900000001078000FC00000005000000090000000A000000020F87510500000002078001000000000A128A7CF700000000078000F8128A7CF900000001078000FC00000005000000090000000A1386AD080C9A86FA000000050F875105000000020000000500000004135D44FD0CFD9C050F34D0FA04548A091386710800000004078001000000000A0000000A00000009000000020F350CFA0000000204548A090000000A0000000900000003135D44F9050000FC135D80FD000000030CFD9C050F34D0FA04548A091386710800000004078001000000000A0000000A1386AD0807800100128A40F7028000F8000000090000000600000000128A7CF700000000028000F813D7ECF900000001078000FC128A7CFD0000000300000007000000090000000A00000004000000020F350CFA0000000204548A090000000A1386AD080C9A86FA0F878D0507800100000000090000000A000000020F875105000000020000000900000004135D44FD0CFD9C050F34D0FA0000000A000000020000000A000000030000000112073D0805000100135D44F70000000900000000135D80F700000000050000F8135D80F900000001050000FC135D80FD000000030CFD9C050F34D0FA00000005000000020000000500000009135D44F9050000FC135D80FD000000030CFD9C050F34D0FA000000090000000200000009000000090000000100000004"
theorem small_5451381_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451381_right_root small_5451381_right_fuel small_5451381_right_count small_5451381_right_encoded = true := by
  decide +kernel
theorem small_5451381_right_covered : CoveredBy scale carrier boxes small_5451381_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451381_right_root small_5451381_right_fuel small_5451381_right_count small_5451381_right_encoded small_5451381_right_checked

theorem cover_5451381 : CoveredBy scale carrier boxes root_5451381 := by
  apply coveredBy_split_literal root_5451381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451382 small_5451381_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451382
  · exact small_5451381_right_covered
#print axioms cover_5451381

def root_5451376 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451376_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451376_right_fuel : Nat := 1
def small_5451376_right_count : Nat := 1
def small_5451376_right_encoded : String := "00000004"
theorem small_5451376_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451376_right_root small_5451376_right_fuel small_5451376_right_count small_5451376_right_encoded = true := by
  decide +kernel
theorem small_5451376_right_covered : CoveredBy scale carrier boxes small_5451376_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451376_right_root small_5451376_right_fuel small_5451376_right_count small_5451376_right_encoded small_5451376_right_checked

theorem cover_5451376 : CoveredBy scale carrier boxes root_5451376 := by
  apply coveredBy_split_literal root_5451376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451381 small_5451376_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451381
  · exact small_5451376_right_covered
#print axioms cover_5451376

def root_5451368 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451368_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451368_left_fuel : Nat := 2
def small_5451368_left_count : Nat := 3
def small_5451368_left_encoded : String := "1151E9090000000400000009"
theorem small_5451368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451368_left_root small_5451368_left_fuel small_5451368_left_count small_5451368_left_encoded = true := by
  decide +kernel
theorem small_5451368_left_covered : CoveredBy scale carrier boxes small_5451368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451368_left_root small_5451368_left_fuel small_5451368_left_count small_5451368_left_encoded small_5451368_left_checked

theorem cover_5451368 : CoveredBy scale carrier boxes root_5451368 := by
  apply coveredBy_split_literal root_5451368 small_5451368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451376 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5451368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451376
#print axioms cover_5451368

def root_5451363 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451363_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5451363_right_fuel : Nat := 1
def small_5451363_right_count : Nat := 1
def small_5451363_right_encoded : String := "00000003"
theorem small_5451363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5451363_right_root small_5451363_right_fuel small_5451363_right_count small_5451363_right_encoded = true := by
  decide +kernel
theorem small_5451363_right_covered : CoveredBy scale carrier boxes small_5451363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5451363_right_root small_5451363_right_fuel small_5451363_right_count small_5451363_right_encoded small_5451363_right_checked

theorem cover_5451363 : CoveredBy scale carrier boxes root_5451363 := by
  apply coveredBy_split_literal root_5451363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451368 small_5451363_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451368
  · exact small_5451363_right_covered
#print axioms cover_5451363

def root_5448623 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5448623 : CoveredBy scale carrier boxes root_5448623 := by
  apply coveredBy_split_literal root_5448623 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2041.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5451363 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2041.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5451363
#print axioms cover_5448623

def root_5448618 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448618_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448618_right_fuel : Nat := 1
def small_5448618_right_count : Nat := 1
def small_5448618_right_encoded : String := "00000002"
theorem small_5448618_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448618_right_root small_5448618_right_fuel small_5448618_right_count small_5448618_right_encoded = true := by
  decide +kernel
theorem small_5448618_right_covered : CoveredBy scale carrier boxes small_5448618_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448618_right_root small_5448618_right_fuel small_5448618_right_count small_5448618_right_encoded small_5448618_right_checked

theorem cover_5448618 : CoveredBy scale carrier boxes root_5448618 := by
  apply coveredBy_split_literal root_5448618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5448623 small_5448618_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5448623
  · exact small_5448618_right_covered
#print axioms cover_5448618

def root_5448617 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448617_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448617_right_fuel : Nat := 24
def small_5448617_right_count : Nat := 207
def small_5448617_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FA00000005135D450500000002000000050000000800000000135D80F700000000050000F8135D80F900000001050000FA135D81050CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000050F8750FD0780010000000005128A7CF7000000000000000500000003000000050000000500000002135D4505000000020CFD9BFD0F350CFC0000000304548A091386710800000004000000080000000500000005135D44F9050000FA135D81050CFD9BFD000000080F34D0FC000000050000000300000002135D4505000000020CFD9BFD000000080F34D0FC00000005000000030000000112073D080500010000000005135D80F7000000000000000500000004120700FC0000000500000003000000041151E8FD0A0001081151E90900000004000000051152250908A91309120701080000000405000100135D44F7050000F8135D80F900000001050000FA0000000900000009135D44F9050000FA00000009000000060000000100000000135D80F700000000050000F8135D80F900000001050000FA135D8105050000FC135D80FD0000000304548A09138671080000000407800100128A40F7078000F8000000090000000800000000128A7CF700000000078000F8128A7CF900000001078000FA00000009128A410500000002000000090000000A000000090000000900000002135D450500000002050000FC135D80FD0000000304548A0913867108000000040780010000000008128A7CF700000000078000F800000009000000080000000900000009135D44F9050000FA135D8105050000FC135D80FD0000000304548A09000000081386AD080780010000000006128A7CF700000000028000F80000000900000006000000040000000900000002135D450500000002050000FC135D80FD0000000304548A090000000800000006000000090000000112073D080500010000000009135D80F700000000050000F800000009135D44F90000000900000001000000040000000400000003"
theorem small_5448617_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448617_right_root small_5448617_right_fuel small_5448617_right_count small_5448617_right_encoded = true := by
  decide +kernel
theorem small_5448617_right_covered : CoveredBy scale carrier boxes small_5448617_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448617_right_root small_5448617_right_fuel small_5448617_right_count small_5448617_right_encoded small_5448617_right_checked

theorem cover_5448617 : CoveredBy scale carrier boxes root_5448617 := by
  apply coveredBy_split_literal root_5448617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5448618 small_5448617_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5448618
  · exact small_5448617_right_covered
#print axioms cover_5448617

def root_5448612 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448612_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5448612_right_fuel : Nat := 1
def small_5448612_right_count : Nat := 1
def small_5448612_right_encoded : String := "00000001"
theorem small_5448612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5448612_right_root small_5448612_right_fuel small_5448612_right_count small_5448612_right_encoded = true := by
  decide +kernel
theorem small_5448612_right_covered : CoveredBy scale carrier boxes small_5448612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5448612_right_root small_5448612_right_fuel small_5448612_right_count small_5448612_right_encoded small_5448612_right_checked

theorem cover_5448612 : CoveredBy scale carrier boxes root_5448612 := by
  apply coveredBy_split_literal root_5448612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5448617 small_5448612_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5448617
  · exact small_5448612_right_covered
#print axioms cover_5448612

def root_5439572 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5439572 : CoveredBy scale carrier boxes root_5439572 := by
  apply coveredBy_split_literal root_5439572 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5448612 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439573
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5448612
#print axioms cover_5439572

def root_5439567 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439567_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5439567_right_fuel : Nat := 1
def small_5439567_right_count : Nat := 1
def small_5439567_right_encoded : String := "00000000"
theorem small_5439567_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5439567_right_root small_5439567_right_fuel small_5439567_right_count small_5439567_right_encoded = true := by
  decide +kernel
theorem small_5439567_right_covered : CoveredBy scale carrier boxes small_5439567_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5439567_right_root small_5439567_right_fuel small_5439567_right_count small_5439567_right_encoded small_5439567_right_checked

theorem cover_5439567 : CoveredBy scale carrier boxes root_5439567 := by
  apply coveredBy_split_literal root_5439567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.root_5439572 small_5439567_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135.cover_5439572
  · exact small_5439567_right_covered
#print axioms cover_5439567

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0135
