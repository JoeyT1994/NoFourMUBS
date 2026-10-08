import TaoBundleAssembly0114
import TaoBundleAssembly0115
import TaoBundleChunkBatch0432
import TaoBundleChunkBatch0433
import TaoBundleChunkBatch0434
import TaoBundleChunkBatch0435
import TaoBundleChunkBatch0436
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116
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
  apply coveredBy_split_literal root_4611979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611980 small_4611979_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611980
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
  apply coveredBy_split_literal root_4611974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611979 small_4611974_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611979
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
  apply coveredBy_split_literal root_4611973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611974 small_4611973_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611974
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
  apply coveredBy_split_literal root_4611968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611973 small_4611968_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611973
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
  apply coveredBy_split_literal root_4611967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611968 small_4611967_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611968
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
  apply coveredBy_split_literal root_4611961 small_4611961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611967 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4611961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611967
#print axioms cover_4611961

def root_4607219 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4607219 : CoveredBy scale carrier boxes root_4607219 := by
  apply coveredBy_split_literal root_4607219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4611961 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4611961
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
  apply coveredBy_split_literal root_4607213 small_4607213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4607219 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4607213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4607219
#print axioms cover_4607213

def root_4586209 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586209 : CoveredBy scale carrier boxes root_4586209 := by
  apply coveredBy_split_literal root_4586209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4607213 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586210
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4607213
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
  apply coveredBy_split_literal root_4586204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4586209 small_4586204_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4586209
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
  apply coveredBy_split_literal root_4585668 small_4585668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4586204 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4585668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4586204
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
  apply coveredBy_split_literal root_4585663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4585668 small_4585663_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4585668
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
  apply coveredBy_split_literal root_4585662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4585663 small_4585662_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4585663
  · exact small_4585662_right_covered
#print axioms cover_4585662

def root_4568948 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4568948 : CoveredBy scale carrier boxes root_4568948 := by
  apply coveredBy_split_literal root_4568948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.root_4568949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4585662 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.cover_4568949
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4585662
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
  apply coveredBy_split_literal root_4620057 small_4620057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4620063 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4620057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4620063
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
  apply coveredBy_split_literal root_4623238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4623243 small_4623238_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4623243
  · exact small_4623238_right_covered
#print axioms cover_4623238

def root_4620056 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4620056 : CoveredBy scale carrier boxes root_4620056 := by
  apply coveredBy_split_literal root_4620056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4620057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4623238 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4620057
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4623238
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
  apply coveredBy_split_literal root_4620050 small_4620050_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4620056 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4620050_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4620056
#print axioms cover_4620050

def root_4617694 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4617694 : CoveredBy scale carrier boxes root_4617694 := by
  apply coveredBy_split_literal root_4617694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1727.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4620050 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1727.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4620050
#print axioms cover_4617694

def root_4626651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4626651 : CoveredBy scale carrier boxes root_4626651 := by
  apply coveredBy_split_literal root_4626651 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1732.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1733.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1732.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1733.covered
#print axioms cover_4626651

def root_4626646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626646_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626646_right_fuel : Nat := 1
def small_4626646_right_count : Nat := 1
def small_4626646_right_encoded : String := "00000000"
theorem small_4626646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4626646_right_root small_4626646_right_fuel small_4626646_right_count small_4626646_right_encoded = true := by
  decide +kernel
theorem small_4626646_right_covered : CoveredBy scale carrier boxes small_4626646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4626646_right_root small_4626646_right_fuel small_4626646_right_count small_4626646_right_encoded small_4626646_right_checked

theorem cover_4626646 : CoveredBy scale carrier boxes root_4626646 := by
  apply coveredBy_split_literal root_4626646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4626651 small_4626646_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4626651
  · exact small_4626646_right_covered
#print axioms cover_4626646

def root_4626645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626645_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4626645_right_fuel : Nat := 29
def small_4626645_right_count : Nat := 305
def small_4626645_right_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120700FA08A91307120700FC08A91309000000080000000800000003000000080000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D810105000102135D4503000000010CFD9C050000000800000005135D81030CFD9C050F34D0FA04548A07138670FC04548A0900000009000000070000000300000008000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA0F878D05078000F60000000900000009000000020F87510500000002000000050000000500000003000000050000000100000000135D4501000000000500010200000008135D81030CFD9C0500000008000000050000000100000005000000030000000500000004000000031151E9070000000300000005000000021151E9050000000200000005115225030A0000FA115225050A0000FC115225070A0001081151E9090000000408A91303120701020000000100000009000000091152250908A91303120701020000000108A91305120700FA08A913070000000900000006000000020000000912073D0208A91305120700FA08A91307120700FC08A913091207010800000004050000F60000000700000007000000070000000312073CFC0000000308A91309120701080000000400000009000000060000000212073CFA0000000208A91307120700FC08A913091207010800000004050000F6135D81010CFD9C030F34D10200000001000000060F350D020CFD9C050F34D0FA00000009000000020F350CFA0000000204548A07138670FC04548A09000000090000000600000003000000060000000100000000135D4501000000000CFD9C03000000090F350D020CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07138670FC04548A09000000090000000500000003000000050000000112073D08050000F6135D81010CFD9C03000000090F350D020CFD9C0500000009000000050000000100000000135D4501000000000CFD9C030000000700000005000000040000000312073CFC0000000308A9130900000009000000050000000100000004000000031151E907000000030A0001081151E90900000004000000051152250908A9130312070102000000010000000612073D02000000090000000100000004000000021151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91303120701020000000108A91307120700FC08A9130912070108000000040000000600000009000000030000000912073D0208A91307120700FC08A913091207010800000004050000F6135D8101050000FA135D81050CFD9C03000000060F350D0204548A07138670FC04548A0913867108000000040C9A870200000006000000050000000500000003000000050000000100000002135D4505000000020CFD9C030F34D10200000001000000060000000500000000135D450100000000050000FA135D81050CFD9C030F34D10200000001000000090000000500000002135D450500000002000000050000000500000003000000050000000100000004000000031151E907000000030000000500000001"
theorem small_4626645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4626645_right_root small_4626645_right_fuel small_4626645_right_count small_4626645_right_encoded = true := by
  decide +kernel
theorem small_4626645_right_covered : CoveredBy scale carrier boxes small_4626645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4626645_right_root small_4626645_right_fuel small_4626645_right_count small_4626645_right_encoded small_4626645_right_checked

theorem cover_4626645 : CoveredBy scale carrier boxes root_4626645 := by
  apply coveredBy_split_literal root_4626645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4626646 small_4626645_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4626646
  · exact small_4626645_right_covered
#print axioms cover_4626645

def root_4617693 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4617693 : CoveredBy scale carrier boxes root_4617693 := by
  apply coveredBy_split_literal root_4617693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4617694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4626645 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4617694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4626645
#print axioms cover_4617693

def root_4568947 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4568947 : CoveredBy scale carrier boxes root_4568947 := by
  apply coveredBy_split_literal root_4568947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4568948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4617693 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4568948
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4617693
#print axioms cover_4568947

def root_4493203 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4493203 : CoveredBy scale carrier boxes root_4493203 := by
  apply coveredBy_split_literal root_4493203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.root_4493204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4568947 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.cover_4493204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4568947
#print axioms cover_4493203

def root_4632588 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4632588 : CoveredBy scale carrier boxes root_4632588 := by
  apply coveredBy_split_literal root_4632588 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1735.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1736.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1735.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1736.covered
#print axioms cover_4632588

def root_4631422 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631422 : CoveredBy scale carrier boxes root_4631422 := by
  apply coveredBy_split_literal root_4631422 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1734.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4632588 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1734.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4632588
#print axioms cover_4631422

def root_4638751 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638751_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638751_left_fuel : Nat := 24
def small_4638751_left_count : Nat := 167
def small_4638751_left_encoded : String := "120701020000000108A91305120700FA08A912FF00000009000000050000000212073CFA0000000208A912FF12073D080500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF60000000004548A03000000090000000900000004120701080000000405000106135D44FD0CFD9C010F34D0F600000005000000000F350CF60000000004548A0313867102000000010CFD9C05000000050F350CFA00000002045489FF000000051386710800000004000000081386AD020CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86F6000000050F875101000000000C9A86FA00000005000000090000000100000003135D80FD000000030CFD9C010F34D0F604548A03000000051386AD020CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86FA000000050F875105000000020000000600000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF1386AD08000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D0500000005000000020F8751050000000200000008000000000F87510100000000000000091386AD020CFD9C050F34D0FA00000009000000020F350CFA00000002045489FF1386AD080C9A86F60000000A000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D0507800106000000050000000A000000020F875105000000020780010600000008128A7CFD00000003067ECE8312EA590200000001000000060000000A000000000F875101000000000C9A86FA000000090F875105000000020780010600000009128A7CFD00000003067ECE83000000090000000900000001"
theorem small_4638751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638751_left_root small_4638751_left_fuel small_4638751_left_count small_4638751_left_encoded = true := by
  decide +kernel
theorem small_4638751_left_covered : CoveredBy scale carrier boxes small_4638751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638751_left_root small_4638751_left_fuel small_4638751_left_count small_4638751_left_encoded small_4638751_left_checked

theorem cover_4638751 : CoveredBy scale carrier boxes root_4638751 := by
  apply coveredBy_split_literal root_4638751 small_4638751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1738.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4638751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1738.covered
#print axioms cover_4638751

def root_4638745 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638745_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638745_left_fuel : Nat := 1
def small_4638745_left_count : Nat := 1
def small_4638745_left_encoded : String := "00000000"
theorem small_4638745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638745_left_root small_4638745_left_fuel small_4638745_left_count small_4638745_left_encoded = true := by
  decide +kernel
theorem small_4638745_left_covered : CoveredBy scale carrier boxes small_4638745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638745_left_root small_4638745_left_fuel small_4638745_left_count small_4638745_left_encoded small_4638745_left_checked

theorem cover_4638745 : CoveredBy scale carrier boxes root_4638745 := by
  apply coveredBy_split_literal root_4638745 small_4638745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638751 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4638745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638751
#print axioms cover_4638745

def root_4638683 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638683_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638683_left_fuel : Nat := 10
def small_4638683_left_count : Nat := 29
def small_4638683_left_encoded : String := "120700F608A91303120701020000000108A91305120700FA08A912FF00000009000000050000000212073CFA0000000208A912FF12073D080500010600000005135D80FD0000000300000005000000040000000512073D0208A91305120700FA0000000500000002000000050000000100000000"
theorem small_4638683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638683_left_root small_4638683_left_fuel small_4638683_left_count small_4638683_left_encoded = true := by
  decide +kernel
theorem small_4638683_left_covered : CoveredBy scale carrier boxes small_4638683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638683_left_root small_4638683_left_fuel small_4638683_left_count small_4638683_left_encoded small_4638683_left_checked

theorem cover_4638683 : CoveredBy scale carrier boxes root_4638683 := by
  apply coveredBy_split_literal root_4638683 small_4638683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638745 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4638683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638745
#print axioms cover_4638683

def root_4638677 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638677_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638677_left_fuel : Nat := 1
def small_4638677_left_count : Nat := 1
def small_4638677_left_encoded : String := "00000004"
theorem small_4638677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638677_left_root small_4638677_left_fuel small_4638677_left_count small_4638677_left_encoded = true := by
  decide +kernel
theorem small_4638677_left_covered : CoveredBy scale carrier boxes small_4638677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638677_left_root small_4638677_left_fuel small_4638677_left_count small_4638677_left_encoded small_4638677_left_checked

theorem cover_4638677 : CoveredBy scale carrier boxes root_4638677 := by
  apply coveredBy_split_literal root_4638677 small_4638677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638683 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4638677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638683
#print axioms cover_4638677

def root_4638637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638637_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638637_left_fuel : Nat := 7
def small_4638637_left_count : Nat := 19
def small_4638637_left_encoded : String := "1151E8FF08A91301120700F608A91303120701020000000108A913050000000900000005000000050000000012073CF60000000008A913031207010200000001000000090000000500000004"
theorem small_4638637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638637_left_root small_4638637_left_fuel small_4638637_left_count small_4638637_left_encoded = true := by
  decide +kernel
theorem small_4638637_left_covered : CoveredBy scale carrier boxes small_4638637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638637_left_root small_4638637_left_fuel small_4638637_left_count small_4638637_left_encoded small_4638637_left_checked

theorem cover_4638637 : CoveredBy scale carrier boxes root_4638637 := by
  apply coveredBy_split_literal root_4638637 small_4638637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638677 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4638637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638677
#print axioms cover_4638637

def root_4638632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638632_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638632_right_fuel : Nat := 1
def small_4638632_right_count : Nat := 1
def small_4638632_right_encoded : String := "00000003"
theorem small_4638632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638632_right_root small_4638632_right_fuel small_4638632_right_count small_4638632_right_encoded = true := by
  decide +kernel
theorem small_4638632_right_covered : CoveredBy scale carrier boxes small_4638632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638632_right_root small_4638632_right_fuel small_4638632_right_count small_4638632_right_encoded small_4638632_right_checked

theorem cover_4638632 : CoveredBy scale carrier boxes root_4638632 := by
  apply coveredBy_split_literal root_4638632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638637 small_4638632_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638637
  · exact small_4638632_right_covered
#print axioms cover_4638632

def root_4638631 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638631_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638631_right_fuel : Nat := 30
def small_4638631_right_count : Nat := 421
def small_4638631_right_encoded : String := "115224FD000000030A0001081151E8FF08A91301120700F60000000A0000000012073CF60000000008A9130312070102000000010000000A0000000A00000004115224FF0000000408A91301120700F608A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF0000000A120701080000000404548A01138670F6000000050000000000000005000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A120701080000000404548A01138670F604548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA00000002000000061386AD020CFD9C050F34D0FA00000005000000020000000A00000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D0FA00000005000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A000000010000000312070106000000030000000A12073D0208A91305120700FA08A912FD12073D0600000005000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A120701080000000404548A01138670F60CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020000000A0F350D020CFD9C050F34D0FA00000005000000020000000A00000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D060000000A000000030000000A000000010000000312070106000000030000000A000000010000000012073CF60000000008A91303120701020000000108A91305120700FA08A912FD12073D0608A912FF0000000912070108000000040CFD9C010F34D0F604548A03000000050000000A000000000F350CF600000000000000090000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF0000000A12070108000000040CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA0000000A000000020000000A1386AD020CFD9C050F34D0FA0000000A000000020000000A00000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000C9A86FA000000090F875105000000020000000A000000030000000A1386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A000000010000000312070106000000030000000A12073D0208A91305120700FA08A912FD12073D0608A912FF0000000A12070108000000040CFD9C010F34D0F60CFD9C030F34D102000000010000000A0000000A000000000F350CF6000000000CFD9C030F34D10200000001000000090F350D0204548A05000000091386ACFA000000020CFD9BFD0F350D060000000A0000000300000009000000010000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0608A912FF12073D080CFD9C010F34D0F60000000A000000000000000A0000000412070108000000040CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020000000A0F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A87020F875103000000010000000A0000000A000000030000000A00000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A0F350D020CFD9C050F34D0FA0CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60000000A0F875101000000000000000A000000030000000A000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000A13867108000000040C9A86F60F878D010C9A87020F875103000000010000000A0000000A000000000F875101000000000C9A87020F875103000000010C9A86FA0000000A0F87510500000002000000070000000A000000030F34D106000000030000000A000000010000000312070106000000030000000A00000001"
theorem small_4638631_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638631_right_root small_4638631_right_fuel small_4638631_right_count small_4638631_right_encoded = true := by
  decide +kernel
theorem small_4638631_right_covered : CoveredBy scale carrier boxes small_4638631_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638631_right_root small_4638631_right_fuel small_4638631_right_count small_4638631_right_encoded small_4638631_right_checked

theorem cover_4638631 : CoveredBy scale carrier boxes root_4638631 := by
  apply coveredBy_split_literal root_4638631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638632 small_4638631_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638632
  · exact small_4638631_right_covered
#print axioms cover_4638631

def root_4638626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638626_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638626_right_fuel : Nat := 1
def small_4638626_right_count : Nat := 1
def small_4638626_right_encoded : String := "00000002"
theorem small_4638626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638626_right_root small_4638626_right_fuel small_4638626_right_count small_4638626_right_encoded = true := by
  decide +kernel
theorem small_4638626_right_covered : CoveredBy scale carrier boxes small_4638626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638626_right_root small_4638626_right_fuel small_4638626_right_count small_4638626_right_encoded small_4638626_right_checked

theorem cover_4638626 : CoveredBy scale carrier boxes root_4638626 := by
  apply coveredBy_split_literal root_4638626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638631 small_4638626_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638631
  · exact small_4638626_right_covered
#print axioms cover_4638626

def root_4644392 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4644392 : CoveredBy scale carrier boxes root_4644392 := by
  apply coveredBy_split_literal root_4644392 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1739.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1740.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1739.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1740.covered
#print axioms cover_4644392

def root_4644387 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644387_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644387_right_fuel : Nat := 1
def small_4644387_right_count : Nat := 1
def small_4644387_right_encoded : String := "00000002"
theorem small_4644387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644387_right_root small_4644387_right_fuel small_4644387_right_count small_4644387_right_encoded = true := by
  decide +kernel
theorem small_4644387_right_covered : CoveredBy scale carrier boxes small_4644387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644387_right_root small_4644387_right_fuel small_4644387_right_count small_4644387_right_encoded small_4644387_right_checked

theorem cover_4644387 : CoveredBy scale carrier boxes root_4644387 := by
  apply coveredBy_split_literal root_4644387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4644392 small_4644387_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4644392
  · exact small_4644387_right_covered
#print axioms cover_4644387

def root_4644386 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644386_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644386_right_fuel : Nat := 19
def small_4644386_right_count : Nat := 179
def small_4644386_right_encoded : String := "135D45050000000205000106135D44FD0CFD9C010F34D0F60CFD9C03000000080F350D02045489FF0000000813867108000000040000000900000001000000000F350CF6000000000CFD9C030F34D10200000001045489FF0000000813867108000000040C9A86F6000000080F87510100000000028000FA13D7ED05028001060000000813D7ECFD000000030AD357830000000810D13D02022A457F0000000700000006000000010000000213D7B10500000002028001060000000813D7ECFD000000030AD3578300000006000000060F350D02045489FF1386AD080C9A86F60F878D010C9A8702000000070F878D03028000FA000000070000000700000001000000000F87510100000000000000070000000413867108000000040C9A86F6000000090F87510100000000000000090000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D10200000001045489FF00000008000000060F350D02045489FF1386AD080C9A8702000000070F878D03028000FA0000000700000007000000010000000413867108000000040C9A8702000000070F878D03000000060000000100000001000000000F350CF6000000000CFD9C030F34D10200000001045489FF1386AD080C9A86F60F878D01028000FA000000070000000700000000000000070000000413867108000000040C9A86F60F878D01028000FA13D7ED050780010600000006000000060000000200000006000000000F87510100000000028000FA13D7ED0507800106128A40FD0AD3578310D10102000000010000000610D13D02000000070000000100000003000000070000000213D7B10500000002000000050F350D02045489FF1386AD080C9A86F60F878D010000000700000000000000070000000413867108000000040C9A86F60F878D010C9A8702000000070F878D03028000FA000000070000000700000001000000000F875101000000000000000700000001"
theorem small_4644386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644386_right_root small_4644386_right_fuel small_4644386_right_count small_4644386_right_encoded = true := by
  decide +kernel
theorem small_4644386_right_covered : CoveredBy scale carrier boxes small_4644386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644386_right_root small_4644386_right_fuel small_4644386_right_count small_4644386_right_encoded small_4644386_right_checked

theorem cover_4644386 : CoveredBy scale carrier boxes root_4644386 := by
  apply coveredBy_split_literal root_4644386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4644387 small_4644386_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4644387
  · exact small_4644386_right_covered
#print axioms cover_4644386

def root_4644380 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644380_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4644380_left_fuel : Nat := 1
def small_4644380_left_count : Nat := 1
def small_4644380_left_encoded : String := "00000004"
theorem small_4644380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4644380_left_root small_4644380_left_fuel small_4644380_left_count small_4644380_left_encoded = true := by
  decide +kernel
theorem small_4644380_left_covered : CoveredBy scale carrier boxes small_4644380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4644380_left_root small_4644380_left_fuel small_4644380_left_count small_4644380_left_encoded small_4644380_left_checked

theorem cover_4644380 : CoveredBy scale carrier boxes root_4644380 := by
  apply coveredBy_split_literal root_4644380 small_4644380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4644386 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4644380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4644386
#print axioms cover_4644380

def root_4643884 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643884_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643884_left_fuel : Nat := 18
def small_4643884_left_count : Nat := 235
def small_4643884_left_encoded : String := "12073D08050000FA135D810505000106135D44FD0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0F350D0800000005000000040F34D108000000040C9A86F6000000050F87510100000000078000FA00000005128A410500000002028001060000000513D7ECFD00000003000000070F350D020CFD9BFF000000050F34D108000000040C9A86F6000000050F875101000000000C9A8702000000050F878D03078000FA00000005128A41050000000200000007000000010000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D102000000010000000A0F350D020CFD9BFF000000050F34D108000000040C9A8702000000050000000A00000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0000000A0F34D108000000040C9A86F60000000A0F875101000000000000000A0F350D020CFD9BFF0000000A0F34D108000000040C9A86F60F878D010C9A8702000000070000000A000000000F875101000000000C9A8702000000070000000A0000000100000002135D45050000000205000106135D44FD0CFD9C010F34D0F60CFD9C030F34D10200000001000000080F350D020000000500000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0F350D080C9A86F60F878D0100000005000000000F875101000000000C9A87080F8750FF000000050000000400000007000000040F34D108000000040C9A86F6000000080F87510100000000028000FA00000007000000070F350D020CFD9BFF0F350D080C9A86F6000000050F875101000000000C9A8702000000050F878D030C9A8708000000050000000700000001000000040F34D108000000040C9A86F60F878D010C9A8702000000070F878D03000000070000000100000000000000070000000100000003135D80FD000000030CFD9C010F34D0F60CFD9C030F34D102000000010CFD9BFF0000000A0F34D10800000004000000080F350D020CFD9BFF0000000A0F34D108000000040C9A8702000000070F878D03028000FA00000007000000070000000100000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFF0000000A0F34D108000000040C9A86F60F878D01028000FA000000070000000700000000000000070F350D020CFD9BFF0F350D080C9A86F60000000A0F875101000000000C9A8702000000070000000A000000040F34D108000000040C9A86F60F878D010000000700000000000000070000000100000004"
theorem small_4643884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643884_left_root small_4643884_left_fuel small_4643884_left_count small_4643884_left_encoded = true := by
  decide +kernel
theorem small_4643884_left_covered : CoveredBy scale carrier boxes small_4643884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643884_left_root small_4643884_left_fuel small_4643884_left_count small_4643884_left_encoded small_4643884_left_checked

theorem cover_4643884 : CoveredBy scale carrier boxes root_4643884 := by
  apply coveredBy_split_literal root_4643884 small_4643884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4644380 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4643884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4644380
#print axioms cover_4643884

def root_4643879 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643879_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643879_right_fuel : Nat := 1
def small_4643879_right_count : Nat := 1
def small_4643879_right_encoded : String := "00000001"
theorem small_4643879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643879_right_root small_4643879_right_fuel small_4643879_right_count small_4643879_right_encoded = true := by
  decide +kernel
theorem small_4643879_right_covered : CoveredBy scale carrier boxes small_4643879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643879_right_root small_4643879_right_fuel small_4643879_right_count small_4643879_right_encoded small_4643879_right_checked

theorem cover_4643879 : CoveredBy scale carrier boxes root_4643879 := by
  apply coveredBy_split_literal root_4643879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643884 small_4643879_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643884
  · exact small_4643879_right_covered
#print axioms cover_4643879

def root_4643381 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643381_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643381_left_fuel : Nat := 23
def small_4643381_left_count : Nat := 233
def small_4643381_left_encoded : String := "120701020000000108A912FF12073D08050000FA135D810505000106135D44FD0CFD9C01000000080F350CF60000000004548A03000000081386AD020CFD9BFF000000080F34D10800000004000000080000000100000003135D80FD000000030CFD9C010F34D0F60000000A000000000F350CF60000000004548A0313867102000000010CFD9BFF000000090F34D10800000004000000080000000A00000002135D45050000000205000106135D44FD0CFD9C01000000080F350CF60000000004548A03000000081386AD020CFD9BFF000000080F34D10800000004000000080000000100000003135D80FD000000030CFD9C010F34D0F600000008000000000F350CF60000000004548A0313867102000000010CFD9BFF000000080F34D10800000004000000081386AD020CFD9BFF0000000A0F34D108000000040C9A86F6000000080000000700000001000000041207010800000004050000FA135D810505000106135D44FD0000000800000003135D80FD000000030CFD9C010F34D0F600000008000000000F350CF60000000004548A031386710200000001045489FF0000000813867108000000040C9A86F6000000080F87510100000000078000FA128A7D050780010600000008128A7CFD00000003022A4583000000060000000600000002000000061386AD02045489FF1386AD080C9A86F60F878D0100000008000000000F87510100000000078000FA128A7D050000000900000002128A4105000000020780010600000008128A7CFD000000030000000A0000000413867108000000040C9A86F60F878D01078000FA128A7D050780010600000006128A7CFD00000003000000060000000200000006000000000F87510100000000078000FA128A7D0507800106128A40FD067ECE830000000812EA9502022A457F00000008000000060000000100000003128A7CFD00000003067ECE8312EA590200000001022A457F000000090000000612EA9502022A457F0000000A000000060000000100000002128A41050000000207800106128A40FD0000000800000003128A7CFD00000003067ECE8300000006000000060000000100000002135D4505000000020500010600000008135D80FD000000030CFD9C010F34D0F600000006000000000F350CF60000000004548A031386710200000001000000081386AD02045489FF1386AD080C9A86F6000000080F87510100000000028000FA13D7ED0507800106000000080000000700000002000000070000000413867108000000040000000600000001"
theorem small_4643381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643381_left_root small_4643381_left_fuel small_4643381_left_count small_4643381_left_encoded = true := by
  decide +kernel
theorem small_4643381_left_covered : CoveredBy scale carrier boxes small_4643381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643381_left_root small_4643381_left_fuel small_4643381_left_count small_4643381_left_encoded small_4643381_left_checked

theorem cover_4643381 : CoveredBy scale carrier boxes root_4643381 := by
  apply coveredBy_split_literal root_4643381 small_4643381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643879 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4643381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643879
#print axioms cover_4643381

def root_4643375 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643375_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643375_left_fuel : Nat := 1
def small_4643375_left_count : Nat := 1
def small_4643375_left_encoded : String := "00000000"
theorem small_4643375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643375_left_root small_4643375_left_fuel small_4643375_left_count small_4643375_left_encoded = true := by
  decide +kernel
theorem small_4643375_left_covered : CoveredBy scale carrier boxes small_4643375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643375_left_root small_4643375_left_fuel small_4643375_left_count small_4643375_left_encoded small_4643375_left_checked

theorem cover_4643375 : CoveredBy scale carrier boxes root_4643375 := by
  apply coveredBy_split_literal root_4643375 small_4643375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643381 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4643375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643381
#print axioms cover_4643375

def root_4643149 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643149_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643149_left_fuel : Nat := 18
def small_4643149_left_count : Nat := 105
def small_4643149_left_encoded : String := "120700F608A91303120701020000000108A912FF0000000812070108000000040000000812073D0208A912FF12073D08050000FA00000005135D4505000000020500010600000005135D80FD0000000304548A01138670F60CFD9C03000000050F350D020000000500000001000000001386ACF6000000000CFD9C030F34D10200000001000000080F350D020CFD9BFF000000050F34D108000000040C9A8702000000050000000800000001000000041207010800000004050000FA135D81050500010600000005135D80FD0000000304548A01138670F60CFD9C03000000050F350D020000000500000001000000001386ACF6000000000CFD9C030F34D10200000001000000080F350D02045489FF0000000513867108000000040C9A8702000000050F878D0300000006000000010000000100000002135D4505000000020500010600000008135D80FD0000000304548A01138670F600000008000000001386ACF6000000000CFD9C030F34D10200000001000000060F350D02045489FF1386AD080C9A870200000007000000080000000400000006000000010000000100000000"
theorem small_4643149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643149_left_root small_4643149_left_fuel small_4643149_left_count small_4643149_left_encoded = true := by
  decide +kernel
theorem small_4643149_left_covered : CoveredBy scale carrier boxes small_4643149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643149_left_root small_4643149_left_fuel small_4643149_left_count small_4643149_left_encoded small_4643149_left_checked

theorem cover_4643149 : CoveredBy scale carrier boxes root_4643149 := by
  apply coveredBy_split_literal root_4643149 small_4643149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643375 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4643149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643375
#print axioms cover_4643149

def root_4643143 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643143_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643143_left_fuel : Nat := 1
def small_4643143_left_count : Nat := 1
def small_4643143_left_encoded : String := "00000004"
theorem small_4643143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643143_left_root small_4643143_left_fuel small_4643143_left_count small_4643143_left_encoded = true := by
  decide +kernel
theorem small_4643143_left_covered : CoveredBy scale carrier boxes small_4643143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643143_left_root small_4643143_left_fuel small_4643143_left_count small_4643143_left_encoded small_4643143_left_checked

theorem cover_4643143 : CoveredBy scale carrier boxes root_4643143 := by
  apply coveredBy_split_literal root_4643143 small_4643143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643149 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4643143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643149
#print axioms cover_4643143

def root_4643065 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643065_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643065_left_fuel : Nat := 14
def small_4643065_left_count : Nat := 37
def small_4643065_left_encoded : String := "1151E8FF08A91301120700F6000000050000000012073CF60000000008A913031207010200000001050000FA00000005135D45050000000205000106000000050000000A12073D02050000FA00000005135D4505000000020500010600000005135D80FD000000030500010800000005135D80FF000000040CFD9C010F34D0F600000005000000000000000A0000000100000004"
theorem small_4643065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643065_left_root small_4643065_left_fuel small_4643065_left_count small_4643065_left_encoded = true := by
  decide +kernel
theorem small_4643065_left_covered : CoveredBy scale carrier boxes small_4643065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643065_left_root small_4643065_left_fuel small_4643065_left_count small_4643065_left_encoded small_4643065_left_checked

theorem cover_4643065 : CoveredBy scale carrier boxes root_4643065 := by
  apply coveredBy_split_literal root_4643065 small_4643065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643143 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4643065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643143
#print axioms cover_4643065

def root_4643060 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643060_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643060_right_fuel : Nat := 1
def small_4643060_right_count : Nat := 1
def small_4643060_right_encoded : String := "00000003"
theorem small_4643060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643060_right_root small_4643060_right_fuel small_4643060_right_count small_4643060_right_encoded = true := by
  decide +kernel
theorem small_4643060_right_covered : CoveredBy scale carrier boxes small_4643060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643060_right_root small_4643060_right_fuel small_4643060_right_count small_4643060_right_encoded small_4643060_right_checked

theorem cover_4643060 : CoveredBy scale carrier boxes root_4643060 := by
  apply coveredBy_split_literal root_4643060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643065 small_4643060_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643065
  · exact small_4643060_right_covered
#print axioms cover_4643060

def root_4643059 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4643059 : CoveredBy scale carrier boxes root_4643059 := by
  apply coveredBy_split_literal root_4643059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643060 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1741.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643060
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1741.covered
#print axioms cover_4643059

def root_4643053 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643053_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4643053_left_fuel : Nat := 1
def small_4643053_left_count : Nat := 1
def small_4643053_left_encoded : String := "00000002"
theorem small_4643053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4643053_left_root small_4643053_left_fuel small_4643053_left_count small_4643053_left_encoded = true := by
  decide +kernel
theorem small_4643053_left_covered : CoveredBy scale carrier boxes small_4643053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4643053_left_root small_4643053_left_fuel small_4643053_left_count small_4643053_left_encoded small_4643053_left_checked

theorem cover_4643053 : CoveredBy scale carrier boxes root_4643053 := by
  apply coveredBy_split_literal root_4643053 small_4643053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643059 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4643053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643059
#print axioms cover_4643053

def root_4638625 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4638625 : CoveredBy scale carrier boxes root_4638625 := by
  apply coveredBy_split_literal root_4638625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4643053 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4643053
#print axioms cover_4638625

def root_4638620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638620_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4638620_right_fuel : Nat := 1
def small_4638620_right_count : Nat := 1
def small_4638620_right_encoded : String := "00000001"
theorem small_4638620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4638620_right_root small_4638620_right_fuel small_4638620_right_count small_4638620_right_encoded = true := by
  decide +kernel
theorem small_4638620_right_covered : CoveredBy scale carrier boxes small_4638620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4638620_right_root small_4638620_right_fuel small_4638620_right_count small_4638620_right_encoded small_4638620_right_checked

theorem cover_4638620 : CoveredBy scale carrier boxes root_4638620 := by
  apply coveredBy_split_literal root_4638620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638625 small_4638620_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638625
  · exact small_4638620_right_covered
#print axioms cover_4638620

def root_4636560 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4636560 : CoveredBy scale carrier boxes root_4636560 := by
  apply coveredBy_split_literal root_4636560 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1737.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4638620 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1737.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4638620
#print axioms cover_4636560

def root_4636555 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4636555_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4636555_right_fuel : Nat := 1
def small_4636555_right_count : Nat := 1
def small_4636555_right_encoded : String := "00000000"
theorem small_4636555_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4636555_right_root small_4636555_right_fuel small_4636555_right_count small_4636555_right_encoded = true := by
  decide +kernel
theorem small_4636555_right_covered : CoveredBy scale carrier boxes small_4636555_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4636555_right_root small_4636555_right_fuel small_4636555_right_count small_4636555_right_encoded small_4636555_right_checked

theorem cover_4636555 : CoveredBy scale carrier boxes root_4636555 := by
  apply coveredBy_split_literal root_4636555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4636560 small_4636555_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4636560
  · exact small_4636555_right_covered
#print axioms cover_4636555

def root_4652176 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652176_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652176_left_fuel : Nat := 16
def small_4652176_left_count : Nat := 85
def small_4652176_left_encoded : String := "12073D08050000F6135D810105000106135D44FD0CFD9C030F34D102000000010CFD9C0500000009000000090F350D020CFD9C05000000050F350CFA000000020CFD9BFF000000050F34D108000000040C9A8702000000050F878D030C9A86FA000000050F8751050000000200000006000000010000000100000003135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFF0000000A0F34D108000000040C9A87020F87510300000001000000060F878D0300000009000000010000000100000000135D45010000000005000106135D44FD0CFD9C030F34D10200000001000000090F350D020CFD9C0500000006000000060000000100000003135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9C050F34D0FA0000000600000002000000060000000100000004"
theorem small_4652176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652176_left_root small_4652176_left_fuel small_4652176_left_count small_4652176_left_encoded = true := by
  decide +kernel
theorem small_4652176_left_covered : CoveredBy scale carrier boxes small_4652176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652176_left_root small_4652176_left_fuel small_4652176_left_count small_4652176_left_encoded small_4652176_left_checked

theorem cover_4652176 : CoveredBy scale carrier boxes root_4652176 := by
  apply coveredBy_split_literal root_4652176 small_4652176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1742.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4652176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1742.covered
#print axioms cover_4652176

def root_4652170 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652170_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652170_left_fuel : Nat := 1
def small_4652170_left_count : Nat := 1
def small_4652170_left_encoded : String := "00000002"
theorem small_4652170_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652170_left_root small_4652170_left_fuel small_4652170_left_count small_4652170_left_encoded = true := by
  decide +kernel
theorem small_4652170_left_covered : CoveredBy scale carrier boxes small_4652170_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652170_left_root small_4652170_left_fuel small_4652170_left_count small_4652170_left_encoded small_4652170_left_checked

theorem cover_4652170 : CoveredBy scale carrier boxes root_4652170 := by
  apply coveredBy_split_literal root_4652170 small_4652170_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652176 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4652170_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652176
#print axioms cover_4652170

def root_4652098 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652098_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652098_left_fuel : Nat := 11
def small_4652098_left_count : Nat := 35
def small_4652098_left_encoded : String := "120700FA08A912FF12073D08050000F600000005135D450100000000050001060000000500000009000000041207010800000004050000F6135D81010500010600000005135D80FD000000030000000900000000135D45010000000005000106135D44FD0CFD9C03000000090F350D0204548A05000000050000000600000001000000030000000900000002"
theorem small_4652098_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652098_left_root small_4652098_left_fuel small_4652098_left_count small_4652098_left_encoded = true := by
  decide +kernel
theorem small_4652098_left_covered : CoveredBy scale carrier boxes small_4652098_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652098_left_root small_4652098_left_fuel small_4652098_left_count small_4652098_left_encoded small_4652098_left_checked

theorem cover_4652098 : CoveredBy scale carrier boxes root_4652098 := by
  apply coveredBy_split_literal root_4652098 small_4652098_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652170 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4652098_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652170
#print axioms cover_4652098

def root_4652093 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652093_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652093_right_fuel : Nat := 1
def small_4652093_right_count : Nat := 1
def small_4652093_right_encoded : String := "00000001"
theorem small_4652093_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652093_right_root small_4652093_right_fuel small_4652093_right_count small_4652093_right_encoded = true := by
  decide +kernel
theorem small_4652093_right_covered : CoveredBy scale carrier boxes small_4652093_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652093_right_root small_4652093_right_fuel small_4652093_right_count small_4652093_right_encoded small_4652093_right_checked

theorem cover_4652093 : CoveredBy scale carrier boxes root_4652093 := by
  apply coveredBy_split_literal root_4652093 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652098 small_4652093_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652098
  · exact small_4652093_right_covered
#print axioms cover_4652093

def root_4652017 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652017_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652017_left_fuel : Nat := 14
def small_4652017_left_count : Nat := 35
def small_4652017_left_encoded : String := "120701020000000108A91305120700FA000000090000000212073CFA0000000208A912FF000000091207010800000004050000F6135D810105000106135D44FD04548A03000000090000000900000003135D80FD0000000304548A031386710200000001000000091386AD020CFD9C05000000090F350CFA0000000200000009000000010000000000000009"
theorem small_4652017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652017_left_root small_4652017_left_fuel small_4652017_left_count small_4652017_left_encoded = true := by
  decide +kernel
theorem small_4652017_left_covered : CoveredBy scale carrier boxes small_4652017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652017_left_root small_4652017_left_fuel small_4652017_left_count small_4652017_left_encoded small_4652017_left_checked

theorem cover_4652017 : CoveredBy scale carrier boxes root_4652017 := by
  apply coveredBy_split_literal root_4652017 small_4652017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652093 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4652017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652093
#print axioms cover_4652017

def root_4652011 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652011_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4652011_left_fuel : Nat := 1
def small_4652011_left_count : Nat := 1
def small_4652011_left_encoded : String := "00000004"
theorem small_4652011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4652011_left_root small_4652011_left_fuel small_4652011_left_count small_4652011_left_encoded = true := by
  decide +kernel
theorem small_4652011_left_covered : CoveredBy scale carrier boxes small_4652011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4652011_left_root small_4652011_left_fuel small_4652011_left_count small_4652011_left_encoded small_4652011_left_checked

theorem cover_4652011 : CoveredBy scale carrier boxes root_4652011 := by
  apply coveredBy_split_literal root_4652011 small_4652011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652017 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4652011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652017
#print axioms cover_4652011

def root_4651979 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651979_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651979_left_fuel : Nat := 7
def small_4651979_left_count : Nat := 15
def small_4651979_left_encoded : String := "1151E8FF08A913030000000912073D0208A91305120700FA000000050000000212073CFA00000002050000F600000005000000090000000100000004"
theorem small_4651979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651979_left_root small_4651979_left_fuel small_4651979_left_count small_4651979_left_encoded = true := by
  decide +kernel
theorem small_4651979_left_covered : CoveredBy scale carrier boxes small_4651979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651979_left_root small_4651979_left_fuel small_4651979_left_count small_4651979_left_encoded small_4651979_left_checked

theorem cover_4651979 : CoveredBy scale carrier boxes root_4651979 := by
  apply coveredBy_split_literal root_4651979 small_4651979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4652011 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4651979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4652011
#print axioms cover_4651979

def root_4651974 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651974_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651974_right_fuel : Nat := 1
def small_4651974_right_count : Nat := 1
def small_4651974_right_encoded : String := "00000003"
theorem small_4651974_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651974_right_root small_4651974_right_fuel small_4651974_right_count small_4651974_right_encoded = true := by
  decide +kernel
theorem small_4651974_right_covered : CoveredBy scale carrier boxes small_4651974_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651974_right_root small_4651974_right_fuel small_4651974_right_count small_4651974_right_encoded small_4651974_right_checked

theorem cover_4651974 : CoveredBy scale carrier boxes root_4651974 := by
  apply coveredBy_split_literal root_4651974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4651979 small_4651974_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4651979
  · exact small_4651974_right_covered
#print axioms cover_4651974

def root_4651973 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651973_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651973_right_fuel : Nat := 30
def small_4651973_right_count : Nat := 255
def small_4651973_right_encoded : String := "115224FD000000030A0001081151E8FF08A913031207010200000001000000090000000900000004115224FF0000000408A91303120701020000000108A91305120700FA000000090000000212073CFA0000000208A912FD12073D0608A912FF000000091207010800000004050000F6135D810104548A0313867102000000010CFD9C05000000090F350CFA000000020CFD9BFD0F350D060000000900000003000000091386AD020CFD9C05000000090F350CFA000000020CFD9BFD0F350D06045489FF0000000913867108000000040000000900000003000000090000000100000000135D4501000000000000000900000003120701060000000308A912FF000000091207010800000004050000F60000000A0000000512073D0208A91305120700FA08A912FD12073D0608A912FF0000000912070108000000040000000900000003000000090000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D81010CFD9C030F34D10200000001000000090000000A00000000135D45010000000000000009000000041207010800000004050000F6135D81010CFD9C030F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFD0F350D06045489FF0000000913867108000000040C9A86FA0F878D0500000009000000020F875105000000020C9A87060F8750FD078000F60000000A00000009000000030000000A000000030F34D106000000030000000A0F350D020CFD9C050F34D0FA0CFD9BFD0F350D06045489FF0000000913867108000000040C9A87020F875103000000010C9A87060000000800000008000000090000000300000009000000020F350CFA000000020CFD9BFD0F350D06045489FF1386AD080C9A87020F875103000000010C9A86FA0000000A000000070000000A0000000413867108000000040C9A87020F875103000000010C9A86FA0F878D050C9A87060000000800000008000000020F87510500000002000000070F878D030C9A86FA0F878D050C9A87060F8750FD078000F60000000A00000009000000030000000A000000020F875105000000020C9A87060F8750FD078000F60000000A128A41010000000000000005000000030000000A00000001000000030F34D106000000030000000A0000000100000000135D4501000000000CFD9C030F34D10200000001000000090F350D020CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFD0F350D06045489FF1386AD08000000090000000413867108000000040C9A8702000000080F878D030000000900000001000000030F34D10600000003000000050000000100000003120701060000000308A912FF0000000A1207010800000004050000F60000000A0000000800000001"
theorem small_4651973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651973_right_root small_4651973_right_fuel small_4651973_right_count small_4651973_right_encoded = true := by
  decide +kernel
theorem small_4651973_right_covered : CoveredBy scale carrier boxes small_4651973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651973_right_root small_4651973_right_fuel small_4651973_right_count small_4651973_right_encoded small_4651973_right_checked

theorem cover_4651973 : CoveredBy scale carrier boxes root_4651973 := by
  apply coveredBy_split_literal root_4651973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4651974 small_4651973_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4651974
  · exact small_4651973_right_covered
#print axioms cover_4651973

def root_4651968 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651968_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651968_right_fuel : Nat := 1
def small_4651968_right_count : Nat := 1
def small_4651968_right_encoded : String := "00000002"
theorem small_4651968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651968_right_root small_4651968_right_fuel small_4651968_right_count small_4651968_right_encoded = true := by
  decide +kernel
theorem small_4651968_right_covered : CoveredBy scale carrier boxes small_4651968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651968_right_root small_4651968_right_fuel small_4651968_right_count small_4651968_right_encoded small_4651968_right_checked

theorem cover_4651968 : CoveredBy scale carrier boxes root_4651968 := by
  apply coveredBy_split_literal root_4651968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4651973 small_4651968_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4651973
  · exact small_4651968_right_covered
#print axioms cover_4651968

def root_4660472 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4660472_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4660472_left_fuel : Nat := 19
def small_4660472_left_count : Nat := 179
def small_4660472_left_encoded : String := "13E201080DE7CA020E5FD9030000000108C000F611FC250108C000FA11FC250503C00106000000060000000600000002000000070000000011FBE9010000000008C000FA00000006000000070E60150308C000F611FC250108C000FA11FC250503C0010613A510FD033F67BF13BC31080DAED8830E9625020000000100000009000000060000000413BBF508000000040DAED8830E96250200000001096000F611AABD01096000FA0000000511AA8105000000020000000800000000000000090E966102096000F611AABD01096000FA0000000511AA8105000000020320010600000005000000060000000000000006000000010000000313A54CFD00000003033F67BF13BC31080DAED8830E96250200000001000000090E96610200000006000000010000000413BBF508000000040DAED8830E96250200000001096000F611AABD01096000FA0000000911AA8105000000020000000700000000000000090E966102096000F611AABD01000000070000000000000006000000010000000211FBE9050000000203C0010613A510FD033F67BF0000000713BBF508000000040DAED8830E96250200000001096000F611AABD01000000080000000011AA810100000000082000FA1246990503200106000000080000000700000002000000070E96610200000007000000010000000313A54CFD00000003000000070000000011FBE9010000000008C000FA11FC250503C0010613A510FD033F67BF0000000613BBF50800000004000000060000000313A54CFD00000003033F67BF0000000613BBF508000000040DAED88300000006000000060000000211FBE9050000000203C0010613A510FD033F67BF0000000613BBF508000000040DAED8830E96250200000001082000F612469901082000FA0000000612465D05000000020000000700000000000000060E96610200000006000000010000000313A54CFD00000003000000070000000100000004"
theorem small_4660472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4660472_left_root small_4660472_left_fuel small_4660472_left_count small_4660472_left_encoded = true := by
  decide +kernel
theorem small_4660472_left_covered : CoveredBy scale carrier boxes small_4660472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4660472_left_root small_4660472_left_fuel small_4660472_left_count small_4660472_left_encoded small_4660472_left_checked

theorem cover_4660472 : CoveredBy scale carrier boxes root_4660472 := by
  apply coveredBy_split_literal root_4660472 small_4660472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1744.root coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4660472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1744.covered
#print axioms cover_4660472

def root_4660466 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4660466_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4660466_left_fuel : Nat := 1
def small_4660466_left_count : Nat := 1
def small_4660466_left_encoded : String := "00000003"
theorem small_4660466_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4660466_left_root small_4660466_left_fuel small_4660466_left_count small_4660466_left_encoded = true := by
  decide +kernel
theorem small_4660466_left_covered : CoveredBy scale carrier boxes small_4660466_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4660466_left_root small_4660466_left_fuel small_4660466_left_count small_4660466_left_encoded small_4660466_left_checked

theorem cover_4660466 : CoveredBy scale carrier boxes root_4660466 := by
  apply coveredBy_split_literal root_4660466 small_4660466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4660472 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_4660466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4660472
#print axioms cover_4660466

def root_4659850 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659850_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659850_left_fuel : Nat := 20
def small_4659850_left_count : Nat := 291
def small_4659850_left_encoded : String := "13D7B0FD022A457F13E201080DE7CA020E5FD9030000000108C000F611FC250108C000FA11FC2505000000050000000211FBE905000000020140010613F5D8FD000000060000000313F614FD00000003033F67BF0000000613BBF508000000040D412882000000060EFA4D0300000006000000010000000011FBE90100000000000000060E60150308C000F611FC250108C000FA11FC2505014001060000000513F614FD00000003033F67BF0000000513BBF508000000040DAED883000000050E96610200000005000000010000000211FBE905000000020140010613F5D8FD000000080000000313F614FD00000003033F67BF13BC31080DAED8830E96250200000001000000080E96610200000006000000010000000413BBF508000000040DAED8830E96250200000001000000080E966102096000F60000000811AA810100000000082000FA0000000612465D050000000200000006000000010000000011FBE9010000000008C000FA11FC25050140010600000006000000060000000211FBE905000000020140010613F5D8FD033F67BF000000060000000A0000000313F614FD00000003033F67BF0000000613BBF508000000040DAED8830E96250200000001082000F612469901082000FA000000060000000A00000000000000060E9661020000000600000001000000010000000413E1C508000000040DE7CA020E5FD9030000000108C000F611FC250108C000FA11FC25050140010613F5D8FD0115233F000000050000000A0000000313F614FD000000030115233F13F895080D412882000000050EFA4D03096000F60000000500000006000000010000000413F85908000000040D4128820000000A0EFA4D030000000A000000010000000211FBE90500000002014001060000000A13F614FD000000030115233F13F895080D412882000000090EFA4D030000000A0000000100000004000000090000000011FBE9010000000008C000FA11FC2505014001060000000A13F614FD000000030115233F000000060000000A000000020000000A0E60150308C000F611FC250108C000FA11FC25050140010613F5D8FD0115233F000000050000000A0000000313F614FD000000030115233F13F895080DAED8830E96250200000001096000F60000000511AA810100000000096000FA000000050000000A0E966102096000F60000000511AA810100000000096000FA000000050000000A000000010000000413F85908000000040DAED8830E96250200000001096000F6000000080000000A0E966102096000F611AABD010000000A000000000000000A000000010000000211FBE90500000002014001060000000A13F614FD000000030115233F13F895080DAED8830E96250200000001000000080E966102096000F611AABD0100000008000000000000000A00000001000000040000000A0000000011FBE9010000000008C000FA11FC2505014001060000000A13F614FD000000030115233F13F895080DAED8830E96250200000001082000F612469901096000FA000000090000000A00000000000000090E9661020000000600000001000000040000000A000000020000000A0000000100000003"
theorem small_4659850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659850_left_root small_4659850_left_fuel small_4659850_left_count small_4659850_left_encoded = true := by
  decide +kernel
theorem small_4659850_left_covered : CoveredBy scale carrier boxes small_4659850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659850_left_root small_4659850_left_fuel small_4659850_left_count small_4659850_left_encoded small_4659850_left_checked

theorem cover_4659850 : CoveredBy scale carrier boxes root_4659850 := by
  apply coveredBy_split_literal root_4659850 small_4659850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4660466 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4659850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4660466
#print axioms cover_4659850

def root_4659845 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659845_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659845_right_fuel : Nat := 1
def small_4659845_right_count : Nat := 1
def small_4659845_right_encoded : String := "00000002"
theorem small_4659845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659845_right_root small_4659845_right_fuel small_4659845_right_count small_4659845_right_encoded = true := by
  decide +kernel
theorem small_4659845_right_covered : CoveredBy scale carrier boxes small_4659845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659845_right_root small_4659845_right_fuel small_4659845_right_count small_4659845_right_encoded small_4659845_right_checked

theorem cover_4659845 : CoveredBy scale carrier boxes root_4659845 := by
  apply coveredBy_split_literal root_4659845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4659850 small_4659845_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4659850
  · exact small_4659845_right_covered
#print axioms cover_4659845

def root_4659844 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659844_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659844_right_fuel : Nat := 20
def small_4659844_right_count : Nat := 147
def small_4659844_right_encoded : String := "128A4105000000020280010613D7B0FD022A457F13E201080DE7CA020E5FD9030000000108C000F611FC25010000000700000000000000070E60150308C000F611FC2501064000FA12FFAD05014001060000000813F614FD00000003033F67BF0000000713BBF508000000040DAED883000000080E96610200000007000000010000000212FF7105000000020140010600000008000000070000000011FBE90100000000064000FA12FFAD05014001060000000A13F614FD00000003033F67BF000000070000000A0000000212FF710500000002014001060000000A00000007000000010000000413E1C508000000040DE7CA020000000A0E60150308C000F611FC25010000000A000000000000000A000000010000000313D7ECFD00000003022A457F13E201080DE7CA02000000070E60150308C000F611FC2501000000070000000000000007000000010000000413E1C508000000040DE7CA020E5FD9030000000108C000F60000000911FBE90100000000064000FA12FFAD0503C001060000000A0000000500000002000000050E60150308C000F611FC2501064000FA12FFAD0503C0010613A510FD0115233F13F895080DAED8830E96250200000001096000F611AABD0100000008000000000000000A0E9661020000000700000001000000040000000A0000000313A54CFD000000030115233F0000000713F8590800000004000000050000000212FF710500000002000000090000000011FBE90100000000064000FA12FFAD0503C0010613A510FD0000000A0000000300000005000000020000000500000001"
theorem small_4659844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659844_right_root small_4659844_right_fuel small_4659844_right_count small_4659844_right_encoded = true := by
  decide +kernel
theorem small_4659844_right_covered : CoveredBy scale carrier boxes small_4659844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659844_right_root small_4659844_right_fuel small_4659844_right_count small_4659844_right_encoded small_4659844_right_checked

theorem cover_4659844 : CoveredBy scale carrier boxes root_4659844 := by
  apply coveredBy_split_literal root_4659844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4659845 small_4659844_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4659845
  · exact small_4659844_right_covered
#print axioms cover_4659844

def root_4659839 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659839_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659839_right_fuel : Nat := 1
def small_4659839_right_count : Nat := 1
def small_4659839_right_encoded : String := "00000000"
theorem small_4659839_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659839_right_root small_4659839_right_fuel small_4659839_right_count small_4659839_right_encoded = true := by
  decide +kernel
theorem small_4659839_right_covered : CoveredBy scale carrier boxes small_4659839_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659839_right_root small_4659839_right_fuel small_4659839_right_count small_4659839_right_encoded small_4659839_right_checked

theorem cover_4659839 : CoveredBy scale carrier boxes root_4659839 := by
  apply coveredBy_split_literal root_4659839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4659844 small_4659839_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4659844
  · exact small_4659839_right_covered
#print axioms cover_4659839

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116
