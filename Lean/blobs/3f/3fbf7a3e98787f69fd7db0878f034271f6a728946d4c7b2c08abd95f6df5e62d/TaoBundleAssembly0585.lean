import TaoBundleAssembly0556
import TaoBundleAssembly0571
import TaoBundleAssembly0584
import TaoBundleChunkBatch0795
import TaoBundleChunkBatch0796
import TaoBundleChunkBatch0797
import TaoBundleChunkBatch0798
import TaoBundleChunkBatch0799
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585
def root_8492895 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8492895_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8492895_left_fuel : Nat := 21
def small_8492895_left_count : Nat := 321
def small_8492895_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F900000007120700F808A912FD00000005120701060000000308A912FF0000000500000007000000011151E8FF08A912F900000007120700F8000000050000000100000004115225050A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FF00000008120700FE000000050000000412073D040000000500000002120700F800000005000000011151E8FF08A912F900000007120700F808A9130512070104000000020000000800000005000000010000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FD12073D0608A912FF00000008120700FE00000005000000040000000312070106000000030000000812073D0408A912FD12073D0608A912FF12073CFE00000004050001000000000500000007120700FE000000050000000400000003120701060000000308A912FF12073CFE000000040500010000000005000000070000000700000002120700F808A91305120701040000000208A912FD12073D06000000050000000312070106000000030000000812073D0408A912FD12073D060000000500000003120701060000000308A912FF12073CFE000000040500010000000005135D81010000000500000000120700FE0500010000000005000000070000000400000002000000011151E8FF08A912F912073CF80000000108A9130512070104000000020000000812073D0408A912FD12073D0600000007000000030000000800000002120700F808A91305120701040000000208A912FD12073D060500010000000008135D8101050000FE00000008135D44FF000000080000000400000000000000030000000812073D0408A912FD12073D060500010000000005135D8101050000FE00000005135D44FF045489F9000000060000000600000004000000000000000312070106000000030500010000000008135D8101050000FE00000008135D44FF045489F900000008000000080000000400000000000000020000000100000004000000021151E8F90A0001041151E905000000020A0001061151E8FD0A0000FE000000051151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF00000007120700FE000000050000000400000003000000071151E8FF0000000700000004115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000008120700FE000000080000000412073D0408A912FF12073CFE0000000405000100135D4501000000000000000800000007120700FE0000000500000004000000021151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073D0608A912FF00000008120700FE0500010000000008135D8101050000F8000000080000000A0000000000000004000000030000000812073D0408A912FD12073D0608A912FF12073CFE0000000405000100135D4501000000000000000700000007120700FE05000100000000050000000A0000000400000003120701060000000300000007000000021151E8FF00000007000000040000000200000001"
theorem small_8492895_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8492895_left_root small_8492895_left_fuel small_8492895_left_count small_8492895_left_encoded = true := by
  decide +kernel
theorem small_8492895_left_covered : CoveredBy scale carrier boxes small_8492895_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8492895_left_root small_8492895_left_fuel small_8492895_left_count small_8492895_left_encoded small_8492895_left_checked

theorem cover_8492895 : CoveredBy scale carrier boxes root_8492895 := by
  apply coveredBy_split_literal root_8492895 small_8492895_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8493589 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8492895_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8493589
#print axioms cover_8492895

def root_8497692 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8497692 : CoveredBy scale carrier boxes root_8497692 := by
  apply coveredBy_split_literal root_8497692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3177.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3178.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3177.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3178.covered
#print axioms cover_8497692

def root_8492894 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492894 : CoveredBy scale carrier boxes root_8492894 := by
  apply coveredBy_split_literal root_8492894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8492895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8497692 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8492895
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8497692
#print axioms cover_8492894

def root_8503763 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8503763 : CoveredBy scale carrier boxes root_8503763 := by
  apply coveredBy_split_literal root_8503763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3180.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3181.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3180.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3181.covered
#print axioms cover_8503763

def root_8503758 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8503758_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8503758_right_fuel : Nat := 1
def small_8503758_right_count : Nat := 1
def small_8503758_right_encoded : String := "00000000"
theorem small_8503758_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8503758_right_root small_8503758_right_fuel small_8503758_right_count small_8503758_right_encoded = true := by
  decide +kernel
theorem small_8503758_right_covered : CoveredBy scale carrier boxes small_8503758_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8503758_right_root small_8503758_right_fuel small_8503758_right_count small_8503758_right_encoded small_8503758_right_checked

theorem cover_8503758 : CoveredBy scale carrier boxes root_8503758 := by
  apply coveredBy_split_literal root_8503758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8503763 small_8503758_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8503763
  · exact small_8503758_right_covered
#print axioms cover_8503758

def root_8502014 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8502014 : CoveredBy scale carrier boxes root_8502014 := by
  apply coveredBy_split_literal root_8502014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3179.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8503758 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3179.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8503758
#print axioms cover_8502014

def root_8508062 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8508062 : CoveredBy scale carrier boxes root_8508062 := by
  apply coveredBy_split_literal root_8508062 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3182.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3183.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3182.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3183.covered
#print axioms cover_8508062

def root_8508056 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8508056_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8508056_left_fuel : Nat := 1
def small_8508056_left_count : Nat := 1
def small_8508056_left_encoded : String := "00000000"
theorem small_8508056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8508056_left_root small_8508056_left_fuel small_8508056_left_count small_8508056_left_encoded = true := by
  decide +kernel
theorem small_8508056_left_covered : CoveredBy scale carrier boxes small_8508056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8508056_left_root small_8508056_left_fuel small_8508056_left_count small_8508056_left_encoded small_8508056_left_checked

theorem cover_8508056 : CoveredBy scale carrier boxes root_8508056 := by
  apply coveredBy_split_literal root_8508056 small_8508056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8508062 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8508056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8508062
#print axioms cover_8508056

def root_8508055 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8508055 : CoveredBy scale carrier boxes root_8508055 := by
  apply coveredBy_split_literal root_8508055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8508056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3184.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8508056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3184.covered
#print axioms cover_8508055

def root_8502013 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8502013 : CoveredBy scale carrier boxes root_8502013 := by
  apply coveredBy_split_literal root_8502013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8502014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8508055 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8502014
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8508055
#print axioms cover_8502013

def root_8492893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492893 : CoveredBy scale carrier boxes root_8492893 := by
  apply coveredBy_split_literal root_8492893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8492894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8502013 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8492894
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8502013
#print axioms cover_8492893

def root_8514635 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514635 : CoveredBy scale carrier boxes root_8514635 := by
  apply coveredBy_split_literal root_8514635 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3185.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3186.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3185.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3186.covered
#print axioms cover_8514635

def root_8514630 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514630_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514630_right_fuel : Nat := 1
def small_8514630_right_count : Nat := 1
def small_8514630_right_encoded : String := "00000000"
theorem small_8514630_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8514630_right_root small_8514630_right_fuel small_8514630_right_count small_8514630_right_encoded = true := by
  decide +kernel
theorem small_8514630_right_covered : CoveredBy scale carrier boxes small_8514630_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8514630_right_root small_8514630_right_fuel small_8514630_right_count small_8514630_right_encoded small_8514630_right_checked

theorem cover_8514630 : CoveredBy scale carrier boxes root_8514630 := by
  apply coveredBy_split_literal root_8514630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8514635 small_8514630_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8514635
  · exact small_8514630_right_covered
#print axioms cover_8514630

def root_8514260 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514260_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514260_left_fuel : Nat := 20
def small_8514260_left_count : Nat := 173
def small_8514260_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000712073D0608A912FF00000008120700FE000000070000000400000003120700F808A91307120701060000000308A912FF12073CFE000000040500010000000005135D8101050001040000000500000008000000000000000712073D0608A912FF000000080000000700000003000000011151E8FF08A912F912073CF80000000108A9130712070106000000030500010000000007135D810105000104135D450500000002050000FE00000005135D44FF0000000800000004000000080000000000000008120700F808A9130712070106000000030500010000000005135D81010500010400000005000000080000000000000008000000010000000400000003115225050A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130512070104000000020000000812073D0408A91307120701060000000308A912FF00000008000000070000000800000002120700F808A9130512070104000000020000000812073D0408A91307120701060000000308A912FF00000008000000080000000800000002000000011151E8FF000000080000000400000003000000021151E8F90A0001041151E905000000020A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A913070000000712073D0608A912FF00000008120700FE0000000700000004000000031151E8FF000000080000000400000003115225050A00010600000008115225070A0000FE000000081151E8FF0000000800000004000000030000000200000001"
theorem small_8514260_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8514260_left_root small_8514260_left_fuel small_8514260_left_count small_8514260_left_encoded = true := by
  decide +kernel
theorem small_8514260_left_covered : CoveredBy scale carrier boxes small_8514260_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8514260_left_root small_8514260_left_fuel small_8514260_left_count small_8514260_left_encoded small_8514260_left_checked

theorem cover_8514260 : CoveredBy scale carrier boxes root_8514260 := by
  apply coveredBy_split_literal root_8514260 small_8514260_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8514630 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8514260_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8514630
#print axioms cover_8514260

def root_8520133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8520133_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8520133_left_fuel : Nat := 21
def small_8520133_left_count : Nat := 241
def small_8520133_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE1152250908A912F912073CF80000000108A9130900000008000000060000000A000000041151E9090000000400000005115225070A0000FE1152250908A912F912073CF80000000108A9130712070106000000030000000712073D0608A91309120700FE000000070000000412073CFE000000040500010000000006135D810105000104135D4505000000020CFD9BF90000000600000006000000060000000000000003120700F808A913070000000712073D06000000070000000300000001000000041151E9090000000408A912F912073CF80000000108A9130712070106000000030000000900000006120700F808A9130700000007000000050000000100000003115225050A0001061151E907000000030A0000FE1152250908A912F900000008120700F80000000800000001000000041151E9090000000400000006115225070A0000FE1152250908A912F912073CF80000000108A91305120701040000000208A913071207010600000003000000060000000612073D0408A91307000000070000000700000002120700F808A91305120701040000000208A913071207010600000003000000080000000612073D0408A9130700000007000000070000000200000001000000041151E9090000000408A912F912073CF80000000108A91305120701040000000208A91307000000070000000712073D0408A913070000000612073D06000000060000000300000002120700F8000000070000000100000003000000021151E8F90A0001041151E905000000020A0001061151E9070000000300000006115225070A0000FE1152250908A91307120701060000000308A91309000000070000000600000006000000041151E909000000040000000600000003115225050A0001061151E907000000030A0000FE000000081151E9090000000408A9130512070104000000020000000800000006115225070A0000FE1152250908A91305120701040000000208A91307000000060000000812073D0408A913071207010600000003000000060000000600000002000000041151E9090000000408A91305120701040000000208A91307120701060000000305000100000000070000000612073D0605000100135D45010000000000000008135D8101050000F80000000600000006000000000000000312073D0408A913070000000612073D0605000100135D450100000000050000F80000000600000006000000060000000300000002000000030000000200000001"
theorem small_8520133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8520133_left_root small_8520133_left_fuel small_8520133_left_count small_8520133_left_encoded = true := by
  decide +kernel
theorem small_8520133_left_covered : CoveredBy scale carrier boxes small_8520133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8520133_left_root small_8520133_left_fuel small_8520133_left_count small_8520133_left_encoded small_8520133_left_checked

theorem cover_8520133 : CoveredBy scale carrier boxes root_8520133 := by
  apply coveredBy_split_literal root_8520133 small_8520133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3187.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8520133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3187.covered
#print axioms cover_8520133

def root_8514259 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514259 : CoveredBy scale carrier boxes root_8514259 := by
  apply coveredBy_split_literal root_8514259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8514260 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8520133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8514260
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8520133
#print axioms cover_8514259

def root_8523577 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8523577 : CoveredBy scale carrier boxes root_8523577 := by
  apply coveredBy_split_literal root_8523577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3188.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3189.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3188.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3189.covered
#print axioms cover_8523577

def root_8523576 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8523576 : CoveredBy scale carrier boxes root_8523576 := by
  apply coveredBy_split_literal root_8523576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8523577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3190.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8523577
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3190.covered
#print axioms cover_8523576

def root_8514258 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514258 : CoveredBy scale carrier boxes root_8514258 := by
  apply coveredBy_split_literal root_8514258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8514259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8523576 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8514259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8523576
#print axioms cover_8514258

def root_8492892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492892 : CoveredBy scale carrier boxes root_8492892 := by
  apply coveredBy_split_literal root_8492892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8492893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8514258 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8492893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8514258
#print axioms cover_8492892

def root_8302612 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302612 : CoveredBy scale carrier boxes root_8302612 := by
  apply coveredBy_split_literal root_8302612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8302613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8492892 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8302613
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8492892
#print axioms cover_8302612

def root_8087876 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087876 : CoveredBy scale carrier boxes root_8087876 := by
  apply coveredBy_split_literal root_8087876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8087877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8302612 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8087877
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8302612
#print axioms cover_8087876

def root_7759100 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759100 : CoveredBy scale carrier boxes root_7759100 := by
  apply coveredBy_split_literal root_7759100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0556.root_7759101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8087876 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0556.cover_7759101
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8087876
#print axioms cover_7759100

def root_8535164 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535164_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535164_left_fuel : Nat := 22
def small_8535164_left_count : Nat := 365
def small_8535164_left_encoded : String := "115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A912FB000000090000000912073D0008A912FB12073CFA0000000208A912FD00000005120700FC050000F8135D81030500010800000009135D81090CFD9C01000000050F350D0000000007000000000000000400000001135D4503000000010500010800000007135D81090CFD9C0100000005000000070000000400000003120700FA08A912FD12073CFC00000003000000090000000900000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D080000000500000004120700FC08A913090000000512073D08000000050000000400000003120700FA08A912FD12073CFC0000000308A913090000000500000009120700FC08A913090000000500000009000000030000000212073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D08050000F800000005135D4503000000010CFD9C01000000050F350D000CFD9BFB000000050F34D0FA00000005000000020000000000000004120700FC08A913090000000512073D08050000F8135D81030CFD9C01000000050F350D000CFD9BFB00000005000000080000000000000001135D4503000000010CFD9C010F34D100000000000CFD9BFB000000050F34D0FA00000005000000020F350D000CFD9BFB0000000500000008000000000000000400000003120700FA08A912FD12073CFC0000000308A913090000000512073D08050000F8135D81030CFD9C01000000050F350D00045489FB00000005138670FA0CFD9BFD000000050F34D0FC0000000500000003000000020000000000000001135D4503000000010CFD9C010F34D10000000000000000090F350D00045489FB00000005138670FA0CFD9BFD0000000500000009000000020000000000000004120700FC08A913090000000812073D08050000F8135D81030CFD9C01000000090F350D00000000080000000000000001135D4503000000010CFD9C01000000090F350D00000000080000000000000004000000030000000200000000000000041151E8FD0A0001081151E9090000000408A9130112070100000000000000000912073D0008A912FB12073CFA00000002050000F80000000500000007120700FA0000000900000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8135D8103050000FC00000005135D44FD000000060000000300000001135D450300000001050000FC00000005135D44FD04548A0100000009000000060000000312073D08050000F800000005135D450300000001050000FC000000050000000900000004120700FA08A9130900000005000000090000000212073D0008A912FB12073CFA0000000208A913091207010800000004050000F800000005135D450300000001050000FC00000005135D44FD0CFD9C010F34D10000000000000000060F350D0000000005000000000000000312073D08050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C0900000005000000090F34D0FA00000005000000020F350D000CFD9BFB000000050F34D0FA0000000500000002000000000000000300000004120700FA08A9130912070108000000040000000612073D08050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C01000000090F350D00045489FB000000050000000600000000000000030000000400000002000000000000000400000003"
theorem small_8535164_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8535164_left_root small_8535164_left_fuel small_8535164_left_count small_8535164_left_encoded = true := by
  decide +kernel
theorem small_8535164_left_covered : CoveredBy scale carrier boxes small_8535164_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8535164_left_root small_8535164_left_fuel small_8535164_left_count small_8535164_left_encoded small_8535164_left_checked

theorem cover_8535164 : CoveredBy scale carrier boxes root_8535164 := by
  apply coveredBy_split_literal root_8535164 small_8535164_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3193.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8535164_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3193.covered
#print axioms cover_8535164

def root_8535158 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535158_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535158_left_fuel : Nat := 1
def small_8535158_left_count : Nat := 1
def small_8535158_left_encoded : String := "00000001"
theorem small_8535158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8535158_left_root small_8535158_left_fuel small_8535158_left_count small_8535158_left_encoded = true := by
  decide +kernel
theorem small_8535158_left_covered : CoveredBy scale carrier boxes small_8535158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8535158_left_root small_8535158_left_fuel small_8535158_left_count small_8535158_left_encoded small_8535158_left_checked

theorem cover_8535158 : CoveredBy scale carrier boxes root_8535158 := by
  apply coveredBy_split_literal root_8535158 small_8535158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8535164 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8535158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8535164
#print axioms cover_8535158

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585
