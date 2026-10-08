import TaoBundleAssembly0427
import TaoBundleAssembly0432
import TaoBundleAssembly0433
import TaoBundleAssembly0435
import TaoBundleChunkBatch0592
import TaoBundleChunkBatch0593
import TaoBundleChunkBatch0594
import TaoBundleChunkBatch0595
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436
def root_6272386 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272386_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272386_left_fuel : Nat := 18
def small_6272386_left_count : Nat := 85
def small_6272386_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE000000050000000A115225070A0000FE1152250908A91307120701060000000308A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000000000812073D0608A91309120700FE000000050000000412073CFE000000040500010000000005135D80F700000000050000F800000005135D4503000000010500010400000005135D80FB000000020CFD9C070F34D10600000003000000080000000800000003000000041151E9090000000408A9130712070106000000030000000612073D0605000100135D44F7050000F80000000A135D4503000000010000000A00000000135D80F700000000050000F800000006135D4503000000010500010400000006135D80FB00000002050000FE135D81090CFD9C0700000006000000080000000400000006000000030000000300000002"
theorem small_6272386_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272386_left_root small_6272386_left_fuel small_6272386_left_count small_6272386_left_encoded = true := by
  decide +kernel
theorem small_6272386_left_covered : CoveredBy scale carrier boxes small_6272386_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272386_left_root small_6272386_left_fuel small_6272386_left_count small_6272386_left_encoded small_6272386_left_checked

theorem cover_6272386 : CoveredBy scale carrier boxes root_6272386 := by
  apply coveredBy_split_literal root_6272386 small_6272386_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0435.root_6272568 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6272386_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0435.cover_6272568
#print axioms cover_6272386

def root_6272380 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272380_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6272380_left_fuel : Nat := 1
def small_6272380_left_count : Nat := 1
def small_6272380_left_encoded : String := "00000001"
theorem small_6272380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6272380_left_root small_6272380_left_fuel small_6272380_left_count small_6272380_left_encoded = true := by
  decide +kernel
theorem small_6272380_left_covered : CoveredBy scale carrier boxes small_6272380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6272380_left_root small_6272380_left_fuel small_6272380_left_count small_6272380_left_encoded small_6272380_left_checked

theorem cover_6272380 : CoveredBy scale carrier boxes root_6272380 := by
  apply coveredBy_split_literal root_6272380 small_6272380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6272386 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6272380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6272386
#print axioms cover_6272380

def root_6264346 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6264346 : CoveredBy scale carrier boxes root_6264346 := by
  apply coveredBy_split_literal root_6264346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6264347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6272380 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6264347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6272380
#print axioms cover_6264346

def root_6264341 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264341_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6264341_right_fuel : Nat := 1
def small_6264341_right_count : Nat := 1
def small_6264341_right_encoded : String := "00000000"
theorem small_6264341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6264341_right_root small_6264341_right_fuel small_6264341_right_count small_6264341_right_encoded = true := by
  decide +kernel
theorem small_6264341_right_covered : CoveredBy scale carrier boxes small_6264341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6264341_right_root small_6264341_right_fuel small_6264341_right_count small_6264341_right_encoded small_6264341_right_checked

theorem cover_6264341 : CoveredBy scale carrier boxes root_6264341 := by
  apply coveredBy_split_literal root_6264341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6264346 small_6264341_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6264346
  · exact small_6264341_right_covered
#print axioms cover_6264341

def root_6292404 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6292404 : CoveredBy scale carrier boxes root_6292404 := by
  apply coveredBy_split_literal root_6292404 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2366.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2367.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2366.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2367.covered
#print axioms cover_6292404

def root_6292398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6292398_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6292398_left_fuel : Nat := 1
def small_6292398_left_count : Nat := 1
def small_6292398_left_encoded : String := "00000000"
theorem small_6292398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6292398_left_root small_6292398_left_fuel small_6292398_left_count small_6292398_left_encoded = true := by
  decide +kernel
theorem small_6292398_left_covered : CoveredBy scale carrier boxes small_6292398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6292398_left_root small_6292398_left_fuel small_6292398_left_count small_6292398_left_encoded small_6292398_left_checked

theorem cover_6292398 : CoveredBy scale carrier boxes root_6292398 := by
  apply coveredBy_split_literal root_6292398 small_6292398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6292404 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6292398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6292404
#print axioms cover_6292398

def root_6264340 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6264340 : CoveredBy scale carrier boxes root_6264340 := by
  apply coveredBy_split_literal root_6264340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6264341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6292398 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6264341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6292398
#print axioms cover_6264340

def root_6249632 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249632 : CoveredBy scale carrier boxes root_6249632 := by
  apply coveredBy_split_literal root_6249632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.root_6249633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6264340 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0433.cover_6249633
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6264340
#print axioms cover_6249632

def root_6297312 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6297312_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6297312_left_fuel : Nat := 21
def small_6297312_left_count : Nat := 229
def small_6297312_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E8FB0A0001061151E907000000030000000A115225070A0001081151E8FF08A91303120700F808A913070000000912073D06050001000000000A135D80F700000000050001040000000A00000009000000030000000112073CF80000000108A91307000000090000000A00000004115224FF0000000408A91303120700F80000000A000000010000000A0000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A91303120700F808A912FB0000000600000009000000010000000900000004115224FF0000000408A91303120700F800000006000000010000000A115225070A0001081151E8FF08A91303120700F808A912FB12073D0408A913070000000912073D06000000090000000300000002120701040000000208A913071207010600000003050001000000000600000007000000060000000112073CF80000000108A912FB0000000912070104000000020000000900000004115224FF0000000408A91303120700F808A912FB12073D0408A91307120701060000000308A912FF12073D0805000100135D44F704548A03000000060000000600000000135D80F70000000004548A030000000900000009000000040000000612073D0608A912FF12073D080000000600000004000000060000000300000002120701040000000208A91307120701060000000308A912FF12073D080500010000000006000000050000000400000006000000060000000112073CF80000000108A912FB12073D0408A91307120701060000000308A912FF12073D0805000100135D44F70CFD9C0300000006000000060000000000000009000000040000000612073D060000000A0000000300000002120701040000000208A91307120701060000000308A912FF12073D08050001000000000600000005000000040000000612073D0608A912FF00000006000000060000000300000003000000011151E903000000010A0001041151E8FB0A0001060000000A115225070A0001081151E8FF08A91307000000090000000600000004000000090000000300000002115224FB000000020A0001061151E907000000030A0001081151E8FF08A912FB0000000A00000009000000040000000A115225070A0001081151E8FF0000000900000004115224FF0000000408A912FB12073D040000000900000002120701040000000208A913070000000812073D0600000009000000030000000300000000"
theorem small_6297312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6297312_left_root small_6297312_left_fuel small_6297312_left_count small_6297312_left_encoded = true := by
  decide +kernel
theorem small_6297312_left_covered : CoveredBy scale carrier boxes small_6297312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6297312_left_root small_6297312_left_fuel small_6297312_left_count small_6297312_left_encoded small_6297312_left_checked

theorem cover_6297312 : CoveredBy scale carrier boxes root_6297312 := by
  apply coveredBy_split_literal root_6297312 small_6297312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2368.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6297312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2368.covered
#print axioms cover_6297312

def root_6297311 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6297311 : CoveredBy scale carrier boxes root_6297311 := by
  apply coveredBy_split_literal root_6297311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6297312 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2369.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6297312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2369.covered
#print axioms cover_6297311

def root_6249631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6249631 : CoveredBy scale carrier boxes root_6249631 := by
  apply coveredBy_split_literal root_6249631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6249632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6297311 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6249632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6297311
#print axioms cover_6249631

def root_6183453 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183453 : CoveredBy scale carrier boxes root_6183453 := by
  apply coveredBy_split_literal root_6183453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.root_6183454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6249631 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0432.cover_6183454
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6249631
#print axioms cover_6183453

def root_6161047 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161047 : CoveredBy scale carrier boxes root_6161047 := by
  apply coveredBy_split_literal root_6161047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.root_6161048 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6183453 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.cover_6161048
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6183453
#print axioms cover_6161047

def root_6304289 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304289_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304289_right_fuel : Nat := 25
def small_6304289_right_count : Nat := 423
def small_6304289_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A00010800000005115224FF0000000408A912FD12073CFC0000000308A912FF0000000600000007120700FC00000005000000031151E8FD0000000600000003115225050A0000FC115224FD000000030A0001081151E8FF08A91305120701040000000208A912FD00000006120700FC000000060000000312073D04000000060000000200000004115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000600000004000000080F34D0FC0CFD9BFF0F350D08000000060000000400000007000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF000000060F34D10800000004000000070F34D0FC00000006000000030000000200000001135D45030000000104548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D10800000004000000070F34D0FC0CFD9BFF0000000600000007000000031386AD040CFD9BFD000000060F34D0FC00000006000000030000000200000000135D80F700000000050000F8135D810304548A0513867104000000020CFD9BFD0F350CFC00000003000000080F34D0FC00000006000000031386AD040CFD9BFD00000006000000060000000200000001135D45030000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000080F34D0FC000000060000000300000006000000041207010800000004050001000000000700000007120700FC08A912FF12073D0805000100135D44F7050000F8135D810304548A050000000A0000000500000001135D45030000000104548A050000000A1386AD04045489FD00000006000000050000000200000000135D80F700000000050000F8135D810304548A050000000A0000000600000001135D45030000000104548A050000000700000006000000041207010800000004000000070000000312073D0408A912FD12073CFC0000000308A912FF12073D0805000100135D44F7050000F8135D81030CFD9C050F34D104000000020CFD9BFD00000006000000060000000600000001135D4503000000010CFD9C050F34D104000000020000000600000006000000000000000600000004120701080000000405000100135D44F7050000F8135D81030000000700000001000000070000000000000007120700FC08A912FF12073D080500010000000005000000060000000412070108000000040000000700000003000000021151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91305120701040000000208A912FF12073D0805000100135D44F7050000F8135D8103050000FC135D80FD0000000304548A05000000081386AD040CFD9BFF0000000600000008000000020000000800000001135D450300000001050000FC135D80FD0000000304548A0513867104000000020CFD9BFF00000008000000081386AD040CFD9BFF000000060000000600000002135D44FD04548A05000000081386AD040CFD9BFF0000000600000008000000020000000300000000135D80F700000000050000F800000008135D450300000001050000FC135D80FD0000000304548A0500000008000000060000000800000004120701080000000405000100135D44F7050000F8135D8103050000FC135D80FD0000000304548A0500000007000000070000000800000001135D450300000001050000FC00000007135D44FD04548A05000000081386AD04045489FF1386AD08000000070000000400000007000000020000000300000000135D80F700000000050000F800000008135D450300000001050000FC000000070000000512073D0408A912FF12073D0805000100135D44F7050000F800000006135D450300000001050000FC00000006135D44FD0000000600000003000000000000000600000004120701080000000405000100135D44F7050000F8135D8103050000FC00000007135D44FD0CFD9C050F34D10400000002045489FF1386AD080280010013D7B0F7078000F80000000800000007000000000000000600000004000000070F350D0400000007000000020000000300000001135D450300000001050000FC00000007135D44FD0CFD9C0500000007000000070000000300000000135D80F700000000050000F8135D8103050000FC00000007135D44FD0CFD9C050000000700000006000000030000000100000007000000020000000300000002"
theorem small_6304289_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6304289_right_root small_6304289_right_fuel small_6304289_right_count small_6304289_right_encoded = true := by
  decide +kernel
theorem small_6304289_right_covered : CoveredBy scale carrier boxes small_6304289_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6304289_right_root small_6304289_right_fuel small_6304289_right_count small_6304289_right_encoded small_6304289_right_checked

theorem cover_6304289 : CoveredBy scale carrier boxes root_6304289 := by
  apply coveredBy_split_literal root_6304289 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2371.root small_6304289_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2371.covered
  · exact small_6304289_right_covered
#print axioms cover_6304289

def root_6304284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304284_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6304284_right_fuel : Nat := 1
def small_6304284_right_count : Nat := 1
def small_6304284_right_encoded : String := "00000000"
theorem small_6304284_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6304284_right_root small_6304284_right_fuel small_6304284_right_count small_6304284_right_encoded = true := by
  decide +kernel
theorem small_6304284_right_covered : CoveredBy scale carrier boxes small_6304284_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6304284_right_root small_6304284_right_fuel small_6304284_right_count small_6304284_right_encoded small_6304284_right_checked

theorem cover_6304284 : CoveredBy scale carrier boxes root_6304284 := by
  apply coveredBy_split_literal root_6304284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6304289 small_6304284_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6304289
  · exact small_6304284_right_covered
#print axioms cover_6304284

def root_6304283 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6304283 : CoveredBy scale carrier boxes root_6304283 := by
  apply coveredBy_split_literal root_6304283 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6304284 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2372.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6304284
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2372.covered
#print axioms cover_6304283

def root_6304282 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6304282 : CoveredBy scale carrier boxes root_6304282 := by
  apply coveredBy_split_literal root_6304282 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6304283 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2373.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6304283
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2373.covered
#print axioms cover_6304282

def root_6302584 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302584 : CoveredBy scale carrier boxes root_6302584 := by
  apply coveredBy_split_literal root_6302584 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2370.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6304282 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2370.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6304282
#print axioms cover_6302584

def root_6314675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6314675 : CoveredBy scale carrier boxes root_6314675 := by
  apply coveredBy_split_literal root_6314675 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2376.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2377.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2376.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2377.covered
#print axioms cover_6314675

def root_6314669 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314669_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314669_left_fuel : Nat := 1
def small_6314669_left_count : Nat := 1
def small_6314669_left_encoded : String := "00000002"
theorem small_6314669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314669_left_root small_6314669_left_fuel small_6314669_left_count small_6314669_left_encoded = true := by
  decide +kernel
theorem small_6314669_left_covered : CoveredBy scale carrier boxes small_6314669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314669_left_root small_6314669_left_fuel small_6314669_left_count small_6314669_left_encoded small_6314669_left_checked

theorem cover_6314669 : CoveredBy scale carrier boxes root_6314669 := by
  apply coveredBy_split_literal root_6314669 small_6314669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314675 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6314669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314675
#print axioms cover_6314669

def root_6318651 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318651_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318651_left_fuel : Nat := 25
def small_6318651_left_count : Nat := 443
def small_6318651_left_encoded : String := "115225070A0000FE1152250908A912F712073D0008A91303120700F808A913050000000512073D0408A913070000000512073CFC0000000308A913090000000512073CFE000000040CFD9BF70F350D0004548A03000000051386ACF8000000010CFD9C05000000050F350D040CFD9C07000000050000000600000002000000000F34D1000000000004548A03138670F80CFD9C05000000050F350D040CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A8704000000050000000700000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000060F350CFC000000030CFD9C09000000060000000600000002000000020000000112073CF80000000108A91305120701040000000208A91307120700FC000000050000000312073CFC0000000308A913090000000912073CFE000000040CFD9BF70F350D0000000007000000000000000712073D0408A91307120700FC08A9130900000005000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE000000040CFD9BF70F350D000CFD9C03000000070000000600000000000000070000000200000000120701000000000008A91303120700F808A91305120701040000000208A91307000000050000000912073D0408A91307120700FC08A9130900000005000000070000000312073CFC0000000308A91309120700FE045489F71386AD0004548A030000000500000006000000001386710000000000000000090000000412073CFE00000004045489F71386AD0004548A03138670F80CFD9C050F34D10400000002000000070F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000070000000700000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000060F350CFC000000030CFD9C0900000006000000060000000200000000138671000000000004548A03138670F80CFD9C05000000090F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C09000000090F350CFE0000000400000009000000020000000100000009000000020000000112073CF80000000108A9130512070104000000020000000912073D0408A913070000000712073CFC0000000308A913090000000912073CFE00000004045489F7000000070000000700000002000000041151E9090000000408A912F712073D0008A91303120700F808A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC00000003050000FE135D81090CFD9BF70F350D0004548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000050F350CFC000000030000000700000002000000000F34D1000000000004548A03138670F80000000A000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000070F350CFC00000003000000070000000200000004135D4509000000040CFD9BF70F350D0004548A030000000A0000000A000000000F34D100000000000000000A000000020000000112073CF80000000108A913050000000712073D0408A913070000000712073CFC00000003050000FE135D81090CFD9BF7000000070000000700000004135D4509000000040CFD9BF70F350D000CFD9C030000000800000007000000000F34D100000000000CFD9C030F34D0F80CFD9C05000000070000000800000001000000070000000200000000120701000000000008A91303120700F808A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC00000003050000FE135D8109045489F71386AD0004548A03138670F80000000A000000011386ACF8000000010CFD9C05000000070F350D040CFD9C07000000070F350CFC000000030C9A870400000007000000070000000200000000138671000000000004548A03138670F80CFD9C05000000090F350D040CFD9C070000000A0000000900000002000000011386ACF8000000010000000900000004135D450900000004045489F71386AD0004548A030000000A0000000A00000000138671000000000004548A030000000A1386ACF8000000010CFD9C05000000090F350D040000000900000002000000020000000112073CF80000000108A9130512070104000000020000000712073D0408A913070000000712073CFC00000003050000FE135D8109045489F7000000070000000700000004135D450900000004045489F71386AD000CFD9C030F34D0F80CFD9C05000000070F350D0400000009000000020000000100000007000000001386710000000000000000090000000200000003"
theorem small_6318651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6318651_left_root small_6318651_left_fuel small_6318651_left_count small_6318651_left_encoded = true := by
  decide +kernel
theorem small_6318651_left_covered : CoveredBy scale carrier boxes small_6318651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6318651_left_root small_6318651_left_fuel small_6318651_left_count small_6318651_left_encoded small_6318651_left_checked

theorem cover_6318651 : CoveredBy scale carrier boxes root_6318651 := by
  apply coveredBy_split_literal root_6318651 small_6318651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2378.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6318651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2378.covered
#print axioms cover_6318651

def root_6318646 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318646_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6318646_right_fuel : Nat := 1
def small_6318646_right_count : Nat := 1
def small_6318646_right_encoded : String := "00000002"
theorem small_6318646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6318646_right_root small_6318646_right_fuel small_6318646_right_count small_6318646_right_encoded = true := by
  decide +kernel
theorem small_6318646_right_covered : CoveredBy scale carrier boxes small_6318646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6318646_right_root small_6318646_right_fuel small_6318646_right_count small_6318646_right_encoded small_6318646_right_checked

theorem cover_6318646 : CoveredBy scale carrier boxes root_6318646 := by
  apply coveredBy_split_literal root_6318646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6318651 small_6318646_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6318651
  · exact small_6318646_right_covered
#print axioms cover_6318646

def root_6314668 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6314668 : CoveredBy scale carrier boxes root_6314668 := by
  apply coveredBy_split_literal root_6314668 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6318646 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314669
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6318646
#print axioms cover_6314668

def root_6314663 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314663_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314663_right_fuel : Nat := 1
def small_6314663_right_count : Nat := 1
def small_6314663_right_encoded : String := "00000001"
theorem small_6314663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314663_right_root small_6314663_right_fuel small_6314663_right_count small_6314663_right_encoded = true := by
  decide +kernel
theorem small_6314663_right_covered : CoveredBy scale carrier boxes small_6314663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314663_right_root small_6314663_right_fuel small_6314663_right_count small_6314663_right_encoded small_6314663_right_checked

theorem cover_6314663 : CoveredBy scale carrier boxes root_6314663 := by
  apply coveredBy_split_literal root_6314663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314668 small_6314663_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314668
  · exact small_6314663_right_covered
#print axioms cover_6314663

def root_6314662 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314662_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314662_right_fuel : Nat := 20
def small_6314662_right_count : Nat := 147
def small_6314662_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0000FE1152250908A912F700000006120701000000000000000006000000041151E9090000000408A912F70000000800000008000000031151E907000000030A0000FE1152250908A912F712073D0008A91309000000060000000700000000120701000000000008A913090000000600000005000000041151E9090000000400000005115225050A0000FC115225070A0000FE1152250908A912F712073D0008A9130512070104000000020000000912073D0408A9130700000006000000060000000200000000120701000000000008A9130512070104000000020000000900000007000000041151E9090000000408A912F700000007120701000000000008A913050000000900000007000000031151E907000000030A0000FE1152250908A912F712073D0008A91305120701040000000208A91309120700FE000000060000000412073CFE00000004050000F8135D8103050000FC00000006135D4507000000030CFD9BF70000000600000007000000010000000612073D0408A91309120700FE000000060000000412073CFE00000004050000F8135D8103050000FC00000006135D4507000000030CFD9BF7000000060F34D100000000000000000600000001000000060000000200000000120701000000000008A9130512070104000000020000000912073D0408A91309120700FE00000006000000040000000700000002000000041151E9090000000408A912F712073D0008A913050000000700000007000000000000000700000002"
theorem small_6314662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314662_right_root small_6314662_right_fuel small_6314662_right_count small_6314662_right_encoded = true := by
  decide +kernel
theorem small_6314662_right_covered : CoveredBy scale carrier boxes small_6314662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314662_right_root small_6314662_right_fuel small_6314662_right_count small_6314662_right_encoded small_6314662_right_checked

theorem cover_6314662 : CoveredBy scale carrier boxes root_6314662 := by
  apply coveredBy_split_literal root_6314662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314663 small_6314662_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314663
  · exact small_6314662_right_covered
#print axioms cover_6314662

def root_6314656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314656_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6314656_left_fuel : Nat := 1
def small_6314656_left_count : Nat := 1
def small_6314656_left_encoded : String := "00000000"
theorem small_6314656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6314656_left_root small_6314656_left_fuel small_6314656_left_count small_6314656_left_encoded = true := by
  decide +kernel
theorem small_6314656_left_covered : CoveredBy scale carrier boxes small_6314656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6314656_left_root small_6314656_left_fuel small_6314656_left_count small_6314656_left_encoded small_6314656_left_checked

theorem cover_6314656 : CoveredBy scale carrier boxes root_6314656 := by
  apply coveredBy_split_literal root_6314656 small_6314656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314662 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6314656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314662
#print axioms cover_6314656

def root_6313292 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6313292 : CoveredBy scale carrier boxes root_6313292 := by
  apply coveredBy_split_literal root_6313292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2375.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6314656 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2375.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6314656
#print axioms cover_6313292

def root_6311980 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6311980 : CoveredBy scale carrier boxes root_6311980 := by
  apply coveredBy_split_literal root_6311980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2374.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6313292 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2374.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6313292
#print axioms cover_6311980

def root_6323548 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6323548 : CoveredBy scale carrier boxes root_6323548 := by
  apply coveredBy_split_literal root_6323548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2379.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2380.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2379.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2380.covered
#print axioms cover_6323548

def root_6323542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6323542_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6323542_left_fuel : Nat := 1
def small_6323542_left_count : Nat := 1
def small_6323542_left_encoded : String := "00000000"
theorem small_6323542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6323542_left_root small_6323542_left_fuel small_6323542_left_count small_6323542_left_encoded = true := by
  decide +kernel
theorem small_6323542_left_covered : CoveredBy scale carrier boxes small_6323542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6323542_left_root small_6323542_left_fuel small_6323542_left_count small_6323542_left_encoded small_6323542_left_checked

theorem cover_6323542 : CoveredBy scale carrier boxes root_6323542 := by
  apply coveredBy_split_literal root_6323542 small_6323542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6323548 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6323542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6323548
#print axioms cover_6323542

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436
