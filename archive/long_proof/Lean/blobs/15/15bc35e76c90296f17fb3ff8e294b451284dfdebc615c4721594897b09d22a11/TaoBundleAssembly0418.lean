import TaoBundleAssembly0409
import TaoBundleAssembly0414
import TaoBundleAssembly0417
import TaoBundleChunkBatch0568
import TaoBundleChunkBatch0569
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418
def root_6024481 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6024481_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6024481_left_fuel : Nat := 26
def small_6024481_left_count : Nat := 249
def small_6024481_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115224FB000000020A0001061151E907000000030000000A115225070A0001081151E8FF08A91303120700F808A912FB12073CFA0000000208A91307120701060000000305000100135D44F705000108135D44FF04548A030000000800000008000000040000000800000000135D80F70000000005000108135D44FF04548A03138670F80CFD9BFB0F350CFA0000000204548A07000000080000000A00000008000000011386ACF8000000010CFD9BFB0000000A0000000800000004135D80FF0000000404548A03000000080000000A0000000A120700FA08A913070000000800000005000000020000000112073CF80000000108A912FB12073CFA0000000208A91307120701060000000305000100135D44F70000000A00000000135D80F70000000005000108135D44FF0CFD9C030F34D0F80CFD9BFB0000000A0F34D0FA0000000A00000002000000010000000A000000040000000A0000000A120700FA08A9130712070106000000030500010000000005135D80F7000000000500010800000005135D80FF000000040CFD9C030000000800000005000000050000000200000004115224FF0000000408A91303120700F808A912FB0000000A120700FA08A91307120701060000000308A912FF12073D080500010000000008135D80F70000000004548A03000000080000000A0000000412070108000000040000000A0000000A000000020000000112073CF80000000108A912FB0000000A120700FA0000000A00000002000000031151E8FB0A0001061151E907000000030000000A115225070A0001081151E8FF08A91303120700F808A91307120701060000000305000100135D44F7050000FA0000000A135D44FB0000000A0000000200000000135D80F700000000050000FA135D80FB0000000205000108135D44FF04548A03138670F804548A07138671060000000307800100128A40F70000000A00000000128A7CF700000000000000090000000A000000010000000A000000040000000A135D44FB05000108135D44FF000000090000000400000009000000020000000A0000000112073CF80000000108A913071207010600000003050001000000000A135D80F700000000050000FA0000000A000000090000000A000000040000000A0000000300000002000000011151E903000000010A0000FA115224FB000000020A0001061151E907000000030000000A115225070A0001081151E8FF08A912FB12073CFA0000000208A9130712070106000000030000000A0000000A120700FA08A9130712070106000000030000000A0000000500000002000000040000000A000000031151E8FB0000000A0000000200000000"
theorem small_6024481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6024481_left_root small_6024481_left_fuel small_6024481_left_count small_6024481_left_encoded = true := by
  decide +kernel
theorem small_6024481_left_covered : CoveredBy scale carrier boxes small_6024481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6024481_left_root small_6024481_left_fuel small_6024481_left_count small_6024481_left_encoded small_6024481_left_checked

theorem cover_6024481 : CoveredBy scale carrier boxes root_6024481 := by
  apply coveredBy_split_literal root_6024481 small_6024481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_6025007 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6024481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_6025007
#print axioms cover_6024481

def root_6024480 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6024480 : CoveredBy scale carrier boxes root_6024480 := by
  apply coveredBy_split_literal root_6024480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6024481 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2269.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6024481
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2269.covered
#print axioms cover_6024480

def root_5989606 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989606 : CoveredBy scale carrier boxes root_5989606 := by
  apply coveredBy_split_literal root_5989606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.root_5989607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6024480 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0417.cover_5989607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6024480
#print axioms cover_5989606

def root_5895110 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895110 : CoveredBy scale carrier boxes root_5895110 := by
  apply coveredBy_split_literal root_5895110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5895111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_5989606 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5895111
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_5989606
#print axioms cover_5895110

def root_5870926 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870926 : CoveredBy scale carrier boxes root_5870926 := by
  apply coveredBy_split_literal root_5870926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5870927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_5895110 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5870927
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_5895110
#print axioms cover_5870926

def root_6032471 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6032471 : CoveredBy scale carrier boxes root_6032471 := by
  apply coveredBy_split_literal root_6032471 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2270.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2271.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2270.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2271.covered
#print axioms cover_6032471

def root_6042491 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6042491 : CoveredBy scale carrier boxes root_6042491 := by
  apply coveredBy_split_literal root_6042491 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2274.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2275.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2274.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2275.covered
#print axioms cover_6042491

def root_6042485 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6042485_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6042485_left_fuel : Nat := 1
def small_6042485_left_count : Nat := 1
def small_6042485_left_encoded : String := "00000001"
theorem small_6042485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6042485_left_root small_6042485_left_fuel small_6042485_left_count small_6042485_left_encoded = true := by
  decide +kernel
theorem small_6042485_left_covered : CoveredBy scale carrier boxes small_6042485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6042485_left_root small_6042485_left_fuel small_6042485_left_count small_6042485_left_encoded small_6042485_left_checked

theorem cover_6042485 : CoveredBy scale carrier boxes root_6042485 := by
  apply coveredBy_split_literal root_6042485 small_6042485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6042491 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6042485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6042491
#print axioms cover_6042485

def root_6040541 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6040541 : CoveredBy scale carrier boxes root_6040541 := by
  apply coveredBy_split_literal root_6040541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2273.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6042485 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2273.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6042485
#print axioms cover_6040541

def root_6040535 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6040535_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6040535_left_fuel : Nat := 1
def small_6040535_left_count : Nat := 1
def small_6040535_left_encoded : String := "00000000"
theorem small_6040535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6040535_left_root small_6040535_left_fuel small_6040535_left_count small_6040535_left_encoded = true := by
  decide +kernel
theorem small_6040535_left_covered : CoveredBy scale carrier boxes small_6040535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6040535_left_root small_6040535_left_fuel small_6040535_left_count small_6040535_left_encoded small_6040535_left_checked

theorem cover_6040535 : CoveredBy scale carrier boxes root_6040535 := by
  apply coveredBy_split_literal root_6040535 small_6040535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6040541 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6040535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6040541
#print axioms cover_6040535

def root_6039963 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039963_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039963_left_fuel : Nat := 24
def small_6039963_left_count : Nat := 271
def small_6039963_left_encoded : String := "1386AD0004548A03138670F804548A05138670FA0CFD9C070F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D09000000050000000400000005000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07000000050000000300000005000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09000000050000000400000005000000030F875107000000030C9A86FE0F878D09000000050000000400000005000000021386ACFA000000020CFD9C070F34D0FC0CFD9C09000000060F350CFE0000000400000008000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D0700000006000000030F87510700000003067ECE770000000512EA590000000000022A45830000000500000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09067ECE770000000812EA590000000000022A458300000005000000060000000400000008000000030F875107000000030C9A86FE0F878D09067ECE770000000912EA590000000000022A45830000000513E200F800000001067ECE850000000500000009000000040F87510900000004067ECE7712EA9500022A458300000005000000080000000012EA590000000000022A45830000000513E200F800000001067ECE850000000500000008000000011386ACF80000000104548A05138670FA0CFD9C070F34D0FC0CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F87510900000004067ECE770000000512EA590000000000067ECE830000000500000006000000030F350CFC000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09067ECE770000000712EA590000000000067ECE830000000500000006000000040F87510900000004067ECE770000000A12EA590000000000067ECE83000000050000000A000000030F875107000000030C9A86FE0F878D0900000007000000040F87510900000004067ECE7712EA9500067ECE8300000005000000070000000012EA590000000000067ECE830000000512EA94F800000001022A45850000000500000007000000021386ACFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F8751090000000400000008000000030F875107000000030C9A86FE0F878D0900000007000000040F87510900000004067ECE7712EA9500067ECE8312EA58F8067ECE85000000050000000800000001000000070000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA0B4D43FC10804D070B4D43FE10804D090000000500000004000000050000000310801107000000030B4D43FE000000070000000500000002000000080000000112EA94F800000001067ECE85000000070000000600000000"
theorem small_6039963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039963_left_root small_6039963_left_fuel small_6039963_left_count small_6039963_left_encoded = true := by
  decide +kernel
theorem small_6039963_left_covered : CoveredBy scale carrier boxes small_6039963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039963_left_root small_6039963_left_fuel small_6039963_left_count small_6039963_left_encoded small_6039963_left_checked

theorem cover_6039963 : CoveredBy scale carrier boxes root_6039963 := by
  apply coveredBy_split_literal root_6039963 small_6039963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6040535 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6039963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6040535
#print axioms cover_6039963

def root_6039957 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039957_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039957_left_fuel : Nat := 1
def small_6039957_left_count : Nat := 1
def small_6039957_left_encoded : String := "00000004"
theorem small_6039957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039957_left_root small_6039957_left_fuel small_6039957_left_count small_6039957_left_encoded = true := by
  decide +kernel
theorem small_6039957_left_covered : CoveredBy scale carrier boxes small_6039957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039957_left_root small_6039957_left_fuel small_6039957_left_count small_6039957_left_encoded small_6039957_left_checked

theorem cover_6039957 : CoveredBy scale carrier boxes root_6039957 := by
  apply coveredBy_split_literal root_6039957 small_6039957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039963 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6039957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039963
#print axioms cover_6039957

def root_6039919 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039919_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039919_left_fuel : Nat := 8
def small_6039919_left_count : Nat := 17
def small_6039919_left_encoded : String := "120700FE045489F71386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000013867100000000000000000600000004"
theorem small_6039919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039919_left_root small_6039919_left_fuel small_6039919_left_count small_6039919_left_encoded = true := by
  decide +kernel
theorem small_6039919_left_covered : CoveredBy scale carrier boxes small_6039919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039919_left_root small_6039919_left_fuel small_6039919_left_count small_6039919_left_encoded small_6039919_left_checked

theorem cover_6039919 : CoveredBy scale carrier boxes root_6039919 := by
  apply coveredBy_split_literal root_6039919 small_6039919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039957 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6039919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039957
#print axioms cover_6039919

def root_6039913 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039913_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039913_left_fuel : Nat := 1
def small_6039913_left_count : Nat := 1
def small_6039913_left_encoded : String := "00000003"
theorem small_6039913_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039913_left_root small_6039913_left_fuel small_6039913_left_count small_6039913_left_encoded = true := by
  decide +kernel
theorem small_6039913_left_covered : CoveredBy scale carrier boxes small_6039913_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039913_left_root small_6039913_left_fuel small_6039913_left_count small_6039913_left_encoded small_6039913_left_checked

theorem cover_6039913 : CoveredBy scale carrier boxes root_6039913 := by
  apply coveredBy_split_literal root_6039913 small_6039913_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039919 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6039913_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039919
#print axioms cover_6039913

def root_6039867 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039867_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039867_left_fuel : Nat := 10
def small_6039867_left_count : Nat := 21
def small_6039867_left_encoded : String := "120700FC08A913090000000612073CFE00000004045489F71386AD0004548A03138670F804548A05138670FA00000006000000020000000600000001000000060000000013867100000000000000000600000003"
theorem small_6039867_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039867_left_root small_6039867_left_fuel small_6039867_left_count small_6039867_left_encoded = true := by
  decide +kernel
theorem small_6039867_left_covered : CoveredBy scale carrier boxes small_6039867_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039867_left_root small_6039867_left_fuel small_6039867_left_count small_6039867_left_encoded small_6039867_left_checked

theorem cover_6039867 : CoveredBy scale carrier boxes root_6039867 := by
  apply coveredBy_split_literal root_6039867 small_6039867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039913 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6039867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039913
#print axioms cover_6039867

def root_6039862 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039862_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039862_right_fuel : Nat := 1
def small_6039862_right_count : Nat := 1
def small_6039862_right_encoded : String := "00000002"
theorem small_6039862_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039862_right_root small_6039862_right_fuel small_6039862_right_count small_6039862_right_encoded = true := by
  decide +kernel
theorem small_6039862_right_covered : CoveredBy scale carrier boxes small_6039862_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039862_right_root small_6039862_right_fuel small_6039862_right_count small_6039862_right_encoded small_6039862_right_checked

theorem cover_6039862 : CoveredBy scale carrier boxes root_6039862 := by
  apply coveredBy_split_literal root_6039862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039867 small_6039862_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039867
  · exact small_6039862_right_covered
#print axioms cover_6039862

def root_6039861 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039861_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039861_right_fuel : Nat := 30
def small_6039861_right_count : Nat := 299
def small_6039861_right_encoded : String := "12073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE00000004045489F71386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D0700000008000000030F875107000000030C9A86FE0F878D09067ECE770000000812EA590000000000022A458300000009000000060000000400000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FA0F878D050C9A86FC0000000800000008000000020F8751050000000200000008000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0F878D0900000006000000040F8751090000000400000008000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA000000060000000600000000138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F8751090000000400000008000000030F875107000000030C9A86FE0F878D09022A457713E20100022A458313E1C4F80AD3578510D100FA00000009000000020000000600000001000000060000000013E1C50000000000022A458313E1C4F80AD3578510D100FA0B4D43FC000000060000000A00000002000000060000000100000006000000040F87510900000004022A457713E20100022A45830000000813E200F800000001000000080000000013E1C50000000000022A458313E1C4F80AD3578510D100FA0B4D43FC0000000810801107000000030B4D43FE10804D0900000009000000040000000800000002000000080000000113E200F8000000010AD3578510D100FA0B4D43FC10804D07000000060000000310801107000000030B4D43FE10804D090000000600000004000000080000000200000008000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FC0F878D0700000006000000030F875107000000030C9A86FE000000060F8751090000000400000008000000020F875105000000020C9A86FC000000060F8751070000000300000006000000011386ACF8000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F87510900000004022A457713E20100067ECE8312EA58F80AD3578510D100FA00000006000000020000000600000001000000060000000013E1C50000000000067ECE8312EA58F80AD3578510D100FA0000000600000002000000060000000100000006000000020F350CFA000000020CFD9C070000000600000006"
theorem small_6039861_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039861_right_root small_6039861_right_fuel small_6039861_right_count small_6039861_right_encoded = true := by
  decide +kernel
theorem small_6039861_right_covered : CoveredBy scale carrier boxes small_6039861_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039861_right_root small_6039861_right_fuel small_6039861_right_count small_6039861_right_encoded small_6039861_right_checked

theorem cover_6039861 : CoveredBy scale carrier boxes root_6039861 := by
  apply coveredBy_split_literal root_6039861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039862 small_6039861_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039862
  · exact small_6039861_right_covered
#print axioms cover_6039861

def root_6039856 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039856_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039856_right_fuel : Nat := 1
def small_6039856_right_count : Nat := 1
def small_6039856_right_encoded : String := "00000001"
theorem small_6039856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039856_right_root small_6039856_right_fuel small_6039856_right_count small_6039856_right_encoded = true := by
  decide +kernel
theorem small_6039856_right_covered : CoveredBy scale carrier boxes small_6039856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039856_right_root small_6039856_right_fuel small_6039856_right_count small_6039856_right_encoded small_6039856_right_checked

theorem cover_6039856 : CoveredBy scale carrier boxes root_6039856 := by
  apply coveredBy_split_literal root_6039856 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039861 small_6039856_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039861
  · exact small_6039856_right_covered
#print axioms cover_6039856

def root_6039855 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039855_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039855_right_fuel : Nat := 32
def small_6039855_right_count : Nat := 333
def small_6039855_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE00000004045489F71386AD000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C09000000070F350CFE000000040C9A86FC0F878D070C9A86FE000000070F87510900000004067ECE770000000712EA5900000000000AD3578310D100F8022A458500000007000000060000000100000006000000030F8751070000000300000007000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC0F878D0700000006000000030F8751070000000300000007000000010F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C09000000070F350CFE000000040C9A86F80F878D030C9A86FC0F878D07000000060000000300000007000000010F8751030000000100000007000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F800000006000000060000000013867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F87510900000004022A457713E201000AD3578310D100F8022A45850000000A0000000600000001000000060000000013E1C500000000000AD3578310D100F8022A458513E1C4FA0DE7C9FC000000060E5FD907000000030B4D43FE000000060000000900000002000000060000000100000006000000030F875107000000030C9A86FE0F878D0900000007000000040F87510900000004022A457713E201000AD3578310D100F8022A4585000000070000000700000001000000070000000013E1C500000000000AD3578310D100F8022A458513E1C4FA0B4D43FC10804D070B4D43FE0000000710801109000000040000000A00000003000000070000000213E200FA000000020B4D43FC10804D070000000600000003000000070000000110D13CF800000001022A45850000000700000006000000021386ACFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86FC000000060F875107000000030C9A86FE000000060F87510900000004022A457713E201000AD3578310D100F80000000600000001000000060000000013E1C500000000000AD3578310D100F8000000060000000100000006000000010F350CF80000000104548A05138670FA0CFD9C07000000060F350CFC000000030CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FC0F878D0700000006000000030F875107000000030C9A86FE0000000600000007000000010F875103000000010C9A86FC000000060F8751070000000300000006000000021386ACFA000000020CFD9C0700000006000000060000000212073CFA0000000208A913070000000612073CFC0000000308A913090000000612073CFE00000004045489F71386AD000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C0700000006000000060000000200000006000000010F350CF8000000010CFD9C050F34D0FA0000000600000002000000060000000013867100000000000CFD9C030F34D0F80CFD9C050F34D0FA000000060000000200000006000000010F350CF8000000010CFD9C050F34D0FA000000060000000200000006"
theorem small_6039855_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039855_right_root small_6039855_right_fuel small_6039855_right_count small_6039855_right_encoded = true := by
  decide +kernel
theorem small_6039855_right_covered : CoveredBy scale carrier boxes small_6039855_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039855_right_root small_6039855_right_fuel small_6039855_right_count small_6039855_right_encoded small_6039855_right_checked

theorem cover_6039855 : CoveredBy scale carrier boxes root_6039855 := by
  apply coveredBy_split_literal root_6039855 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039856 small_6039855_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039856
  · exact small_6039855_right_covered
#print axioms cover_6039855

def root_6039849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039849_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6039849_left_fuel : Nat := 1
def small_6039849_left_count : Nat := 1
def small_6039849_left_encoded : String := "00000000"
theorem small_6039849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6039849_left_root small_6039849_left_fuel small_6039849_left_count small_6039849_left_encoded = true := by
  decide +kernel
theorem small_6039849_left_covered : CoveredBy scale carrier boxes small_6039849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6039849_left_root small_6039849_left_fuel small_6039849_left_count small_6039849_left_encoded small_6039849_left_checked

theorem cover_6039849 : CoveredBy scale carrier boxes root_6039849 := by
  apply coveredBy_split_literal root_6039849 small_6039849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_6039855 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6039849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_6039855
#print axioms cover_6039849

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418
