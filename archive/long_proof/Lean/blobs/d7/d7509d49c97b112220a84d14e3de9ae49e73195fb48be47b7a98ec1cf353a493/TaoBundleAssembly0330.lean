import TaoBundleAssembly0327
import TaoBundleAssembly0329
import TaoBundleChunkBatch0432
import TaoBundleChunkBatch0433
import TaoBundleChunkBatch0434
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330
def root_4611992 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611992_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611992_right_fuel : Nat := 19
def small_4611992_right_count : Nat := 91
def small_4611992_right_encoded : String := "135D450500000002050000FC135D810704548A01138670F604548A03138671020000000104548A09000000071386ACFE00000004000000071386AD0204548A09000000070000000600000001000000001386ACF60000000004548A03138671020000000104548A09000000071386ACFE00000004028000FA13D7ED05078000FC128A7D07067ECE8112EA58F6022A458313E1C5020000000100000006000000060000000012EA94F600000000022A458313E1C50200000001067ECE8900000007000000050000000500000003128A410700000003000000070000000213D7B10500000002078000FC128A7D07067ECE81000000060000000900000003000000071386AD0204548A09138670FE028000FA000000070000000700000004000000050000000100000003135D45070000000304548A01000000071386ACF60000000004548A03138671020000000104548A0900000007000000071386AD0204548A09000000070000000500000001"
theorem small_4611992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611992_right_root small_4611992_right_fuel small_4611992_right_count small_4611992_right_encoded = true := by
  decide +kernel
theorem small_4611992_right_covered : CoveredBy scale carrier boxes small_4611992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611992_right_root small_4611992_right_fuel small_4611992_right_count small_4611992_right_encoded small_4611992_right_checked

theorem cover_4611992 : CoveredBy scale carrier boxes root_4611992 := by
  apply coveredBy_split_literal root_4611992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4611993 small_4611992_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4611993
  · exact small_4611992_right_covered
#print axioms cover_4611992

def root_4611987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611987_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611987_right_fuel : Nat := 1
def small_4611987_right_count : Nat := 1
def small_4611987_right_encoded : String := "00000004"
theorem small_4611987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611987_right_root small_4611987_right_fuel small_4611987_right_count small_4611987_right_encoded = true := by
  decide +kernel
theorem small_4611987_right_covered : CoveredBy scale carrier boxes small_4611987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611987_right_root small_4611987_right_fuel small_4611987_right_count small_4611987_right_encoded small_4611987_right_checked

theorem cover_4611987 : CoveredBy scale carrier boxes root_4611987 := by
  apply coveredBy_split_literal root_4611987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611992 small_4611987_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611992
  · exact small_4611987_right_covered
#print axioms cover_4611987

def root_4611986 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611986_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611986_right_fuel : Nat := 28
def small_4611986_right_count : Nat := 287
def small_4611986_right_encoded : String := "12073CFE00000004050000FA135D8105050000FC135D810704548A01138670F604548A0313867102000000010CFD9C090F34D0FE078000FA128A7D05078000FC128A7D07022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000060000000410D13CFE000000040000000813E201020AD3578910D100FE000000060000000400000006000000010000000013E200F600000000022A458313E1C502000000010AD3578910D100FE08C000FA11FC250508C000FC11FC2507033F67C10000000613BC30F6000000000000000800000003000000080000000211FBE9050000000208C000FC0000000611FBE90700000003033F67C100000006000000050000000410D13CFE0000000408C000FA0000000811FBE905000000020000000513E201020AD3578910D100FE0000000800000004000000050000000100000003128A410700000003022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000070000000400000008000000080000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0000000800000004000000050000000500000002128A410500000002078000FC128A7D07022A45810000000613E200F600000000022A458313E1C502000000010AD3578910D100FE0000000600000004000000050000000500000003128A410700000003022A45810000000713E200F600000000022A458313E1C502000000010AD35789000000070000000500000005000000040F350CFE000000040C9A86FE0F878D09078000FA128A7D05078000FC128A7D07022A45810000000800000005000000030000000800000002128A410500000002078000FC00000005128A41070000000300000005000000040F87510900000004000000051386AD020CFD9C090F34D0FE078000FA128A7D05078000FC128A7D0700000008000000030000000800000002128A41050000000200000005000000040000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C090F34D0FE078000FA128A7D05078000FC128A7D07067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE08C000FA0000000511FBE9050000000200000005000000040000000500000005000000000000000500000003128A4107000000030000000500000002128A410500000002078000FC00000005128A4107000000030000000500000004000000050000000500000003135D45070000000304548A01138670F604548A0313867102000000010CFD9C090F34D0FE078000FA128A7D050000000800000002128A41050000000200000007000000040000000500000005000000000000000500000002135D450500000002050000FC135D810704548A01138670F604548A0313867102000000010CFD9C090F34D0FE028000FA13D7ED05078000FC00000006128A410700000003000000060000000200000006000000040000000500000005000000000000000500000003135D45070000000304548A01138670F604548A0313867102000000010CFD9C090000000700000005000000050000000000000005"
theorem small_4611986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611986_right_root small_4611986_right_fuel small_4611986_right_count small_4611986_right_encoded = true := by
  decide +kernel
theorem small_4611986_right_covered : CoveredBy scale carrier boxes small_4611986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611986_right_root small_4611986_right_fuel small_4611986_right_count small_4611986_right_encoded small_4611986_right_checked

theorem cover_4611986 : CoveredBy scale carrier boxes root_4611986 := by
  apply coveredBy_split_literal root_4611986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611987 small_4611986_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611987
  · exact small_4611986_right_covered
#print axioms cover_4611986

def root_4611980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611980_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611980_left_fuel : Nat := 1
def small_4611980_left_count : Nat := 1
def small_4611980_left_encoded : String := "00000001"
theorem small_4611980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611980_left_root small_4611980_left_fuel small_4611980_left_count small_4611980_left_encoded = true := by
  decide +kernel
theorem small_4611980_left_covered : CoveredBy scale carrier boxes small_4611980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611980_left_root small_4611980_left_fuel small_4611980_left_count small_4611980_left_encoded small_4611980_left_checked

theorem cover_4611980 : CoveredBy scale carrier boxes root_4611980 := by
  apply coveredBy_split_literal root_4611980 small_4611980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611986 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4611980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611986
#print axioms cover_4611980

def root_4611979 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611979_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611979_right_fuel : Nat := 17
def small_4611979_right_count : Nat := 95
def small_4611979_right_encoded : String := "12073D0208A91309120700FE050000FA135D8105050000FC135D810704548A01138670F60CFD9C030F34D1020000000104548A09138670FE078000FA128A7D05078000FC000000070000000700000002128A41050000000200000007000000041386ACFE00000004078000FA00000005128A410500000002000000050F350D020000000500000001000000001386ACF6000000000CFD9C030F34D1020000000104548A09138670FE078000FA000000050000000900000004000000050000000500000003135D45070000000304548A01138670F60CFD9C030F34D1020000000104548A09000000070000000500000005000000000000000500000002135D450500000002050000FC135D810704548A01138670F60CFD9C030F34D1020000000104548A09000000070000000500000005000000000000000500000003135D45070000000304548A01138670F60CFD9C030F34D1020000000104548A090000000700000005000000050000000000000005000000040000000500000001"
theorem small_4611979_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611979_right_root small_4611979_right_fuel small_4611979_right_count small_4611979_right_encoded = true := by
  decide +kernel
theorem small_4611979_right_covered : CoveredBy scale carrier boxes small_4611979_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611979_right_root small_4611979_right_fuel small_4611979_right_count small_4611979_right_encoded small_4611979_right_checked

theorem cover_4611979 : CoveredBy scale carrier boxes root_4611979 := by
  apply coveredBy_split_literal root_4611979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611980 small_4611979_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611980
  · exact small_4611979_right_covered
#print axioms cover_4611979

def root_4611974 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611974_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611974_right_fuel : Nat := 1
def small_4611974_right_count : Nat := 1
def small_4611974_right_encoded : String := "00000000"
theorem small_4611974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611974_right_root small_4611974_right_fuel small_4611974_right_count small_4611974_right_encoded = true := by
  decide +kernel
theorem small_4611974_right_covered : CoveredBy scale carrier boxes small_4611974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611974_right_root small_4611974_right_fuel small_4611974_right_count small_4611974_right_encoded small_4611974_right_checked

theorem cover_4611974 : CoveredBy scale carrier boxes root_4611974 := by
  apply coveredBy_split_literal root_4611974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611979 small_4611974_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611979
  · exact small_4611974_right_covered
#print axioms cover_4611974

def root_4611973 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611973_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611973_right_fuel : Nat := 32
def small_4611973_right_count : Nat := 273
def small_4611973_right_encoded : String := "12073CF60000000008A91303120701020000000108A91309120700FE050000FA135D8105050000FC135D81070CFD9C010F34D0F604548A03138671020000000104548A09138670FE078000FA128A7D05078000FC128A7D070AD3578110D100F6022A458313E1C50200000001022A45890000000A13E200FE0000000408C000FA11FC250508C000FC11FC250709BE3541117740F6000000090000000000000009000000030000000A0000000211FBE9050000000208C000FC0000000911FBE9070000000309BE3541117740F60000000A000000000000000513E20102022A45890000000913E200FE0000000400000009000000010000000010D13CF600000000022A458313E1C50200000001022A45890000000913E200FE0000000408C000FA11FC25050000000600000002000000090000000900000003128A4107000000030AD3578110D100F60000000A000000000000000A00000002128A410500000002078000FC128A7D070AD3578110D100F6022A458313E1C50200000001022A4589000000070000000900000009000000000000000900000003128A4107000000030AD357810000000710D13CF600000000022A458313E1C50200000001022A4589000000070000000500000005000000041386ACFE00000004078000FA128A7D05078000FC128A7D070AD3578110D100F6022A458313E1C50200000001067ECE8912EA58FE08C000FA0000000511FBE9050000000200000005000000040000000500000005000000000000000500000003128A4107000000030000000500000002128A410500000002078000FC00000005128A410700000003000000051386AD0204548A09138670FE078000FA128A7D05078000FC128A7D070000000900000003128A4107000000030000000500000002128A41050000000200000005000000040000000500000001000000000F350CF60000000004548A03138671020000000104548A09138670FE0C9A86F60F878D01078000FA128A7D05078000FC128A7D07022A458313E1C50200000001022A458900000006000000050000000500000003128A4107000000030000000500000002128A410500000002078000FC00000005128A41070000000300000005000000000F875101000000000000000500000004000000050000000500000003135D4507000000030CFD9C010F34D0F604548A03138671020000000104548A09138670FE078000FA0000000A128A41050000000200000007000000040000000500000005000000000000000500000002135D450500000002050000FC135D81070CFD9C010F34D0F604548A03138671020000000104548A09138670FE028000FA13D7ED05078000FC00000009128A410700000003000000070000000200000009000000040000000500000005000000000000000500000003135D4507000000030CFD9C010F34D0F604548A03138671020000000104548A090000000700000005000000050000000000000005000000040000000500000005"
theorem small_4611973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611973_right_root small_4611973_right_fuel small_4611973_right_count small_4611973_right_encoded = true := by
  decide +kernel
theorem small_4611973_right_covered : CoveredBy scale carrier boxes small_4611973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611973_right_root small_4611973_right_fuel small_4611973_right_count small_4611973_right_encoded small_4611973_right_checked

theorem cover_4611973 : CoveredBy scale carrier boxes root_4611973 := by
  apply coveredBy_split_literal root_4611973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611974 small_4611973_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611974
  · exact small_4611973_right_covered
#print axioms cover_4611973

def root_4611968 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611968_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611968_right_fuel : Nat := 1
def small_4611968_right_count : Nat := 1
def small_4611968_right_encoded : String := "00000004"
theorem small_4611968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611968_right_root small_4611968_right_fuel small_4611968_right_count small_4611968_right_encoded = true := by
  decide +kernel
theorem small_4611968_right_covered : CoveredBy scale carrier boxes small_4611968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611968_right_root small_4611968_right_fuel small_4611968_right_count small_4611968_right_encoded small_4611968_right_checked

theorem cover_4611968 : CoveredBy scale carrier boxes root_4611968 := by
  apply coveredBy_split_literal root_4611968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611973 small_4611968_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611973
  · exact small_4611968_right_covered
#print axioms cover_4611968

def root_4611967 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611967_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611967_right_fuel : Nat := 2
def small_4611967_right_count : Nat := 3
def small_4611967_right_encoded : String := "1151E9090000000400000005"
theorem small_4611967_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611967_right_root small_4611967_right_fuel small_4611967_right_count small_4611967_right_encoded = true := by
  decide +kernel
theorem small_4611967_right_covered : CoveredBy scale carrier boxes small_4611967_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611967_right_root small_4611967_right_fuel small_4611967_right_count small_4611967_right_encoded small_4611967_right_checked

theorem cover_4611967 : CoveredBy scale carrier boxes root_4611967 := by
  apply coveredBy_split_literal root_4611967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611968 small_4611967_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611968
  · exact small_4611967_right_covered
#print axioms cover_4611967

def root_4611961 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611961_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611961_left_fuel : Nat := 1
def small_4611961_left_count : Nat := 1
def small_4611961_left_encoded : String := "00000003"
theorem small_4611961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611961_left_root small_4611961_left_fuel small_4611961_left_count small_4611961_left_encoded = true := by
  decide +kernel
theorem small_4611961_left_covered : CoveredBy scale carrier boxes small_4611961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611961_left_root small_4611961_left_fuel small_4611961_left_count small_4611961_left_encoded small_4611961_left_checked

theorem cover_4611961 : CoveredBy scale carrier boxes root_4611961 := by
  apply coveredBy_split_literal root_4611961 small_4611961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611967 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4611961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611967
#print axioms cover_4611961

def root_4607219 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4607219 : CoveredBy scale carrier boxes root_4607219 := by
  apply coveredBy_split_literal root_4607219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4607220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4611961 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4607220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4611961
#print axioms cover_4607219

def root_4607213 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607213_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607213_left_fuel : Nat := 1
def small_4607213_left_count : Nat := 1
def small_4607213_left_encoded : String := "00000002"
theorem small_4607213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607213_left_root small_4607213_left_fuel small_4607213_left_count small_4607213_left_encoded = true := by
  decide +kernel
theorem small_4607213_left_covered : CoveredBy scale carrier boxes small_4607213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607213_left_root small_4607213_left_fuel small_4607213_left_count small_4607213_left_encoded small_4607213_left_checked

theorem cover_4607213 : CoveredBy scale carrier boxes root_4607213 := by
  apply coveredBy_split_literal root_4607213 small_4607213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4607219 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4607213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4607219
#print axioms cover_4607213

def root_4586209 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586209 : CoveredBy scale carrier boxes root_4586209 := by
  apply coveredBy_split_literal root_4586209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.root_4586210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4607213 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0329.cover_4586210
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4607213
#print axioms cover_4586209

def root_4586204 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586204_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586204_right_fuel : Nat := 1
def small_4586204_right_count : Nat := 1
def small_4586204_right_encoded : String := "00000001"
theorem small_4586204_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586204_right_root small_4586204_right_fuel small_4586204_right_count small_4586204_right_encoded = true := by
  decide +kernel
theorem small_4586204_right_covered : CoveredBy scale carrier boxes small_4586204_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586204_right_root small_4586204_right_fuel small_4586204_right_count small_4586204_right_encoded small_4586204_right_checked

theorem cover_4586204 : CoveredBy scale carrier boxes root_4586204 := by
  apply coveredBy_split_literal root_4586204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4586209 small_4586204_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4586209
  · exact small_4586204_right_covered
#print axioms cover_4586204

def root_4585668 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585668_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585668_left_fuel : Nat := 23
def small_4585668_left_count : Nat := 255
def small_4585668_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0000FE1152250908A91301120700F608A91305120700FA08A913070000000812073CFC00000003000000080000000212073CFA0000000208A91307120700FC08A913090000000912073CFE000000040500010200000008000000080000000312073CFC0000000308A91309120700FE05000102135D45030000000104548A010000000800000005135D810304548A01138670F60CFD9C05000000080F350CFA000000020CFD9C070000000800000005000000001386ACF60000000000000009000000010000000412073CFE000000040500010200000005000000080000000012073CF60000000008A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A91309120700FE0500010200000009000000090000000412073CFE000000040500010200000005000000080000000212073CFA0000000208A91307120700FC08A913090000000912073CFE000000040500010200000005000000080000000312073CFC0000000308A91309120700FE0500010200000005000000090000000400000005000000041151E9090000000408A91301120700F608A913050000000812073CFA0000000208A91307120700FC0000000800000003000000050000000012073CF60000000008A913050000000800000005000000031151E907000000030A0000FE1152250908A91301120700F608A91305120700FA08A9130900000008000000080000000212073CFA0000000208A91309120700FE05000102135D450300000001000000050000000800000004000000050000000012073CF60000000008A91305120700FA08A91309120700FE05000102135D45030000000100000005135D8103050000FC135D81070CFD9C01000000080000000500000003135D4507000000030CFD9C010F34D0F60000000500000000000000050000000100000004000000050000000200000005000000041151E9090000000400000005000000021151E905000000020A0000FC115225070A0000FE1152250908A91301120700F608A91307120700FC08A91309120700FE000000090000000412073CFE0000000405000102135D45030000000100000005135D8103050000FA135D810504548A01138670F604548A070000000800000005000000000000000500000002135D45050000000204548A01138670F604548A070000000A000000050000000000000005000000010000000312073CFC0000000308A91309120700FE05000102135D450300000001000000050000000900000004000000050000000012073CF60000000008A91307120700FC08A9130900000009000000050000000300000005000000041151E9090000000400000005000000031151E9070000000300000005"
theorem small_4585668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4585668_left_root small_4585668_left_fuel small_4585668_left_count small_4585668_left_encoded = true := by
  decide +kernel
theorem small_4585668_left_covered : CoveredBy scale carrier boxes small_4585668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4585668_left_root small_4585668_left_fuel small_4585668_left_count small_4585668_left_encoded small_4585668_left_checked

theorem cover_4585668 : CoveredBy scale carrier boxes root_4585668 := by
  apply coveredBy_split_literal root_4585668 small_4585668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4586204 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4585668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4586204
#print axioms cover_4585668

def root_4585663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585663_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585663_right_fuel : Nat := 1
def small_4585663_right_count : Nat := 1
def small_4585663_right_encoded : String := "00000000"
theorem small_4585663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4585663_right_root small_4585663_right_fuel small_4585663_right_count small_4585663_right_encoded = true := by
  decide +kernel
theorem small_4585663_right_covered : CoveredBy scale carrier boxes small_4585663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4585663_right_root small_4585663_right_fuel small_4585663_right_count small_4585663_right_encoded small_4585663_right_checked

theorem cover_4585663 : CoveredBy scale carrier boxes root_4585663 := by
  apply coveredBy_split_literal root_4585663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4585668 small_4585663_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4585668
  · exact small_4585663_right_covered
#print axioms cover_4585663

def root_4585662 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585662_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4585662_right_fuel : Nat := 33
def small_4585662_right_count : Nat := 459
def small_4585662_right_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A913070000000912073CFC0000000308A91309120700FE0000000900000004000000050000000212073CFA0000000208A913070000000900000005000000041151E9090000000400000005000000031151E9070000000300000005000000021151E9050000000200000005115225030A0000FA115225050A0000FC115225070A0000FE1152250908A91303120701020000000108A91305120700FA000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC0000000308A91309120700FE050000F6135D810104548A0313867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003078000F6000000070000000900000004000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C07000000090F350CFC0000000304548A09138670FE0C9A86FA0F878D0500000009000000020000000900000004000000050000000100000000135D45010000000004548A0313867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FA000000070F875105000000020C9A86FC000000070F875107000000030000000500000004000000051386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000900000005000000010000000412073CFE00000004050000F6135D810104548A03000000071386AD020CFD9C0500000007000000050000000100000000135D45010000000004548A03000000070000000512073D0208A91305120700FA08A913070000000712073CFC0000000308A91309120700FE050000F6135D81010CFD9C030F34D10200000001000000070F350D0204548A0500000007000000080000000100000000135D4501000000000CFD9C030F34D10200000001000000070F350D0204548A0500000007000000080000000100000004000000070000000212073CFA0000000208A91307120700FC08A9130900000009000000070000000312073CFC0000000308A91309120700FE050000F6135D81010CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070000000700000008000000020F350CFA00000002000000090F350D02000000090000000100000000135D4501000000000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020000000500000005000000040000000500000001000000041151E9090000000408A91303120701020000000108A91305000000070000000712073D0208A91305000000080000000500000001000000031151E907000000030A0000FE1152250908A91303120701020000000108A91305120700FA08A91309120700FE050000F600000006135D4501000000000000000600000004000000060000000212073CFA0000000208A91309120700FE050000F6135D8101050000FC135D810704548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09138670FE0C9A86FA0F878D0500000006000000020F875105000000020000000500000004000000051386AD020CFD9C050F34D0FA0000000800000002000000050000000100000003135D45070000000304548A03000000060000000500000000135D450100000000050000FC135D810704548A0313867102000000010CFD9C050F34D0FA0000000600000002000000050000000500000003135D45070000000304548A0313867102000000010CFD9C05000000060000000500000005000000040000000512073D0208A91305120700FA08A91309120700FE050000F6135D8101050000FC135D81070CFD9C030F34D10200000001000000080F350D0204548A05138670FA0000000500000002000000050000000100000003135D4507000000030CFD9C03000000060000000500000000135D450100000000050000FC135D81070CFD9C030F34D10200000001000000080000000500000003135D4507000000030CFD9C0300000006000000050000000400000005000000020000000500000001000000041151E9090000000400000005000000021151E905000000020A0000FC115225070A0000FE1152250908A91303120701020000000108A91307120700FC000000090000000312073CFC0000000308A91309120700FE050000F6135D8101050000FA135D810504548A0313867102000000010000000900000009000000020000000900000000135D450100000000050000FA135D810504548A0313867102000000010CFD9C070000000900000005000000050000000200000009000000040000000512073D0208A91307000000090000000500000001000000041151E9090000000400000005000000031151E907000000030000000500000001"
theorem small_4585662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4585662_right_root small_4585662_right_fuel small_4585662_right_count small_4585662_right_encoded = true := by
  decide +kernel
theorem small_4585662_right_covered : CoveredBy scale carrier boxes small_4585662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4585662_right_root small_4585662_right_fuel small_4585662_right_count small_4585662_right_encoded small_4585662_right_checked

theorem cover_4585662 : CoveredBy scale carrier boxes root_4585662 := by
  apply coveredBy_split_literal root_4585662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4585663 small_4585662_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4585663
  · exact small_4585662_right_covered
#print axioms cover_4585662

def root_4568948 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4568948 : CoveredBy scale carrier boxes root_4568948 := by
  apply coveredBy_split_literal root_4568948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4568949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4585662 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4568949
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4585662
#print axioms cover_4568948

def root_4620063 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4620063 : CoveredBy scale carrier boxes root_4620063 := by
  apply coveredBy_split_literal root_4620063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1728.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1729.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1728.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1729.covered
#print axioms cover_4620063

def root_4620057 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4620057_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4620057_left_fuel : Nat := 1
def small_4620057_left_count : Nat := 1
def small_4620057_left_encoded : String := "00000001"
theorem small_4620057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4620057_left_root small_4620057_left_fuel small_4620057_left_count small_4620057_left_encoded = true := by
  decide +kernel
theorem small_4620057_left_covered : CoveredBy scale carrier boxes small_4620057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4620057_left_root small_4620057_left_fuel small_4620057_left_count small_4620057_left_encoded small_4620057_left_checked

theorem cover_4620057 : CoveredBy scale carrier boxes root_4620057 := by
  apply coveredBy_split_literal root_4620057 small_4620057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4620063 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4620057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4620063
#print axioms cover_4620057

def root_4623243 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4623243 : CoveredBy scale carrier boxes root_4623243 := by
  apply coveredBy_split_literal root_4623243 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1730.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1731.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1730.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1731.covered
#print axioms cover_4623243

def root_4623238 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4623238_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4623238_right_fuel : Nat := 1
def small_4623238_right_count : Nat := 1
def small_4623238_right_encoded : String := "00000001"
theorem small_4623238_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4623238_right_root small_4623238_right_fuel small_4623238_right_count small_4623238_right_encoded = true := by
  decide +kernel
theorem small_4623238_right_covered : CoveredBy scale carrier boxes small_4623238_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4623238_right_root small_4623238_right_fuel small_4623238_right_count small_4623238_right_encoded small_4623238_right_checked

theorem cover_4623238 : CoveredBy scale carrier boxes root_4623238 := by
  apply coveredBy_split_literal root_4623238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4623243 small_4623238_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4623243
  · exact small_4623238_right_covered
#print axioms cover_4623238

def root_4620056 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4620056 : CoveredBy scale carrier boxes root_4620056 := by
  apply coveredBy_split_literal root_4620056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4620057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4623238 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4620057
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4623238
#print axioms cover_4620056

def root_4620050 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4620050_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4620050_left_fuel : Nat := 1
def small_4620050_left_count : Nat := 1
def small_4620050_left_encoded : String := "00000000"
theorem small_4620050_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4620050_left_root small_4620050_left_fuel small_4620050_left_count small_4620050_left_encoded = true := by
  decide +kernel
theorem small_4620050_left_covered : CoveredBy scale carrier boxes small_4620050_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4620050_left_root small_4620050_left_fuel small_4620050_left_count small_4620050_left_encoded small_4620050_left_checked

theorem cover_4620050 : CoveredBy scale carrier boxes root_4620050 := by
  apply coveredBy_split_literal root_4620050 small_4620050_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4620056 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4620050_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4620056
#print axioms cover_4620050

def root_4617694 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4617694 : CoveredBy scale carrier boxes root_4617694 := by
  apply coveredBy_split_literal root_4617694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1727.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.root_4620050 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1727.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330.cover_4620050
#print axioms cover_4617694

def root_4626651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4626651 : CoveredBy scale carrier boxes root_4626651 := by
  apply coveredBy_split_literal root_4626651 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1732.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1733.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1732.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1733.covered
#print axioms cover_4626651

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0330
