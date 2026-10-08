import TaoBundleAssembly0638
import TaoBundleAssembly0639
import TaoBundleAssembly0640
import TaoBundleChunkBatch0880
import TaoBundleChunkBatch0881
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641
def root_9387631 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387631_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387631_left_fuel : Nat := 27
def small_9387631_left_count : Nat := 345
def small_9387631_left_encoded : String := "12073CFE0000000405000100135D450100000000050000FA135D8105050000FC135D8107045489F91386AD020CFD9BFF000000050F34D0FE00000008000000040000000113867102000000010CFD9BFF0F350CFE000000040C9A86FE00000008000000080F34D0FE0280010013D7B10100000000078000FA128A7D05078000FC000000080000000A000000020000000813D7ED01078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE000000080000000400000003128A410700000003022A457900000008000000070000000200000008000000000000000400000003135D450700000003045489F91386AD020CFD9BFF00000008000000060000000113867102000000010CFD9BFF000000070F34D0FE000000070000000400000002135D450500000002050000FC00000008135D450700000003045489F90000000800000007135D8101050000FA135D8105050000FC135D8107045489F91386AD020CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000005000000040F34D0FE07800100128A410100000000078000FA128A7D05000000050000000200000008128A7D01078000FA128A7D0500000005000000020000000800000000000000040000000113867102000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800100128A410100000000078000FA128A7D05078000FC00000005000000070000000200000007128A7D01078000FA128A7D05078000FC00000005000000070000000200000007000000000F8750FF0780010000000007128A7D01078000FA128A7D05078000FC0000000500000007000000020000000700000000000000040F34D0FE07800100128A410100000000078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE0640010012FF71010000000008C000FA11FC250508C000FC0000000500000007000000020000000712FFAD0108C000FA11FC250508C000FC00000005000000070000000200000007000000000000000400000003128A410700000003022A457913E201020AD3577F0000000510D100FE0000000700000004000000010000000700000002128A410500000002078000FC128A7D07022A457900000008000000070000000300000007128A7D01078000FA128A7D05078000FC128A7D07022A45790000000513E1C502000000010AD3577F0000000510D100FE08C0010011FBE9010000000008C000FA11FC250500000005000000020000000711FC250100000009000000000000000400000003128A410700000003022A457913E201020AD3577F0000000510D100FE0000000700000004000000010000000700000002128A410500000002078000FC128A7D07022A457913E201020AD3577F0000000510D100FE000000070000000400000001000000070000000300000007000000000000000400000003135D450700000003045489F91386AD020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040780010000000007000000070F8750FF00000007000000040F34D0FE07800100128A410100000000078000FA128A7D05000000060000000200000007128A7D01078000FA128A7D0500000009000000020000000700000000000000040000000113867102000000010CFD9BFF000000070F34D0FE0780010000000007000000070000000400000002135D450500000002050000FC135D8107045489F91386AD02000000080000000113867102000000010CFD9BFF000000070F34D0FE0780010000000007000000070000000400000003135D450700000003045489F91386AD020CFD9BFF000000070F34D0FE0000000700000004000000010000000700000000"
theorem small_9387631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387631_left_root small_9387631_left_fuel small_9387631_left_count small_9387631_left_encoded = true := by
  decide +kernel
theorem small_9387631_left_covered : CoveredBy scale carrier boxes small_9387631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387631_left_root small_9387631_left_fuel small_9387631_left_count small_9387631_left_encoded small_9387631_left_checked

theorem cover_9387631 : CoveredBy scale carrier boxes root_9387631 := by
  apply coveredBy_split_literal root_9387631 small_9387631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0640.root_9388353 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9387631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0640.cover_9388353
#print axioms cover_9387631

def root_9387625 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387625_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9387625_left_fuel : Nat := 1
def small_9387625_left_count : Nat := 1
def small_9387625_left_encoded : String := "00000001"
theorem small_9387625_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9387625_left_root small_9387625_left_fuel small_9387625_left_count small_9387625_left_encoded = true := by
  decide +kernel
theorem small_9387625_left_covered : CoveredBy scale carrier boxes small_9387625_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9387625_left_root small_9387625_left_fuel small_9387625_left_count small_9387625_left_encoded small_9387625_left_checked

theorem cover_9387625 : CoveredBy scale carrier boxes root_9387625 := by
  apply coveredBy_split_literal root_9387625 small_9387625_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387631 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9387625_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387631
#print axioms cover_9387625

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
  apply coveredBy_split_literal root_9387371 small_9387371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387625 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9387371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387625
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
  apply coveredBy_split_literal root_9387365 small_9387365_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387371 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9387365_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387371
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
  apply coveredBy_split_literal root_9387364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387365 small_9387364_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387365
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
  apply coveredBy_split_literal root_9387358 small_9387358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387364 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9387358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387364
#print axioms cover_9387358

def root_9379740 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9379740 : CoveredBy scale carrier boxes root_9379740 := by
  apply coveredBy_split_literal root_9379740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.root_9379741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9387358 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0639.cover_9379741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9387358
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
  apply coveredBy_split_literal root_9379734 small_9379734_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9379740 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9379734_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9379740
#print axioms cover_9379734

def root_9374032 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9374032 : CoveredBy scale carrier boxes root_9374032 := by
  apply coveredBy_split_literal root_9374032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.root_9374033 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9379734 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0638.cover_9374033
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9379734
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
  apply coveredBy_split_literal root_9374026 small_9374026_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9374032 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9374026_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9374032
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
  apply coveredBy_split_literal root_9373868 small_9373868_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9374026 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9373868_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9374026
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
  apply coveredBy_split_literal root_9373862 small_9373862_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9373868 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9373862_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9373868
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
  apply coveredBy_split_literal root_9404216 small_9404216_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9404222 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9404216_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9404222
#print axioms cover_9404216

def root_9401374 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9401374 : CoveredBy scale carrier boxes root_9401374 := by
  apply coveredBy_split_literal root_9401374 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3519.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9404216 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3519.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9404216
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
  apply coveredBy_split_literal root_9401368 small_9401368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9401374 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9401368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9401374
#print axioms cover_9401368

def root_9400094 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9400094 : CoveredBy scale carrier boxes root_9400094 := by
  apply coveredBy_split_literal root_9400094 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3518.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9401368 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3518.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9401368
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
  apply coveredBy_split_literal root_9400088 small_9400088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9400094 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9400088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9400094
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
  apply coveredBy_split_literal root_9399882 small_9399882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9400088 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9399882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9400088
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
  apply coveredBy_split_literal root_9399877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9399882 small_9399877_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9399882
  · exact small_9399877_right_covered
#print axioms cover_9399877

def root_9373861 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9373861 : CoveredBy scale carrier boxes root_9373861 := by
  apply coveredBy_split_literal root_9373861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9373862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9399877 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9373862
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9399877
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
  apply coveredBy_split_literal root_9410143 small_9410143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9410149 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9410143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9410149
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
  apply coveredBy_split_literal root_9409713 small_9409713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9410143 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9409713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9410143
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
  apply coveredBy_split_literal root_9409707 small_9409707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9409713 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9409707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9409713
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
  apply coveredBy_split_literal root_9414929 small_9414929_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.root_9414935 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9414929_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641.cover_9414935
#print axioms cover_9414929

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0641
