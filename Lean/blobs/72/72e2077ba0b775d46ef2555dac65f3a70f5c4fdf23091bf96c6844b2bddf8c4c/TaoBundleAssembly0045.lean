import TaoBundleChunkBatch0184
import TaoBundleChunkBatch0185
import TaoBundleChunkBatch0186
import TaoBundleChunkBatch0187
import TaoBundleChunkBatch0188
import TaoBundleChunkBatch0189
import TaoBundleChunkBatch0190
import TaoBundleChunkBatch0191
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045
def root_1898422 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898422_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898422_right_fuel : Nat := 23
def small_1898422_right_count : Nat := 235
def small_1898422_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A9130312070102000000010000000512073D0208A91305120700FA08A912FF00000005120700FE00000008000000040000000212073CFA0000000208A912FF12073CFE00000004050000FC135D81070CFD9BF7000000050F34D0F60CFD9C03000000050000000A000000000000000300000005120700FE050000FC135D81070CFD9BF70F350CF6000000000CFD9C0300000007000000080F34D0F60CFD9C030F34D102000000010CFD9C0500000005000000070F350D020CFD9C050000000800000007000000010000000000000003135D4507000000030CFD9BF7000000080F34D0F60CFD9C030F34D102000000010000000800000008000000000000000400000001120700F608A91303120701020000000108A91305120700FA08A912FF00000005120700FE050000FC135D8107000000050000000300000005000000040000000212073CFA0000000208A912FF00000005120700FE050000FC135D8107045489F71386ACF60000000004548A03000000051386AD020CFD9C05000000050F350CFA000000020000000500000001138670F604548A0313867102000000010CFD9C05000000050F350CFA00000002000000051386AD020CFD9C050F34D0FA0000000A000000020F350CFA00000002045489FF00000007138670FE0C9A86FA0000000A0000000700000004000000010000000000000003135D450700000003045489F700000005138670F60000000A000000000000000412073D0208A91305120700FA08A912FF0000000A120700FE050000FC135D8107045489F700000008000000080000000300000008000000040000000212073CFA0000000208A912FF12073CFE00000004050000FC135D8107045489F70000000A0000000A000000030000000A120700FE050000FC135D8107045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA00000002045489FF00000007000000070F350D020CFD9C050F34D0FA00000008000000020F350CFA00000002045489FF000000070000000700000001138670F60CFD9C030F34D102000000010CFD9C050000000A0000000A0F350D020CFD9C050000000A0000000A000000010000000000000003135D450700000003045489F71386ACF6000000000CFD9C030F34D102000000010000000A00000008138670F60CFD9C030F34D102000000010000000A0000000A000000000000000400000001000000001151E8FF0000000500000004"
theorem small_1898422_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1898422_right_root small_1898422_right_fuel small_1898422_right_count small_1898422_right_encoded = true := by
  decide +kernel
theorem small_1898422_right_covered : CoveredBy scale carrier boxes small_1898422_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1898422_right_root small_1898422_right_fuel small_1898422_right_count small_1898422_right_encoded small_1898422_right_checked

theorem cover_1898422 : CoveredBy scale carrier boxes root_1898422 := by
  apply coveredBy_split_literal root_1898422 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0736.root small_1898422_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0736.covered
  · exact small_1898422_right_covered
#print axioms cover_1898422

def root_1898417 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898417_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898417_right_fuel : Nat := 1
def small_1898417_right_count : Nat := 1
def small_1898417_right_encoded : String := "00000002"
theorem small_1898417_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1898417_right_root small_1898417_right_fuel small_1898417_right_count small_1898417_right_encoded = true := by
  decide +kernel
theorem small_1898417_right_covered : CoveredBy scale carrier boxes small_1898417_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1898417_right_root small_1898417_right_fuel small_1898417_right_count small_1898417_right_encoded small_1898417_right_checked

theorem cover_1898417 : CoveredBy scale carrier boxes root_1898417 := by
  apply coveredBy_split_literal root_1898417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1898422 small_1898417_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1898422
  · exact small_1898417_right_covered
#print axioms cover_1898417

def root_1898416 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898416_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898416_right_fuel : Nat := 25
def small_1898416_right_count : Nat := 363
def small_1898416_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F712073CF60000000008A9130312070102000000010000000512073D0208A91307120700FC08A912FF00000005120700FE00000006000000040000000312073CFC0000000308A912FF12073CFE00000004050000FA135D81050CFD9BF7000000050F34D0F60CFD9C03000000050F350D020000000700000001000000000000000200000005120700FE050000FA135D81050CFD9BF7000000060F34D0F60CFD9C030F34D1020000000100000006000000060000000000000002000000060000000400000001120700F608A91303120701020000000108A91307120700FC08A912FF00000005120700FE050000FA135D8105000000050000000200000005000000040000000312073CFC0000000308A912FF00000005120700FE050000FA135D8105045489F71386ACF60000000004548A03000000051386AD020CFD9C07000000050000000600000001138670F604548A0313867102000000010CFD9C07000000050F350CFC00000003000000051386AD020CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF00000007138670FE0C9A86FC000000060000000700000004000000010000000000000002135D450500000002045489F700000005138670F604548A03000000051386AD020CFD9C07000000050000000600000001000000000000000412073D0208A91307120700FC08A912FF00000009120700FE050000FA135D8105045489F700000006000000090000000200000006000000040000000312073CFC0000000308A912FF12073CFE00000004050000FA135D8105045489F71386ACF6000000000CFD9C030F34D10200000001000000050F350D020CFD9C07000000090000000700000001138670F60CFD9C030F34D102000000010CFD9C070000000500000007000000090000000000000002135D450500000002045489F71386ACF6000000000CFD9C03000000050000000900000009120700FE050000FA135D8105045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C0700000006000000060F350D020CFD9C07000000060000000600000001138670F60CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF00000007138670FE00000006000000040F350D020CFD9C07000000090F350CFC00000003045489FF0000000700000009000000010000000000000002135D450500000002045489F700000006138670F60CFD9C030F34D102000000010000000600000009000000000000000400000001000000001151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A913030000000512073D0208A912FF00000005120700FE050000FA135D8105050000FC00000007135D4507000000030000000700000002135D450500000002050000FC00000006135D450700000003000000070000000400000001120700F608A91303120701020000000108A912FF00000005120700FE050000FA135D8105050000FC000000070000000700000002135D450500000002050000FC00000007000000070000000412073D0208A912FF12073CFE00000004050000FA135D8105050000FC000000070000000A00000002135D450500000002050000FC00000007135D45070000000300000007120700FE050000FA135D8105050000FC135D8107045489F700000007138670F60CFD9C03000000070F350D0200000007000000010000000000000003135D450700000003045489F700000007138670F60CFD9C03000000070000000A0000000000000002135D450500000002050000FC135D8107045489F700000007138670F60CFD9C03000000070F350D0200000007000000010000000000000003135D450700000003045489F700000007000000070000000400000001000000001151E8FF08A912F7000000050000000700000004"
theorem small_1898416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1898416_right_root small_1898416_right_fuel small_1898416_right_count small_1898416_right_encoded = true := by
  decide +kernel
theorem small_1898416_right_covered : CoveredBy scale carrier boxes small_1898416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1898416_right_root small_1898416_right_fuel small_1898416_right_count small_1898416_right_encoded small_1898416_right_checked

theorem cover_1898416 : CoveredBy scale carrier boxes root_1898416 := by
  apply coveredBy_split_literal root_1898416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1898417 small_1898416_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1898417
  · exact small_1898416_right_covered
#print axioms cover_1898416

def root_1898411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898411_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1898411_right_fuel : Nat := 1
def small_1898411_right_count : Nat := 1
def small_1898411_right_encoded : String := "00000001"
theorem small_1898411_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1898411_right_root small_1898411_right_fuel small_1898411_right_count small_1898411_right_encoded = true := by
  decide +kernel
theorem small_1898411_right_covered : CoveredBy scale carrier boxes small_1898411_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1898411_right_root small_1898411_right_fuel small_1898411_right_count small_1898411_right_encoded small_1898411_right_checked

theorem cover_1898411 : CoveredBy scale carrier boxes root_1898411 := by
  apply coveredBy_split_literal root_1898411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1898416 small_1898411_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1898416
  · exact small_1898411_right_covered
#print axioms cover_1898411

def root_1897111 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1897111 : CoveredBy scale carrier boxes root_1897111 := by
  apply coveredBy_split_literal root_1897111 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1898411 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1898411
#print axioms cover_1897111

def root_1897105 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1897105_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1897105_left_fuel : Nat := 1
def small_1897105_left_count : Nat := 1
def small_1897105_left_encoded : String := "00000000"
theorem small_1897105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1897105_left_root small_1897105_left_fuel small_1897105_left_count small_1897105_left_encoded = true := by
  decide +kernel
theorem small_1897105_left_covered : CoveredBy scale carrier boxes small_1897105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1897105_left_root small_1897105_left_fuel small_1897105_left_count small_1897105_left_encoded small_1897105_left_checked

theorem cover_1897105 : CoveredBy scale carrier boxes root_1897105 := by
  apply coveredBy_split_literal root_1897105 small_1897105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1897111 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1897105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1897111
#print axioms cover_1897105

def root_1897104 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1897104_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1897104_right_fuel : Nat := 21
def small_1897104_right_count : Nat := 159
def small_1897104_right_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91305120700FA08A91307120700FC08A912FF000000060000000800000003000000080000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A912FF00000007000000071151E8FF0000000500000004000000031151E907000000030A0000FE115224FF00000004000000081151E8FF0000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A9130700000006000000061151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005000000081151E8FF0000000500000004115225030A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91303120701020000000108A91305120700FA08A91307120700FC08A912FF12073CFE0000000400000005000000050000000300000005000000020000000512073D0208A91305120700FA08A91307120700FC08A912FF12073CFE00000004000000050000000500000003000000050000000212073CFA0000000208A913070000000512073CFC0000000308A912FF00000005120700FE050000F6135D80F7000000000CFD9C0300000005000000060000000500000004000000011151E8FF08A913031207010200000001000000050000000500000004000000031151E9070000000300000005000000021151E905000000020A0000FC1152250700000005000000031151E907000000030A0000FE115224FF0000000408A913030000000512073D0200000005000000011151E8FF00000005000000040000000100000000"
theorem small_1897104_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1897104_right_root small_1897104_right_fuel small_1897104_right_count small_1897104_right_encoded = true := by
  decide +kernel
theorem small_1897104_right_covered : CoveredBy scale carrier boxes small_1897104_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1897104_right_root small_1897104_right_fuel small_1897104_right_count small_1897104_right_encoded small_1897104_right_checked

theorem cover_1897104 : CoveredBy scale carrier boxes root_1897104 := by
  apply coveredBy_split_literal root_1897104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1897105 small_1897104_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1897105
  · exact small_1897104_right_covered
#print axioms cover_1897104

def root_1905918 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1905918_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1905918_right_fuel : Nat := 23
def small_1905918_right_count : Nat := 481
def small_1905918_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC08A91309120700FE045489F71386ACF60000000000000008138670F60CFD9C030F34D102000000010000000700000008000000000000000412073CFE00000004045489F71386ACF6000000000CFD9C030F34D10200000001000000070F350D020000000800000001000000070000000312073CFC0000000308A91309120700FE045489F7000000080000000800000004000000080000000212073CFA0000000208A91307120700FC08A91309120700FE045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA04548A07138670FC04548A090000000600000006000000031386ACFC0000000304548A09138670FE000000060000000400000006000000020F350CFA00000002000000060F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020000000600000001138670F60CFD9C030F34D102000000010CFD9C050F34D0FA04548A07000000071386ACFC0000000304548A090000000900000007000000020F350CFA0000000204548A07000000091386ACFC0000000304548A0900000006000000060F350D020CFD9C05000000090F350CFA000000020000000900000001000000000000000412073CFE00000004045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA04548A07000000071386ACFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA0000000204548A07138670FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FA0000000700000006000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FA0F878D050C9A86FE000000060000000800000002000000060F350D020CFD9C050F34D0FA04548A07138670FC0CFD9C0900000008000000070000000300000008000000020F350CFA0000000204548A07138670FC0CFD9C09000000090F350CFE0000000400000009000000031386ACFC000000030CFD9C090F34D0FE00000006000000040000000800000001138670F60CFD9C030F34D102000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07138670FC00000007000000031386ACFC000000030CFD9C090F34D0FE0C9A86FA0000000700000006000000040F350CFE000000040C9A86FA00000007000000090F350D020CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC00000009000000031386ACFC000000030CFD9C09000000090000000800000001000000000000000312073CFC0000000308A91309120700FE045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000080F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D0500000008000000020000000600000004000000080F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030000000800000001138670F60CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A09138670FE000000080000000400000008000000030F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D05022A457700000006000000090000000200000006000000041386ACFE000000040C9A86FA0F878D05022A457700000006000000080000000200000006000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07022A457700000006000000080000000300000008000000020F875105000000020C9A86FC000000060F8751070000000300000006000000041386ACFE000000040C9A86FA000000080F875105000000020C9A86FC00000006000000080F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D0FC04548A090000000900000008000000030F350CFC0000000304548A09138670FE0C9A87020000000800000008000000040000000800000001000000000000000412073CFE00000004045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FA0000000800000006000000030F350CFC000000030CFD9C090F34D0FE0000000800000004000000080F350D020CFD9C05000000080F350CFA000000020CFD9C07000000080000000800000001138670F60CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070000000800000008000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A86FA000000080F8751050000000200000006000000040F350CFE000000040C9A86FA000000080F875105000000020C9A86FE0000000600000008000000030F350CFC000000030CFD9C090F34D0FE0000000800000004000000080F350D020CFD9C05000000080F350CFA000000020CFD9C07000000080F350CFC0000000300000008000000010000000000000001"
theorem small_1905918_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1905918_right_root small_1905918_right_fuel small_1905918_right_count small_1905918_right_encoded = true := by
  decide +kernel
theorem small_1905918_right_covered : CoveredBy scale carrier boxes small_1905918_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1905918_right_root small_1905918_right_fuel small_1905918_right_count small_1905918_right_encoded small_1905918_right_checked

theorem cover_1905918 : CoveredBy scale carrier boxes root_1905918 := by
  apply coveredBy_split_literal root_1905918 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0739.root small_1905918_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0739.covered
  · exact small_1905918_right_covered
#print axioms cover_1905918

def root_1905913 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1905913_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1905913_right_fuel : Nat := 1
def small_1905913_right_count : Nat := 1
def small_1905913_right_encoded : String := "00000000"
theorem small_1905913_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1905913_right_root small_1905913_right_fuel small_1905913_right_count small_1905913_right_encoded = true := by
  decide +kernel
theorem small_1905913_right_covered : CoveredBy scale carrier boxes small_1905913_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1905913_right_root small_1905913_right_fuel small_1905913_right_count small_1905913_right_encoded small_1905913_right_checked

theorem cover_1905913 : CoveredBy scale carrier boxes root_1905913 := by
  apply coveredBy_split_literal root_1905913 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1905918 small_1905913_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1905918
  · exact small_1905913_right_covered
#print axioms cover_1905913

def root_1904631 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1904631 : CoveredBy scale carrier boxes root_1904631 := by
  apply coveredBy_split_literal root_1904631 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0738.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1905913 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0738.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1905913
#print axioms cover_1904631

def root_1904626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904626_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904626_right_fuel : Nat := 1
def small_1904626_right_count : Nat := 1
def small_1904626_right_encoded : String := "00000004"
theorem small_1904626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1904626_right_root small_1904626_right_fuel small_1904626_right_count small_1904626_right_encoded = true := by
  decide +kernel
theorem small_1904626_right_covered : CoveredBy scale carrier boxes small_1904626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1904626_right_root small_1904626_right_fuel small_1904626_right_count small_1904626_right_encoded small_1904626_right_checked

theorem cover_1904626 : CoveredBy scale carrier boxes root_1904626 := by
  apply coveredBy_split_literal root_1904626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904631 small_1904626_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904631
  · exact small_1904626_right_covered
#print axioms cover_1904626

def root_1909729 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1909729 : CoveredBy scale carrier boxes root_1909729 := by
  apply coveredBy_split_literal root_1909729 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0740.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0741.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0740.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0741.covered
#print axioms cover_1909729

def root_1909723 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1909723_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1909723_left_fuel : Nat := 1
def small_1909723_left_count : Nat := 1
def small_1909723_left_encoded : String := "00000004"
theorem small_1909723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1909723_left_root small_1909723_left_fuel small_1909723_left_count small_1909723_left_encoded = true := by
  decide +kernel
theorem small_1909723_left_covered : CoveredBy scale carrier boxes small_1909723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1909723_left_root small_1909723_left_fuel small_1909723_left_count small_1909723_left_encoded small_1909723_left_checked

theorem cover_1909723 : CoveredBy scale carrier boxes root_1909723 := by
  apply coveredBy_split_literal root_1909723 small_1909723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1909729 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1909723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1909729
#print axioms cover_1909723

def root_1904625 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1904625 : CoveredBy scale carrier boxes root_1904625 := by
  apply coveredBy_split_literal root_1904625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1909723 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1909723
#print axioms cover_1904625

def root_1904620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904620_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904620_right_fuel : Nat := 1
def small_1904620_right_count : Nat := 1
def small_1904620_right_encoded : String := "00000003"
theorem small_1904620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1904620_right_root small_1904620_right_fuel small_1904620_right_count small_1904620_right_encoded = true := by
  decide +kernel
theorem small_1904620_right_covered : CoveredBy scale carrier boxes small_1904620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1904620_right_root small_1904620_right_fuel small_1904620_right_count small_1904620_right_encoded small_1904620_right_checked

theorem cover_1904620 : CoveredBy scale carrier boxes root_1904620 := by
  apply coveredBy_split_literal root_1904620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904625 small_1904620_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904625
  · exact small_1904620_right_covered
#print axioms cover_1904620

def root_1904619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1904619 : CoveredBy scale carrier boxes root_1904619 := by
  apply coveredBy_split_literal root_1904619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904620 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0742.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904620
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0742.covered
#print axioms cover_1904619

def root_1904614 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904614_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904614_right_fuel : Nat := 1
def small_1904614_right_count : Nat := 1
def small_1904614_right_encoded : String := "00000002"
theorem small_1904614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1904614_right_root small_1904614_right_fuel small_1904614_right_count small_1904614_right_encoded = true := by
  decide +kernel
theorem small_1904614_right_covered : CoveredBy scale carrier boxes small_1904614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1904614_right_root small_1904614_right_fuel small_1904614_right_count small_1904614_right_encoded small_1904614_right_checked

theorem cover_1904614 : CoveredBy scale carrier boxes root_1904614 := by
  apply coveredBy_split_literal root_1904614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904619 small_1904614_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904619
  · exact small_1904614_right_covered
#print axioms cover_1904614

def root_1915615 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1915615 : CoveredBy scale carrier boxes root_1915615 := by
  apply coveredBy_split_literal root_1915615 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0743.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0744.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0743.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0744.covered
#print axioms cover_1915615

def root_1915609 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1915609_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1915609_left_fuel : Nat := 1
def small_1915609_left_count : Nat := 1
def small_1915609_left_encoded : String := "00000002"
theorem small_1915609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1915609_left_root small_1915609_left_fuel small_1915609_left_count small_1915609_left_encoded = true := by
  decide +kernel
theorem small_1915609_left_covered : CoveredBy scale carrier boxes small_1915609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1915609_left_root small_1915609_left_fuel small_1915609_left_count small_1915609_left_encoded small_1915609_left_checked

theorem cover_1915609 : CoveredBy scale carrier boxes root_1915609 := by
  apply coveredBy_split_literal root_1915609 small_1915609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1915615 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1915609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1915615
#print axioms cover_1915609

def root_1904613 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1904613 : CoveredBy scale carrier boxes root_1904613 := by
  apply coveredBy_split_literal root_1904613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1915609 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904614
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1915609
#print axioms cover_1904613

def root_1904608 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904608_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1904608_right_fuel : Nat := 1
def small_1904608_right_count : Nat := 1
def small_1904608_right_encoded : String := "00000001"
theorem small_1904608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1904608_right_root small_1904608_right_fuel small_1904608_right_count small_1904608_right_encoded = true := by
  decide +kernel
theorem small_1904608_right_covered : CoveredBy scale carrier boxes small_1904608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1904608_right_root small_1904608_right_fuel small_1904608_right_count small_1904608_right_encoded small_1904608_right_checked

theorem cover_1904608 : CoveredBy scale carrier boxes root_1904608 := by
  apply coveredBy_split_literal root_1904608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904613 small_1904608_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904613
  · exact small_1904608_right_covered
#print axioms cover_1904608

def root_1903068 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1903068 : CoveredBy scale carrier boxes root_1903068 := by
  apply coveredBy_split_literal root_1903068 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0737.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1904608 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0737.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1904608
#print axioms cover_1903068

def root_1903062 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1903062_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1903062_left_fuel : Nat := 1
def small_1903062_left_count : Nat := 1
def small_1903062_left_encoded : String := "00000000"
theorem small_1903062_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1903062_left_root small_1903062_left_fuel small_1903062_left_count small_1903062_left_encoded = true := by
  decide +kernel
theorem small_1903062_left_covered : CoveredBy scale carrier boxes small_1903062_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1903062_left_root small_1903062_left_fuel small_1903062_left_count small_1903062_left_encoded small_1903062_left_checked

theorem cover_1903062 : CoveredBy scale carrier boxes root_1903062 := by
  apply coveredBy_split_literal root_1903062 small_1903062_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1903068 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1903062_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1903068
#print axioms cover_1903062

def root_1903061 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1903061 : CoveredBy scale carrier boxes root_1903061 := by
  apply coveredBy_split_literal root_1903061 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1903062 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0745.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1903062
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0745.covered
#print axioms cover_1903061

def root_1897103 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1897103 : CoveredBy scale carrier boxes root_1897103 := by
  apply coveredBy_split_literal root_1897103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1897104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1903061 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1897104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1903061
#print axioms cover_1897103

def root_1923754 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1923754 : CoveredBy scale carrier boxes root_1923754 := by
  apply coveredBy_split_literal root_1923754 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0747.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0748.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0747.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0748.covered
#print axioms cover_1923754

def root_1923748 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923748_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923748_left_fuel : Nat := 1
def small_1923748_left_count : Nat := 1
def small_1923748_left_encoded : String := "00000000"
theorem small_1923748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1923748_left_root small_1923748_left_fuel small_1923748_left_count small_1923748_left_encoded = true := by
  decide +kernel
theorem small_1923748_left_covered : CoveredBy scale carrier boxes small_1923748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1923748_left_root small_1923748_left_fuel small_1923748_left_count small_1923748_left_encoded small_1923748_left_checked

theorem cover_1923748 : CoveredBy scale carrier boxes root_1923748 := by
  apply coveredBy_split_literal root_1923748 small_1923748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923754 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1923748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923754
#print axioms cover_1923748

def root_1929009 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1929009 : CoveredBy scale carrier boxes root_1929009 := by
  apply coveredBy_split_literal root_1929009 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0749.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0750.root coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0749.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0750.covered
#print axioms cover_1929009

def root_1929004 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1929004_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1929004_right_fuel : Nat := 1
def small_1929004_right_count : Nat := 1
def small_1929004_right_encoded : String := "00000004"
theorem small_1929004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1929004_right_root small_1929004_right_fuel small_1929004_right_count small_1929004_right_encoded = true := by
  decide +kernel
theorem small_1929004_right_covered : CoveredBy scale carrier boxes small_1929004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1929004_right_root small_1929004_right_fuel small_1929004_right_count small_1929004_right_encoded small_1929004_right_checked

theorem cover_1929004 : CoveredBy scale carrier boxes root_1929004 := by
  apply coveredBy_split_literal root_1929004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1929009 small_1929004_right_root coord4 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1929009
  · exact small_1929004_right_covered
#print axioms cover_1929004

def root_1928526 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1928526_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1928526_left_fuel : Nat := 21
def small_1928526_left_count : Nat := 225
def small_1928526_left_encoded : String := "13D7B10900000004067ECE7712EA94F600000000022A458313E1C502000000010B4D43FA10804D050B4D43FC10804D0700000005000000031080110700000003000000080000000210801105000000020B4D43FC10804D07014001080000000613F615090793F0B700000005128220F60115234300000005000000060000000000000004000000031080110700000003014001080000000613F615090793F0B700000006128220F60115234313F85902000000010AA6A27A000000080000000600000008000000000000000413E201020B4D43FA10804D050B4D43FC10804D070000000800000003000000080000000210801105000000020B4D43FC10804D07014001080000000613F615090793F0B700000006128220F600000006000000000000000400000003000000080000000112EA58F6022A458313E1C502000000010B4D43FA10804D050B4D43FC10804D07014001080000000813F615090569AC37134110F600000000011523430000000500000008000000070000000400000003000000080000000210801105000000020B4D43FC10804D070140010813F5D909000000040569AC37134110F600000000011523430000000A000000061340D4F6011523430000000A000000080000000013F615090569AC37134110F6000000000115234313F85902000000010AA6A27A10EDAD050BF3E57C000000071008ED070000000301E0010800000006000000070000000210ED7105000000020000000A13F895020AA6A27A10EDAD050BF3E57C1009290701E00108000000060000000700000003000000080000000210ED71050000000200000006000000011340D4F60115234313F85902000000010AA6A27A0000000710ED7105000000020000000713F895020AA6A27A10EDAD05000000070000000210ED7105000000020BF3E57C1009290700000007000000031008ED070000000300000008000000010000000000000004000000031080110700000003014001080000000813F615090569AC37134110F60000000000000008000000080000000413E201020B4D43FA10804D05000000080000000210801105000000020B4D43FC10804D07014001080000000813F615090569AC37134110F600000000033F67C313BBF502000000010AA6A27A10EDAD05000000080000000200000006000000081340D4F6033F67C313BBF502000000010000000800000005000000000000000400000003000000080000000100000000"
theorem small_1928526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1928526_left_root small_1928526_left_fuel small_1928526_left_count small_1928526_left_encoded = true := by
  decide +kernel
theorem small_1928526_left_covered : CoveredBy scale carrier boxes small_1928526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1928526_left_root small_1928526_left_fuel small_1928526_left_count small_1928526_left_encoded small_1928526_left_checked

theorem cover_1928526 : CoveredBy scale carrier boxes root_1928526 := by
  apply coveredBy_split_literal root_1928526 small_1928526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1929004 coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1928526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1929004
#print axioms cover_1928526

def root_1928520 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1928520_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1928520_left_fuel : Nat := 1
def small_1928520_left_count : Nat := 1
def small_1928520_left_encoded : String := "00000003"
theorem small_1928520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1928520_left_root small_1928520_left_fuel small_1928520_left_count small_1928520_left_encoded = true := by
  decide +kernel
theorem small_1928520_left_covered : CoveredBy scale carrier boxes small_1928520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1928520_left_root small_1928520_left_fuel small_1928520_left_count small_1928520_left_encoded small_1928520_left_checked

theorem cover_1928520 : CoveredBy scale carrier boxes root_1928520 := by
  apply coveredBy_split_literal root_1928520 small_1928520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1928526 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_1928520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1928526
#print axioms cover_1928520

def root_1927946 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927946_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927946_left_fuel : Nat := 20
def small_1927946_left_count : Nat := 273
def small_1927946_left_encoded : String := "0F878D070280010813D7B10900000004067ECE7712EA94F600000000022A458313E1C502000000010B4D43FA10804D0500000005000000020000000513E201020B4D43FA10804D050DE7C9FC0E6015070140010813F5D909000000040793F0B7000000050000000713F615090793F0B7000000050000000700000004000000030E5FD907000000030140010813F5D909000000040793F0B7000000060000000813F615090793F0B700000005128220F6033F67C30000000513BC31020BF3E57A100929050000000800000002000000090000000100000000000000040000000210801105000000020DE7C9FC000000060E5FD90700000003000000060000000112EA58F6022A458313E1C502000000010B4D43FA10804D05000000070000000210801105000000020DE7C9FC0E60150700000007000000030E5FD907000000030140010813F5D909000000040569AC37134110F6000000000000000A0000000713F615090569AC37134110F600000000011523430000000513F895020AA6A27A000000070000000600000001000000070000000413E201020B4D43FA10804D050DE7C9FC000000070E5FD907000000030140010813F5D909000000040000000713F615090569AC37134110F600000000033F67C3000000070000000900000007000000040000000210801105000000020DE7C9FC000000090E5FD907000000030140010813F5D909000000040569AC37000000061340D4F6033F67C300000007000000080000000013F615090569AC37134110F600000000033F67C313BBF502000000010AA6A27A10EDAD05000000090000000200000006000000090000000900000004000000010000000013D7ED09067ECE7712EA94F600000000022A45830000000513E201020B4D43FA10804D050DE7C9FC0E60150700000005000000030E5FD9070000000303C0010813A51109000000040793F0B700000005128220F6033F67C300000005000000090000000013A54D090793F0B70000000500000009000000040000000210801105000000020DE7C9FC0E60150700000009000000030E5FD9070000000303C0010813A51109000000040793F0B700000006128220F6033F67C313BBF502000000010AA6A27A10EDAD05000000090000000200000006000000090000000013A54D090793F0B712825CF600000000033F67C3000000050000000900000009000000040000000112EA58F6022A458313E1C502000000010B4D43FA10804D050DE7C9FC000000070E5FD90700000003000000070000000210801105000000020DE7C9FC0E60150700000007000000030E5FD9070000000303C0010813A51109000000040569AC37134110F600000000011523430000000513F895020AA6A27A0000000700000009000000010000000713A54D090569AC37134110F600000000011523430000000500000009000000070000000413E201020B4D43FA10804D0500000009000000020000000900000001000000000000000400000003"
theorem small_1927946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927946_left_root small_1927946_left_fuel small_1927946_left_count small_1927946_left_encoded = true := by
  decide +kernel
theorem small_1927946_left_covered : CoveredBy scale carrier boxes small_1927946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927946_left_root small_1927946_left_fuel small_1927946_left_count small_1927946_left_encoded small_1927946_left_checked

theorem cover_1927946 : CoveredBy scale carrier boxes root_1927946 := by
  apply coveredBy_split_literal root_1927946 small_1927946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1928520 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1927946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1928520
#print axioms cover_1927946

def root_1927940 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927940_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927940_left_fuel : Nat := 1
def small_1927940_left_count : Nat := 1
def small_1927940_left_encoded : String := "00000002"
theorem small_1927940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927940_left_root small_1927940_left_fuel small_1927940_left_count small_1927940_left_encoded = true := by
  decide +kernel
theorem small_1927940_left_covered : CoveredBy scale carrier boxes small_1927940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927940_left_root small_1927940_left_fuel small_1927940_left_count small_1927940_left_encoded small_1927940_left_checked

theorem cover_1927940 : CoveredBy scale carrier boxes root_1927940 := by
  apply coveredBy_split_literal root_1927940 small_1927940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927946 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_1927940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927946
#print axioms cover_1927940

def root_1927558 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927558_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927558_left_fuel : Nat := 19
def small_1927558_left_count : Nat := 181
def small_1927558_left_encoded : String := "0F878D050C9A86FC0F878D070280010813D7B10900000004067ECE7712EA94F600000000022A45830000000513E201020DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E60150700000005000000030E5FD90700000003014001080000000813F615090793F0B70000000500000007000000040000000112EA58F6000000070000000013D7ED09067ECE7712EA94F600000000022A45830000000513E201020DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E6015070000000500000003000000050000000112EA58F6022A45830000000713E201020DE7C9FA000000070E5FD9050000000200000007000000010000000000000004000000030F875107000000030280010813D7B10900000004067ECE7712EA94F600000000022A458313E1C502000000010DE7C9FA0E6015050000000500000002000000050000000812EA58F6022A458313E1C502000000010DE7C9FA000000080E5FD905000000020B4D43FC0000000700000008000000080000000013D7ED09067ECE7712EA94F600000000022A45830000000513E201020DE7C9FA0E6015050B4D43FC0000000A00000008000000020E5FD905000000020B4D43FC10804D0703C0010813A51109000000040793F0B7000000050000000813A54D090793F0B7000000050000000A0000000400000003108011070000000303C00108000000080000000A0000000112EA58F6022A458313E1C502000000010DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC10804D070000000700000003108011070000000303C001080000000813A54D090569AC37134110F600000000011523430000000500000008000000070000000413E201020DE7C9FA0E60150500000008000000020E5FD905000000020B4D43FC10804D0703C001080000000813A54D090569AC370000000A0000000700000004000000030000000800000001000000000000000400000002"
theorem small_1927558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927558_left_root small_1927558_left_fuel small_1927558_left_count small_1927558_left_encoded = true := by
  decide +kernel
theorem small_1927558_left_covered : CoveredBy scale carrier boxes small_1927558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927558_left_root small_1927558_left_fuel small_1927558_left_count small_1927558_left_encoded small_1927558_left_checked

theorem cover_1927558 : CoveredBy scale carrier boxes root_1927558 := by
  apply coveredBy_split_literal root_1927558 small_1927558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927940 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1927558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927940
#print axioms cover_1927558

def root_1927552 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927552_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927552_left_fuel : Nat := 1
def small_1927552_left_count : Nat := 1
def small_1927552_left_encoded : String := "00000003"
theorem small_1927552_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927552_left_root small_1927552_left_fuel small_1927552_left_count small_1927552_left_encoded = true := by
  decide +kernel
theorem small_1927552_left_covered : CoveredBy scale carrier boxes small_1927552_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927552_left_root small_1927552_left_fuel small_1927552_left_count small_1927552_left_encoded small_1927552_left_checked

theorem cover_1927552 : CoveredBy scale carrier boxes root_1927552 := by
  apply coveredBy_split_literal root_1927552 small_1927552_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927558 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1927552_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927558
#print axioms cover_1927552

def root_1927488 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927488_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927488_left_fuel : Nat := 12
def small_1927488_left_count : Nat := 31
def small_1927488_left_encoded : String := "0F34D0FC0C9A86FA0F878D05028001080000000700000007000000020F875105000000020280010813D7B10900000004067ECE7712EA94F600000000022A45830000000513E201020AD357870000000510D13CFC0000000300000005000000010000000713D7ED09067ECE7700000005000000090000000400000003"
theorem small_1927488_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927488_left_root small_1927488_left_fuel small_1927488_left_count small_1927488_left_encoded = true := by
  decide +kernel
theorem small_1927488_left_covered : CoveredBy scale carrier boxes small_1927488_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927488_left_root small_1927488_left_fuel small_1927488_left_count small_1927488_left_encoded small_1927488_left_checked

theorem cover_1927488 : CoveredBy scale carrier boxes root_1927488 := by
  apply coveredBy_split_literal root_1927488 small_1927488_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927552 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_1927488_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927552
#print axioms cover_1927488

def root_1927482 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927482_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927482_left_fuel : Nat := 1
def small_1927482_left_count : Nat := 1
def small_1927482_left_encoded : String := "00000002"
theorem small_1927482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927482_left_root small_1927482_left_fuel small_1927482_left_count small_1927482_left_encoded = true := by
  decide +kernel
theorem small_1927482_left_covered : CoveredBy scale carrier boxes small_1927482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927482_left_root small_1927482_left_fuel small_1927482_left_count small_1927482_left_encoded small_1927482_left_checked

theorem cover_1927482 : CoveredBy scale carrier boxes root_1927482 := by
  apply coveredBy_split_literal root_1927482 small_1927482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927488 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1927482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927488
#print axioms cover_1927482

def root_1927432 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927432_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927432_left_fuel : Nat := 11
def small_1927432_left_count : Nat := 25
def small_1927432_left_encoded : String := "0F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC0F878D07028001080000000700000007000000030F87510700000003028001080000000813D7ED09067ECE770000000512EA58F6022A45830000000500000008000000000000000400000002"
theorem small_1927432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927432_left_root small_1927432_left_fuel small_1927432_left_count small_1927432_left_encoded = true := by
  decide +kernel
theorem small_1927432_left_covered : CoveredBy scale carrier boxes small_1927432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927432_left_root small_1927432_left_fuel small_1927432_left_count small_1927432_left_encoded small_1927432_left_checked

theorem cover_1927432 : CoveredBy scale carrier boxes root_1927432 := by
  apply coveredBy_split_literal root_1927432 small_1927432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927482 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_1927432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927482
#print axioms cover_1927432

def root_1927426 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927426_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927426_left_fuel : Nat := 1
def small_1927426_left_count : Nat := 1
def small_1927426_left_encoded : String := "00000001"
theorem small_1927426_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927426_left_root small_1927426_left_fuel small_1927426_left_count small_1927426_left_encoded = true := by
  decide +kernel
theorem small_1927426_left_covered : CoveredBy scale carrier boxes small_1927426_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927426_left_root small_1927426_left_fuel small_1927426_left_count small_1927426_left_encoded small_1927426_left_checked

theorem cover_1927426 : CoveredBy scale carrier boxes root_1927426 := by
  apply coveredBy_split_literal root_1927426 small_1927426_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927432 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1927426_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927432
#print axioms cover_1927426

def root_1927425 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927425_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927425_right_fuel : Nat := 25
def small_1927425_right_count : Nat := 333
def small_1927425_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC028001080000000700000007000000030F350CFC000000030C9A86FC0F878D070280010813D7B10900000004067ECE7712EA94F600000000067ECE8312EA5902000000010AD357850000000500000007000000080000000713D7ED09067ECE770000000A12EA58F6067ECE8300000007000000090000000000000004000000030F8751070000000302800108000000080000000A000000020F350CFA000000020CFD9C070F34D0FC0C9A86FA0F878D050280010813D7B10900000004067ECE7712EA94F600000000067ECE8312EA59020000000100000009000000090000000700000009000000020F8751050000000200000009000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D070280010813D7B10900000004067ECE7712EA94F600000000067ECE8312EA5902000000010DE7C9FA0E6015050DE7C9FC0E601507000000070000000300000008000000020E5FD905000000020DE7C9FC0E6015070140010813F5D909000000040793F0B712825CF6000000000569AC4300000005000000060000000700000009000000030E5FD907000000030000000812EA95020DE7C9FA0E60150500000008000000020E5FD905000000020DE7C9FC00000009000000080000000112EA58F6067ECE8312EA5902000000010DE7C9FA0E60150500000007000000020E5FD9050000000200000009000000090000000013D7ED09067ECE7712EA94F600000000067ECE8312EA5902000000010DE7C9FA0E6015050DE7C9FC000000090E5FD907000000030000000A000000020E5FD9050000000200000009000000090000000900000004000000030F87510700000003028001080000000813D7ED09067ECE7712EA94F600000000067ECE8312EA5902000000010DE7C9FA0000000A0E5FD905000000020000000A0000000A12EA58F6067ECE8300000008000000080000000000000004000000020F875105000000020C9A86FC0F878D070280010813D7B10900000004067ECE7712EA94F600000000067ECE8312EA5902000000010B4D43FA10804D050DE7C9FC0E601507014001080000000600000009000000030E5FD90700000003014001080000000613F615090793F0B70000000600000008000000040000000210801105000000020DE7C9FC000000060E5FD907000000030000000612EA95020B4D43FA10804D050000000900000002000000090000000112EA58F6067ECE8312EA5902000000010B4D43FA10804D05000000090000000200000009000000090000000013D7ED09067ECE7712EA94F600000000067ECE8312EA5902000000010B4D43FA10804D05000000090000000200000009000000090000000900000004000000030F875107000000030280010813D7B10900000004067ECE7712EA94F600000000000000080000000813D7ED09067ECE7712EA94F600000000067ECE8312EA5902000000010B4D43FA10804D050B4D43FC10804D0703C0010813A5110900000004000000080000000A000000031080110700000003000000080000000210801105000000020B4D43FC10804D0703C0010813A51109000000040793F0B7000000060000000913A54D090793F0B712825CF60000000000000009000000090000000400000003108011070000000303C001080000000813A54D090793F0B700000007000000050000000412EA95020B4D43FA0000000A1080110500000002000000050000000112EA58F6067ECE8312EA5902000000010B4D43FA10804D050B4D43FC00000009000000080000000210801105000000020000000500000005000000000000000400000001"
theorem small_1927425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927425_right_root small_1927425_right_fuel small_1927425_right_count small_1927425_right_encoded = true := by
  decide +kernel
theorem small_1927425_right_covered : CoveredBy scale carrier boxes small_1927425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927425_right_root small_1927425_right_fuel small_1927425_right_count small_1927425_right_encoded small_1927425_right_checked

theorem cover_1927425 : CoveredBy scale carrier boxes root_1927425 := by
  apply coveredBy_split_literal root_1927425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927426 small_1927425_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927426
  · exact small_1927425_right_covered
#print axioms cover_1927425

def root_1927419 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927419_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927419_left_fuel : Nat := 1
def small_1927419_left_count : Nat := 1
def small_1927419_left_encoded : String := "00000000"
theorem small_1927419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927419_left_root small_1927419_left_fuel small_1927419_left_count small_1927419_left_encoded = true := by
  decide +kernel
theorem small_1927419_left_covered : CoveredBy scale carrier boxes small_1927419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927419_left_root small_1927419_left_fuel small_1927419_left_count small_1927419_left_encoded small_1927419_left_checked

theorem cover_1927419 : CoveredBy scale carrier boxes root_1927419 := by
  apply coveredBy_split_literal root_1927419 small_1927419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927425 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1927419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927425
#print axioms cover_1927419

def root_1927418 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927418_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927418_right_fuel : Nat := 34
def small_1927418_right_count : Nat := 285
def small_1927418_right_encoded : String := "138670F604548A0313867102000000010CFD9C050F34D0FA0CFD9C070000000700000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D0700000007000000030F875107000000030280010813D7B10900000004022A4577000000080000000713D7ED09022A457713E200F600000000022A45830000000713E201020DE7C9FA000000070E5FD905000000020B4D43FC0000000700000008000000010000000700000004000000020F875105000000020C9A86FC0F878D070280010813D7B10900000004022A457713E200F600000000022A45830000000713E201020B4D43FA0000000700000009000000010000000713D7ED09022A457713E200F600000000022A458300000007000000090000000700000004000000030F875107000000030280010813D7B10900000004022A457713E200F600000000022A458313E1C502000000010B4D43FA10804D050B4D43FC00000007000000080000000210801105000000020B4D43FC10804D07014001080000000700000007000000031080110700000003014001080000000813F61509033F67B700000008000000050000000413E201020B4D43FA10804D0500000008000000021080110500000002000000050000000113E1C4F6022A458313E1C5020000000100000007000000050000000013D7ED09022A457713E200F600000000022A458313E1C502000000010B4D43FA10804D050B4D43FC00000007108011070000000303C0010813A51109000000040000000713A54D09033F67B713BC30F600000000011523430000000713F895020BF3E57A00000007000000090000000100000007000000040000000210801105000000020B4D43FC10804D0703C0010813A51109000000040000000713A54D09000000090000000400000003108011070000000303C0010813A5110900000004033F67B713BC30F6000000000115234313F85902000000010AA6A27A10EDAD05000000070000000210ED7105000000020AA6A27C0000000710ED71070000000300000005000000050000000513A54D09033F67B713BC30F6000000000115234313F85902000000010AA6A27A10EDAD05000000070000000210ED7105000000020AA6A27C10EDAD07000000070000000310ED710700000003046001081383DD0900000004000000050000000500000005000000050000000413E201020B4D43FA10804D050B4D43FC00000009108011070000000300000005000000021080110500000002000000050000000113E1C4F6022A458313E1C502000000010B4D43FA000000071080110500000002000000050000000500000000000000041386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030C9A86FC0F878D07000000070000000300000008000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FA0F878D050C9A86FC000000090F8751070000000300000008000000020F875105000000020C9A86FC000000090F87510700000003000000050000000100000000"
theorem small_1927418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927418_right_root small_1927418_right_fuel small_1927418_right_count small_1927418_right_encoded = true := by
  decide +kernel
theorem small_1927418_right_covered : CoveredBy scale carrier boxes small_1927418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927418_right_root small_1927418_right_fuel small_1927418_right_count small_1927418_right_encoded small_1927418_right_checked

theorem cover_1927418 : CoveredBy scale carrier boxes root_1927418 := by
  apply coveredBy_split_literal root_1927418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927419 small_1927418_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927419
  · exact small_1927418_right_covered
#print axioms cover_1927418

def root_1927412 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927412_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927412_left_fuel : Nat := 1
def small_1927412_left_count : Nat := 1
def small_1927412_left_encoded : String := "00000004"
theorem small_1927412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927412_left_root small_1927412_left_fuel small_1927412_left_count small_1927412_left_encoded = true := by
  decide +kernel
theorem small_1927412_left_covered : CoveredBy scale carrier boxes small_1927412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927412_left_root small_1927412_left_fuel small_1927412_left_count small_1927412_left_encoded small_1927412_left_checked

theorem cover_1927412 : CoveredBy scale carrier boxes root_1927412 := by
  apply coveredBy_split_literal root_1927412 small_1927412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927418 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_1927412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927418
#print axioms cover_1927412

def root_1927411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1927411 : CoveredBy scale carrier boxes root_1927411 := by
  apply coveredBy_split_literal root_1927411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0751.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927412
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0751.covered
#print axioms cover_1927411

def root_1927405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927405_left_fuel : Nat := 1
def small_1927405_left_count : Nat := 1
def small_1927405_left_encoded : String := "00000003"
theorem small_1927405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927405_left_root small_1927405_left_fuel small_1927405_left_count small_1927405_left_encoded = true := by
  decide +kernel
theorem small_1927405_left_covered : CoveredBy scale carrier boxes small_1927405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927405_left_root small_1927405_left_fuel small_1927405_left_count small_1927405_left_encoded small_1927405_left_checked

theorem cover_1927405 : CoveredBy scale carrier boxes root_1927405 := by
  apply coveredBy_split_literal root_1927405 small_1927405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927411 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1927405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927411
#print axioms cover_1927405

def root_1927311 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927311_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927311_left_fuel : Nat := 11
def small_1927311_left_count : Nat := 45
def small_1927311_left_encoded : String := "120700FC05000108135D450900000004045489F71386ACF60000000004548A0313867102000000010CFD9C0500000005000000071386AD020CFD9C05000000070F350CFA0000000204548A0700000005000000090000000100000007135D8109045489F71386ACF60000000004548A03000000051386AD020CFD9C05000000050F350CFA000000020000000900000001138670F604548A0313867102000000010000000700000009000000000000000400000003"
theorem small_1927311_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927311_left_root small_1927311_left_fuel small_1927311_left_count small_1927311_left_encoded = true := by
  decide +kernel
theorem small_1927311_left_covered : CoveredBy scale carrier boxes small_1927311_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927311_left_root small_1927311_left_fuel small_1927311_left_count small_1927311_left_encoded small_1927311_left_checked

theorem cover_1927311 : CoveredBy scale carrier boxes root_1927311 := by
  apply coveredBy_split_literal root_1927311 small_1927311_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927405 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1927311_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927405
#print axioms cover_1927311

def root_1927305 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927305_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927305_left_fuel : Nat := 1
def small_1927305_left_count : Nat := 1
def small_1927305_left_encoded : String := "00000002"
theorem small_1927305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927305_left_root small_1927305_left_fuel small_1927305_left_count small_1927305_left_encoded = true := by
  decide +kernel
theorem small_1927305_left_covered : CoveredBy scale carrier boxes small_1927305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927305_left_root small_1927305_left_fuel small_1927305_left_count small_1927305_left_encoded small_1927305_left_checked

theorem cover_1927305 : CoveredBy scale carrier boxes root_1927305 := by
  apply coveredBy_split_literal root_1927305 small_1927305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927311 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1927305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927311
#print axioms cover_1927305

def root_1927187 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927187_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927187_left_fuel : Nat := 15
def small_1927187_left_count : Nat := 57
def small_1927187_left_encoded : String := "120700FA08A91307120700FC000000070000000312073CFC0000000305000108135D450900000004045489F71386ACF60000000004548A03138671020000000104548A0500000005000000071386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC000000030C9A86FC0000000A000000080000000100000007135D8109045489F71386ACF60000000004548A03000000051386AD0204548A05000000051386ACFA000000020CFD9C07000000050000000A00000001138670F604548A0313867102000000010000000700000009000000000000000400000002"
theorem small_1927187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927187_left_root small_1927187_left_fuel small_1927187_left_count small_1927187_left_encoded = true := by
  decide +kernel
theorem small_1927187_left_covered : CoveredBy scale carrier boxes small_1927187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927187_left_root small_1927187_left_fuel small_1927187_left_count small_1927187_left_encoded small_1927187_left_checked

theorem cover_1927187 : CoveredBy scale carrier boxes root_1927187 := by
  apply coveredBy_split_literal root_1927187 small_1927187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927305 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1927187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927305
#print axioms cover_1927187

def root_1927181 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927181_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927181_left_fuel : Nat := 1
def small_1927181_left_count : Nat := 1
def small_1927181_left_encoded : String := "00000001"
theorem small_1927181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927181_left_root small_1927181_left_fuel small_1927181_left_count small_1927181_left_encoded = true := by
  decide +kernel
theorem small_1927181_left_covered : CoveredBy scale carrier boxes small_1927181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927181_left_root small_1927181_left_fuel small_1927181_left_count small_1927181_left_encoded small_1927181_left_checked

theorem cover_1927181 : CoveredBy scale carrier boxes root_1927181 := by
  apply coveredBy_split_literal root_1927181 small_1927181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927187 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1927181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927187
#print axioms cover_1927181

def root_1927180 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927180_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927180_right_fuel : Nat := 24
def small_1927180_right_count : Nat := 341
def small_1927180_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC000000090000000312073CFC0000000305000108135D450900000004045489F71386ACF6000000000CFD9C030F34D1020000000104548A050000000A1386ACFA000000020CFD9C070F34D0FC00000007000000030000000A0000000A138670F60CFD9C030F34D10200000001000000090000000900000000135D8109045489F70000000A00000009000000040000000212073CFA0000000208A91307120700FC05000108135D450900000004045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C05000000090F350CFA0000000204548A07138670FC0000000900000003000000090F350D020CFD9C05000000090F350CFA0000000204548A07138670FC0C9A87020F875103000000010000000900000009000000031386ACFC000000030C9A87020F87510300000001000000090000000900000001138670F60CFD9C030F34D10200000001000000090F350D020CFD9C05000000090F350CFA0000000204548A07138670FC0C9A87020F87510300000001000000090000000700000003000000090000000100000000135D8109045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C05000000090F350CFA00000002000000090F350D020CFD9C05000000090F350CFA0000000204548A07138670FC0C9A87020F875103000000010C9A86FA000000090000000900000009000000031386ACFC000000030C9A87020F87510300000001000000090000000900000001138670F60CFD9C030F34D10200000001000000090F350D020CFD9C05000000090F350CFA0000000204548A07138670FC0C9A87020F87510300000001000000090000000900000003000000090000000100000000000000040000000312073CFC0000000305000108135D450900000004045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0000000A0000000A000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D070280010813D7B10900000004067ECE7712EA94F600000000000000080000000800000009000000030F8751070000000300000008000000020F875105000000020C9A86FC0F878D070280010813D7B109000000040000000900000009000000030F87510700000003000000050F350D020CFD9C050F34D0FA0CFD9C070F34D0FC00000009000000030000000A000000020F350CFA000000020CFD9C070F34D0FC0C9A87020F875103000000010000000900000009000000030000000500000001138670F60CFD9C030F34D102000000010CFD9C05000000090F350CFA000000020CFD9C070F34D0FC0000000900000003000000050F350D020CFD9C050F34D0FA0000000900000002000000050000000100000000135D8109045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000090000000A000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FA0F878D0500000009000000020F875105000000020C9A86FC000000090F87510700000003000000090F350D020CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC0C9A87020000000A00000009000000030000000A00000001138670F60CFD9C030F34D102000000010CFD9C05000000090F350CFA000000020CFD9C070F34D0FC0000000900000003000000090F350D020CFD9C05000000090F350CFA000000020CFD9C070F34D0FC00000009000000030000000500000001000000000000000400000001"
theorem small_1927180_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927180_right_root small_1927180_right_fuel small_1927180_right_count small_1927180_right_encoded = true := by
  decide +kernel
theorem small_1927180_right_covered : CoveredBy scale carrier boxes small_1927180_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927180_right_root small_1927180_right_fuel small_1927180_right_count small_1927180_right_encoded small_1927180_right_checked

theorem cover_1927180 : CoveredBy scale carrier boxes root_1927180 := by
  apply coveredBy_split_literal root_1927180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927181 small_1927180_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927181
  · exact small_1927180_right_covered
#print axioms cover_1927180

def root_1927175 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927175_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1927175_right_fuel : Nat := 1
def small_1927175_right_count : Nat := 1
def small_1927175_right_encoded : String := "00000000"
theorem small_1927175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1927175_right_root small_1927175_right_fuel small_1927175_right_count small_1927175_right_encoded = true := by
  decide +kernel
theorem small_1927175_right_covered : CoveredBy scale carrier boxes small_1927175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1927175_right_root small_1927175_right_fuel small_1927175_right_count small_1927175_right_encoded small_1927175_right_checked

theorem cover_1927175 : CoveredBy scale carrier boxes root_1927175 := by
  apply coveredBy_split_literal root_1927175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927180 small_1927175_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927180
  · exact small_1927175_right_covered
#print axioms cover_1927175

def root_1923747 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1923747 : CoveredBy scale carrier boxes root_1923747 := by
  apply coveredBy_split_literal root_1923747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1927175 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923748
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1927175
#print axioms cover_1923747

def root_1923741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923741_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923741_left_fuel : Nat := 1
def small_1923741_left_count : Nat := 1
def small_1923741_left_encoded : String := "00000004"
theorem small_1923741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1923741_left_root small_1923741_left_fuel small_1923741_left_count small_1923741_left_encoded = true := by
  decide +kernel
theorem small_1923741_left_covered : CoveredBy scale carrier boxes small_1923741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1923741_left_root small_1923741_left_fuel small_1923741_left_count small_1923741_left_encoded small_1923741_left_checked

theorem cover_1923741 : CoveredBy scale carrier boxes root_1923741 := by
  apply coveredBy_split_literal root_1923741 small_1923741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923747 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1923741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923747
#print axioms cover_1923741

def root_1923740 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1923740 : CoveredBy scale carrier boxes root_1923740 := by
  apply coveredBy_split_literal root_1923740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923741 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0752.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0752.covered
#print axioms cover_1923740

def root_1923735 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923735_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923735_right_fuel : Nat := 1
def small_1923735_right_count : Nat := 1
def small_1923735_right_encoded : String := "00000003"
theorem small_1923735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1923735_right_root small_1923735_right_fuel small_1923735_right_count small_1923735_right_encoded = true := by
  decide +kernel
theorem small_1923735_right_covered : CoveredBy scale carrier boxes small_1923735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1923735_right_root small_1923735_right_fuel small_1923735_right_count small_1923735_right_encoded small_1923735_right_checked

theorem cover_1923735 : CoveredBy scale carrier boxes root_1923735 := by
  apply coveredBy_split_literal root_1923735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923740 small_1923735_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923740
  · exact small_1923735_right_covered
#print axioms cover_1923735

def root_1938879 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1938879 : CoveredBy scale carrier boxes root_1938879 := by
  apply coveredBy_split_literal root_1938879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0753.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0754.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0753.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0754.covered
#print axioms cover_1938879

def root_1938873 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938873_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938873_left_fuel : Nat := 1
def small_1938873_left_count : Nat := 1
def small_1938873_left_encoded : String := "00000004"
theorem small_1938873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1938873_left_root small_1938873_left_fuel small_1938873_left_count small_1938873_left_encoded = true := by
  decide +kernel
theorem small_1938873_left_covered : CoveredBy scale carrier boxes small_1938873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1938873_left_root small_1938873_left_fuel small_1938873_left_count small_1938873_left_encoded small_1938873_left_checked

theorem cover_1938873 : CoveredBy scale carrier boxes root_1938873 := by
  apply coveredBy_split_literal root_1938873 small_1938873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1938879 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1938873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1938879
#print axioms cover_1938873

def root_1938872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938872_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938872_right_fuel : Nat := 27
def small_1938872_right_count : Nat := 237
def small_1938872_right_encoded : String := "1152250908A912F712073CF60000000008A91303120701020000000108A91305120700FA0000000A0000000212073CFA0000000208A9130912070108000000040000000A12073D08050000FC135D81070CFD9BF70F350CF60000000004548A0313867102000000010CFD9C050000000A0F350CFA000000020CFD9C090F34D108000000040000000A0F350D080C9A86F60F878CF7000000000C9A86FA0000000A0F875105000000020C9A87080F87510900000004078000FC0000000A000000070000000A0F8750F70C9A86FA0000000A0F875105000000020C9A8708000000070000000A00000000000000040000000A0F34D0F604548A0313867102000000010CFD9C050000000A0F350CFA000000020CFD9C090000000A0F350D080C9A86FA0000000A0F875105000000020C9A87080F87510900000004078000FC0000000A0000000A0000000A000000040000000A0000000000000003135D4507000000030CFD9BF70F350CF60000000004548A0313867102000000010CFD9C050000000A0F350CFA000000020CFD9C090000000A0F350D080C9A86F60000000A0F8750F70000000700000000000000040000000A0F34D0F604548A0313867102000000010CFD9C050000000A0000000A0000000A000000000000000412073D0208A913050000000A12073CFA0000000208A913090000000A12073D08050000FC0000000A135D4507000000030000000A0000000400000001120700F608A91303120701020000000108A91305120700FA0000000A0000000212073CFA0000000208A9130912070108000000040000000A12073D08050000FC135D8107045489F71386ACF60000000004548A0313867102000000010CFD9C050000000A0F350CFA000000020CFD9C090000000A0F350D080C9A86FA0000000A0F875105000000020C9A87080F87510900000004078000FC0000000A0000000A0000000A000000040000000A138670F604548A0313867102000000010CFD9C050000000A0F350CFA000000020CFD9C09000000060F350D080C9A86FA0000000A0F875105000000020C9A87080F87510900000004078000FC00000009000000060000000A000000040000000A0000000000000003135D450700000003045489F71386ACF60000000004548A0313867102000000010000000A0000000A138670F604548A0313867102000000010000000A0000000A000000000000000412073D0208A913050000000A12073CFA0000000208A913090000000A12073D08050000FC0000000A135D4507000000030000000A00000004000000010000000000000004"
theorem small_1938872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1938872_right_root small_1938872_right_fuel small_1938872_right_count small_1938872_right_encoded = true := by
  decide +kernel
theorem small_1938872_right_covered : CoveredBy scale carrier boxes small_1938872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1938872_right_root small_1938872_right_fuel small_1938872_right_count small_1938872_right_encoded small_1938872_right_checked

theorem cover_1938872 : CoveredBy scale carrier boxes root_1938872 := by
  apply coveredBy_split_literal root_1938872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1938873 small_1938872_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1938873
  · exact small_1938872_right_covered
#print axioms cover_1938872

def root_1938866 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938866_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1938866_left_fuel : Nat := 1
def small_1938866_left_count : Nat := 1
def small_1938866_left_encoded : String := "00000003"
theorem small_1938866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1938866_left_root small_1938866_left_fuel small_1938866_left_count small_1938866_left_encoded = true := by
  decide +kernel
theorem small_1938866_left_covered : CoveredBy scale carrier boxes small_1938866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1938866_left_root small_1938866_left_fuel small_1938866_left_count small_1938866_left_encoded small_1938866_left_checked

theorem cover_1938866 : CoveredBy scale carrier boxes root_1938866 := by
  apply coveredBy_split_literal root_1938866 small_1938866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1938872 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1938866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1938872
#print axioms cover_1938866

def root_1923734 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1923734 : CoveredBy scale carrier boxes root_1923734 := by
  apply coveredBy_split_literal root_1923734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1938866 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1938866
#print axioms cover_1923734

def root_1923729 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923729_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923729_right_fuel : Nat := 1
def small_1923729_right_count : Nat := 1
def small_1923729_right_encoded : String := "00000002"
theorem small_1923729_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1923729_right_root small_1923729_right_fuel small_1923729_right_count small_1923729_right_encoded = true := by
  decide +kernel
theorem small_1923729_right_covered : CoveredBy scale carrier boxes small_1923729_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1923729_right_root small_1923729_right_fuel small_1923729_right_count small_1923729_right_encoded small_1923729_right_checked

theorem cover_1923729 : CoveredBy scale carrier boxes root_1923729 := by
  apply coveredBy_split_literal root_1923729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923734 small_1923729_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923734
  · exact small_1923729_right_covered
#print axioms cover_1923729

def root_1945505 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1945505 : CoveredBy scale carrier boxes root_1945505 := by
  apply coveredBy_split_literal root_1945505 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0756.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0757.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0756.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0757.covered
#print axioms cover_1945505

def root_1945500 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945500_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945500_right_fuel : Nat := 1
def small_1945500_right_count : Nat := 1
def small_1945500_right_encoded : String := "00000002"
theorem small_1945500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945500_right_root small_1945500_right_fuel small_1945500_right_count small_1945500_right_encoded = true := by
  decide +kernel
theorem small_1945500_right_covered : CoveredBy scale carrier boxes small_1945500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945500_right_root small_1945500_right_fuel small_1945500_right_count small_1945500_right_encoded small_1945500_right_checked

theorem cover_1945500 : CoveredBy scale carrier boxes root_1945500 := by
  apply coveredBy_split_literal root_1945500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945505 small_1945500_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945505
  · exact small_1945500_right_covered
#print axioms cover_1945500

def root_1945499 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945499_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945499_right_fuel : Nat := 21
def small_1945499_right_count : Nat := 153
def small_1945499_right_encoded : String := "135D45050000000205000108135D450900000004045489F71386ACF60000000004548A0313867102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC000000060F87510700000003000000061386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC000000060F875107000000030000000500000001138670F604548A0313867102000000010CFD9C070000000A0F350CFC000000030C9A86FC0F878D070000000A000000030F87510700000003000000051386AD020CFD9C070F34D0FC0000000900000003000000050000000100000000135D8109045489F71386ACF60000000004548A0313867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC0F878D0700000008000000030F87510700000003028000FA13D7ED0507800108128A410900000004067ECE770000000612EA58F6022A458313E1C502000000010B4D43FC00000008000000070000000500000000128A7D0900000008000000040000000213D7B105000000020780010800000007000000071386AD020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC0F878D07028000FA0000000900000009000000030F875107000000030000000700000001138670F604548A0313867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC000000090F87510700000003028000FA13D7ED0507800108128A41090000000400000005000000090000000213D7B10500000002000000051386AD020CFD9C070F34D0FC000000090000000300000005000000010000000000000004"
theorem small_1945499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945499_right_root small_1945499_right_fuel small_1945499_right_count small_1945499_right_encoded = true := by
  decide +kernel
theorem small_1945499_right_covered : CoveredBy scale carrier boxes small_1945499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945499_right_root small_1945499_right_fuel small_1945499_right_count small_1945499_right_encoded small_1945499_right_checked

theorem cover_1945499 : CoveredBy scale carrier boxes root_1945499 := by
  apply coveredBy_split_literal root_1945499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945500 small_1945499_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945500
  · exact small_1945499_right_covered
#print axioms cover_1945499

def root_1945493 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945493_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945493_left_fuel : Nat := 1
def small_1945493_left_count : Nat := 1
def small_1945493_left_encoded : String := "00000003"
theorem small_1945493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945493_left_root small_1945493_left_fuel small_1945493_left_count small_1945493_left_encoded = true := by
  decide +kernel
theorem small_1945493_left_covered : CoveredBy scale carrier boxes small_1945493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945493_left_root small_1945493_left_fuel small_1945493_left_count small_1945493_left_encoded small_1945493_left_checked

theorem cover_1945493 : CoveredBy scale carrier boxes root_1945493 := by
  apply coveredBy_split_literal root_1945493 small_1945493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945499 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1945493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945499
#print axioms cover_1945493

def root_1945411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945411_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945411_left_fuel : Nat := 13
def small_1945411_left_count : Nat := 41
def small_1945411_left_encoded : String := "120700FC050000FA135D810505000108135D450900000004045489F71386ACF60000000004548A03000000081386AD0204548A07000000081386ACFC00000003078000FA000000090000000900000001138670F604548A030000000A1386AD0204548A07000000070000000900000001000000000000000800000002135D45050000000205000108135D450900000004045489F7000000080000000A0000000800000003"
theorem small_1945411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945411_left_root small_1945411_left_fuel small_1945411_left_count small_1945411_left_encoded = true := by
  decide +kernel
theorem small_1945411_left_covered : CoveredBy scale carrier boxes small_1945411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945411_left_root small_1945411_left_fuel small_1945411_left_count small_1945411_left_encoded small_1945411_left_checked

theorem cover_1945411 : CoveredBy scale carrier boxes root_1945411 := by
  apply coveredBy_split_literal root_1945411 small_1945411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945493 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1945411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945493
#print axioms cover_1945411

def root_1945405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945405_left_fuel : Nat := 1
def small_1945405_left_count : Nat := 1
def small_1945405_left_encoded : String := "00000001"
theorem small_1945405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945405_left_root small_1945405_left_fuel small_1945405_left_count small_1945405_left_encoded = true := by
  decide +kernel
theorem small_1945405_left_covered : CoveredBy scale carrier boxes small_1945405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945405_left_root small_1945405_left_fuel small_1945405_left_count small_1945405_left_encoded small_1945405_left_checked

theorem cover_1945405 : CoveredBy scale carrier boxes root_1945405 := by
  apply coveredBy_split_literal root_1945405 small_1945405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945411 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1945405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945411
#print axioms cover_1945405

def root_1945404 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1945404 : CoveredBy scale carrier boxes root_1945404 := by
  apply coveredBy_split_literal root_1945404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0758.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945405
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0758.covered
#print axioms cover_1945404

def root_1945399 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945399_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1945399_right_fuel : Nat := 1
def small_1945399_right_count : Nat := 1
def small_1945399_right_encoded : String := "00000000"
theorem small_1945399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1945399_right_root small_1945399_right_fuel small_1945399_right_count small_1945399_right_encoded = true := by
  decide +kernel
theorem small_1945399_right_covered : CoveredBy scale carrier boxes small_1945399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1945399_right_root small_1945399_right_fuel small_1945399_right_count small_1945399_right_encoded small_1945399_right_checked

theorem cover_1945399 : CoveredBy scale carrier boxes root_1945399 := by
  apply coveredBy_split_literal root_1945399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945404 small_1945399_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945404
  · exact small_1945399_right_covered
#print axioms cover_1945399

def root_1943477 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1943477 : CoveredBy scale carrier boxes root_1943477 := by
  apply coveredBy_split_literal root_1943477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0755.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1945399 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0755.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1945399
#print axioms cover_1943477

def root_1943471 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943471_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943471_left_fuel : Nat := 1
def small_1943471_left_count : Nat := 1
def small_1943471_left_encoded : String := "00000004"
theorem small_1943471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1943471_left_root small_1943471_left_fuel small_1943471_left_count small_1943471_left_encoded = true := by
  decide +kernel
theorem small_1943471_left_covered : CoveredBy scale carrier boxes small_1943471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1943471_left_root small_1943471_left_fuel small_1943471_left_count small_1943471_left_encoded small_1943471_left_checked

theorem cover_1943471 : CoveredBy scale carrier boxes root_1943471 := by
  apply coveredBy_split_literal root_1943471 small_1943471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943477 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1943471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943477
#print axioms cover_1943471

def root_1943470 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1943470 : CoveredBy scale carrier boxes root_1943470 := by
  apply coveredBy_split_literal root_1943470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943471 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0759.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943471
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0759.covered
#print axioms cover_1943470

def root_1943465 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943465_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943465_right_fuel : Nat := 1
def small_1943465_right_count : Nat := 1
def small_1943465_right_encoded : String := "00000003"
theorem small_1943465_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1943465_right_root small_1943465_right_fuel small_1943465_right_count small_1943465_right_encoded = true := by
  decide +kernel
theorem small_1943465_right_covered : CoveredBy scale carrier boxes small_1943465_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1943465_right_root small_1943465_right_fuel small_1943465_right_count small_1943465_right_encoded small_1943465_right_checked

theorem cover_1943465 : CoveredBy scale carrier boxes root_1943465 := by
  apply coveredBy_split_literal root_1943465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943470 small_1943465_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943470
  · exact small_1943465_right_covered
#print axioms cover_1943465

def root_1943464 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1943464 : CoveredBy scale carrier boxes root_1943464 := by
  apply coveredBy_split_literal root_1943464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0760.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943465
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0760.covered
#print axioms cover_1943464

def root_1943458 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943458_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1943458_left_fuel : Nat := 1
def small_1943458_left_count : Nat := 1
def small_1943458_left_encoded : String := "00000002"
theorem small_1943458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1943458_left_root small_1943458_left_fuel small_1943458_left_count small_1943458_left_encoded = true := by
  decide +kernel
theorem small_1943458_left_covered : CoveredBy scale carrier boxes small_1943458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1943458_left_root small_1943458_left_fuel small_1943458_left_count small_1943458_left_encoded small_1943458_left_checked

theorem cover_1943458 : CoveredBy scale carrier boxes root_1943458 := by
  apply coveredBy_split_literal root_1943458 small_1943458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943464 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1943458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943464
#print axioms cover_1943458

def root_1923728 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1923728 : CoveredBy scale carrier boxes root_1923728 := by
  apply coveredBy_split_literal root_1923728 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1943458 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923729
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1943458
#print axioms cover_1923728

def root_1923723 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923723_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1923723_right_fuel : Nat := 1
def small_1923723_right_count : Nat := 1
def small_1923723_right_encoded : String := "00000001"
theorem small_1923723_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1923723_right_root small_1923723_right_fuel small_1923723_right_count small_1923723_right_encoded = true := by
  decide +kernel
theorem small_1923723_right_covered : CoveredBy scale carrier boxes small_1923723_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1923723_right_root small_1923723_right_fuel small_1923723_right_count small_1923723_right_encoded small_1923723_right_checked

theorem cover_1923723 : CoveredBy scale carrier boxes root_1923723 := by
  apply coveredBy_split_literal root_1923723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923728 small_1923723_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923728
  · exact small_1923723_right_covered
#print axioms cover_1923723

def root_1921439 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1921439 : CoveredBy scale carrier boxes root_1921439 := by
  apply coveredBy_split_literal root_1921439 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0746.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1923723 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0746.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1923723
#print axioms cover_1921439

def root_1921433 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1921433_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1921433_left_fuel : Nat := 1
def small_1921433_left_count : Nat := 1
def small_1921433_left_encoded : String := "00000000"
theorem small_1921433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1921433_left_root small_1921433_left_fuel small_1921433_left_count small_1921433_left_encoded = true := by
  decide +kernel
theorem small_1921433_left_covered : CoveredBy scale carrier boxes small_1921433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1921433_left_root small_1921433_left_fuel small_1921433_left_count small_1921433_left_encoded small_1921433_left_checked

theorem cover_1921433 : CoveredBy scale carrier boxes root_1921433 := by
  apply coveredBy_split_literal root_1921433 small_1921433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1921439 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1921433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1921439
#print axioms cover_1921433

def root_1956000 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1956000 : CoveredBy scale carrier boxes root_1956000 := by
  apply coveredBy_split_literal root_1956000 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0761.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0762.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0761.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0762.covered
#print axioms cover_1956000

def root_1955995 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955995_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955995_right_fuel : Nat := 1
def small_1955995_right_count : Nat := 1
def small_1955995_right_encoded : String := "00000001"
theorem small_1955995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1955995_right_root small_1955995_right_fuel small_1955995_right_count small_1955995_right_encoded = true := by
  decide +kernel
theorem small_1955995_right_covered : CoveredBy scale carrier boxes small_1955995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1955995_right_root small_1955995_right_fuel small_1955995_right_count small_1955995_right_encoded small_1955995_right_checked

theorem cover_1955995 : CoveredBy scale carrier boxes root_1955995 := by
  apply coveredBy_split_literal root_1955995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1956000 small_1955995_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1956000
  · exact small_1955995_right_covered
#print axioms cover_1955995

def root_1955795 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955795_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955795_left_fuel : Nat := 21
def small_1955795_left_count : Nat := 95
def small_1955795_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC050000F6135D80F700000000050001020000000A135D810305000108135D4509000000040CFD9C05000000090F350CFA0000000204548A0700000005000000060000000A00000001135D44F705000102135D4503000000010000000A135D810305000108135D4509000000040CFD9C0500000005000000060000000500000001000000000000000312073CFC00000003050000F60000000A135D44F70000000A000000000000000A000000031151E907000000030000000A000000021151E905000000020A0000FC115225070A0001081151E9090000000408A91307120700FC050000F6000000070000000700000003000000071152250908A91307120700FC08A913090000000712073D080000000700000004000000030000000A00000004000000031151E907000000030A000108000000070000000A"
theorem small_1955795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1955795_left_root small_1955795_left_fuel small_1955795_left_count small_1955795_left_encoded = true := by
  decide +kernel
theorem small_1955795_left_covered : CoveredBy scale carrier boxes small_1955795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1955795_left_root small_1955795_left_fuel small_1955795_left_count small_1955795_left_encoded small_1955795_left_checked

theorem cover_1955795 : CoveredBy scale carrier boxes root_1955795 := by
  apply coveredBy_split_literal root_1955795 small_1955795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1955995 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1955795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1955995
#print axioms cover_1955795

def root_1955790 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955790_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1955790_right_fuel : Nat := 1
def small_1955790_right_count : Nat := 1
def small_1955790_right_encoded : String := "00000000"
theorem small_1955790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1955790_right_root small_1955790_right_fuel small_1955790_right_count small_1955790_right_encoded = true := by
  decide +kernel
theorem small_1955790_right_covered : CoveredBy scale carrier boxes small_1955790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1955790_right_root small_1955790_right_fuel small_1955790_right_count small_1955790_right_encoded small_1955790_right_checked

theorem cover_1955790 : CoveredBy scale carrier boxes root_1955790 := by
  apply coveredBy_split_literal root_1955790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1955795 small_1955790_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1955795
  · exact small_1955790_right_covered
#print axioms cover_1955790

def root_1921432 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1921432 : CoveredBy scale carrier boxes root_1921432 := by
  apply coveredBy_split_literal root_1921432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1921433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.root_1955790 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1921433
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045.cover_1955790
#print axioms cover_1921432

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0045
