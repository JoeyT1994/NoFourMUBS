import TaoBundleChunkBatch0377
import TaoBundleChunkBatch0378
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289
def root_4010782 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010782_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010782_right_fuel : Nat := 28
def small_4010782_right_count : Nat := 497
def small_4010782_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A912F912073D0208A91307120700FC08A912FF00000005120700FE00000008000000040000000312073CFC0000000308A912FF00000005120700FE050000FA135D810504548A01138670F60CFD9BF9000000050F34D1020000000100000005000000000000000800000002000000080000000400000001120701020000000108A91307120700FC08A912FF00000005120700FE050000FA135D8105000000050000000200000005000000040000000312073CFC0000000308A912FF00000005120700FE050000FA135D810504548A01138670F6045489F90000000513867102000000010CFD9C07000000050F350CFC0000000300000005000000001386ACF600000000045489F91386AD020CFD9C0700000005000000080000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000005138670FE0C9A86FC000000080F87510700000003000000080000000400000002135D45050000000204548A01000000051386ACF600000000045489F900000005138671020000000100000008000000040000000012073CF60000000008A912F912073D0208A91307120700FC08A912FF00000005120700FE050000FA135D81050CFD9C010F34D0F60000000800000000000000080000000200000008000000040000000312073CFC0000000308A912FF00000008120700FE050000FA135D81050CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BF9000000080F34D102000000010000000800000002000000080000000400000001120701020000000108A91307120700FC08A912FF00000005120700FE050000FA135D81050CFD9C010F34D0F60000000900000000000000090000000200000009000000040000000312073CFC0000000308A912FF12073CFE00000004050000FA135D81050CFD9C01000000050F350CF600000000045489F90000000513867102000000010CFD9C07000000050000000800000002135D4505000000020CFD9C010000000500000008120700FE050000FA135D81050CFD9C010F34D0F6045489F91386AD020CFD9C070F34D0FC0000000800000003000000080000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000008138670FE0C9A86FC000000080F875107000000030000000800000004000000000F350CF600000000045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF00000008138670FE00000008000000040000000113867102000000010CFD9C070F34D0FC00000009000000030F350CFC00000003045489FF00000008138670FE0C9A86F60F878D010C9A86FC000000080F8751070000000300000008000000000F875101000000000C9A86FC000000080F87510700000003000000080000000400000002135D4505000000020CFD9C010F34D0F6045489F90000000813867102000000010CFD9C070000000800000008000000000F350CF600000000045489F90000000800000009000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F608A912F912073D0208A912FF00000005120700FE050000FA135D8105050000FC135D810704548A010000000500000008000000030000000500000002000000050000000400000001120701020000000108A912FF00000005120700FE050000FA135D8105050000FC135D810704548A01000000051386ACF600000000045489F9000000051386710200000001045489FF00000005138670FE0000000700000004000000030000000700000002135D45050000000200000007000000040000000012073CF60000000008A912F912073D0208A912FF00000005120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F6000000060000000000000006000000030000000600000002000000080000000400000001120701020000000108A912FF12073CFE00000004050000FA135D8105050000FC135D81070CFD9C010000000500000008000000030000000A00000002135D450500000002050000FC0000000800000007120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F6045489F9000000081386710200000001045489FF00000008138670FE078000FA128A7D05078000FC128A7D070AD3578110D100F6000000080000000000000006000000030000000600000002128A410500000002078000FC000000080000000700000004000000000F350CF600000000045489F91386AD02045489FF0000000600000006000000011386710200000001045489FF1386ACFE000000040C9A86F6000000080F8751010000000000000008138670FE0C9A86F60F878D01078000FA128A7D05000000060000000200000008000000000F87510100000000078000FA00000006000000080000000400000003135D4507000000030CFD9C010F34D0F6045489F90000000600000007000000000000000600000002135D450500000002050000FC135D81070CFD9C010F34D0F600000008000000000000000800000003135D4507000000030CFD9C01000000070F350CF600000000045489F90000000600000007000000041151E8FF08A913010000000512073CF60000000008A912F90000000512070102000000010000000A00000004"
theorem small_4010782_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010782_right_root small_4010782_right_fuel small_4010782_right_count small_4010782_right_encoded = true := by
  decide +kernel
theorem small_4010782_right_covered : CoveredBy scale carrier boxes small_4010782_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010782_right_root small_4010782_right_fuel small_4010782_right_count small_4010782_right_encoded small_4010782_right_checked

theorem cover_4010782 : CoveredBy scale carrier boxes root_4010782 := by
  apply coveredBy_split_literal root_4010782 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1506.root small_4010782_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1506.covered
  · exact small_4010782_right_covered
#print axioms cover_4010782

def root_4010776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010776_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010776_left_fuel : Nat := 1
def small_4010776_left_count : Nat := 1
def small_4010776_left_encoded : String := "00000001"
theorem small_4010776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010776_left_root small_4010776_left_fuel small_4010776_left_count small_4010776_left_encoded = true := by
  decide +kernel
theorem small_4010776_left_covered : CoveredBy scale carrier boxes small_4010776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010776_left_root small_4010776_left_fuel small_4010776_left_count small_4010776_left_encoded small_4010776_left_checked

theorem cover_4010776 : CoveredBy scale carrier boxes root_4010776 := by
  apply coveredBy_split_literal root_4010776 small_4010776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4010782 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4010776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4010782
#print axioms cover_4010776

def root_4010346 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010346_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010346_left_fuel : Nat := 21
def small_4010346_left_count : Nat := 201
def small_4010346_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91305120700FA08A9130700000006000000060000000212073CFA0000000208A91307120700FC08A912FF00000008120700FE0000000A000000040000000312073CFC0000000308A912FF12073CFE0000000400000008120700FE0500010200000006135D80F90000000104548A01138670F60CFD9C0500000006000000080000000000000006000000040000000012073CF60000000008A91305120700FA08A91307120700FC08A912FF12073CFE0000000405000102135D44F90000000800000001135D80F9000000010CFD9C010000000600000008000000060000000312073CFC0000000308A912FF12073CFE00000004050001020000000800000006000000060000000212073CFA0000000208A91307120700FC08A912FF12073CFE0000000400000008120700FE05000102135D44F90CFD9C010000000A0000000800000001135D80F9000000010CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C050000000600000008000000040000000312073CFC0000000308A912FF00000008120700FE050001020000000600000006000000041151E8FF08A91301120700F608A91305120700FA08A91307120700FC0000000600000003000000060000000212073CFA00000002000000080000000012073CF60000000008A91305120700FA08A91307120700FC0000000800000003000000080000000212073CFA0000000208A91307000000080000000800000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F6000000060000000012073CF60000000008A9130500000006000000061151E8FF0000000500000004000000021151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120700F608A91307120700FC0000000800000003000000080000000012073CF60000000008A91307120700FC0000000800000003000000081151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A91301120700F60000000800000000000000080000000600000001"
theorem small_4010346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010346_left_root small_4010346_left_fuel small_4010346_left_count small_4010346_left_encoded = true := by
  decide +kernel
theorem small_4010346_left_covered : CoveredBy scale carrier boxes small_4010346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010346_left_root small_4010346_left_fuel small_4010346_left_count small_4010346_left_encoded small_4010346_left_checked

theorem cover_4010346 : CoveredBy scale carrier boxes root_4010346 := by
  apply coveredBy_split_literal root_4010346 small_4010346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4010776 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4010346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4010776
#print axioms cover_4010346

def root_4010341 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010341_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4010341_right_fuel : Nat := 1
def small_4010341_right_count : Nat := 1
def small_4010341_right_encoded : String := "00000000"
theorem small_4010341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4010341_right_root small_4010341_right_fuel small_4010341_right_count small_4010341_right_encoded = true := by
  decide +kernel
theorem small_4010341_right_covered : CoveredBy scale carrier boxes small_4010341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4010341_right_root small_4010341_right_fuel small_4010341_right_count small_4010341_right_encoded small_4010341_right_checked

theorem cover_4010341 : CoveredBy scale carrier boxes root_4010341 := by
  apply coveredBy_split_literal root_4010341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4010346 small_4010341_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4010346
  · exact small_4010341_right_covered
#print axioms cover_4010341

def root_4010340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4010340 : CoveredBy scale carrier boxes root_4010340 := by
  apply coveredBy_split_literal root_4010340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4010341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1507.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4010341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1507.covered
#print axioms cover_4010340

def root_4021895 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4021895 : CoveredBy scale carrier boxes root_4021895 := by
  apply coveredBy_split_literal root_4021895 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1509.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1510.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1509.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1510.covered
#print axioms cover_4021895

def root_4021889 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021889_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021889_left_fuel : Nat := 1
def small_4021889_left_count : Nat := 1
def small_4021889_left_encoded : String := "00000003"
theorem small_4021889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021889_left_root small_4021889_left_fuel small_4021889_left_count small_4021889_left_encoded = true := by
  decide +kernel
theorem small_4021889_left_covered : CoveredBy scale carrier boxes small_4021889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021889_left_root small_4021889_left_fuel small_4021889_left_count small_4021889_left_encoded small_4021889_left_checked

theorem cover_4021889 : CoveredBy scale carrier boxes root_4021889 := by
  apply coveredBy_split_literal root_4021889 small_4021889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021895 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4021889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021895
#print axioms cover_4021889

def root_4021849 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021849_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021849_left_fuel : Nat := 10
def small_4021849_left_count : Nat := 19
def small_4021849_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA000000070F87510500000002067ECE8112EA58F6022A45790000000713E1C50200000001000000070000000000000007000000040000000700000003"
theorem small_4021849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021849_left_root small_4021849_left_fuel small_4021849_left_count small_4021849_left_encoded = true := by
  decide +kernel
theorem small_4021849_left_covered : CoveredBy scale carrier boxes small_4021849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021849_left_root small_4021849_left_fuel small_4021849_left_count small_4021849_left_encoded small_4021849_left_checked

theorem cover_4021849 : CoveredBy scale carrier boxes root_4021849 := by
  apply coveredBy_split_literal root_4021849 small_4021849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021889 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4021849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021889
#print axioms cover_4021849

def root_4021843 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021843_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021843_left_fuel : Nat := 1
def small_4021843_left_count : Nat := 1
def small_4021843_left_encoded : String := "00000002"
theorem small_4021843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021843_left_root small_4021843_left_fuel small_4021843_left_count small_4021843_left_encoded = true := by
  decide +kernel
theorem small_4021843_left_covered : CoveredBy scale carrier boxes small_4021843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021843_left_root small_4021843_left_fuel small_4021843_left_count small_4021843_left_encoded small_4021843_left_checked

theorem cover_4021843 : CoveredBy scale carrier boxes root_4021843 := by
  apply coveredBy_split_literal root_4021843 small_4021843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021849 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4021843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021849
#print axioms cover_4021843

def root_4021817 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021817_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021817_left_fuel : Nat := 7
def small_4021817_left_count : Nat := 13
def small_4021817_left_encoded : String := "0F34D0FA0CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FC0000000700000006000000040000000700000002"
theorem small_4021817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021817_left_root small_4021817_left_fuel small_4021817_left_count small_4021817_left_encoded = true := by
  decide +kernel
theorem small_4021817_left_covered : CoveredBy scale carrier boxes small_4021817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021817_left_root small_4021817_left_fuel small_4021817_left_count small_4021817_left_encoded small_4021817_left_checked

theorem cover_4021817 : CoveredBy scale carrier boxes root_4021817 := by
  apply coveredBy_split_literal root_4021817 small_4021817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021843 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4021817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021843
#print axioms cover_4021817

def root_4021811 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021811_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021811_left_fuel : Nat := 1
def small_4021811_left_count : Nat := 1
def small_4021811_left_encoded : String := "00000001"
theorem small_4021811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021811_left_root small_4021811_left_fuel small_4021811_left_count small_4021811_left_encoded = true := by
  decide +kernel
theorem small_4021811_left_covered : CoveredBy scale carrier boxes small_4021811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021811_left_root small_4021811_left_fuel small_4021811_left_count small_4021811_left_encoded small_4021811_left_checked

theorem cover_4021811 : CoveredBy scale carrier boxes root_4021811 := by
  apply coveredBy_split_literal root_4021811 small_4021811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021817 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4021811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021817
#print axioms cover_4021811

def root_4021499 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021499_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021499_left_fuel : Nat := 22
def small_4021499_left_count : Nat := 147
def small_4021499_left_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC0000000304548A090000000600000006000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D0500000007000000020F87510500000002067ECE8100000005000000070000000400000007000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07067ECE8112EA58F6067ECE790000000512EA5902000000010000000500000000000000060000000300000006000000020F875105000000020C9A86FC0F878D07067ECE8112EA58F6067ECE790000000512EA590200000001000000050000000012EA94F600000000067ECE790000000512EA59020000000100000008000000030F87510700000003067ECE8112EA58F6067ECE790000000512EA590200000001000000050000000012EA94F600000000067ECE790000000512EA590200000001022A45890000000500000006000000041386ACFE000000040C9A86FA0F878D050C9A86FC0F878D0700000007000000030F8751070000000300000006000000020F875105000000020C9A86FC0F878D070000000A000000030F87510700000003067ECE8112EA58F6067ECE7912EA9502067ECE89000000050000000A0000000112EA590200000001067ECE8912EA58FE0B4D43FA10804D050B4D43FC10804D070000000500000003000000050000000210801105000000020B4D43FC0000000A00000005000000040000000A0000000012EA94F600000000067ECE790000000612EA590200000001067ECE89000000060000000700000001"
theorem small_4021499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021499_left_root small_4021499_left_fuel small_4021499_left_count small_4021499_left_encoded = true := by
  decide +kernel
theorem small_4021499_left_covered : CoveredBy scale carrier boxes small_4021499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021499_left_root small_4021499_left_fuel small_4021499_left_count small_4021499_left_encoded small_4021499_left_checked

theorem cover_4021499 : CoveredBy scale carrier boxes root_4021499 := by
  apply coveredBy_split_literal root_4021499 small_4021499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021811 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4021499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021811
#print axioms cover_4021499

def root_4021493 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021493_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4021493_left_fuel : Nat := 1
def small_4021493_left_count : Nat := 1
def small_4021493_left_encoded : String := "00000000"
theorem small_4021493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4021493_left_root small_4021493_left_fuel small_4021493_left_count small_4021493_left_encoded = true := by
  decide +kernel
theorem small_4021493_left_covered : CoveredBy scale carrier boxes small_4021493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4021493_left_root small_4021493_left_fuel small_4021493_left_count small_4021493_left_encoded small_4021493_left_checked

theorem cover_4021493 : CoveredBy scale carrier boxes root_4021493 := by
  apply coveredBy_split_literal root_4021493 small_4021493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021499 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4021493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021499
#print axioms cover_4021493

def root_4019337 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4019337 : CoveredBy scale carrier boxes root_4019337 := by
  apply coveredBy_split_literal root_4019337 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1508.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4021493 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1508.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4021493
#print axioms cover_4019337

def root_4019332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019332_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019332_right_fuel : Nat := 1
def small_4019332_right_count : Nat := 1
def small_4019332_right_encoded : String := "00000004"
theorem small_4019332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019332_right_root small_4019332_right_fuel small_4019332_right_count small_4019332_right_encoded = true := by
  decide +kernel
theorem small_4019332_right_covered : CoveredBy scale carrier boxes small_4019332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019332_right_root small_4019332_right_fuel small_4019332_right_count small_4019332_right_encoded small_4019332_right_checked

theorem cover_4019332 : CoveredBy scale carrier boxes root_4019332 := by
  apply coveredBy_split_literal root_4019332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019337 small_4019332_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019337
  · exact small_4019332_right_covered
#print axioms cover_4019332

def root_4019331 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019331_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019331_right_fuel : Nat := 26
def small_4019331_right_count : Nat := 269
def small_4019331_right_encoded : String := "12073CFE0000000404548A01138670F6045489F91386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0000000A0F87510700000003022A458113E1C4F6067ECE790000000912EA590200000001000000090000000013E200F600000000067ECE790000000712EA59020000000100000007000000020F875105000000020000000A000000040F350CFE000000040C9A86FA0F878D050C9A86FC000000070000000A000000020000000A0000000113867102000000010CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0F878D0700000007000000030F87510700000003022A458113E1C4F6022A457913E201020AD3578910D100FE0000000900000004000000070000000113E1C502000000010AD3578910D100FE0DE7C9FA000000070E5FD905000000020B4D43FC000000070000000800000004000000070000000000000007000000020F875105000000020C9A86FC0F878D070000000A000000030F87510700000003022A458113E1C4F6022A45790000000A13E1C502000000010AD3578910D100FE0B4D43FA10804D050B4D43FC0000000A108011070000000300000009000000020000000A000000040000000A0000000013E200F600000000022A457913E201020000000A0000000113E1C502000000010AD3578910D100FE0B4D43FA10804D0500000007000000020000000A000000040000000A000000040F350CFE000000040C9A86FA0F878D0500000007000000020F875105000000020C9A86FC0000000A0F875107000000030C9A86FE0000000A0F8751090000000400000007000000001386ACF600000000045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D0500000007000000020F875105000000020000000A000000040F350CFE000000040C9A86FA000000070000000A0000000113867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003067ECE8112EA58F6022A457913E201020AD3578910D100FE0000000700000004000000070000000113E1C502000000010AD3578910D100FE0000000700000004000000070000000000000007000000040F350CFE0000000400000007"
theorem small_4019331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019331_right_root small_4019331_right_fuel small_4019331_right_count small_4019331_right_encoded = true := by
  decide +kernel
theorem small_4019331_right_covered : CoveredBy scale carrier boxes small_4019331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019331_right_root small_4019331_right_fuel small_4019331_right_count small_4019331_right_encoded small_4019331_right_checked

theorem cover_4019331 : CoveredBy scale carrier boxes root_4019331 := by
  apply coveredBy_split_literal root_4019331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019332 small_4019331_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019332
  · exact small_4019331_right_covered
#print axioms cover_4019331

def root_4019325 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019325_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019325_left_fuel : Nat := 1
def small_4019325_left_count : Nat := 1
def small_4019325_left_encoded : String := "00000003"
theorem small_4019325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019325_left_root small_4019325_left_fuel small_4019325_left_count small_4019325_left_encoded = true := by
  decide +kernel
theorem small_4019325_left_covered : CoveredBy scale carrier boxes small_4019325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019325_left_root small_4019325_left_fuel small_4019325_left_count small_4019325_left_encoded small_4019325_left_checked

theorem cover_4019325 : CoveredBy scale carrier boxes root_4019325 := by
  apply coveredBy_split_literal root_4019325 small_4019325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019331 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4019325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019331
#print axioms cover_4019325

def root_4019279 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019279_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019279_left_fuel : Nat := 10
def small_4019279_left_count : Nat := 21
def small_4019279_left_encoded : String := "120700FC08A91309120700FE04548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020000000A000000011386710200000001000000070000000000000007000000040000000700000003"
theorem small_4019279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019279_left_root small_4019279_left_fuel small_4019279_left_count small_4019279_left_encoded = true := by
  decide +kernel
theorem small_4019279_left_covered : CoveredBy scale carrier boxes small_4019279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019279_left_root small_4019279_left_fuel small_4019279_left_count small_4019279_left_encoded small_4019279_left_checked

theorem cover_4019279 : CoveredBy scale carrier boxes root_4019279 := by
  apply coveredBy_split_literal root_4019279 small_4019279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019325 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4019279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019325
#print axioms cover_4019279

def root_4019273 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019273_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019273_left_fuel : Nat := 1
def small_4019273_left_count : Nat := 1
def small_4019273_left_encoded : String := "00000002"
theorem small_4019273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019273_left_root small_4019273_left_fuel small_4019273_left_count small_4019273_left_encoded = true := by
  decide +kernel
theorem small_4019273_left_covered : CoveredBy scale carrier boxes small_4019273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019273_left_root small_4019273_left_fuel small_4019273_left_count small_4019273_left_encoded small_4019273_left_checked

theorem cover_4019273 : CoveredBy scale carrier boxes root_4019273 := by
  apply coveredBy_split_literal root_4019273 small_4019273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019279 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4019273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019279
#print axioms cover_4019273

def root_4019211 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019211_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019211_left_fuel : Nat := 14
def small_4019211_left_count : Nat := 29
def small_4019211_left_encoded : String := "120700FA08A913070000000712073CFC0000000308A91309120700FE04548A01138670F6045489F91386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC0000000300000006000000011386710200000001000000070000000000000007000000040000000700000002"
theorem small_4019211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019211_left_root small_4019211_left_fuel small_4019211_left_count small_4019211_left_encoded = true := by
  decide +kernel
theorem small_4019211_left_covered : CoveredBy scale carrier boxes small_4019211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019211_left_root small_4019211_left_fuel small_4019211_left_count small_4019211_left_encoded small_4019211_left_checked

theorem cover_4019211 : CoveredBy scale carrier boxes root_4019211 := by
  apply coveredBy_split_literal root_4019211 small_4019211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019273 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4019211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019273
#print axioms cover_4019211

def root_4019205 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019205_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4019205_left_fuel : Nat := 1
def small_4019205_left_count : Nat := 1
def small_4019205_left_encoded : String := "00000001"
theorem small_4019205_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4019205_left_root small_4019205_left_fuel small_4019205_left_count small_4019205_left_encoded = true := by
  decide +kernel
theorem small_4019205_left_covered : CoveredBy scale carrier boxes small_4019205_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4019205_left_root small_4019205_left_fuel small_4019205_left_count small_4019205_left_encoded small_4019205_left_checked

theorem cover_4019205 : CoveredBy scale carrier boxes root_4019205 := by
  apply coveredBy_split_literal root_4019205 small_4019205_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4019211 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4019205_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4019211
#print axioms cover_4019205

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289
