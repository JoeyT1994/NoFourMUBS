import TaoBundleAssembly0328
import TaoBundleChunkBatch0432
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329
def root_4602663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602663_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602663_right_fuel : Nat := 32
def small_4602663_right_count : Nat := 463
def small_4602663_right_encoded : String := "12073CF60000000008A91303120701020000000108A91305120700FA08A91309120700FE050000FC135D81070CFD9C010F34D0F6000000060000000000000006000000030000000600000004000000080000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09138670FE0C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000600000000000000060000000300000006000000020F87510500000002078000FC128A7D070AD3578110D100F6022A458313E1C50200000001022A45890000000613E200FE000000040B4D43FA00000006108011050000000208C000FC11FC250700000006000000030000000613E20102022A45890000000A13E200FE000000040B4D43FA0000000A10801105000000020000000A000000010000000010D13CF600000000022A45830000000613E20102022A45890000000A000000050000000100000003128A4107000000030000000A000000041386ACFE000000040C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000600000000000000060000000300000006000000020F87510500000002078000FC128A7D070AD3578110D100F6022A458313E1C50200000001067ECE8912EA58FE0B4D43FA00000006108011050000000208C000FC0000000500000006000000040000000500000005000000000000000500000003128A4107000000030AD3578110D100F6022A4583000000060000000500000000000000051386AD020CFD9C050F34D0FA04548A09138670FE078000FC128A7D070000000800000003000000060000000400000008000000020F350CFA0000000204548A09138670FE0C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000A000000000000000A000000030000000A000000020F87510500000002078000FC128A7D070AD3578110D100F6067ECE8312EA5902000000010000000A000000050000000000000005000000030000000A000000041386ACFE000000040C9A86FA0F878D0500000008000000020F875105000000020000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09138670FE0C9A86F60F878D010C9A86FA000000060F87510500000002078000FC128A7D07022A45830000000613E20102022A45890000000600000005000000010000000300000006000000000F875101000000000C9A86FA0000000600000006000000041386ACFE000000040C9A86F60F878D010C9A86FA000000060F8751050000000200000005000000000F87510100000000000000051386AD020CFD9C050F34D0FA04548A090000000600000006000000020F350CFA0000000204548A09138670FE0C9A86F60F878D010C9A86FA0F878D05078000FC0000000500000006000000020F8751050000000200000005000000000F875101000000000000000500000004000000050000000100000003135D4507000000030CFD9C010F34D0F604548A0313867102000000010CFD9C05000000060F350CFA0000000204548A0900000006000000061386AD020CFD9C050F34D0FA00000006000000020F350CFA0000000204548A090000000A0000000500000001000000000F350CF60000000004548A031386710200000001000000061386AD020CFD9C050000000600000005000000010000000412073CFE00000004050000FC135D81070CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878D05078000FC0000000700000006000000020F875105000000020000000500000004000000051386AD020CFD9C05000000080000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA0000000600000002000000050000000500000003135D4507000000030CFD9C010F34D0F604548A0313867102000000010CFD9C05000000080000000500000005000000000000000512073D0208A91305120700FA08A91309120700FE050000FC135D81070CFD9C01000000080F350CF6000000000CFD9C030F34D10200000001000000080000000800000003135D4507000000030CFD9C010F34D0F60000000800000000000000060000000412073CFE00000004050000FC00000008000000080000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA0000000204548A09138670FE0000000500000004000000050F350D020000000500000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000800000002000000050000000500000003135D4507000000030CFD9C010F34D0F60CFD9C030F34D1020000000100000008000000050000000000000005000000040000000500000001"
theorem small_4602663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602663_right_root small_4602663_right_fuel small_4602663_right_count small_4602663_right_encoded = true := by
  decide +kernel
theorem small_4602663_right_covered : CoveredBy scale carrier boxes small_4602663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602663_right_root small_4602663_right_fuel small_4602663_right_count small_4602663_right_encoded small_4602663_right_checked

theorem cover_4602663 : CoveredBy scale carrier boxes root_4602663 := by
  apply coveredBy_split_literal root_4602663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602664 small_4602663_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602664
  · exact small_4602663_right_covered
#print axioms cover_4602663

def root_4602658 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602658_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602658_right_fuel : Nat := 1
def small_4602658_right_count : Nat := 1
def small_4602658_right_encoded : String := "00000004"
theorem small_4602658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602658_right_root small_4602658_right_fuel small_4602658_right_count small_4602658_right_encoded = true := by
  decide +kernel
theorem small_4602658_right_covered : CoveredBy scale carrier boxes small_4602658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602658_right_root small_4602658_right_fuel small_4602658_right_count small_4602658_right_encoded small_4602658_right_checked

theorem cover_4602658 : CoveredBy scale carrier boxes root_4602658 := by
  apply coveredBy_split_literal root_4602658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4602663 small_4602658_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4602663
  · exact small_4602658_right_covered
#print axioms cover_4602658

def root_4602657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602657_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602657_right_fuel : Nat := 13
def small_4602657_right_count : Nat := 37
def small_4602657_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A913050000000812073CFA00000002050000FC135D8107050000FE135D810904548A01000000080000000800000004135D45090000000404548A0100000008000000050000000300000008000000080000000012073CF60000000008A91303120701020000000108A91305000000080000000500000005"
theorem small_4602657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602657_right_root small_4602657_right_fuel small_4602657_right_count small_4602657_right_encoded = true := by
  decide +kernel
theorem small_4602657_right_covered : CoveredBy scale carrier boxes small_4602657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602657_right_root small_4602657_right_fuel small_4602657_right_count small_4602657_right_encoded small_4602657_right_checked

theorem cover_4602657 : CoveredBy scale carrier boxes root_4602657 := by
  apply coveredBy_split_literal root_4602657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4602658 small_4602657_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4602658
  · exact small_4602657_right_covered
#print axioms cover_4602657

def root_4602651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602651_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602651_left_fuel : Nat := 1
def small_4602651_left_count : Nat := 1
def small_4602651_left_encoded : String := "00000003"
theorem small_4602651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602651_left_root small_4602651_left_fuel small_4602651_left_count small_4602651_left_encoded = true := by
  decide +kernel
theorem small_4602651_left_covered : CoveredBy scale carrier boxes small_4602651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602651_left_root small_4602651_left_fuel small_4602651_left_count small_4602651_left_encoded small_4602651_left_checked

theorem cover_4602651 : CoveredBy scale carrier boxes root_4602651 := by
  apply coveredBy_split_literal root_4602651 small_4602651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4602657 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4602651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4602657
#print axioms cover_4602651

def root_4586215 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586215 : CoveredBy scale carrier boxes root_4586215 := by
  apply coveredBy_split_literal root_4586215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4602651 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586216
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4602651
#print axioms cover_4586215

def root_4586210 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586210_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586210_right_fuel : Nat := 1
def small_4586210_right_count : Nat := 1
def small_4586210_right_encoded : String := "00000002"
theorem small_4586210_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586210_right_root small_4586210_right_fuel small_4586210_right_count small_4586210_right_encoded = true := by
  decide +kernel
theorem small_4586210_right_covered : CoveredBy scale carrier boxes small_4586210_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586210_right_root small_4586210_right_fuel small_4586210_right_count small_4586210_right_encoded small_4586210_right_checked

theorem cover_4586210 : CoveredBy scale carrier boxes root_4586210 := by
  apply coveredBy_split_literal root_4586210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4586215 small_4586210_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4586215
  · exact small_4586210_right_covered
#print axioms cover_4586210

def root_4607300 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607300_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607300_right_fuel : Nat := 26
def small_4607300_right_count : Nat := 297
def small_4607300_right_encoded : String := "12073CFE00000004050000FA135D810504548A01138670F604548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05022A4581000000060000000A0000000200000006000000030F87510700000003078000FA128A7D05022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000060000000400000006000000060000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0B4D43FC00000006108011070000000308C000FA11FC25050000000A0000000200000006000000040000000A13E201020AD3578910D100FE0B4D43FC0000000610801107000000030000000600000004000000050000000100000002128A41050000000200000006000000040F350CFE000000040C9A86FC0F878D070000000A000000030F875107000000030C9A86FE0F878D09078000FA128A7D05022A45810000000A0000000A000000020000000A000000040F875109000000040000000A1386AD020CFD9C070F34D0FC0CFD9C090F34D0FE078000FA128A7D05000000090000000200000006000000040000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05022A45810000000613E200F600000000067ECE8312EA59020000000100000006000000050000000200000006000000030F87510700000003078000FA128A7D05022A458100000006000000050000000200000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09078000FA0000000500000006000000040F8751090000000400000005000000030F875107000000030000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05067ECE810000000A00000007000000020000000A000000030F87510700000003078000FA128A7D05067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE0B4D43FC0000000A108011070000000308C000FA000000050000000A000000040000000500000005000000000000000500000002128A410500000002067ECE8112EA58F6022A45830000000A000000050000000000000005000000040F350CFE000000040C9A86FC0F878D070000000A000000030F87510700000003000000051386AD020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D0700000009000000030F875107000000030000000500000004000000050000000100000002135D45050000000204548A01138670F604548A0313867102000000010CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE00000006000000040000000A1386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A00000004000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001"
theorem small_4607300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607300_right_root small_4607300_right_fuel small_4607300_right_count small_4607300_right_encoded = true := by
  decide +kernel
theorem small_4607300_right_covered : CoveredBy scale carrier boxes small_4607300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607300_right_root small_4607300_right_fuel small_4607300_right_count small_4607300_right_encoded small_4607300_right_checked

theorem cover_4607300 : CoveredBy scale carrier boxes root_4607300 := by
  apply coveredBy_split_literal root_4607300 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1725.root small_4607300_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1725.covered
  · exact small_4607300_right_covered
#print axioms cover_4607300

def root_4607294 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607294_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607294_left_fuel : Nat := 1
def small_4607294_left_count : Nat := 1
def small_4607294_left_encoded : String := "00000003"
theorem small_4607294_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607294_left_root small_4607294_left_fuel small_4607294_left_count small_4607294_left_encoded = true := by
  decide +kernel
theorem small_4607294_left_covered : CoveredBy scale carrier boxes small_4607294_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607294_left_root small_4607294_left_fuel small_4607294_left_count small_4607294_left_encoded small_4607294_left_checked

theorem cover_4607294 : CoveredBy scale carrier boxes root_4607294 := by
  apply coveredBy_split_literal root_4607294 small_4607294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607300 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4607294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607300
#print axioms cover_4607294

def root_4607244 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607244_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607244_left_fuel : Nat := 9
def small_4607244_left_count : Nat := 25
def small_4607244_left_encoded : String := "120700FC08A91309120700FE050000FA135D810504548A01138670F604548A030000000A00000009000000000000000900000002000000090000000412073CFE00000004050000FA135D810504548A010000000A00000007000000020000000A00000003"
theorem small_4607244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607244_left_root small_4607244_left_fuel small_4607244_left_count small_4607244_left_encoded = true := by
  decide +kernel
theorem small_4607244_left_covered : CoveredBy scale carrier boxes small_4607244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607244_left_root small_4607244_left_fuel small_4607244_left_count small_4607244_left_encoded small_4607244_left_checked

theorem cover_4607244 : CoveredBy scale carrier boxes root_4607244 := by
  apply coveredBy_split_literal root_4607244 small_4607244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607294 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4607244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607294
#print axioms cover_4607244

def root_4607238 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607238_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607238_left_fuel : Nat := 1
def small_4607238_left_count : Nat := 1
def small_4607238_left_encoded : String := "00000001"
theorem small_4607238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607238_left_root small_4607238_left_fuel small_4607238_left_count small_4607238_left_encoded = true := by
  decide +kernel
theorem small_4607238_left_covered : CoveredBy scale carrier boxes small_4607238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607238_left_root small_4607238_left_fuel small_4607238_left_count small_4607238_left_encoded small_4607238_left_checked

theorem cover_4607238 : CoveredBy scale carrier boxes root_4607238 := by
  apply coveredBy_split_literal root_4607238 small_4607238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607244 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4607238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607244
#print axioms cover_4607238

def root_4607237 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607237_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607237_right_fuel : Nat := 21
def small_4607237_right_count : Nat := 177
def small_4607237_right_encoded : String := "12073D0208A91307120700FC08A913090000000912073CFE00000004050000FA135D810504548A01138670F60CFD9C030F34D102000000010000000900000009000000001386ACF6000000000CFD9C03000000090000000900000002135D45050000000204548A01138670F60CFD9C030000000A0F350D020000000A00000001000000001386ACF6000000000CFD9C0300000009000000090000000312073CFC0000000308A91309120700FE050000FA135D810504548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A86FC000000060F87510700000003078000FA128A7D05022A458100000006000000090000000200000006000000041386ACFE000000040C9A86FC000000060F87510700000003078000FA128A7D05022A4581000000060000000500000002000000060F350D020CFD9C07000000090F350CFC0000000304548A09000000090000000500000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C07000000090F350CFC0000000304548A0900000009000000050000000900000002135D45050000000204548A01138670F60CFD9C030F34D10200000001000000090000000900000000000000090000000412073CFE00000004050000FA135D810504548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC0CFD9C090000000900000005000000030F350CFC000000030CFD9C090F34D0FE0000000500000004000000050F350D020CFD9C070F34D0FC00000005000000030000000500000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C070F34D0FC0000000900000003000000050000000500000002135D45050000000204548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030000000500000005000000000000000500000001"
theorem small_4607237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607237_right_root small_4607237_right_fuel small_4607237_right_count small_4607237_right_encoded = true := by
  decide +kernel
theorem small_4607237_right_covered : CoveredBy scale carrier boxes small_4607237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607237_right_root small_4607237_right_fuel small_4607237_right_count small_4607237_right_encoded small_4607237_right_checked

theorem cover_4607237 : CoveredBy scale carrier boxes root_4607237 := by
  apply coveredBy_split_literal root_4607237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607238 small_4607237_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607238
  · exact small_4607237_right_covered
#print axioms cover_4607237

def root_4607232 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607232_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607232_right_fuel : Nat := 1
def small_4607232_right_count : Nat := 1
def small_4607232_right_encoded : String := "00000000"
theorem small_4607232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607232_right_root small_4607232_right_fuel small_4607232_right_count small_4607232_right_encoded = true := by
  decide +kernel
theorem small_4607232_right_covered : CoveredBy scale carrier boxes small_4607232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607232_right_root small_4607232_right_fuel small_4607232_right_count small_4607232_right_encoded small_4607232_right_checked

theorem cover_4607232 : CoveredBy scale carrier boxes root_4607232 := by
  apply coveredBy_split_literal root_4607232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607237 small_4607232_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607237
  · exact small_4607232_right_covered
#print axioms cover_4607232

def root_4607231 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607231_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607231_right_fuel : Nat := 27
def small_4607231_right_count : Nat := 209
def small_4607231_right_encoded : String := "12073CF60000000008A91303120701020000000108A91307120700FC08A913090000000912073CFE00000004000000090000000312073CFC0000000308A91309120700FE050000FA135D81050CFD9C010F34D0F604548A0313867102000000010CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A86FC000000090F87510700000003078000FA128A7D050AD3578110D100F6022A458313E1C50200000001022A458900000009000000090000000900000000000000090000000200000009000000041386ACFE000000040C9A86FC0F878D0700000009000000030F87510700000003078000FA128A7D050AD3578110D100F6022A458313E1C50200000001067ECE89000000090000000500000005000000000000000500000002128A4105000000020AD3578110D100F60000000900000000000000051386AD020CFD9C07000000090F350CFC0000000304548A09000000090000000900000001000000000F350CF60000000004548A0313867102000000010CFD9C07000000090F350CFC0000000304548A09000000091386ACFE000000040C9A86F600000009000000090000000900000002135D4505000000020CFD9C010F34D0F604548A031386710200000001000000090000000900000000000000090000000412073CFE00000004050000FA135D81050CFD9C010F34D0F604548A0313867102000000010CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA0000000700000009000000030F875107000000030000000500000004000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C070F34D0FC0000000700000003000000050000000500000002135D4505000000020CFD9C010F34D0F604548A0313867102000000010CFD9C070000000A0000000500000005000000000000000512073D0208A91307120700FC08A913090000000912073CFE00000004050000FA00000009000000090000000312073CFC0000000308A91309120700FE050000FA135D81050CFD9C010F34D0F60000000900000000000000090000000200000009000000040000000500000001"
theorem small_4607231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607231_right_root small_4607231_right_fuel small_4607231_right_count small_4607231_right_encoded = true := by
  decide +kernel
theorem small_4607231_right_covered : CoveredBy scale carrier boxes small_4607231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607231_right_root small_4607231_right_fuel small_4607231_right_count small_4607231_right_encoded small_4607231_right_checked

theorem cover_4607231 : CoveredBy scale carrier boxes root_4607231 := by
  apply coveredBy_split_literal root_4607231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607232 small_4607231_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607232
  · exact small_4607231_right_covered
#print axioms cover_4607231

def root_4607226 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607226_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607226_right_fuel : Nat := 1
def small_4607226_right_count : Nat := 1
def small_4607226_right_encoded : String := "00000004"
theorem small_4607226_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607226_right_root small_4607226_right_fuel small_4607226_right_count small_4607226_right_encoded = true := by
  decide +kernel
theorem small_4607226_right_covered : CoveredBy scale carrier boxes small_4607226_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607226_right_root small_4607226_right_fuel small_4607226_right_count small_4607226_right_encoded small_4607226_right_checked

theorem cover_4607226 : CoveredBy scale carrier boxes root_4607226 := by
  apply coveredBy_split_literal root_4607226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607231 small_4607226_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607231
  · exact small_4607226_right_covered
#print axioms cover_4607226

def root_4607225 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607225_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607225_right_fuel : Nat := 20
def small_4607225_right_count : Nat := 159
def small_4607225_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A91307120700FC050000FA135D810500000007000000020000000A0000000312073CFC00000003050000FA135D8105050000FE135D810904548A01138670F604548A0313867102000000010CFD9C070000000A0F350CFC000000030C9A86FC0F878D070000000A000000030F87510700000003000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C0700000007000000050000000500000004135D45090000000404548A01138670F604548A0313867102000000010CFD9C070F34D0FC00000007000000030000000500000005000000000000000500000002135D450500000002050000FE135D810904548A01138670F604548A030000000A00000005000000000000000500000004135D45090000000404548A01138670F604548A030000000A00000005000000000000000512073D0208A91307120700FC050000FA135D8105050000FE135D810904548A01138670F60CFD9C030F34D10200000001000000070F350D020000000500000001000000001386ACF6000000000CFD9C030000000A0000000500000004135D45090000000404548A01138670F60CFD9C030F34D102000000010000000700000005000000000000000500000002135D450500000002050000FE135D810904548A010000000A0000000500000004135D45090000000404548A01138670F60CFD9C030000000A0000000500000000000000050000000300000005000000010000000012073CF60000000008A91303120701020000000108A91307120700FC00000007000000030000000500000005"
theorem small_4607225_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607225_right_root small_4607225_right_fuel small_4607225_right_count small_4607225_right_encoded = true := by
  decide +kernel
theorem small_4607225_right_covered : CoveredBy scale carrier boxes small_4607225_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607225_right_root small_4607225_right_fuel small_4607225_right_count small_4607225_right_encoded small_4607225_right_checked

theorem cover_4607225 : CoveredBy scale carrier boxes root_4607225 := by
  apply coveredBy_split_literal root_4607225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607226 small_4607225_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607226
  · exact small_4607225_right_covered
#print axioms cover_4607225

def root_4607220 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607220_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607220_right_fuel : Nat := 1
def small_4607220_right_count : Nat := 1
def small_4607220_right_encoded : String := "00000003"
theorem small_4607220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607220_right_root small_4607220_right_fuel small_4607220_right_count small_4607220_right_encoded = true := by
  decide +kernel
theorem small_4607220_right_covered : CoveredBy scale carrier boxes small_4607220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607220_right_root small_4607220_right_fuel small_4607220_right_count small_4607220_right_encoded small_4607220_right_checked

theorem cover_4607220 : CoveredBy scale carrier boxes root_4607220 := by
  apply coveredBy_split_literal root_4607220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607225 small_4607220_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607225
  · exact small_4607220_right_covered
#print axioms cover_4607220

def root_4611998 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611998_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611998_right_fuel : Nat := 18
def small_4611998_right_count : Nat := 73
def small_4611998_right_encoded : String := "135D45070000000304548A01138670F604548A03138671020000000104548A09000000071386ACFE00000004000000071386AD0204548A09000000071386ACFE00000004078000FA000000070000000700000001000000001386ACF60000000004548A03138671020000000104548A09000000071386ACFE00000004078000FA128A7D05028000FC13D7ED07067ECE8112EA58F6022A458313E1C50200000001067ECE890000000712EA94FE0000000400000007000000070000000012EA94F600000000022A458313E1C50200000001067ECE890000000700000005000000050000000313D7B10700000003067ECE81000000070000000A00000002128A410500000002028000FC00000007000000071386AD0204548A090000000A0000000500000001"
theorem small_4611998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611998_right_root small_4611998_right_fuel small_4611998_right_count small_4611998_right_encoded = true := by
  decide +kernel
theorem small_4611998_right_covered : CoveredBy scale carrier boxes small_4611998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611998_right_root small_4611998_right_fuel small_4611998_right_count small_4611998_right_encoded small_4611998_right_checked

theorem cover_4611998 : CoveredBy scale carrier boxes root_4611998 := by
  apply coveredBy_split_literal root_4611998 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1726.root small_4611998_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1726.covered
  · exact small_4611998_right_covered
#print axioms cover_4611998

def root_4611993 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611993_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611993_right_fuel : Nat := 1
def small_4611993_right_count : Nat := 1
def small_4611993_right_encoded : String := "00000002"
theorem small_4611993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611993_right_root small_4611993_right_fuel small_4611993_right_count small_4611993_right_encoded = true := by
  decide +kernel
theorem small_4611993_right_covered : CoveredBy scale carrier boxes small_4611993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611993_right_root small_4611993_right_fuel small_4611993_right_count small_4611993_right_encoded small_4611993_right_checked

theorem cover_4611993 : CoveredBy scale carrier boxes root_4611993 := by
  apply coveredBy_split_literal root_4611993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4611998 small_4611993_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4611998
  · exact small_4611993_right_covered
#print axioms cover_4611993

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329
