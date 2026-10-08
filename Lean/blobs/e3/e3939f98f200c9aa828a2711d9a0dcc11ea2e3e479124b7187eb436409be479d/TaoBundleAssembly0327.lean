import TaoBundleAssembly0326
import TaoBundleChunkBatch0429
import TaoBundleChunkBatch0430
import TaoBundleChunkBatch0431
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327
def root_4578346 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578346_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578346_right_fuel : Nat := 21
def small_4578346_right_count : Nat := 193
def small_4578346_right_encoded : String := "1151E8FF08A91303120701020000000108A913050000000512073CFA0000000208A913070000000512073CFC00000003050000F6135D81010000000500000000135D450100000000050000FE00000005135D44FF000000050000000412073D0208A91305120700FA08A913070000000512073CFC00000003050000F6135D8101050000FE135D80FF000000040CFD9C030F34D10200000001000000050000000A0000000A00000000135D450100000000050000FE135D80FF000000040CFD9C03000000050F350D0204548A05000000050000000A00000001135D44FF00000005000000040000000212073CFA0000000208A91307120700FC050000F6135D8101050000FE135D80FF000000040CFD9C030F34D10200000001000000050F350D020CFD9C050F34D0FA00000009000000020000000900000001135D44FF0CFD9C03000000050F350D020CFD9C050000000500000009000000010000000400000000135D450100000000050000FE135D80FF000000040CFD9C03000000050F350D020000000600000001135D44FF00000005000000040000000312073CFC00000003050000F6135D8101050000FE135D80FF000000040CFD9C030F34D102000000010000000A0F350D020CFD9C050F34D0FA0000000A000000020000000A00000001135D44FF0CFD9C030F34D102000000010000000A0000000A0000000400000000135D450100000000050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050000000A0F350D020CFD9C050F34D0FA0CFD9C070F34D0FC0000000A000000030000000A000000020F350CFA000000020CFD9C070F34D0FC0C9A8702000000060F878D030C9A86FA000000060000000600000001000000030F350CFC000000030000000700000001135D44FF0CFD9C030F34D102000000010CFD9C05000000050000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D0FC0C9A8702000000060000000A000000030000000700000001000000040000000100000004"
theorem small_4578346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578346_right_root small_4578346_right_fuel small_4578346_right_count small_4578346_right_encoded = true := by
  decide +kernel
theorem small_4578346_right_covered : CoveredBy scale carrier boxes small_4578346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578346_right_root small_4578346_right_fuel small_4578346_right_count small_4578346_right_encoded small_4578346_right_checked

theorem cover_4578346 : CoveredBy scale carrier boxes root_4578346 := by
  apply coveredBy_split_literal root_4578346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4578347 small_4578346_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4578347
  · exact small_4578346_right_covered
#print axioms cover_4578346

def root_4578341 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578341_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578341_right_fuel : Nat := 1
def small_4578341_right_count : Nat := 1
def small_4578341_right_encoded : String := "00000003"
theorem small_4578341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578341_right_root small_4578341_right_fuel small_4578341_right_count small_4578341_right_encoded = true := by
  decide +kernel
theorem small_4578341_right_covered : CoveredBy scale carrier boxes small_4578341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578341_right_root small_4578341_right_fuel small_4578341_right_count small_4578341_right_encoded small_4578341_right_checked

theorem cover_4578341 : CoveredBy scale carrier boxes root_4578341 := by
  apply coveredBy_split_literal root_4578341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578346 small_4578341_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578346
  · exact small_4578341_right_covered
#print axioms cover_4578341

def root_4578340 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4578340 : CoveredBy scale carrier boxes root_4578340 := by
  apply coveredBy_split_literal root_4578340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1718.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1718.covered
#print axioms cover_4578340

def root_4578335 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578335_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578335_right_fuel : Nat := 1
def small_4578335_right_count : Nat := 1
def small_4578335_right_encoded : String := "00000002"
theorem small_4578335_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578335_right_root small_4578335_right_fuel small_4578335_right_count small_4578335_right_encoded = true := by
  decide +kernel
theorem small_4578335_right_covered : CoveredBy scale carrier boxes small_4578335_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578335_right_root small_4578335_right_fuel small_4578335_right_count small_4578335_right_encoded small_4578335_right_checked

theorem cover_4578335 : CoveredBy scale carrier boxes root_4578335 := by
  apply coveredBy_split_literal root_4578335 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578340 small_4578335_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578340
  · exact small_4578335_right_covered
#print axioms cover_4578335

def root_4578334 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578334_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578334_right_fuel : Nat := 29
def small_4578334_right_count : Nat := 477
def small_4578334_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A91303120701020000000108A91307120700FC08A912FF12073CFE00000004050000F600000009135D450100000000050000FA0000000900000009000000090000000312073CFC0000000308A912FF12073CFE00000004050000F6135D8101050000FA135D810504548A0313867102000000010CFD9C07000000090F350CFC00000003000000091386AD020000000900000001000000020000000900000000135D450100000000050000FA135D810504548A0313867102000000010CFD9C070F34D0FC0CFD9BFF0000000500000009000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC000000080F87510700000003000000080F34D0FE00000009000000041386AD020CFD9C070F34D0FC0CFD9BFF0F350CFE000000040000000900000009000000030F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878D07000000090000000300000009000000090000000100000002135D45050000000204548A0313867102000000010CFD9C07000000090F350CFC00000003000000091386AD020000000900000001120700FE050000F6135D8101050000FA135D810500000009000000020000000900000000135D450100000000050000FA135D810504548A0313867102000000010CFD9C07000000090F350CFC00000003045489FF00000009000000090000000900000002000000090000000412073D0208A91307120700FC08A912FF12073CFE00000004050000F600000009135D450100000000050000FA0000000900000009000000090000000312073CFC0000000308A912FF12073CFE00000004050000F6135D8101050000FA135D81050CFD9C030000000900000009000000020000000900000000135D450100000000050000FA135D81050CFD9C030F34D102000000010CFD9C07000000090F350CFC000000030CFD9BFF0F350CFE0000000400000007000000090F350D020CFD9C07000000090F350CFC00000003000000090000000100000002135D4505000000020CFD9C030000000900000009120700FE0000000900000004000000011151E8FF08A91303120701020000000108A91307120700FC000000050000000312073CFC00000003050000F6135D8101050000FA135D8105050000FE0000000900000009000000020000000900000000135D450100000000050000FA135D8105050000FE135D80FF0000000404548A03000000051386AD020CFD9C07000000050F350CFC000000030000000700000001135D44FF04548A03000000051386AD0200000009000000010000000400000002135D450500000002050000FE135D80FF00000004000000090000000912073D0208A91307120700FC050000F600000009135D450100000000050000FA135D8105050000FE000000060000000900000002135D450500000002000000090000000312073CFC00000003050000F6135D8101050000FA135D8105050000FE0000000700000009000000020000000700000000135D450100000000050000FA135D8105050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C07000000070000000700000007135D44FF0CFD9C0300000009000000070000000400000002000000070000000100000004000000031151E907000000030A0000FE115224FF0000000408A91303120701020000000108A912FF12073CFE00000004050000F6135D8101050000FA0000000A0000000700000000135D450100000000050000FA135D8105050000FC135D810704548A0313867102000000010CFD9BFF0000000A0F34D0FE028000F60000000A13D7B10100000000078000FA0000000A00000007000000040000000A000000030000000700000002135D45050000000200000007120700FE050000F6135D8101050000FA135D8105050000FC135D810704548A031386710200000001045489FF1386ACFE00000004078000F600000009128A41010000000000000009138670FE078000F6128A7D01078000FA128A7D0500000009000000020000000900000000128A410100000000078000FA128A7D05000000090000000200000009000000041386AD02045489FF00000009000000050000000100000003135D45070000000304548A031386710200000001045489FF00000007000000050000000500000002135D450500000002050000FC000000090000000700000000135D450100000000050000FA135D8105050000FC135D810704548A031386710200000001045489FF1386ACFE00000004028000F613D7ED01078000FA128A7D05078000FC000000090000000A00000002000000090000000013D7B10100000000078000FA128A7D05078000FC128A7D07022A458313E1C50200000001067ECE7F000000080000000900000009000000030000000A0000000200000009000000050000000500000003135D45070000000304548A031386710200000001045489FF00000007000000050000000500000002135D450500000002050000FC00000009000000070000000412073D0208A912FF12073CFE00000004050000F6000000070000000700000005000000011151E8FF08A9130312070102000000010000000A0000000700000004"
theorem small_4578334_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578334_right_root small_4578334_right_fuel small_4578334_right_count small_4578334_right_encoded = true := by
  decide +kernel
theorem small_4578334_right_covered : CoveredBy scale carrier boxes small_4578334_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578334_right_root small_4578334_right_fuel small_4578334_right_count small_4578334_right_encoded small_4578334_right_checked

theorem cover_4578334 : CoveredBy scale carrier boxes root_4578334 := by
  apply coveredBy_split_literal root_4578334 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578335 small_4578334_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578335
  · exact small_4578334_right_covered
#print axioms cover_4578334

def root_4578329 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578329_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4578329_right_fuel : Nat := 1
def small_4578329_right_count : Nat := 1
def small_4578329_right_encoded : String := "00000001"
theorem small_4578329_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4578329_right_root small_4578329_right_fuel small_4578329_right_count small_4578329_right_encoded = true := by
  decide +kernel
theorem small_4578329_right_covered : CoveredBy scale carrier boxes small_4578329_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4578329_right_root small_4578329_right_fuel small_4578329_right_count small_4578329_right_encoded small_4578329_right_checked

theorem cover_4578329 : CoveredBy scale carrier boxes root_4578329 := by
  apply coveredBy_split_literal root_4578329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578334 small_4578329_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578334
  · exact small_4578329_right_covered
#print axioms cover_4578329

def root_4577093 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4577093 : CoveredBy scale carrier boxes root_4577093 := by
  apply coveredBy_split_literal root_4577093 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1715.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4578329 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1715.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4578329
#print axioms cover_4577093

def root_4577087 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4577087_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4577087_left_fuel : Nat := 1
def small_4577087_left_count : Nat := 1
def small_4577087_left_encoded : String := "00000000"
theorem small_4577087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4577087_left_root small_4577087_left_fuel small_4577087_left_count small_4577087_left_encoded = true := by
  decide +kernel
theorem small_4577087_left_covered : CoveredBy scale carrier boxes small_4577087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4577087_left_root small_4577087_left_fuel small_4577087_left_count small_4577087_left_encoded small_4577087_left_checked

theorem cover_4577087 : CoveredBy scale carrier boxes root_4577087 := by
  apply coveredBy_split_literal root_4577087 small_4577087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4577093 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4577087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4577093
#print axioms cover_4577087

def root_4568949 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4568949 : CoveredBy scale carrier boxes root_4568949 := by
  apply coveredBy_split_literal root_4568949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.root_4568950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4577087 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0326.cover_4568950
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4577087
#print axioms cover_4568949

def root_4586741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586741 : CoveredBy scale carrier boxes root_4586741 := by
  apply coveredBy_split_literal root_4586741 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1719.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1720.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1719.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1720.covered
#print axioms cover_4586741

def root_4586735 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586735_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586735_left_fuel : Nat := 1
def small_4586735_left_count : Nat := 1
def small_4586735_left_encoded : String := "00000003"
theorem small_4586735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586735_left_root small_4586735_left_fuel small_4586735_left_count small_4586735_left_encoded = true := by
  decide +kernel
theorem small_4586735_left_covered : CoveredBy scale carrier boxes small_4586735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586735_left_root small_4586735_left_fuel small_4586735_left_count small_4586735_left_encoded small_4586735_left_checked

theorem cover_4586735 : CoveredBy scale carrier boxes root_4586735 := by
  apply coveredBy_split_literal root_4586735 small_4586735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586741 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4586735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586741
#print axioms cover_4586735

def root_4586567 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586567_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586567_left_fuel : Nat := 15
def small_4586567_left_count : Nat := 83
def small_4586567_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA0F878D05022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13CFC00000003022A4589000000050000000713E201020AD357870000000710D13CFC00000003022A458913E1C4FE0DE7C9FA00000007000000050000000400000007000000010000000000000007000000020F87510500000002022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13CFC000000030000000513E201020AD357870000000600000006000000010000000013E200F600000000022A458313E1C502000000010AD357870000000710D13CFC00000003022A4589000000050000000700000009000000041386ACFE000000040C9A86FA000000070F87510500000002022A458113E1C4F6022A45830000000A13E201020AD35787000000060000000600000001000000000000000700000003"
theorem small_4586567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586567_left_root small_4586567_left_fuel small_4586567_left_count small_4586567_left_encoded = true := by
  decide +kernel
theorem small_4586567_left_covered : CoveredBy scale carrier boxes small_4586567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586567_left_root small_4586567_left_fuel small_4586567_left_count small_4586567_left_encoded small_4586567_left_checked

theorem cover_4586567 : CoveredBy scale carrier boxes root_4586567 := by
  apply coveredBy_split_literal root_4586567 small_4586567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586735 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4586567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586735
#print axioms cover_4586567

def root_4586561 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586561_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586561_left_fuel : Nat := 1
def small_4586561_left_count : Nat := 1
def small_4586561_left_encoded : String := "00000002"
theorem small_4586561_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586561_left_root small_4586561_left_fuel small_4586561_left_count small_4586561_left_encoded = true := by
  decide +kernel
theorem small_4586561_left_covered : CoveredBy scale carrier boxes small_4586561_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586561_left_root small_4586561_left_fuel small_4586561_left_count small_4586561_left_encoded small_4586561_left_checked

theorem cover_4586561 : CoveredBy scale carrier boxes root_4586561 := by
  apply coveredBy_split_literal root_4586561 small_4586561_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586567 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4586561_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586567
#print axioms cover_4586561

def root_4586389 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586389_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586389_left_fuel : Nat := 17
def small_4586389_left_count : Nat := 83
def small_4586389_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE0C9A86FC0F878D07022A458113E1C4F6022A458313E1C502000000010AD357850000000510D13CFA00000002022A4589000000050000000713E201020AD357850000000710D13CFA00000002022A458913E1C4FE0DE7C9FC00000007000000050000000400000007000000010000000000000007000000030F87510700000003022A458113E1C4F6022A458313E1C502000000010AD357850000000510D13CFA0000000200000005000000080000000013E200F600000000022A458313E1C502000000010AD357850000000710D13CFA00000002022A4589000000050000000713E201020AD357850000000710D13CFA00000002022A45890000000A0000000700000001000000041386ACFE000000040C9A86FC000000070F875107000000030000000800000002"
theorem small_4586389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586389_left_root small_4586389_left_fuel small_4586389_left_count small_4586389_left_encoded = true := by
  decide +kernel
theorem small_4586389_left_covered : CoveredBy scale carrier boxes small_4586389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586389_left_root small_4586389_left_fuel small_4586389_left_count small_4586389_left_encoded small_4586389_left_checked

theorem cover_4586389 : CoveredBy scale carrier boxes root_4586389 := by
  apply coveredBy_split_literal root_4586389 small_4586389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586561 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4586389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586561
#print axioms cover_4586389

def root_4586383 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586383_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586383_left_fuel : Nat := 1
def small_4586383_left_count : Nat := 1
def small_4586383_left_encoded : String := "00000001"
theorem small_4586383_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586383_left_root small_4586383_left_fuel small_4586383_left_count small_4586383_left_encoded = true := by
  decide +kernel
theorem small_4586383_left_covered : CoveredBy scale carrier boxes small_4586383_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586383_left_root small_4586383_left_fuel small_4586383_left_count small_4586383_left_encoded small_4586383_left_checked

theorem cover_4586383 : CoveredBy scale carrier boxes root_4586383 := by
  apply coveredBy_split_literal root_4586383 small_4586383_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586389 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4586383_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586389
#print axioms cover_4586383

def root_4586382 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586382_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586382_right_fuel : Nat := 26
def small_4586382_right_count : Nat := 433
def small_4586382_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE0C9A86FC0F878D07022A458113E1C4F6067ECE8312EA5902000000010AD357850000000710D13CFA00000002022A458913E1C4FE000000080000000400000007000000080000000013E200F600000000067ECE8312EA5902000000010000000700000008000000030F87510700000003000000080000000400000008000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D05022A458113E1C4F6067ECE8312EA5902000000010AD357870000000710D13CFC00000003022A45890000000900000007000000090000000000000009000000020F8751050000000200000009000000041386ACFE000000040C9A86FA0F878D0500000007000000020F87510500000002022A458113E1C4F6067ECE8312EA59020000000100000006000000060000000000000009000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001022A458913E1C4FE0DE7C9FA0E6015050DE7C9FC0E6015070115234113F858F60569AC4300000005000000060000000000000009000000030E5FD9070000000300000008000000020E5FD905000000020DE7C9FC000000060E5FD9070000000301152341000000060000000A0000000413E200FE000000040DE7C9FA0E60150500000008000000020E5FD905000000020DE7C9FC000000060E5FD907000000030000000612EA9502022A458913E1C4FE0DE7C9FA0E60150500000008000000020E5FD90500000002000000060000000400000008000000010000000013E200F600000000067ECE8312EA590200000001022A458913E1C4FE0DE7C9FA0E6015050DE7C9FC000000090E5FD907000000030000000A000000020E5FD90500000002000000090000000413E200FE000000040DE7C9FA0E60150500000007000000020E5FD905000000020DE7C9FC000000090E5FD90700000003033F67C1000000080000000812EA9502022A4589000000090000000800000001000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001022A45890000000A00000008000000080000000013E200F600000000067ECE8312EA590200000001022A45890000000A0000000812EA95020000000800000001000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001022A45890000000600000006000000060000000013E200F600000000067ECE8312EA590200000001022A4589000000090000000900000009000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001022A458913E1C4FE0B4D43FA0000000A000000060000000413E200FE000000040B4D43FA10804D050B4D43FC0000000600000008000000020000000612EA9502022A458913E1C4FE0B4D43FA00000006000000060000000400000006000000010000000013E200F600000000067ECE8312EA590200000001022A458913E1C4FE0B4D43FA0000000A10801105000000020B4D43FC000000090000000A0000000413E200FE000000040B4D43FA10804D050B4D43FC10804D07033F67C113BBF4F60569AC431340D5020000000100000006000000060000000000000009000000031080110700000003000000080000000210801105000000020B4D43FC000000061080110700000003033F67C1000000060000000A12EA9502022A45890000000A13E200FE000000040B4D43FA000000080000000900000001000000041386ACFE000000040C9A86FA0F878D050C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001067ECE8912EA58FE000000080000000400000007000000080000000013E200F600000000067ECE8312EA5902000000010000000700000008000000030F8751070000000300000008000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001067ECE890000000600000006000000060000000013E200F600000000067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA10804D050000000900000002000000060000000412EA94FE000000040B4D43FA10804D0500000007000000020000000900000009000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA00000008000000060000000400000008000000080000000013E200F600000000067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA10804D05000000080000000210801105000000020B4D43FC000000060000000800000004000000080000000800000001"
theorem small_4586382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586382_right_root small_4586382_right_fuel small_4586382_right_count small_4586382_right_encoded = true := by
  decide +kernel
theorem small_4586382_right_covered : CoveredBy scale carrier boxes small_4586382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586382_right_root small_4586382_right_fuel small_4586382_right_count small_4586382_right_encoded small_4586382_right_checked

theorem cover_4586382 : CoveredBy scale carrier boxes root_4586382 := by
  apply coveredBy_split_literal root_4586382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586383 small_4586382_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586383
  · exact small_4586382_right_covered
#print axioms cover_4586382

def root_4586377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586377_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586377_right_fuel : Nat := 1
def small_4586377_right_count : Nat := 1
def small_4586377_right_encoded : String := "00000000"
theorem small_4586377_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586377_right_root small_4586377_right_fuel small_4586377_right_count small_4586377_right_encoded = true := by
  decide +kernel
theorem small_4586377_right_covered : CoveredBy scale carrier boxes small_4586377_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586377_right_root small_4586377_right_fuel small_4586377_right_count small_4586377_right_encoded small_4586377_right_checked

theorem cover_4586377 : CoveredBy scale carrier boxes root_4586377 := by
  apply coveredBy_split_literal root_4586377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586382 small_4586377_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586382
  · exact small_4586377_right_covered
#print axioms cover_4586377

def root_4593271 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4593271 : CoveredBy scale carrier boxes root_4593271 := by
  apply coveredBy_split_literal root_4593271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1721.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1722.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1721.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1722.covered
#print axioms cover_4593271

def root_4593265 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593265_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593265_left_fuel : Nat := 1
def small_4593265_left_count : Nat := 1
def small_4593265_left_encoded : String := "00000003"
theorem small_4593265_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593265_left_root small_4593265_left_fuel small_4593265_left_count small_4593265_left_encoded = true := by
  decide +kernel
theorem small_4593265_left_covered : CoveredBy scale carrier boxes small_4593265_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593265_left_root small_4593265_left_fuel small_4593265_left_count small_4593265_left_encoded small_4593265_left_checked

theorem cover_4593265 : CoveredBy scale carrier boxes root_4593265 := by
  apply coveredBy_split_literal root_4593265 small_4593265_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593271 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4593265_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593271
#print axioms cover_4593265

def root_4593241 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593241_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593241_left_fuel : Nat := 6
def small_4593241_left_count : Nat := 11
def small_4593241_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA000000070F8751050000000200000009000000040000000700000003"
theorem small_4593241_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593241_left_root small_4593241_left_fuel small_4593241_left_count small_4593241_left_encoded = true := by
  decide +kernel
theorem small_4593241_left_covered : CoveredBy scale carrier boxes small_4593241_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593241_left_root small_4593241_left_fuel small_4593241_left_count small_4593241_left_encoded small_4593241_left_checked

theorem cover_4593241 : CoveredBy scale carrier boxes root_4593241 := by
  apply coveredBy_split_literal root_4593241 small_4593241_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593265 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4593241_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593265
#print axioms cover_4593241

def root_4593235 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593235_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593235_left_fuel : Nat := 1
def small_4593235_left_count : Nat := 1
def small_4593235_left_encoded : String := "00000002"
theorem small_4593235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593235_left_root small_4593235_left_fuel small_4593235_left_count small_4593235_left_encoded = true := by
  decide +kernel
theorem small_4593235_left_covered : CoveredBy scale carrier boxes small_4593235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593235_left_root small_4593235_left_fuel small_4593235_left_count small_4593235_left_encoded small_4593235_left_checked

theorem cover_4593235 : CoveredBy scale carrier boxes root_4593235 := by
  apply coveredBy_split_literal root_4593235 small_4593235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593241 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4593235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593241
#print axioms cover_4593235

def root_4593171 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593171_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593171_left_fuel : Nat := 15
def small_4593171_left_count : Nat := 31
def small_4593171_left_encoded : String := "0F34D0FA0CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FC000000070F87510700000003067ECE8112EA58F6022A458313E1C502000000010000000713E201020AD357850000000710D13CFA00000002022A45890000000A00000007000000010000000000000007000000040000000700000002"
theorem small_4593171_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593171_left_root small_4593171_left_fuel small_4593171_left_count small_4593171_left_encoded = true := by
  decide +kernel
theorem small_4593171_left_covered : CoveredBy scale carrier boxes small_4593171_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593171_left_root small_4593171_left_fuel small_4593171_left_count small_4593171_left_encoded small_4593171_left_checked

theorem cover_4593171 : CoveredBy scale carrier boxes root_4593171 := by
  apply coveredBy_split_literal root_4593171 small_4593171_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593235 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4593171_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593235
#print axioms cover_4593171

def root_4593165 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593165_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593165_left_fuel : Nat := 1
def small_4593165_left_count : Nat := 1
def small_4593165_left_encoded : String := "00000001"
theorem small_4593165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593165_left_root small_4593165_left_fuel small_4593165_left_count small_4593165_left_encoded = true := by
  decide +kernel
theorem small_4593165_left_covered : CoveredBy scale carrier boxes small_4593165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593165_left_root small_4593165_left_fuel small_4593165_left_count small_4593165_left_encoded small_4593165_left_checked

theorem cover_4593165 : CoveredBy scale carrier boxes root_4593165 := by
  apply coveredBy_split_literal root_4593165 small_4593165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593171 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4593165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593171
#print axioms cover_4593165

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327
