import TaoBundleAssembly0535
import TaoBundleChunkBatch0733
import TaoBundleChunkBatch0734
import TaoBundleChunkBatch0735
import TaoBundleChunkBatch0736
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536
def root_7803917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803917_left_fuel : Nat := 29
def small_7803917_left_count : Nat := 459
def small_7803917_left_encoded : String := "115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000305000108135D44FF000000060000000400000006120700FC05000108135D44FF04548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC000000060000000300000006000000061386AD000CFD9BF90F350CF8000000010CFD9BFB0000000600000006000000060000000000000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F90C9A86FA000000060F8750FB0780010800000006000000060000000200000001000000030F34D0FA00000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F9000000060000000100000003000000060F34D0F800000006000000010000000000000003120700FA08A912FD00000006120700FC000000060000000300000002120700F808A912FB12073CFA0000000208A912FD00000006120700FC0000000600000003000000060000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000305000108135D44FF0000000600000004135D80FF000000040CFD9C010F34D100000000000000000600000006120700FC05000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000600000006000000060F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A000000060F34D0F800000006000000010000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0000000600000003000000060F34D0F800000006000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000600000005000000050F34D0F800000006000000010000000000000003120700FA08A912FD00000006120700FC000000060000000300000002120700F808A912FB12073CFA0000000208A912FD00000006120700FC000000060000000300000006000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D0804548A0100000008000000090000000400000008120700FC08A912FF12073D0804548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD000000080000000800000009000000081386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F90000000900000001000000040000000900000003000000090F34D0F80000000900000001000000000000000412070108000000040000000800000003120700FA08A912FD00000009120700FC000000090000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000600000008120700FC08A912FF12073D0804548A011386710000000000000000081386AD00045489F9000000090000000500000000000000040000000500000003000000090000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D080CFD9C01000000090F350D000CFD9BF9000000090F34D0F80000000600000001000000000000000412070108000000040CFD9C01000000080F350D000000000900000000120700FC08A912FF12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000009138670FC0CFD9BFF0F350D080C9A86F8000000050F8750F90000000900000001000000040000000500000003000000090F34D0F800000009000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000900000005000000050000000500000000000000040000000500000003120700FA0000000900000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000600000005000000050000000500000001000000001151E8FD0A0001081151E8FF08A913011207010000000000000000060000000600000004115224FF0000000408A91301120701000000000008A912F900000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF0000000600000009120700FA0000000600000002120700F800000006000000010000000000000003"
theorem small_7803917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803917_left_root small_7803917_left_fuel small_7803917_left_count small_7803917_left_encoded = true := by
  decide +kernel
theorem small_7803917_left_covered : CoveredBy scale carrier boxes small_7803917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803917_left_root small_7803917_left_fuel small_7803917_left_count small_7803917_left_encoded small_7803917_left_checked

theorem cover_7803917 : CoveredBy scale carrier boxes root_7803917 := by
  apply coveredBy_split_literal root_7803917 small_7803917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2932.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7803917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2932.covered
#print axioms cover_7803917

def root_7803911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803911_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803911_left_fuel : Nat := 1
def small_7803911_left_count : Nat := 1
def small_7803911_left_encoded : String := "00000001"
theorem small_7803911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803911_left_root small_7803911_left_fuel small_7803911_left_count small_7803911_left_encoded = true := by
  decide +kernel
theorem small_7803911_left_covered : CoveredBy scale carrier boxes small_7803911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803911_left_root small_7803911_left_fuel small_7803911_left_count small_7803911_left_encoded small_7803911_left_checked

theorem cover_7803911 : CoveredBy scale carrier boxes root_7803911 := by
  apply coveredBy_split_literal root_7803911 small_7803911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7803917 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7803911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7803917
#print axioms cover_7803911

def root_7807749 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7807749 : CoveredBy scale carrier boxes root_7807749 := by
  apply coveredBy_split_literal root_7807749 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2933.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2934.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2933.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2934.covered
#print axioms cover_7807749

def root_7807744 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7807744_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7807744_right_fuel : Nat := 1
def small_7807744_right_count : Nat := 1
def small_7807744_right_encoded : String := "00000001"
theorem small_7807744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7807744_right_root small_7807744_right_fuel small_7807744_right_count small_7807744_right_encoded = true := by
  decide +kernel
theorem small_7807744_right_covered : CoveredBy scale carrier boxes small_7807744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7807744_right_root small_7807744_right_fuel small_7807744_right_count small_7807744_right_encoded small_7807744_right_checked

theorem cover_7807744 : CoveredBy scale carrier boxes root_7807744 := by
  apply coveredBy_split_literal root_7807744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7807749 small_7807744_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7807749
  · exact small_7807744_right_covered
#print axioms cover_7807744

def root_7803910 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7803910 : CoveredBy scale carrier boxes root_7803910 := by
  apply coveredBy_split_literal root_7803910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7803911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7807744 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7803911
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7807744
#print axioms cover_7803910

def root_7803905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803905_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803905_right_fuel : Nat := 1
def small_7803905_right_count : Nat := 1
def small_7803905_right_encoded : String := "00000000"
theorem small_7803905_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803905_right_root small_7803905_right_fuel small_7803905_right_count small_7803905_right_encoded = true := by
  decide +kernel
theorem small_7803905_right_covered : CoveredBy scale carrier boxes small_7803905_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803905_right_root small_7803905_right_fuel small_7803905_right_count small_7803905_right_encoded small_7803905_right_checked

theorem cover_7803905 : CoveredBy scale carrier boxes root_7803905 := by
  apply coveredBy_split_literal root_7803905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7803910 small_7803905_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7803910
  · exact small_7803905_right_covered
#print axioms cover_7803905

def root_7802565 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7802565 : CoveredBy scale carrier boxes root_7802565 := by
  apply coveredBy_split_literal root_7802565 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2931.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7803905 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2931.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7803905
#print axioms cover_7802565

def root_7802564 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7802564 : CoveredBy scale carrier boxes root_7802564 := by
  apply coveredBy_split_literal root_7802564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7802565 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2935.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7802565
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2935.covered
#print axioms cover_7802564

def root_7759104 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759104 : CoveredBy scale carrier boxes root_7759104 := by
  apply coveredBy_split_literal root_7759104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0535.root_7759105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7802564 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0535.cover_7759105
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7802564
#print axioms cover_7759104

def root_7813628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813628 : CoveredBy scale carrier boxes root_7813628 := by
  apply coveredBy_split_literal root_7813628 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2936.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2937.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2936.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2937.covered
#print axioms cover_7813628

def root_7813623 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813623_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813623_right_fuel : Nat := 1
def small_7813623_right_count : Nat := 1
def small_7813623_right_encoded : String := "00000003"
theorem small_7813623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813623_right_root small_7813623_right_fuel small_7813623_right_count small_7813623_right_encoded = true := by
  decide +kernel
theorem small_7813623_right_covered : CoveredBy scale carrier boxes small_7813623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813623_right_root small_7813623_right_fuel small_7813623_right_count small_7813623_right_encoded small_7813623_right_checked

theorem cover_7813623 : CoveredBy scale carrier boxes root_7813623 := by
  apply coveredBy_split_literal root_7813623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813628 small_7813623_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813628
  · exact small_7813623_right_covered
#print axioms cover_7813623

def root_7813622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813622_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813622_right_fuel : Nat := 12
def small_7813622_right_count : Nat := 31
def small_7813622_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A9130112070100000000000000000512073D0008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A912FF12073CFE0000000400000005120700FE0000000A0000000400000002000000010000000000000005"
theorem small_7813622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813622_right_root small_7813622_right_fuel small_7813622_right_count small_7813622_right_encoded = true := by
  decide +kernel
theorem small_7813622_right_covered : CoveredBy scale carrier boxes small_7813622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813622_right_root small_7813622_right_fuel small_7813622_right_count small_7813622_right_encoded small_7813622_right_checked

theorem cover_7813622 : CoveredBy scale carrier boxes root_7813622 := by
  apply coveredBy_split_literal root_7813622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813623 small_7813622_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813623
  · exact small_7813622_right_covered
#print axioms cover_7813622

def root_7813616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813616_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813616_left_fuel : Nat := 1
def small_7813616_left_count : Nat := 1
def small_7813616_left_encoded : String := "00000002"
theorem small_7813616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813616_left_root small_7813616_left_fuel small_7813616_left_count small_7813616_left_encoded = true := by
  decide +kernel
theorem small_7813616_left_covered : CoveredBy scale carrier boxes small_7813616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813616_left_root small_7813616_left_fuel small_7813616_left_count small_7813616_left_encoded small_7813616_left_checked

theorem cover_7813616 : CoveredBy scale carrier boxes root_7813616 := by
  apply coveredBy_split_literal root_7813616 small_7813616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813622 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7813616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813622
#print axioms cover_7813616

def root_7813615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813615 : CoveredBy scale carrier boxes root_7813615 := by
  apply coveredBy_split_literal root_7813615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813616 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2938.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2938.covered
#print axioms cover_7813615

def root_7813609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813609_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813609_left_fuel : Nat := 1
def small_7813609_left_count : Nat := 1
def small_7813609_left_encoded : String := "00000001"
theorem small_7813609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813609_left_root small_7813609_left_fuel small_7813609_left_count small_7813609_left_encoded = true := by
  decide +kernel
theorem small_7813609_left_covered : CoveredBy scale carrier boxes small_7813609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813609_left_root small_7813609_left_fuel small_7813609_left_count small_7813609_left_encoded small_7813609_left_checked

theorem cover_7813609 : CoveredBy scale carrier boxes root_7813609 := by
  apply coveredBy_split_literal root_7813609 small_7813609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813615 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7813609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813615
#print axioms cover_7813609

def root_7813608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813608 : CoveredBy scale carrier boxes root_7813608 := by
  apply coveredBy_split_literal root_7813608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2939.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2939.covered
#print axioms cover_7813608

def root_7813603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813603_right_fuel : Nat := 1
def small_7813603_right_count : Nat := 1
def small_7813603_right_encoded : String := "00000000"
theorem small_7813603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813603_right_root small_7813603_right_fuel small_7813603_right_count small_7813603_right_encoded = true := by
  decide +kernel
theorem small_7813603_right_covered : CoveredBy scale carrier boxes small_7813603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813603_right_root small_7813603_right_fuel small_7813603_right_count small_7813603_right_encoded small_7813603_right_checked

theorem cover_7813603 : CoveredBy scale carrier boxes root_7813603 := by
  apply coveredBy_split_literal root_7813603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813608 small_7813603_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813608
  · exact small_7813603_right_covered
#print axioms cover_7813603

def root_7812931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7812931_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7812931_left_fuel : Nat := 23
def small_7812931_left_count : Nat := 315
def small_7812931_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004050001000000000A0000000A120700FE050001000000000A135D81010CFD9BF90000000A0000000A00000000000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004120700FA08A913070000000A12073CFC0000000308A912FF12073CFE0000000405000100000000080000000A0000000A00000002120700F808A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE0000000405000100135D450100000000045489F900000008138670F80000000800000001135D8101045489F91386ACF8000000010CFD9BFB000000080000000A138670F80CFD9BFB000000080000000A0000000100000000120700FE00000009000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004120700FA08A913070000000A12073CFC0000000308A912FF12073CFE0000000405000100135D45010000000000000008135D8101045489F900000008138670F8045489FB000000080000000A0000000100000000120700FE0000000A0000000400000002000000011151E8FF08A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC0500010000000008135D8101050000FE00000008135D44FF0000000800000004000000000000000300000008120700FA08A91307120700FC0000000A000000030000000800000002120700F808A912FB12073CFA0000000208A91307120700FC05000100135D45010000000000000008135D8101050000FE135D80FF00000004045489F9000000080000000800000005000000000000000312073CFC0000000300000008120700FA08A913070000000912073CFC00000003050001000000000800000005000000020000000100000004000000031151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FF0000000800000008120700FA08A912FF00000008120700FE000000080000000400000002120700F808A912FB12073CFA0000000200000008120700FA08A912FF00000008120700FE000000080000000400000002000000011151E8FF00000005000000041151E8FB0A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A91307120700FC08A912FF00000008120700FE00000008000000040000000300000008120700F808A91307120700FC08A912FF00000008000000080000000300000008000000011151E8FF08A912F900000008120700F8000000080000000100000004000000031151E9070000000300000005000000021151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912FB12073CFA0000000208A913070000000A0000000A0000000A1151E8FF08A912FB12073CFA0000000208A913070000000A00000008120700FA08A913070000000A000000050000000200000004000000031151E90700000003000000051151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC0000000800000003000000081151E8FF0000000800000004000000031151E90700000003000000050000000200000001"
theorem small_7812931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7812931_left_root small_7812931_left_fuel small_7812931_left_count small_7812931_left_encoded = true := by
  decide +kernel
theorem small_7812931_left_covered : CoveredBy scale carrier boxes small_7812931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7812931_left_root small_7812931_left_fuel small_7812931_left_count small_7812931_left_encoded small_7812931_left_checked

theorem cover_7812931 : CoveredBy scale carrier boxes root_7812931 := by
  apply coveredBy_split_literal root_7812931 small_7812931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7813603 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7812931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7813603
#print axioms cover_7812931

def root_7821995 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821995_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821995_right_fuel : Nat := 21
def small_7821995_right_count : Nat := 235
def small_7821995_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A91307120700FC050000FE135D81090000000500000004000000050000000312073CFC00000003050000FE135D810904548A011386710000000000045489F900000005138670F8045489FB00000005138670FA0CFD9C07000000050F350CFC000000030000000500000002000000011386AD00045489F91386ACF800000001045489FB0000000500000007138670F8045489FB1386ACFA000000020CFD9C070000000500000006138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC000000070000000600000002000000010000000000000004135D45090000000404548A01000000051386AD00045489F900000005138670F8045489FB00000005000000070000000100000000000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A913070000000512073CFC00000003050000FE135D81090CFD9C01000000050F350D000CFD9BF90000000500000006000000000000000400000005120700FA08A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000000000700000007000000040000000700000002120700F808A912FB12073CFA0000000208A91307120700FC000000090000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F900000005138670F80CFD9BFB0000000500000009000000010F350D00045489F91386ACF8000000010CFD9BFB0000000600000006000000090000000000000004135D4509000000040CFD9C010F34D10000000000045489F9000000050000000900000009120700FA08A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386ACF800000001045489FB0000000700000007138670F8045489FB1386ACFA000000020CFD9C07000000090F350CFC0000000300000006138670FA0CFD9C07000000070000000700000002000000010F350D00045489F91386ACF800000001045489FB0000000700000007138670F8045489FB0000000900000009000000010000000000000004135D4509000000040CFD9C010F34D10000000000000000070F350D00045489F9000000070000000900000000000000020000000100000000"
theorem small_7821995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821995_right_root small_7821995_right_fuel small_7821995_right_count small_7821995_right_encoded = true := by
  decide +kernel
theorem small_7821995_right_covered : CoveredBy scale carrier boxes small_7821995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821995_right_root small_7821995_right_fuel small_7821995_right_count small_7821995_right_encoded small_7821995_right_checked

theorem cover_7821995 : CoveredBy scale carrier boxes root_7821995 := by
  apply coveredBy_split_literal root_7821995 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2941.root small_7821995_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2941.covered
  · exact small_7821995_right_covered
#print axioms cover_7821995

def root_7821990 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821990_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821990_right_fuel : Nat := 1
def small_7821990_right_count : Nat := 1
def small_7821990_right_encoded : String := "00000003"
theorem small_7821990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821990_right_root small_7821990_right_fuel small_7821990_right_count small_7821990_right_encoded = true := by
  decide +kernel
theorem small_7821990_right_covered : CoveredBy scale carrier boxes small_7821990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821990_right_root small_7821990_right_fuel small_7821990_right_count small_7821990_right_encoded small_7821990_right_checked

theorem cover_7821990 : CoveredBy scale carrier boxes root_7821990 := by
  apply coveredBy_split_literal root_7821990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821995 small_7821990_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821995
  · exact small_7821990_right_covered
#print axioms cover_7821990

def root_7821989 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821989_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821989_right_fuel : Nat := 23
def small_7821989_right_count : Nat := 347
def small_7821989_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A91309120700FE050000FC135D81070000000500000003000000050000000412073CFE00000004050000FC135D810704548A011386710000000000045489F900000005138670F8045489FB00000005138670FA0CFD9C09000000050F350CFE000000040000000500000002000000011386AD00045489F91386ACF800000001045489FB00000005138670FA0CFD9C09000000050000000600000002138670F8045489FB00000008138670FA0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080000000600000002000000010000000000000003135D45070000000304548A01000000051386AD00045489F9000000050000000800000000000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A913090000000512073CFE00000004050000FC135D81070CFD9C01000000050F350D000CFD9BF90000000500000006000000000000000300000005120700FA08A91309120700FE0000000A0000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9BF9000000050F34D0F8045489FB00000005138670FA0000000A00000002000000010F350D000CFD9BF90000000A0F34D0F8045489FB1386ACFA00000002000000060000000A000000010000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF9000000050000000A0000000A00000002120700F808A912FB12073CFA0000000208A91309120700FE000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D1000000000000000008000000080000000300000008120700FA08A91309120700FE050000FC135D81070CFD9C010F34D10000000000000000080000000800000003000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D10000000000045489F91386ACF800000001045489FB00000008138670FA0CFD9C090000000A0F350CFE000000040000000600000002138670F8045489FB00000008138670FA0CFD9C09000000080000000800000002000000010F350D00045489F91386ACF800000001045489FB000000080000000A138670F8045489FB00000008138670FA0000000A00000002000000010000000000000003135D4507000000030CFD9C010F34D10000000000000000080F350D00045489F9000000080000000800000000000000020000000100000000000000041151E9090000000408A91301120701000000000008A912F900000005120700F808A912FB00000005120700FA050000FC135D8107050000FE000000060000000600000003135D450700000003050000FE0000000600000006000000020000000112073D0008A912F912073CF80000000108A912FB00000005120700FA050000FC135D8107050000FE000000060000000700000003135D450700000003050000FE00000006135D4509000000040000000600000002120700F808A912FB12073CFA00000002050000FC135D8107050000FE00000006135D4509000000040000000600000003135D450700000003050000FE00000006135D45090000000400000006120700FA050000FC135D8107050000FE135D81090CFD9C01000000060F350D00045489F900000006000000060000000000000004135D4509000000040CFD9C01000000060F350D00000000060000000000000003135D450700000003050000FE135D81090CFD9C01000000060F350D00000000060000000000000004135D4509000000040CFD9C01000000060F350D00045489F9000000060000000600000000000000020000000100000000"
theorem small_7821989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821989_right_root small_7821989_right_fuel small_7821989_right_count small_7821989_right_encoded = true := by
  decide +kernel
theorem small_7821989_right_covered : CoveredBy scale carrier boxes small_7821989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821989_right_root small_7821989_right_fuel small_7821989_right_count small_7821989_right_encoded small_7821989_right_checked

theorem cover_7821989 : CoveredBy scale carrier boxes root_7821989 := by
  apply coveredBy_split_literal root_7821989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821990 small_7821989_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821990
  · exact small_7821989_right_covered
#print axioms cover_7821989

def root_7821983 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821983_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821983_left_fuel : Nat := 1
def small_7821983_left_count : Nat := 1
def small_7821983_left_encoded : String := "00000002"
theorem small_7821983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821983_left_root small_7821983_left_fuel small_7821983_left_count small_7821983_left_encoded = true := by
  decide +kernel
theorem small_7821983_left_covered : CoveredBy scale carrier boxes small_7821983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821983_left_root small_7821983_left_fuel small_7821983_left_count small_7821983_left_encoded small_7821983_left_checked

theorem cover_7821983 : CoveredBy scale carrier boxes root_7821983 := by
  apply coveredBy_split_literal root_7821983 small_7821983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821989 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7821983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821989
#print axioms cover_7821983

def root_7821982 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821982_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821982_right_fuel : Nat := 17
def small_7821982_right_count : Nat := 53
def small_7821982_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A912F912073CF800000001000000050000000512073D0008A912F912073CF80000000100000005120700F808A913070000000512073CFC0000000308A913090000000512073CFE00000004050000FA135D80FB000000020CFD9C0100000005000000080000000500000001000000000000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A913010000000512073D00000000050000000000000002"
theorem small_7821982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821982_right_root small_7821982_right_fuel small_7821982_right_count small_7821982_right_encoded = true := by
  decide +kernel
theorem small_7821982_right_covered : CoveredBy scale carrier boxes small_7821982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821982_right_root small_7821982_right_fuel small_7821982_right_count small_7821982_right_encoded small_7821982_right_checked

theorem cover_7821982 : CoveredBy scale carrier boxes root_7821982 := by
  apply coveredBy_split_literal root_7821982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821983 small_7821982_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821983
  · exact small_7821982_right_covered
#print axioms cover_7821982

def root_7821976 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821976_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821976_left_fuel : Nat := 1
def small_7821976_left_count : Nat := 1
def small_7821976_left_encoded : String := "00000001"
theorem small_7821976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821976_left_root small_7821976_left_fuel small_7821976_left_count small_7821976_left_encoded = true := by
  decide +kernel
theorem small_7821976_left_covered : CoveredBy scale carrier boxes small_7821976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821976_left_root small_7821976_left_fuel small_7821976_left_count small_7821976_left_encoded small_7821976_left_checked

theorem cover_7821976 : CoveredBy scale carrier boxes root_7821976 := by
  apply coveredBy_split_literal root_7821976 small_7821976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7821982 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7821976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7821982
#print axioms cover_7821976

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536
