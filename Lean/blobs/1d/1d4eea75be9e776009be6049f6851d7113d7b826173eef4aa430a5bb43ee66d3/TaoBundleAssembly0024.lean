import TaoBundleAssembly0023
import TaoBundleChunkBatch0093
import TaoBundleChunkBatch0094
import TaoBundleChunkBatch0095
import TaoBundleChunkBatch0096
import TaoBundleChunkBatch0097
import TaoBundleChunkBatch0098
import TaoBundleChunkBatch0100
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024
def root_969123 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969123_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969123_right_fuel : Nat := 17
def small_969123_right_count : Nat := 49
def small_969123_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB000000050000000A00000001120701020000000108A912FB12073CFA0000000208A912FF000000050000000A120700FA08A912FF12073CFE00000004050000F6135D80F700000000050000FC135D80FD00000003045489F90000000A13867102000000010000000A135D44FD045489F9000000051386710200000001045489FB000000050000000A000000030000000A0000000A000000021151E8FF000000050000000400000003"
theorem small_969123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_969123_right_root small_969123_right_fuel small_969123_right_count small_969123_right_encoded = true := by
  decide +kernel
theorem small_969123_right_covered : CoveredBy scale carrier boxes small_969123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_969123_right_root small_969123_right_fuel small_969123_right_count small_969123_right_encoded small_969123_right_checked

theorem cover_969123 : CoveredBy scale carrier boxes root_969123 := by
  apply coveredBy_split_literal root_969123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0023.root_969124 small_969123_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0023.cover_969124
  · exact small_969123_right_covered
#print axioms cover_969123

def root_969117 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969117_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969117_left_fuel : Nat := 1
def small_969117_left_count : Nat := 1
def small_969117_left_encoded : String := "00000002"
theorem small_969117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_969117_left_root small_969117_left_fuel small_969117_left_count small_969117_left_encoded = true := by
  decide +kernel
theorem small_969117_left_covered : CoveredBy scale carrier boxes small_969117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_969117_left_root small_969117_left_fuel small_969117_left_count small_969117_left_encoded small_969117_left_checked

theorem cover_969117 : CoveredBy scale carrier boxes root_969117 := by
  apply coveredBy_split_literal root_969117 small_969117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_969123 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_969117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_969123
#print axioms cover_969117

def root_969116 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969116_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969116_right_fuel : Nat := 24
def small_969116_right_count : Nat := 155
def small_969116_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FD00000005120700FC08A912FF00000005120700FE050000F6135D80F700000000050000FA135D80FB000000020CFD9BF90F350D02045489FD00000005138670FC0000000500000003000000010F34D102000000010000000A135D44FB0CFD9BF9000000050F34D102000000010000000A00000002135D44F7050000FA135D80FB000000020CFD9BF90000000500000008135D44FB0CFD9BF900000005000000080000000200000000000000040000000300000001120701020000000108A912FD12073CFC0000000308A912FF00000005120700FE0000000700000004120700FC08A912FF12073CFE00000004050000F6135D80F700000000050000FA135D80FB00000002045489F91386AD02045489FD00000005138670FC0CFD9BFF000000050F34D0FE000000080000000400000003000000011386710200000001045489FD1386ACFC000000030CFD9BFF0000000500000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000080F8750FF00000005000000040000000800000003135D44FB045489F9000000051386710200000001045489FD00000005138670FC0CFD9BFF000000050F34D0FE00000007000000040000000300000002135D44F7050000FA135D80FB00000002045489F90000000500000008135D44FB045489F9000000051386710200000001045489FD00000005000000080000000200000000120700FE050000F6135D80F700000000000000070000000800000004000000031151E8FF00000005000000041151E8FD000000050000000300000002"
theorem small_969116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_969116_right_root small_969116_right_fuel small_969116_right_count small_969116_right_encoded = true := by
  decide +kernel
theorem small_969116_right_covered : CoveredBy scale carrier boxes small_969116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_969116_right_root small_969116_right_fuel small_969116_right_count small_969116_right_encoded small_969116_right_checked

theorem cover_969116 : CoveredBy scale carrier boxes root_969116 := by
  apply coveredBy_split_literal root_969116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_969117 small_969116_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_969117
  · exact small_969116_right_covered
#print axioms cover_969116

def root_969110 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969110_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_969110_left_fuel : Nat := 1
def small_969110_left_count : Nat := 1
def small_969110_left_encoded : String := "00000001"
theorem small_969110_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_969110_left_root small_969110_left_fuel small_969110_left_count small_969110_left_encoded = true := by
  decide +kernel
theorem small_969110_left_covered : CoveredBy scale carrier boxes small_969110_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_969110_left_root small_969110_left_fuel small_969110_left_count small_969110_left_encoded small_969110_left_checked

theorem cover_969110 : CoveredBy scale carrier boxes root_969110 := by
  apply coveredBy_split_literal root_969110 small_969110_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_969116 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_969110_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_969116
#print axioms cover_969110

def root_968952 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_968952_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_968952_left_fuel : Nat := 20
def small_968952_left_count : Nat := 73
def small_968952_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD00000005120700FC08A912FF00000005120700FE050000F6135D80F7000000000500010200000005135D80F9000000010CFD9BFB000000050000000A135D44F70500010200000005135D80F9000000010CFD9BFB000000050F34D0FA0000000500000002000000000000000400000003120700FA08A912FD12073CFC0000000308A912FF00000005120700FE0000000A00000004120700FC08A912FF12073CFE00000004050000F60000000A0000000A120700FE0000000A0000000400000003000000021151E8FF00000005000000041151E8FD00000005000000031151E8FB000000050000000200000001"
theorem small_968952_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_968952_left_root small_968952_left_fuel small_968952_left_count small_968952_left_encoded = true := by
  decide +kernel
theorem small_968952_left_covered : CoveredBy scale carrier boxes small_968952_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_968952_left_root small_968952_left_fuel small_968952_left_count small_968952_left_encoded small_968952_left_checked

theorem cover_968952 : CoveredBy scale carrier boxes root_968952 := by
  apply coveredBy_split_literal root_968952 small_968952_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_969110 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_968952_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_969110
#print axioms cover_968952

def root_968947 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_968947_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_968947_right_fuel : Nat := 1
def small_968947_right_count : Nat := 1
def small_968947_right_encoded : String := "00000000"
theorem small_968947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_968947_right_root small_968947_right_fuel small_968947_right_count small_968947_right_encoded = true := by
  decide +kernel
theorem small_968947_right_covered : CoveredBy scale carrier boxes small_968947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_968947_right_root small_968947_right_fuel small_968947_right_count small_968947_right_encoded small_968947_right_checked

theorem cover_968947 : CoveredBy scale carrier boxes root_968947 := by
  apply coveredBy_split_literal root_968947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_968952 small_968947_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_968952
  · exact small_968947_right_covered
#print axioms cover_968947

def root_948361 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948361 : CoveredBy scale carrier boxes root_948361 := by
  apply coveredBy_split_literal root_948361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0023.root_948362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_968947 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0023.cover_948362
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_968947
#print axioms cover_948361

def root_948360 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948360 : CoveredBy scale carrier boxes root_948360 := by
  apply coveredBy_split_literal root_948360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_948361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0370.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_948361
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0370.covered
#print axioms cover_948360

def root_980404 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_980404 : CoveredBy scale carrier boxes root_980404 := by
  apply coveredBy_split_literal root_980404 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0371.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0372.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0371.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0372.covered
#print axioms cover_980404

def root_983587 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_983587_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_983587_right_fuel : Nat := 23
def small_983587_right_count : Nat := 381
def small_983587_right_encoded : String := "1151E8F70A0001021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912FB12073CFA0000000208A912FD00000006120700FC050000F6135D80F7000000000500010200000006135D80F900000001000000060000000600000003120700FA00000006000000021152250908A912FB12073CFA0000000208A912FD00000006120700FC000000060000000300000006000000041151E8FD0A0001081151E90900000004000000061152250908A912FB12073CFA0000000208A913090000000512073D08050000F6135D80F7000000000500010200000006000000060000000600000004120700FA08A913091207010800000004050000F600000006135D44F70000000600000000000000060000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912FD12073CFC00000003050000F6135D80F7000000000500010200000006135D80F900000001050000FA000000060000000800000006000000081152250908A912FD12073CFC0000000308A913090000000500000006120700FC08A913090000000612073D08050000F6135D80F700000000050001020000000600000009000000060000000400000003000000041151E8FD00000005000000030000000200000001115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912F912073D0208A912FB12073CFA0000000208A912FD12073CFC00000003050000F60000000700000006120700FC050000F6135D80F70000000000000005135D44F70500010800000005135D81090CFD9BF90000000700000005000000040000000000000003120700FA08A912FD00000006000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000700000005000000051152250908A912F912073D0208A912FB12073CFA0000000208A912FD00000006120700FC08A913090000000612073D08050000F6135D80F7000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9BFB0000000600000006135D44F70CFD9BF90000000600000006000000000000000400000003120700FA08A912FD00000006000000060000000200000001120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000300000006120700FC08A913090000000612073D08050000F6135D80F700000000045489F91386AD020CFD9BFB00000006000000050000000100000005135D44F7045489F90000000600000006000000000000000400000003120700FA08A912FD12073CFC0000000308A9130912070108000000040000000600000006120700FC08A9130900000006000000050000000300000002000000041151E8FD0A0001081151E9090000000408A912F9000000061207010200000001000000061152250908A912F912073D0208A912FB12073CFA0000000200000006000000060000000112070102000000010000000600000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD00000007120700FC050000F600000007135D44F7050000FA00000007135D44FB00000008000000020000000000000003000000011207010200000001000000071152250908A912F912073D0208A912FD12073CFC0000000308A913090000000612073D08050000F6135D80F700000000050000FA135D80FB000000020CFD9BF9000000060000000600000009135D44F7050000FA00000006000000090000000000000004120700FC08A9130912070108000000040000000912073D08050000F6135D80F70000000000000009135D44F7050000FA135D80FB000000020CFD9BF90F350D020000000600000001000000090000000900000000000000040000000300000001120701020000000108A912FD00000009120700FC0000000900000003000000041151E8FD0A0001081151E90900000004000000071152250908A912F912073D0208A913090000000500000006000000010000000600000004000000030000000200000000"
theorem small_983587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_983587_right_root small_983587_right_fuel small_983587_right_count small_983587_right_encoded = true := by
  decide +kernel
theorem small_983587_right_covered : CoveredBy scale carrier boxes small_983587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_983587_right_root small_983587_right_fuel small_983587_right_count small_983587_right_encoded small_983587_right_checked

theorem cover_983587 : CoveredBy scale carrier boxes root_983587 := by
  apply coveredBy_split_literal root_983587 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0373.root small_983587_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0373.covered
  · exact small_983587_right_covered
#print axioms cover_983587

def root_980403 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_980403 : CoveredBy scale carrier boxes root_980403 := by
  apply coveredBy_split_literal root_980403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_980404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_983587 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_980404
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_983587
#print axioms cover_980403

def root_948359 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948359 : CoveredBy scale carrier boxes root_948359 := by
  apply coveredBy_split_literal root_948359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_948360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_980403 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_948360
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_980403
#print axioms cover_948359

def root_988884 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_988884 : CoveredBy scale carrier boxes root_988884 := by
  apply coveredBy_split_literal root_988884 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0375.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0376.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0375.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0376.covered
#print axioms cover_988884

def root_988878 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988878_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988878_left_fuel : Nat := 1
def small_988878_left_count : Nat := 1
def small_988878_left_encoded : String := "00000000"
theorem small_988878_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988878_left_root small_988878_left_fuel small_988878_left_count small_988878_left_encoded = true := by
  decide +kernel
theorem small_988878_left_covered : CoveredBy scale carrier boxes small_988878_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988878_left_root small_988878_left_fuel small_988878_left_count small_988878_left_encoded small_988878_left_checked

theorem cover_988878 : CoveredBy scale carrier boxes root_988878 := by
  apply coveredBy_split_literal root_988878 small_988878_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988884 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_988878_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988884
#print axioms cover_988878

def root_988877 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988877_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988877_right_fuel : Nat := 22
def small_988877_right_count : Nat := 361
def small_988877_right_encoded : String := "120700F608A912F912073D0208A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE0000000400000006120700FE045489F71386ACF6000000000CFD9BF90F350D0200000006000000010F34D102000000010000000700000006000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386ACF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9BFB0000000600000006138670F60CFD9BF9000000060000000600000000120700FE045489F71386ACF6000000000CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF00000006138670FE0C9A87020000000600000009000000040F34D0FA0000000600000002000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF00000009000000050F34D0FA0CFD9C07000000060000000900000002138670F60CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9C07000000060F350CFC00000003000000060F34D0FA0000000600000002000000010F34D102000000010CFD9BFB0F350CFA000000020CFD9C0700000006000000050F34D0FA00000006000000020000000000000004120700FA08A91307120700FC08A912FF12073CFE00000004045489F71386ACF6000000000CFD9BF9000000060F34D102000000010000000600000006120700FE045489F71386ACF6000000000CFD9BF9000000060F34D10200000001045489FB00000006138670FA000000060000000200000006000000040000000312073CFC0000000308A912FF12073CFE0000000400000006120700FE045489F71386ACF6000000000CFD9BF90F350D0200000006000000010F34D10200000001045489FB000000060000000600000006000000040000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004045489F71386ACF600000000045489F91386AD020CFD9BFB000000060F34D0FA00000006000000020000000113867102000000010CFD9BFB0F350CFA0000000204548A0700000006000000060F34D0FA04548A07000000060000000600000002138670F6045489F90000000613867102000000010000000700000000000000070000000312073CFC0000000308A912FF12073CFE00000004045489F71386ACF600000000045489F91386AD020CFD9BFB0F350CFA000000020CFD9C07000000060F350CFC00000003000000060F34D0FA00000006000000020000000113867102000000010CFD9BFB0F350CFA000000020CFD9C07000000060000000500000005138670F6045489F90000000613867102000000010000000500000000120700FE045489F71386ACF600000000045489F91386AD020CFD9BFB0F350CFA000000020CFD9C0700000007000000050000000500000001000000050000000500000004120700FA08A91307120700FC08A912FF12073CFE00000004045489F71386ACF600000000045489F91386AD02045489FB00000006138670FA04548A07138670FC0CFD9BFF0000000600000006000000031386ACFC000000030000000600000002000000011386710200000001045489FB1386ACFA0000000204548A07000000071386ACFC000000030CFD9BFF0000000600000005138670FA04548A07138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000050000000500000005000000030000000500000002138670F6045489F9000000061386710200000001045489FB00000006138670FA04548A0700000007000000050000000200000000120700FE00000007000000040000000312073CFC0000000308A912FF12073CFE00000004045489F71386ACF600000000045489F91386AD02045489FB0000000600000005000000010000000500000005000000050000000200000000"
theorem small_988877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988877_right_root small_988877_right_fuel small_988877_right_count small_988877_right_encoded = true := by
  decide +kernel
theorem small_988877_right_covered : CoveredBy scale carrier boxes small_988877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988877_right_root small_988877_right_fuel small_988877_right_count small_988877_right_encoded small_988877_right_checked

theorem cover_988877 : CoveredBy scale carrier boxes root_988877 := by
  apply coveredBy_split_literal root_988877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988878 small_988877_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988878
  · exact small_988877_right_covered
#print axioms cover_988877

def root_988871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988871_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988871_left_fuel : Nat := 1
def small_988871_left_count : Nat := 1
def small_988871_left_encoded : String := "00000004"
theorem small_988871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988871_left_root small_988871_left_fuel small_988871_left_count small_988871_left_encoded = true := by
  decide +kernel
theorem small_988871_left_covered : CoveredBy scale carrier boxes small_988871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988871_left_root small_988871_left_fuel small_988871_left_count small_988871_left_encoded small_988871_left_checked

theorem cover_988871 : CoveredBy scale carrier boxes root_988871 := by
  apply coveredBy_split_literal root_988871 small_988871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988877 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_988871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988877
#print axioms cover_988871

def root_988870 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988870_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988870_right_fuel : Nat := 28
def small_988870_right_count : Nat := 333
def small_988870_right_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073D0208A912FB12073CFA0000000208A913070000000612073CFC0000000300000006120700FA08A91307120700FC050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000060F34D10200000001045489FB00000006138670FA04548A070000000600000006000000020F34D0F60000000600000000000000060000000312073CFC00000003000000060000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD020CFD9BFB000000060F34D0FA00000006000000020000000113867102000000010CFD9BFB0F350CFA0000000204548A0700000006000000060F34D0FA04548A07138670FC0C9A86F6000000060F8750F7078000FE128A7CFF00000004022A45790000000613E1C502000000010AD3577B0000000610D100FA000000060000000200000006000000000000000300000006000000020F34D0F60000000600000000135D44FF0CFD9BF70F350CF600000000045489F90000000613867102000000010CFD9BFB000000060F34D0FA000000060000000200000006000000040000000312073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD02000000060000000113867102000000010CFD9BFB000000060F34D0FA00000006000000020000000600000006120700FA08A91307120700FC050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA0000000204548A070000000600000006138670FA04548A07138670FC0C9A86F60F878CF700000000078000FE128A7CFF0000000400000006000000060F8750F70000000700000000000000031386ACFC000000030C9A86F6000000060000000700000002000000011386710200000001045489FB1386ACFA0000000204548A07138670FC0C9A86F60F878CF700000000078000FE128A7CFF0000000400000006000000060F8750F7078000FE128A7CFF00000004022A457913E20102067ECE7B00000006000000070000000113E1C50200000001067ECE7B0000000A00000007128A40FF000000070000000400000000000000031386ACFC000000030C9A86F60000000A0F8750F70000000700000000138670FA04548A07138670FC0C9A86F60F878CF700000000078000FE128A7CFF00000004022A457913E20102022A457B00000006000000050000000100000005128A40FF00000007000000040F8750F700000007000000000000000300000005000000020F34D0F6045489F9000000061386710200000001045489FB00000006138670FA04548A07138670FC078000FE128A7CFF00000004000000060000000500000003000000050000000200000000135D44FF0CFD9BF70F350CF600000000045489F91386AD02045489FB00000006138670FA0000000600000002000000011386710200000001045489FB1386ACFA0000000204548A070000000600000006138670FA04548A070000000700000005000000020F34D0F60000000600000000000000040000000312073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD02045489FB000000060000000500000001000000050F34D0F60000000600000000135D44FF0CFD9BF70F350CF60000000000000007000000050000000400000002120700F608A912F912073D020000000600000001120701020000000108A912FB00000006120700FA08A913070000000600000006000000020000000000000004"
theorem small_988870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988870_right_root small_988870_right_fuel small_988870_right_count small_988870_right_encoded = true := by
  decide +kernel
theorem small_988870_right_covered : CoveredBy scale carrier boxes small_988870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988870_right_root small_988870_right_fuel small_988870_right_count small_988870_right_encoded small_988870_right_checked

theorem cover_988870 : CoveredBy scale carrier boxes root_988870 := by
  apply coveredBy_split_literal root_988870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988871 small_988870_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988871
  · exact small_988870_right_covered
#print axioms cover_988870

def root_988865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988865_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988865_right_fuel : Nat := 1
def small_988865_right_count : Nat := 1
def small_988865_right_encoded : String := "00000003"
theorem small_988865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988865_right_root small_988865_right_fuel small_988865_right_count small_988865_right_encoded = true := by
  decide +kernel
theorem small_988865_right_covered : CoveredBy scale carrier boxes small_988865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988865_right_root small_988865_right_fuel small_988865_right_count small_988865_right_encoded small_988865_right_checked

theorem cover_988865 : CoveredBy scale carrier boxes root_988865 := by
  apply coveredBy_split_literal root_988865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988870 small_988865_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988870
  · exact small_988865_right_covered
#print axioms cover_988865

def root_988864 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988864_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988864_right_fuel : Nat := 18
def small_988864_right_count : Nat := 149
def small_988864_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF70F350CF600000000000000090F34D0F60CFD9BF90F350D0200000006000000010F34D10200000001000000090000000000000003135D4507000000030CFD9BF7000000090F34D0F60CFD9BF9000000090F34D102000000010000000500000000120700FE0000000900000004120700FA08A912FF00000009120700FE00000009000000040000000200000001120701020000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF7000000090000000500000003000000050000000500000005120700F608A912F912073D0208A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D8107045489F71386ACF6000000000CFD9BF90F350D020000000600000001000000060000000600000003135D450700000003045489F71386ACF6000000000CFD9BF9000000060000000500000005120700FE050000FC135D8107045489F71386ACF6000000000CFD9BF9000000090000000500000005000000030000000500000004120700FA08A912FF00000006000000050000000200000001120701020000000100000005000000001151E8FF08A912F712073CF60000000008A912F912073D0208A912FB000000060000000600000001120701020000000108A912FB12073CFA00000002050000FC000000060000000600000005120700F608A912F900000006000000050000000000000004"
theorem small_988864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988864_right_root small_988864_right_fuel small_988864_right_count small_988864_right_encoded = true := by
  decide +kernel
theorem small_988864_right_covered : CoveredBy scale carrier boxes small_988864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988864_right_root small_988864_right_fuel small_988864_right_count small_988864_right_encoded small_988864_right_checked

theorem cover_988864 : CoveredBy scale carrier boxes root_988864 := by
  apply coveredBy_split_literal root_988864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988865 small_988864_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988865
  · exact small_988864_right_covered
#print axioms cover_988864

def root_988858 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988858_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988858_left_fuel : Nat := 1
def small_988858_left_count : Nat := 1
def small_988858_left_encoded : String := "00000002"
theorem small_988858_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988858_left_root small_988858_left_fuel small_988858_left_count small_988858_left_encoded = true := by
  decide +kernel
theorem small_988858_left_covered : CoveredBy scale carrier boxes small_988858_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988858_left_root small_988858_left_fuel small_988858_left_count small_988858_left_encoded small_988858_left_checked

theorem cover_988858 : CoveredBy scale carrier boxes root_988858 := by
  apply coveredBy_split_literal root_988858 small_988858_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988864 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_988858_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988864
#print axioms cover_988858

def root_994878 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_994878 : CoveredBy scale carrier boxes root_994878 := by
  apply coveredBy_split_literal root_994878 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0377.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0378.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0377.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0378.covered
#print axioms cover_994878

def root_994872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994872_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994872_left_fuel : Nat := 1
def small_994872_left_count : Nat := 1
def small_994872_left_encoded : String := "00000000"
theorem small_994872_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994872_left_root small_994872_left_fuel small_994872_left_count small_994872_left_encoded = true := by
  decide +kernel
theorem small_994872_left_covered : CoveredBy scale carrier boxes small_994872_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994872_left_root small_994872_left_fuel small_994872_left_count small_994872_left_encoded small_994872_left_checked

theorem cover_994872 : CoveredBy scale carrier boxes root_994872 := by
  apply coveredBy_split_literal root_994872 small_994872_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994878 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_994872_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994878
#print axioms cover_994872

def root_994871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994871_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994871_right_fuel : Nat := 22
def small_994871_right_count : Nat := 331
def small_994871_right_encoded : String := "120700F608A912F912073D0208A91307120700FC08A912FF12073CFE00000004050000FA00000006135D44FB045489F71386ACF6000000000CFD9BF90F350D020000000600000001000000060000000600000002120700FE00000007000000040000000312073CFC0000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90F350D020CFD9C07000000060F350CFC000000030CFD9BFF000000060F34D0FE0000000600000004000000010F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF000000060F34D0FE0C9A86FC000000060000000500000004138670F60CFD9BF90F350D0200000006000000010F34D102000000010CFD9C07000000060F350CFC000000030000000600000000135D44FB045489F71386ACF6000000000CFD9BF90F350D020CFD9C070F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F350CFC000000030CFD9BFF000000080F34D0FE0000000800000004000000010F34D102000000010CFD9C070F34D0FC0CFD9BFF000000060F34D0FE028000FA0000000613D7B0FB067ECE7700000008000000060000000200000004000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000060000000600000005138670F60CFD9BF90F350D0200000008000000010F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC00000003000000050000000000000002120700FE050000FA135D80FB00000002045489F71386ACF6000000000CFD9BF90F350D020CFD9C070F34D0FC045489FF0000000600000007000000030F350CFC00000003045489FF1386ACFE000000040C9A8702000000060F878CF9000000010C9A86FC0F878D07000000060000000300000005138670FE0C9A87020F8750F90C9A86FC0000000A00000005000000010000000500000004000000010F34D102000000010CFD9C070000000700000005138670F60CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF0000000600000005000000010F34D102000000010000000700000000135D44FB045489F71386ACF6000000000CFD9BF90F350D020CFD9C070000000A0F350CFC00000003045489FF0000000800000005000000010F34D102000000010CFD9C070F34D0FC000000070000000300000005138670F60CFD9BF90F350D020CFD9C070000000A00000008000000010F34D102000000010000000500000000000000020000000400000001120701020000000108A91307120700FC08A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF600000000045489F9000000060000000600000006135D44FB045489F71386ACF600000000045489F91386AD0204548A07000000061386ACFC000000030CFD9BFF0000000600000007000000011386710200000001000000070000000700000002000000070000000312073CFC0000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF600000000045489F91386AD020CFD9C070F34D0FC0CFD9BFF000000060F34D0FE0000000600000004000000030F350CFC000000030000000500000001138671020000000100000005138670F6045489F91386AD020CFD9C070000000600000005000000010000000500000000135D44FB045489F71386ACF600000000045489F91386AD020CFD9C070F34D0FC0CFD9BFF0F350CFE0000000400000006000000050000000300000005000000010000000500000005000000020000000500000000"
theorem small_994871_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994871_right_root small_994871_right_fuel small_994871_right_count small_994871_right_encoded = true := by
  decide +kernel
theorem small_994871_right_covered : CoveredBy scale carrier boxes small_994871_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994871_right_root small_994871_right_fuel small_994871_right_count small_994871_right_encoded small_994871_right_checked

theorem cover_994871 : CoveredBy scale carrier boxes root_994871 := by
  apply coveredBy_split_literal root_994871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994872 small_994871_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994872
  · exact small_994871_right_covered
#print axioms cover_994871

def root_994865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994865_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994865_left_fuel : Nat := 1
def small_994865_left_count : Nat := 1
def small_994865_left_encoded : String := "00000004"
theorem small_994865_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994865_left_root small_994865_left_fuel small_994865_left_count small_994865_left_encoded = true := by
  decide +kernel
theorem small_994865_left_covered : CoveredBy scale carrier boxes small_994865_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994865_left_root small_994865_left_fuel small_994865_left_count small_994865_left_encoded small_994865_left_checked

theorem cover_994865 : CoveredBy scale carrier boxes root_994865 := by
  apply coveredBy_split_literal root_994865 small_994865_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994871 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_994865_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994871
#print axioms cover_994865

def root_994864 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994864_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994864_right_fuel : Nat := 20
def small_994864_right_count : Nat := 189
def small_994864_right_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073D0208A91307120700FC000000060000000312073CFC00000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF600000000000000060000000600000006135D44FB050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9C07000000060F350CFC00000003000000060F34D0F60CFD9BF9000000060000000600000000135D44FF0CFD9BF70F350CF6000000000000000600000006000000040000000200000001120701020000000108A91307120700FC050000FA135D80FB00000002050000FE135D80FF000000040000000600000006135D44FB050000FE135D80FF000000040CFD9BF70F350CF600000000045489F900000006138671020000000104548A0700000006000000060000000600000006000000020000000312073CFC00000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF600000000045489F900000006000000060000000600000006135D44FB050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD020CFD9C07000000060F350CFC000000030C9A86F60F878CF70000000000000006000000060000000113867102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86F60000000A0F8750F700000009000000000F34D0F6045489F91386AD020CFD9C07000000060F350CFC00000003000000060000000113867102000000010CFD9C07000000060000000500000000135D44FF0CFD9BF70F350CF600000000045489F90000000600000006000000060000000400000002120700F608A912F912073D0208A913070000000612073CFC00000003050000FA00000006135D44FB050000FE00000006000000060000000200000001120701020000000108A913070000000612073CFC00000003050000FA00000006135D44FB050000FE0000000600000006000000020000000000000004"
theorem small_994864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994864_right_root small_994864_right_fuel small_994864_right_count small_994864_right_encoded = true := by
  decide +kernel
theorem small_994864_right_covered : CoveredBy scale carrier boxes small_994864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994864_right_root small_994864_right_fuel small_994864_right_count small_994864_right_encoded small_994864_right_checked

theorem cover_994864 : CoveredBy scale carrier boxes root_994864 := by
  apply coveredBy_split_literal root_994864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994865 small_994864_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994865
  · exact small_994864_right_covered
#print axioms cover_994864

def root_994859 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994859_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994859_right_fuel : Nat := 1
def small_994859_right_count : Nat := 1
def small_994859_right_encoded : String := "00000003"
theorem small_994859_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994859_right_root small_994859_right_fuel small_994859_right_count small_994859_right_encoded = true := by
  decide +kernel
theorem small_994859_right_covered : CoveredBy scale carrier boxes small_994859_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994859_right_root small_994859_right_fuel small_994859_right_count small_994859_right_encoded small_994859_right_checked

theorem cover_994859 : CoveredBy scale carrier boxes root_994859 := by
  apply coveredBy_split_literal root_994859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994864 small_994859_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994864
  · exact small_994859_right_covered
#print axioms cover_994859

def root_994858 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994858_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994858_right_fuel : Nat := 23
def small_994858_right_count : Nat := 317
def small_994858_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FF12073CFE00000004050000FA135D80FB00000002050000FC135D81070CFD9BF70F350CF600000000000000090F34D0F60CFD9BF90F350D020CFD9BFF000000060F34D0FE0000000900000004000000010F34D10200000001000000090000000000000003135D4507000000030CFD9BF7000000090F34D0F60CFD9BF9000000090000000500000000135D44FB050000FC135D81070CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFF000000090F34D0FE0000000900000004000000010F34D10200000001000000090F34D0F60CFD9BF90F350D020CFD9BFF0F350CFE000000040C9A8702000000060F878CF9000000010C9A86FE00000006000000060F34D0FE0000000900000004000000010F34D10200000001000000050000000000000003135D4507000000030CFD9BF70F350CF6000000000CFD9BF9000000090F34D10200000001000000090F34D0F60CFD9BF90F350D020CFD9BFF0F350CFE000000040C9A870200000006000000090000000500000001000000050000000000000002120700FE050000FA135D80FB00000002050000FC135D81070CFD9BF7000000090F34D0F60CFD9BF90000000900000005000000000000000300000009135D44FB050000FC135D81070CFD9BF70F350CF600000000000000090000000500000003135D45070000000300000005000000020000000400000001120701020000000108A912FF12073CFE00000004050000FA135D80FB0000000200000005135D44FB050000FC00000005135D450700000003000000050000000200000005120700F608A912F912073D0208A912FF12073CFE00000004050000FA135D80FB00000002050000FC135D8107045489F71386ACF6000000000CFD9BF90F350D020CFD9BFF000000060F34D0FE0000000600000004000000010F34D1020000000100000005138670F60CFD9BF90F350D020000000600000001000000050000000000000003135D450700000003045489F71386ACF6000000000000000500000005135D44FB050000FC135D8107045489F71386ACF6000000000CFD9BF90F350D020000000800000001000000050000000500000003135D4507000000030000000500000002000000050000000100000005000000001151E8FF08A912F712073CF60000000008A912F912073D02050000FA135D80FB00000002050000FC135D8107050000FE00000006000000060000000300000006135D44FB050000FC135D8107050000FE135D80FF000000040CFD9BF700000007000000060000000700000003135D450700000003050000FE135D80FF000000040CFD9BF700000007000000060000000700000002000000011207010200000001050000FA135D80FB00000002050000FC135D8107050000FE00000006000000060000000300000006135D44FB050000FC135D8107050000FE135D80FF000000040CFD9BF70F350CF600000000045489F9000000070000000500000005135D44FF000000060000000400000003135D450700000003050000FE135D80FF000000040CFD9BF70F350CF60000000000000009000000050000000A00000002120700F608A912F912073D02050000FA00000006135D44FB050000FC135D8107050000FE000000060000000600000003135D450700000003050000FE00000005000000060000000200000001000000050000000000000004"
theorem small_994858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994858_right_root small_994858_right_fuel small_994858_right_count small_994858_right_encoded = true := by
  decide +kernel
theorem small_994858_right_covered : CoveredBy scale carrier boxes small_994858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994858_right_root small_994858_right_fuel small_994858_right_count small_994858_right_encoded small_994858_right_checked

theorem cover_994858 : CoveredBy scale carrier boxes root_994858 := by
  apply coveredBy_split_literal root_994858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994859 small_994858_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994859
  · exact small_994858_right_covered
#print axioms cover_994858

def root_994853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994853_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_994853_right_fuel : Nat := 1
def small_994853_right_count : Nat := 1
def small_994853_right_encoded : String := "00000002"
theorem small_994853_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_994853_right_root small_994853_right_fuel small_994853_right_count small_994853_right_encoded = true := by
  decide +kernel
theorem small_994853_right_covered : CoveredBy scale carrier boxes small_994853_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_994853_right_root small_994853_right_fuel small_994853_right_count small_994853_right_encoded small_994853_right_checked

theorem cover_994853 : CoveredBy scale carrier boxes root_994853 := by
  apply coveredBy_split_literal root_994853 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994858 small_994853_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994858
  · exact small_994853_right_covered
#print axioms cover_994853

def root_988857 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_988857 : CoveredBy scale carrier boxes root_988857 := by
  apply coveredBy_split_literal root_988857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_994853 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988858
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_994853
#print axioms cover_988857

def root_988851 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988851_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_988851_left_fuel : Nat := 1
def small_988851_left_count : Nat := 1
def small_988851_left_encoded : String := "00000001"
theorem small_988851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_988851_left_root small_988851_left_fuel small_988851_left_count small_988851_left_encoded = true := by
  decide +kernel
theorem small_988851_left_covered : CoveredBy scale carrier boxes small_988851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_988851_left_root small_988851_left_fuel small_988851_left_count small_988851_left_encoded small_988851_left_checked

theorem cover_988851 : CoveredBy scale carrier boxes root_988851 := by
  apply coveredBy_split_literal root_988851 small_988851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988857 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_988851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988857
#print axioms cover_988851

def root_987449 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_987449 : CoveredBy scale carrier boxes root_987449 := by
  apply coveredBy_split_literal root_987449 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0374.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_988851 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0374.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_988851
#print axioms cover_987449

def root_987443 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_987443_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_987443_left_fuel : Nat := 1
def small_987443_left_count : Nat := 1
def small_987443_left_encoded : String := "00000000"
theorem small_987443_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_987443_left_root small_987443_left_fuel small_987443_left_count small_987443_left_encoded = true := by
  decide +kernel
theorem small_987443_left_covered : CoveredBy scale carrier boxes small_987443_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_987443_left_root small_987443_left_fuel small_987443_left_count small_987443_left_encoded small_987443_left_checked

theorem cover_987443 : CoveredBy scale carrier boxes root_987443 := by
  apply coveredBy_split_literal root_987443 small_987443_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_987449 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_987443_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_987449
#print axioms cover_987443

def root_1001479 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1001479 : CoveredBy scale carrier boxes root_1001479 := by
  apply coveredBy_split_literal root_1001479 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0379.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0380.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0379.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0380.covered
#print axioms cover_1001479

def root_1001473 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1001473_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1001473_left_fuel : Nat := 1
def small_1001473_left_count : Nat := 1
def small_1001473_left_encoded : String := "00000001"
theorem small_1001473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1001473_left_root small_1001473_left_fuel small_1001473_left_count small_1001473_left_encoded = true := by
  decide +kernel
theorem small_1001473_left_covered : CoveredBy scale carrier boxes small_1001473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1001473_left_root small_1001473_left_fuel small_1001473_left_count small_1001473_left_encoded small_1001473_left_checked

theorem cover_1001473 : CoveredBy scale carrier boxes root_1001473 := by
  apply coveredBy_split_literal root_1001473 small_1001473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1001479 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1001473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1001479
#print axioms cover_1001473

def root_1000823 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1000823_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1000823_left_fuel : Nat := 25
def small_1000823_left_count : Nat := 309
def small_1000823_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004050000F6135D80F70000000005000102135D44F90000000600000001135D80F9000000010CFD9BFB000000050F34D0FA0000000600000002135D44F705000102135D44F90000000500000001135D80F9000000010CFD9BFB000000050F34D0FA000000090000000200000000120700FE050000F6135D80F70000000005000102135D44F90000000600000001135D80F9000000010CFD9BFB000000060F34D0FA0000000600000002135D44F705000102135D44F900000009000000010000000900000000000000040000000312073CFC0000000308A912FF12073CFE00000004050000F6135D80F700000000050001020000000600000006135D44F70000000900000000120700FE0000000900000004120700FA08A91307120700FC08A912FF12073CFE00000004050000F6135D80F70000000005000102135D44F9045489FB00000006138670FA04548A0700000005000000060000000200000001135D80F900000001045489FB1386ACFA0000000204548A070000000A00000006138670FA04548A070000000A0000000900000002135D44F705000102135D44F900000009000000010000000900000000120700FE050000F60000000900000009000000040000000312073CFC0000000308A912FF0000000900000009000000021151E8FF08A912FB12073CFA0000000208A913070000000500000006120700FA08A91307120700FC050000F6135D80F700000000050001020000000600000006135D44F705000102135D44F9050000FE000000050000000600000001135D80F900000001050000FE0000000700000006000000000000000312073CFC00000003000000060000000200000004000000031151E907000000030A0000FE115224FF0000000408A912FB00000009120700FA00000009000000021151E8FF00000006000000041151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF00000005120700FE050000F6135D80F7000000000500010200000006135D80F900000001050000FA00000006135D44FB04548A07000000051386ACFC00000003045489FF00000005138670FE078000F6128A7CF700000000078001020000000600000009000000090000000400000002135D44F705000102135D44F9050000FA000000050000000600000001135D80F900000001050000FA135D80FB0000000200000009135D44FB04548A0700000005000000090000000200000000000000040000000312073CFC0000000308A912FF12073CFE00000004050000F6135D80F7000000000500010200000006135D80F900000001050000FA000000060000000700000007120700FE050000F6135D80F70000000005000102135D44F9050000FA00000009135D44FB0CFD9C070F34D0FC0000000600000003000000070000000200000001135D80F900000001050000FA00000009135D44FB0CFD9C070F34D0FC045489FF0000000900000009000000030000000900000002135D44F705000102000000070000000900000000000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF0000000700000007000000070000000200000001"
theorem small_1000823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1000823_left_root small_1000823_left_fuel small_1000823_left_count small_1000823_left_encoded = true := by
  decide +kernel
theorem small_1000823_left_covered : CoveredBy scale carrier boxes small_1000823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1000823_left_root small_1000823_left_fuel small_1000823_left_count small_1000823_left_encoded small_1000823_left_checked

theorem cover_1000823 : CoveredBy scale carrier boxes root_1000823 := by
  apply coveredBy_split_literal root_1000823 small_1000823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1001473 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1000823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1001473
#print axioms cover_1000823

def root_1000818 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1000818_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1000818_right_fuel : Nat := 1
def small_1000818_right_count : Nat := 1
def small_1000818_right_encoded : String := "00000000"
theorem small_1000818_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1000818_right_root small_1000818_right_fuel small_1000818_right_count small_1000818_right_encoded = true := by
  decide +kernel
theorem small_1000818_right_covered : CoveredBy scale carrier boxes small_1000818_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1000818_right_root small_1000818_right_fuel small_1000818_right_count small_1000818_right_encoded small_1000818_right_checked

theorem cover_1000818 : CoveredBy scale carrier boxes root_1000818 := by
  apply coveredBy_split_literal root_1000818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1000823 small_1000818_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1000823
  · exact small_1000818_right_covered
#print axioms cover_1000818

def root_987442 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_987442 : CoveredBy scale carrier boxes root_987442 := by
  apply coveredBy_split_literal root_987442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_987443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1000818 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_987443
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1000818
#print axioms cover_987442

def root_1006782 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1006782 : CoveredBy scale carrier boxes root_1006782 := by
  apply coveredBy_split_literal root_1006782 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0382.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0383.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0382.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0383.covered
#print axioms cover_1006782

def root_1006776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006776_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006776_left_fuel : Nat := 1
def small_1006776_left_count : Nat := 1
def small_1006776_left_encoded : String := "00000000"
theorem small_1006776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006776_left_root small_1006776_left_fuel small_1006776_left_count small_1006776_left_encoded = true := by
  decide +kernel
theorem small_1006776_left_covered : CoveredBy scale carrier boxes small_1006776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006776_left_root small_1006776_left_fuel small_1006776_left_count small_1006776_left_encoded small_1006776_left_checked

theorem cover_1006776 : CoveredBy scale carrier boxes root_1006776 := by
  apply coveredBy_split_literal root_1006776 small_1006776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006782 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1006776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006782
#print axioms cover_1006776

def root_1006775 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006775_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006775_right_fuel : Nat := 23
def small_1006775_right_count : Nat := 205
def small_1006775_right_encoded : String := "120700F608A91307120700FC08A91309120700FE05000102135D44F9050000FA00000006135D44FB045489F71386ACF60000000004548A07000000061386ACFC0000000304548A0900000006000000070000000600000002000000010000000700000004000000070000000312073CFC0000000308A91309120700FE05000102135D44F9050000FA135D80FB00000002045489F71386ACF6000000000CFD9C070F34D0FC04548A09000000061386ACFE00000004028001020000000600000007000000030F350CFC0000000304548A09138670FE0000000A000000041386ACFE000000040C9A86FC0F878D0702800102000000060000000A000000030000000A138670F60CFD9C07000000060000000A00000000135D44FB045489F71386ACF6000000000CFD9C070F34D0FC04548A09000000081386ACFE000000040280010213D7B0F9000000080000000100000007000000030F350CFC0000000304548A09000000081386ACFE000000040C9A86FC0000000800000005138670F600000008000000000000000200000001135D80F900000001050000FA135D80FB00000002045489F71386ACF6000000000CFD9C070000000A0F350CFC000000030000000A0000000A135D44FB045489F71386ACF6000000000CFD9C070000000A0F350CFC000000030000000A0000000A000000020000000412073CFE0000000405000102135D44F9050000FA135D80FB00000002045489F71386ACF6000000000CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070280010213D7B0F9078000FA128A7CFB00000002067ECE77000000090000000500000005000000010000000500000003000000050000000400000005138670F60CFD9C07000000070F350CFC000000030000000500000000135D44FB045489F71386ACF6000000000CFD9C070F34D0FC0CFD9C090F34D0FE0000000700000004000000050000000300000005138670F60CFD9C070000000700000005000000000000000200000001135D80F900000001050000FA135D80FB00000002045489F71386ACF6000000000CFD9C070000000700000005000000050000000500000000"
theorem small_1006775_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006775_right_root small_1006775_right_fuel small_1006775_right_count small_1006775_right_encoded = true := by
  decide +kernel
theorem small_1006775_right_covered : CoveredBy scale carrier boxes small_1006775_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006775_right_root small_1006775_right_fuel small_1006775_right_count small_1006775_right_encoded small_1006775_right_checked

theorem cover_1006775 : CoveredBy scale carrier boxes root_1006775 := by
  apply coveredBy_split_literal root_1006775 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006776 small_1006775_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006776
  · exact small_1006775_right_covered
#print axioms cover_1006775

def root_1006770 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006770_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006770_right_fuel : Nat := 1
def small_1006770_right_count : Nat := 1
def small_1006770_right_encoded : String := "00000004"
theorem small_1006770_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006770_right_root small_1006770_right_fuel small_1006770_right_count small_1006770_right_encoded = true := by
  decide +kernel
theorem small_1006770_right_covered : CoveredBy scale carrier boxes small_1006770_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006770_right_root small_1006770_right_fuel small_1006770_right_count small_1006770_right_encoded small_1006770_right_checked

theorem cover_1006770 : CoveredBy scale carrier boxes root_1006770 := by
  apply coveredBy_split_literal root_1006770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006775 small_1006770_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006775
  · exact small_1006770_right_covered
#print axioms cover_1006770

def root_1006769 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006769_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006769_right_fuel : Nat := 13
def small_1006769_right_count : Nat := 41
def small_1006769_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A91307120700FC05000102135D44F9050000FA135D80FB00000002050000FE00000008135D45090000000400000008135D44FB050000FE135D81090CFD9BF7000000080000000500000004000000050000000200000001135D80F900000001050000FA00000007000000050000000312073CFC0000000300000005120700F608A91307000000070000000500000000"
theorem small_1006769_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006769_right_root small_1006769_right_fuel small_1006769_right_count small_1006769_right_encoded = true := by
  decide +kernel
theorem small_1006769_right_covered : CoveredBy scale carrier boxes small_1006769_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006769_right_root small_1006769_right_fuel small_1006769_right_count small_1006769_right_encoded small_1006769_right_checked

theorem cover_1006769 : CoveredBy scale carrier boxes root_1006769 := by
  apply coveredBy_split_literal root_1006769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006770 small_1006769_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006770
  · exact small_1006769_right_covered
#print axioms cover_1006769

def root_1006764 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006764_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006764_right_fuel : Nat := 1
def small_1006764_right_count : Nat := 1
def small_1006764_right_encoded : String := "00000003"
theorem small_1006764_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006764_right_root small_1006764_right_fuel small_1006764_right_count small_1006764_right_encoded = true := by
  decide +kernel
theorem small_1006764_right_covered : CoveredBy scale carrier boxes small_1006764_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006764_right_root small_1006764_right_fuel small_1006764_right_count small_1006764_right_encoded small_1006764_right_checked

theorem cover_1006764 : CoveredBy scale carrier boxes root_1006764 := by
  apply coveredBy_split_literal root_1006764 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006769 small_1006764_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006769
  · exact small_1006764_right_covered
#print axioms cover_1006764

def root_1006763 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006763_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006763_right_fuel : Nat := 15
def small_1006763_right_count : Nat := 57
def small_1006763_right_encoded : String := "1151E907000000030A0000FE1152250908A912F712073CF60000000008A91309120700FE05000102135D44F9050000FA00000009135D44FB050000FC135D81070CFD9BF7000000090000000500000003000000050000000200000001135D80F900000001050000FA00000009000000050000000412073CFE0000000400000005120700F608A91309120700FE05000102135D44F9050000FA135D80FB00000002050000FC135D8107045489F70000000A000000050000000300000005000000050000000100000005000000040000000500000000000000041151E9090000000400000005"
theorem small_1006763_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006763_right_root small_1006763_right_fuel small_1006763_right_count small_1006763_right_encoded = true := by
  decide +kernel
theorem small_1006763_right_covered : CoveredBy scale carrier boxes small_1006763_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006763_right_root small_1006763_right_fuel small_1006763_right_count small_1006763_right_encoded small_1006763_right_checked

theorem cover_1006763 : CoveredBy scale carrier boxes root_1006763 := by
  apply coveredBy_split_literal root_1006763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006764 small_1006763_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006764
  · exact small_1006763_right_covered
#print axioms cover_1006763

def root_1006758 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006758_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1006758_right_fuel : Nat := 1
def small_1006758_right_count : Nat := 1
def small_1006758_right_encoded : String := "00000002"
theorem small_1006758_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1006758_right_root small_1006758_right_fuel small_1006758_right_count small_1006758_right_encoded = true := by
  decide +kernel
theorem small_1006758_right_covered : CoveredBy scale carrier boxes small_1006758_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1006758_right_root small_1006758_right_fuel small_1006758_right_count small_1006758_right_encoded small_1006758_right_checked

theorem cover_1006758 : CoveredBy scale carrier boxes root_1006758 := by
  apply coveredBy_split_literal root_1006758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006763 small_1006758_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006763
  · exact small_1006758_right_covered
#print axioms cover_1006758

def root_1004814 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1004814 : CoveredBy scale carrier boxes root_1004814 := by
  apply coveredBy_split_literal root_1004814 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0381.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1006758 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0381.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1006758
#print axioms cover_1004814

def root_1004809 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1004809_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1004809_right_fuel : Nat := 1
def small_1004809_right_count : Nat := 1
def small_1004809_right_encoded : String := "00000001"
theorem small_1004809_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1004809_right_root small_1004809_right_fuel small_1004809_right_count small_1004809_right_encoded = true := by
  decide +kernel
theorem small_1004809_right_covered : CoveredBy scale carrier boxes small_1004809_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1004809_right_root small_1004809_right_fuel small_1004809_right_count small_1004809_right_encoded small_1004809_right_checked

theorem cover_1004809 : CoveredBy scale carrier boxes root_1004809 := by
  apply coveredBy_split_literal root_1004809 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1004814 small_1004809_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1004814
  · exact small_1004809_right_covered
#print axioms cover_1004809

def root_1004808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1004808 : CoveredBy scale carrier boxes root_1004808 := by
  apply coveredBy_split_literal root_1004808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1004809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0384.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1004809
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0384.covered
#print axioms cover_1004808

def root_1004802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1004802_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1004802_left_fuel : Nat := 1
def small_1004802_left_count : Nat := 1
def small_1004802_left_encoded : String := "00000000"
theorem small_1004802_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1004802_left_root small_1004802_left_fuel small_1004802_left_count small_1004802_left_encoded = true := by
  decide +kernel
theorem small_1004802_left_covered : CoveredBy scale carrier boxes small_1004802_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1004802_left_root small_1004802_left_fuel small_1004802_left_count small_1004802_left_encoded small_1004802_left_checked

theorem cover_1004802 : CoveredBy scale carrier boxes root_1004802 := by
  apply coveredBy_split_literal root_1004802 small_1004802_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1004808 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1004802_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1004808
#print axioms cover_1004802

def root_1004801 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1004801 : CoveredBy scale carrier boxes root_1004801 := by
  apply coveredBy_split_literal root_1004801 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1004802 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0385.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1004802
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0385.covered
#print axioms cover_1004801

def root_987441 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_987441 : CoveredBy scale carrier boxes root_987441 := by
  apply coveredBy_split_literal root_987441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_987442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1004801 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_987442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1004801
#print axioms cover_987441

def root_1014640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1014640 : CoveredBy scale carrier boxes root_1014640 := by
  apply coveredBy_split_literal root_1014640 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0386.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0387.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0386.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0387.covered
#print axioms cover_1014640

def root_987440 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_987440 : CoveredBy scale carrier boxes root_987440 := by
  apply coveredBy_split_literal root_987440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_987441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1014640 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_987441
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1014640
#print axioms cover_987440

def root_948358 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948358 : CoveredBy scale carrier boxes root_948358 := by
  apply coveredBy_split_literal root_948358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_948359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_987440 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_948359
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_987440
#print axioms cover_948358

def root_1018987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1018987 : CoveredBy scale carrier boxes root_1018987 := by
  apply coveredBy_split_literal root_1018987 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0388.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0389.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0388.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0389.covered
#print axioms cover_1018987

def root_1018981 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1018981_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1018981_left_fuel : Nat := 1
def small_1018981_left_count : Nat := 1
def small_1018981_left_encoded : String := "00000000"
theorem small_1018981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1018981_left_root small_1018981_left_fuel small_1018981_left_count small_1018981_left_encoded = true := by
  decide +kernel
theorem small_1018981_left_covered : CoveredBy scale carrier boxes small_1018981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1018981_left_root small_1018981_left_fuel small_1018981_left_count small_1018981_left_encoded small_1018981_left_checked

theorem cover_1018981 : CoveredBy scale carrier boxes root_1018981 := by
  apply coveredBy_split_literal root_1018981 small_1018981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1018987 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1018981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1018987
#print axioms cover_1018981

def root_1018980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1018980_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1018980_right_fuel : Nat := 29
def small_1018980_right_count : Nat := 375
def small_1018980_right_encoded : String := "1151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000300000006120700FA00000008000000021151E8FF00000005000000041151E8FB000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF000000050000000A0000000200000001120701020000000108A912FB12073CFA0000000208A912FF00000005120700FE0000000A00000004120700FA08A912FF12073CFE00000004050000F6135D80F70000000005000106135D44FD045489F9000000051386710200000001045489FB00000005138670FA0CFD9BFF000000050000000A0000000200000003135D80FD00000003045489F91386AD02045489FB00000005138670FA0CFD9BFF000000050000000A00000002000000011386710200000001045489FB1386ACFA000000020CFD9BFF0000000500000006138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F600000008000000080F8750FF00000005000000040F34D0FE000000080000000400000002135D44F7050001060000000A135D80FD00000003045489F9000000051386710200000001045489FB00000005138670FA0CFD9BFF000000050000000A0000000200000000120700FE0000000A00000004000000021151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD12073D0608A912FF00000005000000060000000300000006120700FA08A912FD12073D0608A912FF12073CFE00000004050000F6135D80F7000000000CFD9BF90000000800000008135D44F70CFD9BF9000000050000000800000000120700FE0000000800000004000000031207010600000003000000060000000200000001120701020000000108A912FB12073CFA0000000208A912FD12073D0608A912FF00000008120700FE00000008000000040000000300000008120700FA08A912FD12073D0608A912FF12073CFE00000004050000F6135D80F700000000045489F91386AD02045489FB00000006138670FA0000000600000002000000011386710200000001045489FB00000006138670FA0CFD9BFD0F350D060CFD9BFF0000000800000006000000030000000600000002135D44F7045489F91386AD02045489FB0000000800000009000000011386710200000001045489FB00000008138670FA0CFD9BFD0F350D060CFD9BFF000000080000000900000003000000080000000200000000120700FE050000F600000009000000090000000400000003120701060000000308A912FF0000000600000006000000021151E8FF08A912F912073D0208A912FB00000005120700FA08A912FD000000051207010600000003000000080000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000500000006120700FA08A912FD12073D06050000F6135D80F700000000050000FE135D80FF00000004045489F91386AD02045489FB0000000500000006000000011386710200000001045489FB00000006138670FA0CFD9BFD0F350D060C9A87060000000600000005000000030000000600000002135D44FF045489F9000000051386710200000001045489FB00000005138670FA0CFD9BFD00000005000000060000000200000004135D44F7050000FE135D80FF00000004045489F9000000051386710200000001045489FB00000005138670FA0CFD9BFD000000050000000800000002135D44FF0000000500000004000000000000000312070106000000030000000600000002000000041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F912073D0200000006000000011207010200000001000000081151E8FF00000005000000040000000200000000"
theorem small_1018980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1018980_right_root small_1018980_right_fuel small_1018980_right_count small_1018980_right_encoded = true := by
  decide +kernel
theorem small_1018980_right_covered : CoveredBy scale carrier boxes small_1018980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1018980_right_root small_1018980_right_fuel small_1018980_right_count small_1018980_right_encoded small_1018980_right_checked

theorem cover_1018980 : CoveredBy scale carrier boxes root_1018980 := by
  apply coveredBy_split_literal root_1018980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1018981 small_1018980_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1018981
  · exact small_1018980_right_covered
#print axioms cover_1018980

def root_1018979 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1018979 : CoveredBy scale carrier boxes root_1018979 := by
  apply coveredBy_split_literal root_1018979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1018980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0390.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1018980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0390.covered
#print axioms cover_1018979

def root_1025323 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1025323 : CoveredBy scale carrier boxes root_1025323 := by
  apply coveredBy_split_literal root_1025323 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0391.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0392.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0391.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0392.covered
#print axioms cover_1025323

def root_1025317 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025317_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025317_left_fuel : Nat := 1
def small_1025317_left_count : Nat := 1
def small_1025317_left_encoded : String := "00000002"
theorem small_1025317_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1025317_left_root small_1025317_left_fuel small_1025317_left_count small_1025317_left_encoded = true := by
  decide +kernel
theorem small_1025317_left_covered : CoveredBy scale carrier boxes small_1025317_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1025317_left_root small_1025317_left_fuel small_1025317_left_count small_1025317_left_encoded small_1025317_left_checked

theorem cover_1025317 : CoveredBy scale carrier boxes root_1025317 := by
  apply coveredBy_split_literal root_1025317 small_1025317_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1025323 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1025317_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1025323
#print axioms cover_1025317

def root_1025316 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025316_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025316_right_fuel : Nat := 19
def small_1025316_right_count : Nat := 69
def small_1025316_right_encoded : String := "1151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FD00000005120701060000000308A912FF0000000500000008120700F608A912FD12073D0608A912FF00000005120701080000000405000102135D44F9050000FA135D80FB00000002045489F7000000050000000800000005000000010000000500000003120701060000000308A912FF12073D0805000102135D44F9050000FA135D80FB00000002045489F700000005138670F6045489FD0000000500000007000000000000000500000001000000050000000412070108000000040500010200000008000000080000000000000002"
theorem small_1025316_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1025316_right_root small_1025316_right_fuel small_1025316_right_count small_1025316_right_encoded = true := by
  decide +kernel
theorem small_1025316_right_covered : CoveredBy scale carrier boxes small_1025316_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1025316_right_root small_1025316_right_fuel small_1025316_right_count small_1025316_right_encoded small_1025316_right_checked

theorem cover_1025316 : CoveredBy scale carrier boxes root_1025316 := by
  apply coveredBy_split_literal root_1025316 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1025317 small_1025316_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1025317
  · exact small_1025316_right_covered
#print axioms cover_1025316

def root_1025311 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025311_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1025311_right_fuel : Nat := 1
def small_1025311_right_count : Nat := 1
def small_1025311_right_encoded : String := "00000001"
theorem small_1025311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1025311_right_root small_1025311_right_fuel small_1025311_right_count small_1025311_right_encoded = true := by
  decide +kernel
theorem small_1025311_right_covered : CoveredBy scale carrier boxes small_1025311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1025311_right_root small_1025311_right_fuel small_1025311_right_count small_1025311_right_encoded small_1025311_right_checked

theorem cover_1025311 : CoveredBy scale carrier boxes root_1025311 := by
  apply coveredBy_split_literal root_1025311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1025316 small_1025311_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1025316
  · exact small_1025311_right_covered
#print axioms cover_1025311

def root_1042515 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1042515 : CoveredBy scale carrier boxes root_1042515 := by
  apply coveredBy_split_literal root_1042515 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0398.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0399.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0398.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0399.covered
#print axioms cover_1042515

def root_1042509 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1042509_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1042509_left_fuel : Nat := 1
def small_1042509_left_count : Nat := 1
def small_1042509_left_encoded : String := "00000004"
theorem small_1042509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1042509_left_root small_1042509_left_fuel small_1042509_left_count small_1042509_left_encoded = true := by
  decide +kernel
theorem small_1042509_left_covered : CoveredBy scale carrier boxes small_1042509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1042509_left_root small_1042509_left_fuel small_1042509_left_count small_1042509_left_encoded small_1042509_left_checked

theorem cover_1042509 : CoveredBy scale carrier boxes root_1042509 := by
  apply coveredBy_split_literal root_1042509 small_1042509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1042515 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_1042509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1042515
#print axioms cover_1042509

def root_1041903 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1041903_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1041903_left_fuel : Nat := 26
def small_1041903_left_count : Nat := 285
def small_1041903_left_encoded : String := "13E201080DE7CA020E5FD8F90DE7CA060E5FD8FD0569AC37134110F6000000000569AC3B000000051340D4FA033F67BF0000000513BBF508000000040D412882000000070EFA4CF9000000010D4128860EFA10FD000000050000000300000005000000021340D4F60569AC3B134110FA00000002033F67BF0000000513BBF508000000040D4128820EFA10F90D4128860000000900000005000000010EFA4CF900000001000000091340D4FA033F67BF13BC31080D4128820EFA10F90D4128860EFA10FD000000050000000300000007000000010EFA4CF900000001000000090000000413BBF508000000040D4128820EFA10F90D4128860EFA10FD04DF1B171365F0F60000000004DF1B1B00000005000000071365B4F604DF1B1B1365F0FA00000002000000091365B4FA02B4D69F0000000713D0D108000000040CEDD7C20F422CF900000006000000010F4268F9000000010CEDD7C6000000080F4268FD00000003000000070000000200000000000000030EFA4CFD0000000304DF1B17000000071365B4F604DF1B1B000000060000000700000000000000010EFA4CF9000000010D4128860EFA10FD04DF1B171365F0F60000000004DF1B1B000000050000000800000009000000030EFA4CFD0000000304DF1B171365F0F60000000004DF1B1B1365F0FA0000000200000005000000071365B4F604DF1B1B000000091365B4FA02B4D69F0000000713D0D108000000040D947942000000070000000900000002000000000000000200000000000000030E6014FD000000030569AC37134110F600000000000000071340D4F60569AC3B134110FA00000002033F67BF0000000713BBF508000000040DAED87D0E9661060D412882000000070EFA4CF90000000104DF1B170000000500000009000000030E96250600000003000000071340D4FA033F67BF0000000713BBF50800000004000000070000000200000000000000010E6014F9000000010DE7CA060E5FD8FD0569AC37134110F6000000000569AC3B000000091340D4FA033F67BF0000000913BBF508000000040DAED8790E9661020D412886000000090EFA4CFD0000000305F43D57000000051317BCF604DF1B1B000000050000000700000000000000010E9625020000000100000009000000021340D4F60569AC3B000000091340D4FA033F67BF0000000913BBF50800000004000000090000000200000000000000030E6014FD000000030569AC37134110F6000000000569AC3B134110FA00000002033F67BF0000000513BBF508000000040DAED879000000050E96250200000001000000051340D4FA033F67BF0000000713BBF5080000000400000007000000021340D4F60569AC3B134110FA00000002033F67BF0000000913BBF50800000004000000091340D4FA033F67BF13BC31080DAED8790E9661020000000700000001000000090000000413BBF508000000040DAED8790E9661020DAED87D0E96610604DF1B1700000007000000090000000300000007000000010E962502000000010DAED87D0E966106000000090000000300000009000000020000000000000004"
theorem small_1041903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1041903_left_root small_1041903_left_fuel small_1041903_left_count small_1041903_left_encoded = true := by
  decide +kernel
theorem small_1041903_left_covered : CoveredBy scale carrier boxes small_1041903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1041903_left_root small_1041903_left_fuel small_1041903_left_count small_1041903_left_encoded small_1041903_left_checked

theorem cover_1041903 : CoveredBy scale carrier boxes root_1041903 := by
  apply coveredBy_split_literal root_1041903 small_1041903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1042509 coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1041903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1042509
#print axioms cover_1041903

def root_1041898 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1041898_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1041898_right_fuel : Nat := 1
def small_1041898_right_count : Nat := 1
def small_1041898_right_encoded : String := "00000002"
theorem small_1041898_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1041898_right_root small_1041898_right_fuel small_1041898_right_count small_1041898_right_encoded = true := by
  decide +kernel
theorem small_1041898_right_covered : CoveredBy scale carrier boxes small_1041898_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1041898_right_root small_1041898_right_fuel small_1041898_right_count small_1041898_right_encoded small_1041898_right_checked

theorem cover_1041898 : CoveredBy scale carrier boxes root_1041898 := by
  apply coveredBy_split_literal root_1041898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.root_1041903 small_1041898_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024.cover_1041903
  · exact small_1041898_right_covered
#print axioms cover_1041898

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0024
