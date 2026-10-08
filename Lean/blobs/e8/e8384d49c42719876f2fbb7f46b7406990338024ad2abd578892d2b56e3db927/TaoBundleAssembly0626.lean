import TaoBundleAssembly0625
import TaoBundleChunkBatch0858
import TaoBundleChunkBatch0859
import TaoBundleChunkBatch0860
import TaoBundleChunkBatch0861
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626
def root_9165213 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165213_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165213_left_fuel : Nat := 22
def small_9165213_left_count : Nat := 215
def small_9165213_left_encoded : String := "115225070A0001081151E8FF08A912F912073D0208A91307120700FC05000100135D450100000000050000FA00000005000000060000000A0000000312073CFC0000000305000100135D450100000000050000FA0000000500000006135D8101050000FA135D80FB000000020500010800000005135D80FF0000000400000006000000060000000000000001120701020000000108A91307120700FC00000006000000030000000600000004115224FF0000000408A912F912073D0208A91307120700FC08A912FF12073D0805000100135D450100000000050000FA135D80FB000000020CFD9BF9000000070000000500000006135D8101050000FA135D80FB000000020CFD9BF9000000070F34D1020000000100000006135D44FB000000060000000200000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D0805000100135D450100000000050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D0FC000000050000000300000005000000010F34D102000000010CFD9C070000000600000006135D44FB0CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF000000080F34D108000000040C9A87020F8750F900000008000000010F878CF90000000100000006000000010F34D102000000010000000600000002135D8101050000FA135D80FB000000020CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0F350D0800000006000000040F34D1080000000400000007000000010F34D1020000000100000006135D44FB0CFD9BF90F350D020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9BFF0000000600000006000000010F34D1020000000100000006000000020000000000000004120701080000000405000100135D450100000000050000FA00000007135D44FB0CFD9BF9000000070F34D102000000010000000700000002135D8101050000FA00000007135D44FB0CFD9BF9000000070F34D1020000000100000006000000020000000000000001120701020000000108A91307120700FC000000060000000312073CFC0000000308A912FF00000006120701080000000405000100135D450100000000050000FA00000006000000060000000600000003"
theorem small_9165213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165213_left_root small_9165213_left_fuel small_9165213_left_count small_9165213_left_encoded = true := by
  decide +kernel
theorem small_9165213_left_covered : CoveredBy scale carrier boxes small_9165213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165213_left_root small_9165213_left_fuel small_9165213_left_count small_9165213_left_encoded small_9165213_left_checked

theorem cover_9165213 : CoveredBy scale carrier boxes root_9165213 := by
  apply coveredBy_split_literal root_9165213 small_9165213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0625.root_9165681 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9165213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0625.cover_9165681
#print axioms cover_9165213

def root_9165208 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165208_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9165208_right_fuel : Nat := 1
def small_9165208_right_count : Nat := 1
def small_9165208_right_encoded : String := "00000002"
theorem small_9165208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9165208_right_root small_9165208_right_fuel small_9165208_right_count small_9165208_right_encoded = true := by
  decide +kernel
theorem small_9165208_right_covered : CoveredBy scale carrier boxes small_9165208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9165208_right_root small_9165208_right_fuel small_9165208_right_count small_9165208_right_encoded small_9165208_right_checked

theorem cover_9165208 : CoveredBy scale carrier boxes root_9165208 := by
  apply coveredBy_split_literal root_9165208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9165213 small_9165208_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9165213
  · exact small_9165208_right_covered
#print axioms cover_9165208

def root_9163704 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9163704 : CoveredBy scale carrier boxes root_9163704 := by
  apply coveredBy_split_literal root_9163704 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3430.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9165208 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3430.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9165208
#print axioms cover_9163704

def root_9163698 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9163698_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9163698_left_fuel : Nat := 1
def small_9163698_left_count : Nat := 1
def small_9163698_left_encoded : String := "00000001"
theorem small_9163698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9163698_left_root small_9163698_left_fuel small_9163698_left_count small_9163698_left_encoded = true := by
  decide +kernel
theorem small_9163698_left_covered : CoveredBy scale carrier boxes small_9163698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9163698_left_root small_9163698_left_fuel small_9163698_left_count small_9163698_left_encoded small_9163698_left_checked

theorem cover_9163698 : CoveredBy scale carrier boxes root_9163698 := by
  apply coveredBy_split_literal root_9163698 small_9163698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9163704 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9163698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9163704
#print axioms cover_9163698

def root_9162948 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162948_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162948_left_fuel : Nat := 26
def small_9162948_left_count : Nat := 353
def small_9162948_left_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA0000000208A91307120700FC0000000500000003000000050000000500000004115224FF0000000408A912FB12073CFA0000000208A91307120700FC08A912FF12073D080000000500000004000000050000000312073CFC0000000308A912FF12073D08000000050000000400000005120700FA0000000500000002000000031151E907000000030A00010800000005115224FF0000000408A912FB12073CFA0000000208A912FF12073D080500010000000005135D81010500010200000005135D80F900000001050000FC00000005135D4507000000030CFD9BFB0F350CFA000000020CFD9BFF0F350D0800000005000000040F34D108000000040C9A86FA000000050F8750FB00000007000000020F34D0FA000000050000000200000000000000041207010800000004050001000000000500000007120700FA00000005000000021151E8FB0A0000FC115225070A0001081151E8FF08A913070000000A0000000800000004115224FF0000000408A91307120700FC08A912FF12073D0805000100135D45010000000005000102000000050000000A135D810105000102135D44F9050000FA00000007135D44FB04548A070000000A000000080000000200000001135D80F900000001050000FA000000070000000A00000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D0805000100135D4501000000000500010200000005135D80F900000001050000FA0000000500000008135D810105000102135D44F9050000FA135D80FB00000002000000050000000800000001135D80F900000001050000FA135D80FB000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D08000000050000000400000005135D44FB0CFD9C070000000A00000008000000020000000000000004120701080000000405000100135D450100000000050001020000000500000007135D810105000102135D44F900000007000000010000000700000000000000031151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D0805000100135D4501000000000500010200000008135D80F900000001050000FA135D80FB00000002050000FC00000005135D4507000000030000000800000008135D810105000102135D44F9050000FA135D80FB00000002050000FC00000005135D450700000003000000080000000800000001135D80F900000001050000FA135D80FB00000002050000FC135D81070CFD9BFF000000080F34D1080000000407800100000000050000000700000003135D4507000000030CFD9BFF000000080F34D1080000000407800100128A41010000000007800102128A40F90000000800000001128A7CF900000001078000FA128A7CFB000000020000000700000008128A7D0107800102128A40F90000000A00000001128A7CF900000001078000FA000000070000000A00000000135D44FB050000FC00000008135D45070000000300000008000000020000000000000004120701080000000405000100135D4501000000000500010200000009135D80F900000001050000FA135D80FB00000002050000FC0000000500000009135D44FB050000FC135D8107045489FF0000000800000007000000030000000900000002135D810105000102135D44F9050000FA135D80FB00000002050000FC0000000500000009135D44FB050000FC135D81070000000900000003000000090000000200000001135D80F900000001050000FA135D80FB00000002050000FC00000007135D45070000000300000007135D44FB050000FC135D8107045489FF0000000A00000007000000030000000A00000002000000000000000200000001"
theorem small_9162948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9162948_left_root small_9162948_left_fuel small_9162948_left_count small_9162948_left_encoded = true := by
  decide +kernel
theorem small_9162948_left_covered : CoveredBy scale carrier boxes small_9162948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9162948_left_root small_9162948_left_fuel small_9162948_left_count small_9162948_left_encoded small_9162948_left_checked

theorem cover_9162948 : CoveredBy scale carrier boxes root_9162948 := by
  apply coveredBy_split_literal root_9162948 small_9162948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9163698 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9162948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9163698
#print axioms cover_9162948

def root_9162942 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162942_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9162942_left_fuel : Nat := 1
def small_9162942_left_count : Nat := 1
def small_9162942_left_encoded : String := "00000000"
theorem small_9162942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9162942_left_root small_9162942_left_fuel small_9162942_left_count small_9162942_left_encoded = true := by
  decide +kernel
theorem small_9162942_left_covered : CoveredBy scale carrier boxes small_9162942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9162942_left_root small_9162942_left_fuel small_9162942_left_count small_9162942_left_encoded small_9162942_left_checked

theorem cover_9162942 : CoveredBy scale carrier boxes root_9162942 := by
  apply coveredBy_split_literal root_9162942 small_9162942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9162948 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9162942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9162948
#print axioms cover_9162942

def root_9169146 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9169146 : CoveredBy scale carrier boxes root_9169146 := by
  apply coveredBy_split_literal root_9169146 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3432.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3433.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3432.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3433.covered
#print axioms cover_9169146

def root_9169141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169141_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169141_right_fuel : Nat := 1
def small_9169141_right_count : Nat := 1
def small_9169141_right_encoded : String := "00000001"
theorem small_9169141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9169141_right_root small_9169141_right_fuel small_9169141_right_count small_9169141_right_encoded = true := by
  decide +kernel
theorem small_9169141_right_covered : CoveredBy scale carrier boxes small_9169141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9169141_right_root small_9169141_right_fuel small_9169141_right_count small_9169141_right_encoded small_9169141_right_checked

theorem cover_9169141 : CoveredBy scale carrier boxes root_9169141 := by
  apply coveredBy_split_literal root_9169141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9169146 small_9169141_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9169146
  · exact small_9169141_right_covered
#print axioms cover_9169141

def root_9172960 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9172960 : CoveredBy scale carrier boxes root_9172960 := by
  apply coveredBy_split_literal root_9172960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3434.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3435.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3434.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3435.covered
#print axioms cover_9172960

def root_9172954 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9172954_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9172954_left_fuel : Nat := 1
def small_9172954_left_count : Nat := 1
def small_9172954_left_encoded : String := "00000001"
theorem small_9172954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9172954_left_root small_9172954_left_fuel small_9172954_left_count small_9172954_left_encoded = true := by
  decide +kernel
theorem small_9172954_left_covered : CoveredBy scale carrier boxes small_9172954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9172954_left_root small_9172954_left_fuel small_9172954_left_count small_9172954_left_encoded small_9172954_left_checked

theorem cover_9172954 : CoveredBy scale carrier boxes root_9172954 := by
  apply coveredBy_split_literal root_9172954 small_9172954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9172960 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9172954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9172960
#print axioms cover_9172954

def root_9169140 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9169140 : CoveredBy scale carrier boxes root_9169140 := by
  apply coveredBy_split_literal root_9169140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9169141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9172954 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9169141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9172954
#print axioms cover_9169140

def root_9169135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169135_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9169135_right_fuel : Nat := 1
def small_9169135_right_count : Nat := 1
def small_9169135_right_encoded : String := "00000000"
theorem small_9169135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9169135_right_root small_9169135_right_fuel small_9169135_right_count small_9169135_right_encoded = true := by
  decide +kernel
theorem small_9169135_right_covered : CoveredBy scale carrier boxes small_9169135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9169135_right_root small_9169135_right_fuel small_9169135_right_count small_9169135_right_encoded small_9169135_right_checked

theorem cover_9169135 : CoveredBy scale carrier boxes root_9169135 := by
  apply coveredBy_split_literal root_9169135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9169140 small_9169135_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9169140
  · exact small_9169135_right_covered
#print axioms cover_9169135

def root_9162941 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9162941 : CoveredBy scale carrier boxes root_9162941 := by
  apply coveredBy_split_literal root_9162941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9162942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9169135 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9162942
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9169135
#print axioms cover_9162941

def root_9162940 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9162940 : CoveredBy scale carrier boxes root_9162940 := by
  apply coveredBy_split_literal root_9162940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9162941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3436.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9162941
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3436.covered
#print axioms cover_9162940

def root_9160796 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9160796 : CoveredBy scale carrier boxes root_9160796 := by
  apply coveredBy_split_literal root_9160796 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3429.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9162940 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3429.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9162940
#print axioms cover_9160796

def root_9151630 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151630 : CoveredBy scale carrier boxes root_9151630 := by
  apply coveredBy_split_literal root_9151630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0625.root_9151631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9160796 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0625.cover_9151631
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9160796
#print axioms cover_9151630

def root_9179631 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179631 : CoveredBy scale carrier boxes root_9179631 := by
  apply coveredBy_split_literal root_9179631 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3437.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3438.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3437.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3438.covered
#print axioms cover_9179631

def root_9179626 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179626_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179626_right_fuel : Nat := 1
def small_9179626_right_count : Nat := 1
def small_9179626_right_encoded : String := "00000001"
theorem small_9179626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9179626_right_root small_9179626_right_fuel small_9179626_right_count small_9179626_right_encoded = true := by
  decide +kernel
theorem small_9179626_right_covered : CoveredBy scale carrier boxes small_9179626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9179626_right_root small_9179626_right_fuel small_9179626_right_count small_9179626_right_encoded small_9179626_right_checked

theorem cover_9179626 : CoveredBy scale carrier boxes root_9179626 := by
  apply coveredBy_split_literal root_9179626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9179631 small_9179626_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9179631
  · exact small_9179626_right_covered
#print axioms cover_9179626

def root_9192433 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9192433 : CoveredBy scale carrier boxes root_9192433 := by
  apply coveredBy_split_literal root_9192433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3442.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3443.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3442.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3443.covered
#print axioms cover_9192433

def root_9192427 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9192427_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9192427_left_fuel : Nat := 1
def small_9192427_left_count : Nat := 1
def small_9192427_left_encoded : String := "00000003"
theorem small_9192427_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9192427_left_root small_9192427_left_fuel small_9192427_left_count small_9192427_left_encoded = true := by
  decide +kernel
theorem small_9192427_left_covered : CoveredBy scale carrier boxes small_9192427_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9192427_left_root small_9192427_left_fuel small_9192427_left_count small_9192427_left_encoded small_9192427_left_checked

theorem cover_9192427 : CoveredBy scale carrier boxes root_9192427 := by
  apply coveredBy_split_literal root_9192427 small_9192427_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9192433 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9192427_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9192433
#print axioms cover_9192427

def root_9191479 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191479_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191479_left_fuel : Nat := 24
def small_9191479_left_count : Nat := 443
def small_9191479_left_encoded : String := "13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020B4D43FE10804CFF000000040640010012FF710100000000033F67BD0000000713BBF506000000030D4128820EFA10F90BF3E57A000000051008ECFB0BF3E57E000000051008ECFF000000060000000400000002000000010000000712FFAD01033F67BD13BC31060D4128820EFA10F90BF3E57A000000061008ECFB0BF3E57E000000070000000600000002000000010EFA4CF900000001000000070000000313BBF506000000030D4128820EFA10F90BF3E57A100928FB000000020BF3E57E100928FF0000000400000005000000061008ECFB0BF3E57E100928FF0000000406E0010012C7E501000000000000000712C8210102B4D69D0000000700000009000000001008ECFF000000060000000400000002000000010EFA4CF9000000010BF3E57A100928FB000000020BF3E57E100928FF0000000400000007000000081008ECFB0BF3E57E100928FF00000004000000071008ECFF06E001000000000800000008000000040000000200000000108010FF0640010012FF710100000000033F67BD0000000613BBF506000000030D412882000000060EFA4CF9000000010000000812FFAD01033F67BD0000000613BBF506000000030D412882000000060EFA4CF900000001000000080000000000000004108010FB0B4D43FE10804CFF000000040640010012FF710100000000033F67BD0000000713BBF506000000030D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E000000071008ECFF05A00100000000071331710100000007000000000000000410ED70FB0000000700000002000000010000000712FFAD01033F67BD13BC31060D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E000000071008ECFF000000060000000410ED70FB000000070000000200000001000000070000000313BBF506000000030D4128820EFA10F90AA6A27A10EDACFB000000020BF3E57E100928FF0000000406E00100000000070000000A1008ECFF06E0010012C7E5010000000002B4D69D000000060000000A0000000A0000000410ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020BF3E57E100928FF00000004000000071008ECFF06E0010012C7E501000000000000000712C8210102B4D69D0000000713D0D106000000030D9479420000000A0EAEE8F90000000100000008000000000000000410ED70FB0BF3E57E000000071008ECFF06E00100000000070000000A000000040000000200000000108010FF0640010012FF710100000000033F67BD13BC31060D412882000000060EFA4CF9000000010AA6A27A00000006000000070000000313BBF506000000030D4128820EFA10F90AA6A27A0000000610ED70FB0000000600000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020AA6A27E10EDACFF0000000405A00100000000071331710102B4D69D0000000613D0D106000000030D9479420000000600000007000000000000000610ED70FB0AA6A27E10EDACFF000000040000000710ED70FF00000006000000040000000212FFAD01033F67BD13BC31060D4128820EFA10F900000006000000010EFA4CF9000000010AA6A27A0000000810ED70FB00000005000000020000000313BBF506000000030D4128820EFA10F90AA6A27A0000000610ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A10EDACFB000000020AA6A27E10EDACFF0000000406E001000000000812C8210100000008000000000000000610ED70FB0AA6A27E10EDACFF0000000406E0010012C7E5010000000002B4D69D000000070000000A0000000A10ED70FF000000050000000400000002000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020B4D43FE10804CFF00000004064001000000000712FFAD01033F67BD0000000713BBF506000000030DAED8790E9661020BF3E57A000000081008ECFB0000000700000002000000010000000800000000108010FF06400100000000080000000800000004108010FB0B4D43FE10804CFF00000004064001000000000712FFAD01033F67BD0000000713BBF506000000030DAED8790E9661020AA6A27A0000000700000007000000010000000700000000108010FF0640010012FF710100000000033F67BD0000000713BBF506000000030DAED8790E9661020AA6A27A10EDACFB000000020000000810ED70FB0000000700000002000000010E962502000000010000000712FFAD01033F67BD0000000813BBF506000000030DAED8790E9661020AA6A27A10EDACFB000000020000000810ED70FB0AA6A27E10EDACFF0000000406E0010000000007000000050000000500000002000000010E962502000000010000000800000000000000040000000200000003"
theorem small_9191479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191479_left_root small_9191479_left_fuel small_9191479_left_count small_9191479_left_encoded = true := by
  decide +kernel
theorem small_9191479_left_covered : CoveredBy scale carrier boxes small_9191479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191479_left_root small_9191479_left_fuel small_9191479_left_count small_9191479_left_encoded small_9191479_left_checked

theorem cover_9191479 : CoveredBy scale carrier boxes root_9191479 := by
  apply coveredBy_split_literal root_9191479 small_9191479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9192427 coord3 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_9191479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9192427
#print axioms cover_9191479

def root_9191473 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191473_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191473_left_fuel : Nat := 1
def small_9191473_left_count : Nat := 1
def small_9191473_left_encoded : String := "00000000"
theorem small_9191473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191473_left_root small_9191473_left_fuel small_9191473_left_count small_9191473_left_encoded = true := by
  decide +kernel
theorem small_9191473_left_covered : CoveredBy scale carrier boxes small_9191473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191473_left_root small_9191473_left_fuel small_9191473_left_count small_9191473_left_encoded small_9191473_left_checked

theorem cover_9191473 : CoveredBy scale carrier boxes root_9191473 := by
  apply coveredBy_split_literal root_9191473 small_9191473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9191479 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_9191473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9191479
#print axioms cover_9191473

def root_9191472 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9191472 : CoveredBy scale carrier boxes root_9191472 := by
  apply coveredBy_split_literal root_9191472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9191473 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3444.root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9191473
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3444.covered
#print axioms cover_9191472

def root_9191467 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191467_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9191467_right_fuel : Nat := 1
def small_9191467_right_count : Nat := 1
def small_9191467_right_encoded : String := "00000004"
theorem small_9191467_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9191467_right_root small_9191467_right_fuel small_9191467_right_count small_9191467_right_encoded = true := by
  decide +kernel
theorem small_9191467_right_covered : CoveredBy scale carrier boxes small_9191467_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9191467_right_root small_9191467_right_fuel small_9191467_right_count small_9191467_right_encoded small_9191467_right_checked

theorem cover_9191467 : CoveredBy scale carrier boxes root_9191467 := by
  apply coveredBy_split_literal root_9191467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9191472 small_9191467_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9191472
  · exact small_9191467_right_covered
#print axioms cover_9191467

def root_9190813 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190813_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190813_left_fuel : Nat := 23
def small_9190813_left_count : Nat := 309
def small_9190813_left_encoded : String := "0F878CFF0000000407800100128A410100000000022A457D13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE000000070E5FD8FF064001000000000712FFAD01033F67BD0000000713BBF506000000030D41288200000005000000070000000000000004108010FB000000070000000200000001000000070000000313E1C506000000030DE7CA020E5FD8F90B4D43FA10804CFB0000000200000005108010FB0DE7C9FE0E6014FF00000004000000050E5FD8FF0640010012FF7101000000000115233D000000070000000512FFAD010115233D13F895060D4128820EFA10F90AA6A27A10EDACFB000000020D41287E000000050EFA10FF06E0010000000005000000090000000410ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A0000000710ED70FB00000007000000020000000313F85906000000030D4128820EFA10F9000000090000000100000009000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7C9FE000000050E5FD8FF064001000000000512FFAD010115233D00000007000000050000000000000004108010FB0DE7C9FE000000070E5FD8FF064001000000000712FFAD010115233D0000000700000006000000000000000400000002128A7D01022A457D13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE0E6014FF0000000408C0010011FBE9010000000000000007000000090E5FD8FF08C0010011FBE90100000000033F67BD13BC31060D4128820EFA10F90BF3E57A000000071008ECFB000000070000000200000001000000070000000313BBF506000000030D4128820EFA10F900000009000000010000000911FC2501033F67BD13BC31060D4128820EFA10F900000009000000010000000900000003000000090000000000000004108010FB0DE7C9FE0E6014FF0000000408C001000000000711FC2501033F67BD0000000700000009000000000E5FD8FF08C0010011FBE90100000000033F67BD13BC31060D4128820000000A000000070000000313BBF506000000030D4128820000000A0EFA4CF9000000010AA6A27A10EDACFB000000020D41287E000000070000000A0000000A11FC2501033F67BD0000000A00000009000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000070E5FD8FF08C0010011FBE901000000000000000711FC2501033F67BD13BC31060000000800000003000000090000000000000004108010FB0DE7C9FE0E6014FF00000004000000070E5FD8FF08C0010011FBE901000000000000000711FC2501033F67BD00000007000000090000000000000004000000020000000313E1C506000000030DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE000000090E5FD8FF08C0010011FBE901000000000115233D13F895060D4128820000000A000000090000000300000009000000090000000400000002000000010E6014F9000000010B4D43FA10804CFB0000000200000009108010FB0DE7C9FE000000090E5FD8FF08C0010011FBE901000000000115233D13F895060DAED879000000090E9625020000000100000006000000030000000600000009000000040000000200000000"
theorem small_9190813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190813_left_root small_9190813_left_fuel small_9190813_left_count small_9190813_left_encoded = true := by
  decide +kernel
theorem small_9190813_left_covered : CoveredBy scale carrier boxes small_9190813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190813_left_root small_9190813_left_fuel small_9190813_left_count small_9190813_left_encoded small_9190813_left_checked

theorem cover_9190813 : CoveredBy scale carrier boxes root_9190813 := by
  apply coveredBy_split_literal root_9190813 small_9190813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9191467 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9190813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9191467
#print axioms cover_9190813

def root_9190808 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190808_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190808_right_fuel : Nat := 1
def small_9190808_right_count : Nat := 1
def small_9190808_right_encoded : String := "00000002"
theorem small_9190808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190808_right_root small_9190808_right_fuel small_9190808_right_count small_9190808_right_encoded = true := by
  decide +kernel
theorem small_9190808_right_covered : CoveredBy scale carrier boxes small_9190808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190808_right_root small_9190808_right_fuel small_9190808_right_count small_9190808_right_encoded small_9190808_right_checked

theorem cover_9190808 : CoveredBy scale carrier boxes root_9190808 := by
  apply coveredBy_split_literal root_9190808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9190813 small_9190808_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9190813
  · exact small_9190808_right_covered
#print axioms cover_9190808

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626
