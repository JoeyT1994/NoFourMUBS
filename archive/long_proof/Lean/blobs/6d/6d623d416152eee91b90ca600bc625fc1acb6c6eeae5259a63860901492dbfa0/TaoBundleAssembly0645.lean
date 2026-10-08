import TaoBundleAssembly0638
import TaoBundleAssembly0642
import TaoBundleAssembly0643
import TaoBundleAssembly0644
import TaoBundleChunkBatch0882
import TaoBundleChunkBatch0884
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645
def root_9438765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438765_right_fuel : Nat := 20
def small_9438765_right_count : Nat := 179
def small_9438765_right_encoded : String := "115224FF0000000408A91301120701000000000008A912F912073D0208A912FF12073D08050000FA135D8105050000FC00000007135D45070000000304548A01000000060000000700000002135D4505000000020000000A000000040000000A00000001120701020000000108A912FF12073D08050000FA135D8105050000FC135D810704548A011386710000000000045489F91386AD020CFD9BFF0F350D080000000A000000040000000500000001000000051386AD00045489F91386AD020CFD9BFF0F350D080C9A87080000000A00000005000000040000000500000001000000050000000000000003000000050000000200000005000000040000000512073D0008A912F912073D0208A912FF12073D08050000FA135D8105050000FC135D81070CFD9C010F34D10000000000000000070000000700000003135D4507000000030CFD9C010F34D100000000000CFD9BF9000000060F34D10200000001000000060F350D000CFD9BF9000000060F34D10200000001000000060000000000000002135D450500000002050000FC135D81070CFD9C010F34D100000000000000000A0F350D00000000060000000000000003135D450700000003000000060000000412070108000000040000000600000001120701020000000108A912FF12073D08050000FA135D8105050000FC135D81070CFD9C010F34D10000000000045489F91386AD020CFD9BFF0F350D080C9A87080F8750FF0000000600000004000000050000000400000006000000011386710200000001000000050F350D00045489F90000000613867102000000010CFD9BFF0F350D080000000600000004000000050000000000000003135D4507000000030CFD9C010F34D10000000000000000050000000500000002135D450500000002050000FC135D81070CFD9C010F34D10000000000000000050000000500000003000000050000000412070108000000040000000500000000"
theorem small_9438765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438765_right_root small_9438765_right_fuel small_9438765_right_count small_9438765_right_encoded = true := by
  decide +kernel
theorem small_9438765_right_covered : CoveredBy scale carrier boxes small_9438765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438765_right_root small_9438765_right_fuel small_9438765_right_count small_9438765_right_encoded small_9438765_right_checked

theorem cover_9438765 : CoveredBy scale carrier boxes root_9438765 := by
  apply coveredBy_split_literal root_9438765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.root_9438766 small_9438765_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0644.cover_9438766
  · exact small_9438765_right_covered
#print axioms cover_9438765

def root_9438759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438759_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9438759_left_fuel : Nat := 1
def small_9438759_left_count : Nat := 1
def small_9438759_left_encoded : String := "00000003"
theorem small_9438759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9438759_left_root small_9438759_left_fuel small_9438759_left_count small_9438759_left_encoded = true := by
  decide +kernel
theorem small_9438759_left_covered : CoveredBy scale carrier boxes small_9438759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9438759_left_root small_9438759_left_fuel small_9438759_left_count small_9438759_left_encoded small_9438759_left_checked

theorem cover_9438759 : CoveredBy scale carrier boxes root_9438759 := by
  apply coveredBy_split_literal root_9438759 small_9438759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9438765 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9438759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9438765
#print axioms cover_9438759

def root_9434759 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9434759 : CoveredBy scale carrier boxes root_9434759 := by
  apply coveredBy_split_literal root_9434759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9434760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9438759 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9434760
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9438759
#print axioms cover_9434759

def root_9434753 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434753_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434753_left_fuel : Nat := 1
def small_9434753_left_count : Nat := 1
def small_9434753_left_encoded : String := "00000002"
theorem small_9434753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434753_left_root small_9434753_left_fuel small_9434753_left_count small_9434753_left_encoded = true := by
  decide +kernel
theorem small_9434753_left_covered : CoveredBy scale carrier boxes small_9434753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434753_left_root small_9434753_left_fuel small_9434753_left_count small_9434753_left_encoded small_9434753_left_checked

theorem cover_9434753 : CoveredBy scale carrier boxes root_9434753 := by
  apply coveredBy_split_literal root_9434753 small_9434753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9434759 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9434753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9434759
#print axioms cover_9434753

def root_9421949 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9421949 : CoveredBy scale carrier boxes root_9421949 := by
  apply coveredBy_split_literal root_9421949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.root_9421950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9434753 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0643.cover_9421950
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9434753
#print axioms cover_9421949

def root_9421943 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421943_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421943_left_fuel : Nat := 1
def small_9421943_left_count : Nat := 1
def small_9421943_left_encoded : String := "00000001"
theorem small_9421943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421943_left_root small_9421943_left_fuel small_9421943_left_count small_9421943_left_encoded = true := by
  decide +kernel
theorem small_9421943_left_covered : CoveredBy scale carrier boxes small_9421943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421943_left_root small_9421943_left_fuel small_9421943_left_count small_9421943_left_encoded small_9421943_left_checked

theorem cover_9421943 : CoveredBy scale carrier boxes root_9421943 := by
  apply coveredBy_split_literal root_9421943 small_9421943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9421949 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9421943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9421949
#print axioms cover_9421943

def root_9421507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421507_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421507_left_fuel : Nat := 20
def small_9421507_left_count : Nat := 203
def small_9421507_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E8FF08A91301120701000000000008A91305120700FA08A913070000000A00000005000000020000000A12073D0008A91305120700FA0000000500000002000000050000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A91305120700FA00000007000000020000000700000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A91305120700FA000000050000000212073CFA000000020500010200000005135D80F900000001050000FC00000005135D45070000000305000108000000050000000712073D0008A91305120700FA000000050000000212073CFA000000020500010200000005135D80F900000001050000FC00000005135D4507000000030500010800000005135D80FF000000040CFD9C010F34D1000000000000000007000000070000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A91305120700FA00000007000000020000000700000000000000021151E905000000020A0000FC115225070A0001081151E8FF08A913010000000A12073D0008A91307120700FC000000050000000312073CFC000000030500010200000005135D80F900000001050000FA000000050000000A0000000000000004115224FF0000000408A913011207010000000000000000070000000A000000031151E907000000030A0001081151E8FF08A9130112070100000000000000000A12073D0005000102135D44F9050000FA135D81050000000A000000020000000800000001135D80F900000001050000FA135D8105050000FC135D810705000108000000050000000700000003135D45070000000305000108135D44FF0000000800000004135D80FF000000040CFD9C010000000A0000000700000002135D450500000002050000FC00000008135D450700000003000000080000000000000004115224FF0000000408A9130112070100000000000000000712073D0008A912FF12073D08050001020000000A135D80F900000001050000FA000000070000000A00000004000000070000000000000001"
theorem small_9421507_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421507_left_root small_9421507_left_fuel small_9421507_left_count small_9421507_left_encoded = true := by
  decide +kernel
theorem small_9421507_left_covered : CoveredBy scale carrier boxes small_9421507_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421507_left_root small_9421507_left_fuel small_9421507_left_count small_9421507_left_encoded small_9421507_left_checked

theorem cover_9421507 : CoveredBy scale carrier boxes root_9421507 := by
  apply coveredBy_split_literal root_9421507 small_9421507_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9421943 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9421507_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9421943
#print axioms cover_9421507

def root_9421502 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421502_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421502_right_fuel : Nat := 1
def small_9421502_right_count : Nat := 1
def small_9421502_right_encoded : String := "00000000"
theorem small_9421502_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421502_right_root small_9421502_right_fuel small_9421502_right_count small_9421502_right_encoded = true := by
  decide +kernel
theorem small_9421502_right_covered : CoveredBy scale carrier boxes small_9421502_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421502_right_root small_9421502_right_fuel small_9421502_right_count small_9421502_right_encoded small_9421502_right_checked

theorem cover_9421502 : CoveredBy scale carrier boxes root_9421502 := by
  apply coveredBy_split_literal root_9421502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9421507 small_9421502_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9421507
  · exact small_9421502_right_covered
#print axioms cover_9421502

def root_9418552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9418552 : CoveredBy scale carrier boxes root_9418552 := by
  apply coveredBy_split_literal root_9418552 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3525.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9421502 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3525.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9421502
#print axioms cover_9418552

def root_9418551 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9418551_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9418551_right_fuel : Nat := 21
def small_9418551_right_count : Nat := 365
def small_9418551_right_encoded : String := "0A0001001151E901000000000A0001021151E8F90A0000FA115225050A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001081151E909000000040000000700000007000000021151E905000000020A0000FC115225070A0001081151E909000000040000000600000007000000031151E907000000030000000A00000001115224F9000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A912F9000000071207010200000001000000071152250908A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A91307000000070000000700000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A913070000000912073CFC000000030000000600000004000000031151E907000000030A0001081151E90900000004000000061152250908A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A91309000000060000000700000001120701020000000108A91305120700FA00000006000000020000000600000004000000021151E905000000020A0000FC115225070A0001081151E909000000040000000A1152250908A912F912073D0208A913070000000A00000006000000010000000900000004000000031151E907000000030A0001081151E909000000040000000500000006115225010A0001021151E8F90A0000FA115225050A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001081151E909000000040000000600000007000000021151E905000000020A0000FC115225070A0001081151E909000000040000000700000007000000031151E907000000030A0001080000000A0000000600000001115224F9000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91301120701000000000008A912F900000007120701020000000108A91305120700FA00000007000000020000000712073D0008A912F900000007120701020000000108A913050000000700000007000000001152250908A91301120701000000000008A912F900000007120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC00000007000000030000000712073D0008A912F912073D0208A91305120700FA00000007000000020000000700000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000308A91309120701080000000400000007000000070000000000000004000000031151E907000000030A0001081151E9090000000408A913010000000812073D0008A912F90000000600000008000000001152250908A91301120701000000000008A912F900000007120701020000000108A913050000000612073CFA0000000208A91309000000080000000612073D0008A912F912073D0208A91305120700FA00000007000000020000000700000001120701020000000108A9130500000006000000060000000000000004000000021151E905000000020A0000FC115225070A0001081151E9090000000408A91301120701000000000008A912F90000000712070102000000010000000A12073D0008A912F912073D0208A9130700000007000000070000000112070102000000010000000A000000001152250908A91301120701000000000008A912F90000000712070102000000010000000A12073D0008A912F90000000A120701020000000108A913070000000912073CFC000000030000000A0000000000000004000000031151E907000000030A0001081151E909000000040000000A1152250908A91301120701000000000008A912F90000000712070102000000010000000512073D0008A912F900000006120701020000000100000005000000000000000400000000"
theorem small_9418551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9418551_right_root small_9418551_right_fuel small_9418551_right_count small_9418551_right_encoded = true := by
  decide +kernel
theorem small_9418551_right_covered : CoveredBy scale carrier boxes small_9418551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9418551_right_root small_9418551_right_fuel small_9418551_right_count small_9418551_right_encoded small_9418551_right_checked

theorem cover_9418551 : CoveredBy scale carrier boxes root_9418551 := by
  apply coveredBy_split_literal root_9418551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9418552 small_9418551_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9418552
  · exact small_9418551_right_covered
#print axioms cover_9418551

def root_9373859 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9373859 : CoveredBy scale carrier boxes root_9373859 := by
  apply coveredBy_split_literal root_9373859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.root_9373860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9418551 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0642.cover_9373860
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9418551
#print axioms cover_9373859

def root_9366625 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9366625 : CoveredBy scale carrier boxes root_9366625 := by
  apply coveredBy_split_literal root_9366625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9366626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9373859 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9366626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9373859
#print axioms cover_9366625

def root_9450489 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9450489 : CoveredBy scale carrier boxes root_9450489 := by
  apply coveredBy_split_literal root_9450489 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3534.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3535.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3534.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3535.covered
#print axioms cover_9450489

def root_9455875 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455875_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455875_left_fuel : Nat := 22
def small_9455875_left_count : Nat := 225
def small_9455875_left_encoded : String := "1151E8FD0A0000FE1152250908A91301120701000000000008A912F912073D0208A91305120700FA08A913090000000812073CFE000000040500010600000005135D80FD00000003000000050000000212073CFA0000000208A913090000000812073CFE000000040000000800000001120701020000000108A91305120700FA08A91309120700FE0000000500000004000000050000000212073CFA0000000208A91309120700FE000000050000000412073CFE0000000405000106135D44FD04548A011386710000000000045489F90000000513867102000000010CFD9C05000000050F350CFA00000002000000080000000800000003135D80FD0000000304548A011386710000000000045489F91386AD02000000080000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002000000081386AD00045489F90000000813867102000000010CFD9C0500000007000000080000000012073D0008A912F912073D0208A91305120700FA00000005000000020000000800000001120701020000000108A913050000000712073CFA0000000208A91309000000080000000700000000000000041151E9090000000408A91301120701000000000008A912F912073D0208A91305120700FA000000070000000212073CFA0000000205000106135D44FD050000FE135D810904548A011386710000000000000000080000000700000004135D4509000000040000000700000003135D80FD00000003050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A0113867100000000000CFD9BF90F350D0200000008000000010F34D10200000001000000070000000800000001120701020000000108A913050000000712073CFA0000000205000106135D44FD0000000700000003135D80FD00000003050000FE135D810904548A011386710000000000045489F91386AD020CFD9C05000000070F350CFA000000020C9A86FA00000007000000080000000113867102000000010CFD9C05000000070F350CFA000000020C9A86FA000000070F87510500000002000000070000000700000004135D45090000000404548A011386710000000000045489F9000000070000000A0000000712073D0008A912F912073D0208A913050000000712073CFA00000002050001060000000700000008000000011207010200000001000000070000000000000003"
theorem small_9455875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455875_left_root small_9455875_left_fuel small_9455875_left_count small_9455875_left_encoded = true := by
  decide +kernel
theorem small_9455875_left_covered : CoveredBy scale carrier boxes small_9455875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455875_left_root small_9455875_left_fuel small_9455875_left_count small_9455875_left_encoded small_9455875_left_checked

theorem cover_9455875 : CoveredBy scale carrier boxes root_9455875 := by
  apply coveredBy_split_literal root_9455875 small_9455875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3536.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9455875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3536.covered
#print axioms cover_9455875

def root_9455870 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455870_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455870_right_fuel : Nat := 1
def small_9455870_right_count : Nat := 1
def small_9455870_right_encoded : String := "00000002"
theorem small_9455870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455870_right_root small_9455870_right_fuel small_9455870_right_count small_9455870_right_encoded = true := by
  decide +kernel
theorem small_9455870_right_covered : CoveredBy scale carrier boxes small_9455870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455870_right_root small_9455870_right_fuel small_9455870_right_count small_9455870_right_encoded small_9455870_right_checked

theorem cover_9455870 : CoveredBy scale carrier boxes root_9455870 := by
  apply coveredBy_split_literal root_9455870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455875 small_9455870_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455875
  · exact small_9455870_right_covered
#print axioms cover_9455870

def root_9455869 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455869_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455869_right_fuel : Nat := 22
def small_9455869_right_count : Nat := 241
def small_9455869_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A91301120701000000000008A912F900000008120701020000000108A91309000000080000000812073D0008A912F912073D0200000008000000010000000800000000000000041151E9090000000408A91301120701000000000008A912F912073D02050000FA135D81050500010600000008000000080000000200000008000000011207010200000001050000FA135D810505000106135D44FD050000FE135D810904548A011386710000000000000000080000000700000004135D45090000000404548A011386710000000000000000070000000700000003135D80FD00000003050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A011386710000000000045489F91386AD02078000FA128A7D0500000008000000020000000500000001000000051386AD00000000080000000000000002135D45050000000205000106135D44FD050000FE00000008135D45090000000404548A011386710000000000045489F900000008000000050000000700000003135D80FD00000003050000FE000000080000000512073D0008A912F9000000081207010200000001050000FA135D810505000106000000070000000800000002000000080000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073D0208A912FD000000080000000800000001120701020000000108A912FD12073D0608A913090000000812073CFE00000004050000FA135D810504548A011386710000000000045489F90000000813867102000000010000000800000008000000020000000800000003120701060000000308A913090000000812073CFE000000040000000812073D0008A912F912073D0208A912FD12073D060000000800000003120701060000000308A91309120700FE050000FA00000008135D4505000000020CFD9C01000000080000000A0000000412073CFE000000040000000800000001120701020000000108A912FD000000080000000800000000000000041151E9090000000408A91301120701000000000008A912F912073D0208A912FD12073D0600000008000000030000000800000001120701020000000108A912FD12073D06050000FA135D8105050000FE135D810904548A011386710000000000045489F900000008000000050000000800000004000000050000000200000005000000030000000512073D0008A912F900000008120701020000000108A912FD12073D0600000008000000030000000800000000"
theorem small_9455869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455869_right_root small_9455869_right_fuel small_9455869_right_count small_9455869_right_encoded = true := by
  decide +kernel
theorem small_9455869_right_covered : CoveredBy scale carrier boxes small_9455869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455869_right_root small_9455869_right_fuel small_9455869_right_count small_9455869_right_encoded small_9455869_right_checked

theorem cover_9455869 : CoveredBy scale carrier boxes root_9455869 := by
  apply coveredBy_split_literal root_9455869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455870 small_9455869_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455870
  · exact small_9455869_right_covered
#print axioms cover_9455869

def root_9455863 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455863_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455863_left_fuel : Nat := 1
def small_9455863_left_count : Nat := 1
def small_9455863_left_encoded : String := "00000001"
theorem small_9455863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455863_left_root small_9455863_left_fuel small_9455863_left_count small_9455863_left_encoded = true := by
  decide +kernel
theorem small_9455863_left_covered : CoveredBy scale carrier boxes small_9455863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455863_left_root small_9455863_left_fuel small_9455863_left_count small_9455863_left_encoded small_9455863_left_checked

theorem cover_9455863 : CoveredBy scale carrier boxes root_9455863 := by
  apply coveredBy_split_literal root_9455863 small_9455863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455869 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9455863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455869
#print axioms cover_9455863

def root_9455329 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455329_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455329_left_fuel : Nat := 20
def small_9455329_left_count : Nat := 249
def small_9455329_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E8FD0A0000FE1152250908A91301120701000000000008A91305120700FA08A913090000000800000005000000020000000812073D0008A91305120700FA00000005000000020000000500000000000000041151E9090000000408A91301120701000000000008A91305120700FA0000000500000002000000080000000800000003115224FD000000030A0000FE1152250908A91301120701000000000008A91305120700FA08A912FD12073D0608A91309120700FE0500010200000005000000080000000412073CFE000000040500010200000005135D80F90000000100000005000000031207010600000003000000090000000212073CFA0000000208A912FD12073D0608A913090000000812073CFE000000040500010200000005000000080000000312070106000000030000000912073D0008A91305120700FA08A912FD12073D060000000500000003000000050000000212073CFA0000000208A912FD12073D0608A91309120700FE000000050000000412073CFE0000000405000102000000050000000800000003120701060000000308A91309120700FE00000005000000040000000900000000000000041151E9090000000408A91301120701000000000008A91305120700FA08A912FD12073D060500010200000009135D80F900000001050000FE00000009135D45090000000404548A01000000091386AD00000000090000000000000003120701060000000300000009000000020000000912073D0008A91305120700FA08A912FD12073D060500010200000005135D80F900000001050000FE00000005135D4509000000040CFD9C0100000008000000070000000312070106000000030500010200000009135D80F900000001050000FE00000009135D450900000004000000090000000212073CFA0000000208A912FD12073D06000000080000000312070106000000030000000900000000000000021151E905000000020A0001061151E8FD0A0000FE1152250908A913010000000812073D0008A91309120700FE00000005000000040000000800000000000000041151E909000000040000000800000003115224FD000000030A0000FE1152250908A91301120701000000000008A912FD0000000812070106000000030000000912073D0008A912FD12073D0608A91309120700FE05000102000000050000000A0000000412073CFE0000000405000102135D44F900000008000000010000000800000003120701060000000308A91309120700FE0500010200000009135D80F900000001050000FA000000090000000A000000040000000900000000000000041151E909000000040000000800000001"
theorem small_9455329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455329_left_root small_9455329_left_fuel small_9455329_left_count small_9455329_left_encoded = true := by
  decide +kernel
theorem small_9455329_left_covered : CoveredBy scale carrier boxes small_9455329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455329_left_root small_9455329_left_fuel small_9455329_left_count small_9455329_left_encoded small_9455329_left_checked

theorem cover_9455329 : CoveredBy scale carrier boxes root_9455329 := by
  apply coveredBy_split_literal root_9455329 small_9455329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455863 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9455329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455863
#print axioms cover_9455329

def root_9455324 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455324_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9455324_right_fuel : Nat := 1
def small_9455324_right_count : Nat := 1
def small_9455324_right_encoded : String := "00000000"
theorem small_9455324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9455324_right_root small_9455324_right_fuel small_9455324_right_count small_9455324_right_encoded = true := by
  decide +kernel
theorem small_9455324_right_covered : CoveredBy scale carrier boxes small_9455324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9455324_right_root small_9455324_right_fuel small_9455324_right_count small_9455324_right_encoded small_9455324_right_checked

theorem cover_9455324 : CoveredBy scale carrier boxes root_9455324 := by
  apply coveredBy_split_literal root_9455324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.root_9455329 small_9455324_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645.cover_9455329
  · exact small_9455324_right_covered
#print axioms cover_9455324

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0645
