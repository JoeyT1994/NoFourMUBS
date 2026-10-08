import TaoBundleAssembly0289
import TaoBundleAssembly0290
import TaoBundleAssembly0291
import TaoBundleChunkBatch0380
import TaoBundleChunkBatch0381
import TaoBundleChunkBatch0382
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292
def root_4039337 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039337_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039337_left_fuel : Nat := 19
def small_4039337_left_count : Nat := 181
def small_4039337_left_encoded : String := "12073D0208A91309120700FE050000FA135D8105050000FC135D810704548A01138670F60CFD9BF90F350D0200000009000000010F34D1020000000104548A090000000500000009000000001386ACF6000000000CFD9BF90F350D0204548A09000000051386ACFE000000040C9A87020000000600000008000000010F34D1020000000104548A09138670FE00000008000000041386ACFE00000004078000FA128A7D05078000FC128A7D07067ECE810000000900000006000000030000000900000002128A410500000002078000FC00000008128A410700000003067ECE81000000090000000800000003135D45070000000304548A01000000091386ACF6000000000CFD9BF9000000090F34D1020000000104548A09000000050000000900000002135D450500000002050000FC135D810704548A01138670F60CFD9BF9000000050F34D1020000000100000005000000001386ACF6000000000CFD9BF9000000080F34D102000000010000000800000003135D45070000000304548A01000000051386ACF6000000000CFD9BF900000005000000070000000412073CFE00000004050000FA135D8105050000FC135D810704548A01138670F60CFD9BF90000000A0F34D102000000010000000A000000001386ACF6000000000CFD9BF90000000A0F34D102000000010CFD9C090F34D0FE078000FA128A7D050000000A000000020000000A000000040000000A00000003135D45070000000304548A01000000091386ACF6000000000CFD9BF9000000090F34D102000000010CFD9C090F34D0FE00000009000000040000000900000002135D450500000002050000FC0000000A135D45070000000304548A01138670F60CFD9BF9000000090000000A000000001386ACF6000000000CFD9BF90F350D0200000009000000010F34D102000000010CFD9C090F34D0FE028000FA0000000913D7B10500000002028000FC0000000A00000007000000040000000A00000001"
theorem small_4039337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4039337_left_root small_4039337_left_fuel small_4039337_left_count small_4039337_left_encoded = true := by
  decide +kernel
theorem small_4039337_left_covered : CoveredBy scale carrier boxes small_4039337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4039337_left_root small_4039337_left_fuel small_4039337_left_count small_4039337_left_encoded small_4039337_left_checked

theorem cover_4039337 : CoveredBy scale carrier boxes root_4039337 := by
  apply coveredBy_split_literal root_4039337 small_4039337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0291.root_4039715 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4039337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0291.cover_4039715
#print axioms cover_4039337

def root_4039332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039332_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039332_right_fuel : Nat := 1
def small_4039332_right_count : Nat := 1
def small_4039332_right_encoded : String := "00000000"
theorem small_4039332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4039332_right_root small_4039332_right_fuel small_4039332_right_count small_4039332_right_encoded = true := by
  decide +kernel
theorem small_4039332_right_covered : CoveredBy scale carrier boxes small_4039332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4039332_right_root small_4039332_right_fuel small_4039332_right_count small_4039332_right_encoded small_4039332_right_checked

theorem cover_4039332 : CoveredBy scale carrier boxes root_4039332 := by
  apply coveredBy_split_literal root_4039332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039337 small_4039332_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039337
  · exact small_4039332_right_covered
#print axioms cover_4039332

def root_4049511 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4049511_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4049511_left_fuel : Nat := 21
def small_4049511_left_count : Nat := 287
def small_4049511_left_encoded : String := "12073D0208A91309120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F60CFD9BF9000000060F34D1020000000104548A09000000061386ACFE00000004078000FA00000006128A410500000002078000FC00000006000000060000000000000006000000030000000600000002135D450500000002050000FC135D81070CFD9C010F34D0F600000008000000000000000800000003135D4507000000030CFD9C010F34D0F60CFD9BF9000000080F34D1020000000104548A09000000061386ACFE00000004028000FA0000000600000008000000000F350CF600000000000000060000000412073CFE00000004050000FA135D8105050000FC135D81070CFD9C010F34D0F60CFD9BF90F350D020000000A000000010F34D102000000010CFD9C090F34D0FE078000FA128A7D05078000FC000000060000000600000002128A410500000002078000FC0000000A128A4107000000030AD357810000000A00000006000000040000000A000000000F350CF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9C09000000060F350CFE000000040C9A86F60000000A0000000600000003135D4507000000030CFD9C010F34D0F60CFD9BF90F350D020CFD9C090000000600000009000000010F34D102000000010CFD9C090F34D0FE078000FA00000006128A410500000002028000FC0000000600000006000000040F350CFE000000040C9A86FE0F878D09078000FA00000006128A410500000002028000FC0000000600000006000000040F875109000000040000000A000000000F350CF6000000000CFD9BF90F350D0200000006000000010F34D102000000010CFD9C09000000060000000500000002135D450500000002050000FC135D81070CFD9C010F34D0F60CFD9BF90F350D020000000A000000010F34D102000000010CFD9C090F34D0FE028000FA0000000A0000000A000000040000000A000000000F350CF6000000000CFD9BF90F350D020CFD9C090F34D0FE00000006000000040000000A000000010F34D102000000010CFD9C090F34D0FE0C9A86F60F878D01028000FA13D7ED05000000060000000200000008000000000F8751010000000000000006000000040000000500000003135D4507000000030CFD9C010F34D0F60CFD9BF90F350D020CFD9C090F34D0FE0C9A8702000000060F878CF900000001028000FA0000000600000008000000040000000A000000010F34D102000000010CFD9C090F34D0FE028000FA13D7ED05028000FC13D7ED070AD3578110D100F60000000A00000000000000060000000313D7B107000000030AD3578100000009000000060000000213D7B10500000002028000FC13D7ED070AD357810000000A000000080000000313D7B107000000030AD3578110D100F6000000090000000010D13CF6000000000AD357790000000600000006000000040F350CFE000000040000000A000000000F350CF6000000000CFD9BF90F350D020CFD9C09000000060F350CFE0000000400000006000000010F34D102000000010CFD9C090F34D0FE00000006000000040000000500000001"
theorem small_4049511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4049511_left_root small_4049511_left_fuel small_4049511_left_count small_4049511_left_encoded = true := by
  decide +kernel
theorem small_4049511_left_covered : CoveredBy scale carrier boxes small_4049511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4049511_left_root small_4049511_left_fuel small_4049511_left_count small_4049511_left_encoded small_4049511_left_checked

theorem cover_4049511 : CoveredBy scale carrier boxes root_4049511 := by
  apply coveredBy_split_literal root_4049511 small_4049511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1520.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4049511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1520.covered
#print axioms cover_4049511

def root_4049505 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4049505_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4049505_left_fuel : Nat := 1
def small_4049505_left_count : Nat := 1
def small_4049505_left_encoded : String := "00000000"
theorem small_4049505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4049505_left_root small_4049505_left_fuel small_4049505_left_count small_4049505_left_encoded = true := by
  decide +kernel
theorem small_4049505_left_covered : CoveredBy scale carrier boxes small_4049505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4049505_left_root small_4049505_left_fuel small_4049505_left_count small_4049505_left_encoded small_4049505_left_checked

theorem cover_4049505 : CoveredBy scale carrier boxes root_4049505 := by
  apply coveredBy_split_literal root_4049505 small_4049505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4049511 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4049505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4049511
#print axioms cover_4049505

def root_4039331 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4039331 : CoveredBy scale carrier boxes root_4039331 := by
  apply coveredBy_split_literal root_4039331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4049505 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039332
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4049505
#print axioms cover_4039331

def root_4039326 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039326_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039326_right_fuel : Nat := 1
def small_4039326_right_count : Nat := 1
def small_4039326_right_encoded : String := "00000004"
theorem small_4039326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4039326_right_root small_4039326_right_fuel small_4039326_right_count small_4039326_right_encoded = true := by
  decide +kernel
theorem small_4039326_right_covered : CoveredBy scale carrier boxes small_4039326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4039326_right_root small_4039326_right_fuel small_4039326_right_count small_4039326_right_encoded small_4039326_right_checked

theorem cover_4039326 : CoveredBy scale carrier boxes root_4039326 := by
  apply coveredBy_split_literal root_4039326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039331 small_4039326_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039331
  · exact small_4039326_right_covered
#print axioms cover_4039326

def root_4039325 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039325_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039325_right_fuel : Nat := 22
def small_4039325_right_count : Nat := 149
def small_4039325_right_encoded : String := "1151E9090000000408A91301120700F608A912F912073D02050000FA135D8105050000FC135D8107050000FE0000000A135D4509000000040000000A00000003135D450700000003050000FE00000009135D45090000000400000009000000020000000A000000011207010200000001050000FA135D8105050000FC135D8107050000FE135D810904548A01138670F6045489F90000000A1386710200000001078000FA128A7D05078000FC0000000A128A410700000003078000FE00000008128A41090000000400000005000000020000000A000000001386ACF600000000045489F90000000A0000000500000004135D45090000000404548A01138670F6045489F90000000A00000005000000000000000500000003135D450700000003050000FE135D810904548A01138670F6045489F90000000900000005000000000000000500000004135D45090000000404548A01138670F6045489F90000000900000005000000000000000500000002135D450500000002050000FC135D8107050000FE0000000A135D4509000000040000000A00000003135D450700000003050000FE135D810904548A010000000A0000000500000004135D450900000004000000050000000012073CF60000000008A912F912073D02050000FA135D8105050000FC0000000A135D450700000003050000FE135D81090CFD9C010000000A0000000500000004135D4509000000040000000A00000002135D450500000002050000FC0000000A135D450700000003050000FE135D81090CFD9C010000000A00000005000000040000000A0000000100000005"
theorem small_4039325_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4039325_right_root small_4039325_right_fuel small_4039325_right_count small_4039325_right_encoded = true := by
  decide +kernel
theorem small_4039325_right_covered : CoveredBy scale carrier boxes small_4039325_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4039325_right_root small_4039325_right_fuel small_4039325_right_count small_4039325_right_encoded small_4039325_right_checked

theorem cover_4039325 : CoveredBy scale carrier boxes root_4039325 := by
  apply coveredBy_split_literal root_4039325 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039326 small_4039325_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039326
  · exact small_4039325_right_covered
#print axioms cover_4039325

def root_4039319 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039319_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4039319_left_fuel : Nat := 1
def small_4039319_left_count : Nat := 1
def small_4039319_left_encoded : String := "00000003"
theorem small_4039319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4039319_left_root small_4039319_left_fuel small_4039319_left_count small_4039319_left_encoded = true := by
  decide +kernel
theorem small_4039319_left_covered : CoveredBy scale carrier boxes small_4039319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4039319_left_root small_4039319_left_fuel small_4039319_left_count small_4039319_left_encoded small_4039319_left_checked

theorem cover_4039319 : CoveredBy scale carrier boxes root_4039319 := by
  apply coveredBy_split_literal root_4039319 small_4039319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039325 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4039319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039325
#print axioms cover_4039319

def root_4033949 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4033949 : CoveredBy scale carrier boxes root_4033949 := by
  apply coveredBy_split_literal root_4033949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4033950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4039319 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4033950
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4039319
#print axioms cover_4033949

def root_4033943 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033943_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4033943_left_fuel : Nat := 1
def small_4033943_left_count : Nat := 1
def small_4033943_left_encoded : String := "00000002"
theorem small_4033943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4033943_left_root small_4033943_left_fuel small_4033943_left_count small_4033943_left_encoded = true := by
  decide +kernel
theorem small_4033943_left_covered : CoveredBy scale carrier boxes small_4033943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4033943_left_root small_4033943_left_fuel small_4033943_left_count small_4033943_left_encoded small_4033943_left_checked

theorem cover_4033943 : CoveredBy scale carrier boxes root_4033943 := by
  apply coveredBy_split_literal root_4033943 small_4033943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4033949 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4033943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4033949
#print axioms cover_4033943

def root_4018553 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4018553 : CoveredBy scale carrier boxes root_4018553 := by
  apply coveredBy_split_literal root_4018553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.root_4018554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4033943 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0290.cover_4018554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4033943
#print axioms cover_4018553

def root_4018547 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018547_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4018547_left_fuel : Nat := 1
def small_4018547_left_count : Nat := 1
def small_4018547_left_encoded : String := "00000001"
theorem small_4018547_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4018547_left_root small_4018547_left_fuel small_4018547_left_count small_4018547_left_encoded = true := by
  decide +kernel
theorem small_4018547_left_covered : CoveredBy scale carrier boxes small_4018547_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4018547_left_root small_4018547_left_fuel small_4018547_left_count small_4018547_left_encoded small_4018547_left_checked

theorem cover_4018547 : CoveredBy scale carrier boxes root_4018547 := by
  apply coveredBy_split_literal root_4018547 small_4018547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4018553 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4018547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4018553
#print axioms cover_4018547

def root_4017847 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4017847_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4017847_left_fuel : Nat := 20
def small_4017847_left_count : Nat := 335
def small_4017847_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0000FE1152250908A91301120700F608A91305120700FA08A913070000000612073CFC0000000308A913090000000612073CFE000000040500010200000006135D80F90000000104548A010000000A000000060000000212073CFA0000000208A913070000000A12073CFC0000000308A91309120700FE0500010200000006135D80F90000000104548A010000000A00000006000000040000000A0000000012073CF60000000008A91305120700FA000000060000000212073CFA0000000208A91307120700FC08A91309120700FE050001020000000A135D80F9000000010CFD9C010000000A00000006000000040000000A0000000312073CFC0000000308A913090000000612073CFE0000000400000006000000041151E9090000000408A91301120700F608A91305120700FA08A913070000000612073CFC000000030500010200000006000000070000000212073CFA0000000208A913070000000A12073CFC00000003050001020000000A0000000A0000000012073CF60000000008A91305120700FA00000006000000020000000A000000031151E907000000030A0000FE1152250908A91301120700F608A91305120700FA08A913090000000612073CFE000000040500010200000006135D80F900000001050000FC135D81070000000600000003000000060000000212073CFA0000000208A91309120700FE000000060000000412073CFE000000040500010200000009135D80F900000001050000FC135D810704548A01000000090000000A00000003000000090000000012073CF60000000008A91305120700FA000000060000000212073CFA0000000208A913090000000612073CFE000000040500010200000006135D80F90000000100000006000000041151E9090000000408A91301120700F608A91305120700FA05000102135D44F90000000900000001135D80F900000001050000FC135D8107050000FE00000009135D45090000000400000007000000030000000900000002000000090000000012073CF60000000008A91305120700FA05000102135D44F9050000FC000000060000000A00000001135D80F900000001050000FC00000006135D450700000003050000FE00000006000000070000000212073CFA000000020500010200000006135D80F900000001050000FC0000000600000006000000021151E905000000020A0000FC115225070A0000FE1152250908A91301120700F608A913070000000A0000000A0000000012073CF60000000008A91307120700FC08A91309120700FE050001020000000A135D80F900000001050000FA135D81050000000A0000000200000008000000040000000A0000000312073CFC0000000308A91309120700FE0500010200000008135D80F900000001050000FA135D81050CFD9C010F34D0F600000006000000000000000600000002000000080000000412073CFE00000004050001020000000A135D80F9000000010000000A000000041151E909000000040000000A000000031151E907000000030A0000FE1152250908A91301120700F608A91309120700FE05000102135D44F90000000800000001135D80F900000001050000FA000000090000000800000004000000090000000012073CF60000000008A913090000000612073CFE0000000405000102135D44F9050000FA000000060000000A00000001135D80F900000001050000FA135D8105050000FC000000060000000600000002135D450500000002050000FC0000000A135D4507000000030CFD9C010000000A00000006000000041151E909000000040000000A00000001"
theorem small_4017847_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4017847_left_root small_4017847_left_fuel small_4017847_left_count small_4017847_left_encoded = true := by
  decide +kernel
theorem small_4017847_left_covered : CoveredBy scale carrier boxes small_4017847_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4017847_left_root small_4017847_left_fuel small_4017847_left_count small_4017847_left_encoded small_4017847_left_checked

theorem cover_4017847 : CoveredBy scale carrier boxes root_4017847 := by
  apply coveredBy_split_literal root_4017847 small_4017847_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4018547 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4017847_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4018547
#print axioms cover_4017847

def root_4017842 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4017842_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4017842_right_fuel : Nat := 1
def small_4017842_right_count : Nat := 1
def small_4017842_right_encoded : String := "00000000"
theorem small_4017842_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4017842_right_root small_4017842_right_fuel small_4017842_right_count small_4017842_right_encoded = true := by
  decide +kernel
theorem small_4017842_right_covered : CoveredBy scale carrier boxes small_4017842_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4017842_right_root small_4017842_right_fuel small_4017842_right_count small_4017842_right_encoded small_4017842_right_checked

theorem cover_4017842 : CoveredBy scale carrier boxes root_4017842 := by
  apply coveredBy_split_literal root_4017842 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4017847 small_4017842_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4017847
  · exact small_4017842_right_covered
#print axioms cover_4017842

def root_4017841 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4017841 : CoveredBy scale carrier boxes root_4017841 := by
  apply coveredBy_split_literal root_4017841 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4017842 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1521.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4017842
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1521.covered
#print axioms cover_4017841

def root_4010339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4010339 : CoveredBy scale carrier boxes root_4010339 := by
  apply coveredBy_split_literal root_4010339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.root_4010340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4017841 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0289.cover_4010340
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4017841
#print axioms cover_4010339

def root_4057808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057808_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057808_left_fuel : Nat := 27
def small_4057808_left_count : Nat := 429
def small_4057808_left_encoded : String := "115225070A0001081151E9090000000408A91301120700F608A912F912073D0208A91305120700FA08A9130700000005000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000305000108135D45090000000404548A01138670F60CFD9BF90F350D020CFD9C05000000070F350CFA000000020000000A000000010F34D102000000010CFD9C05000000070F350CFA000000020CFD9C070000000700000007000000001386ACF6000000000CFD9BF9000000070F34D1020000000100000007135D810904548A01138670F60CFD9BF90F350D020CFD9C05000000050F350CFA0000000200000005000000010F34D102000000010CFD9C05000000050F350CFA000000020CFD9C070000000500000007000000001386ACF6000000000CFD9BF9000000070F34D10200000001000000070000000400000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000305000108135D45090000000404548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020CFD9C0700000007000000070000000113867102000000010CFD9C05000000070F350CFA000000020CFD9C0700000007000000070000000000000007135D810904548A01138670F6045489F91386AD020CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F87510500000002000000070000000113867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003078001080000000700000006000000001386ACF600000000045489F90000000713867102000000010CFD9C050000000700000007000000040000000012073CF60000000008A912F912073D0208A91305120700FA000000070000000212073CFA0000000208A913070000000612073CFC0000000305000108135D45090000000400000007135D81090CFD9C010F34D0F60000000700000000000000070000000400000001120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC0000000305000108135D45090000000400000007000000071152250908A91301120700F608A912F912073D0208A913050000000512073CFA0000000208A913070000000512073CFC0000000308A913090000000512073D0804548A01138670F60CFD9BF9000000050F34D102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030CFD9C09000000050F350D080C9A86FA000000050F875105000000020000000600000004000000001386ACF6000000000CFD9BF90F350D020CFD9C050000000500000006000000010F34D102000000010CFD9C050F34D0FA0000000600000002000000060000000400000001120701020000000108A91305120700FA08A913070000000512073CFC0000000308A913090000000512073D0804548A01138670F600000005000000001386ACF600000000045489F90000000600000006000000040000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A9130912070108000000040000000612073D0804548A01138670F6045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9C07000000060F350CFC000000030CFD9C09000000060F350D080C9A86FA000000060F8751050000000200000006000000040000000113867102000000010CFD9C05000000090F350CFA000000020CFD9C070000000600000009000000001386ACF600000000045489F91386AD020CFD9C05000000090000000600000001138671020000000100000009000000040000000012073CF60000000008A912F912073D0208A91305120700FA08A913070000000512073CFC0000000308A9130900000005000000070000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000308A9130912070108000000040CFD9C01000000060000000912073D080CFD9C010F34D0F60CFD9BF90F350D02000000060000000100000006000000000F350CF600000000000000060000000400000001120701020000000108A91305120700FA08A913070000000612073CFC0000000308A9130900000006000000060000000212073CFA0000000208A913070000000612073CFC0000000308A913090000000612073D080CFD9C010F34D0F6045489F900000006000000060000000000000006000000040000000400000003"
theorem small_4057808_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4057808_left_root small_4057808_left_fuel small_4057808_left_count small_4057808_left_encoded = true := by
  decide +kernel
theorem small_4057808_left_covered : CoveredBy scale carrier boxes small_4057808_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4057808_left_root small_4057808_left_fuel small_4057808_left_count small_4057808_left_encoded small_4057808_left_checked

theorem cover_4057808 : CoveredBy scale carrier boxes root_4057808 := by
  apply coveredBy_split_literal root_4057808 small_4057808_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1524.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4057808_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1524.covered
#print axioms cover_4057808

def root_4057803 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057803_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057803_right_fuel : Nat := 1
def small_4057803_right_count : Nat := 1
def small_4057803_right_encoded : String := "00000002"
theorem small_4057803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4057803_right_root small_4057803_right_fuel small_4057803_right_count small_4057803_right_encoded = true := by
  decide +kernel
theorem small_4057803_right_covered : CoveredBy scale carrier boxes small_4057803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4057803_right_root small_4057803_right_fuel small_4057803_right_count small_4057803_right_encoded small_4057803_right_checked

theorem cover_4057803 : CoveredBy scale carrier boxes root_4057803 := by
  apply coveredBy_split_literal root_4057803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4057808 small_4057803_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4057808
  · exact small_4057803_right_covered
#print axioms cover_4057803

def root_4061698 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4061698 : CoveredBy scale carrier boxes root_4061698 := by
  apply coveredBy_split_literal root_4061698 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1525.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1526.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1525.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1526.covered
#print axioms cover_4061698

def root_4061692 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4061692_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4061692_left_fuel : Nat := 1
def small_4061692_left_count : Nat := 1
def small_4061692_left_encoded : String := "00000002"
theorem small_4061692_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4061692_left_root small_4061692_left_fuel small_4061692_left_count small_4061692_left_encoded = true := by
  decide +kernel
theorem small_4061692_left_covered : CoveredBy scale carrier boxes small_4061692_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4061692_left_root small_4061692_left_fuel small_4061692_left_count small_4061692_left_encoded small_4061692_left_checked

theorem cover_4061692 : CoveredBy scale carrier boxes root_4061692 := by
  apply coveredBy_split_literal root_4061692 small_4061692_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4061698 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4061692_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4061698
#print axioms cover_4061692

def root_4057802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4057802 : CoveredBy scale carrier boxes root_4057802 := by
  apply coveredBy_split_literal root_4057802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4057803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4061692 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4057803
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4061692
#print axioms cover_4057802

def root_4057796 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057796_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4057796_left_fuel : Nat := 1
def small_4057796_left_count : Nat := 1
def small_4057796_left_encoded : String := "00000001"
theorem small_4057796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4057796_left_root small_4057796_left_fuel small_4057796_left_count small_4057796_left_encoded = true := by
  decide +kernel
theorem small_4057796_left_covered : CoveredBy scale carrier boxes small_4057796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4057796_left_root small_4057796_left_fuel small_4057796_left_count small_4057796_left_encoded small_4057796_left_checked

theorem cover_4057796 : CoveredBy scale carrier boxes root_4057796 := by
  apply coveredBy_split_literal root_4057796 small_4057796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4057802 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4057796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4057802
#print axioms cover_4057796

def root_4056596 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4056596 : CoveredBy scale carrier boxes root_4056596 := by
  apply coveredBy_split_literal root_4056596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1523.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4057796 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1523.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4057796
#print axioms cover_4056596

def root_4056591 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4056591_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4056591_right_fuel : Nat := 1
def small_4056591_right_count : Nat := 1
def small_4056591_right_encoded : String := "00000000"
theorem small_4056591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4056591_right_root small_4056591_right_fuel small_4056591_right_count small_4056591_right_encoded = true := by
  decide +kernel
theorem small_4056591_right_covered : CoveredBy scale carrier boxes small_4056591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4056591_right_root small_4056591_right_fuel small_4056591_right_count small_4056591_right_encoded small_4056591_right_checked

theorem cover_4056591 : CoveredBy scale carrier boxes root_4056591 := by
  apply coveredBy_split_literal root_4056591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.root_4056596 small_4056591_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292.cover_4056596
  · exact small_4056591_right_covered
#print axioms cover_4056591

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0292
