import TaoBundleAssembly0015
import TaoBundleChunkBatch0053
import TaoBundleChunkBatch0054
import TaoBundleChunkBatch0055
import TaoBundleChunkBatch0056
import TaoBundleChunkBatch0057
import TaoBundleChunkBatch0058
import TaoBundleChunkBatch0059
import TaoBundleChunkBatch0060
import TaoBundleChunkBatch0061
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016
def root_583414 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583414_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583414_left_fuel : Nat := 23
def small_583414_left_count : Nat := 433
def small_583414_left_encoded : String := "120700F808A912FF12073CFE00000004050000FA135D8105050000FC135D81070CFD9BF70F350CF60000000004548A03138670F80CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF078000FA0000000700000005000000040F8750F70C9A86FE0F878CFF00000004078000FA000000070000000500000005000000000F34D0FE0000000700000004000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF078000FA0000000700000005000000040F8750F70C9A86FE0F878CFF00000004078000FA000000070000000500000005000000000F34D0FE0C9A86F60000000700000007000000040F34D0F604548A03000000071386ACF8000000010CFD9BFF0F350CFE000000040C9A86FE0000000700000007000000070000000000000003135D4507000000030CFD9BF70F350CF60000000004548A03138670F80CFD9BFF0F350CFE00000004000000050F34D0FE0000000900000004000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004078000FA128A7D05028000FC0000000700000005000000020000000500000005000000050F34D0FE0C9A86F60F878CF700000000078000FA00000007128A410500000002000000090F8750F70000000900000000000000040F34D0F604548A03138670F80CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA00000007000000080F8750FF078000FA00000007000000050000000400000007000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000FA00000007128A410500000002028000FC0000000713D7B107000000030AD3577710D13CF60000000000000005000000070F8750FF078000FA128A7D05028000FC00000007000000050000000200000005000000040F34D0FE00000007000000040000000000000002135D450500000002050000FC135D81070CFD9BF70F350CF60000000004548A03138670F80CFD9BFF0F350CFE00000004000000050F34D0FE0C9A86F60F878CF700000000028000FA0000000713D7B10500000002000000070F8750F7028000FA00000007000000050000000000000004000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004028000FA13D7ED05078000FC0000000700000005000000020000000500000005000000050F34D0FE0C9A86F60F878CF700000000028000FA0000000713D7B10500000002078000FC00000007128A410700000003067ECE8312EA58F80AD3577F00000005000000070000000112EA94F8000000010AD3577F00000005000000070F8750F7028000FA13D7ED05078000FC0000000600000005000000020000000500000000000000040F34D0F604548A03138670F80CFD9BFF0000000800000007000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000FA00000007000000080F8750FF00000008000000040F34D0FE00000007000000040000000000000003135D4507000000030CFD9BF70F350CF60000000004548A03000000051386ACF8000000010CFD9BFF000000050F34D0FE0C9A86F60F878CF700000000028000FA13D7ED05028000FC13D7ED07067ECE830000000912EA94F8000000010AD3577F00000005000000070000000300000005000000020000000500000005000000040F34D0F604548A03138670F80CFD9BFF000000080F34D0FE0000000800000004000000011386ACF8000000010CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000FA13D7ED05028000FC13D7ED070AD3577710D13CF600000000000000050000000700000003000000050000000200000005000000050F34D0FE028000FA13D7ED05028000FC0000000713D7B107000000030AD3577700000009000000070000000213D7B10500000002028000FC13D7ED070AD3577710D13CF600000000067ECE830000000712EA94F8000000010AD3577F0000000800000007000000070000000313D7B107000000030AD3577700000009000000080000000400000000120700FE050000FA135D8105050000FC00000007135D4507000000030CFD9BF7000000090000000700000002135D450500000002050000FC135D81070CFD9BF70F350CF60000000004548A03000000071386ACF800000001045489FF1386ACFE000000040C9A86F60000000700000007000000070000000700000003135D4507000000030CFD9BF7000000090F34D0F600000009000000000000000400000001"
theorem small_583414_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583414_left_root small_583414_left_fuel small_583414_left_count small_583414_left_encoded = true := by
  decide +kernel
theorem small_583414_left_covered : CoveredBy scale carrier boxes small_583414_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583414_left_root small_583414_left_fuel small_583414_left_count small_583414_left_encoded small_583414_left_checked

theorem cover_583414 : CoveredBy scale carrier boxes root_583414 := by
  apply coveredBy_split_literal root_583414 small_583414_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0213.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_583414_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0213.covered
#print axioms cover_583414

def root_583408 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583408_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583408_left_fuel : Nat := 1
def small_583408_left_count : Nat := 1
def small_583408_left_encoded : String := "00000000"
theorem small_583408_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583408_left_root small_583408_left_fuel small_583408_left_count small_583408_left_encoded = true := by
  decide +kernel
theorem small_583408_left_covered : CoveredBy scale carrier boxes small_583408_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583408_left_root small_583408_left_fuel small_583408_left_count small_583408_left_encoded small_583408_left_checked

theorem cover_583408 : CoveredBy scale carrier boxes root_583408 := by
  apply coveredBy_split_literal root_583408 small_583408_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583414 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_583408_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583414
#print axioms cover_583408

def root_583407 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583407_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583407_right_fuel : Nat := 28
def small_583407_right_count : Nat := 311
def small_583407_right_encoded : String := "120700F608A91303120700F808A912FF12073CFE00000004050000FA135D8105050000FC00000007135D450700000003045489F71386ACF60000000004548A03000000071386ACF8000000010CFD9BFF0F350CFE000000040C9A86FE0000000700000007000000070000000700000002135D450500000002050000FC135D8107045489F71386ACF60000000004548A03000000071386ACF8000000010CFD9BFF00000008000000070000000700000003135D450700000003045489F71386ACF60000000004548A03000000081386ACF8000000010CFD9BFF000000080F34D0FE000000070000000400000008120700FE00000007000000040000000112073CF80000000108A912FF12073CFE00000004050000FA135D8105050000FC135D8107045489F71386ACF6000000000CFD9C03000000070F350CF800000001000000070000000700000003135D450700000003045489F71386ACF6000000000CFD9C030F34D0F80CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070000000A00000007000000010F350CF8000000010CFD9BFF0000000A0F34D0FE0000000700000004138670F60CFD9C03000000070F350CF8000000010CFD9BFF0000000A000000070000000000000002135D450500000002050000FC135D8107045489F71386ACF6000000000CFD9C030F34D0F80CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF000000080000000400000007000000010F350CF8000000010CFD9BFF000000090F34D0FE0000000700000004138670F60CFD9C03000000070F350CF8000000010CFD9BFF00000009000000070000000000000003135D450700000003045489F71386ACF6000000000CFD9C030F34D0F80CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000FA13D7ED05028000FC0000000713D7B10700000003067ECE7712EA94F6000000000AD35783000000070000000A0000000700000002000000080F8750FF028000FA13D7ED05028000FC000000070000000A0000000200000008000000040F34D0FE028000FA0000000713D7B10500000002028000FC0000000713D7B10700000003067ECE7712EA94F6000000000AD357830000000710D13CF8000000010AD3577F00000008000000070000000700000004000000010F350CF8000000010CFD9BFF0F350CFE000000040C9A86F80F878D030C9A86FE0F878CFF00000004028000FA0000000A13D7B10500000002028000FC000000090000000A0000000A000000010F87510300000001000000090F34D0FE0C9A86F80F878D03028000FA0000000713D7B10500000002028000FC0000000713D7B10700000003067ECE7712EA94F6000000000AD3577F10D13CFE000000040DE7C9F80E6015030000000700000001000000070000000700000007000000010F87510300000001028000FA0000000713D7B10500000002028000FC0000000713D7B10700000003067ECE770000000A0000000700000004138670F60CFD9C030F34D0F80CFD9BFF0000000800000007000000010F350CF8000000010CFD9BFF0F350CFE00000004000000090F34D0FE000000070000000400000000120700FE050000FA00000007135D450500000002050000FC00000007135D450700000003045489F71386ACF6000000000CFD9C03000000070F350CF80000000100000007000000070000000400000000"
theorem small_583407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583407_right_root small_583407_right_fuel small_583407_right_count small_583407_right_encoded = true := by
  decide +kernel
theorem small_583407_right_covered : CoveredBy scale carrier boxes small_583407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583407_right_root small_583407_right_fuel small_583407_right_count small_583407_right_encoded small_583407_right_checked

theorem cover_583407 : CoveredBy scale carrier boxes root_583407 := by
  apply coveredBy_split_literal root_583407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583408 small_583407_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583408
  · exact small_583407_right_covered
#print axioms cover_583407

def root_583401 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583401_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583401_left_fuel : Nat := 1
def small_583401_left_count : Nat := 1
def small_583401_left_encoded : String := "00000004"
theorem small_583401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583401_left_root small_583401_left_fuel small_583401_left_count small_583401_left_encoded = true := by
  decide +kernel
theorem small_583401_left_covered : CoveredBy scale carrier boxes small_583401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583401_left_root small_583401_left_fuel small_583401_left_count small_583401_left_encoded small_583401_left_checked

theorem cover_583401 : CoveredBy scale carrier boxes root_583401 := by
  apply coveredBy_split_literal root_583401 small_583401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583407 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_583401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583407
#print axioms cover_583401

def root_583400 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583400_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583400_right_fuel : Nat := 20
def small_583400_right_count : Nat := 181
def small_583400_right_encoded : String := "1151E8FF08A912F712073CF60000000008A91303120700F8050000FA135D8105050000FC135D8107050000FE135D80FF000000040CFD9BF70F350CF600000000000000050F34D0F604548A03138670F8078000FA0000000700000005000000011386ACF800000001078000FA128A7D050000000700000002128A410500000002078000FC128A7D070000000700000003000000050000000000000005000000030000000500000002000000050000000112073CF800000001050000FA135D8105050000FC135D8107050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C03000000050000000A0F34D0F60CFD9C030F34D0F80000000A000000010000000900000000135D44FF0CFD9BF700000005000000090000000400000003135D450700000003050000FE135D80FF000000040CFD9BF7000000050F34D0F60000000A000000000000000500000002135D450500000002050000FC135D8107050000FE135D80FF000000040CFD9BF7000000050F34D0F60CFD9C03000000050000000900000000000000050000000300000005120700F608A91303120700F8050000FA135D8105050000FC135D8107050000FE000000070000000700000003135D450700000003050000FE135D80FF00000004045489F71386ACF60000000004548A03000000060000000A00000007135D44FF045489F700000005000000070000000400000002135D450500000002050000FC00000008135D450700000003000000080000000112073CF800000001050000FA135D8105050000FC135D8107050000FE000000090000000900000003135D4507000000030000000A00000002135D450500000002050000FC135D8107050000FE000000090000000900000003135D450700000003050000FE135D80FF00000004045489F71386ACF6000000000CFD9C030000000500000009138670F60CFD9C03000000080000000900000000135D44FF0000000A000000040000000000000004"
theorem small_583400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583400_right_root small_583400_right_fuel small_583400_right_count small_583400_right_encoded = true := by
  decide +kernel
theorem small_583400_right_covered : CoveredBy scale carrier boxes small_583400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583400_right_root small_583400_right_fuel small_583400_right_count small_583400_right_encoded small_583400_right_checked

theorem cover_583400 : CoveredBy scale carrier boxes root_583400 := by
  apply coveredBy_split_literal root_583400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583401 small_583400_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583401
  · exact small_583400_right_covered
#print axioms cover_583400

def root_583394 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583394_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_583394_left_fuel : Nat := 1
def small_583394_left_count : Nat := 1
def small_583394_left_encoded : String := "00000003"
theorem small_583394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_583394_left_root small_583394_left_fuel small_583394_left_count small_583394_left_encoded = true := by
  decide +kernel
theorem small_583394_left_covered : CoveredBy scale carrier boxes small_583394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_583394_left_root small_583394_left_fuel small_583394_left_count small_583394_left_encoded small_583394_left_checked

theorem cover_583394 : CoveredBy scale carrier boxes root_583394 := by
  apply coveredBy_split_literal root_583394 small_583394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583400 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_583394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583400
#print axioms cover_583394

def root_582124 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_582124 : CoveredBy scale carrier boxes root_582124 := by
  apply coveredBy_split_literal root_582124 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0212.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_583394 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0212.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_583394
#print axioms cover_582124

def root_582118 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_582118_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_582118_left_fuel : Nat := 1
def small_582118_left_count : Nat := 1
def small_582118_left_encoded : String := "00000002"
theorem small_582118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_582118_left_root small_582118_left_fuel small_582118_left_count small_582118_left_encoded = true := by
  decide +kernel
theorem small_582118_left_covered : CoveredBy scale carrier boxes small_582118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_582118_left_root small_582118_left_fuel small_582118_left_count small_582118_left_encoded small_582118_left_checked

theorem cover_582118 : CoveredBy scale carrier boxes root_582118 := by
  apply coveredBy_split_literal root_582118 small_582118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_582124 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_582118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_582124
#print axioms cover_582118

def root_580456 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_580456 : CoveredBy scale carrier boxes root_580456 := by
  apply coveredBy_split_literal root_580456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0211.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_582118 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0211.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_582118
#print axioms cover_580456

def root_580451 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_580451_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_580451_right_fuel : Nat := 1
def small_580451_right_count : Nat := 1
def small_580451_right_encoded : String := "00000001"
theorem small_580451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_580451_right_root small_580451_right_fuel small_580451_right_count small_580451_right_encoded = true := by
  decide +kernel
theorem small_580451_right_covered : CoveredBy scale carrier boxes small_580451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_580451_right_root small_580451_right_fuel small_580451_right_count small_580451_right_encoded small_580451_right_checked

theorem cover_580451 : CoveredBy scale carrier boxes root_580451 := by
  apply coveredBy_split_literal root_580451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580456 small_580451_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580456
  · exact small_580451_right_covered
#print axioms cover_580451

def root_580450 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_580450 : CoveredBy scale carrier boxes root_580450 := by
  apply coveredBy_split_literal root_580450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580451 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0214.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580451
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0214.covered
#print axioms cover_580450

def root_580444 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_580444_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_580444_left_fuel : Nat := 1
def small_580444_left_count : Nat := 1
def small_580444_left_encoded : String := "00000000"
theorem small_580444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_580444_left_root small_580444_left_fuel small_580444_left_count small_580444_left_encoded = true := by
  decide +kernel
theorem small_580444_left_covered : CoveredBy scale carrier boxes small_580444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_580444_left_root small_580444_left_fuel small_580444_left_count small_580444_left_encoded small_580444_left_checked

theorem cover_580444 : CoveredBy scale carrier boxes root_580444 := by
  apply coveredBy_split_literal root_580444 small_580444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580450 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_580444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580450
#print axioms cover_580444

def root_580443 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_580443 : CoveredBy scale carrier boxes root_580443 := by
  apply coveredBy_split_literal root_580443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0215.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0215.covered
#print axioms cover_580443

def root_580442 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_580442 : CoveredBy scale carrier boxes root_580442 := by
  apply coveredBy_split_literal root_580442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580443 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0216.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580443
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0216.covered
#print axioms cover_580442

def root_580441 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_580441 : CoveredBy scale carrier boxes root_580441 := by
  apply coveredBy_split_literal root_580441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580442 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0217.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0217.covered
#print axioms cover_580441

def root_555797 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_555797 : CoveredBy scale carrier boxes root_555797 := by
  apply coveredBy_split_literal root_555797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0015.root_555798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_580441 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0015.cover_555798
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_580441
#print axioms cover_555797

def root_600917 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_600917_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_600917_left_fuel : Nat := 24
def small_600917_left_count : Nat := 483
def small_600917_left_encoded : String := "115225030A0000FA115225050A0001061151E8FD0A0001081151E8FF08A91303120700F808A91305120700FA0000000600000002000000060000000112073CF80000000108A91305120700FA00000006000000020000000600000004115224FF0000000408A91303120700F808A91305120700FA000000070000000212073CFA0000000208A912FF12073D08050000F6135D80F7000000000500010600000007135D80FD0000000304548A030000000700000005135D44F70500010600000006135D80FD0000000304548A0300000006000000050000000000000004000000050000000112073CF80000000108A91305120700FA000000070000000212073CFA0000000208A912FF12073D0800000005000000040000000500000003115224FD000000030A0001081151E8FF08A91303120700F808A913050000000812073CFA00000002000000080000000112073CF80000000108A91305120700FA08A912FD12073D06050000F6135D80F7000000000500010800000008135D80FF000000040CFD9C030000000800000005135D44F70500010800000006135D80FF000000040CFD9C0300000006000000050000000000000003000000050000000212073CFA0000000208A912FD12073D0600000005000000030000000500000004115224FF0000000408A91303120700F808A91305120700FA08A912FD12073D0608A912FF12073D08050000F6135D80F70000000004548A03138670F800000008000000011386ACF80000000104548A050000000800000005135D44F704548A03138670F800000008000000011386ACF80000000104548A05000000071386ACFA000000020CFD9BFD000000060000000500000000000000040000000700000003120701060000000308A912FF00000008000000050000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D80F70000000004548A03138670F80CFD9C050F34D0FA0000000500000002000000050000000100000005135D44F704548A03138670F80CFD9C050F34D0FA0CFD9BFD0000000600000005000000020F350CFA000000020CFD9BFD0F350D06000000050000000300000005000000011386ACF8000000010CFD9C050F34D0FA00000005000000020000000500000000000000040000000500000003120701060000000308A912FF00000008000000050000000112073CF80000000108A91305120700FA08A912FD12073D0608A912FF12073D08050000F6135D80F7000000000CFD9C030F34D0F8000000050000000100000005135D44F70CFD9C030F34D0F804548A05138670FA0CFD9BFD00000006000000050000000200000005000000010F350CF80000000104548A05138670FA0CFD9BFD0000000700000005000000020000000500000000000000040000000500000003120701060000000308A912FF12073D080000000500000004000000050000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F600000005135D44F70CFD9C030F34D0F800000005000000010000000500000000000000040000000500000003120701060000000308A912FF12073D08000000050000000400000005000000021151E905000000020A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91303120700F808A912FF12073D08050000F600000005135D44F7050000FA00000005135D450500000002000000050000000000000004000000050000000112073CF80000000108A912FF12073D08050000F60000000500000006000000040000000500000003115224FD000000030A0001081151E8FF08A91303120700F808A912FD00000008000000050000000112073CF80000000108A912FD12073D06050000F60000000500000006000000030000000500000004115224FF0000000408A91303120700F808A912FD12073D0608A912FF12073D08050000F6135D80F700000000050000FA00000005135D45050000000200000005135D44F7050000FA135D810504548A03138670F800000005000000010000000500000002135D45050000000204548A030000000800000008000000000000000412070108000000040000000900000003120701060000000308A912FF00000008000000050000000112073CF80000000108A912FD12073D0608A912FF12073D08050000F6135D80F700000000050000FA00000005135D45050000000200000005135D44F7050000FA135D81050CFD9C030F34D0F800000005000000010000000500000002135D4505000000020CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD0F350D0600000005000000030F34D106000000030CFD9BFF000000080000000500000000000000041207010800000004050000F600000005135D44F7050000FA00000005135D4505000000020CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD00000009000000050000000000000003120701060000000308A912FF12073D08050000F600000005135D44F7050000FA000000050000000800000000000000041207010800000004050000F6135D80F700000000050000FA00000005135D45050000000200000009135D44F7050000FA00000005135D4505000000020CFD9C0300000008000000090000000000000001"
theorem small_600917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_600917_left_root small_600917_left_fuel small_600917_left_count small_600917_left_encoded = true := by
  decide +kernel
theorem small_600917_left_covered : CoveredBy scale carrier boxes small_600917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_600917_left_root small_600917_left_fuel small_600917_left_count small_600917_left_encoded small_600917_left_checked

theorem cover_600917 : CoveredBy scale carrier boxes root_600917 := by
  apply coveredBy_split_literal root_600917 small_600917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0220.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_600917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0220.covered
#print axioms cover_600917

def root_600912 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_600912_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_600912_right_fuel : Nat := 1
def small_600912_right_count : Nat := 1
def small_600912_right_encoded : String := "00000000"
theorem small_600912_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_600912_right_root small_600912_right_fuel small_600912_right_count small_600912_right_encoded = true := by
  decide +kernel
theorem small_600912_right_covered : CoveredBy scale carrier boxes small_600912_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_600912_right_root small_600912_right_fuel small_600912_right_count small_600912_right_encoded small_600912_right_checked

theorem cover_600912 : CoveredBy scale carrier boxes root_600912 := by
  apply coveredBy_split_literal root_600912 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_600917 small_600912_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_600917
  · exact small_600912_right_covered
#print axioms cover_600912

def root_599692 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_599692 : CoveredBy scale carrier boxes root_599692 := by
  apply coveredBy_split_literal root_599692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0219.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_600912 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0219.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_600912
#print axioms cover_599692

def root_599691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_599691 : CoveredBy scale carrier boxes root_599691 := by
  apply coveredBy_split_literal root_599691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_599692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0221.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_599692
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0221.covered
#print axioms cover_599691

def root_596829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_596829 : CoveredBy scale carrier boxes root_596829 := by
  apply coveredBy_split_literal root_596829 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0218.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_599691 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0218.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_599691
#print axioms cover_596829

def root_608795 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_608795 : CoveredBy scale carrier boxes root_608795 := by
  apply coveredBy_split_literal root_608795 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0223.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0224.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0223.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0224.covered
#print axioms cover_608795

def root_608789 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608789_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608789_left_fuel : Nat := 1
def small_608789_left_count : Nat := 1
def small_608789_left_encoded : String := "00000004"
theorem small_608789_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_608789_left_root small_608789_left_fuel small_608789_left_count small_608789_left_encoded = true := by
  decide +kernel
theorem small_608789_left_covered : CoveredBy scale carrier boxes small_608789_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_608789_left_root small_608789_left_fuel small_608789_left_count small_608789_left_encoded small_608789_left_checked

theorem cover_608789 : CoveredBy scale carrier boxes root_608789 := by
  apply coveredBy_split_literal root_608789 small_608789_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608795 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_608789_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608795
#print axioms cover_608789

def root_608788 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608788_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608788_right_fuel : Nat := 14
def small_608788_right_count : Nat := 55
def small_608788_right_encoded : String := "1151E8FF08A912F712073CF60000000008A913030000000512073CF80000000100000005120700F608A91303120700F8050000FA135D810505000106135D450700000003050000FE135D80FF00000004045489F700000005138670F60000000600000000000000050000000500000002000000050000000112073CF800000001050000FA135D8105050001060000000A0000000A00000002135D45050000000205000106135D450700000003050000FE135D80FF00000004045489F700000005138670F60000000A0000000000000005000000050000000000000004"
theorem small_608788_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_608788_right_root small_608788_right_fuel small_608788_right_count small_608788_right_encoded = true := by
  decide +kernel
theorem small_608788_right_covered : CoveredBy scale carrier boxes small_608788_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_608788_right_root small_608788_right_fuel small_608788_right_count small_608788_right_encoded small_608788_right_checked

theorem cover_608788 : CoveredBy scale carrier boxes root_608788 := by
  apply coveredBy_split_literal root_608788 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608789 small_608788_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608789
  · exact small_608788_right_covered
#print axioms cover_608788

def root_608782 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608782_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608782_left_fuel : Nat := 1
def small_608782_left_count : Nat := 1
def small_608782_left_encoded : String := "00000003"
theorem small_608782_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_608782_left_root small_608782_left_fuel small_608782_left_count small_608782_left_encoded = true := by
  decide +kernel
theorem small_608782_left_covered : CoveredBy scale carrier boxes small_608782_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_608782_left_root small_608782_left_fuel small_608782_left_count small_608782_left_encoded small_608782_left_checked

theorem cover_608782 : CoveredBy scale carrier boxes root_608782 := by
  apply coveredBy_split_literal root_608782 small_608782_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608788 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_608782_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608788
#print axioms cover_608782

def root_608781 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608781_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608781_right_fuel : Nat := 27
def small_608781_right_count : Nat := 311
def small_608781_right_encoded : String := "115225070A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F8000000090000000112073CF80000000108A9130712070106000000030000000512073D0608A912FF12073CFE00000004050000FA135D81050CFD9BF7000000050F34D0F60CFD9C03000000050F350CF80000000100000005000000000000000200000005120700FE000000090000000400000003120700F608A91303120700F808A9130712070106000000030000000912073D0608A912FF12073CFE00000004050000FA135D8105045489F700000009138670F604548A03000000091386ACF8000000010CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE000000040000000500000006000000030000000000000002135D450500000002045489F700000005138670F604548A03000000051386ACF8000000010CFD9C0700000005000000060000000000000009000000030000000112073CF80000000108A91307120701060000000308A912FF000000050000000912073D0608A912FF12073CFE00000004050000FA135D8105045489F71386ACF6000000000CFD9C030F34D0F80CFD9C07000000050F350D060CFD9BFF000000050000000900000003000000010F350CF8000000010CFD9C070F34D10600000003000000050F350D060CFD9BFF0000000A0F34D0FE0C9A86F80F878D0300000009000000010F87510300000001000000080000000400000003138670F60CFD9C030F34D0F80CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE000000040C9A87060000000A000000050F34D0FE000000060000000400000003000000010F350CF8000000010CFD9C070F34D106000000030CFD9BFF000000050F34D0FE0C9A86F80000000900000005000000040F350D060CFD9BFF0000000A0F34D0FE0C9A86F80F878D030C9A87060000000A00000006000000010000000A00000004000000030000000000000002135D450500000002045489F71386ACF6000000000CFD9C03000000050F350CF8000000010CFD9C07000000050F350D060CFD9BFF000000050F34D0FE0C9A86F80F878D030000000500000001000000050000000400000003138670F60CFD9C030F34D0F80CFD9C07000000050F350D060CFD9BFF000000050000000600000003000000010F350CF8000000010CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0C9A86F80F878D030C9A87060F875107000000030000000600000006000000010F875103000000010C9A87060F875107000000030000000A0000000A000000040000000300000000120700FE050000FA135D8105045489F700000009138670F60CFD9C03000000090F350CF8000000010CFD9C070F34D10600000003000000090F350D06045489FF1386ACFE000000040C9A86F8000000090F875103000000010C9A87060F87510700000003000000060000000600000009000000030000000000000002135D450500000002045489F700000009138670F60CFD9C03000000090F350CF8000000010CFD9C070F34D10600000003000000090F350D06045489FF1386ACFE000000040C9A86F8000000090F875103000000010C9A87060F87510700000003028000FA0000000600000006000000090000000900000003000000000000000400000003000000001151E8FF000000050000000400000003"
theorem small_608781_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_608781_right_root small_608781_right_fuel small_608781_right_count small_608781_right_encoded = true := by
  decide +kernel
theorem small_608781_right_covered : CoveredBy scale carrier boxes small_608781_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_608781_right_root small_608781_right_fuel small_608781_right_count small_608781_right_encoded small_608781_right_checked

theorem cover_608781 : CoveredBy scale carrier boxes root_608781 := by
  apply coveredBy_split_literal root_608781 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608782 small_608781_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608782
  · exact small_608781_right_covered
#print axioms cover_608781

def root_608775 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608775_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_608775_left_fuel : Nat := 1
def small_608775_left_count : Nat := 1
def small_608775_left_encoded : String := "00000002"
theorem small_608775_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_608775_left_root small_608775_left_fuel small_608775_left_count small_608775_left_encoded = true := by
  decide +kernel
theorem small_608775_left_covered : CoveredBy scale carrier boxes small_608775_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_608775_left_root small_608775_left_fuel small_608775_left_count small_608775_left_encoded small_608775_left_checked

theorem cover_608775 : CoveredBy scale carrier boxes root_608775 := by
  apply coveredBy_split_literal root_608775 small_608775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608781 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_608775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608781
#print axioms cover_608775

def root_605917 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_605917 : CoveredBy scale carrier boxes root_605917 := by
  apply coveredBy_split_literal root_605917 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0222.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_608775 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0222.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_608775
#print axioms cover_605917

def root_605912 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605912_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605912_right_fuel : Nat := 1
def small_605912_right_count : Nat := 1
def small_605912_right_encoded : String := "00000001"
theorem small_605912_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_605912_right_root small_605912_right_fuel small_605912_right_count small_605912_right_encoded = true := by
  decide +kernel
theorem small_605912_right_covered : CoveredBy scale carrier boxes small_605912_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_605912_right_root small_605912_right_fuel small_605912_right_count small_605912_right_encoded small_605912_right_checked

theorem cover_605912 : CoveredBy scale carrier boxes root_605912 := by
  apply coveredBy_split_literal root_605912 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605917 small_605912_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605917
  · exact small_605912_right_covered
#print axioms cover_605912

def root_605911 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_605911 : CoveredBy scale carrier boxes root_605911 := by
  apply coveredBy_split_literal root_605911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0225.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605912
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0225.covered
#print axioms cover_605911

def root_605905 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605905_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605905_left_fuel : Nat := 1
def small_605905_left_count : Nat := 1
def small_605905_left_encoded : String := "00000000"
theorem small_605905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_605905_left_root small_605905_left_fuel small_605905_left_count small_605905_left_encoded = true := by
  decide +kernel
theorem small_605905_left_covered : CoveredBy scale carrier boxes small_605905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_605905_left_root small_605905_left_fuel small_605905_left_count small_605905_left_encoded small_605905_left_checked

theorem cover_605905 : CoveredBy scale carrier boxes root_605905 := by
  apply coveredBy_split_literal root_605905 small_605905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605911 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_605905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605911
#print axioms cover_605905

def root_605904 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605904_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_605904_right_fuel : Nat := 24
def small_605904_right_count : Nat := 313
def small_605904_right_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A91303120700F808A91305120700FA08A912FF12073CFE00000004050000F6135D80F70000000005000106135D45070000000304548A03138670F804548A050000000700000007000000010000000A0000000500000005120700FE00000009000000040000000212073CFA0000000208A912FF12073CFE00000004050000F6135D80F70000000005000106135D45070000000304548A03000000051386ACF8000000010CFD9C05000000050F350CFA00000002000000050000000500000005120700FE00000009000000040000000112073CF80000000108A91305120700FA08A912FF12073CFE00000004050000F6135D80F70000000005000106135D4507000000030000000A0000000500000005120700FE050000F6135D80F7000000000500010600000007135D81070CFD9C03000000070F350CF8000000010000000800000003135D44F705000106000000070000000500000000000000040000000212073CFA0000000208A912FF12073CFE00000004050000F6135D80F70000000005000106135D4507000000030CFD9C030F34D0F80CFD9C05000000050000000800000001000000080000000500000005120700FE050000F6135D80F70000000005000106135D4507000000030CFD9C030000000800000008135D81070CFD9C03000000090000000800000003135D44F705000106135D4507000000030CFD9C030000000800000008135D81070CFD9C0300000005000000080000000300000000000000041151E8FF0000000500000004115225070A0000FE115224FF0000000408A91303120700F808A91305120700FA08A9130712070106000000030000000912073D0608A912FF12073CFE0000000400000005000000050000000300000002000000090000000112073CF80000000108A913050000000512073CFA0000000208A913070000000512073D0608A912FF00000005120700FE0000000900000004000000031151E8FF08A91303120700F808A91305120700FA08A913070000000800000005000000020000000500000001000000050000000400000003000000021151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A91303120700F808A912FF00000005000000090000000112073CF80000000108A912FF12073CFE0000000400000005120700FE050000F6135D80F700000000050000FA135D810505000106000000080000000900000002135D45050000000205000106135D4507000000030CFD9C03000000050000000800000005135D44F7050000FA135D8105050001060000000800000005000000020000000500000000000000041151E8FF0000000500000004115225070000000500000003000000011151E903000000010A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A91305120700FA08A912FF00000005120700FE00000008000000040000000212073CFA0000000208A912FF000000080000000800000008115225070000000500000003000000021151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912FF00000005000000081151E8FF0000000500000004115225070A0000FE115224FF0000000408A913070000000512073D060000000500000003000000080000000300000000"
theorem small_605904_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_605904_right_root small_605904_right_fuel small_605904_right_count small_605904_right_encoded = true := by
  decide +kernel
theorem small_605904_right_covered : CoveredBy scale carrier boxes small_605904_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_605904_right_root small_605904_right_fuel small_605904_right_count small_605904_right_encoded small_605904_right_checked

theorem cover_605904 : CoveredBy scale carrier boxes root_605904 := by
  apply coveredBy_split_literal root_605904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605905 small_605904_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605905
  · exact small_605904_right_covered
#print axioms cover_605904

def root_605903 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_605903 : CoveredBy scale carrier boxes root_605903 := by
  apply coveredBy_split_literal root_605903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605904 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0226.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605904
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0226.covered
#print axioms cover_605903

def root_605902 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_605902 : CoveredBy scale carrier boxes root_605902 := by
  apply coveredBy_split_literal root_605902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605903 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0227.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605903
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0227.covered
#print axioms cover_605902

def root_596828 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_596828 : CoveredBy scale carrier boxes root_596828 := by
  apply coveredBy_split_literal root_596828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_596829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_605902 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_596829
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_605902
#print axioms cover_596828

def root_555796 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_555796 : CoveredBy scale carrier boxes root_555796 := by
  apply coveredBy_split_literal root_555796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_555797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_596828 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_555797
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_596828
#print axioms cover_555796

def root_494932 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_494932 : CoveredBy scale carrier boxes root_494932 := by
  apply coveredBy_split_literal root_494932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0015.root_494933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_555796 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0015.cover_494933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_555796
#print axioms cover_494932

def root_621516 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621516_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621516_right_fuel : Nat := 19
def small_621516_right_count : Nat := 295
def small_621516_right_encoded : String := "12073CF80000000108A912FB12073D0408A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D0F80CFD9BFB000000090F34D1040000000200000009000000010F350CF8000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD00000007000000090F34D0F60CFD9C030F34D0F80CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC000000030000000700000009000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0000000700000009000000020F34D104000000020000000700000000120700FE0CFD9BF70F350CF6000000000CFD9C030F34D0F80CFD9BFB000000090F34D104000000020CFD9BFD0F350CFC000000030000000700000009000000010F350CF8000000010CFD9BFB000000090F34D10400000002000000070F34D0F60CFD9C030F34D0F80CFD9BFB0F350D0400000009000000020F34D104000000020000000700000001000000070000000000000004120700FC08A912FF12073CFE000000040CFD9BF7000000090F34D0F60CFD9C03000000090F350CF8000000010CFD9BFB000000090000000900000000120700FE00000009000000040000000300000002120701040000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D0FE00000007000000040F34D0FC00000009000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9BFF000000070F34D0FE00000007000000040F34D0FC0CFD9BFF000000090F34D0FE000000090000000400000003000000010F350CF800000001045489FB1386AD040CFD9BFD00000007000000090000000213867104000000020CFD9BFD0F350CFC0000000300000007000000050F34D0F60CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000090F34D0FE0000000700000004000000030000000213867104000000020CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86FE00000007000000050000000500000003000000010F350CF800000001045489FB0000000713867104000000020000000700000000120700FE0CFD9BF70F350CF6000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC00000009000000030000000213867104000000020CFD9BFD0F350CFC000000030000000500000005000000010F350CF800000001045489FB00000007000000050F34D0F60CFD9C030F34D0F8045489FB1386AD040CFD9BFD000000070F34D0FC00000007000000030000000213867104000000020000000500000001000000070000000000000004120700FC08A912FF12073CFE000000040CFD9BF70F350CF600000000000000090F34D0F60CFD9C030F34D0F8045489FB00000009138671040000000200000005000000010F350CF8000000010000000500000000120700FE0CFD9BF70F350CF6000000000CFD9C030000000900000005000000050000000400000003"
theorem small_621516_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_621516_right_root small_621516_right_fuel small_621516_right_count small_621516_right_encoded = true := by
  decide +kernel
theorem small_621516_right_covered : CoveredBy scale carrier boxes small_621516_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_621516_right_root small_621516_right_fuel small_621516_right_count small_621516_right_encoded small_621516_right_checked

theorem cover_621516 : CoveredBy scale carrier boxes root_621516 := by
  apply coveredBy_split_literal root_621516 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0229.root small_621516_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0229.covered
  · exact small_621516_right_covered
#print axioms cover_621516

def root_621510 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621510_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621510_left_fuel : Nat := 1
def small_621510_left_count : Nat := 1
def small_621510_left_encoded : String := "00000000"
theorem small_621510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_621510_left_root small_621510_left_fuel small_621510_left_count small_621510_left_encoded = true := by
  decide +kernel
theorem small_621510_left_covered : CoveredBy scale carrier boxes small_621510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_621510_left_root small_621510_left_fuel small_621510_left_count small_621510_left_encoded small_621510_left_checked

theorem cover_621510 : CoveredBy scale carrier boxes root_621510 := by
  apply coveredBy_split_literal root_621510 small_621510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621516 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_621510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621516
#print axioms cover_621510

def root_621509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_621509 : CoveredBy scale carrier boxes root_621509 := by
  apply coveredBy_split_literal root_621509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621510 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0230.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621510
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0230.covered
#print axioms cover_621509

def root_621503 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621503_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621503_left_fuel : Nat := 1
def small_621503_left_count : Nat := 1
def small_621503_left_encoded : String := "00000004"
theorem small_621503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_621503_left_root small_621503_left_fuel small_621503_left_count small_621503_left_encoded = true := by
  decide +kernel
theorem small_621503_left_covered : CoveredBy scale carrier boxes small_621503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_621503_left_root small_621503_left_fuel small_621503_left_count small_621503_left_encoded small_621503_left_checked

theorem cover_621503 : CoveredBy scale carrier boxes root_621503 := by
  apply coveredBy_split_literal root_621503 small_621503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621509 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_621503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621509
#print axioms cover_621503

def root_626566 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_626566 : CoveredBy scale carrier boxes root_626566 := by
  apply coveredBy_split_literal root_626566 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0231.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0232.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0231.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0232.covered
#print axioms cover_626566

def root_626560 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_626560_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_626560_left_fuel : Nat := 1
def small_626560_left_count : Nat := 1
def small_626560_left_encoded : String := "00000000"
theorem small_626560_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_626560_left_root small_626560_left_fuel small_626560_left_count small_626560_left_encoded = true := by
  decide +kernel
theorem small_626560_left_covered : CoveredBy scale carrier boxes small_626560_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_626560_left_root small_626560_left_fuel small_626560_left_count small_626560_left_encoded small_626560_left_checked

theorem cover_626560 : CoveredBy scale carrier boxes root_626560 := by
  apply coveredBy_split_literal root_626560 small_626560_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_626566 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_626560_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_626566
#print axioms cover_626560

def root_626559 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_626559 : CoveredBy scale carrier boxes root_626559 := by
  apply coveredBy_split_literal root_626559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_626560 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0233.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_626560
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0233.covered
#print axioms cover_626559

def root_626554 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_626554_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_626554_right_fuel : Nat := 1
def small_626554_right_count : Nat := 1
def small_626554_right_encoded : String := "00000004"
theorem small_626554_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_626554_right_root small_626554_right_fuel small_626554_right_count small_626554_right_encoded = true := by
  decide +kernel
theorem small_626554_right_covered : CoveredBy scale carrier boxes small_626554_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_626554_right_root small_626554_right_fuel small_626554_right_count small_626554_right_encoded small_626554_right_checked

theorem cover_626554 : CoveredBy scale carrier boxes root_626554 := by
  apply coveredBy_split_literal root_626554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_626559 small_626554_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_626559
  · exact small_626554_right_covered
#print axioms cover_626554

def root_621502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_621502 : CoveredBy scale carrier boxes root_621502 := by
  apply coveredBy_split_literal root_621502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_626554 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_626554
#print axioms cover_621502

def root_621496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621496_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621496_left_fuel : Nat := 1
def small_621496_left_count : Nat := 1
def small_621496_left_encoded : String := "00000003"
theorem small_621496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_621496_left_root small_621496_left_fuel small_621496_left_count small_621496_left_encoded = true := by
  decide +kernel
theorem small_621496_left_covered : CoveredBy scale carrier boxes small_621496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_621496_left_root small_621496_left_fuel small_621496_left_count small_621496_left_encoded small_621496_left_checked

theorem cover_621496 : CoveredBy scale carrier boxes root_621496 := by
  apply coveredBy_split_literal root_621496 small_621496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621502 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_621496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621502
#print axioms cover_621496

def root_621495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_621495 : CoveredBy scale carrier boxes root_621495 := by
  apply coveredBy_split_literal root_621495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0234.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0234.covered
#print axioms cover_621495

def root_621489 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621489_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_621489_left_fuel : Nat := 1
def small_621489_left_count : Nat := 1
def small_621489_left_encoded : String := "00000002"
theorem small_621489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_621489_left_root small_621489_left_fuel small_621489_left_count small_621489_left_encoded = true := by
  decide +kernel
theorem small_621489_left_covered : CoveredBy scale carrier boxes small_621489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_621489_left_root small_621489_left_fuel small_621489_left_count small_621489_left_encoded small_621489_left_checked

theorem cover_621489 : CoveredBy scale carrier boxes root_621489 := by
  apply coveredBy_split_literal root_621489 small_621489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621495 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_621489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621495
#print axioms cover_621489

def root_619991 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619991 : CoveredBy scale carrier boxes root_619991 := by
  apply coveredBy_split_literal root_619991 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0228.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_621489 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0228.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_621489
#print axioms cover_619991

def root_619986 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_619986_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_619986_right_fuel : Nat := 1
def small_619986_right_count : Nat := 1
def small_619986_right_encoded : String := "00000001"
theorem small_619986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_619986_right_root small_619986_right_fuel small_619986_right_count small_619986_right_encoded = true := by
  decide +kernel
theorem small_619986_right_covered : CoveredBy scale carrier boxes small_619986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_619986_right_root small_619986_right_fuel small_619986_right_count small_619986_right_encoded small_619986_right_checked

theorem cover_619986 : CoveredBy scale carrier boxes root_619986 := by
  apply coveredBy_split_literal root_619986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_619991 small_619986_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_619991
  · exact small_619986_right_covered
#print axioms cover_619986

def root_619985 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619985 : CoveredBy scale carrier boxes root_619985 := by
  apply coveredBy_split_literal root_619985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_619986 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0235.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_619986
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0235.covered
#print axioms cover_619985

def root_619979 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_619979_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_619979_left_fuel : Nat := 1
def small_619979_left_count : Nat := 1
def small_619979_left_encoded : String := "00000000"
theorem small_619979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_619979_left_root small_619979_left_fuel small_619979_left_count small_619979_left_encoded = true := by
  decide +kernel
theorem small_619979_left_covered : CoveredBy scale carrier boxes small_619979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_619979_left_root small_619979_left_fuel small_619979_left_count small_619979_left_encoded small_619979_left_checked

theorem cover_619979 : CoveredBy scale carrier boxes root_619979 := by
  apply coveredBy_split_literal root_619979 small_619979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_619985 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_619979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_619985
#print axioms cover_619979

def root_619978 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619978 : CoveredBy scale carrier boxes root_619978 := by
  apply coveredBy_split_literal root_619978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_619979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0236.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_619979
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0236.covered
#print axioms cover_619978

def root_637956 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637956_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637956_right_fuel : Nat := 23
def small_637956_right_count : Nat := 221
def small_637956_right_encoded : String := "1151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120700F808A912FB12073D0408A91309120700FE050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03138670F80CFD9BFB0F350D0404548A090000000600000006000000020F34D1040000000204548A09138670FE000000070000000400000008000000011386ACF8000000010CFD9BFB000000070F34D10400000002000000070F34D0F604548A03138670F80CFD9BFB000000060F34D1040000000200000006000000010000000700000000135D44FD0CFD9BF70F350CF60000000004548A03138670F80CFD9BFB000000060F34D104000000020000000600000001000000070F34D0F60000000700000000000000030000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0300000008000000080F34D0F604548A03000000061386ACF8000000010CFD9BFB000000060000000500000000135D44FD0CFD9BF70F350CF60000000004548A030000000600000008000000060000000300000002120701040000000208A91309120700FE050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03138670F8045489FB1386AD0404548A09138670FE0C9A86F6000000070000000800000004000000080000000213867104000000020000000500000001000000080F34D0F604548A03138670F8045489FB0000000700000005000000010000000500000000135D44FD0CFD9BF70F350CF60000000004548A030000000800000005000000050000000300000004000000050000000112073CF80000000108A912FB12073D0408A91309120700FE050000FC135D80FD000000030CFD9BF70000000700000007000000070000000412073CFE00000004050000FC135D80FD000000030CFD9BF700000008000000050000000500000002120701040000000200000005120700F608A91303120700F808A912FB12073D0408A91309120700FE050000FC135D80FD00000003045489F7000000070000000600000006000000040000000600000002120701040000000208A91309120700FE050000FC135D80FD00000003000000050000000500000004000000050000000112073CF80000000108A912FB12073D0408A91309120700FE000000070000000400000005000000020000000500000000000000041151E909000000040000000500000003"
theorem small_637956_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637956_right_root small_637956_right_fuel small_637956_right_count small_637956_right_encoded = true := by
  decide +kernel
theorem small_637956_right_covered : CoveredBy scale carrier boxes small_637956_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637956_right_root small_637956_right_fuel small_637956_right_count small_637956_right_encoded small_637956_right_checked

theorem cover_637956 : CoveredBy scale carrier boxes root_637956 := by
  apply coveredBy_split_literal root_637956 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0237.root small_637956_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0237.covered
  · exact small_637956_right_covered
#print axioms cover_637956

def root_637950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637950_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637950_left_fuel : Nat := 1
def small_637950_left_count : Nat := 1
def small_637950_left_encoded : String := "00000002"
theorem small_637950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637950_left_root small_637950_left_fuel small_637950_left_count small_637950_left_encoded = true := by
  decide +kernel
theorem small_637950_left_covered : CoveredBy scale carrier boxes small_637950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637950_left_root small_637950_left_fuel small_637950_left_count small_637950_left_encoded small_637950_left_checked

theorem cover_637950 : CoveredBy scale carrier boxes root_637950 := by
  apply coveredBy_split_literal root_637950 small_637950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637956 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_637950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637956
#print axioms cover_637950

def root_637096 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637096_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637096_left_fuel : Nat := 23
def small_637096_left_count : Nat := 401
def small_637096_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A91303120700F808A912FD12073CFC0000000308A91309120700FE05000104135D44FB0CFD9BF70F350CF60000000004548A03138670F80CFD9BFD0F350CFC000000030000000600000006000000011386ACF800000001000000090F34D0F604548A03000000061386ACF8000000010CFD9BFD00000006000000060000000000000002135D80FB000000020CFD9BF70F350CF60000000004548A03138670F80CFD9BFD0F350CFC0000000304548A0900000006000000060F34D0FC0000000900000003000000011386ACF8000000010CFD9BFD0F350CFC0000000304548A090000000800000008000000090F34D0F604548A03000000061386ACF8000000010CFD9BFD0F350CFC00000003000000060F34D0FC0000000900000003000000000000000412073CFE0000000405000104135D44FB0CFD9BF70F350CF60000000004548A0300000006000000080000000600000002135D80FB000000020CFD9BF70F350CF60000000004548A030000000A0000000A0F34D0F60000000600000000120700FC08A91309120700FE0500010400000009000000090000000412073CFE00000004050001040000000A0000000A000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE05000104135D44FB0CFD9BF70F350CF600000000000000090000000900000002135D80FB000000020CFD9BF70F350CF6000000000CFD9C0300000009000000090F34D0F600000007000000000000000412073CFE0000000405000104135D44FB0CFD9BF7000000080F34D0F60CFD9C0300000008000000080000000000000002135D80FB000000020CFD9BF70F350CF6000000000CFD9C0300000008000000080F34D0F60CFD9C030F34D0F80CFD9BFD000000080F34D0FC0000000800000003000000010F350CF8000000010000000800000000120700FC08A91309120700FE000000090000000412073CFE0000000405000104135D44FB0CFD9BF70000000A0F34D0F60000000A0000000000000002135D80FB000000020CFD9BF70000000A0F34D0F60CFD9C030000000A0000000A0000000000000003120700F608A91303120700F808A912FD12073CFC0000000308A91309120700FE0500010400000006000000060000000400000006120700FC08A913090000000600000006000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE0500010400000007000000070000000412073CFE0000000405000104135D44FB045489F7000000070000000600000002135D80FB00000002045489F71386ACF6000000000CFD9C030F34D0F800000006000000010000000700000007120700FC08A91309120700FE000000090000000412073CFE0000000405000104135D44FB045489F71386ACF6000000000CFD9C030000000900000009138670F6000000060000000000000002135D80FB00000002045489F71386ACF6000000000CFD9C030F34D0F80000000A000000010F350CF800000001045489FD0000000700000009138670F60CFD9C030F34D0F800000006000000010F350CF80000000100000007000000000000000300000000000000041151E9090000000408A912F712073CF60000000008A91303120700F808A912FD00000006000000060000000112073CF80000000108A912FD00000008120700FC0000000800000003120700F608A91303120700F8000000060000000112073CF80000000108A912FD00000006120700FC0000000600000003000000001151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120700F808A91309120700FE05000104135D44FB0000000600000002135D80FB00000002050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03000000060000000700000006000000060000000412073CFE00000004000000060000000112073CF80000000108A91309120700FE000000070000000412073CFE0000000405000104135D44FB050000FC135D80FD000000030CFD9BF700000007000000070000000700000002135D80FB00000002050000FC00000008135D44FD0000000700000003120700F608A913030000000612073CF80000000108A91309000000070000000700000000000000041151E90900000004000000060000000300000002"
theorem small_637096_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637096_left_root small_637096_left_fuel small_637096_left_count small_637096_left_encoded = true := by
  decide +kernel
theorem small_637096_left_covered : CoveredBy scale carrier boxes small_637096_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637096_left_root small_637096_left_fuel small_637096_left_count small_637096_left_encoded small_637096_left_checked

theorem cover_637096 : CoveredBy scale carrier boxes root_637096 := by
  apply coveredBy_split_literal root_637096 small_637096_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637950 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_637096_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637950
#print axioms cover_637096

def root_637091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637091_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637091_right_fuel : Nat := 1
def small_637091_right_count : Nat := 1
def small_637091_right_encoded : String := "00000001"
theorem small_637091_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637091_right_root small_637091_right_fuel small_637091_right_count small_637091_right_encoded = true := by
  decide +kernel
theorem small_637091_right_covered : CoveredBy scale carrier boxes small_637091_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637091_right_root small_637091_right_fuel small_637091_right_count small_637091_right_encoded small_637091_right_checked

theorem cover_637091 : CoveredBy scale carrier boxes root_637091 := by
  apply coveredBy_split_literal root_637091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637096 small_637091_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637096
  · exact small_637091_right_covered
#print axioms cover_637091

def root_637090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637090_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637090_right_fuel : Nat := 19
def small_637090_right_count : Nat := 117
def small_637090_right_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A912FD12073CFC0000000308A913090000000800000008120700FC0000000900000003120700F608A912FD12073CFC0000000300000007120700FC08A9130900000009000000070000000300000000000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F70000000700000007000000041151E90900000004000000050000000300000002115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A912FB12073D0408A912FD12073CFC0000000308A91309120700FE050000F8135D81030CFD9BF7000000070000000500000001000000050000000400000005000000050000000200000005120700F608A912FB12073D0408A912FD00000005120700FC08A913090000000512073CFE00000004000000050000000300000002120701040000000208A912FD00000005120700FC08A913090000000512073CFE00000004000000050000000300000000000000041151E9090000000408A912F700000005120700F608A912FB00000005120701040000000200000005000000001151E8FD0000000500000003"
theorem small_637090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637090_right_root small_637090_right_fuel small_637090_right_count small_637090_right_encoded = true := by
  decide +kernel
theorem small_637090_right_covered : CoveredBy scale carrier boxes small_637090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637090_right_root small_637090_right_fuel small_637090_right_count small_637090_right_encoded small_637090_right_checked

theorem cover_637090 : CoveredBy scale carrier boxes root_637090 := by
  apply coveredBy_split_literal root_637090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637091 small_637090_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637091
  · exact small_637090_right_covered
#print axioms cover_637090

def root_637084 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637084_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_637084_left_fuel : Nat := 1
def small_637084_left_count : Nat := 1
def small_637084_left_encoded : String := "00000000"
theorem small_637084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_637084_left_root small_637084_left_fuel small_637084_left_count small_637084_left_encoded = true := by
  decide +kernel
theorem small_637084_left_covered : CoveredBy scale carrier boxes small_637084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_637084_left_root small_637084_left_fuel small_637084_left_count small_637084_left_encoded small_637084_left_checked

theorem cover_637084 : CoveredBy scale carrier boxes root_637084 := by
  apply coveredBy_split_literal root_637084 small_637084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637090 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_637084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637090
#print axioms cover_637084

def root_637083 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_637083 : CoveredBy scale carrier boxes root_637083 := by
  apply coveredBy_split_literal root_637083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637084 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0238.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637084
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0238.covered
#print axioms cover_637083

def root_619977 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619977 : CoveredBy scale carrier boxes root_619977 := by
  apply coveredBy_split_literal root_619977 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_619978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_637083 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_619978
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_637083
#print axioms cover_619977

def root_648543 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_648543 : CoveredBy scale carrier boxes root_648543 := by
  apply coveredBy_split_literal root_648543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0240.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0241.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0240.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0241.covered
#print axioms cover_648543

def root_648537 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648537_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648537_left_fuel : Nat := 1
def small_648537_left_count : Nat := 1
def small_648537_left_encoded : String := "00000004"
theorem small_648537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_648537_left_root small_648537_left_fuel small_648537_left_count small_648537_left_encoded = true := by
  decide +kernel
theorem small_648537_left_covered : CoveredBy scale carrier boxes small_648537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_648537_left_root small_648537_left_fuel small_648537_left_count small_648537_left_encoded small_648537_left_checked

theorem cover_648537 : CoveredBy scale carrier boxes root_648537 := by
  apply coveredBy_split_literal root_648537 small_648537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_648543 coord4 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_648537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_648543
#print axioms cover_648537

def root_648077 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648077_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648077_left_fuel : Nat := 21
def small_648077_left_count : Nat := 219
def small_648077_left_encoded : String := "13D7B0FF067ECE8312EA58F8022A457B13E201040B4D43F610804CF7000000000B4D43FC10804CFD0000000300000009108010FD014001080000000913F614FF000000040569AC431340D4F8033F67BB0000000513BBF504000000020000000900000001134110F800000001033F67BB0000000913BBF504000000020BF3E576000000070000000900000003000000090000000213E1C504000000020B4D43F610804CF7000000000B4D43FC10804CFD00000003014001080000000913F614FF000000040569AC4300000008134110F8000000010115233B0000000900000005108010FD0140010813F5D8FF0569AC431340D4F80115233B000000090000000A00000001134110F8000000010115233B000000070000000A0000000413F614FF000000040569AC431340D4F80115233B13F895040BF3E576100928F700000000000000081008ECF700000009000000000000000213F85904000000020BF3E576000000081008ECF7000000080000000000000001134110F8000000010115233B13F895040BF3E576100928F7000000000AA6A27C10EDACFD0000000301E001080000000700000008000000071008ECF70AA6A27C0000000900000007000000000000000213F85904000000020BF3E576100928F7000000000AA6A27C00000008000000071008ECF70AA6A27C10EDACFD0000000301E001080000000700000008000000070000000000000003108010F70B4D43FC10804CFD0000000300000009108010FD014001080000000913F614FF000000040569AC4300000009134110F8000000010000000900000003000000000000000112EA94F800000001022A457B13E201040B4D43F610804CF7000000000B4D43FC10804CFD0000000300000009108010FD014001080000000713F614FF000000040793F0C3128220F800000007000000010000000700000003000000090000000213E1C504000000020B4D43F610804CF7000000000B4D43FC10804CFD0000000300000005108010FD014001080000000713F614FF000000040793F0C3128220F80115233B0000000700000005000000010000000500000003108010F70B4D43FC10804CFD0000000300000009108010FD014001080000000713F614FF000000040793F0C3128220F80115233B0000000913F85904000000020AA6A27600000007000000060000000100000007000000030000000000000004"
theorem small_648077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_648077_left_root small_648077_left_fuel small_648077_left_count small_648077_left_encoded = true := by
  decide +kernel
theorem small_648077_left_covered : CoveredBy scale carrier boxes small_648077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_648077_left_root small_648077_left_fuel small_648077_left_count small_648077_left_encoded small_648077_left_checked

theorem cover_648077 : CoveredBy scale carrier boxes root_648077 := by
  apply coveredBy_split_literal root_648077 small_648077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_648537 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_648077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_648537
#print axioms cover_648077

def root_648072 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648072_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_648072_right_fuel : Nat := 1
def small_648072_right_count : Nat := 1
def small_648072_right_encoded : String := "00000003"
theorem small_648072_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_648072_right_root small_648072_right_fuel small_648072_right_count small_648072_right_encoded = true := by
  decide +kernel
theorem small_648072_right_covered : CoveredBy scale carrier boxes small_648072_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_648072_right_root small_648072_right_fuel small_648072_right_count small_648072_right_encoded small_648072_right_checked

theorem cover_648072 : CoveredBy scale carrier boxes root_648072 := by
  apply coveredBy_split_literal root_648072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_648077 small_648072_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_648077
  · exact small_648072_right_covered
#print axioms cover_648072

def root_647826 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647826_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647826_left_fuel : Nat := 17
def small_647826_left_count : Nat := 117
def small_647826_left_encoded : String := "0F878CFD000000030280010813D7B0FF067ECE8312EA58F8022A457B0000000913E1C504000000020B4D43F610804CF70000000000000008000000090000000112EA94F800000001022A457B0000000913E1C504000000020B4D43F610804CF70000000000000005000000050000000413D7ECFF00000004067ECE8312EA58F8022A457B13E201040B4D43F610804CF7000000000DE7C9FC0E6014FD00000003000000080E5FD8FD03C001080000000913A54CFF000000040569AC43000000060000000A00000003000000090000000213E1C504000000020B4D43F610804CF7000000000DE7C9FC000000080E5FD8FD0000000800000003108010F70DE7C9FC0E6014FD00000003000000080E5FD8FD03C001080000000913A54CFF000000040569AC4300000008134110F8000000010115233B000000090000000500000003000000000000000112EA94F800000001022A457B13E201040B4D43F610804CF7000000000DE7C9FC0E6014FD00000003000000050E5FD8FD03C0010813A510FF0793F0C300000009000000050000000413A54CFF000000040793F0C30000000A0000000500000003108010F70DE7C9FC0000000A0E5FD8FD03C00108000000090000000A00000003000000000000000200000005"
theorem small_647826_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647826_left_root small_647826_left_fuel small_647826_left_count small_647826_left_encoded = true := by
  decide +kernel
theorem small_647826_left_covered : CoveredBy scale carrier boxes small_647826_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647826_left_root small_647826_left_fuel small_647826_left_count small_647826_left_encoded small_647826_left_checked

theorem cover_647826 : CoveredBy scale carrier boxes root_647826 := by
  apply coveredBy_split_literal root_647826 small_647826_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_648072 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_647826_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_648072
#print axioms cover_647826

def root_647821 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647821_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647821_right_fuel : Nat := 1
def small_647821_right_count : Nat := 1
def small_647821_right_encoded : String := "00000000"
theorem small_647821_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647821_right_root small_647821_right_fuel small_647821_right_count small_647821_right_encoded = true := by
  decide +kernel
theorem small_647821_right_covered : CoveredBy scale carrier boxes small_647821_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647821_right_root small_647821_right_fuel small_647821_right_count small_647821_right_encoded small_647821_right_checked

theorem cover_647821 : CoveredBy scale carrier boxes root_647821 := by
  apply coveredBy_split_literal root_647821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_647826 small_647821_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_647826
  · exact small_647821_right_covered
#print axioms cover_647821

def root_647095 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647095_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647095_left_fuel : Nat := 23
def small_647095_left_count : Nat := 345
def small_647095_left_encoded : String := "0F878CF7000000000C9A86FC0F878CFD000000030280010813D7B0FF067ECE8312EA58F8000000080000000112EA94F800000001022A457B13E201040DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FC0E6014FD00000003000000050E5FD8FD014001080000000913F614FF000000040793F0C30000000800000005000000030000000000000002000000050000000413D7ECFF00000004067ECE8312EA58F8022A457B13E201040DE7C9F6000000060E5FD8F7000000080000000000000002000000080000000112EA94F800000001022A457B13E201040DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FC0E6014FD0000000300000005000000050000000000000002000000050F8750FD0280010813D7B0FF067ECE8312EA58F8022A457B13E201040DE7C9F60E6014F7000000000B4D43FC00000008000000060E5FD8F70B4D43FC10804CFD000000030140010813F5D8FF000000080000000413F614FF000000040569AC4300000006134110F800000001033F67BB0000000600000008108010FD0140010813F5D8FF0569AC431340D4F8033F67BB000000060000000800000001000000070000000413F614FF000000040569AC4300000006134110F800000001033F67BB0000000613BBF504000000020D412876000000060EFA10F7000000070000000000000003000000000000000213E1C504000000020DE7C9F60E6014F700000000000000080E5FD8F70B4D43FC00000008108010FD0140010813F5D8FF0569AC4300000008134110F8000000010000000A0000000413F614FF000000040569AC4300000008134110F8000000010115233B13F895040D412876000000070EFA10F70AA6A27C000000080000000700000000000000020000000500000003000000000000000112EA94F800000001022A457B13E201040DE7C9F60E6014F7000000000B4D43FC10804CFD000000030140010813F5D8FF0793F0C300000008000000050000000413F614FF000000040793F0C30000000600000005108010FD00000007000000030E5FD8F70B4D43FC10804CFD000000030140010813F5D8FF0793F0C300000009000000070000000413F614FF000000040793F0C3128220F8033F67BB13BC31040D412876000000060000000900000002000000050000000100000005108010FD0000000700000003000000000000000213E1C504000000020DE7C9F60E6014F70000000000000005000000050000000413D7ECFF00000004067ECE8312EA58F8022A457B13E201040DE7C9F6000000060E5FD8F70B4D43FC10804CFD000000030000000600000006000000000000000213E1C504000000020DE7C9F60E6014F700000000000000080E5FD8F70B4D43FC10804CFD0000000300000008108010FD03C0010813A510FF0569AC4300000008134110F8000000010115233B13F895040D412876000000060EFA10F70AA6A27C00000008000000060000000000000002000000050000000413A54CFF000000040569AC4300000006134110F8000000010115233B000000060000000500000003000000000000000112EA94F800000001022A457B13E201040DE7C9F60E6014F7000000000B4D43FC10804CFD0000000300000005000000060E5FD8F70B4D43FC10804CFD0000000303C0010813A510FF0793F0C3128220F8033F67BB000000060000000500000001000000050000000413A54CFF000000040793F0C30000000600000005108010FD03C0010813A510FF0793F0C3128220F8033F67BB0000000613BBF504000000020D412876000000060EFA10F7000000070000000000000001000000070000000413A54CFF000000040793F0C30000000612825CF800000001033F67BB00000006000000050000000300000000000000020000000500000003"
theorem small_647095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647095_left_root small_647095_left_fuel small_647095_left_count small_647095_left_encoded = true := by
  decide +kernel
theorem small_647095_left_covered : CoveredBy scale carrier boxes small_647095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647095_left_root small_647095_left_fuel small_647095_left_count small_647095_left_encoded small_647095_left_checked

theorem cover_647095 : CoveredBy scale carrier boxes root_647095 := by
  apply coveredBy_split_literal root_647095 small_647095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_647821 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_647095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_647821
#print axioms cover_647095

def root_647089 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647089_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647089_left_fuel : Nat := 1
def small_647089_left_count : Nat := 1
def small_647089_left_encoded : String := "00000003"
theorem small_647089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647089_left_root small_647089_left_fuel small_647089_left_count small_647089_left_encoded = true := by
  decide +kernel
theorem small_647089_left_covered : CoveredBy scale carrier boxes small_647089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647089_left_root small_647089_left_fuel small_647089_left_count small_647089_left_encoded small_647089_left_checked

theorem cover_647089 : CoveredBy scale carrier boxes root_647089 := by
  apply coveredBy_split_literal root_647089 small_647089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_647095 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_647089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_647095
#print axioms cover_647089

def root_647088 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647088_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647088_right_fuel : Nat := 9
def small_647088_right_count : Nat := 21
def small_647088_right_encoded : String := "0F34D0FC0C9A86F60F878CF7000000000280010800000008000000080F8750F7028001080000000913D7ECFF00000004067ECE8312EA58F8022A457B000000090000000500000001000000050000000000000003"
theorem small_647088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647088_right_root small_647088_right_fuel small_647088_right_count small_647088_right_encoded = true := by
  decide +kernel
theorem small_647088_right_covered : CoveredBy scale carrier boxes small_647088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647088_right_root small_647088_right_fuel small_647088_right_count small_647088_right_encoded small_647088_right_checked

theorem cover_647088 : CoveredBy scale carrier boxes root_647088 := by
  apply coveredBy_split_literal root_647088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_647089 small_647088_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_647089
  · exact small_647088_right_covered
#print axioms cover_647088

def root_647082 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647082_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_647082_left_fuel : Nat := 1
def small_647082_left_count : Nat := 1
def small_647082_left_encoded : String := "00000002"
theorem small_647082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_647082_left_root small_647082_left_fuel small_647082_left_count small_647082_left_encoded = true := by
  decide +kernel
theorem small_647082_left_covered : CoveredBy scale carrier boxes small_647082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_647082_left_root small_647082_left_fuel small_647082_left_count small_647082_left_encoded small_647082_left_checked

theorem cover_647082 : CoveredBy scale carrier boxes root_647082 := by
  apply coveredBy_split_literal root_647082 small_647082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_647088 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_647082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_647088
#print axioms cover_647082

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016
