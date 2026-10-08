import TaoBundleAssembly0013
import TaoBundleChunkBatch0048
import TaoBundleChunkBatch0049
import TaoBundleChunkBatch0050
import TaoBundleChunkBatch0051
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014
def root_514150 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514150_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514150_left_fuel : Nat := 18
def small_514150_left_count : Nat := 131
def small_514150_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000400000008120700FE05000106000000080000000800000004000000080000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000400000008120700FE05000106135D44FD0CFD9BF7000000080000000800000003135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D0F800000008000000010F350CF800000001000000070F34D0F6000000080000000000000004120700FA08A912FF00000008120700FE0500010600000008135D80FD000000030CFD9BF700000008000000080000000400000002120700F608A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D44FD0000000800000003135D80FD00000003045489F700000008138670F604548A03000000080000000800000000120700FE0500010600000008135D80FD00000003045489F7000000080000000A00000004120700FA00000008000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000400000008120700FE0500010600000008000000070000000400000008000000001151E8FF08A912F700000008120700F608A91303120700F8000000080000000100000008000000000000000400000003"
theorem small_514150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_514150_left_root small_514150_left_fuel small_514150_left_count small_514150_left_encoded = true := by
  decide +kernel
theorem small_514150_left_covered : CoveredBy scale carrier boxes small_514150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_514150_left_root small_514150_left_fuel small_514150_left_count small_514150_left_encoded small_514150_left_checked

theorem cover_514150 : CoveredBy scale carrier boxes root_514150 := by
  apply coveredBy_split_literal root_514150 small_514150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0013.root_514430 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_514150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0013.cover_514430
#print axioms cover_514150

def root_514144 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514144_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514144_left_fuel : Nat := 1
def small_514144_left_count : Nat := 1
def small_514144_left_encoded : String := "00000002"
theorem small_514144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_514144_left_root small_514144_left_fuel small_514144_left_count small_514144_left_encoded = true := by
  decide +kernel
theorem small_514144_left_covered : CoveredBy scale carrier boxes small_514144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_514144_left_root small_514144_left_fuel small_514144_left_count small_514144_left_encoded small_514144_left_checked

theorem cover_514144 : CoveredBy scale carrier boxes root_514144 := by
  apply coveredBy_split_literal root_514144 small_514144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514150 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_514144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514150
#print axioms cover_514144

def root_514143 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_514143 : CoveredBy scale carrier boxes root_514143 := by
  apply coveredBy_split_literal root_514143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514144 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0191.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514144
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0191.covered
#print axioms cover_514143

def root_514138 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514138_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514138_right_fuel : Nat := 1
def small_514138_right_count : Nat := 1
def small_514138_right_encoded : String := "00000001"
theorem small_514138_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_514138_right_root small_514138_right_fuel small_514138_right_count small_514138_right_encoded = true := by
  decide +kernel
theorem small_514138_right_covered : CoveredBy scale carrier boxes small_514138_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_514138_right_root small_514138_right_fuel small_514138_right_count small_514138_right_encoded small_514138_right_checked

theorem cover_514138 : CoveredBy scale carrier boxes root_514138 := by
  apply coveredBy_split_literal root_514138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514143 small_514138_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514143
  · exact small_514138_right_covered
#print axioms cover_514138

def root_514137 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514137_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514137_right_fuel : Nat := 24
def small_514137_right_count : Nat := 251
def small_514137_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073CFA0000000208A912FF12073CFE00000004050000F80000000800000008120700FE0000000700000004120700FA08A912FF00000008120700FE050000F8135D81030000000800000001000000080000000400000002120700F608A912FB12073CFA000000020000000800000008000000001151E8FF08A912F712073CF60000000008A912FB00000008120700FA050000F8000000080000000900000002000000080000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE00000004050000F8135D81030CFD9BF70F350CF6000000000CFD9BFB000000070F34D0FA0CFD9BFD000000070F34D1060000000300000007000000020F34D0F6000000070000000000000001135D4503000000010CFD9BF7000000070F34D0F60000000700000000120700FE000000070000000400000003120701060000000308A912FF12073CFE00000004050000F8135D81030CFD9BF70000000700000005000000010000000500000005120700FA08A912FD12073D0608A912FF12073CFE00000004050000F8135D81030CFD9BF70F350CF600000000045489FB1386ACFA000000020CFD9BFD0000000800000008000000080000000800000001135D4503000000010CFD9BF70F350CF600000000045489FB1386ACFA00000002000000080000000500000005120700FE050000F8135D81030CFD9BF70F350CF600000000045489FB1386ACFA000000020CFD9BFD000000070000000500000005000000050000000100000005000000040000000312070106000000030000000500000002120700F608A912FB12073CFA0000000208A912FD12073D0608A912FF00000007120700FE000000070000000400000003120701060000000300000005120700FA08A912FD12073D0608A912FF0000000800000005000000030000000500000002000000001151E8FF08A912F712073CF60000000008A912FB12073CFA0000000208A912FD12073D0600000008000000031207010600000003050000F8000000080000000800000008120700F60000000800000000000000041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F700000007120700F600000007000000001151E8FF000000080000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FD00000007120701060000000300000007120700F600000007000000001151E8FF08A912F700000009000000090000000400000002"
theorem small_514137_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_514137_right_root small_514137_right_fuel small_514137_right_count small_514137_right_encoded = true := by
  decide +kernel
theorem small_514137_right_covered : CoveredBy scale carrier boxes small_514137_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_514137_right_root small_514137_right_fuel small_514137_right_count small_514137_right_encoded small_514137_right_checked

theorem cover_514137 : CoveredBy scale carrier boxes root_514137 := by
  apply coveredBy_split_literal root_514137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514138 small_514137_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514138
  · exact small_514137_right_covered
#print axioms cover_514137

def root_514131 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514131_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_514131_left_fuel : Nat := 1
def small_514131_left_count : Nat := 1
def small_514131_left_encoded : String := "00000000"
theorem small_514131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_514131_left_root small_514131_left_fuel small_514131_left_count small_514131_left_encoded = true := by
  decide +kernel
theorem small_514131_left_covered : CoveredBy scale carrier boxes small_514131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_514131_left_root small_514131_left_fuel small_514131_left_count small_514131_left_encoded small_514131_left_checked

theorem cover_514131 : CoveredBy scale carrier boxes root_514131 := by
  apply coveredBy_split_literal root_514131 small_514131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514137 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_514131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514137
#print axioms cover_514131

def root_523395 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_523395 : CoveredBy scale carrier boxes root_523395 := by
  apply coveredBy_split_literal root_523395 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0192.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0193.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0192.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0193.covered
#print axioms cover_523395

def root_523389 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523389_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523389_left_fuel : Nat := 1
def small_523389_left_count : Nat := 1
def small_523389_left_encoded : String := "00000004"
theorem small_523389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_523389_left_root small_523389_left_fuel small_523389_left_count small_523389_left_encoded = true := by
  decide +kernel
theorem small_523389_left_covered : CoveredBy scale carrier boxes small_523389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_523389_left_root small_523389_left_fuel small_523389_left_count small_523389_left_encoded small_523389_left_checked

theorem cover_523389 : CoveredBy scale carrier boxes root_523389 := by
  apply coveredBy_split_literal root_523389 small_523389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_523395 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_523389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_523395
#print axioms cover_523389

def root_523388 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523388_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523388_right_fuel : Nat := 19
def small_523388_right_count : Nat := 153
def small_523388_right_encoded : String := "1151E8FF08A91303120700F808A912FB12073CFA0000000208A912FD12073D0600000008000000031207010600000003050000F6135D80F700000000050000FE135D80FF000000040000000800000008135D44F7050000FE135D80FF0000000404548A0300000008000000080000000800000000000000080000000112073CF80000000108A912FB12073CFA0000000208A912FD12073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9C03000000080F350CF8000000010000000800000008135D44F7050000FE135D80FF000000040CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB0F350CFA000000020000000900000008135D44FF0CFD9C03000000080F350CF800000001000000080000000400000000000000031207010600000003050000F6135D80F700000000050000FE135D80FF000000040CFD9C03000000080F350CF8000000010000000800000008135D44F7050000FE135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FD000000080000000800000008000000010F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386AD060C9A86F800000008000000080000000313867106000000030C9A86F80000000A000000080F34D0FA045489FD000000080000000500000002135D44FF0CFD9C03000000080F350CF800000001000000080000000400000000120700FA08A912FD12073D06050000F600000008135D44F7050000FE000000080000000800000000000000031207010600000003050000F600000008135D44F7050000FE0000000800000008000000000000000200000004"
theorem small_523388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_523388_right_root small_523388_right_fuel small_523388_right_count small_523388_right_encoded = true := by
  decide +kernel
theorem small_523388_right_covered : CoveredBy scale carrier boxes small_523388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_523388_right_root small_523388_right_fuel small_523388_right_count small_523388_right_encoded small_523388_right_checked

theorem cover_523388 : CoveredBy scale carrier boxes root_523388 := by
  apply coveredBy_split_literal root_523388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_523389 small_523388_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_523389
  · exact small_523388_right_covered
#print axioms cover_523388

def root_523382 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523382_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_523382_left_fuel : Nat := 1
def small_523382_left_count : Nat := 1
def small_523382_left_encoded : String := "00000003"
theorem small_523382_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_523382_left_root small_523382_left_fuel small_523382_left_count small_523382_left_encoded = true := by
  decide +kernel
theorem small_523382_left_covered : CoveredBy scale carrier boxes small_523382_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_523382_left_root small_523382_left_fuel small_523382_left_count small_523382_left_encoded small_523382_left_checked

theorem cover_523382 : CoveredBy scale carrier boxes root_523382 := by
  apply coveredBy_split_literal root_523382 small_523382_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_523388 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_523382_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_523388
#print axioms cover_523382

def root_522686 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522686_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522686_left_fuel : Nat := 25
def small_522686_left_count : Nat := 327
def small_522686_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000400000008120700FE050000F6135D80F7000000000500010600000008135D80FD0000000304548A03000000081386ACF80000000100000008135D44F70500010600000008135D80FD0000000304548A03138670F80CFD9BFB0F350CFA000000020000000800000008000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF00000008138670FE0C9A86FA0F878CFB00000002028000F6000000080000000A0F8750FB028000F60000000813D7B0F707800106000000080000000A0000000000000002000000040F34D0FA0000000A000000020000000000000004120700FA08A912FF00000008120700FE0000000800000004000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000F6135D80F7000000000500010600000008135D80FD000000030CFD9C03000000080F350CF80000000100000008135D44F705000106135D44FD0CFD9C03000000080F350CF8000000010000000800000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA000000020000000800000008000000010F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFF000000080F34D0FE0C9A86F80000000900000008000000040F34D0FA000000060000000200000000120700FE050000F6135D80F70000000005000106135D44FD0CFD9C03000000080F350CF8000000010CFD9BFB0F350CFA00000002000000070000000800000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF00000008138670FE000000070000000400000008000000010F350CF8000000010CFD9BFB000000070F34D0FA045489FF00000008138670FE000000070000000400000002135D44F705000106135D44FD0CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF00000008138670FE0C9A86FA0F878CFB0000000200000008000000080000000400000008000000010F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000009138670FE0C9A86F80F878D030C9A86FA00000007000000070000000100000007000000040F34D0FA000000060000000200000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0F878CFB00000002028000F6000000080000000A0F8750FB028000F60000000713D7B0F70780010600000008000000070000000000000002138670FE0C9A86FA0F878CFB00000002028000F613D7ECF7000000000000000A0000000A0F8750FB028000F60000000713D7B0F7000000070000000000000002000000040F34D0FA045489FF00000006138670FE0000000A0000000400000002000000010F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000007138670FE00000007000000040F34D0FA045489FF00000006138670FE0000000A00000004000000020000000000000004120700FA08A912FF12073CFE00000004050000F60000000800000006120700FE050000F6135D80F7000000000500010600000008135D80FD000000030CFD9C03000000080F350CF800000001045489FB1386ACFA00000002045489FF00000006138670FE0000000A0000000400000006135D44F70500010600000006135D80FD000000030CFD9C030000000A000000060000000000000004000000021151E8FF08A913030000000812073CF800000001000000080000000400000003"
theorem small_522686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_522686_left_root small_522686_left_fuel small_522686_left_count small_522686_left_encoded = true := by
  decide +kernel
theorem small_522686_left_covered : CoveredBy scale carrier boxes small_522686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_522686_left_root small_522686_left_fuel small_522686_left_count small_522686_left_encoded small_522686_left_checked

theorem cover_522686 : CoveredBy scale carrier boxes root_522686 := by
  apply coveredBy_split_literal root_522686 small_522686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_523382 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_522686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_523382
#print axioms cover_522686

def root_522680 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522680_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522680_left_fuel : Nat := 1
def small_522680_left_count : Nat := 1
def small_522680_left_encoded : String := "00000002"
theorem small_522680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_522680_left_root small_522680_left_fuel small_522680_left_count small_522680_left_encoded = true := by
  decide +kernel
theorem small_522680_left_covered : CoveredBy scale carrier boxes small_522680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_522680_left_root small_522680_left_fuel small_522680_left_count small_522680_left_encoded small_522680_left_checked

theorem cover_522680 : CoveredBy scale carrier boxes root_522680 := by
  apply coveredBy_split_literal root_522680 small_522680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522686 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_522680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522686
#print axioms cover_522680

def root_522679 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_522679 : CoveredBy scale carrier boxes root_522679 := by
  apply coveredBy_split_literal root_522679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522680 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0194.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522680
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0194.covered
#print axioms cover_522679

def root_522674 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522674_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522674_right_fuel : Nat := 1
def small_522674_right_count : Nat := 1
def small_522674_right_encoded : String := "00000001"
theorem small_522674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_522674_right_root small_522674_right_fuel small_522674_right_count small_522674_right_encoded = true := by
  decide +kernel
theorem small_522674_right_covered : CoveredBy scale carrier boxes small_522674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_522674_right_root small_522674_right_fuel small_522674_right_count small_522674_right_encoded small_522674_right_checked

theorem cover_522674 : CoveredBy scale carrier boxes root_522674 := by
  apply coveredBy_split_literal root_522674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522679 small_522674_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522679
  · exact small_522674_right_covered
#print axioms cover_522674

def root_522673 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522673_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522673_right_fuel : Nat := 27
def small_522673_right_count : Nat := 483
def small_522673_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE00000004050000F6135D80F700000000050000F8135D81030500010600000008135D80FD000000030CFD9BFB000000090000000800000001135D45030000000100000009135D44F7050000F8135D81030500010600000009135D80FD000000030CFD9BFB000000090F34D0FA000000060000000200000001135D4503000000010500010600000009135D80FD000000030CFD9BFB000000090000000900000000120700FE050000F6135D80F700000000050000F8135D810305000106135D44FD0000000700000003000000070000000100000007135D44F7050000F8135D810305000106135D44FD0CFD9BFB000000070000000600000003135D80FD000000030CFD9BFB000000070F34D0FA045489FF00000006000000050000000200000001135D45030000000105000106135D44FD0000000700000003000000070000000000000004120700FA08A912FF00000006120700FE050000F6135D80F700000000050000F8135D81030500010600000006135D80FD00000003045489FB1386ACFA00000002045489FF00000006000000050000000600000001135D4503000000010500010600000006000000050000000600000004000000021151E8FF08A912FB00000009000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE00000004050000F6135D80F700000000050000F8135D81030CFD9BFB0F350CFA00000002000000070F34D0FA0CFD9BFD0F350D060CFD9BFF000000070F34D0FE0000000700000004000000030F34D10600000003000000070000000200000001135D4503000000010CFD9BFB000000070F34D0FA0CFD9BFD000000070000000500000002135D44F7050000F8135D81030CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000070F34D0FE0000000700000004000000030F34D10600000003000000070F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A8706000000060F878CFD000000030C9A86FE00000006000000060F34D0FE0000000700000004000000030F34D10600000003000000050000000200000001135D4503000000010CFD9BFB0F350CFA000000020CFD9BFD000000070F34D10600000003000000070F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A870600000006000000070000000500000003000000050000000200000000120700FE050000F6135D80F700000000050000F8135D81030CFD9BFB000000070F34D0FA0CFD9BFD0000000700000005000000020000000100000007135D44F7050000F8135D81030CFD9BFB0F350CFA00000002000000070000000500000001135D45030000000100000005000000000000000400000003120701060000000308A912FF12073CFE00000004050000F6135D80F70000000000000005135D44F7050000F800000005135D450300000001000000050000000000000005120700FA08A912FD12073D0608A912FF12073CFE00000004050000F6135D80F700000000050000F8135D8103045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000080F34D0FE0000000800000004000000030F34D1060000000300000005138670FA0CFD9BFD0F350D060000000600000003000000050000000200000001135D450300000001045489FB1386ACFA000000020000000500000005135D44F7050000F8135D8103045489FB1386ACFA000000020CFD9BFD0F350D060000000600000003000000050000000500000001135D4503000000010000000500000000000000050000000300000005000000021151E8FF08A912FB12073CFA0000000208A912FD12073D06050000F6135D80F700000000050000F8135D8103050000FE00000008000000080000000100000008135D44F7050000F8135D8103050000FE135D80FF000000040CFD9BFB00000009000000080000000900000001135D450300000001050000FE135D80FF000000040CFD9BFB00000009000000080000000900000000000000031207010600000003050000F6135D80F700000000050000F8135D8103050000FE00000008000000080000000100000008135D44F7050000F8135D8103050000FE135D80FF000000040CFD9BFB0F350CFA00000002045489FD000000070000000500000005135D44FF000000080000000400000001135D450300000001050000FE135D80FF000000040CFD9BFB0F350CFA0000000200000007000000050000000A00000000120700FA08A912FD12073D06050000F600000008135D44F7050000F8135D8103050000FE000000060000000800000001135D450300000001050000FE000000050000000800000000000000030000000500000002000000041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912FF00000009000000090000000900000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF00000007120700FE0000000700000004000000031207010600000003000000071151E8FF08A912FD000000091207010600000003000000070000000400000002"
theorem small_522673_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_522673_right_root small_522673_right_fuel small_522673_right_count small_522673_right_encoded = true := by
  decide +kernel
theorem small_522673_right_covered : CoveredBy scale carrier boxes small_522673_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_522673_right_root small_522673_right_fuel small_522673_right_count small_522673_right_encoded small_522673_right_checked

theorem cover_522673 : CoveredBy scale carrier boxes root_522673 := by
  apply coveredBy_split_literal root_522673 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522674 small_522673_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522674
  · exact small_522673_right_covered
#print axioms cover_522673

def root_522668 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522668_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_522668_right_fuel : Nat := 1
def small_522668_right_count : Nat := 1
def small_522668_right_encoded : String := "00000000"
theorem small_522668_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_522668_right_root small_522668_right_fuel small_522668_right_count small_522668_right_encoded = true := by
  decide +kernel
theorem small_522668_right_covered : CoveredBy scale carrier boxes small_522668_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_522668_right_root small_522668_right_fuel small_522668_right_count small_522668_right_encoded small_522668_right_checked

theorem cover_522668 : CoveredBy scale carrier boxes root_522668 := by
  apply coveredBy_split_literal root_522668 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522673 small_522668_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522673
  · exact small_522668_right_covered
#print axioms cover_522668

def root_514130 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_514130 : CoveredBy scale carrier boxes root_514130 := by
  apply coveredBy_split_literal root_514130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514131 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_522668 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514131
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_522668
#print axioms cover_514130

def root_531504 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531504_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531504_right_fuel : Nat := 21
def small_531504_right_count : Nat := 199
def small_531504_right_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120700F808A91309120700FE050000FA135D80FB0000000205000106135D44FD0000000800000003135D80FD000000030CFD9BF7000000060F34D0F60000000600000000135D44FB00000006000000020000000412073CFE00000004050000FA135D80FB0000000200000006000000060000000112073CF80000000108A91309120700FE000000070000000412073CFE00000004050000FA135D80FB0000000205000106000000060000000600000006120700F608A91303120700F808A91309120700FE000000070000000412073CFE00000004050000FA135D80FB00000002050001060000000600000006000000060000000112073CF80000000108A91309000000070000000700000000000000041151E9090000000408A912F712073CF60000000008A913030000000600000006120700F608A91303120700F80000000600000001000000050000000000000003115224FD000000030A0000FE1152250908A912F712073CF60000000008A91303120700F808A912FD12073D0608A91309120700FE050000FA135D80FB000000020CFD9BF7000000060F34D0F60000000600000000000000060000000400000006000000031207010600000003000000060000000112073CF80000000108A912FD12073D0608A91309120700FE050000FA135D80FB000000020CFD9BF7000000070000000700000006000000040000000600000003120701060000000300000005120700F608A91303120700F808A912FD12073D0608A91309120700FE050000FA135D80FB00000002045489F70000000700000007000000060000000412073CFE00000004050000FA135D80FB00000002045489F700000006138670F604548A03138670F80CFD9BFD00000007000000050000000100000005000000000000000600000003120701060000000308A91309120700FE0000000600000004000000050000000112073CF80000000108A912FD12073D0608A91309120700FE000000070000000400000005000000030000000500000000000000041151E909000000040000000500000002"
theorem small_531504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_531504_right_root small_531504_right_fuel small_531504_right_count small_531504_right_encoded = true := by
  decide +kernel
theorem small_531504_right_covered : CoveredBy scale carrier boxes small_531504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_531504_right_root small_531504_right_fuel small_531504_right_count small_531504_right_encoded small_531504_right_checked

theorem cover_531504 : CoveredBy scale carrier boxes root_531504 := by
  apply coveredBy_split_literal root_531504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0195.root small_531504_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0195.covered
  · exact small_531504_right_covered
#print axioms cover_531504

def root_531499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531499_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531499_right_fuel : Nat := 1
def small_531499_right_count : Nat := 1
def small_531499_right_encoded : String := "00000001"
theorem small_531499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_531499_right_root small_531499_right_fuel small_531499_right_count small_531499_right_encoded = true := by
  decide +kernel
theorem small_531499_right_covered : CoveredBy scale carrier boxes small_531499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_531499_right_root small_531499_right_fuel small_531499_right_count small_531499_right_encoded small_531499_right_checked

theorem cover_531499 : CoveredBy scale carrier boxes root_531499 := by
  apply coveredBy_split_literal root_531499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_531504 small_531499_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_531504
  · exact small_531499_right_covered
#print axioms cover_531499

def root_531498 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531498_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531498_right_fuel : Nat := 21
def small_531498_right_count : Nat := 177
def small_531498_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912F712073CF60000000008A912FB12073CFA0000000208A91309120700FE000000070000000412073CFE00000004050000F8135D810305000106135D44FD0CFD9BF7000000070000000700000003000000050000000100000005120700FA08A91309120700FE050000F8135D810305000106135D44FD0CFD9BF70F350CF600000000045489FB00000007000000080000000700000003135D80FD000000030CFD9BF70F350CF600000000045489FB00000007000000050F34D0F6000000070000000000000001135D4503000000010500010600000007000000050000000412073CFE00000004050000F8135D810305000106135D44FD0CFD9BF70F350CF60000000000000005000000050000000300000005000000010000000500000002120700F608A912FB12073CFA0000000200000007120700FA08A91309120700FE0000000700000004000000070000000200000000000000041151E909000000040000000500000003115224FD000000030A0000FE1152250908A912F712073CF60000000008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F8135D81030CFD9BF7000000070000000500000001000000050000000400000005000000030000000500000005120700F608A912FB12073CFA0000000200000005120700FA08A912FD12073D0608A913090000000512073CFE000000040000000500000003120701060000000308A9130900000005000000060000000200000000000000041151E9090000000408A912F700000005120700F608A912FB00000005120700FA08A912FD000000050000000600000002000000001151E8FB0A0001061151E8FD0A0000FE1152250908A912F70000000700000007000000041151E909000000040000000500000003115224FD000000030000000500000002"
theorem small_531498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_531498_right_root small_531498_right_fuel small_531498_right_count small_531498_right_encoded = true := by
  decide +kernel
theorem small_531498_right_covered : CoveredBy scale carrier boxes small_531498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_531498_right_root small_531498_right_fuel small_531498_right_count small_531498_right_encoded small_531498_right_checked

theorem cover_531498 : CoveredBy scale carrier boxes root_531498 := by
  apply coveredBy_split_literal root_531498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_531499 small_531498_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_531499
  · exact small_531498_right_covered
#print axioms cover_531498

def root_531492 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531492_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_531492_left_fuel : Nat := 1
def small_531492_left_count : Nat := 1
def small_531492_left_encoded : String := "00000000"
theorem small_531492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_531492_left_root small_531492_left_fuel small_531492_left_count small_531492_left_encoded = true := by
  decide +kernel
theorem small_531492_left_covered : CoveredBy scale carrier boxes small_531492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_531492_left_root small_531492_left_fuel small_531492_left_count small_531492_left_encoded small_531492_left_checked

theorem cover_531492 : CoveredBy scale carrier boxes root_531492 := by
  apply coveredBy_split_literal root_531492 small_531492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_531498 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_531492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_531498
#print axioms cover_531492

def root_535269 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_535269 : CoveredBy scale carrier boxes root_535269 := by
  apply coveredBy_split_literal root_535269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0196.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0197.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0196.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0197.covered
#print axioms cover_535269

def root_535264 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535264_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535264_right_fuel : Nat := 1
def small_535264_right_count : Nat := 1
def small_535264_right_encoded : String := "00000004"
theorem small_535264_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535264_right_root small_535264_right_fuel small_535264_right_count small_535264_right_encoded = true := by
  decide +kernel
theorem small_535264_right_covered : CoveredBy scale carrier boxes small_535264_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535264_right_root small_535264_right_fuel small_535264_right_count small_535264_right_encoded small_535264_right_checked

theorem cover_535264 : CoveredBy scale carrier boxes root_535264 := by
  apply coveredBy_split_literal root_535264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535269 small_535264_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535269
  · exact small_535264_right_covered
#print axioms cover_535264

def root_535263 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535263_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535263_right_fuel : Nat := 13
def small_535263_right_count : Nat := 41
def small_535263_right_encoded : String := "1151E9090000000408A91303120700F808A912FB12073CFA00000002050000F6135D80F70000000005000106135D44FD050000FE00000006135D450900000004000000060000000300000009135D44F705000106135D44FD050000FE135D810904548A0300000006000000050000000400000005000000030000000500000000000000090000000112073CF80000000108A912FB12073CFA000000020000000500000005"
theorem small_535263_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535263_right_root small_535263_right_fuel small_535263_right_count small_535263_right_encoded = true := by
  decide +kernel
theorem small_535263_right_covered : CoveredBy scale carrier boxes small_535263_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535263_right_root small_535263_right_fuel small_535263_right_count small_535263_right_encoded small_535263_right_checked

theorem cover_535263 : CoveredBy scale carrier boxes root_535263 := by
  apply coveredBy_split_literal root_535263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535264 small_535263_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535264
  · exact small_535263_right_covered
#print axioms cover_535263

def root_535258 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535258_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535258_right_fuel : Nat := 1
def small_535258_right_count : Nat := 1
def small_535258_right_encoded : String := "00000003"
theorem small_535258_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535258_right_root small_535258_right_fuel small_535258_right_count small_535258_right_encoded = true := by
  decide +kernel
theorem small_535258_right_covered : CoveredBy scale carrier boxes small_535258_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535258_right_root small_535258_right_fuel small_535258_right_count small_535258_right_encoded small_535258_right_checked

theorem cover_535258 : CoveredBy scale carrier boxes root_535258 := by
  apply coveredBy_split_literal root_535258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535263 small_535258_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535263
  · exact small_535258_right_covered
#print axioms cover_535258

def root_535257 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535257_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535257_right_fuel : Nat := 27
def small_535257_right_count : Nat := 263
def small_535257_right_encoded : String := "115224FD000000030A0000FE1152250908A91303120700F808A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F6135D80F70000000004548A03000000091386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA000000090F8750FB0C9A87060F8750FD000000070000000300000007000000020000000400000009000000030F34D106000000030000000900000009135D44F704548A03000000091386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA000000090F8750FB0C9A87060F8750FD028000F6000000090000000A0000000300000009000000020000000400000009000000030F34D10600000003000000090000000900000000000000040000000900000003120701060000000300000009000000090000000112073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F6135D80F7000000000CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A8706000000070000000700000007000000041386ACFE000000040C9A86FA0F878CFB00000002000000090F8750FB0000000600000002000000030F34D1060000000304548A09138670FE0C9A86FA000000070000000500000004000000050F34D0FA0000000900000002000000010F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFD00000007000000050F34D0FA0CFD9BFD0F350D0604548A09138670FE0C9A86F80F878D030C9A8706000000070000000500000001000000050000000400000005000000030000000500000002135D44F70CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A000000030000000A0F8750FB0C9A87060F8750FD00000007000000030000000700000002000000041386ACFE000000040C9A86FA0F878CFB000000020000000500000005000000030F34D10600000003000000050F34D0FA0CFD9BFD0F350D0604548A09138670FE000000090000000400000005000000030000000500000002000000010F350CF8000000010CFD9BFB0F350CFA000000020000000500000005000000000000000412073CFE00000004050000F6135D80F7000000000CFD9C030F34D0F80CFD9BFB0F350CFA00000002000000050000000500000001000000050000000500000003120701060000000300000005120700FA08A912FD12073D0608A91309120700FE050000F6135D80F7000000000CFD9C03000000090F350CF80000000100000005135D44F70CFD9C030000000900000005000000000000000400000005000000030000000500000002000000041151E9090000000400000005"
theorem small_535257_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535257_right_root small_535257_right_fuel small_535257_right_count small_535257_right_encoded = true := by
  decide +kernel
theorem small_535257_right_covered : CoveredBy scale carrier boxes small_535257_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535257_right_root small_535257_right_fuel small_535257_right_count small_535257_right_encoded small_535257_right_checked

theorem cover_535257 : CoveredBy scale carrier boxes root_535257 := by
  apply coveredBy_split_literal root_535257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535258 small_535257_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535258
  · exact small_535257_right_covered
#print axioms cover_535257

def root_535251 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535251_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535251_left_fuel : Nat := 1
def small_535251_left_count : Nat := 1
def small_535251_left_encoded : String := "00000002"
theorem small_535251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535251_left_root small_535251_left_fuel small_535251_left_count small_535251_left_encoded = true := by
  decide +kernel
theorem small_535251_left_covered : CoveredBy scale carrier boxes small_535251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535251_left_root small_535251_left_fuel small_535251_left_count small_535251_left_encoded small_535251_left_checked

theorem cover_535251 : CoveredBy scale carrier boxes root_535251 := by
  apply coveredBy_split_literal root_535251 small_535251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535257 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_535251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535257
#print axioms cover_535251

def root_535250 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535250_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535250_right_fuel : Nat := 28
def small_535250_right_count : Nat := 461
def small_535250_right_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A91303120700F808A91309120700FE050000F6135D80F700000000050000FA135D80FB0000000205000106135D44FD04548A03000000081386ACF8000000010000000800000003135D80FD0000000304548A03000000061386ACF80000000104548A090000000700000006135D44FB0000000600000002135D44F7050000FA135D80FB0000000205000106135D44FD04548A03138670F804548A09000000051386ACFE0000000400000006000000011386ACF80000000104548A09138670FE028000F60000000813D7B0F70000000800000000000000041386ACFE00000004028000F613D7ECF700000000078000FA128A7CFB000000020280010600000006000000060000000613D7B0F7078000FA128A7CFB000000020280010613D7B0FD067ECE830000000812EA94F800000001000000080000000313D7ECFD00000003067ECE830000000600000007128A40FB00000006000000020000000000000003135D80FD0000000304548A03138670F804548A09138670FE028000F60000000613D7B0F7078000FA128A7CFB000000020780010600000005128A7CFD0000000300000006128A40FB0000000500000002000000000000000400000006000000011386ACF80000000104548A09138670FE028000F613D7ECF7000000000000000713D7B0F7078000FA128A7CFB0000000207800106128A40FD067ECE8312EA58F80000000800000001000000070000000300000007128A40FB000000070000000200000000000000041386ACFE00000004028000F60000000613D7B0F7078000FA128A7CFB000000020780010600000006000000060000000600000000135D44FB05000106135D44FD04548A03000000061386ACF80000000104548A09000000080000000600000003135D80FD0000000304548A03000000061386ACF8000000010000000600000002000000000000000412073CFE00000004050000F600000006135D44F7050000FA135D80FB0000000205000106135D44FD04548A03000000060000000600000003135D80FD000000030000000600000006000000000000000112073CF80000000108A91309120700FE050000F6135D80F700000000050000FA135D80FB0000000205000106000000070000000700000007135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F804548A09138670FE00000007000000041386ACFE00000004028000F60000000713D7B0F70000000700000000000000010000000700000003135D80FD000000030CFD9C030F34D0F804548A0900000007000000070000000100000007135D44FB05000106000000070000000700000002000000000000000412073CFE00000004050000F6135D80F700000000050000FA135D80FB0000000205000106135D44FD0CFD9C03000000060F350CF800000001000000070000000300000006135D44FB05000106135D44FD0CFD9C030000000600000005000000030000000600000002135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F80CFD9C090F34D0FE028000F60000000613D7B0F7078000FA128A7CFB000000020280010613D7B0FD000000070000000300000005128A40FB0000000600000002000000000000000400000005000000010000000500000003135D80FD0000000300000005135D44FB05000106135D44FD0CFD9C030F34D0F800000006000000010000000500000003000000050000000200000000000000041151E9090000000408A91303000000060000000500000003115224FD000000030A0000FE1152250908A91303120700F808A912FD12073D0608A91309120700FE050000F6135D80F700000000050000FA135D80FB0000000204548A03000000061386ACF8000000010000000600000006135D44F7050000FA135D80FB0000000204548A03138670F80CFD9BFD0F350D0604548A09138670FE0000000600000004000000060000000300000006000000011386ACF8000000010CFD9BFD0F350D0604548A09138670FE0C9A87060F8750FD028000F60000000613D7B0F7078000FA000000070000000600000000000000030F878CFD000000030000000600000004000000060000000300000006135D44FB0000000600000002000000000000000412073CFE00000004050000F600000006135D44F70000000600000000000000031207010600000003000000060000000112073CF80000000108A912FD12073D0608A91309120700FE050000F6135D80F700000000050000FA135D80FB000000020CFD9C030F34D0F80CFD9BFD0000000700000006000000010000000700000007135D44F7050000FA135D80FB000000020CFD9C030F34D0F80CFD9BFD0F350D0604548A090000000700000006000000030F34D1060000000300000005000000010F350CF80000000100000005135D44FB0CFD9C030000000600000005000000020000000000000004000000050000000300000005000000041151E9090000000408A91303000000060000000500000002"
theorem small_535250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535250_right_root small_535250_right_fuel small_535250_right_count small_535250_right_encoded = true := by
  decide +kernel
theorem small_535250_right_covered : CoveredBy scale carrier boxes small_535250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535250_right_root small_535250_right_fuel small_535250_right_count small_535250_right_encoded small_535250_right_checked

theorem cover_535250 : CoveredBy scale carrier boxes root_535250 := by
  apply coveredBy_split_literal root_535250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535251 small_535250_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535251
  · exact small_535250_right_covered
#print axioms cover_535250

def root_535245 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535245_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535245_right_fuel : Nat := 1
def small_535245_right_count : Nat := 1
def small_535245_right_encoded : String := "00000001"
theorem small_535245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535245_right_root small_535245_right_fuel small_535245_right_count small_535245_right_encoded = true := by
  decide +kernel
theorem small_535245_right_covered : CoveredBy scale carrier boxes small_535245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535245_right_root small_535245_right_fuel small_535245_right_count small_535245_right_encoded small_535245_right_checked

theorem cover_535245 : CoveredBy scale carrier boxes root_535245 := by
  apply coveredBy_split_literal root_535245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535250 small_535245_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535250
  · exact small_535245_right_covered
#print axioms cover_535245

def root_535244 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535244_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535244_right_fuel : Nat := 19
def small_535244_right_count : Nat := 99
def small_535244_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA0000000208A91309120700FE050000F6135D80F700000000050000F8135D81030500010600000007000000070000000100000007135D44F7050000F8135D810305000106135D44FD0CFD9BFB000000070000000500000003000000050000000100000005000000000000000412073CFE0000000400000005120700FA08A91309120700FE050000F6135D80F700000000050000F8135D810305000106135D44FD045489FB0000000A000000050000000300000005000000010000000500000005000000040000000500000002000000041151E909000000040000000500000003115224FD00000003000000051151E8FB0A0001061151E8FD0A0000FE1152250908A91309120700FE000000070000000400000005000000041151E909000000040000000500000003115224FD000000030A0000FE1152250908A912FD12073D06000000050000000300000005000000041151E909000000040000000500000002"
theorem small_535244_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535244_right_root small_535244_right_fuel small_535244_right_count small_535244_right_encoded = true := by
  decide +kernel
theorem small_535244_right_covered : CoveredBy scale carrier boxes small_535244_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535244_right_root small_535244_right_fuel small_535244_right_count small_535244_right_encoded small_535244_right_checked

theorem cover_535244 : CoveredBy scale carrier boxes root_535244 := by
  apply coveredBy_split_literal root_535244 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535245 small_535244_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535245
  · exact small_535244_right_covered
#print axioms cover_535244

def root_535239 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535239_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_535239_right_fuel : Nat := 1
def small_535239_right_count : Nat := 1
def small_535239_right_encoded : String := "00000000"
theorem small_535239_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_535239_right_root small_535239_right_fuel small_535239_right_count small_535239_right_encoded = true := by
  decide +kernel
theorem small_535239_right_covered : CoveredBy scale carrier boxes small_535239_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_535239_right_root small_535239_right_fuel small_535239_right_count small_535239_right_encoded small_535239_right_checked

theorem cover_535239 : CoveredBy scale carrier boxes root_535239 := by
  apply coveredBy_split_literal root_535239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535244 small_535239_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535244
  · exact small_535239_right_covered
#print axioms cover_535239

def root_531491 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_531491 : CoveredBy scale carrier boxes root_531491 := by
  apply coveredBy_split_literal root_531491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_531492 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_535239 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_531492
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_535239
#print axioms cover_531491

def root_514129 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_514129 : CoveredBy scale carrier boxes root_514129 := by
  apply coveredBy_split_literal root_514129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_531491 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514130
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_531491
#print axioms cover_514129

def root_541366 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_541366 : CoveredBy scale carrier boxes root_541366 := by
  apply coveredBy_split_literal root_541366 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0198.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0199.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0198.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0199.covered
#print axioms cover_541366

def root_514128 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_514128 : CoveredBy scale carrier boxes root_514128 := by
  apply coveredBy_split_literal root_514128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_514129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_541366 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_514129
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_541366
#print axioms cover_514128

def root_545802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545802_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545802_right_fuel : Nat := 24
def small_545802_right_count : Nat := 295
def small_545802_right_encoded : String := "1151E8FF08A912F712073CF60000000008A91303120700F808A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A03138670F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F60F878CF7000000000C9A86FA000000080F8750FB0000000A000000020F8750F70C9A86FA000000080F8750FB0000000A00000002000000000000000A0F34D0FA04548A07000000080000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030000000A0000000A0F34D0FA0000000A000000020F34D0F604548A03138670F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0000000A0F8750FB0000000A000000020000000A0F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0000000A0F34D0FA0000000A0000000200000000135D44FF0CFD9BF70F350CF60000000004548A03138670F80CFD9BFB0000000A00000008000000010000000A0F34D0F604548A03138670F80CFD9BFB0000000A0000000A000000010000000A000000000000000412073D06050000FE135D80FF000000040CFD9BF70F350CF60000000004548A03138670F80CFD9BFB0000000A0000000A000000010000000A0F34D0F60000000A000000000000000A00000003120700FA08A913071207010600000003050000FE135D80FF000000040CFD9BF7000000080F34D0F600000008000000000000000812073D06050000FE135D80FF000000040CFD9BF70000000A0F34D0F60000000A000000000000000A00000003000000020000000112073CF80000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D0F80CFD9BFB0000000A00000005000000010000000500000005135D44FF0CFD9BF70000000A000000050000000412073D060000000A00000003120700FA08A913071207010600000003000000050000000500000002120700F608A91303120700F808A912FB12073CFA0000000208A913071207010600000003050000FE135D80FF00000004045489F71386ACF60000000004548A03138670F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0000000A0F8750FB0000000A00000002000000050F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0000000A00000005138670F604548A03138670F80CFD9BFB0F350CFA0000000204548A071386710600000003000000050000000500000005000000010000000500000000135D44FF045489F71386ACF60000000004548A03138670F80000000A0000000100000005000000050000000412073D06050000FE135D80FF00000004045489F70000000A138670F604548A03138670F80000000A0000000100000005000000000000000A00000003120700FA08A913071207010600000003050000FE135D80FF0000000400000005000000050000000A000000020000000112073CF80000000108A912FB12073CFA0000000208A9130712070106000000030000000500000005000000050000000000000004"
theorem small_545802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545802_right_root small_545802_right_fuel small_545802_right_count small_545802_right_encoded = true := by
  decide +kernel
theorem small_545802_right_covered : CoveredBy scale carrier boxes small_545802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545802_right_root small_545802_right_fuel small_545802_right_count small_545802_right_encoded small_545802_right_checked

theorem cover_545802 : CoveredBy scale carrier boxes root_545802 := by
  apply coveredBy_split_literal root_545802 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0200.root small_545802_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0200.covered
  · exact small_545802_right_covered
#print axioms cover_545802

def root_545797 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545797_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545797_right_fuel : Nat := 1
def small_545797_right_count : Nat := 1
def small_545797_right_encoded : String := "00000003"
theorem small_545797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545797_right_root small_545797_right_fuel small_545797_right_count small_545797_right_encoded = true := by
  decide +kernel
theorem small_545797_right_covered : CoveredBy scale carrier boxes small_545797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545797_right_root small_545797_right_fuel small_545797_right_count small_545797_right_encoded small_545797_right_checked

theorem cover_545797 : CoveredBy scale carrier boxes root_545797 := by
  apply coveredBy_split_literal root_545797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545802 small_545797_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545802
  · exact small_545797_right_covered
#print axioms cover_545797

def root_545497 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545497_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545497_left_fuel : Nat := 17
def small_545497_left_count : Nat := 143
def small_545497_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106000000060000000600000006120700FA08A912FF12073CFE0000000405000106135D4507000000030CFD9BF70000000A00000007135D81070CFD9BF70F350CF60000000004548A03000000060000000A0F34D0F60000000A000000000000000300000006000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE000000040000000A120700FE050001060000000A0000000600000004120700FA08A912FF12073CFE000000040000000A120700FE05000106135D4507000000030000000A135D81070CFD9BF70000000A00000006000000030000000400000002120700F608A91303120700F808A912FB12073CFA0000000208A912FF12073CFE000000040500010600000006135D8107045489F700000006138670F604548A030000000600000006000000000000000300000006120700FA08A912FF12073CFE000000040000000700000006000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE000000040000000A00000006120700FA08A912FF0000000A0000000600000002000000001151E8FF08A912F712073CF60000000008A91303120700F808A912FB0000000A120700FA0000000A00000002000000010000000A120700F608A91303120700F808A912FB0000000A0000000A000000010000000A0000000000000004"
theorem small_545497_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545497_left_root small_545497_left_fuel small_545497_left_count small_545497_left_encoded = true := by
  decide +kernel
theorem small_545497_left_covered : CoveredBy scale carrier boxes small_545497_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545497_left_root small_545497_left_fuel small_545497_left_count small_545497_left_encoded small_545497_left_checked

theorem cover_545497 : CoveredBy scale carrier boxes root_545497 := by
  apply coveredBy_split_literal root_545497 small_545497_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545797 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_545497_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545797
#print axioms cover_545497

def root_545491 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545491_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545491_left_fuel : Nat := 1
def small_545491_left_count : Nat := 1
def small_545491_left_encoded : String := "00000002"
theorem small_545491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545491_left_root small_545491_left_fuel small_545491_left_count small_545491_left_encoded = true := by
  decide +kernel
theorem small_545491_left_covered : CoveredBy scale carrier boxes small_545491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545491_left_root small_545491_left_fuel small_545491_left_count small_545491_left_encoded small_545491_left_checked

theorem cover_545491 : CoveredBy scale carrier boxes root_545491 := by
  apply coveredBy_split_literal root_545491 small_545491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545497 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_545491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545497
#print axioms cover_545491

def root_545490 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545490_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545490_right_fuel : Nat := 29
def small_545490_right_count : Nat := 425
def small_545490_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A91303000000060000000A120700F600000006000000001151E8FF08A912F70000000A120700F60000000A0000000000000004115225070A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F808A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350CF60000000004548A03138670F804548A0713867106000000030000000600000006000000011386ACF80000000104548A07138671060000000300000006000000060F34D0F604548A03138670F804548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000060000000600000006000000011386ACF80000000104548A071386710600000003000000070000000600000000135D44FB0CFD9BF7000000060F34D0F60000000600000000000000020000000612073D0600000006000000030000000112073CF80000000108A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF70F350CF6000000000CFD9C03000000060000000500000005000000070000000512073D060000000600000003120700F608A91303120700F808A91307120701060000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386ACF60000000004548A03138670F804548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF078000FA128A7CFB00000002067ECE77000000070000000500000007000000040F34D0FE00000006000000041386AD060CFD9BFF0F350CFE00000004000000050000000500000003000000011386ACF80000000104548A0713867106000000030000000700000005138670F604548A03138670F804548A0713867106000000030CFD9BFF0F350CFE00000004000000050000000500000005000000010000000500000000135D44FB045489F71386ACF60000000004548A0300000006000000050000000500000002120700FE000000060000000412073D0608A912FF12073CFE00000004050000FA135D80FB00000002045489F700000006138670F604548A03138670F80CFD9C070F34D10600000003000000050000000500000001000000050000000000000006120700FE0000000600000004000000030000000112073CF80000000108A9130712070106000000030000000500000005000000001151E8FF08A912F712073CF60000000008A91303120700F808A913071207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF60000000004548A03138670F804548A0713867106000000030C9A86F60F878CF700000000078000FA0000000A000000060F8750F7078000FA128A7CFB000000020000000A000000060000000000000006000000011386ACF80000000104548A0713867106000000030C9A86F6000000070F8750F70000000A00000000000000060F34D0F604548A03138670F804548A071386710600000003078000FA128A7CFB00000002078000FE128A7CFF000000040AD357770000000610D100F60000000A000000000000000A128A40FB078000FE0000000600000009000000020000000A000000010000000A00000000135D44FF0CFD9BF70000000A0F34D0F60000000A0000000000000004135D44FB050000FE135D80FF000000040CFD9BF7000000060F34D0F604548A03000000060000000600000000135D44FF0CFD9BF70F350CF60000000004548A03138670F800000009000000010000000900000009000000040000000212073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF7000000060F34D0F600000006000000000000000A135D44FB050000FE000000060000000600000002000000030000000112073CF80000000108A913071207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF70000000A000000050000000A135D44FB050000FE00000007000000090000000200000005120700F608A91303120700F808A913071207010600000003050000FA135D80FB00000002050000FE135D80FF00000004045489F71386ACF60000000004548A03138670F804548A07000000090000000500000001000000050000000500000009135D44FB000000090000000212073D06050000FA135D80FB00000002050000FE135D80FF00000004045489F70000000A000000050000000500000005000000030000000112073CF8000000010000000500000000000000040000000300000002"
theorem small_545490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545490_right_root small_545490_right_fuel small_545490_right_count small_545490_right_encoded = true := by
  decide +kernel
theorem small_545490_right_covered : CoveredBy scale carrier boxes small_545490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545490_right_root small_545490_right_fuel small_545490_right_count small_545490_right_encoded small_545490_right_checked

theorem cover_545490 : CoveredBy scale carrier boxes root_545490 := by
  apply coveredBy_split_literal root_545490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545491 small_545490_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545491
  · exact small_545490_right_covered
#print axioms cover_545490

def root_545485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545485_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545485_right_fuel : Nat := 1
def small_545485_right_count : Nat := 1
def small_545485_right_encoded : String := "00000001"
theorem small_545485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545485_right_root small_545485_right_fuel small_545485_right_count small_545485_right_encoded = true := by
  decide +kernel
theorem small_545485_right_covered : CoveredBy scale carrier boxes small_545485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545485_right_root small_545485_right_fuel small_545485_right_count small_545485_right_encoded small_545485_right_checked

theorem cover_545485 : CoveredBy scale carrier boxes root_545485 := by
  apply coveredBy_split_literal root_545485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545490 small_545485_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545490
  · exact small_545485_right_covered
#print axioms cover_545485

def root_545484 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545484_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545484_right_fuel : Nat := 15
def small_545484_right_count : Nat := 87
def small_545484_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FB0000000A120700FA0000000A00000002120700F608A912FB0000000A120700FA0000000A00000002000000001151E8FF0000000500000004115225070A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073CFA0000000208A913071207010600000003000000050000000500000005120700F608A912FB12073CFA0000000200000005120700FA08A9130712070106000000030000000512073D0608A912FF0000000A0000000600000003000000020000000000000005000000031151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF00000004000000051151E8FF08A912F712073CF60000000008A913071207010600000003000000070000000500000005000000040000000300000002"
theorem small_545484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545484_right_root small_545484_right_fuel small_545484_right_count small_545484_right_encoded = true := by
  decide +kernel
theorem small_545484_right_covered : CoveredBy scale carrier boxes small_545484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545484_right_root small_545484_right_fuel small_545484_right_count small_545484_right_encoded small_545484_right_checked

theorem cover_545484 : CoveredBy scale carrier boxes root_545484 := by
  apply coveredBy_split_literal root_545484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545485 small_545484_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545485
  · exact small_545484_right_covered
#print axioms cover_545484

def root_545478 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545478_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_545478_left_fuel : Nat := 1
def small_545478_left_count : Nat := 1
def small_545478_left_encoded : String := "00000000"
theorem small_545478_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_545478_left_root small_545478_left_fuel small_545478_left_count small_545478_left_encoded = true := by
  decide +kernel
theorem small_545478_left_covered : CoveredBy scale carrier boxes small_545478_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_545478_left_root small_545478_left_fuel small_545478_left_count small_545478_left_encoded small_545478_left_checked

theorem cover_545478 : CoveredBy scale carrier boxes root_545478 := by
  apply coveredBy_split_literal root_545478 small_545478_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545484 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_545478_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545484
#print axioms cover_545478

def root_545477 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_545477 : CoveredBy scale carrier boxes root_545477 := by
  apply coveredBy_split_literal root_545477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0201.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0201.covered
#print axioms cover_545477

def root_545476 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_545476 : CoveredBy scale carrier boxes root_545476 := by
  apply coveredBy_split_literal root_545476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.root_545477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0202.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014.cover_545477
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0202.covered
#print axioms cover_545476

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0014
