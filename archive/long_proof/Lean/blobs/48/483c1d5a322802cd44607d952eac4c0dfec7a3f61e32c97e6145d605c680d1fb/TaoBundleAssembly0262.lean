import TaoBundleAssembly0258
import TaoBundleAssembly0260
import TaoBundleAssembly0261
import TaoBundleChunkBatch0347
import TaoBundleChunkBatch0349
import TaoBundleChunkBatch0350
import TaoBundleChunkBatch0351
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262
def root_3691489 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691489_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691489_right_fuel : Nat := 32
def small_3691489_right_count : Nat := 273
def small_3691489_right_encoded : String := "12073CF60000000008A91305120701040000000208A91307120700FC050000F8135D8103050000FE135D81090CFD9C010F34D0F604548A05138671040000000204548A07138670FC078000F8128A7D03078000FE128A7D090AD3578110D100F6022A458513E1C50400000002022A45870000000913E200FC0000000308C000F811FC250308C000FE11FC250909BE3541117740F60000000A000000000000000A00000004000000090000000111FBE9030000000108C000FE0000000A11FBE9090000000409BE3541117740F600000009000000000000000513E20104022A45870000000913E200FC000000030000000A000000020000000010D13CF600000000022A458513E1C50400000002022A45870000000A13E200FC0000000308C000F811FC250300000006000000010000000A0000000A00000004128A4109000000040AD3578110D100F600000009000000000000000900000001128A410300000001078000FE128A7D090AD3578110D100F6022A458513E1C50400000002022A4587000000080000000A0000000A000000000000000A00000004128A4109000000040AD357810000000810D13CF600000000022A458513E1C50400000002022A4587000000080000000500000005000000031386ACFC00000003078000F8128A7D03078000FE128A7D090AD3578110D100F6022A458513E1C50400000002067ECE8712EA58FC08C000F80000000511FBE9030000000100000005000000030000000500000005000000000000000500000004128A4109000000040000000500000001128A410300000001078000FE00000005128A410900000004000000051386AD0404548A07138670FC078000F8128A7D03078000FE128A7D090000000A00000004128A4109000000040000000500000001128A41030000000100000005000000030000000500000002000000000F350CF60000000004548A05138671040000000204548A07138670FC0C9A86F60F878D01078000F8128A7D03078000FE128A7D09022A458513E1C50400000002022A458700000006000000050000000500000004128A4109000000040000000500000001128A410300000001078000FE00000005128A41090000000400000005000000000F875101000000000000000500000003000000050000000500000004135D4509000000040CFD9C010F34D0F604548A05138671040000000204548A07138670FC078000F800000009128A41030000000100000008000000030000000500000005000000000000000500000001135D450300000001050000FE135D81090CFD9C010F34D0F604548A05138671040000000204548A07138670FC028000F813D7ED03078000FE0000000A128A41090000000400000008000000010000000A000000030000000500000005000000000000000500000004135D4509000000040CFD9C010F34D0F604548A05138671040000000204548A070000000800000005000000050000000000000005000000030000000500000005"
theorem small_3691489_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691489_right_root small_3691489_right_fuel small_3691489_right_count small_3691489_right_encoded = true := by
  decide +kernel
theorem small_3691489_right_covered : CoveredBy scale carrier boxes small_3691489_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691489_right_root small_3691489_right_fuel small_3691489_right_count small_3691489_right_encoded small_3691489_right_checked

theorem cover_3691489 : CoveredBy scale carrier boxes root_3691489 := by
  apply coveredBy_split_literal root_3691489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691490 small_3691489_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691490
  · exact small_3691489_right_covered
#print axioms cover_3691489

def root_3691483 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691483_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691483_left_fuel : Nat := 1
def small_3691483_left_count : Nat := 1
def small_3691483_left_encoded : String := "00000004"
theorem small_3691483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691483_left_root small_3691483_left_fuel small_3691483_left_count small_3691483_left_encoded = true := by
  decide +kernel
theorem small_3691483_left_covered : CoveredBy scale carrier boxes small_3691483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691483_left_root small_3691483_left_fuel small_3691483_left_count small_3691483_left_encoded small_3691483_left_checked

theorem cover_3691483 : CoveredBy scale carrier boxes root_3691483 := by
  apply coveredBy_split_literal root_3691483 small_3691483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3691489 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3691483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3691489
#print axioms cover_3691483

def root_3687045 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3687045 : CoveredBy scale carrier boxes root_3687045 := by
  apply coveredBy_split_literal root_3687045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3691483 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3691483
#print axioms cover_3687045

def root_3687040 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687040_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687040_right_fuel : Nat := 1
def small_3687040_right_count : Nat := 1
def small_3687040_right_encoded : String := "00000003"
theorem small_3687040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687040_right_root small_3687040_right_fuel small_3687040_right_count small_3687040_right_encoded = true := by
  decide +kernel
theorem small_3687040_right_covered : CoveredBy scale carrier boxes small_3687040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687040_right_root small_3687040_right_fuel small_3687040_right_count small_3687040_right_encoded small_3687040_right_checked

theorem cover_3687040 : CoveredBy scale carrier boxes root_3687040 := by
  apply coveredBy_split_literal root_3687040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3687045 small_3687040_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3687045
  · exact small_3687040_right_covered
#print axioms cover_3687040

def root_3687039 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687039_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687039_right_fuel : Nat := 22
def small_3687039_right_count : Nat := 165
def small_3687039_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120700F608A91305120701040000000208A91309120700FE050000F8135D81030000000800000001000000090000000412073CFE00000004050000F8135D8103050000FC135D810704548A01138670F604548A0513867104000000020CFD9C09000000090F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004000000051386AD040CFD9C090F34D0FE00000009000000040000000500000002000000001386ACF60000000004548A0513867104000000020CFD9C0900000008000000050000000500000003135D45070000000304548A01138670F604548A0513867104000000020CFD9C090F34D0FE00000008000000040000000500000005000000000000000500000001135D450300000001050000FC135D810704548A01138670F604548A050000000900000005000000000000000500000003135D45070000000304548A01138670F604548A050000000900000005000000000000000512073D0408A91309120700FE050000F8135D8103050000FC135D810704548A01138670F60CFD9C050F34D10400000002000000080F350D040000000500000002000000001386ACF6000000000CFD9C05000000090000000500000003135D45070000000304548A01138670F60CFD9C050F34D104000000020000000800000005000000000000000500000001135D450300000001050000FC135D810704548A01000000090000000500000003135D45070000000304548A01138670F60CFD9C05000000090000000500000000000000050000000400000005000000020000000012073CF60000000008A91305120701040000000208A91309120700FE00000008000000040000000500000005000000041151E9090000000400000005"
theorem small_3687039_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687039_right_root small_3687039_right_fuel small_3687039_right_count small_3687039_right_encoded = true := by
  decide +kernel
theorem small_3687039_right_covered : CoveredBy scale carrier boxes small_3687039_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687039_right_root small_3687039_right_fuel small_3687039_right_count small_3687039_right_encoded small_3687039_right_checked

theorem cover_3687039 : CoveredBy scale carrier boxes root_3687039 := by
  apply coveredBy_split_literal root_3687039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3687040 small_3687039_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3687040
  · exact small_3687039_right_covered
#print axioms cover_3687039

def root_3687034 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687034_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687034_right_fuel : Nat := 1
def small_3687034_right_count : Nat := 1
def small_3687034_right_encoded : String := "00000002"
theorem small_3687034_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687034_right_root small_3687034_right_fuel small_3687034_right_count small_3687034_right_encoded = true := by
  decide +kernel
theorem small_3687034_right_covered : CoveredBy scale carrier boxes small_3687034_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687034_right_root small_3687034_right_fuel small_3687034_right_count small_3687034_right_encoded small_3687034_right_checked

theorem cover_3687034 : CoveredBy scale carrier boxes root_3687034 := by
  apply coveredBy_split_literal root_3687034 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3687039 small_3687034_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3687039
  · exact small_3687034_right_covered
#print axioms cover_3687034

def root_3686880 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3686880_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3686880_left_fuel : Nat := 19
def small_3686880_left_count : Nat := 73
def small_3686880_left_encoded : String := "1151E905000000020A0000FC115225070A0000FE1152250908A91301120700F608A91307120700FC08A91309120700FE0000000A0000000412073CFE00000004050000F80000000A0000000A0000000312073CFC0000000308A91309120700FE050000F8135D81030500010400000005135D810504548A01138670F60CFD9C070000000A0000000500000000000000050000000200000001135D4503000000010500010400000005135D810504548A01138670F60CFD9C070000000A0000000500000000000000050000000200000004000000050000000012073CF60000000008A91307120700FC08A91309120700FE0000000A00000004000000050000000300000005000000041151E9090000000400000005000000031151E9070000000300000005"
theorem small_3686880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3686880_left_root small_3686880_left_fuel small_3686880_left_count small_3686880_left_encoded = true := by
  decide +kernel
theorem small_3686880_left_covered : CoveredBy scale carrier boxes small_3686880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3686880_left_root small_3686880_left_fuel small_3686880_left_count small_3686880_left_encoded small_3686880_left_checked

theorem cover_3686880 : CoveredBy scale carrier boxes root_3686880 := by
  apply coveredBy_split_literal root_3686880 small_3686880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3687034 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3686880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3687034
#print axioms cover_3686880

def root_3686874 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3686874_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3686874_left_fuel : Nat := 1
def small_3686874_left_count : Nat := 1
def small_3686874_left_encoded : String := "00000001"
theorem small_3686874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3686874_left_root small_3686874_left_fuel small_3686874_left_count small_3686874_left_encoded = true := by
  decide +kernel
theorem small_3686874_left_covered : CoveredBy scale carrier boxes small_3686874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3686874_left_root small_3686874_left_fuel small_3686874_left_count small_3686874_left_encoded small_3686874_left_checked

theorem cover_3686874 : CoveredBy scale carrier boxes root_3686874 := by
  apply coveredBy_split_literal root_3686874 small_3686874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3686880 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3686874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3686880
#print axioms cover_3686874

def root_3665568 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3665568 : CoveredBy scale carrier boxes root_3665568 := by
  apply coveredBy_split_literal root_3665568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.root_3665569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3686874 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0260.cover_3665569
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3686874
#print axioms cover_3665568

def root_3665563 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665563_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665563_right_fuel : Nat := 1
def small_3665563_right_count : Nat := 1
def small_3665563_right_encoded : String := "00000000"
theorem small_3665563_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665563_right_root small_3665563_right_fuel small_3665563_right_count small_3665563_right_encoded = true := by
  decide +kernel
theorem small_3665563_right_covered : CoveredBy scale carrier boxes small_3665563_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665563_right_root small_3665563_right_fuel small_3665563_right_count small_3665563_right_encoded small_3665563_right_checked

theorem cover_3665563 : CoveredBy scale carrier boxes root_3665563 := by
  apply coveredBy_split_literal root_3665563 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3665568 small_3665563_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3665568
  · exact small_3665563_right_covered
#print axioms cover_3665563

def root_3665562 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665562_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3665562_right_fuel : Nat := 33
def small_3665562_right_count : Nat := 457
def small_3665562_right_encoded : String := "1151E901000000000A0000F8115225030A0001041151E905000000020A0000FC115225070A0000FE1152250908A91303120700F808A91307120700FC0000000A000000030000000A0000000112073CF80000000108A913070000000A00000005000000041151E9090000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0000FE1152250908A91303120700F808A9130512070104000000020000000812073D0408A91307120700FC08A913090000000712073CFE00000004050000F6135D810104548A03000000081386ACF8000000010CFD9C050F34D10400000002000000070000000700000000135D45010000000004548A03000000081386ACF8000000010CFD9C050F34D1040000000200000007000000070000000300000008000000020000000112073CF80000000108A91305120701040000000208A91307120700FC08A913090000000812073CFE00000004050000F6135D81010CFD9C030F34D0F800000008000000010F350CF80000000104548A05138671040000000204548A07138670FC0CFD9C09000000080F350CFE000000040C9A86F8000000080F875103000000010C9A86FE000000080F87510900000004078000F6000000080000000A00000003000000081386AD0404548A07138670FC0CFD9C09000000080F350CFE000000040C9A86F80F878D030000000A000000010000000A000000031386ACFC000000030000000A0000000200000000135D4501000000000CFD9C030F34D0F800000008000000010F350CF80000000104548A05138671040000000204548A07138670FC0CFD9C09000000080F350CFE000000040C9A86F8000000080F875103000000010C9A86FE000000080F875109000000040000000500000003000000081386AD0404548A07138670FC0CFD9C090000000A000000050000000300000005000000020000000312073CFC0000000308A913090000000812073CFE00000004050000F6135D81010CFD9C03000000080F350CF80000000104548A05000000080000000500000000135D4501000000000CFD9C03000000080000000512073D0408A91307120700FC08A91309120700FE0000000A0000000412073CFE00000004050000F6135D81010CFD9C030F34D0F80CFD9C050F34D1040000000204548A070000000A0000000700000007000000010F350CF8000000010000000A00000000135D4501000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000070000000500000001000000050000000312073CFC0000000308A91309120700FE00000008000000040000000500000002000000041151E9090000000408A91303120700F808A91305120701040000000208A91307120700FC050000F600000006135D45010000000000000006000000030000000612073D0408A91307120700FC050000F6135D8101050000FE135D810904548A03138670F80CFD9C05000000060F350D040000000500000002000000011386ACF8000000010CFD9C050F34D10400000002000000070000000500000004135D45090000000404548A03000000060000000500000000135D450100000000050000FE135D810904548A03138670F80CFD9C050000000600000005000000010000000500000004135D45090000000404548A0300000006000000050000000300000005000000020000000112073CF80000000108A91305120701040000000208A91307120700FC050000F6135D8101050000FE135D81090CFD9C030F34D0F804548A050000000600000007000000010F350CF80000000104548A05138671040000000204548A07138670FC0C9A86F80F878D0300000006000000010F875103000000010000000500000003000000050000000500000004135D4509000000040CFD9C03000000060000000500000000135D450100000000050000FE135D81090CFD9C030F34D0F804548A050000000600000005000000010000000500000004135D4509000000040CFD9C030F34D0F8000000060000000100000005000000030000000500000005000000031151E907000000030A0000FE1152250908A91303120700F8000000070000000112073CF80000000108A9130512070104000000020000000800000005000000041151E909000000040000000500000002000000011151E903000000010A0001041151E9050000000200000005115225050A0000FC115225070A0000FE1152250908A91305120701040000000208A91307120700FC08A913090000000A12073CFE00000004050000F6135D8101050000F8135D810304548A0513867104000000020000000A0000000A000000010000000A00000000135D450100000000050000F8135D810304548A05138671040000000204548A070000000A0000000500000005000000010000000A0000000312073CFC0000000308A913090000000A0000000512073D0408A913070000000A0000000500000002000000041151E9090000000400000005000000031151E907000000030000000500000002"
theorem small_3665562_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3665562_right_root small_3665562_right_fuel small_3665562_right_count small_3665562_right_encoded = true := by
  decide +kernel
theorem small_3665562_right_covered : CoveredBy scale carrier boxes small_3665562_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3665562_right_root small_3665562_right_fuel small_3665562_right_count small_3665562_right_encoded small_3665562_right_checked

theorem cover_3665562 : CoveredBy scale carrier boxes root_3665562 := by
  apply coveredBy_split_literal root_3665562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3665563 small_3665562_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3665563
  · exact small_3665562_right_covered
#print axioms cover_3665562

def root_3663872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3663872 : CoveredBy scale carrier boxes root_3663872 := by
  apply coveredBy_split_literal root_3663872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1387.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3665562 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1387.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3665562
#print axioms cover_3663872

def root_3697546 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3697546 : CoveredBy scale carrier boxes root_3697546 := by
  apply coveredBy_split_literal root_3697546 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1396.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1397.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1396.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1397.covered
#print axioms cover_3697546

def root_3701421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3701421 : CoveredBy scale carrier boxes root_3701421 := by
  apply coveredBy_split_literal root_3701421 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1398.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1399.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1398.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1399.covered
#print axioms cover_3701421

def root_3697545 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3697545 : CoveredBy scale carrier boxes root_3697545 := by
  apply coveredBy_split_literal root_3697545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3697546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3701421 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3697546
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3701421
#print axioms cover_3697545

def root_3663871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3663871 : CoveredBy scale carrier boxes root_3663871 := by
  apply coveredBy_split_literal root_3663871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3663872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3697545 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3663872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3697545
#print axioms cover_3663871

def root_3642263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642263 : CoveredBy scale carrier boxes root_3642263 := by
  apply coveredBy_split_literal root_3642263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.root_3642264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3663871 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0258.cover_3642264
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3663871
#print axioms cover_3642263

def root_3707666 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707666_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707666_right_fuel : Nat := 19
def small_3707666_right_count : Nat := 85
def small_3707666_right_encoded : String := "1151E8FF08A91301120700F6000000050000000012073CF60000000008A912FD12073D06050000F800000005135D4503000000010500010400000005135D81050000000500000002000000031207010600000003050000F8135D810305000104135D450500000002050000FE00000005135D44FF0000000500000004135D8105050000FE135D80FF000000040CFD9C01000000050F350CF600000000045489FD0000000513867106000000030C9A86F6000000050F87510100000000078000F8000000050000000A135D44FF0CFD9C01000000050F350CF600000000045489FD0000000513867106000000030000000A000000040000000200000001135D450300000001050001040000000A135D8105050000FE135D80FF000000040CFD9C010F34D0F600000005000000000000000A135D44FF0CFD9C010F34D0F600000005000000000000000A000000040000000200000004"
theorem small_3707666_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707666_right_root small_3707666_right_fuel small_3707666_right_count small_3707666_right_encoded = true := by
  decide +kernel
theorem small_3707666_right_covered : CoveredBy scale carrier boxes small_3707666_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707666_right_root small_3707666_right_fuel small_3707666_right_count small_3707666_right_encoded small_3707666_right_checked

theorem cover_3707666 : CoveredBy scale carrier boxes root_3707666 := by
  apply coveredBy_split_literal root_3707666 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1401.root small_3707666_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1401.covered
  · exact small_3707666_right_covered
#print axioms cover_3707666

def root_3707660 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707660_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707660_left_fuel : Nat := 1
def small_3707660_left_count : Nat := 1
def small_3707660_left_encoded : String := "00000003"
theorem small_3707660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707660_left_root small_3707660_left_fuel small_3707660_left_count small_3707660_left_encoded = true := by
  decide +kernel
theorem small_3707660_left_covered : CoveredBy scale carrier boxes small_3707660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707660_left_root small_3707660_left_fuel small_3707660_left_count small_3707660_left_encoded small_3707660_left_checked

theorem cover_3707660 : CoveredBy scale carrier boxes root_3707660 := by
  apply coveredBy_split_literal root_3707660 small_3707660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3707666 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3707660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3707666
#print axioms cover_3707660

def root_3707630 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707630_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707630_left_fuel : Nat := 6
def small_3707630_left_count : Nat := 13
def small_3707630_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A913010000000512073CF600000000000000051151E8FF000000050000000400000003"
theorem small_3707630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707630_left_root small_3707630_left_fuel small_3707630_left_count small_3707630_left_encoded = true := by
  decide +kernel
theorem small_3707630_left_covered : CoveredBy scale carrier boxes small_3707630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707630_left_root small_3707630_left_fuel small_3707630_left_count small_3707630_left_encoded small_3707630_left_checked

theorem cover_3707630 : CoveredBy scale carrier boxes root_3707630 := by
  apply coveredBy_split_literal root_3707630 small_3707630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3707660 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3707630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3707660
#print axioms cover_3707630

def root_3707624 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707624_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707624_left_fuel : Nat := 1
def small_3707624_left_count : Nat := 1
def small_3707624_left_encoded : String := "00000002"
theorem small_3707624_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707624_left_root small_3707624_left_fuel small_3707624_left_count small_3707624_left_encoded = true := by
  decide +kernel
theorem small_3707624_left_covered : CoveredBy scale carrier boxes small_3707624_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707624_left_root small_3707624_left_fuel small_3707624_left_count small_3707624_left_encoded small_3707624_left_checked

theorem cover_3707624 : CoveredBy scale carrier boxes root_3707624 := by
  apply coveredBy_split_literal root_3707624 small_3707624_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3707630 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3707624_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3707630
#print axioms cover_3707624

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262
