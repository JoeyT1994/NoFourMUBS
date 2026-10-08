import TaoBundleAssembly0677
import TaoBundleAssembly0680
import TaoBundleAssembly0683
import TaoBundleChunkBatch0953
import TaoBundleChunkBatch0954
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684
def root_10155011 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155011_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155011_right_fuel : Nat := 21
def small_10155011_right_count : Nat := 251
def small_10155011_right_encoded : String := "135D45050000000205000108135D44FF0CFD9C010F34D1000000000004548A0313867102000000010CFD9C07000000060F350CFC000000030000000A000000060F350D0004548A0313867102000000010CFD9C070F34D0FC0C9A87000F87510100000000028000FA000000060000000800000006000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D07028000FA13D7ED050280010800000008000000080000000200000008000000030F87510700000003028000FA13D7ED05028001080000000713D7ECFF00000004022A4583000000080000000700000002000000070F878D010C9A86FC0F878D070000000A000000030F87510700000003028000FA13D7ED05028001080000000713D7ECFF00000004022A458313E1C502000000010DE7CA00000000070000000A000000070000000200000007000000001386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A8700000000070F878D010000000700000000000000010000000000000004135D80FF000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9C070000000A0F350CFC000000030C9A86FC0000000A0F87510700000003028000FA13D7ED05078001080000000A0000000500000002000000051386AD020CFD9C07000000060F350CFC000000030C9A86FC0F878D0700000006000000030F8751070000000300000005000000010F350D0004548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D07028000FA13D7ED050780010800000009000000090000000200000008000000030F87510700000003028000FA13D7ED0507800108000000090000000500000002000000050F878D010C9A86FC0F878D070000000A000000030F87510700000003028000FA13D7ED0507800108128A40FF022A458313E1C50200000001000000050000000500000004000000050000000200000005000000001386AD020CFD9C070F34D0FC0C9A87000F87510100000000028000FA13D7ED050780010800000006128A7CFF0000000400000009000000020000000A00000006000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D07028000FA13D7ED0507800108128A40FF067ECE83000000090000000600000004000000090000000213D7B10500000002078001080000000700000005000000030F87510700000003000000050F878D010C9A86FC0F878D07028000FA13D7ED050780010800000006128A7CFF00000004000000050000000213D7B10500000002078001080000000600000005000000030F8751070000000300000005000000000000000100000000"
theorem small_10155011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10155011_right_root small_10155011_right_fuel small_10155011_right_count small_10155011_right_encoded = true := by
  decide +kernel
theorem small_10155011_right_covered : CoveredBy scale carrier boxes small_10155011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10155011_right_root small_10155011_right_fuel small_10155011_right_count small_10155011_right_encoded small_10155011_right_checked

theorem cover_10155011 : CoveredBy scale carrier boxes root_10155011 := by
  apply coveredBy_split_literal root_10155011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0683.root_10155012 small_10155011_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0683.cover_10155012
  · exact small_10155011_right_covered
#print axioms cover_10155011

def root_10155005 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155005_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155005_left_fuel : Nat := 1
def small_10155005_left_count : Nat := 1
def small_10155005_left_encoded : String := "00000003"
theorem small_10155005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10155005_left_root small_10155005_left_fuel small_10155005_left_count small_10155005_left_encoded = true := by
  decide +kernel
theorem small_10155005_left_covered : CoveredBy scale carrier boxes small_10155005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10155005_left_root small_10155005_left_fuel small_10155005_left_count small_10155005_left_encoded small_10155005_left_checked

theorem cover_10155005 : CoveredBy scale carrier boxes root_10155005 := by
  apply coveredBy_split_literal root_10155005 small_10155005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10155011 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10155005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10155011
#print axioms cover_10155005

def root_10154987 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154987_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154987_left_fuel : Nat := 5
def small_10154987_left_count : Nat := 9
def small_10154987_left_encoded : String := "120700FC050000FA00000006135D45050000000205000108000000060000000A00000003"
theorem small_10154987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154987_left_root small_10154987_left_fuel small_10154987_left_count small_10154987_left_encoded = true := by
  decide +kernel
theorem small_10154987_left_covered : CoveredBy scale carrier boxes small_10154987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154987_left_root small_10154987_left_fuel small_10154987_left_count small_10154987_left_encoded small_10154987_left_checked

theorem cover_10154987 : CoveredBy scale carrier boxes root_10154987 := by
  apply coveredBy_split_literal root_10154987 small_10154987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10155005 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10154987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10155005
#print axioms cover_10154987

def root_10154981 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154981_left_fuel : Nat := 1
def small_10154981_left_count : Nat := 1
def small_10154981_left_encoded : String := "00000001"
theorem small_10154981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154981_left_root small_10154981_left_fuel small_10154981_left_count small_10154981_left_encoded = true := by
  decide +kernel
theorem small_10154981_left_covered : CoveredBy scale carrier boxes small_10154981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154981_left_root small_10154981_left_fuel small_10154981_left_count small_10154981_left_encoded small_10154981_left_checked

theorem cover_10154981 : CoveredBy scale carrier boxes root_10154981 := by
  apply coveredBy_split_literal root_10154981 small_10154981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154987 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10154981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154987
#print axioms cover_10154981

def root_10154980 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154980_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154980_right_fuel : Nat := 23
def small_10154980_right_count : Nat := 91
def small_10154980_right_encoded : String := "12073D0208A913070000000612073CFC00000003050000FA135D810505000108135D44FF0000000600000004135D80FF000000040CFD9C010F34D10000000000000000060F350D000CFD9C030F34D102000000010CFD9C07000000060F350CFC000000030C9A87000F875101000000000C9A86FC0F878D07078000FA00000006128A41050000000200000006000000030F87510700000003078000FA128A7D050780010800000007128A7CFF000000040AD35783000000090000000500000002000000070F878D010C9A86FC000000060F87510700000003078000FA000000060000000700000000000000060000000000000002135D45050000000205000108135D44FF0000000600000004135D80FF000000040CFD9C010F34D10000000000000000060F350D000CFD9C030F34D102000000010CFD9C07000000060F350CFC000000030C9A8700000000070F878D010C9A86FC000000060000000500000000000000060000000000000001"
theorem small_10154980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154980_right_root small_10154980_right_fuel small_10154980_right_count small_10154980_right_encoded = true := by
  decide +kernel
theorem small_10154980_right_covered : CoveredBy scale carrier boxes small_10154980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154980_right_root small_10154980_right_fuel small_10154980_right_count small_10154980_right_encoded small_10154980_right_checked

theorem cover_10154980 : CoveredBy scale carrier boxes root_10154980 := by
  apply coveredBy_split_literal root_10154980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154981 small_10154980_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154981
  · exact small_10154980_right_covered
#print axioms cover_10154980

def root_10154975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154975_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154975_right_fuel : Nat := 1
def small_10154975_right_count : Nat := 1
def small_10154975_right_encoded : String := "00000000"
theorem small_10154975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154975_right_root small_10154975_right_fuel small_10154975_right_count small_10154975_right_encoded = true := by
  decide +kernel
theorem small_10154975_right_covered : CoveredBy scale carrier boxes small_10154975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154975_right_root small_10154975_right_fuel small_10154975_right_count small_10154975_right_encoded small_10154975_right_checked

theorem cover_10154975 : CoveredBy scale carrier boxes root_10154975 := by
  apply coveredBy_split_literal root_10154975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154980 small_10154975_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154980
  · exact small_10154975_right_covered
#print axioms cover_10154975

def root_10154783 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154783_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154783_left_fuel : Nat := 25
def small_10154783_left_count : Nat := 91
def small_10154783_left_encoded : String := "120701000000000008A91303120701020000000108A913070000000612073CFC00000003050000FA135D810505000108135D44FF0000000600000004135D80FF0000000404548A01138671000000000004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A86FC000000060F87510700000003078000FA000000060000000A000000061386AD0004548A0313867102000000010CFD9C07000000060F350CFC000000030C9A86FC0F878D070000000A000000030F87510700000003078000FA128A7D0507800108128A40FF0000000600000004128A7CFF00000004067ECE8112EA5900000000000000000A12EA9500022A45830000000A0000000600000000000000020000000A000000060000000000000002135D45050000000205000108135D44FF0000000600000004135D80FF0000000404548A01138671000000000004548A030000000A000000061386AD0004548A030000000A000000060000000000000006"
theorem small_10154783_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154783_left_root small_10154783_left_fuel small_10154783_left_count small_10154783_left_encoded = true := by
  decide +kernel
theorem small_10154783_left_covered : CoveredBy scale carrier boxes small_10154783_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154783_left_root small_10154783_left_fuel small_10154783_left_count small_10154783_left_encoded small_10154783_left_checked

theorem cover_10154783 : CoveredBy scale carrier boxes root_10154783 := by
  apply coveredBy_split_literal root_10154783 small_10154783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154975 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10154783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154975
#print axioms cover_10154783

def root_10154778 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154778_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154778_right_fuel : Nat := 1
def small_10154778_right_count : Nat := 1
def small_10154778_right_encoded : String := "00000004"
theorem small_10154778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154778_right_root small_10154778_right_fuel small_10154778_right_count small_10154778_right_encoded = true := by
  decide +kernel
theorem small_10154778_right_covered : CoveredBy scale carrier boxes small_10154778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154778_right_root small_10154778_right_fuel small_10154778_right_count small_10154778_right_encoded small_10154778_right_checked

theorem cover_10154778 : CoveredBy scale carrier boxes root_10154778 := by
  apply coveredBy_split_literal root_10154778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154783 small_10154778_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154783
  · exact small_10154778_right_covered
#print axioms cover_10154778

def root_10154777 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10154777 : CoveredBy scale carrier boxes root_10154777 := by
  apply coveredBy_split_literal root_10154777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3809.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154778
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3809.covered
#print axioms cover_10154777

def root_10154772 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154772_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154772_right_fuel : Nat := 1
def small_10154772_right_count : Nat := 1
def small_10154772_right_encoded : String := "00000003"
theorem small_10154772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154772_right_root small_10154772_right_fuel small_10154772_right_count small_10154772_right_encoded = true := by
  decide +kernel
theorem small_10154772_right_covered : CoveredBy scale carrier boxes small_10154772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154772_right_root small_10154772_right_fuel small_10154772_right_count small_10154772_right_encoded small_10154772_right_checked

theorem cover_10154772 : CoveredBy scale carrier boxes root_10154772 := by
  apply coveredBy_split_literal root_10154772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154777 small_10154772_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154777
  · exact small_10154772_right_covered
#print axioms cover_10154772

def root_10154771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10154771 : CoveredBy scale carrier boxes root_10154771 := by
  apply coveredBy_split_literal root_10154771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3810.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154772
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3810.covered
#print axioms cover_10154771

def root_10154765 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154765_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10154765_left_fuel : Nat := 1
def small_10154765_left_count : Nat := 1
def small_10154765_left_encoded : String := "00000002"
theorem small_10154765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10154765_left_root small_10154765_left_fuel small_10154765_left_count small_10154765_left_encoded = true := by
  decide +kernel
theorem small_10154765_left_covered : CoveredBy scale carrier boxes small_10154765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10154765_left_root small_10154765_left_fuel small_10154765_left_count small_10154765_left_encoded small_10154765_left_checked

theorem cover_10154765 : CoveredBy scale carrier boxes root_10154765 := by
  apply coveredBy_split_literal root_10154765 small_10154765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154771 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10154765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154771
#print axioms cover_10154765

def root_10126255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126255 : CoveredBy scale carrier boxes root_10126255 := by
  apply coveredBy_split_literal root_10126255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0683.root_10126256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10154765 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0683.cover_10126256
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10154765
#print axioms cover_10126255

def root_10126250 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126250_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126250_right_fuel : Nat := 1
def small_10126250_right_count : Nat := 1
def small_10126250_right_encoded : String := "00000001"
theorem small_10126250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126250_right_root small_10126250_right_fuel small_10126250_right_count small_10126250_right_encoded = true := by
  decide +kernel
theorem small_10126250_right_covered : CoveredBy scale carrier boxes small_10126250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126250_right_root small_10126250_right_fuel small_10126250_right_count small_10126250_right_encoded small_10126250_right_checked

theorem cover_10126250 : CoveredBy scale carrier boxes root_10126250 := by
  apply coveredBy_split_literal root_10126250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10126255 small_10126250_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10126255
  · exact small_10126250_right_covered
#print axioms cover_10126250

def root_10125668 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10125668_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10125668_left_fuel : Nat := 24
def small_10125668_left_count : Nat := 269
def small_10125668_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E8FF08A9130112070100000000000000000612073D0008A91305120700FA0000000600000002000000060000000000000004115224FF0000000408A91301120701000000000008A91305120700FA08A91307120700FC08A912FF000000060000000800000003000000080000000212073CFA0000000208A91307120700FC000000060000000312073CFC000000030000000812073D0008A91305120700FA08A9130700000008000000080000000212073CFA0000000208A91307120700FC08A912FF000000061207010800000004000000080000000312073CFC0000000308A912FF12073D0805000102135D4503000000010CFD9C01000000080F350D000CFD9C05000000080000000600000000135D81030CFD9C010F34D10000000000000000080F350D000CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC00000003000000080000000000000001000000040000000800000000000000031151E907000000030A0001081151E8FF08A9130112070100000000000000000812073D0008A91305120700FA05000102135D450300000001050000FC0000000800000007000000080000000212073CFA0000000205000102135D45030000000100000006000000080000000000000004115224FF0000000408A913010000000812073D0008A91305120700FA00000008000000020000000800000000000000021151E905000000020A0000FC115225070A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A913070000000612073CFC0000000308A912FF000000060000000812073D0008A91307120700FC08A912FF0000000612070108000000040500010200000006135D8103050000FA00000006135D4505000000020CFD9C010F34D100000000000000000500000005000000010000000312073CFC0000000308A912FF12073D0805000102135D450300000001050000FA00000006135D45050000000200000006135D8103050000FA135D81050CFD9C010F34D10000000000000000060F350D000CFD9C07000000060F350CFC000000030CFD9BFF00000006000000050000000000000002135D4505000000020CFD9C010F34D10000000000000000060F350D000CFD9C070000000600000005000000000000000100000004120701080000000405000102135D450300000001000000050000000500000000000000031151E907000000030A0001081151E8FF08A9130112070100000000000000000612073D000500010200000006135D8103050000FA00000006135D45050000000200000006000000010000000000000004115224FF0000000408A9130112070100000000000000000812073D0008A912FF12073D0805000102135D4503000000010000000500000005000000040000000500000000"
theorem small_10125668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10125668_left_root small_10125668_left_fuel small_10125668_left_count small_10125668_left_encoded = true := by
  decide +kernel
theorem small_10125668_left_covered : CoveredBy scale carrier boxes small_10125668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10125668_left_root small_10125668_left_fuel small_10125668_left_count small_10125668_left_encoded small_10125668_left_checked

theorem cover_10125668 : CoveredBy scale carrier boxes root_10125668 := by
  apply coveredBy_split_literal root_10125668 small_10125668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10126250 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10125668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10126250
#print axioms cover_10125668

def root_10125663 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10125663_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10125663_right_fuel : Nat := 1
def small_10125663_right_count : Nat := 1
def small_10125663_right_encoded : String := "00000000"
theorem small_10125663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10125663_right_root small_10125663_right_fuel small_10125663_right_count small_10125663_right_encoded = true := by
  decide +kernel
theorem small_10125663_right_covered : CoveredBy scale carrier boxes small_10125663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10125663_right_root small_10125663_right_fuel small_10125663_right_count small_10125663_right_encoded small_10125663_right_checked

theorem cover_10125663 : CoveredBy scale carrier boxes root_10125663 := by
  apply coveredBy_split_literal root_10125663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10125668 small_10125663_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10125668
  · exact small_10125663_right_covered
#print axioms cover_10125663

def root_10112561 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112561 : CoveredBy scale carrier boxes root_10112561 := by
  apply coveredBy_split_literal root_10112561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10112562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10125663 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10112562
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10125663
#print axioms cover_10112561

def root_10112560 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112560 : CoveredBy scale carrier boxes root_10112560 := by
  apply coveredBy_split_literal root_10112560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10112561 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3811.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10112561
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3811.covered
#print axioms cover_10112560

def root_10068952 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068952 : CoveredBy scale carrier boxes root_10068952 := by
  apply coveredBy_split_literal root_10068952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10068953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10112560 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10068953
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10112560
#print axioms cover_10068952

def root_10058534 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10058534 : CoveredBy scale carrier boxes root_10058534 := by
  apply coveredBy_split_literal root_10058534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0677.root_10058535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10068952 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0677.cover_10058535
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10068952
#print axioms cover_10058534

def root_10173254 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10173254 : CoveredBy scale carrier boxes root_10173254 := by
  apply coveredBy_split_literal root_10173254 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3813.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3814.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3813.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3814.covered
#print axioms cover_10173254

def root_10173248 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10173248_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10173248_left_fuel : Nat := 1
def small_10173248_left_count : Nat := 1
def small_10173248_left_encoded : String := "00000000"
theorem small_10173248_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10173248_left_root small_10173248_left_fuel small_10173248_left_count small_10173248_left_encoded = true := by
  decide +kernel
theorem small_10173248_left_covered : CoveredBy scale carrier boxes small_10173248_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10173248_left_root small_10173248_left_fuel small_10173248_left_count small_10173248_left_encoded small_10173248_left_checked

theorem cover_10173248 : CoveredBy scale carrier boxes root_10173248 := by
  apply coveredBy_split_literal root_10173248 small_10173248_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10173254 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10173248_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10173254
#print axioms cover_10173248

def root_10180289 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10180289_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10180289_right_fuel : Nat := 29
def small_10180289_right_count : Nat := 475
def small_10180289_right_encoded : String := "120701060000000308A91309120700FE04548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA0000000900000002000000081386AD020CFD9C050F34D0FA045489FD1386AD0604548A0900000007000000090000000300000007000000020F350CFA0000000200000007000000011386AD0004548A0313867102000000010CFD9C050F34D0FA045489FD000000080000000800000002000000081386AD020CFD9C050F34D0FA045489FD1386AD0604548A09000000081386ACFE00000004067ECE8112EA590000000000067ECE830000000912EA95020AD3578510D100FA000000090000000210D13CFA00000002067ECE7D00000006000000070000000112EA9500067ECE830000000812EA95020AD3578510D100FA067ECE7D12EA9506067ECE890000000612EA94FE000000040000000800000003000000090000000200000008000000010000000000000003138671060000000304548A09000000071386ACFE00000004067ECE810000000912EA95000000000900000000000000020F350CFA00000002045489FD000000080000000700000001000000000000000412073CFE0000000404548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA045489FD1386AD060CFD9C090F34D0FE0000000900000004000000090000000300000009000000020F350CFA00000002045489FD1386AD060CFD9C090F34D0FE00000009000000040F350CFE00000004000000050000000313867106000000030CFD9C0900000009000000051386AD020CFD9C050F34D0FA045489FD1386AD060CFD9C090F34D0FE022A45810000000913E20100067ECE830000000912EA95020AD3578500000009000000090000000100000000000000040F350CFE000000040000000A0000000313867106000000030CFD9C090F34D0FE00000009000000040000000A000000020F350CFA00000002045489FD1386AD060CFD9C090F34D0FE0C9A86FA0F878D05022A45810000000713E20100067ECE830000000912EA95020000000700000001000000000000000200000007000000040F350CFE00000004000000050000000313867106000000030CFD9C090000000700000005000000011386AD0004548A0313867102000000010CFD9C050F34D0FA045489FD1386AD060CFD9C090F34D0FE067ECE810000000912EA9500022A45830000000813E201020AD3578500000009000000080000000100000000000000040F350CFE000000040C9A86FE0F878D09067ECE810000000912EA9500000000060000000000000004000000060000000313867106000000030CFD9C090F34D0FE000000090000000400000006000000020F350CFA00000002045489FD1386AD060CFD9C090F34D0FE00000008000000040F350CFE00000004000000050000000313867106000000030CFD9C0900000008000000051386AD020CFD9C050F34D0FA045489FD1386AD060CFD9C090F34D0FE067ECE8112EA590000000000067ECE8312EA5902000000010AD35785000000090000000912EA95020AD3578510D100FA067ECE7D0000000A000000090000000210D13CFA00000002067ECE7D12EA95060AD3578910D100FE00000009000000040000000900000003000000090000000112EA9500067ECE8312EA5902000000010AD3578510D100FA067ECE7D12EA95060AD35789000000080000000900000003000000090000000210D13CFA00000002067ECE7D12EA950600000008000000030000000812EA95020AD3578510D100FA067ECE7D12EA95060AD3578910D100FE0793F0C10000000912825D000793F0C30000000812825D0209BE35450000000A0000000800000001000000000000000410D13CFE000000040000000A0000000312EA5906000000030AD3578910D100FE0000000900000004000000090000000210D13CFA00000002067ECE7D12EA95060AD357890000000810D13CFE000000040793F0C112822100000000000793F0C3000000080000000512825D000793F0C30000000800000005000000000000000312EA5906000000030AD3578900000008000000050000000100000000000000040F350CFE000000040C9A86FE0F878D09067ECE8112EA590000000000067ECE830000000A0000000A12EA9500067ECE8312EA5902000000010AD357850000000A0000000512EA95020AD357850000000A000000050000000100000000000000040F87510900000004000000050000000313867106000000030CFD9C090F34D0FE067ECE810000000912EA9500067ECE830000000912EA95020AD3578510D100FA0000000900000002000000090000000100000000000000040F350CFE0000000400000005000000020F350CFA00000002045489FD1386AD060CFD9C090F34D0FE0C9A86FA0F878D05067ECE8112EA590000000000067ECE8312EA5902000000010000000812EA9502067ECE7D12EA95060AD35789000000070000000500000003000000050000000112EA9500067ECE830000000812EA9502067ECE7D00000008000000050000000100000000000000020F8751050000000200000005000000040F350CFE0000000400000005000000031386710600000003000000050000000100000000"
theorem small_10180289_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10180289_right_root small_10180289_right_fuel small_10180289_right_count small_10180289_right_encoded = true := by
  decide +kernel
theorem small_10180289_right_covered : CoveredBy scale carrier boxes small_10180289_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10180289_right_root small_10180289_right_fuel small_10180289_right_count small_10180289_right_encoded small_10180289_right_checked

theorem cover_10180289 : CoveredBy scale carrier boxes root_10180289 := by
  apply coveredBy_split_literal root_10180289 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3816.root small_10180289_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3816.covered
  · exact small_10180289_right_covered
#print axioms cover_10180289

def root_10180283 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10180283_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10180283_left_fuel : Nat := 1
def small_10180283_left_count : Nat := 1
def small_10180283_left_encoded : String := "00000002"
theorem small_10180283_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10180283_left_root small_10180283_left_fuel small_10180283_left_count small_10180283_left_encoded = true := by
  decide +kernel
theorem small_10180283_left_covered : CoveredBy scale carrier boxes small_10180283_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10180283_left_root small_10180283_left_fuel small_10180283_left_count small_10180283_left_encoded small_10180283_left_checked

theorem cover_10180283 : CoveredBy scale carrier boxes root_10180283 := by
  apply coveredBy_split_literal root_10180283 small_10180283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10180289 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10180283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10180289
#print axioms cover_10180283

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684
