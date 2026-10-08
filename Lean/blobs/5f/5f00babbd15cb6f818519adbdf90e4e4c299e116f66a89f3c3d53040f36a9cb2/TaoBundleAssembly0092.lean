import TaoBundleAssembly0090
import TaoBundleAssembly0091
import TaoBundleChunkBatch0347
import TaoBundleChunkBatch0349
import TaoBundleChunkBatch0350
import TaoBundleChunkBatch0351
import TaoBundleChunkBatch0352
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092
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
  apply coveredBy_split_literal root_3691489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.root_3691490 small_3691489_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.cover_3691490
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
  apply coveredBy_split_literal root_3691483 small_3691483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3691489 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3691483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3691489
#print axioms cover_3691483

def root_3687045 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3687045 : CoveredBy scale carrier boxes root_3687045 := by
  apply coveredBy_split_literal root_3687045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.root_3687046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3691483 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.cover_3687046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3691483
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
  apply coveredBy_split_literal root_3687040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3687045 small_3687040_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3687045
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
  apply coveredBy_split_literal root_3687039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3687040 small_3687039_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3687040
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
  apply coveredBy_split_literal root_3687034 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3687039 small_3687034_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3687039
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
  apply coveredBy_split_literal root_3686880 small_3686880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3687034 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3686880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3687034
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
  apply coveredBy_split_literal root_3686874 small_3686874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3686880 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3686874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3686880
#print axioms cover_3686874

def root_3665568 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3665568 : CoveredBy scale carrier boxes root_3665568 := by
  apply coveredBy_split_literal root_3665568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.root_3665569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3686874 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0091.cover_3665569
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3686874
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
  apply coveredBy_split_literal root_3665563 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3665568 small_3665563_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3665568
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
  apply coveredBy_split_literal root_3665562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3665563 small_3665562_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3665563
  · exact small_3665562_right_covered
#print axioms cover_3665562

def root_3663872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3663872 : CoveredBy scale carrier boxes root_3663872 := by
  apply coveredBy_split_literal root_3663872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1387.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3665562 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1387.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3665562
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
  apply coveredBy_split_literal root_3697545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3697546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3701421 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3697546
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3701421
#print axioms cover_3697545

def root_3663871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3663871 : CoveredBy scale carrier boxes root_3663871 := by
  apply coveredBy_split_literal root_3663871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3663872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3697545 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3663872
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3697545
#print axioms cover_3663871

def root_3642263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3642263 : CoveredBy scale carrier boxes root_3642263 := by
  apply coveredBy_split_literal root_3642263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.root_3642264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3663871 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0090.cover_3642264
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3663871
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
  apply coveredBy_split_literal root_3707660 small_3707660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707666 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3707660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707666
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
  apply coveredBy_split_literal root_3707630 small_3707630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707660 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3707630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707660
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
  apply coveredBy_split_literal root_3707624 small_3707624_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707630 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3707624_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707630
#print axioms cover_3707624

def root_3707623 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707623_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707623_right_fuel : Nat := 35
def small_3707623_right_count : Nat := 413
def small_3707623_right_encoded : String := "115225050A0001061151E8FD0A0000FE000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A913050000000712073D0408A912FD00000005120701060000000300000007000000020000000012073CF60000000008A91305120701040000000208A912FD0000000712070106000000030000000712073D0408A912FD12073D0608A912FF12073CFE00000004050000F800000005135D4503000000010CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040CFD9BFD000000050F34D106000000030000000700000002120700FE050000F8135D81030CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040CFD9BFD000000050F34D10600000003000000070000000200000001135D4503000000010CFD9C01000000070F350CF6000000000CFD9C05000000070F350D040CFD9BFD000000050F34D1060000000300000007000000020000000400000003120701060000000308A912FF12073CFE00000004050000F8135D81030CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060CFD9BFF000000050F34D0FE00000005000000040000000313867106000000030CFD9BFF000000070F34D0FE00000007000000040000000200000001135D4503000000010CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD0000000713867106000000030000000700000002120700FE050000F8135D81030CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD000000071386710600000003000000070000000200000001135D4503000000010000000700000004000000021151E8FF08A91301120700F608A913050000000512073D0408A912FD00000005120701060000000300000007000000020000000012073CF60000000008A91305120701040000000208A912FD0000000712070106000000030000000712073D0408A912FD12073D06050000F8135D8103050000FE00000005135D44FF000000050000000400000001135D450300000001050000FE135D80FF000000040CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040000000500000002135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D104000000020CFD9BFD000000070F34D10600000003000000070F350D040CFD9BFD000000050F34D106000000030C9A86F6000000050F875101000000000C9A8704000000050F878D0500000007000000020000000200000004000000031207010600000003050000F8135D8103050000FE135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD0000000513867106000000030C9A86F6000000070F875101000000000C9A87040F87510500000002078000F800000005128A410300000001078000FE00000005128A40FF00000005000000040000000700000002135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060C9A86F6000000050F875101000000000C9A8704000000050F878D0500000005000000020000000313867106000000030C9A86F60F878D010C9A87040000000500000007000000000F875101000000000C9A87040F87510500000002078000F8128A7D0300000005000000010000000A0F878D05078000F8128A7D03028000FE0000000513D7B0FF022A457D0000000513E1C506000000030B4D43F60000000510801101000000000DE7CA0400000005000000070000000400000001128A410300000001028000FE0000000713D7B0FF022A457D0000000713E1C50600000003000000070000000400000002000000020000000400000001135D450300000001050000FE135D80FF000000040CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD0000000713867106000000030000000700000002135D44FF0CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060C9A86F6000000070F875101000000000C9A870400000008000000070000000313867106000000030C9A86F60000000A0F875101000000000000000A0000000200000004000000020000000400000002"
theorem small_3707623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707623_right_root small_3707623_right_fuel small_3707623_right_count small_3707623_right_encoded = true := by
  decide +kernel
theorem small_3707623_right_covered : CoveredBy scale carrier boxes small_3707623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707623_right_root small_3707623_right_fuel small_3707623_right_count small_3707623_right_encoded small_3707623_right_checked

theorem cover_3707623 : CoveredBy scale carrier boxes root_3707623 := by
  apply coveredBy_split_literal root_3707623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707624 small_3707623_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707624
  · exact small_3707623_right_covered
#print axioms cover_3707623

def root_3707617 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707617_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707617_left_fuel : Nat := 1
def small_3707617_left_count : Nat := 1
def small_3707617_left_encoded : String := "00000001"
theorem small_3707617_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707617_left_root small_3707617_left_fuel small_3707617_left_count small_3707617_left_encoded = true := by
  decide +kernel
theorem small_3707617_left_covered : CoveredBy scale carrier boxes small_3707617_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707617_left_root small_3707617_left_fuel small_3707617_left_count small_3707617_left_encoded small_3707617_left_checked

theorem cover_3707617 : CoveredBy scale carrier boxes root_3707617 := by
  apply coveredBy_split_literal root_3707617 small_3707617_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707623 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3707617_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707623
#print axioms cover_3707617

def root_3704613 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704613 : CoveredBy scale carrier boxes root_3704613 := by
  apply coveredBy_split_literal root_3704613 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1400.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3707617 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1400.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3707617
#print axioms cover_3704613

def root_3704608 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3704608_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3704608_right_fuel : Nat := 1
def small_3704608_right_count : Nat := 1
def small_3704608_right_encoded : String := "00000000"
theorem small_3704608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3704608_right_root small_3704608_right_fuel small_3704608_right_count small_3704608_right_encoded = true := by
  decide +kernel
theorem small_3704608_right_covered : CoveredBy scale carrier boxes small_3704608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3704608_right_root small_3704608_right_fuel small_3704608_right_count small_3704608_right_encoded small_3704608_right_checked

theorem cover_3704608 : CoveredBy scale carrier boxes root_3704608 := by
  apply coveredBy_split_literal root_3704608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3704613 small_3704608_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3704613
  · exact small_3704608_right_covered
#print axioms cover_3704608

def root_3714833 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3714833 : CoveredBy scale carrier boxes root_3714833 := by
  apply coveredBy_split_literal root_3714833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1403.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1404.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1403.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1404.covered
#print axioms cover_3714833

def root_3714827 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714827_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714827_left_fuel : Nat := 1
def small_3714827_left_count : Nat := 1
def small_3714827_left_encoded : String := "00000003"
theorem small_3714827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714827_left_root small_3714827_left_fuel small_3714827_left_count small_3714827_left_encoded = true := by
  decide +kernel
theorem small_3714827_left_covered : CoveredBy scale carrier boxes small_3714827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714827_left_root small_3714827_left_fuel small_3714827_left_count small_3714827_left_encoded small_3714827_left_checked

theorem cover_3714827 : CoveredBy scale carrier boxes root_3714827 := by
  apply coveredBy_split_literal root_3714827 small_3714827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714833 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3714827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714833
#print axioms cover_3714827

def root_3714445 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714445_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714445_left_fuel : Nat := 21
def small_3714445_left_count : Nat := 185
def small_3714445_left_encoded : String := "1386AD06045489FF1386ACFE000000040C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D010000000500000000128A4101000000000780010400000006128A7D05067ECE7D0000000512EA590600000003067ECE7F0000000512EA58FE0B4D43F8000000051080110300000001000000060000000400000002138670FE0C9A86F80F878D03078000F6128A7D0107800104128A410500000002067ECE7D0000000512EA590600000003022A457F0000000500000009128A7D05067ECE7D000000050000000A0000000200000000128A41010000000007800104128A410500000002067ECE7D0000000512EA590600000003022A457F000000050000000A128A7D05067ECE7D000000050000000A00000002000000010F87510300000001078000F6128A7D0107800104128A410500000002067ECE7D12EA9506022A457F0000000513E1C4FE00000009000000040000000312EA590600000003022A457F13E200FE000000040B4D43F810804D030000000500000001108011030000000108C000F611FC2501000000050000000011FBE90100000000064001040000000612FFAD050569AC3D000000050000000A0000000213E1C4FE0B4D43F800000009108011030000000108C000F6000000090000000A00000004128A7D05067ECE7D12EA9506022A457F000000050000000A0000000312EA590600000003022A457F13E200FE000000040B4D43F80000000A108011030000000108C000F6000000070000000A0000000A0000000200000000128A41010000000007800104128A410500000002067ECE7D0000000612EA590600000003022A457F0000000613E1C4FE0B4D43F80000000A1080110300000001064000F60000000A0000000600000004128A7D05067ECE7D12EA9506022A457F000000050000000A0000000312EA590600000003022A457F13E200FE000000040B4D43F80000000A1080110300000001064000F60000000A0000000A0000000A000000020000000400000003"
theorem small_3714445_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714445_left_root small_3714445_left_fuel small_3714445_left_count small_3714445_left_encoded = true := by
  decide +kernel
theorem small_3714445_left_covered : CoveredBy scale carrier boxes small_3714445_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714445_left_root small_3714445_left_fuel small_3714445_left_count small_3714445_left_encoded small_3714445_left_checked

theorem cover_3714445 : CoveredBy scale carrier boxes root_3714445 := by
  apply coveredBy_split_literal root_3714445 small_3714445_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714827 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3714445_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714827
#print axioms cover_3714445

def root_3714439 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714439_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714439_left_fuel : Nat := 1
def small_3714439_left_count : Nat := 1
def small_3714439_left_encoded : String := "00000001"
theorem small_3714439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714439_left_root small_3714439_left_fuel small_3714439_left_count small_3714439_left_encoded = true := by
  decide +kernel
theorem small_3714439_left_covered : CoveredBy scale carrier boxes small_3714439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714439_left_root small_3714439_left_fuel small_3714439_left_count small_3714439_left_encoded small_3714439_left_checked

theorem cover_3714439 : CoveredBy scale carrier boxes root_3714439 := by
  apply coveredBy_split_literal root_3714439 small_3714439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714445 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3714439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714445
#print axioms cover_3714439

def root_3714391 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714391_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714391_left_fuel : Nat := 10
def small_3714391_left_count : Nat := 23
def small_3714391_left_encoded : String := "0F34D0F8045489FD000000051386710600000003045489FF00000005138670FE078000F6128A7D0107800104128A410500000002000000090000000A00000000128A4101000000000780010400000007000000080000000400000001"
theorem small_3714391_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714391_left_root small_3714391_left_fuel small_3714391_left_count small_3714391_left_encoded = true := by
  decide +kernel
theorem small_3714391_left_covered : CoveredBy scale carrier boxes small_3714391_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714391_left_root small_3714391_left_fuel small_3714391_left_count small_3714391_left_encoded small_3714391_left_checked

theorem cover_3714391 : CoveredBy scale carrier boxes root_3714391 := by
  apply coveredBy_split_literal root_3714391 small_3714391_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714439 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3714391_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714439
#print axioms cover_3714391

def root_3714386 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714386_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714386_right_fuel : Nat := 1
def small_3714386_right_count : Nat := 1
def small_3714386_right_encoded : String := "00000002"
theorem small_3714386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714386_right_root small_3714386_right_fuel small_3714386_right_count small_3714386_right_encoded = true := by
  decide +kernel
theorem small_3714386_right_covered : CoveredBy scale carrier boxes small_3714386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714386_right_root small_3714386_right_fuel small_3714386_right_count small_3714386_right_encoded small_3714386_right_checked

theorem cover_3714386 : CoveredBy scale carrier boxes root_3714386 := by
  apply coveredBy_split_literal root_3714386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714391 small_3714386_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714391
  · exact small_3714386_right_covered
#print axioms cover_3714386

def root_3712348 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3712348 : CoveredBy scale carrier boxes root_3712348 := by
  apply coveredBy_split_literal root_3712348 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1402.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3714386 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1402.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3714386
#print axioms cover_3712348

def root_3712343 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712343_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712343_right_fuel : Nat := 1
def small_3712343_right_count : Nat := 1
def small_3712343_right_encoded : String := "00000000"
theorem small_3712343_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712343_right_root small_3712343_right_fuel small_3712343_right_count small_3712343_right_encoded = true := by
  decide +kernel
theorem small_3712343_right_covered : CoveredBy scale carrier boxes small_3712343_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712343_right_root small_3712343_right_fuel small_3712343_right_count small_3712343_right_encoded small_3712343_right_checked

theorem cover_3712343 : CoveredBy scale carrier boxes root_3712343 := by
  apply coveredBy_split_literal root_3712343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3712348 small_3712343_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3712348
  · exact small_3712343_right_covered
#print axioms cover_3712343

def root_3712342 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712342_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712342_right_fuel : Nat := 22
def small_3712342_right_count : Nat := 257
def small_3712342_right_encoded : String := "135D45010000000005000104135D4505000000020CFD9C030F34D0F800000007000000010F350CF800000001045489FD1386AD06045489FF00000006138670FE0000000600000004000000031386710600000003045489FF1386ACFE000000040C9A86F8000000060F875103000000010000000600000007135D81050CFD9C030F34D0F8045489FD1386AD06045489FF00000005138670FE028000F613D7ED010780010400000005128A7D050000000500000002000000000000000700000004000000031386710600000003045489FF1386ACFE00000004028000F613D7ED01078001040000000700000008000000000000000700000007000000010F350CF800000001045489FD1386AD06045489FF1386ACFE000000040C9A86F8000000060F8751030000000100000006138670FE0C9A86F80F878D03028000F613D7ED0107800104128A41050000000200000006128A7D05067ECE7D0000000A0000000A000000020000000000000006000000010F87510300000001028000F613D7ED0107800104128A41050000000200000006128A7D05067ECE7D0000000612EA590600000003022A457F000000060000000A00000002000000000000000600000004000000031386710600000003045489FF1386ACFE000000040C9A86F80F878D03028000F613D7ED0107800104128A41050000000200000007128A7D05022A457D13E20106067ECE7F000000050000000A0000000300000008000000020000000013D7B101000000000780010400000006128A7D050000000800000002000000010F87510300000001028000F613D7ED0107800104128A410500000002022A457D0000000613E1C50600000003067ECE7F0000000600000007128A7D05022A457D13E20106067ECE7F0000000612EA58FE0B4D43F800000006108011030000000100000006000000040000000313E1C50600000003067ECE7F0000000812EA58FE0000000800000004000000020000000013D7B101000000000780010400000006128A7D05022A457D0000000613E1C50600000003067ECE7F000000060000000700000002138670FE0C9A86F80F878D03028000F613D7ED010780010400000007128A7D050000000A000000020000000000000007000000010F87510300000001028000F613D7ED0107800104128A410500000002022A457D13E20106022A457F0000000613E1C4FE0B4D43F80000000710801103000000010000000A000000040000000300000007128A7D05022A457D13E20106022A457F13E200FE000000040B4D43F80000000A10801103000000010000000A0000000A0000000313E1C50600000003022A457F000000080000000A000000020000000013D7B101000000000780010400000007128A7D05022A457D0000000A00000007000000020000000400000002"
theorem small_3712342_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712342_right_root small_3712342_right_fuel small_3712342_right_count small_3712342_right_encoded = true := by
  decide +kernel
theorem small_3712342_right_covered : CoveredBy scale carrier boxes small_3712342_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712342_right_root small_3712342_right_fuel small_3712342_right_count small_3712342_right_encoded small_3712342_right_checked

theorem cover_3712342 : CoveredBy scale carrier boxes root_3712342 := by
  apply coveredBy_split_literal root_3712342 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3712343 small_3712342_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3712343
  · exact small_3712342_right_covered
#print axioms cover_3712342

def root_3712337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712337_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712337_right_fuel : Nat := 1
def small_3712337_right_count : Nat := 1
def small_3712337_right_encoded : String := "00000004"
theorem small_3712337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712337_right_root small_3712337_right_fuel small_3712337_right_count small_3712337_right_encoded = true := by
  decide +kernel
theorem small_3712337_right_covered : CoveredBy scale carrier boxes small_3712337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712337_right_root small_3712337_right_fuel small_3712337_right_count small_3712337_right_encoded small_3712337_right_checked

theorem cover_3712337 : CoveredBy scale carrier boxes root_3712337 := by
  apply coveredBy_split_literal root_3712337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3712342 small_3712337_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3712342
  · exact small_3712337_right_covered
#print axioms cover_3712337

def root_3711967 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711967_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711967_left_fuel : Nat := 24
def small_3711967_left_count : Nat := 169
def small_3711967_left_encoded : String := "12073CFE00000004050000F6135D810105000104135D4505000000020CFD9C03000000050F350CF800000001045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D0100000005000000000000000600000004135D81050CFD9C030F34D0F800000005000000010F350CF800000001045489FD1386AD060CFD9BFF000000050F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F8750FF00000005000000040F34D0FE0C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D010780010400000005128A7D05000000050000000200000000128A41010000000007800104128A41050000000200000006128A7D05022A457D0000000513E1C506000000030AD3577F0000000510D100FE0B4D43F810804D0300000005000000011080110300000001000000090000000400000002000000040000000200000000135D45010000000005000104135D4505000000020CFD9C030F34D0F800000005000000010F350CF800000001045489FD00000006138671060000000300000006135D81050CFD9C030F34D0F8045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0000000500000004000000010F350CF800000001045489FD1386AD060CFD9BFF000000060F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F8000000060F87510300000001000000060F34D0FE0C9A86F80F878D03028000F613D7ED010780010400000006128A7D05022A457D0000000500000008000000020000000000000006000000010F87510300000001000000060000000400000002"
theorem small_3711967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711967_left_root small_3711967_left_fuel small_3711967_left_count small_3711967_left_encoded = true := by
  decide +kernel
theorem small_3711967_left_covered : CoveredBy scale carrier boxes small_3711967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711967_left_root small_3711967_left_fuel small_3711967_left_count small_3711967_left_encoded small_3711967_left_checked

theorem cover_3711967 : CoveredBy scale carrier boxes root_3711967 := by
  apply coveredBy_split_literal root_3711967 small_3711967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3712337 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3712337
#print axioms cover_3711967

def root_3711961 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711961_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711961_left_fuel : Nat := 1
def small_3711961_left_count : Nat := 1
def small_3711961_left_encoded : String := "00000003"
theorem small_3711961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711961_left_root small_3711961_left_fuel small_3711961_left_count small_3711961_left_encoded = true := by
  decide +kernel
theorem small_3711961_left_covered : CoveredBy scale carrier boxes small_3711961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711961_left_root small_3711961_left_fuel small_3711961_left_count small_3711961_left_encoded small_3711961_left_checked

theorem cover_3711961 : CoveredBy scale carrier boxes root_3711961 := by
  apply coveredBy_split_literal root_3711961 small_3711961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711967 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3711961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711967
#print axioms cover_3711961

def root_3711819 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711819_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711819_left_fuel : Nat := 17
def small_3711819_left_count : Nat := 69
def small_3711819_left_encoded : String := "12073D0608A912FF00000005120700FE050000F6135D810105000104135D4505000000020CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0C9A86F8000000060000000500000004135D81050CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0C9A86F8000000050F87510300000001078000F60000000500000006000000040000000200000000135D45010000000005000104135D45050000000200000006135D81050CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0000000600000004000000020000000400000003"
theorem small_3711819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711819_left_root small_3711819_left_fuel small_3711819_left_count small_3711819_left_encoded = true := by
  decide +kernel
theorem small_3711819_left_covered : CoveredBy scale carrier boxes small_3711819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711819_left_root small_3711819_left_fuel small_3711819_left_count small_3711819_left_encoded small_3711819_left_checked

theorem cover_3711819 : CoveredBy scale carrier boxes root_3711819 := by
  apply coveredBy_split_literal root_3711819 small_3711819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711961 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711961
#print axioms cover_3711819

def root_3711813 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711813_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711813_left_fuel : Nat := 1
def small_3711813_left_count : Nat := 1
def small_3711813_left_encoded : String := "00000001"
theorem small_3711813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711813_left_root small_3711813_left_fuel small_3711813_left_count small_3711813_left_encoded = true := by
  decide +kernel
theorem small_3711813_left_covered : CoveredBy scale carrier boxes small_3711813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711813_left_root small_3711813_left_fuel small_3711813_left_count small_3711813_left_encoded small_3711813_left_checked

theorem cover_3711813 : CoveredBy scale carrier boxes root_3711813 := by
  apply coveredBy_split_literal root_3711813 small_3711813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711819 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3711813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711819
#print axioms cover_3711813

def root_3711755 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711755_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711755_left_fuel : Nat := 13
def small_3711755_left_count : Nat := 29
def small_3711755_left_encoded : String := "120700F808A912FD00000005120701060000000308A912FF00000005120700FE050000F6135D810105000104135D45050000000204548A03000000051386ACF800000001045489FD00000005000000070000000500000000135D4501000000000500010400000007000000070000000400000001"
theorem small_3711755_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711755_left_root small_3711755_left_fuel small_3711755_left_count small_3711755_left_encoded = true := by
  decide +kernel
theorem small_3711755_left_covered : CoveredBy scale carrier boxes small_3711755_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711755_left_root small_3711755_left_fuel small_3711755_left_count small_3711755_left_encoded small_3711755_left_checked

theorem cover_3711755 : CoveredBy scale carrier boxes root_3711755 := by
  apply coveredBy_split_literal root_3711755 small_3711755_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711813 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711755_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711813
#print axioms cover_3711755

def root_3711749 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711749_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711749_left_fuel : Nat := 1
def small_3711749_left_count : Nat := 1
def small_3711749_left_encoded : String := "00000004"
theorem small_3711749_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711749_left_root small_3711749_left_fuel small_3711749_left_count small_3711749_left_encoded = true := by
  decide +kernel
theorem small_3711749_left_covered : CoveredBy scale carrier boxes small_3711749_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711749_left_root small_3711749_left_fuel small_3711749_left_count small_3711749_left_encoded small_3711749_left_checked

theorem cover_3711749 : CoveredBy scale carrier boxes root_3711749 := by
  apply coveredBy_split_literal root_3711749 small_3711749_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711755 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3711749_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711755
#print axioms cover_3711749

def root_3711748 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711748_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711748_right_fuel : Nat := 19
def small_3711748_right_count : Nat := 79
def small_3711748_right_encoded : String := "1151E8FF08A91303120700F8000000050000000112073CF80000000108A912FD12073D06050000F60000000500000006000000031207010600000003050000F6135D810105000104135D450500000002050000FE00000005135D44FF0000000500000004135D8105050000FE135D80FF000000040CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F8000000050F87510300000001078000F60000000500000006135D44FF0CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F8000000050F8751030000000100000006000000040000000200000000135D4501000000000500010400000006135D8105050000FE135D80FF000000040CFD9C030F34D0F8000000050000000100000006135D44FF00000006000000040000000200000004"
theorem small_3711748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711748_right_root small_3711748_right_fuel small_3711748_right_count small_3711748_right_encoded = true := by
  decide +kernel
theorem small_3711748_right_covered : CoveredBy scale carrier boxes small_3711748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711748_right_root small_3711748_right_fuel small_3711748_right_count small_3711748_right_encoded small_3711748_right_checked

theorem cover_3711748 : CoveredBy scale carrier boxes root_3711748 := by
  apply coveredBy_split_literal root_3711748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711749 small_3711748_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711749
  · exact small_3711748_right_covered
#print axioms cover_3711748

def root_3711742 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711742_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711742_left_fuel : Nat := 1
def small_3711742_left_count : Nat := 1
def small_3711742_left_encoded : String := "00000003"
theorem small_3711742_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711742_left_root small_3711742_left_fuel small_3711742_left_count small_3711742_left_encoded = true := by
  decide +kernel
theorem small_3711742_left_covered : CoveredBy scale carrier boxes small_3711742_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711742_left_root small_3711742_left_fuel small_3711742_left_count small_3711742_left_encoded small_3711742_left_checked

theorem cover_3711742 : CoveredBy scale carrier boxes root_3711742 := by
  apply coveredBy_split_literal root_3711742 small_3711742_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711748 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3711742_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711748
#print axioms cover_3711742

def root_3711712 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711712_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711712_left_fuel : Nat := 6
def small_3711712_left_count : Nat := 13
def small_3711712_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A913030000000512073CF800000001000000051151E8FF000000050000000400000003"
theorem small_3711712_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711712_left_root small_3711712_left_fuel small_3711712_left_count small_3711712_left_encoded = true := by
  decide +kernel
theorem small_3711712_left_covered : CoveredBy scale carrier boxes small_3711712_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711712_left_root small_3711712_left_fuel small_3711712_left_count small_3711712_left_encoded small_3711712_left_checked

theorem cover_3711712 : CoveredBy scale carrier boxes root_3711712 := by
  apply coveredBy_split_literal root_3711712 small_3711712_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711742 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3711712_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711742
#print axioms cover_3711712

def root_3711706 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711706_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711706_left_fuel : Nat := 1
def small_3711706_left_count : Nat := 1
def small_3711706_left_encoded : String := "00000002"
theorem small_3711706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711706_left_root small_3711706_left_fuel small_3711706_left_count small_3711706_left_encoded = true := by
  decide +kernel
theorem small_3711706_left_covered : CoveredBy scale carrier boxes small_3711706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711706_left_root small_3711706_left_fuel small_3711706_left_count small_3711706_left_encoded small_3711706_left_checked

theorem cover_3711706 : CoveredBy scale carrier boxes root_3711706 := by
  apply coveredBy_split_literal root_3711706 small_3711706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711712 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3711706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711712
#print axioms cover_3711706

def root_3711705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3711705 : CoveredBy scale carrier boxes root_3711705 := by
  apply coveredBy_split_literal root_3711705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1405.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1405.covered
#print axioms cover_3711705

def root_3711700 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711700_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711700_right_fuel : Nat := 1
def small_3711700_right_count : Nat := 1
def small_3711700_right_encoded : String := "00000001"
theorem small_3711700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711700_right_root small_3711700_right_fuel small_3711700_right_count small_3711700_right_encoded = true := by
  decide +kernel
theorem small_3711700_right_covered : CoveredBy scale carrier boxes small_3711700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711700_right_root small_3711700_right_fuel small_3711700_right_count small_3711700_right_encoded small_3711700_right_checked

theorem cover_3711700 : CoveredBy scale carrier boxes root_3711700 := by
  apply coveredBy_split_literal root_3711700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3711705 small_3711700_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3711705
  · exact small_3711700_right_covered
#print axioms cover_3711700

def root_3725612 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725612_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725612_right_fuel : Nat := 20
def small_3725612_right_count : Nat := 171
def small_3725612_right_encoded : String := "128A7D05022A457D13E20106067ECE7F12EA94FE0000000408C000F60000000711FBE9010000000008C000F811FC2503000000050000000111FBE903000000010000000712EA58FE08C000F60000000711FBE9010000000008C000F811FC250308C0010411FBE90500000002033F67BD0000000713BBF506000000030569AC3F000000071340D4FE0000000700000004000000070000000111FBE9030000000100000007000000040000000313E1C50600000003067ECE7F12EA94FE0000000408C000F611FC2501000000070000000011FBE9010000000008C000F811FC250308C0010411FBE905000000020115233D13F895060793F0BF00000005128220FE0000000900000004000000030000000911FC25050000000700000002000000010000000912EA58FE08C000F611FC250108C000F811FC250308C0010411FBE905000000020115233D0000000713F8590600000003000000070000000700000001000000070000000011FBE9010000000008C000F811FC250308C0010411FBE905000000020115233D13F895060569AC3F134110FE00000004082000F60000000712465D0100000000096000F811AABD030000000900000001000000091340D4FE082000F60000000712465D0100000000096000F80000000A11AA81030000000100000007000000040000000313F85906000000030569AC3F134110FE00000004082000F612469901096000F8000000080000000900000000000000091340D4FE082000F612469901096000F80000000811AA810300000001000000070000000012465D0100000000096000F800000008000000090000000411FC25050115233D0000000700000008000000020000000111FBE9030000000108C0010411FBE905000000020115233D13F895060569AC3F00000007000000070000000300000009000000070000000400000002"
theorem small_3725612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725612_right_root small_3725612_right_fuel small_3725612_right_count small_3725612_right_encoded = true := by
  decide +kernel
theorem small_3725612_right_covered : CoveredBy scale carrier boxes small_3725612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725612_right_root small_3725612_right_fuel small_3725612_right_count small_3725612_right_encoded small_3725612_right_checked

theorem cover_3725612 : CoveredBy scale carrier boxes root_3725612 := by
  apply coveredBy_split_literal root_3725612 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1407.root small_3725612_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1407.covered
  · exact small_3725612_right_covered
#print axioms cover_3725612

def root_3725607 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725607_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725607_right_fuel : Nat := 1
def small_3725607_right_count : Nat := 1
def small_3725607_right_encoded : String := "00000001"
theorem small_3725607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725607_right_root small_3725607_right_fuel small_3725607_right_count small_3725607_right_encoded = true := by
  decide +kernel
theorem small_3725607_right_covered : CoveredBy scale carrier boxes small_3725607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725607_right_root small_3725607_right_fuel small_3725607_right_count small_3725607_right_encoded small_3725607_right_checked

theorem cover_3725607 : CoveredBy scale carrier boxes root_3725607 := by
  apply coveredBy_split_literal root_3725607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725612 small_3725607_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725612
  · exact small_3725607_right_covered
#print axioms cover_3725607

def root_3725606 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725606_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725606_right_fuel : Nat := 17
def small_3725606_right_count : Nat := 129
def small_3725606_right_encoded : String := "128A41030000000107800104128A410500000002022A457D13E20106067ECE7F12EA94FE0000000408C000F611FC2501064000F812FFAD0306400104000000080000000700000001000000070000000011FBE901000000000000000912EA58FE08C000F611FC2501064000F812FFAD0306400104000000080000000700000001000000070000000011FBE90100000000064000F812FFAD030640010412FF7105000000020000000812FFAD05033F67BD0000000713BBF506000000030569AC3F0000000700000007000000020000000112FF71030000000100000008000000040000000313E1C50600000003067ECE7F12EA94FE0000000408C000F611FC250100000009000000000000000912EA58FE08C000F611FC2501064000F812FFAD030640010412FF7105000000020115233D13F895060569AC3F00000007000000080000000313F85906000000030569AC3F000000090000000512FFAD0500000007000000020000000112FF7103000000010640010400000009000000070000000011FBE90100000000064000F812FFAD03064001040000000900000009000000010000000900000004128A7D05022A457D13E20106067ECE7F00000007000000070000000313E1C50600000003067ECE7F0000000712EA58FE08C000F60000000711FBE90100000000064000F812FFAD030000000900000001000000070000000400000002"
theorem small_3725606_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725606_right_root small_3725606_right_fuel small_3725606_right_count small_3725606_right_encoded = true := by
  decide +kernel
theorem small_3725606_right_covered : CoveredBy scale carrier boxes small_3725606_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725606_right_root small_3725606_right_fuel small_3725606_right_count small_3725606_right_encoded small_3725606_right_checked

theorem cover_3725606 : CoveredBy scale carrier boxes root_3725606 := by
  apply coveredBy_split_literal root_3725606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725607 small_3725606_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725607
  · exact small_3725606_right_covered
#print axioms cover_3725606

def root_3725601 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725601_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725601_right_fuel : Nat := 1
def small_3725601_right_count : Nat := 1
def small_3725601_right_encoded : String := "00000000"
theorem small_3725601_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725601_right_root small_3725601_right_fuel small_3725601_right_count small_3725601_right_encoded = true := by
  decide +kernel
theorem small_3725601_right_covered : CoveredBy scale carrier boxes small_3725601_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725601_right_root small_3725601_right_fuel small_3725601_right_count small_3725601_right_encoded small_3725601_right_checked

theorem cover_3725601 : CoveredBy scale carrier boxes root_3725601 := by
  apply coveredBy_split_literal root_3725601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725606 small_3725601_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725606
  · exact small_3725601_right_covered
#print axioms cover_3725601

def root_3725600 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725600_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725600_right_fuel : Nat := 25
def small_3725600_right_count : Nat := 273
def small_3725600_right_encoded : String := "128A410100000000078000F8128A7D0307800104128A410500000002022A457D13E20106067ECE7F0000000612EA58FE064000F612FFAD0108C000F80000000611FBE90300000001000000060000000000000006000000040000000313E1C50600000003067ECE7F12EA94FE00000004064000F612FFAD0100000009000000000000000612EA58FE064000F612FFAD0108C000F811FC25030640010412FF7105000000020115233D0000000613F85906000000030569AC3F000000060000000512FFAD050115233D13F895060569AC3F000000061340D4FE06E000F612C82101096000F800000006000000090000000000000006000000040000000313F85906000000030569AC3F000000091340D4FE0000000900000004000000020000000111FBE903000000010640010400000009000000090000000012FF71010000000008C000F811FC2503064001040000000600000009000000010000000900000004128A7D05022A457D13E20106067ECE7F12EA94FE00000004064000F612FFAD0108C000F811FC250308C001040000000611FC2505033F67BD0000000500000009000000020000000111FBE9030000000100000009000000000000000612EA58FE064000F612FFAD0108C000F811FC250308C0010411FBE90500000002033F67BD0000000613BBF506000000030569AC3F000000061340D4FE06E000F612C82101096000F80000000A11AA81030000000108200104000000060000000700000000000000060000000411FC2505033F67BD0000000713BBF506000000030569AC3F000000070000000A000000020000000111FBE9030000000108C0010411FBE90500000002033F67BD0000000600000009000000070000000012FF71010000000008C000F811FC250308C001040000000611FC2505033F67BD0000000600000009000000020000000111FBE9030000000108C001040000000900000009000000040000000313E1C50600000003067ECE7F12EA94FE000000040000000912EA58FE064000F612FFAD0108C000F811FC250308C0010411FBE905000000020115233D13F895060569AC3F000000091340D4FE06E000F612C82101096000F80000000A00000009000000000000000900000004000000030000000911FC25050115233D13F895060569AC3F00000008000000080000000300000008000000020000000111FBE90300000001000000090000000012FF71010000000008C000F811FC250308C0010400000009000000090000000100000009000000040000000200000001128A41030000000107800104128A410500000002022A457D13E20106067ECE7F0000000612EA58FE064000F612FFAD01064000F800000006000000090000000000000006000000040000000300000009128A7D05022A457D13E20106067ECE7F0000000912EA58FE064000F612FFAD01064000F812FFAD0308C0010400000009000000070000000100000009000000000000000900000004000000030000000900000002"
theorem small_3725600_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725600_right_root small_3725600_right_fuel small_3725600_right_count small_3725600_right_encoded = true := by
  decide +kernel
theorem small_3725600_right_covered : CoveredBy scale carrier boxes small_3725600_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725600_right_root small_3725600_right_fuel small_3725600_right_count small_3725600_right_encoded small_3725600_right_checked

theorem cover_3725600 : CoveredBy scale carrier boxes root_3725600 := by
  apply coveredBy_split_literal root_3725600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725601 small_3725600_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725601
  · exact small_3725600_right_covered
#print axioms cover_3725600

def root_3725594 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725594_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725594_left_fuel : Nat := 1
def small_3725594_left_count : Nat := 1
def small_3725594_left_encoded : String := "00000004"
theorem small_3725594_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725594_left_root small_3725594_left_fuel small_3725594_left_count small_3725594_left_encoded = true := by
  decide +kernel
theorem small_3725594_left_covered : CoveredBy scale carrier boxes small_3725594_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725594_left_root small_3725594_left_fuel small_3725594_left_count small_3725594_left_encoded small_3725594_left_checked

theorem cover_3725594 : CoveredBy scale carrier boxes root_3725594 := by
  apply coveredBy_split_literal root_3725594 small_3725594_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725600 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3725594_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725600
#print axioms cover_3725594

def root_3729616 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3729616_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3729616_right_fuel : Nat := 24
def small_3729616_right_count : Nat := 423
def small_3729616_right_encoded : String := "128A410100000000078000F8128A7D0307800104128A410500000002022A457D13E20106022A457F13E200FE00000004064000F612FFAD0108C000F811FC25030640010412FF710500000002033F67BD0000000613BBF50600000003033F67BF0000000613BBF4FE000000060000000412FFAD05033F67BD13BC3106033F67BF000000060000000A0000000313BBF50600000003033F67BF13BC30FE0000000406E000F612C82101096000F80000000611AA8103000000010000000600000000000000060000000A000000020000000111FBE903000000010640010412FF710500000002033F67BD0000000613BBF50600000003033F67BF000000060000000512FFAD05033F67BD13BC3106033F67BF0000000613BBF4FE06E000F612C82101082000F800000006000000080000000000000006000000040000000313BBF50600000003033F67BF13BC30FE0000000406E000F612C82101082000F80000000612465D030000000100000009000000000000000600000005000000020000000012FF71010000000008C000F80000000611FBE90300000001064001040000000612FFAD05000000060000000213E1C4FE064000F612FFAD0108C000F811FC25030640010412FF710500000002033F67BD13BC31060000000A00000003000000050000000A0000000111FBE90300000001000000050000000012FF71010000000000000005000000040000000313E1C50600000003022A457F13E200FE00000004064000F612FFAD0108C000F811FC25030640010412FF7105000000020115233D13F89506033F67BF13BC30FE0000000406E000F612C82101096000F80000000600000005000000000000000500000005000000030000000512FFAD050115233D13F89506033F67BF13BC30FE0000000406E000F612C82101096000F80000000A11AA810300000001000000050000000012C7E5010000000000000005000000050000000300000005000000020000000111FBE90300000001000000050000000012FF7101000000000000000500000005128A7D05022A457D13E20106022A457F13E200FE00000004064000F612FFAD0108C000F811FC250308C0010411FBE90500000002033F67BD0000000A0000000A0000000A0000000111FBE9030000000108C0010411FBE90500000002033F67BD13BC3106033F67BF0000000713BBF4FE06E000F6000000070000000A000000040000000313BBF50600000003033F67BF13BC30FE0000000406E000F60000000712C7E50100000000000000090000000511FC250500000007000000020000000012FF71010000000008C000F811FC250308C0010411FBE90500000002033F67BD0000000A0000000A0000000A0000000111FBE9030000000108C0010411FBE90500000002033F67BD13BC3106033F67BF000000060000000A0000000313BBF50600000003033F67BF000000090000000511FC2505033F67BD0000000A0000000A0000000213E1C4FE064000F612FFAD0108C000F80000000A11FBE9030000000108C001040000000A0000000A0000000012FF71010000000008C000F80000000A11FBE9030000000100000005000000040000000313E1C50600000003022A457F13E200FE00000004064000F612FFAD0108C000F811FC250308C0010411FBE905000000020115233D0000000A000000050000000A0000000111FBE9030000000108C0010411FBE905000000020000000511FC25050115233D0000000A00000005000000020000000012FF71010000000008C000F811FC250308C0010411FBE90500000002000000050000000A0000000111FBE9030000000100000005000000050000000200000001128A41030000000107800104128A410500000002022A457D13E20106022A457F13E200FE00000004064000F612FFAD01064000F812FFAD030640010412FF710500000002033F67BD000000060000000512FFAD05033F67BD13BC3106033F67BF00000006000000050000000300000005000000020000000112FF710300000001064001040000000812FFAD0500000009000000020000000012FF710100000000064000F812FFAD03064001040000000612FFAD0500000009000000020000000100000009000000050000000300000005128A7D05022A457D13E20106022A457F13E200FE00000004064000F612FFAD01064000F812FFAD0308C0010411FBE90500000002033F67BD0000000700000005000000070000000112FF710300000001000000070000000012FF710100000000064000F812FFAD0308C001040000000911FC25050000000900000002000000010000000900000005000000030000000500000002"
theorem small_3729616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3729616_right_root small_3729616_right_fuel small_3729616_right_count small_3729616_right_encoded = true := by
  decide +kernel
theorem small_3729616_right_covered : CoveredBy scale carrier boxes small_3729616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3729616_right_root small_3729616_right_fuel small_3729616_right_count small_3729616_right_encoded small_3729616_right_checked

theorem cover_3729616 : CoveredBy scale carrier boxes root_3729616 := by
  apply coveredBy_split_literal root_3729616 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1408.root small_3729616_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1408.covered
  · exact small_3729616_right_covered
#print axioms cover_3729616

def root_3729611 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3729611_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3729611_right_fuel : Nat := 1
def small_3729611_right_count : Nat := 1
def small_3729611_right_encoded : String := "00000004"
theorem small_3729611_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3729611_right_root small_3729611_right_fuel small_3729611_right_count small_3729611_right_encoded = true := by
  decide +kernel
theorem small_3729611_right_covered : CoveredBy scale carrier boxes small_3729611_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3729611_right_root small_3729611_right_fuel small_3729611_right_count small_3729611_right_encoded small_3729611_right_checked

theorem cover_3729611 : CoveredBy scale carrier boxes root_3729611 := by
  apply coveredBy_split_literal root_3729611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3729616 small_3729611_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3729616
  · exact small_3729611_right_covered
#print axioms cover_3729611

def root_3725593 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3725593 : CoveredBy scale carrier boxes root_3725593 := by
  apply coveredBy_split_literal root_3725593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3729611 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3729611
#print axioms cover_3725593

def root_3725587 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725587_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725587_left_fuel : Nat := 1
def small_3725587_left_count : Nat := 1
def small_3725587_left_encoded : String := "00000003"
theorem small_3725587_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725587_left_root small_3725587_left_fuel small_3725587_left_count small_3725587_left_encoded = true := by
  decide +kernel
theorem small_3725587_left_covered : CoveredBy scale carrier boxes small_3725587_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725587_left_root small_3725587_left_fuel small_3725587_left_count small_3725587_left_encoded small_3725587_left_checked

theorem cover_3725587 : CoveredBy scale carrier boxes root_3725587 := by
  apply coveredBy_split_literal root_3725587 small_3725587_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725593 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3725587_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725593
#print axioms cover_3725587

def root_3724629 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3724629_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3724629_left_fuel : Nat := 23
def small_3724629_left_count : Nat := 461
def small_3724629_left_encoded : String := "1386AD06045489FF1386ACFE00000004078000F6128A7D01078000F8128A7D0307800104128A410500000002067ECE7D0000000512EA590600000003067ECE7F0000000512EA58FE08C000F611FC250100000005000000000000000600000004128A7D05067ECE7D0000000512EA590600000003067ECE7F0000000512EA58FE00000007000000040000000200000001128A41030000000107800104128A410500000002067ECE7D0000000612EA590600000003067ECE7F0000000600000008128A7D05067ECE7D0000000712EA590600000003000000070000000200000000128A410100000000078000F8128A7D030780010400000006128A7D05067ECE7D0000000612EA590600000003067ECE7F0000000612EA58FE064000F612FFAD0108C000F80000000611FBE90300000001000000060000000000000006000000040000000200000001128A4103000000010780010400000006128A7D05067ECE7D0000000612EA590600000003067ECE7F0000000612EA58FE064000F600000007000000060000000400000002138670FE078000F6128A7D01078000F8128A7D0307800104128A410500000002067ECE7D12EA9506022A457F13E200FE0000000408C000F60000000500000006000000080000000312EA590600000003022A457F13E200FE0000000408C000F611FC250108C000F811FC2503064001040000000812FFAD05000000070000000200000001000000080000000011FBE9010000000008C000F811FC2503064001040000000612FFAD050569AC3D000000061340D50600000003033F67BF000000060000000A000000020000000111FBE90300000001064001040000000612FFAD050569AC3D000000061340D50600000003000000070000000213E1C4FE08C000F611FC250108C000F811FC250306400104000000080000000900000001000000080000000011FBE9010000000008C000F811FC25030640010412FF710500000002000000080000000A000000010000000800000004128A7D05067ECE7D12EA9506022A457F0000000713E1C4FE00000007000000040000000312EA590600000003022A457F13E200FE0000000408C000F60000000711FBE901000000000000000713E1C4FE08C000F60000000711FBE9010000000008C000F80000000A11FBE9030000000100000007000000040000000200000001128A41030000000107800104128A410500000002067ECE7D0000000812EA590600000003022A457F0000000800000008128A7D05067ECE7D0000000712EA590600000003000000070000000200000000128A410100000000078000F8128A7D0307800104128A410500000002067ECE7D0000000612EA590600000003022A457F0000000613E1C4FE064000F612FFAD0108C000F811FC25030640010412FF710500000002000000060000000A0000000111FBE90300000001064001040000000812FFAD050569AC3D000000061340D506000000030115233F0000000600000005000000020000000012FF71010000000008C000F80000000611FBE903000000010000000600000004128A7D05067ECE7D12EA9506022A457F0000000613E1C4FE064000F612FFAD0108C000F80000000A11FBE90300000001000000070000000012FF71010000000008C000F80000000611FBE9030000000100000006000000040000000312EA590600000003022A457F13E200FE00000004064000F612FFAD0108C000F811FC250308C0010411FBE905000000020569AC3D000000060000000A0000000A0000000111FBE9030000000108C0010411FBE905000000020569AC3D000000061340D50600000003033F67BF0000000600000007000000070000000012FF71010000000008C000F811FC250308C00104000000060000000A0000000111FBE9030000000108C001040000000611FC25050569AC3D000000060000000A0000000213E1C4FE064000F612FFAD0108C000F80000000A11FBE9030000000108C001040000000A000000070000000012FF71010000000008C000F80000000A11FBE903000000010000000A000000040000000200000001128A41030000000107800104128A410500000002067ECE7D0000000812EA590600000003022A457F13E200FE00000004064000F6000000080000000613E1C4FE064000F6000000080000000800000004128A7D05067ECE7D12EA9506022A457F13E200FE00000004064000F6000000070000000613E1C4FE064000F60000000712FF710100000000064000F80000000600000007000000040000000312EA590600000003022A457F13E200FE00000004064000F60000000712FF710100000000064000F812FFAD0308C0010400000006000000070000000112FF71030000000108C00104000000090000000713E1C4FE064000F612FFAD01000000070000000012FF710100000000064000F812FFAD0308C0010411FBE905000000020569AC3D000000060000000511FC250500000007000000020000000112FF71030000000108C00104000000080000000500000004000000020000000400000003"
theorem small_3724629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3724629_left_root small_3724629_left_fuel small_3724629_left_count small_3724629_left_encoded = true := by
  decide +kernel
theorem small_3724629_left_covered : CoveredBy scale carrier boxes small_3724629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3724629_left_root small_3724629_left_fuel small_3724629_left_count small_3724629_left_encoded small_3724629_left_checked

theorem cover_3724629 : CoveredBy scale carrier boxes root_3724629 := by
  apply coveredBy_split_literal root_3724629 small_3724629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3725587 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3724629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3725587
#print axioms cover_3724629

def root_3724624 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3724624_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3724624_right_fuel : Nat := 1
def small_3724624_right_count : Nat := 1
def small_3724624_right_encoded : String := "00000002"
theorem small_3724624_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3724624_right_root small_3724624_right_fuel small_3724624_right_count small_3724624_right_encoded = true := by
  decide +kernel
theorem small_3724624_right_covered : CoveredBy scale carrier boxes small_3724624_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3724624_right_root small_3724624_right_fuel small_3724624_right_count small_3724624_right_encoded small_3724624_right_checked

theorem cover_3724624 : CoveredBy scale carrier boxes root_3724624 := by
  apply coveredBy_split_literal root_3724624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3724629 small_3724624_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3724629
  · exact small_3724624_right_covered
#print axioms cover_3724624

def root_3722892 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3722892 : CoveredBy scale carrier boxes root_3722892 := by
  apply coveredBy_split_literal root_3722892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1406.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3724624 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1406.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3724624
#print axioms cover_3722892

def root_3722887 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722887_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3722887_right_fuel : Nat := 1
def small_3722887_right_count : Nat := 1
def small_3722887_right_encoded : String := "00000001"
theorem small_3722887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3722887_right_root small_3722887_right_fuel small_3722887_right_count small_3722887_right_encoded = true := by
  decide +kernel
theorem small_3722887_right_covered : CoveredBy scale carrier boxes small_3722887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3722887_right_root small_3722887_right_fuel small_3722887_right_count small_3722887_right_encoded small_3722887_right_checked

theorem cover_3722887 : CoveredBy scale carrier boxes root_3722887 := by
  apply coveredBy_split_literal root_3722887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.root_3722892 small_3722887_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092.cover_3722892
  · exact small_3722887_right_covered
#print axioms cover_3722887

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0092
