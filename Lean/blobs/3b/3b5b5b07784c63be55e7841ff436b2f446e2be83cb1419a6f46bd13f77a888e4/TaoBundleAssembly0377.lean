import TaoBundleAssembly0376
import TaoBundleChunkBatch0497
import TaoBundleChunkBatch0501
import TaoBundleChunkBatch0502
import TaoBundleChunkBatch0503
import TaoBundleChunkBatch0504
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377
def root_5338305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338305_left_fuel : Nat := 25
def small_5338305_left_count : Nat := 97
def small_5338305_left_encoded : String := "12073D0008A912F912073CF80000000108A912FF12073D08050000FA135D80FB0000000205000106135D4507000000030000000A135D81070CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF078000FA0000000A128A40FB0000000A00000002000000040000000A0F8750F90C9A87080F8750FF078000FA128A7CFB000000020780010600000006128A7D070AD3577700000005000000070000000300000006000000040F878CFF00000004078000FA0000000A0000000600000001000000040F34D108000000040000000A0000000A00000003135D44FB05000106135D4507000000030000000A135D81070CFD9BF70000000A0F34D100000000000CFD9BF90F350CF8000000010CFD9BFF0F350D080C9A86F80F878CF9000000010C9A8708000000060000000A00000006000000040F34D108000000040000000A0000000A00000003000000020000000412070108000000040000000A0000000A00000000"
theorem small_5338305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338305_left_root small_5338305_left_fuel small_5338305_left_count small_5338305_left_encoded = true := by
  decide +kernel
theorem small_5338305_left_covered : CoveredBy scale carrier boxes small_5338305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338305_left_root small_5338305_left_fuel small_5338305_left_count small_5338305_left_encoded small_5338305_left_checked

theorem cover_5338305 : CoveredBy scale carrier boxes root_5338305 := by
  apply coveredBy_split_literal root_5338305 small_5338305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5338511 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5338305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5338511
#print axioms cover_5338305

def root_5338299 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338299_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5338299_left_fuel : Nat := 1
def small_5338299_left_count : Nat := 1
def small_5338299_left_encoded : String := "00000004"
theorem small_5338299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5338299_left_root small_5338299_left_fuel small_5338299_left_count small_5338299_left_encoded = true := by
  decide +kernel
theorem small_5338299_left_covered : CoveredBy scale carrier boxes small_5338299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5338299_left_root small_5338299_left_fuel small_5338299_left_count small_5338299_left_encoded small_5338299_left_checked

theorem cover_5338299 : CoveredBy scale carrier boxes root_5338299 := by
  apply coveredBy_split_literal root_5338299 small_5338299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5338305 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5338299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5338305
#print axioms cover_5338299

def root_5336665 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5336665 : CoveredBy scale carrier boxes root_5336665 := by
  apply coveredBy_split_literal root_5336665 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2001.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5338299 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2001.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5338299
#print axioms cover_5336665

def root_5336659 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336659_left_fuel : Nat := 1
def small_5336659_left_count : Nat := 1
def small_5336659_left_encoded : String := "00000003"
theorem small_5336659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5336659_left_root small_5336659_left_fuel small_5336659_left_count small_5336659_left_encoded = true := by
  decide +kernel
theorem small_5336659_left_covered : CoveredBy scale carrier boxes small_5336659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5336659_left_root small_5336659_left_fuel small_5336659_left_count small_5336659_left_encoded small_5336659_left_checked

theorem cover_5336659 : CoveredBy scale carrier boxes root_5336659 := by
  apply coveredBy_split_literal root_5336659 small_5336659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5336665 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5336659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5336665
#print axioms cover_5336659

def root_5345721 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5345721 : CoveredBy scale carrier boxes root_5345721 := by
  apply coveredBy_split_literal root_5345721 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2004.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2005.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2004.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2005.covered
#print axioms cover_5345721

def root_5345716 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5345716_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5345716_right_fuel : Nat := 1
def small_5345716_right_count : Nat := 1
def small_5345716_right_encoded : String := "00000003"
theorem small_5345716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5345716_right_root small_5345716_right_fuel small_5345716_right_count small_5345716_right_encoded = true := by
  decide +kernel
theorem small_5345716_right_covered : CoveredBy scale carrier boxes small_5345716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5345716_right_root small_5345716_right_fuel small_5345716_right_count small_5345716_right_encoded small_5345716_right_checked

theorem cover_5345716 : CoveredBy scale carrier boxes root_5345716 := by
  apply coveredBy_split_literal root_5345716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5345721 small_5345716_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5345721
  · exact small_5345716_right_covered
#print axioms cover_5345716

def root_5336658 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5336658 : CoveredBy scale carrier boxes root_5336658 := by
  apply coveredBy_split_literal root_5336658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5336659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5345716 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5336659
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5345716
#print axioms cover_5336658

def root_5336653 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336653_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5336653_right_fuel : Nat := 1
def small_5336653_right_count : Nat := 1
def small_5336653_right_encoded : String := "00000002"
theorem small_5336653_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5336653_right_root small_5336653_right_fuel small_5336653_right_count small_5336653_right_encoded = true := by
  decide +kernel
theorem small_5336653_right_covered : CoveredBy scale carrier boxes small_5336653_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5336653_right_root small_5336653_right_fuel small_5336653_right_count small_5336653_right_encoded small_5336653_right_checked

theorem cover_5336653 : CoveredBy scale carrier boxes root_5336653 := by
  apply coveredBy_split_literal root_5336653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5336658 small_5336653_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5336658
  · exact small_5336653_right_covered
#print axioms cover_5336653

def root_5307097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307097 : CoveredBy scale carrier boxes root_5307097 := by
  apply coveredBy_split_literal root_5307097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.root_5307098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5336653 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0376.cover_5307098
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5336653
#print axioms cover_5307097

def root_5307091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307091_left_fuel : Nat := 1
def small_5307091_left_count : Nat := 1
def small_5307091_left_encoded : String := "00000001"
theorem small_5307091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307091_left_root small_5307091_left_fuel small_5307091_left_count small_5307091_left_encoded = true := by
  decide +kernel
theorem small_5307091_left_covered : CoveredBy scale carrier boxes small_5307091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307091_left_root small_5307091_left_fuel small_5307091_left_count small_5307091_left_encoded small_5307091_left_checked

theorem cover_5307091 : CoveredBy scale carrier boxes root_5307091 := by
  apply coveredBy_split_literal root_5307091 small_5307091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5307097 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5307097
#print axioms cover_5307091

def root_5350051 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350051_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350051_left_fuel : Nat := 20
def small_5350051_left_count : Nat := 103
def small_5350051_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F90000000105000106135D4507000000030CFD9BF70F350D000CFD9BFB0000000A00000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020000000800000006000000040F34D10800000004000000080F34D0FA0000000800000002135D81070CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFF000000080000000800000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB00000002000000080F8750FB0C9A87080F8750FF00000009000000040F878CFF000000040000000800000002000000040F34D10800000004000000080F34D0FA000000080000000200000003135D44F905000106135D4507000000030CFD9BF7000000060F34D1000000000000000008135D81070CFD9BF7000000080F34D1000000000000000008000000030000000100000004120701080000000400000008120700FA08A912FF00000008000000080000000200000000"
theorem small_5350051_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5350051_left_root small_5350051_left_fuel small_5350051_left_count small_5350051_left_encoded = true := by
  decide +kernel
theorem small_5350051_left_covered : CoveredBy scale carrier boxes small_5350051_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5350051_left_root small_5350051_left_fuel small_5350051_left_count small_5350051_left_encoded small_5350051_left_checked

theorem cover_5350051 : CoveredBy scale carrier boxes root_5350051 := by
  apply coveredBy_split_literal root_5350051 small_5350051_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2006.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5350051_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2006.covered
#print axioms cover_5350051

def root_5350045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5350045_left_fuel : Nat := 1
def small_5350045_left_count : Nat := 1
def small_5350045_left_encoded : String := "00000004"
theorem small_5350045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5350045_left_root small_5350045_left_fuel small_5350045_left_count small_5350045_left_encoded = true := by
  decide +kernel
theorem small_5350045_left_covered : CoveredBy scale carrier boxes small_5350045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5350045_left_root small_5350045_left_fuel small_5350045_left_count small_5350045_left_encoded small_5350045_left_checked

theorem cover_5350045 : CoveredBy scale carrier boxes root_5350045 := by
  apply coveredBy_split_literal root_5350045 small_5350045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5350051 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5350045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5350051
#print axioms cover_5350045

def root_5349803 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349803_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349803_left_fuel : Nat := 16
def small_5349803_left_count : Nat := 113
def small_5349803_left_encoded : String := "1151E8FF08A912F712073D0008A912FB12073CFA00000002050000F8135D80F90000000105000106135D4507000000030500010800000009135D80FF000000040CFD9BF70F350D000CFD9BFB0000000600000006000000000F34D1000000000000000009135D810705000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D000CFD9BFB000000090F34D0FA0000000800000002000000000F34D100000000000CFD9BFB000000090000000900000003135D44F905000106135D450700000003000000090000000900000001120700FA050000F8135D80F90000000105000106135D4507000000030000000900000009000000090000000200000000120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D4507000000030500010800000009135D80FF00000004045489F700000009138671000000000000000009135D81070500010800000009135D80FF00000004045489F71386AD000CFD9BFB000000090F34D0FA00000009000000020000000013867100000000000CFD9BFB000000090F34D0FA00000009000000020000000300000009120700FA050000F800000009000000090000000200000004"
theorem small_5349803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349803_left_root small_5349803_left_fuel small_5349803_left_count small_5349803_left_encoded = true := by
  decide +kernel
theorem small_5349803_left_covered : CoveredBy scale carrier boxes small_5349803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349803_left_root small_5349803_left_fuel small_5349803_left_count small_5349803_left_encoded small_5349803_left_checked

theorem cover_5349803 : CoveredBy scale carrier boxes root_5349803 := by
  apply coveredBy_split_literal root_5349803 small_5349803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5350045 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5349803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5350045
#print axioms cover_5349803

def root_5349797 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349797_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349797_left_fuel : Nat := 1
def small_5349797_left_count : Nat := 1
def small_5349797_left_encoded : String := "00000003"
theorem small_5349797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349797_left_root small_5349797_left_fuel small_5349797_left_count small_5349797_left_encoded = true := by
  decide +kernel
theorem small_5349797_left_covered : CoveredBy scale carrier boxes small_5349797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349797_left_root small_5349797_left_fuel small_5349797_left_count small_5349797_left_encoded small_5349797_left_checked

theorem cover_5349797 : CoveredBy scale carrier boxes root_5349797 := by
  apply coveredBy_split_literal root_5349797 small_5349797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349803 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5349797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349803
#print axioms cover_5349797

def root_5349796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5349796 : CoveredBy scale carrier boxes root_5349796 := by
  apply coveredBy_split_literal root_5349796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349797 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2007.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349797
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2007.covered
#print axioms cover_5349796

def root_5349790 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349790_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349790_left_fuel : Nat := 1
def small_5349790_left_count : Nat := 1
def small_5349790_left_encoded : String := "00000002"
theorem small_5349790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349790_left_root small_5349790_left_fuel small_5349790_left_count small_5349790_left_encoded = true := by
  decide +kernel
theorem small_5349790_left_covered : CoveredBy scale carrier boxes small_5349790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349790_left_root small_5349790_left_fuel small_5349790_left_count small_5349790_left_encoded small_5349790_left_checked

theorem cover_5349790 : CoveredBy scale carrier boxes root_5349790 := by
  apply coveredBy_split_literal root_5349790 small_5349790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349796 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5349790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349796
#print axioms cover_5349790

def root_5354954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354954_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354954_right_fuel : Nat := 20
def small_5354954_right_count : Nat := 135
def small_5354954_right_encoded : String := "115225070A0001081151E8FF08A912F712073D0008A913070000000512073D06050000F8135D80F900000001050000FA135D80FB0000000205000108000000070000000500000005000000050000000300000000120701000000000008A913070000000512073D06050000F8135D80F900000001050000FA135D80FB000000020500010800000007135D80FF00000004045489F70000000500000007135D44FB0000000500000002135D44F900000005000000010000000300000004115224FF0000000408A912F712073D0008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000050F34D10000000000000000050000000500000005000000041207010800000004050000F8135D80F900000001050000FA135D80FB000000020CFD9BF7000000080F34D100000000000000000500000005000000050000000300000000120701000000000008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB00000002045489F71386AD000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000013867100000000000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000500000005000000041207010800000004000000050000000300000003"
theorem small_5354954_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5354954_right_root small_5354954_right_fuel small_5354954_right_count small_5354954_right_encoded = true := by
  decide +kernel
theorem small_5354954_right_covered : CoveredBy scale carrier boxes small_5354954_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5354954_right_root small_5354954_right_fuel small_5354954_right_count small_5354954_right_encoded small_5354954_right_checked

theorem cover_5354954 : CoveredBy scale carrier boxes root_5354954 := by
  apply coveredBy_split_literal root_5354954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2008.root small_5354954_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2008.covered
  · exact small_5354954_right_covered
#print axioms cover_5354954

def root_5354949 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354949_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5354949_right_fuel : Nat := 1
def small_5354949_right_count : Nat := 1
def small_5354949_right_encoded : String := "00000002"
theorem small_5354949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5354949_right_root small_5354949_right_fuel small_5354949_right_count small_5354949_right_encoded = true := by
  decide +kernel
theorem small_5354949_right_covered : CoveredBy scale carrier boxes small_5354949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5354949_right_root small_5354949_right_fuel small_5354949_right_count small_5354949_right_encoded small_5354949_right_checked

theorem cover_5354949 : CoveredBy scale carrier boxes root_5354949 := by
  apply coveredBy_split_literal root_5354949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5354954 small_5354949_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5354954
  · exact small_5354949_right_covered
#print axioms cover_5354949

def root_5349789 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5349789 : CoveredBy scale carrier boxes root_5349789 := by
  apply coveredBy_split_literal root_5349789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5354949 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349790
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5354949
#print axioms cover_5349789

def root_5349784 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349784_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5349784_right_fuel : Nat := 1
def small_5349784_right_count : Nat := 1
def small_5349784_right_encoded : String := "00000001"
theorem small_5349784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5349784_right_root small_5349784_right_fuel small_5349784_right_count small_5349784_right_encoded = true := by
  decide +kernel
theorem small_5349784_right_covered : CoveredBy scale carrier boxes small_5349784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5349784_right_root small_5349784_right_fuel small_5349784_right_count small_5349784_right_encoded small_5349784_right_checked

theorem cover_5349784 : CoveredBy scale carrier boxes root_5349784 := by
  apply coveredBy_split_literal root_5349784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349789 small_5349784_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349789
  · exact small_5349784_right_covered
#print axioms cover_5349784

def root_5307090 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5307090 : CoveredBy scale carrier boxes root_5307090 := by
  apply coveredBy_split_literal root_5307090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5307091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5349784 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5307091
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5349784
#print axioms cover_5307090

def root_5307084 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307084_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5307084_left_fuel : Nat := 1
def small_5307084_left_count : Nat := 1
def small_5307084_left_encoded : String := "00000000"
theorem small_5307084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5307084_left_root small_5307084_left_fuel small_5307084_left_count small_5307084_left_encoded = true := by
  decide +kernel
theorem small_5307084_left_covered : CoveredBy scale carrier boxes small_5307084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5307084_left_root small_5307084_left_fuel small_5307084_left_count small_5307084_left_encoded small_5307084_left_checked

theorem cover_5307084 : CoveredBy scale carrier boxes root_5307084 := by
  apply coveredBy_split_literal root_5307084 small_5307084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5307090 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5307084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5307090
#print axioms cover_5307084

def root_5304986 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5304986 : CoveredBy scale carrier boxes root_5304986 := by
  apply coveredBy_split_literal root_5304986 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1988.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5307084 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1988.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5307084
#print axioms cover_5304986

def root_5366914 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5366914 : CoveredBy scale carrier boxes root_5366914 := by
  apply coveredBy_split_literal root_5366914 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2013.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2014.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2013.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2014.covered
#print axioms cover_5366914

def root_5366908 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366908_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366908_left_fuel : Nat := 1
def small_5366908_left_count : Nat := 1
def small_5366908_left_encoded : String := "00000003"
theorem small_5366908_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366908_left_root small_5366908_left_fuel small_5366908_left_count small_5366908_left_encoded = true := by
  decide +kernel
theorem small_5366908_left_covered : CoveredBy scale carrier boxes small_5366908_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366908_left_root small_5366908_left_fuel small_5366908_left_count small_5366908_left_encoded small_5366908_left_checked

theorem cover_5366908 : CoveredBy scale carrier boxes root_5366908 := by
  apply coveredBy_split_literal root_5366908 small_5366908_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366914 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_5366908_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366914
#print axioms cover_5366908

def root_5372148 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5372148 : CoveredBy scale carrier boxes root_5372148 := by
  apply coveredBy_split_literal root_5372148 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2015.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2016.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2015.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2016.covered
#print axioms cover_5372148

def root_5372143 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5372143_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5372143_right_fuel : Nat := 1
def small_5372143_right_count : Nat := 1
def small_5372143_right_encoded : String := "00000003"
theorem small_5372143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5372143_right_root small_5372143_right_fuel small_5372143_right_count small_5372143_right_encoded = true := by
  decide +kernel
theorem small_5372143_right_covered : CoveredBy scale carrier boxes small_5372143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5372143_right_root small_5372143_right_fuel small_5372143_right_count small_5372143_right_encoded small_5372143_right_checked

theorem cover_5372143 : CoveredBy scale carrier boxes root_5372143 := by
  apply coveredBy_split_literal root_5372143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5372148 small_5372143_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5372148
  · exact small_5372143_right_covered
#print axioms cover_5372143

def root_5366907 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5366907 : CoveredBy scale carrier boxes root_5366907 := by
  apply coveredBy_split_literal root_5366907 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5372143 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366908
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5372143
#print axioms cover_5366907

def root_5366901 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366901_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366901_left_fuel : Nat := 1
def small_5366901_left_count : Nat := 1
def small_5366901_left_encoded : String := "00000002"
theorem small_5366901_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366901_left_root small_5366901_left_fuel small_5366901_left_count small_5366901_left_encoded = true := by
  decide +kernel
theorem small_5366901_left_covered : CoveredBy scale carrier boxes small_5366901_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366901_left_root small_5366901_left_fuel small_5366901_left_count small_5366901_left_encoded small_5366901_left_checked

theorem cover_5366901 : CoveredBy scale carrier boxes root_5366901 := by
  apply coveredBy_split_literal root_5366901 small_5366901_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366907 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5366901_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366907
#print axioms cover_5366901

def root_5366900 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366900_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366900_right_fuel : Nat := 17
def small_5366900_right_count : Nat := 121
def small_5366900_right_encoded : String := "0F34D0FA0CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F80F878CF900000001022A457713E201000AD3577B10D13CFA000000020AD3578710D10106000000030AD3578910D10108000000040000000610D13D08000000050000000410D13D06000000050000000310D100FA00000005000000020000000013E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030000000610D13D06000000050000000310D100FA00000005000000020F8750F9022A457713E201000AD3577B10D13CFA000000020AD357870000000810D13D060000000800000003000000080000000013E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030AD357890000000610D13D080B4D43F800000006000000080000000410D13D06000000080000000300000008000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09022A45770000000913E1C500000000000AD3577B10D13CFA000000020AD3578710D10106000000030000000900000005000000050000000400000001000000040F350D060CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A8706000000050F878D070000000800000003000000010F350D0800000005000000040000000300000002"
theorem small_5366900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366900_right_root small_5366900_right_fuel small_5366900_right_count small_5366900_right_encoded = true := by
  decide +kernel
theorem small_5366900_right_covered : CoveredBy scale carrier boxes small_5366900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366900_right_root small_5366900_right_fuel small_5366900_right_count small_5366900_right_encoded small_5366900_right_checked

theorem cover_5366900 : CoveredBy scale carrier boxes root_5366900 := by
  apply coveredBy_split_literal root_5366900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366901 small_5366900_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366901
  · exact small_5366900_right_covered
#print axioms cover_5366900

def root_5366894 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366894_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366894_left_fuel : Nat := 1
def small_5366894_left_count : Nat := 1
def small_5366894_left_encoded : String := "00000001"
theorem small_5366894_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366894_left_root small_5366894_left_fuel small_5366894_left_count small_5366894_left_encoded = true := by
  decide +kernel
theorem small_5366894_left_covered : CoveredBy scale carrier boxes small_5366894_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366894_left_root small_5366894_left_fuel small_5366894_left_count small_5366894_left_encoded small_5366894_left_checked

theorem cover_5366894 : CoveredBy scale carrier boxes root_5366894 := by
  apply coveredBy_split_literal root_5366894 small_5366894_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366900 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5366894_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366900
#print axioms cover_5366894

def root_5366893 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366893_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366893_right_fuel : Nat := 19
def small_5366893_right_count : Nat := 131
def small_5366893_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA0F878CFB00000002022A457713E201000AD3577910D13CF8000000010AD3578710D10106000000030AD3578910D10108000000040000000610D13D08000000050000000410D13D06000000050000000310D100F800000005000000010000000013E1C500000000000AD3577910D13CF8000000010AD3578710D10106000000030000000610D13D06000000050000000310D100F800000005000000010F8750FB022A457713E201000AD3577910D13CF8000000010AD357870000000710D13D060AD357890000000710D13D08000000070000000400000003000000070000000013E1C500000000000AD3577910D13CF8000000010AD357870000000710D13D060AD3578910D10108000000040B4D43FA000000060000000710D13D0800000007000000040000000300000007000000020F350D080C9A86FA000000050F8750FB0C9A8708000000050F878D09000000070000000400000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000050F8750FB0C9A8706000000050F878D07022A45770000000A13E1C500000000000AD3577910D13CF8000000010AD3578910D10108000000040000000A000000050000000500000003000000020F350D080000000500000004000000030F34D0FA000000050000000200000001"
theorem small_5366893_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366893_right_root small_5366893_right_fuel small_5366893_right_count small_5366893_right_encoded = true := by
  decide +kernel
theorem small_5366893_right_covered : CoveredBy scale carrier boxes small_5366893_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366893_right_root small_5366893_right_fuel small_5366893_right_count small_5366893_right_encoded small_5366893_right_checked

theorem cover_5366893 : CoveredBy scale carrier boxes root_5366893 := by
  apply coveredBy_split_literal root_5366893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366894 small_5366893_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366894
  · exact small_5366893_right_covered
#print axioms cover_5366893

def root_5366887 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366887_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5366887_left_fuel : Nat := 1
def small_5366887_left_count : Nat := 1
def small_5366887_left_encoded : String := "00000000"
theorem small_5366887_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5366887_left_root small_5366887_left_fuel small_5366887_left_count small_5366887_left_encoded = true := by
  decide +kernel
theorem small_5366887_left_covered : CoveredBy scale carrier boxes small_5366887_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5366887_left_root small_5366887_left_fuel small_5366887_left_count small_5366887_left_encoded small_5366887_left_checked

theorem cover_5366887 : CoveredBy scale carrier boxes root_5366887 := by
  apply coveredBy_split_literal root_5366887 small_5366887_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366893 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5366887_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366893
#print axioms cover_5366887

def root_5365237 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5365237 : CoveredBy scale carrier boxes root_5365237 := by
  apply coveredBy_split_literal root_5365237 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2012.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5366887 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2012.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5366887
#print axioms cover_5365237

def root_5365232 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5365232_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5365232_right_fuel : Nat := 1
def small_5365232_right_count : Nat := 1
def small_5365232_right_encoded : String := "00000004"
theorem small_5365232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5365232_right_root small_5365232_right_fuel small_5365232_right_count small_5365232_right_encoded = true := by
  decide +kernel
theorem small_5365232_right_covered : CoveredBy scale carrier boxes small_5365232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5365232_right_root small_5365232_right_fuel small_5365232_right_count small_5365232_right_encoded small_5365232_right_checked

theorem cover_5365232 : CoveredBy scale carrier boxes root_5365232 := by
  apply coveredBy_split_literal root_5365232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5365237 small_5365232_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5365237
  · exact small_5365232_right_covered
#print axioms cover_5365232

def root_5363892 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5363892 : CoveredBy scale carrier boxes root_5363892 := by
  apply coveredBy_split_literal root_5363892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2011.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5365232 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2011.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5365232
#print axioms cover_5363892

def root_5363887 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5363887_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5363887_right_fuel : Nat := 1
def small_5363887_right_count : Nat := 1
def small_5363887_right_encoded : String := "00000003"
theorem small_5363887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5363887_right_root small_5363887_right_fuel small_5363887_right_count small_5363887_right_encoded = true := by
  decide +kernel
theorem small_5363887_right_covered : CoveredBy scale carrier boxes small_5363887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5363887_right_root small_5363887_right_fuel small_5363887_right_count small_5363887_right_encoded small_5363887_right_checked

theorem cover_5363887 : CoveredBy scale carrier boxes root_5363887 := by
  apply coveredBy_split_literal root_5363887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5363892 small_5363887_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5363892
  · exact small_5363887_right_covered
#print axioms cover_5363887

def root_5362117 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5362117 : CoveredBy scale carrier boxes root_5362117 := by
  apply coveredBy_split_literal root_5362117 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2010.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5363887 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2010.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5363887
#print axioms cover_5362117

def root_5362111 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362111_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362111_left_fuel : Nat := 1
def small_5362111_left_count : Nat := 1
def small_5362111_left_encoded : String := "00000002"
theorem small_5362111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362111_left_root small_5362111_left_fuel small_5362111_left_count small_5362111_left_encoded = true := by
  decide +kernel
theorem small_5362111_left_covered : CoveredBy scale carrier boxes small_5362111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362111_left_root small_5362111_left_fuel small_5362111_left_count small_5362111_left_encoded small_5362111_left_checked

theorem cover_5362111 : CoveredBy scale carrier boxes root_5362111 := by
  apply coveredBy_split_literal root_5362111 small_5362111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362117 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5362111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362117
#print axioms cover_5362111

def root_5362110 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362110_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362110_right_fuel : Nat := 21
def small_5362110_right_count : Nat := 223
def small_5362110_right_encoded : String := "120700FA08A91307120701060000000308A913091207010800000004045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A070000000600000008000000080F34D0F8045489FB00000006138670FA04548A07000000060000000800000002000000010000000013867100000000000CFD9BF9000000060F34D0F8000000060000000112073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A0713867106000000030000000900000009000000090F34D0F8045489FB1386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004067ECE770000000900000005000000050000000500000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A0713867106000000030CFD9C090000000A000000091386AD060CFD9C090F34D108000000040C9A86F80F878CF900000001022A457713E20100067ECE7B000000060000000500000000000000050000000A0F350D08000000050000000400000003138670FA04548A070000000A00000009000000020F34D0F800000005000000010000000412073D0608A913091207010800000004045489F71386AD000CFD9BF90F350CF800000001000000080F34D0F8045489FB1386ACFA000000020CFD9C070F34D1060000000304548A0900000008000000050000000500000005000000010000000013867100000000000CFD9BF90F350CF800000001000000080F34D0F8000000050000000112073D08045489F71386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F80000000500000008000000090F350D060000000500000003138670FA0CFD9C07000000050F350D060000000500000003000000020F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000050F8750F900000008000000010F350D0800000005000000040F350D060000000500000003138670FA0CFD9C070F34D106000000030CFD9C0900000005000000090F350D060000000500000003000000020F34D0F8045489FB00000005138670FA000000050000000200000001000000040000000300000002"
theorem small_5362110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362110_right_root small_5362110_right_fuel small_5362110_right_count small_5362110_right_encoded = true := by
  decide +kernel
theorem small_5362110_right_covered : CoveredBy scale carrier boxes small_5362110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362110_right_root small_5362110_right_fuel small_5362110_right_count small_5362110_right_encoded small_5362110_right_checked

theorem cover_5362110 : CoveredBy scale carrier boxes root_5362110 := by
  apply coveredBy_split_literal root_5362110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362111 small_5362110_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362111
  · exact small_5362110_right_covered
#print axioms cover_5362110

def root_5362104 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362104_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362104_left_fuel : Nat := 1
def small_5362104_left_count : Nat := 1
def small_5362104_left_encoded : String := "00000001"
theorem small_5362104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362104_left_root small_5362104_left_fuel small_5362104_left_count small_5362104_left_encoded = true := by
  decide +kernel
theorem small_5362104_left_covered : CoveredBy scale carrier boxes small_5362104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362104_left_root small_5362104_left_fuel small_5362104_left_count small_5362104_left_encoded small_5362104_left_checked

theorem cover_5362104 : CoveredBy scale carrier boxes root_5362104 := by
  apply coveredBy_split_literal root_5362104 small_5362104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362110 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5362104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362110
#print axioms cover_5362104

def root_5362103 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362103_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362103_right_fuel : Nat := 23
def small_5362103_right_count : Nat := 349
def small_5362103_right_encoded : String := "120700F808A912FB12073CFA0000000208A91307120701060000000308A913091207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA0000000204548A07000000061386AD0604548A090000000600000007000000030F34D0FA0000000600000002138670F80CFD9BFB000000070F34D0FA04548A07000000061386AD0604548A090000000600000005000000030000000200000001000000001386710000000000045489F900000006138670F80CFD9BFB000000060F34D0FA00000006000000020000000112073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA04548A07000000070000000500000002138670F80CFD9BFB000000070F34D0FA000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA00000002000000070F34D0FA0000000500000002138670F80CFD9BFB000000070F34D0FA0000000500000002000000010000000412073D0608A913091207010800000004045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A0913867108000000040000000A0000000A0000000A0F34D0FA0CFD9C070F34D1060000000304548A091386710800000004067ECE770000000A00000005000000050000000500000002138670F80000000A00000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A09000000091386AD080C9A86FA0F878CFB00000002022A457713E20100067ECE790000000600000005000000000000000500000009000000040F350D060000000A000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C07000000090000000A0F34D0FA00000005000000020000000112073D08045489F71386AD00045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA00000005000000070F350D0800000005000000040F350D0600000005000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C07000000050000000A0F34D0FA000000050000000200000001000000001386710000000000045489F91386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA000000050F8750FB00000007000000020F350D0800000005000000040F350D0600000005000000030F34D0FA0000000500000002138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C0900000005000000070F350D0600000005000000030F34D0FA0000000500000002000000010000000400000003120700FA08A91307120701060000000308A913091207010800000004045489F71386AD00045489F91386ACF800000001045489FB000000060000000500000005000000000000000512073D08045489F7000000051386710000000000045489F900000005138670F800000005000000010000000412073D0608A913091207010800000004045489F7000000051386710000000000045489F900000005138670F8000000050000000112073D08045489F71386AD00045489F900000005138670F80000000500000001000000001386710000000000045489F91386ACF800000001045489FB00000005138670FA0CFD9C07000000050F350D06000000050000000300000002138670F8045489FB1386ACFA000000020CFD9C07000000050F350D060000000500000003138670FA0CFD9C07000000050F350D060000000500000003000000020000000100000004000000030000000200000001"
theorem small_5362103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362103_right_root small_5362103_right_fuel small_5362103_right_count small_5362103_right_encoded = true := by
  decide +kernel
theorem small_5362103_right_covered : CoveredBy scale carrier boxes small_5362103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362103_right_root small_5362103_right_fuel small_5362103_right_count small_5362103_right_encoded small_5362103_right_checked

theorem cover_5362103 : CoveredBy scale carrier boxes root_5362103 := by
  apply coveredBy_split_literal root_5362103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362104 small_5362103_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362104
  · exact small_5362103_right_covered
#print axioms cover_5362103

def root_5362097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5362097_left_fuel : Nat := 1
def small_5362097_left_count : Nat := 1
def small_5362097_left_encoded : String := "00000000"
theorem small_5362097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5362097_left_root small_5362097_left_fuel small_5362097_left_count small_5362097_left_encoded = true := by
  decide +kernel
theorem small_5362097_left_covered : CoveredBy scale carrier boxes small_5362097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5362097_left_root small_5362097_left_fuel small_5362097_left_count small_5362097_left_encoded small_5362097_left_checked

theorem cover_5362097 : CoveredBy scale carrier boxes root_5362097 := by
  apply coveredBy_split_literal root_5362097 small_5362097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362103 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5362097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362103
#print axioms cover_5362097

def root_5360189 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5360189 : CoveredBy scale carrier boxes root_5360189 := by
  apply coveredBy_split_literal root_5360189 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2009.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5362097 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2009.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5362097
#print axioms cover_5360189

def root_5360184 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5360184_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5360184_right_fuel : Nat := 1
def small_5360184_right_count : Nat := 1
def small_5360184_right_encoded : String := "00000004"
theorem small_5360184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5360184_right_root small_5360184_right_fuel small_5360184_right_count small_5360184_right_encoded = true := by
  decide +kernel
theorem small_5360184_right_covered : CoveredBy scale carrier boxes small_5360184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5360184_right_root small_5360184_right_fuel small_5360184_right_count small_5360184_right_encoded small_5360184_right_checked

theorem cover_5360184 : CoveredBy scale carrier boxes root_5360184 := by
  apply coveredBy_split_literal root_5360184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.root_5360189 small_5360184_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377.cover_5360189
  · exact small_5360184_right_covered
#print axioms cover_5360184

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0377
