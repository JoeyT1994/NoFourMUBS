import TaoBundleAssembly0224
import TaoBundleChunkBatch0880
import TaoBundleChunkBatch0881
import TaoBundleChunkBatch0882
import TaoBundleChunkBatch0883
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225
def root_9387371 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387371_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387371_left_fuel : Nat := 20
def small_9387371_left_count : Nat := 117
def small_9387371_left_encoded : String := "12073D0208A912FF12073CFE0000000405000100135D45010000000000000008135D8101050000FA135D8105050000FC135D81070CFD9BF9000000050F34D102000000010CFD9BFF000000050F34D0FE000000050000000400000003135D4507000000030CFD9BF9000000080F34D102000000010CFD9BFF000000080F34D0FE0000000800000004000000020000000800000000120700FE05000100135D450100000000050000FA135D8105050000FC00000008000000060000000200000008135D8101050000FA135D8105050000FC135D81070CFD9BF90F350D0200000005000000010F34D10200000001045489FF1386ACFE000000040780010000000005128A7D010000000500000000138670FE07800100128A410100000000078000FA128A7D05000000060000000200000008128A7D01078000FA128A7D05078000FC128A7D0700000005000000030000000600000002128A410500000002078000FC00000008128A41070000000300000008000000000000000400000003135D4507000000030CFD9BF9000000060F34D10200000001045489FF1386ACFE00000004000000060000000600000002135D450500000002050000FC00000008135D45070000000300000008000000000000000400000001"
theorem small_9387371_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387371_left_root small_9387371_left_fuel small_9387371_left_count small_9387371_left_encoded = true := by
  decide +kernel
theorem small_9387371_left_covered : CoveredBy scale carrier boxes small_9387371_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387371_left_root small_9387371_left_fuel small_9387371_left_count small_9387371_left_encoded small_9387371_left_checked

theorem cover_9387371 : CoveredBy scale carrier boxes root_9387371 := by
  apply coveredBy_split_literal root_9387371 small_9387371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9387625 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9387371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9387625
#print axioms cover_9387371

def root_9387365 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387365_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387365_left_fuel : Nat := 1
def small_9387365_left_count : Nat := 1
def small_9387365_left_encoded : String := "00000004"
theorem small_9387365_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387365_left_root small_9387365_left_fuel small_9387365_left_count small_9387365_left_encoded = true := by
  decide +kernel
theorem small_9387365_left_covered : CoveredBy scale carrier boxes small_9387365_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387365_left_root small_9387365_left_fuel small_9387365_left_count small_9387365_left_encoded small_9387365_left_checked

theorem cover_9387365 : CoveredBy scale carrier boxes root_9387365 := by
  apply coveredBy_split_literal root_9387365 small_9387365_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9387371 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9387365_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9387371
#print axioms cover_9387365

def root_9387364 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387364_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387364_right_fuel : Nat := 20
def small_9387364_right_count : Nat := 113
def small_9387364_right_encoded : String := "1151E8FF08A912F912073D020500010000000008135D8101050000FA135D8105050000FC00000008135D4507000000030000000800000002000000080000000000000001120701020000000105000100135D450100000000050000FA135D8105050000FC135D8107050000FE0000000800000008000000030000000A0000000200000008135D8101050000FA135D8105050000FC135D8107050000FE135D80FF00000004045489F900000008138671020000000107800100128A410100000000078000FA0000000A00000007128A7D01078000FA128A7D05078000FC128A7D07000000050000000300000007000000020000000700000000135D44FF045489F9000000081386710200000001078001000000000A128A7D01078000FA0000000A00000008000000000000000400000003135D450700000003050000FE135D80FF00000004045489F91386AD020780010000000006128A7D01078000FA0000000600000006000000000000000100000007135D44FF045489F900000006000000070000000400000002135D450500000002050000FC135D8107050000FE000000080000000800000003135D450700000003050000FE00000007000000070000000000000004"
theorem small_9387364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387364_right_root small_9387364_right_fuel small_9387364_right_count small_9387364_right_encoded = true := by
  decide +kernel
theorem small_9387364_right_covered : CoveredBy scale carrier boxes small_9387364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387364_right_root small_9387364_right_fuel small_9387364_right_count small_9387364_right_encoded small_9387364_right_checked

theorem cover_9387364 : CoveredBy scale carrier boxes root_9387364 := by
  apply coveredBy_split_literal root_9387364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9387365 small_9387364_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9387365
  · exact small_9387364_right_covered
#print axioms cover_9387364

def root_9387358 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387358_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387358_left_fuel : Nat := 1
def small_9387358_left_count : Nat := 1
def small_9387358_left_encoded : String := "00000003"
theorem small_9387358_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387358_left_root small_9387358_left_fuel small_9387358_left_count small_9387358_left_encoded = true := by
  decide +kernel
theorem small_9387358_left_covered : CoveredBy scale carrier boxes small_9387358_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387358_left_root small_9387358_left_fuel small_9387358_left_count small_9387358_left_encoded small_9387358_left_checked

theorem cover_9387358 : CoveredBy scale carrier boxes root_9387358 := by
  apply coveredBy_split_literal root_9387358 small_9387358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9387364 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9387358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9387364
#print axioms cover_9387358

def root_9379740 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9379740 : CoveredBy scale carrier boxes root_9379740 := by
  apply coveredBy_split_literal root_9379740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9379741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9387358 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9379741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9387358
#print axioms cover_9379740

def root_9379734 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379734_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9379734_left_fuel : Nat := 1
def small_9379734_left_count : Nat := 1
def small_9379734_left_encoded : String := "00000002"
theorem small_9379734_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9379734_left_root small_9379734_left_fuel small_9379734_left_count small_9379734_left_encoded = true := by
  decide +kernel
theorem small_9379734_left_covered : CoveredBy scale carrier boxes small_9379734_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9379734_left_root small_9379734_left_fuel small_9379734_left_count small_9379734_left_encoded small_9379734_left_checked

theorem cover_9379734 : CoveredBy scale carrier boxes root_9379734 := by
  apply coveredBy_split_literal root_9379734 small_9379734_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9379740 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9379734_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9379740
#print axioms cover_9379734

def root_9374032 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9374032 : CoveredBy scale carrier boxes root_9374032 := by
  apply coveredBy_split_literal root_9374032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.root_9374033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9379734 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0224.cover_9374033
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9379734
#print axioms cover_9374032

def root_9374026 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9374026_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9374026_left_fuel : Nat := 1
def small_9374026_left_count : Nat := 1
def small_9374026_left_encoded : String := "00000001"
theorem small_9374026_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9374026_left_root small_9374026_left_fuel small_9374026_left_count small_9374026_left_encoded = true := by
  decide +kernel
theorem small_9374026_left_covered : CoveredBy scale carrier boxes small_9374026_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9374026_left_root small_9374026_left_fuel small_9374026_left_count small_9374026_left_encoded small_9374026_left_checked

theorem cover_9374026 : CoveredBy scale carrier boxes root_9374026 := by
  apply coveredBy_split_literal root_9374026 small_9374026_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9374032 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9374026_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9374032
#print axioms cover_9374026

def root_9373868 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9373868_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9373868_left_fuel : Nat := 17
def small_9373868_left_count : Nat := 73
def small_9373868_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91305120700FA08A913070000000512073CFC00000003000000050000000212073CFA0000000208A913070000000512073CFC0000000308A912FF00000005120700FE05000100135D450100000000050001020000000800000005000000050000000400000005000000031151E907000000030A0000FE115224FF0000000408A913050000000512073CFA00000002000000051151E8FF0000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A913070000000512073CFC00000003000000051151E8FF0000000500000004000000031151E907000000030A0000FE000000081151E8FF000000050000000400000001"
theorem small_9373868_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9373868_left_root small_9373868_left_fuel small_9373868_left_count small_9373868_left_encoded = true := by
  decide +kernel
theorem small_9373868_left_covered : CoveredBy scale carrier boxes small_9373868_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9373868_left_root small_9373868_left_fuel small_9373868_left_count small_9373868_left_encoded small_9373868_left_checked

theorem cover_9373868 : CoveredBy scale carrier boxes root_9373868 := by
  apply coveredBy_split_literal root_9373868 small_9373868_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9374026 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9373868_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9374026
#print axioms cover_9373868

def root_9373862 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9373862_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9373862_left_fuel : Nat := 1
def small_9373862_left_count : Nat := 1
def small_9373862_left_encoded : String := "00000000"
theorem small_9373862_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9373862_left_root small_9373862_left_fuel small_9373862_left_count small_9373862_left_encoded = true := by
  decide +kernel
theorem small_9373862_left_covered : CoveredBy scale carrier boxes small_9373862_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9373862_left_root small_9373862_left_fuel small_9373862_left_count small_9373862_left_encoded small_9373862_left_checked

theorem cover_9373862 : CoveredBy scale carrier boxes root_9373862 := by
  apply coveredBy_split_literal root_9373862 small_9373862_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9373868 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9373862_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9373868
#print axioms cover_9373862

def root_9404222 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9404222 : CoveredBy scale carrier boxes root_9404222 := by
  apply coveredBy_split_literal root_9404222 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3520.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3521.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3520.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3521.covered
#print axioms cover_9404222

def root_9404216 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9404216_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9404216_left_fuel : Nat := 1
def small_9404216_left_count : Nat := 1
def small_9404216_left_encoded : String := "00000003"
theorem small_9404216_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9404216_left_root small_9404216_left_fuel small_9404216_left_count small_9404216_left_encoded = true := by
  decide +kernel
theorem small_9404216_left_covered : CoveredBy scale carrier boxes small_9404216_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9404216_left_root small_9404216_left_fuel small_9404216_left_count small_9404216_left_encoded small_9404216_left_checked

theorem cover_9404216 : CoveredBy scale carrier boxes root_9404216 := by
  apply coveredBy_split_literal root_9404216 small_9404216_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9404222 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9404216_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9404222
#print axioms cover_9404216

def root_9401374 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9401374 : CoveredBy scale carrier boxes root_9401374 := by
  apply coveredBy_split_literal root_9401374 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3519.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9404216 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3519.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9404216
#print axioms cover_9401374

def root_9401368 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9401368_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9401368_left_fuel : Nat := 1
def small_9401368_left_count : Nat := 1
def small_9401368_left_encoded : String := "00000002"
theorem small_9401368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9401368_left_root small_9401368_left_fuel small_9401368_left_count small_9401368_left_encoded = true := by
  decide +kernel
theorem small_9401368_left_covered : CoveredBy scale carrier boxes small_9401368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9401368_left_root small_9401368_left_fuel small_9401368_left_count small_9401368_left_encoded small_9401368_left_checked

theorem cover_9401368 : CoveredBy scale carrier boxes root_9401368 := by
  apply coveredBy_split_literal root_9401368 small_9401368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9401374 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9401368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9401374
#print axioms cover_9401368

def root_9400094 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9400094 : CoveredBy scale carrier boxes root_9400094 := by
  apply coveredBy_split_literal root_9400094 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3518.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9401368 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3518.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9401368
#print axioms cover_9400094

def root_9400088 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9400088_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9400088_left_fuel : Nat := 1
def small_9400088_left_count : Nat := 1
def small_9400088_left_encoded : String := "00000001"
theorem small_9400088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9400088_left_root small_9400088_left_fuel small_9400088_left_count small_9400088_left_encoded = true := by
  decide +kernel
theorem small_9400088_left_covered : CoveredBy scale carrier boxes small_9400088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9400088_left_root small_9400088_left_fuel small_9400088_left_count small_9400088_left_encoded small_9400088_left_checked

theorem cover_9400088 : CoveredBy scale carrier boxes root_9400088 := by
  apply coveredBy_split_literal root_9400088 small_9400088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9400094 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9400088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9400094
#print axioms cover_9400088

def root_9399882 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9399882_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9399882_left_fuel : Nat := 18
def small_9399882_left_count : Nat := 97
def small_9399882_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF00000004000000051151E8FF08A91301120701000000000008A913050000000A000000050000000500000004000000031151E907000000030A0000FE000000051151E8FF0000000500000004000000021151E905000000020A0000FC115225070A0000FE000000051151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912FF00000005120700FE000000050000000412073D0008A912FF12073CFE000000040500010200000005135D80F900000001050000FA0000000500000008120700FE0500010200000005135D80F900000001050000FA00000005135D450500000002050000FC00000005135D4507000000030000000800000004000000001151E8FF08A9130112070100000000000500010200000005135D80F9000000010000000A12073D000500010200000005135D80F900000001050000FA0000000500000008000000000000000400000001"
theorem small_9399882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9399882_left_root small_9399882_left_fuel small_9399882_left_count small_9399882_left_encoded = true := by
  decide +kernel
theorem small_9399882_left_covered : CoveredBy scale carrier boxes small_9399882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9399882_left_root small_9399882_left_fuel small_9399882_left_count small_9399882_left_encoded small_9399882_left_checked

theorem cover_9399882 : CoveredBy scale carrier boxes root_9399882 := by
  apply coveredBy_split_literal root_9399882 small_9399882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9400088 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9399882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9400088
#print axioms cover_9399882

def root_9399877 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9399877_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9399877_right_fuel : Nat := 1
def small_9399877_right_count : Nat := 1
def small_9399877_right_encoded : String := "00000000"
theorem small_9399877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9399877_right_root small_9399877_right_fuel small_9399877_right_count small_9399877_right_encoded = true := by
  decide +kernel
theorem small_9399877_right_covered : CoveredBy scale carrier boxes small_9399877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9399877_right_root small_9399877_right_fuel small_9399877_right_count small_9399877_right_encoded small_9399877_right_checked

theorem cover_9399877 : CoveredBy scale carrier boxes root_9399877 := by
  apply coveredBy_split_literal root_9399877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9399882 small_9399877_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9399882
  · exact small_9399877_right_covered
#print axioms cover_9399877

def root_9373861 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9373861 : CoveredBy scale carrier boxes root_9373861 := by
  apply coveredBy_split_literal root_9373861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9373862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9399877 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9373862
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9399877
#print axioms cover_9373861

def root_9410149 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9410149 : CoveredBy scale carrier boxes root_9410149 := by
  apply coveredBy_split_literal root_9410149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3522.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3523.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3522.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3523.covered
#print axioms cover_9410149

def root_9410143 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9410143_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9410143_left_fuel : Nat := 1
def small_9410143_left_count : Nat := 1
def small_9410143_left_encoded : String := "00000001"
theorem small_9410143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9410143_left_root small_9410143_left_fuel small_9410143_left_count small_9410143_left_encoded = true := by
  decide +kernel
theorem small_9410143_left_covered : CoveredBy scale carrier boxes small_9410143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9410143_left_root small_9410143_left_fuel small_9410143_left_count small_9410143_left_encoded small_9410143_left_checked

theorem cover_9410143 : CoveredBy scale carrier boxes root_9410143 := by
  apply coveredBy_split_literal root_9410143 small_9410143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9410149 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9410143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9410149
#print axioms cover_9410143

def root_9409713 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9409713_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9409713_left_fuel : Nat := 21
def small_9409713_left_count : Nat := 205
def small_9409713_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A913070000000A0000000A0000000212073CFA0000000208A91307120700FC08A91309120700FE05000100000000070000000700000004000000070000000312073CFC0000000308A91309120700FE05000100135D450100000000050001020000000A135D80F9000000010CFD9C05000000060F350CFA000000020CFD9C070000000600000006135D8101050001020000000A135D80F9000000010CFD9C05000000050F350CFA000000020CFD9C070000000500000007000000000000000412073CFE000000040000000A000000041151E9090000000400000007000000031151E907000000030A0000FE1152250908A913050000000600000006000000041151E9090000000400000006000000021151E905000000020A0000FC115225070A0000FE1152250908A91307120700FC08A91309120700FE05000100135D45010000000005000102135D44F9000000050000000100000005000000050000000412073CFE0000000405000100135D45010000000000000007000000070000000312073CFC0000000308A91309120700FE05000100135D4501000000000500010200000008135D80F900000001050000FA135D81050CFD9C070F34D0FC0000000700000003000000060000000200000008135D810105000102135D44F9050000FA0000000A0000000800000001135D80F900000001050000FA135D81050CFD9C07000000050000000A0000000200000008000000000000000412073CFE0000000405000100135D45010000000005000102135D44F90000000600000001135D80F9000000010000000A135D810105000102135D44F9050000FA00000007135D4505000000020CFD9C070F34D0FC00000007000000030000000600000001135D80F900000001050000FA00000007135D4505000000020CFD9C070F34D0FC00000007000000030000000A00000000000000041151E9090000000408A913070000000700000006000000031151E907000000030A0000FE1152250908A91309120700FE0500010000000006135D8101050001020000000600000006000000000000000400000006000000040000000600000001"
theorem small_9409713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9409713_left_root small_9409713_left_fuel small_9409713_left_count small_9409713_left_encoded = true := by
  decide +kernel
theorem small_9409713_left_covered : CoveredBy scale carrier boxes small_9409713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9409713_left_root small_9409713_left_fuel small_9409713_left_count small_9409713_left_encoded small_9409713_left_checked

theorem cover_9409713 : CoveredBy scale carrier boxes root_9409713 := by
  apply coveredBy_split_literal root_9409713 small_9409713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9410143 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9409713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9410143
#print axioms cover_9409713

def root_9409707 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9409707_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9409707_left_fuel : Nat := 1
def small_9409707_left_count : Nat := 1
def small_9409707_left_encoded : String := "00000000"
theorem small_9409707_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9409707_left_root small_9409707_left_fuel small_9409707_left_count small_9409707_left_encoded = true := by
  decide +kernel
theorem small_9409707_left_covered : CoveredBy scale carrier boxes small_9409707_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9409707_left_root small_9409707_left_fuel small_9409707_left_count small_9409707_left_encoded small_9409707_left_checked

theorem cover_9409707 : CoveredBy scale carrier boxes root_9409707 := by
  apply coveredBy_split_literal root_9409707 small_9409707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9409713 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9409707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9409713
#print axioms cover_9409707

def root_9414935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414935_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414935_left_fuel : Nat := 27
def small_9414935_left_count : Nat := 439
def small_9414935_left_encoded : String := "115225050A0000FC115225070A0000FE1152250908A91301120701000000000008A912F912073D0208A91305120700FA000000050000000212073CFA0000000208A91307120700FC000000050000000312073CFC0000000308A913090000000A12073CFE0000000404548A01000000080000000A00000001120701020000000108A913050000000A12073CFA0000000208A91307000000080000000A12073D0008A912F912073D0208A91305120700FA08A91307000000050000000A0000000212073CFA0000000208A91307120700FC08A9130900000005000000070000000312073CFC0000000308A91309120700FE0CFD9C010F34D100000000000CFD9BF9000000050000000A0F350D000CFD9BF90F350D020CFD9C05000000050F350CFA000000020CFD9C07000000050000000A000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09138670FE0C9A8700000000050000000A0000000400000007000000000000000412073CFE000000040CFD9C010000000A0F350D000CFD9BF9000000070000000A0000000000000001120701020000000108A91305120700FA08A91307000000080000000A0000000212073CFA0000000208A91307120700FC08A91309120700FE0CFD9C010000000A0F350D00000000070000000000000004000000070000000312073CFC0000000308A91309120700FE0CFD9C010F34D10000000000045489F90000000A000000080F350D00045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE0C9A87000000000A0000000A000000040000000A0000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C07000000080F350CFC0000000300000008000000000000000412073CFE000000040CFD9C01000000080F350D000000000A0000000000000000000000041151E9090000000408A91301120701000000000008A912F912073D0200000008000000010000000812073D0008A912F912073D0208A9130500000007000000070000000112070102000000010000000800000000000000031151E907000000030A0000FE1152250908A91301120701000000000008A912F912073D0208A913050000000A12073CFA0000000208A91309120700FE00000009000000040000000A00000001120701020000000108A913050000000A12073CFA0000000208A91309000000080000000812073D0008A912F912073D0208A91305120700FA08A91309120700FE00000009000000040000000A0000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D10000000000000000090F350D000CFD9BF90F350D020CFD9C05000000050F350CFA0000000204548A09000000050000000A000000010F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA0000000204548A09000000091386ACFE000000040000000A0000000000000003135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9BF90F350D0200000006000000010F34D1020000000100000009000000000000000412073CFE00000004050000FC135D81070CFD9C010000000A0F350D000CFD9BF90000000A0000000A0000000000000003135D4507000000030CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000060F34D10200000001000000060000000000000001120701020000000108A91305120700FA08A91309120700FE00000009000000040000000A0000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D10000000000000000090F350D00045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA0000000204548A09000000091386ACFE000000040C9A870000000008000000080000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA0000000204548A0900000008000000080000000000000003135D4507000000030CFD9C010F34D10000000000000000090F350D00045489F90000000913867102000000010CFD9C05000000090F350CFA0000000204548A090000000800000008000000000000000412073CFE00000004050000FC135D81070CFD9C01000000080F350D00045489F900000008000000080000000000000003135D4507000000030CFD9C01000000080F350D00045489F91386AD020CFD9C05000000060000000800000001000000080000000000000000000000041151E9090000000408A9130112070100000000000000000A12073D0008A912F90000000A1207010200000001000000080000000000000002"
theorem small_9414935_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9414935_left_root small_9414935_left_fuel small_9414935_left_count small_9414935_left_encoded = true := by
  decide +kernel
theorem small_9414935_left_covered : CoveredBy scale carrier boxes small_9414935_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9414935_left_root small_9414935_left_fuel small_9414935_left_count small_9414935_left_encoded small_9414935_left_checked

theorem cover_9414935 : CoveredBy scale carrier boxes root_9414935 := by
  apply coveredBy_split_literal root_9414935 small_9414935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3524.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9414935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3524.covered
#print axioms cover_9414935

def root_9414929 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414929_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414929_left_fuel : Nat := 1
def small_9414929_left_count : Nat := 1
def small_9414929_left_encoded : String := "00000001"
theorem small_9414929_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9414929_left_root small_9414929_left_fuel small_9414929_left_count small_9414929_left_encoded = true := by
  decide +kernel
theorem small_9414929_left_covered : CoveredBy scale carrier boxes small_9414929_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9414929_left_root small_9414929_left_fuel small_9414929_left_count small_9414929_left_encoded small_9414929_left_checked

theorem cover_9414929 : CoveredBy scale carrier boxes root_9414929 := by
  apply coveredBy_split_literal root_9414929 small_9414929_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9414935 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9414929_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9414935
#print axioms cover_9414929

def root_9414057 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414057_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414057_left_fuel : Nat := 24
def small_9414057_left_count : Nat := 411
def small_9414057_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A9130112070100000000000000000512073D0008A91305120700FA08A91307000000050000000A0000000212073CFA0000000208A91307120700FC08A9130900000005000000070000000312073CFC0000000308A91309120700FE05000102135D44F90000000500000001000000050000000412073CFE0000000405000102135D44F90CFD9C010F34D10000000000000000070000000700000001135D80F9000000010CFD9C010F34D10000000000000000070000000700000000000000041151E9090000000408A9130112070100000000000000000700000007000000031151E907000000030A0000FE1152250908A91301120701000000000008A91305000000050000000A12073D0008A913050000000A12073CFA0000000208A91309120700FE05000102135D44F90000000500000001135D80F900000001050000FC00000005135D45070000000300000006000000040000000A00000000000000041151E9090000000400000006000000021151E905000000020A0000FC115225070A0000FE1152250908A91301120701000000000008A913070000000512073CFC0000000308A913090000000512073CFE0000000405000102135D44F9050000FA00000005135D45050000000204548A01000000051386AD000CFD9C0700000005000000070000000000000001135D80F900000001050000FA135D810504548A01000000050000000700000002135D45050000000204548A0113867100000000000CFD9C07000000050F350CFC000000030CFD9C0900000005000000071386AD000CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090000000A000000070000000012073D0008A91307120700FC08A913090000000512073CFE0000000405000102135D44F90000000500000001135D80F900000001050000FA00000005135D4505000000020CFD9C0100000005000000070000000312073CFC0000000308A91309120700FE05000102135D44F90000000500000001135D80F900000001050000FA00000005135D4505000000020CFD9C01000000050F350D000CFD9C07000000050F350CFC000000030000000A000000000000000412073CFE0000000405000102135D44F9050000FA135D81050CFD9C010F34D10000000000000000070000000700000002135D4505000000020CFD9C010F34D100000000000CFD9C070F34D0FC0000000500000003000000070F350D000CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0000000700000004000000070000000000000001135D80F900000001050000FA135D81050CFD9C010F34D10000000000000000070000000700000002135D4505000000020CFD9C010F34D100000000000CFD9C070F34D0FC0000000700000003000000070F350D000CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A000000070000000000000000000000041151E9090000000408A9130112070100000000000000000712073D0008A91307000000070000000700000000000000031151E907000000030A0000FE1152250908A91301120701000000000008A91309120700FE0500010200000005000000090000000412073CFE0000000405000102135D44F9050000FA00000009135D450500000002050000FC135D810704548A01000000090000000A000000030000000900000001135D80F900000001050000FA0000000A135D450500000002050000FC0000000A0000000A12073D0008A91309120700FE05000102135D44F9050000FA135D81050000000A00000002135D450500000002050000FC0000000A135D4507000000030000000600000001135D80F900000001050000FA135D8105050000FC0000000A135D4507000000030CFD9C01000000090000000600000002135D450500000002050000FC135D81070CFD9C010000000A0F350D000000000A0000000000000003135D4507000000030CFD9C010000000A000000060000000412073CFE0000000405000102135D44F9050000FA0000000A135D450500000002050000FC135D81070CFD9C010000000A00000006000000030000000600000001135D80F900000001050000FA0000000A135D450500000002050000FC135D81070CFD9C010000000A0000000A00000003135D4507000000030000000600000000000000041151E9090000000408A913011207010000000000000000070000000600000001"
theorem small_9414057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9414057_left_root small_9414057_left_fuel small_9414057_left_count small_9414057_left_encoded = true := by
  decide +kernel
theorem small_9414057_left_covered : CoveredBy scale carrier boxes small_9414057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9414057_left_root small_9414057_left_fuel small_9414057_left_count small_9414057_left_encoded small_9414057_left_checked

theorem cover_9414057 : CoveredBy scale carrier boxes root_9414057 := by
  apply coveredBy_split_literal root_9414057 small_9414057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9414929 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9414057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9414929
#print axioms cover_9414057

def root_9414052 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9414052_right_fuel : Nat := 1
def small_9414052_right_count : Nat := 1
def small_9414052_right_encoded : String := "00000000"
theorem small_9414052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9414052_right_root small_9414052_right_fuel small_9414052_right_count small_9414052_right_encoded = true := by
  decide +kernel
theorem small_9414052_right_covered : CoveredBy scale carrier boxes small_9414052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9414052_right_root small_9414052_right_fuel small_9414052_right_count small_9414052_right_encoded small_9414052_right_checked

theorem cover_9414052 : CoveredBy scale carrier boxes root_9414052 := by
  apply coveredBy_split_literal root_9414052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9414057 small_9414052_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9414057
  · exact small_9414052_right_covered
#print axioms cover_9414052

def root_9409706 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9409706 : CoveredBy scale carrier boxes root_9409706 := by
  apply coveredBy_split_literal root_9409706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9409707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9414052 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9409707
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9414052
#print axioms cover_9409706

def root_9373860 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9373860 : CoveredBy scale carrier boxes root_9373860 := by
  apply coveredBy_split_literal root_9373860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9373861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9409706 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9373861
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9409706
#print axioms cover_9373860

def root_9421967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421967_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421967_left_fuel : Nat := 26
def small_9421967_left_count : Nat := 225
def small_9421967_left_encoded : String := "120701000000000008A912F912073D0208A91305120700FA08A91307120700FC0000000A0000000312073CFC000000030500010800000005135D80FF00000004000000050000000212073CFA0000000208A913070000000A12073CFC000000030500010800000005135D80FF0000000404548A0113867100000000000CFD9BF9000000070F34D102000000010CFD9C050000000A0000000A1386AD000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA0000000500000002000000070000000000000001120701020000000108A91305120700FA08A91307120700FC0000000500000003000000050000000212073CFA0000000208A91307120700FC000000050000000312073CFC0000000305000108135D44FF04548A011386710000000000045489F90000000513867102000000010CFD9C05000000050F350CFA000000020CFD9C0700000005000000091386AD00045489F90000000513867102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F875105000000020C9A86FC000000050000000A0000000000000004135D80FF0000000404548A011386710000000000045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070000000A0F350CFC000000030000000A0000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D0700000005000000030F8751070000000300000009000000020F875105000000020000000A1386AD00045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070000000A0F350CFC000000030C9A86FA000000070000000A0000000113867102000000010CFD9C050F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC000000050F8751070000000300000008000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D07078001080000000500000007000000030F875107000000030780010800000009128A7CFF00000004067ECE8112EA5900000000000000000700000007000000020F875105000000020C9A86FC0000000A0F87510700000003078001080000000A128A7CFF00000004067ECE810000000A0000000A00000000"
theorem small_9421967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421967_left_root small_9421967_left_fuel small_9421967_left_count small_9421967_left_encoded = true := by
  decide +kernel
theorem small_9421967_left_covered : CoveredBy scale carrier boxes small_9421967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421967_left_root small_9421967_left_fuel small_9421967_left_count small_9421967_left_encoded small_9421967_left_checked

theorem cover_9421967 : CoveredBy scale carrier boxes root_9421967 := by
  apply coveredBy_split_literal root_9421967 small_9421967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3526.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9421967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3526.covered
#print axioms cover_9421967

def root_9421962 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421962_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421962_right_fuel : Nat := 1
def small_9421962_right_count : Nat := 1
def small_9421962_right_encoded : String := "00000004"
theorem small_9421962_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421962_right_root small_9421962_right_fuel small_9421962_right_count small_9421962_right_encoded = true := by
  decide +kernel
theorem small_9421962_right_covered : CoveredBy scale carrier boxes small_9421962_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421962_right_root small_9421962_right_fuel small_9421962_right_count small_9421962_right_encoded small_9421962_right_checked

theorem cover_9421962 : CoveredBy scale carrier boxes root_9421962 := by
  apply coveredBy_split_literal root_9421962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421967 small_9421962_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421967
  · exact small_9421962_right_covered
#print axioms cover_9421962

def root_9421961 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421961_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421961_right_fuel : Nat := 28
def small_9421961_right_count : Nat := 463
def small_9421961_right_encoded : String := "115224FF0000000408A91301120701000000000008A912F912073D0208A91305120700FA08A91307120700FC0000000700000003000000070000000212073CFA0000000208A91307120700FC00000007000000030000000700000001120701020000000108A91305120700FA08A91307120700FC08A912FF12073D0804548A011386710000000000045489F900000007000000050000000500000004000000070000000312073CFC0000000308A912FF12073D0804548A011386710000000000045489F900000007138671020000000104548A05000000081386ACFA000000020CFD9C070F34D0FC0000000500000003000000071386AD00045489F900000007138671020000000104548A05138670FA0CFD9C070000000800000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030000000700000000000000041207010800000004000000070000000212073CFA0000000208A91307120700FC08A912FF12073D0804548A011386710000000000045489F90000000713867102000000010CFD9C050000000A0000000A1386AD00045489F90000000713867102000000010CFD9C050000000A0000000A00000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D0804548A011386710000000000045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FA000000070F875105000000020C9A86FC000000070F875107000000030000000700000004000000071386AD00045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FA000000070F87510500000002000000070000000400000007000000000000000412070108000000040000000712073D0008A912F912073D0208A91305120700FA08A91307120700FC0000000500000003000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000308A912FF12073D080CFD9C010F34D100000000000000000700000007000000040000000700000001120701020000000108A91305120700FA08A91307120700FC08A912FF12073D080000000500000004000000070000000312073CFC0000000308A912FF12073D080CFD9C010F34D10000000000045489F900000007138671020000000104548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C0700000007000000070F350D00045489F91386AD0204548A05000000070000000700000001138671020000000104548A05138670FA0CFD9C070F34D0FC000000050000000300000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030000000700000000000000041207010800000004000000070000000212073CFA0000000208A91307120700FC08A912FF12073D080CFD9C010F34D10000000000045489F90000000713867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020000000A0F350D00045489F91386AD020CFD9C0500000007000000070000000113867102000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A070000000A0000000700000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D080CFD9C010F34D10000000000045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FA000000070F875105000000020000000700000004000000070F350D00045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC0000000700000003000000070000000113867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8751010000000000000007000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A87000F8751010000000000000007000000070000000400000007000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003000000060F878D010C9A86FA000000070F875105000000020000000700000000000000040F34D1080000000400000007000000000000000412070108000000040000000700000000"
theorem small_9421961_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421961_right_root small_9421961_right_fuel small_9421961_right_count small_9421961_right_encoded = true := by
  decide +kernel
theorem small_9421961_right_covered : CoveredBy scale carrier boxes small_9421961_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421961_right_root small_9421961_right_fuel small_9421961_right_count small_9421961_right_encoded small_9421961_right_checked

theorem cover_9421961 : CoveredBy scale carrier boxes root_9421961 := by
  apply coveredBy_split_literal root_9421961 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421962 small_9421961_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421962
  · exact small_9421961_right_covered
#print axioms cover_9421961

def root_9421956 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421956_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421956_right_fuel : Nat := 1
def small_9421956_right_count : Nat := 1
def small_9421956_right_encoded : String := "00000003"
theorem small_9421956_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421956_right_root small_9421956_right_fuel small_9421956_right_count small_9421956_right_encoded = true := by
  decide +kernel
theorem small_9421956_right_covered : CoveredBy scale carrier boxes small_9421956_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421956_right_root small_9421956_right_fuel small_9421956_right_count small_9421956_right_encoded small_9421956_right_checked

theorem cover_9421956 : CoveredBy scale carrier boxes root_9421956 := by
  apply coveredBy_split_literal root_9421956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421961 small_9421956_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421961
  · exact small_9421956_right_covered
#print axioms cover_9421956

def root_9427800 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9427800 : CoveredBy scale carrier boxes root_9427800 := by
  apply coveredBy_split_literal root_9427800 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3527.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3528.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3527.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3528.covered
#print axioms cover_9427800

def root_9427795 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427795_right_fuel : Nat := 1
def small_9427795_right_count : Nat := 1
def small_9427795_right_encoded : String := "00000003"
theorem small_9427795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427795_right_root small_9427795_right_fuel small_9427795_right_count small_9427795_right_encoded = true := by
  decide +kernel
theorem small_9427795_right_covered : CoveredBy scale carrier boxes small_9427795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427795_right_root small_9427795_right_fuel small_9427795_right_count small_9427795_right_encoded small_9427795_right_checked

theorem cover_9427795 : CoveredBy scale carrier boxes root_9427795 := by
  apply coveredBy_split_literal root_9427795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427800 small_9427795_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427800
  · exact small_9427795_right_covered
#print axioms cover_9427795

def root_9427794 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427794_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427794_right_fuel : Nat := 19
def small_9427794_right_count : Nat := 189
def small_9427794_right_encoded : String := "135D45070000000305000108135D44FF0CFD9C010F34D10000000000045489F90000000913867102000000010CFD9C05000000090F350CFA000000020C9A86FA000000090F87510500000002028000FC13D7ED07028001080000000913D7ECFF000000040AD357810000000910D13D00022A45790000000600000008000000000000000313D7B10700000003028001080000000913D7ECFF000000040AD3578100000008000000080F350D00045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05028000FC00000006000000060000000200000006000000000000000113867102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020C9A87000000000A0F878D010C9A86FA0000000A0F875105000000020000000A000000000000000000000004135D80FF000000040CFD9C010F34D10000000000045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D05028000FC000000060000000600000002000000060000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A86FA0F878D05028000FC13D7ED070780010800000008000000080000000300000008000000020F87510500000002028000FC13D7ED0707800108128A40FF0AD3578110D10100000000000000000810D13D00000000060000000000000004000000060000000313D7B10700000003000000050F350D00045489F91386AD020CFD9C050F34D0FA0C9A8700000000060F878D01028000FC000000060000000600000000000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05000000060000000200000006000000000000000113867102000000010CFD9C050F34D0FA0C9A8700000000060F878D010000000800000000000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05028000FC000000060000000600000002000000060000000000000000"
theorem small_9427794_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427794_right_root small_9427794_right_fuel small_9427794_right_count small_9427794_right_encoded = true := by
  decide +kernel
theorem small_9427794_right_covered : CoveredBy scale carrier boxes small_9427794_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427794_right_root small_9427794_right_fuel small_9427794_right_count small_9427794_right_encoded small_9427794_right_checked

theorem cover_9427794 : CoveredBy scale carrier boxes root_9427794 := by
  apply coveredBy_split_literal root_9427794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427795 small_9427794_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427795
  · exact small_9427794_right_covered
#print axioms cover_9427794

def root_9427788 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427788_left_fuel : Nat := 1
def small_9427788_left_count : Nat := 1
def small_9427788_left_encoded : String := "00000002"
theorem small_9427788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427788_left_root small_9427788_left_fuel small_9427788_left_count small_9427788_left_encoded = true := by
  decide +kernel
theorem small_9427788_left_covered : CoveredBy scale carrier boxes small_9427788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427788_left_root small_9427788_left_fuel small_9427788_left_count small_9427788_left_encoded small_9427788_left_checked

theorem cover_9427788 : CoveredBy scale carrier boxes root_9427788 := by
  apply coveredBy_split_literal root_9427788 small_9427788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427794 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9427788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427794
#print axioms cover_9427788

def root_9427680 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427680_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427680_left_fuel : Nat := 14
def small_9427680_left_count : Nat := 51
def small_9427680_left_encoded : String := "120700FA050000FC135D81070500010800000005135D80FF000000040CFD9C010F34D10000000000000000090F350D00045489F900000005138671020000000104548A05000000051386ACFA000000020C9A8700000000050F878D0100000008000000000000000000000003135D4507000000030500010800000009135D80FF000000040CFD9C010F34D10000000000000000080F350D00045489F91386AD0204548A05000000061386ACFA000000020C9A8700000000060000000900000001000000080000000000000002"
theorem small_9427680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427680_left_root small_9427680_left_fuel small_9427680_left_count small_9427680_left_encoded = true := by
  decide +kernel
theorem small_9427680_left_covered : CoveredBy scale carrier boxes small_9427680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427680_left_root small_9427680_left_fuel small_9427680_left_count small_9427680_left_encoded small_9427680_left_checked

theorem cover_9427680 : CoveredBy scale carrier boxes root_9427680 := by
  apply coveredBy_split_literal root_9427680 small_9427680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427788 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9427680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427788
#print axioms cover_9427680

def root_9427674 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427674_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427674_left_fuel : Nat := 1
def small_9427674_left_count : Nat := 1
def small_9427674_left_encoded : String := "00000001"
theorem small_9427674_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427674_left_root small_9427674_left_fuel small_9427674_left_count small_9427674_left_encoded = true := by
  decide +kernel
theorem small_9427674_left_covered : CoveredBy scale carrier boxes small_9427674_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427674_left_root small_9427674_left_fuel small_9427674_left_count small_9427674_left_encoded small_9427674_left_checked

theorem cover_9427674 : CoveredBy scale carrier boxes root_9427674 := by
  apply coveredBy_split_literal root_9427674 small_9427674_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427680 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9427674_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427680
#print axioms cover_9427674

def root_9427066 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427066_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427066_left_fuel : Nat := 20
def small_9427066_left_count : Nat := 287
def small_9427066_left_encoded : String := "12073D0208A91305120700FA050000FC00000005135D4507000000030500010800000005135D80FF000000040CFD9C010F34D10000000000000000090F350D000CFD9BF9000000050F34D1020000000104548A05000000051386ACFA000000020C9A87000000000500000009000000000000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA000000050F87510500000002078000FC00000005128A410700000003028001080000000513D7ECFF00000004000000060F350D000CFD9BF9000000050F34D102000000010CFD9C05000000050F350CFA000000020C9A8700000000050F878D010C9A86FA000000050F87510500000002078000FC00000005128A41070000000300000006000000000000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020C9A86FA000000070F87510500000002000000070F350D000CFD9BF90F350D020CFD9C050F34D0FA000000050000000200000007000000010F34D102000000010CFD9C050F34D0FA0C9A87000000000500000007000000020F350CFA000000020C9A87000F875101000000000C9A86FA00000007000000060F878D010C9A86FA000000070F8751050000000200000006000000000000000000000003135D45070000000305000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020C9A87020F8750F900000005000000010F878CF9000000010C9A86FA0000000900000006000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA000000090F87510500000002028000FC00000006000000060F350D000CFD9BF90F350D020CFD9C05000000050F350CFA000000020C9A8700000000050F878D010C9A8702000000050F878CF9000000010C9A86FA000000050000000600000000000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05000000060000000200000006000000000000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D0FA000000070000000200000007000000010F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D05028000FC000000060000000600000002000000060F350D000CFD9BF90F350D020CFD9C050F34D0FA00000007000000020F350CFA000000020C9A87000F875101000000000C9A87020F8750F900000007000000010000000600000007000000010F34D102000000010CFD9C050F34D0FA0C9A8700000000060F878D01028000FC000000060000000600000000000000020F350CFA000000020C9A8700000000060F878D010C9A86FA0F878D05000000060000000200000006000000000000000000000001"
theorem small_9427066_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427066_left_root small_9427066_left_fuel small_9427066_left_count small_9427066_left_encoded = true := by
  decide +kernel
theorem small_9427066_left_covered : CoveredBy scale carrier boxes small_9427066_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427066_left_root small_9427066_left_fuel small_9427066_left_count small_9427066_left_encoded small_9427066_left_checked

theorem cover_9427066 : CoveredBy scale carrier boxes root_9427066 := by
  apply coveredBy_split_literal root_9427066 small_9427066_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427674 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9427066_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427674
#print axioms cover_9427066

def root_9427061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427061_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9427061_right_fuel : Nat := 1
def small_9427061_right_count : Nat := 1
def small_9427061_right_encoded : String := "00000000"
theorem small_9427061_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9427061_right_root small_9427061_right_fuel small_9427061_right_count small_9427061_right_encoded = true := by
  decide +kernel
theorem small_9427061_right_covered : CoveredBy scale carrier boxes small_9427061_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9427061_right_root small_9427061_right_fuel small_9427061_right_count small_9427061_right_encoded small_9427061_right_checked

theorem cover_9427061 : CoveredBy scale carrier boxes root_9427061 := by
  apply coveredBy_split_literal root_9427061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427066 small_9427061_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427066
  · exact small_9427061_right_covered
#print axioms cover_9427061

def root_9426519 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426519_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426519_left_fuel : Nat := 25
def small_9426519_left_count : Nat := 253
def small_9426519_left_encoded : String := "120701000000000008A912F912073D0208A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF04548A01000000091386AD000CFD9BF9000000090F34D10200000001000000090000000000000004135D80FF0000000404548A0113867100000000000CFD9BF9000000070F34D10200000001000000091386AD000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA0000000700000002000000070000000000000003135D45070000000305000108135D44FF04548A01000000091386AD000CFD9BF9000000090F34D10200000001000000090000000000000004135D80FF0000000404548A0113867100000000000CFD9BF9000000090F34D10200000001000000091386AD000CFD9BF90F350D020CFD9C050F34D0FA000000070000000200000007000000010F34D102000000010CFD9C05000000090F350CFA000000020C9A86FA00000009000000060000000000000001120701020000000108A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF0000000900000004135D80FF0000000404548A011386710000000000045489F90000000913867102000000010CFD9C05000000080F350CFA000000020C9A86FA000000090F87510500000002078000FC128A7D070780010800000009128A7CFF00000004022A4581000000080000000800000003000000081386AD00045489F91386AD020CFD9C050F34D0FA00000009000000020F350CFA000000020C9A86FA0F878D0500000009000000020F87510500000002078000FC128A7D070000000A00000003128A4107000000030780010800000009128A7CFF00000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A86FA0F878D05078000FC128A7D070780010800000008128A7CFF00000004000000080000000300000008000000020F87510500000002078000FC128A7D0707800108128A40FF067ECE810000000912EA9500022A457900000009000000080000000000000004128A7CFF00000004067ECE8112EA590000000000022A4579000000070000000812EA9500022A457900000007000000080000000000000003128A41070000000307800108128A40FF0000000900000004128A7CFF00000004067ECE8100000008000000080000000000000003135D4507000000030500010800000009135D80FF0000000404548A011386710000000000000000091386AD00045489F91386AD020CFD9C05000000090F350CFA000000020C9A86FA000000090F87510500000002028000FC13D7ED0707800108000000090000000600000003000000060000000113867102000000010000000800000000"
theorem small_9426519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426519_left_root small_9426519_left_fuel small_9426519_left_count small_9426519_left_encoded = true := by
  decide +kernel
theorem small_9426519_left_covered : CoveredBy scale carrier boxes small_9426519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426519_left_root small_9426519_left_fuel small_9426519_left_count small_9426519_left_encoded small_9426519_left_checked

theorem cover_9426519 : CoveredBy scale carrier boxes root_9426519 := by
  apply coveredBy_split_literal root_9426519 small_9426519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9427061 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9426519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9427061
#print axioms cover_9426519

def root_9426514 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426514_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426514_right_fuel : Nat := 1
def small_9426514_right_count : Nat := 1
def small_9426514_right_encoded : String := "00000004"
theorem small_9426514_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426514_right_root small_9426514_right_fuel small_9426514_right_count small_9426514_right_encoded = true := by
  decide +kernel
theorem small_9426514_right_covered : CoveredBy scale carrier boxes small_9426514_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426514_right_root small_9426514_right_fuel small_9426514_right_count small_9426514_right_encoded small_9426514_right_checked

theorem cover_9426514 : CoveredBy scale carrier boxes root_9426514 := by
  apply coveredBy_split_literal root_9426514 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9426519 small_9426514_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9426519
  · exact small_9426514_right_covered
#print axioms cover_9426514

def root_9426513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9426513 : CoveredBy scale carrier boxes root_9426513 := by
  apply coveredBy_split_literal root_9426513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9426514 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3529.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9426514
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3529.covered
#print axioms cover_9426513

def root_9426507 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426507_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9426507_left_fuel : Nat := 1
def small_9426507_left_count : Nat := 1
def small_9426507_left_encoded : String := "00000003"
theorem small_9426507_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9426507_left_root small_9426507_left_fuel small_9426507_left_count small_9426507_left_encoded = true := by
  decide +kernel
theorem small_9426507_left_covered : CoveredBy scale carrier boxes small_9426507_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9426507_left_root small_9426507_left_fuel small_9426507_left_count small_9426507_left_encoded small_9426507_left_checked

theorem cover_9426507 : CoveredBy scale carrier boxes root_9426507 := by
  apply coveredBy_split_literal root_9426507 small_9426507_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9426513 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9426507_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9426513
#print axioms cover_9426507

def root_9421955 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9421955 : CoveredBy scale carrier boxes root_9421955 := by
  apply coveredBy_split_literal root_9421955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9426507 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421956
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9426507
#print axioms cover_9421955

def root_9421950 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421950_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9421950_right_fuel : Nat := 1
def small_9421950_right_count : Nat := 1
def small_9421950_right_encoded : String := "00000002"
theorem small_9421950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9421950_right_root small_9421950_right_fuel small_9421950_right_count small_9421950_right_encoded = true := by
  decide +kernel
theorem small_9421950_right_covered : CoveredBy scale carrier boxes small_9421950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9421950_right_root small_9421950_right_fuel small_9421950_right_count small_9421950_right_encoded small_9421950_right_checked

theorem cover_9421950 : CoveredBy scale carrier boxes root_9421950 := by
  apply coveredBy_split_literal root_9421950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9421955 small_9421950_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9421955
  · exact small_9421950_right_covered
#print axioms cover_9421950

def root_9434854 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434854_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434854_left_fuel : Nat := 18
def small_9434854_left_count : Nat := 105
def small_9434854_left_encoded : String := "12073D0208A91307120700FC050000FA00000005135D45050000000205000108000000050000000A0000000312073CFC00000003050000FA135D810505000108135D44FF0CFD9C010F34D100000000000CFD9BF90000000A0000000A0F350D000CFD9BF9000000050F34D102000000010CFD9C07000000050F350CFC000000030C9A8700000000050F878D010C9A86FC000000050F8751070000000300000008000000000000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF90F350D020CFD9C070000000A00000007000000010F34D102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87000F87510100000000000000080F878D010000000A000000000000000000000002135D45050000000205000108135D44FF0CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000080F34D10200000001000000080000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000080F34D102000000010CFD9C0700000008000000080000000000000001"
theorem small_9434854_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434854_left_root small_9434854_left_fuel small_9434854_left_count small_9434854_left_encoded = true := by
  decide +kernel
theorem small_9434854_left_covered : CoveredBy scale carrier boxes small_9434854_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434854_left_root small_9434854_left_fuel small_9434854_left_count small_9434854_left_encoded small_9434854_left_checked

theorem cover_9434854 : CoveredBy scale carrier boxes root_9434854 := by
  apply coveredBy_split_literal root_9434854 small_9434854_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3530.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9434854_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3530.covered
#print axioms cover_9434854

def root_9434849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434849_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434849_right_fuel : Nat := 1
def small_9434849_right_count : Nat := 1
def small_9434849_right_encoded : String := "00000000"
theorem small_9434849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434849_right_root small_9434849_right_fuel small_9434849_right_count small_9434849_right_encoded = true := by
  decide +kernel
theorem small_9434849_right_covered : CoveredBy scale carrier boxes small_9434849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434849_right_root small_9434849_right_fuel small_9434849_right_count small_9434849_right_encoded small_9434849_right_checked

theorem cover_9434849 : CoveredBy scale carrier boxes root_9434849 := by
  apply coveredBy_split_literal root_9434849 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434854 small_9434849_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434854
  · exact small_9434849_right_covered
#print axioms cover_9434849

def root_9434771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434771_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434771_left_fuel : Nat := 14
def small_9434771_left_count : Nat := 37
def small_9434771_left_encoded : String := "120701000000000008A912F912073D0208A913070000000A0000000A00000001120701020000000108A913070000000A12073CFC00000003050000FA135D810505000108135D44FF04548A010000000A0000000A00000004135D80FF0000000404548A0113867100000000000000000A1386AD00045489F90000000A13867102000000010000000A00000000000000020000000A"
theorem small_9434771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434771_left_root small_9434771_left_fuel small_9434771_left_count small_9434771_left_encoded = true := by
  decide +kernel
theorem small_9434771_left_covered : CoveredBy scale carrier boxes small_9434771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434771_left_root small_9434771_left_fuel small_9434771_left_count small_9434771_left_encoded small_9434771_left_checked

theorem cover_9434771 : CoveredBy scale carrier boxes root_9434771 := by
  apply coveredBy_split_literal root_9434771 small_9434771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434849 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9434771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434849
#print axioms cover_9434771

def root_9434766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434766_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434766_right_fuel : Nat := 1
def small_9434766_right_count : Nat := 1
def small_9434766_right_encoded : String := "00000004"
theorem small_9434766_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434766_right_root small_9434766_right_fuel small_9434766_right_count small_9434766_right_encoded = true := by
  decide +kernel
theorem small_9434766_right_covered : CoveredBy scale carrier boxes small_9434766_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434766_right_root small_9434766_right_fuel small_9434766_right_count small_9434766_right_encoded small_9434766_right_checked

theorem cover_9434766 : CoveredBy scale carrier boxes root_9434766 := by
  apply coveredBy_split_literal root_9434766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434771 small_9434766_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434771
  · exact small_9434766_right_covered
#print axioms cover_9434766

def root_9434765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434765_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434765_right_fuel : Nat := 28
def small_9434765_right_count : Nat := 267
def small_9434765_right_encoded : String := "115224FF0000000408A91301120701000000000008A912F912073D0208A913070000000A12073CFC000000030000000A00000001120701020000000108A913070000000A12073CFC0000000308A912FF12073D08050000FA135D810504548A011386710000000000045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A1386AD00045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A0000000000000002135D4505000000020000000A000000041207010800000004050000FA000000070000000512073D0008A912F912073D0208A91307120700FC0000000A0000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9C010F34D10000000000000000070000000700000002135D4505000000020000000A000000040000000A00000001120701020000000108A91307120700FC08A912FF12073D080000000A000000040000000A0000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9C010F34D10000000000045489F91386AD020CFD9C070000000A000000070000000113867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A87080F8750FF078000FA000000070000000A0000000400000007000000040F34D10800000004000000050F350D00045489F91386AD020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FC00000007000000060000000700000004000000070000000113867102000000010CFD9C070F34D0FC0CFD9BFF0F350D080C9A87000F875101000000000C9A870800000009000000070000000A000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FC0F878D070C9A87080000000900000007000000030F87510700000003000000060F878D010C9A86FC0F878D070C9A87080F8750FF078000FA000000070000000A0000000400000007000000030F875107000000030C9A87080F8750FF078000FA00000007128A41050000000200000005000000040000000700000000000000040F34D10800000004000000070000000000000002135D4505000000020CFD9C010F34D100000000000000000A0F350D00045489F91386AD020CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A00000004000000090000000113867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A8700000000090F878D010000000A00000000000000040000000900000000000000041207010800000004050000FA000000070000000900000000"
theorem small_9434765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434765_right_root small_9434765_right_fuel small_9434765_right_count small_9434765_right_encoded = true := by
  decide +kernel
theorem small_9434765_right_covered : CoveredBy scale carrier boxes small_9434765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434765_right_root small_9434765_right_fuel small_9434765_right_count small_9434765_right_encoded small_9434765_right_checked

theorem cover_9434765 : CoveredBy scale carrier boxes root_9434765 := by
  apply coveredBy_split_literal root_9434765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434766 small_9434765_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434766
  · exact small_9434765_right_covered
#print axioms cover_9434765

def root_9434760 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434760_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9434760_right_fuel : Nat := 1
def small_9434760_right_count : Nat := 1
def small_9434760_right_encoded : String := "00000003"
theorem small_9434760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9434760_right_root small_9434760_right_fuel small_9434760_right_count small_9434760_right_encoded = true := by
  decide +kernel
theorem small_9434760_right_covered : CoveredBy scale carrier boxes small_9434760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9434760_right_root small_9434760_right_fuel small_9434760_right_count small_9434760_right_encoded small_9434760_right_checked

theorem cover_9434760 : CoveredBy scale carrier boxes root_9434760 := by
  apply coveredBy_split_literal root_9434760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9434765 small_9434760_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9434765
  · exact small_9434760_right_covered
#print axioms cover_9434760

def root_9443218 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443218_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443218_left_fuel : Nat := 19
def small_9443218_left_count : Nat := 179
def small_9443218_left_encoded : String := "13E201020DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC250703C00108000000080000000600000003000000060000000211FBE9050000000208C000FC00000008000000060E60150108C000FA11FC250508C000FC11FC250703C0010813A510FF033F67B913BC31020DAED8810E962500000000000000000A000000080000000113BBF502000000010DAED8810E96250000000000096000FA11AABD05096000FC0000000511AA81070000000300000009000000020000000A0E966100096000FA11AABD05096000FC0000000511AA8107000000030320010800000005000000060000000200000008000000000000000413A54CFF00000004033F67B913BC31020DAED8810E962500000000000000000A0E96610000000006000000000000000113BBF502000000010DAED8810E96250000000000096000FA11AABD05096000FC0000000A11AA81070000000300000006000000020000000A0E966100096000FA11AABD05000000060000000200000008000000000000000311FBE9070000000303C0010813A510FF033F67B90000000613BBF502000000010DAED8810E96250000000000096000FA11AABD05000000090000000211AA810500000002082000FC1246990703200108000000090000000600000003000000060E96610000000006000000000000000413A54CFF00000004000000060000000211FBE9050000000208C000FC11FC250703C0010813A510FF033F67B90000000813BBF50200000001000000080000000413A54CFF00000004033F67B90000000813BBF502000000010DAED88100000008000000080000000311FBE9070000000303C0010813A510FF033F67B90000000613BBF502000000010DAED8810E96250000000000082000FA12469905082000FC0000000812465D07000000030000000600000002000000080E96610000000008000000000000000413A54CFF00000004000000060000000000000001"
theorem small_9443218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9443218_left_root small_9443218_left_fuel small_9443218_left_count small_9443218_left_encoded = true := by
  decide +kernel
theorem small_9443218_left_covered : CoveredBy scale carrier boxes small_9443218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9443218_left_root small_9443218_left_fuel small_9443218_left_count small_9443218_left_encoded small_9443218_left_checked

theorem cover_9443218 : CoveredBy scale carrier boxes root_9443218 := by
  apply coveredBy_split_literal root_9443218 small_9443218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3532.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_9443218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3532.covered
#print axioms cover_9443218

def root_9443212 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443212_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9443212_left_fuel : Nat := 1
def small_9443212_left_count : Nat := 1
def small_9443212_left_encoded : String := "00000004"
theorem small_9443212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9443212_left_root small_9443212_left_fuel small_9443212_left_count small_9443212_left_encoded = true := by
  decide +kernel
theorem small_9443212_left_covered : CoveredBy scale carrier boxes small_9443212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9443212_left_root small_9443212_left_fuel small_9443212_left_count small_9443212_left_encoded small_9443212_left_checked

theorem cover_9443212 : CoveredBy scale carrier boxes root_9443212 := by
  apply coveredBy_split_literal root_9443212 small_9443212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9443218 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_9443212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9443218
#print axioms cover_9443212

def root_9442596 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442596_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442596_left_fuel : Nat := 20
def small_9442596_left_count : Nat := 291
def small_9442596_left_encoded : String := "13D7B0FF022A457913E201020DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC2507000000050000000311FBE907000000030140010813F5D8FF000000080000000413F614FF00000004033F67B90000000613BBF502000000010D412880000000060EFA4D0100000008000000000000000211FBE90500000002000000080E60150108C000FA11FC250508C000FC11FC2507014001080000000513F614FF00000004033F67B90000000513BBF502000000010DAED881000000050E96610000000005000000000000000311FBE907000000030140010813F5D8FF000000090000000413F614FF00000004033F67B913BC31020DAED8810E96250000000000000000090E96610000000006000000000000000113BBF502000000010DAED8810E96250000000000000000090E966100096000FA0000000911AA810500000002082000FC0000000812465D070000000300000006000000000000000211FBE9050000000208C000FC11FC25070140010800000008000000080000000311FBE907000000030140010813F5D8FF033F67B900000008000000070000000413F614FF00000004033F67B90000000813BBF502000000010DAED8810E96250000000000082000FA12469905082000FC000000080000000700000002000000070E9661000000000800000000000000000000000113E1C502000000010DE7CA000E5FD9010000000008C000FA11FC250508C000FC11FC25070140010813F5D8FF0115233900000005000000070000000413F614FF000000040115233913F895020D412880000000050EFA4D01096000FA0000000500000008000000000000000113F85902000000010D412880000000070EFA4D0100000007000000000000000311FBE90700000003014001080000000713F614FF000000040115233913F895020D412880000000070EFA4D01000000070000000000000001000000070000000211FBE9050000000208C000FC11FC2507014001080000000713F614FF0000000401152339000000080000000700000003000000070E60150108C000FA11FC250508C000FC11FC25070140010813F5D8FF0115233900000005000000070000000413F614FF000000040115233913F895020DAED8810E96250000000000096000FA0000000511AA810500000002096000FC00000005000000070E966100096000FA0000000511AA810500000002096000FC0000000500000007000000000000000113F85902000000010DAED8810E96250000000000096000FA00000009000000070E966100096000FA11AABD05000000070000000200000007000000000000000311FBE90700000003014001080000000713F614FF000000040115233913F895020DAED8810E96250000000000000000090E966100096000FA11AABD050000000900000002000000070000000000000001000000070000000211FBE9050000000208C000FC11FC2507014001080000000713F614FF000000040115233913F895020DAED8810E96250000000000082000FA12469905096000FC0000000A0000000700000002000000070E9661000000000800000000000000010000000700000003000000070000000000000004"
theorem small_9442596_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442596_left_root small_9442596_left_fuel small_9442596_left_count small_9442596_left_encoded = true := by
  decide +kernel
theorem small_9442596_left_covered : CoveredBy scale carrier boxes small_9442596_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442596_left_root small_9442596_left_fuel small_9442596_left_count small_9442596_left_encoded small_9442596_left_checked

theorem cover_9442596 : CoveredBy scale carrier boxes root_9442596 := by
  apply coveredBy_split_literal root_9442596 small_9442596_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9443212 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9442596_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9443212
#print axioms cover_9442596

def root_9442591 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442591_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9442591_right_fuel : Nat := 1
def small_9442591_right_count : Nat := 1
def small_9442591_right_encoded : String := "00000003"
theorem small_9442591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9442591_right_root small_9442591_right_fuel small_9442591_right_count small_9442591_right_encoded = true := by
  decide +kernel
theorem small_9442591_right_covered : CoveredBy scale carrier boxes small_9442591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9442591_right_root small_9442591_right_fuel small_9442591_right_count small_9442591_right_encoded small_9442591_right_checked

theorem cover_9442591 : CoveredBy scale carrier boxes root_9442591 := by
  apply coveredBy_split_literal root_9442591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.root_9442596 small_9442591_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225.cover_9442596
  · exact small_9442591_right_covered
#print axioms cover_9442591

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0225
