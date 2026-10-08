import TaoBundleAssembly0170
import TaoBundleAssembly0281
import TaoBundleAssembly0320
import TaoBundleAssembly0339
import TaoBundleAssembly0343
import TaoBundleAssembly0349
import TaoBundleAssembly0355
import TaoBundleAssembly0356
import TaoBundleAssembly0357
import TaoBundleChunkBatch0471
import TaoBundleChunkBatch0472
import TaoBundleChunkBatch0475
import TaoBundleChunkBatch0476
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358
def root_5041377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041377_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041377_left_fuel : Nat := 17
def small_5041377_left_count : Nat := 113
def small_5041377_left_encoded : String := "120701060000000308A91309120700FE04548A01138670F604548A0313867102000000010CFD9C050F34D1040000000204548A07000000071386AD0604548A090000000700000007000000030F350D0404548A07000000081386AD0604548A09138670FE0C9A8704000000080F878D05022A4581000000070000000700000002000000040000000800000003000000021386AD020CFD9C050F34D10400000002000000070F350D04000000080000000200000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D1040000000204548A07000000071386AD0604548A09138670FE00000007000000041386ACFE00000004067ECE810000000700000007000000030F350D0404548A07000000061386AD0604548A09000000061386ACFE000000040C9A8704000000080F878D05000000080000000200000003000000021386AD020CFD9C050F34D10400000002000000070F350D0404548A07000000081386AD0604548A0900000006000000080000000300000002000000010000000412073CFE0000000404548A01000000081386ACF60000000004548A0313867102000000010CFD9C05000000080F350D04000000080000000200000008"
theorem small_5041377_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041377_left_root small_5041377_left_fuel small_5041377_left_count small_5041377_left_encoded = true := by
  decide +kernel
theorem small_5041377_left_covered : CoveredBy scale carrier boxes small_5041377_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041377_left_root small_5041377_left_fuel small_5041377_left_count small_5041377_left_encoded small_5041377_left_checked

theorem cover_5041377 : CoveredBy scale carrier boxes root_5041377 := by
  apply coveredBy_split_literal root_5041377 small_5041377_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0357.root_5041615 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5041377_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0357.cover_5041615
#print axioms cover_5041377

def root_5041372 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041372_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041372_right_fuel : Nat := 1
def small_5041372_right_count : Nat := 1
def small_5041372_right_encoded : String := "00000002"
theorem small_5041372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041372_right_root small_5041372_right_fuel small_5041372_right_count small_5041372_right_encoded = true := by
  decide +kernel
theorem small_5041372_right_covered : CoveredBy scale carrier boxes small_5041372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041372_right_root small_5041372_right_fuel small_5041372_right_count small_5041372_right_encoded small_5041372_right_checked

theorem cover_5041372 : CoveredBy scale carrier boxes root_5041372 := by
  apply coveredBy_split_literal root_5041372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5041377 small_5041372_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5041377
  · exact small_5041372_right_covered
#print axioms cover_5041372

def root_5040960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040960_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040960_left_fuel : Nat := 19
def small_5040960_left_count : Nat := 195
def small_5040960_left_encoded : String := "120701040000000208A91307120701060000000308A91309120700FE000000070000000412073CFE0000000404548A01138670F600000008000000001386ACF60000000004548A03138671020000000104548A05000000071386AD0404548A07000000071386AD060CFD9C09000000080000000800000003000000021386AD0204548A0500000007000000080000000112073D0608A91309120700FE04548A01138670F604548A03138671020000000104548A0513867104000000020CFD9C07000000070F350D060000000A000000031386AD040CFD9C070F34D1060000000304548A0900000007000000070F350D0604548A09138670FE0C9A8706000000090F878D07022A4581000000070000000700000003000000040000000A00000003000000021386AD0204548A0513867104000000020CFD9C07000000070F350D0600000007000000031386AD040CFD9C070F34D10600000003000000070F350D0604548A09000000090000000A000000030000000200000001000000001386ACF60000000004548A03138671020000000104548A051386710400000002000000091386AD040CFD9C070F34D1060000000304548A09000000091386ACFE00000004067ECE8100000007000000070F350D0604548A09000000091386ACFE000000040C9A8706000000090F878D07000000090000000300000003000000021386AD0204548A05000000091386AD040CFD9C07000000090F350D06000000090000000300000002000000010000000412073CFE0000000404548A01138670F604548A030000000A1386AD0204548A050000000A0000000A00000001000000001386ACF60000000004548A03138671020000000104548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000A12EA94F600000000022A45830000000A00000007000000040000000A0F350D060000000A00000003000000021386AD0204548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040000000A0F350D060000000A00000003000000020000000100000003"
theorem small_5040960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040960_left_root small_5040960_left_fuel small_5040960_left_count small_5040960_left_encoded = true := by
  decide +kernel
theorem small_5040960_left_covered : CoveredBy scale carrier boxes small_5040960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040960_left_root small_5040960_left_fuel small_5040960_left_count small_5040960_left_encoded small_5040960_left_checked

theorem cover_5040960 : CoveredBy scale carrier boxes root_5040960 := by
  apply coveredBy_split_literal root_5040960 small_5040960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5041372 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5040960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5041372
#print axioms cover_5040960

def root_5040954 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040954_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040954_left_fuel : Nat := 1
def small_5040954_left_count : Nat := 1
def small_5040954_left_encoded : String := "00000001"
theorem small_5040954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040954_left_root small_5040954_left_fuel small_5040954_left_count small_5040954_left_encoded = true := by
  decide +kernel
theorem small_5040954_left_covered : CoveredBy scale carrier boxes small_5040954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040954_left_root small_5040954_left_fuel small_5040954_left_count small_5040954_left_encoded small_5040954_left_checked

theorem cover_5040954 : CoveredBy scale carrier boxes root_5040954 := by
  apply coveredBy_split_literal root_5040954 small_5040954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040960 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5040954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040960
#print axioms cover_5040954

def root_5040953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5040953 : CoveredBy scale carrier boxes root_5040953 := by
  apply coveredBy_split_literal root_5040953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1897.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1897.covered
#print axioms cover_5040953

def root_5040948 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040948_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040948_right_fuel : Nat := 1
def small_5040948_right_count : Nat := 1
def small_5040948_right_encoded : String := "00000000"
theorem small_5040948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040948_right_root small_5040948_right_fuel small_5040948_right_count small_5040948_right_encoded = true := by
  decide +kernel
theorem small_5040948_right_covered : CoveredBy scale carrier boxes small_5040948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040948_right_root small_5040948_right_fuel small_5040948_right_count small_5040948_right_encoded small_5040948_right_checked

theorem cover_5040948 : CoveredBy scale carrier boxes root_5040948 := by
  apply coveredBy_split_literal root_5040948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040953 small_5040948_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040953
  · exact small_5040948_right_covered
#print axioms cover_5040948

def root_5040947 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5040947 : CoveredBy scale carrier boxes root_5040947 := by
  apply coveredBy_split_literal root_5040947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040948 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1898.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040948
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1898.covered
#print axioms cover_5040947

def root_5040942 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040942_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040942_right_fuel : Nat := 1
def small_5040942_right_count : Nat := 1
def small_5040942_right_encoded : String := "00000004"
theorem small_5040942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040942_right_root small_5040942_right_fuel small_5040942_right_count small_5040942_right_encoded = true := by
  decide +kernel
theorem small_5040942_right_covered : CoveredBy scale carrier boxes small_5040942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040942_right_root small_5040942_right_fuel small_5040942_right_count small_5040942_right_encoded small_5040942_right_checked

theorem cover_5040942 : CoveredBy scale carrier boxes root_5040942 := by
  apply coveredBy_split_literal root_5040942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040947 small_5040942_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040947
  · exact small_5040942_right_covered
#print axioms cover_5040942

def root_5040941 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040941_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040941_right_fuel : Nat := 18
def small_5040941_right_count : Nat := 121
def small_5040941_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A91305120701040000000208A913070000000812073D060000000A0000000312073D0408A9130712070106000000030000000812073D06050000FE135D810904548A01138670F604548A0313867102000000010CFD9C05000000080F350D04000000080000000200000008000000001386ACF60000000004548A031386710200000001000000050000000500000004135D45090000000400000005000000030000000212073D0208A91305120701040000000208A913070000000812073D06050000FE135D810904548A01138670F60CFD9C030000000800000008000000001386ACF6000000000CFD9C030000000A0000000500000004135D450900000004000000050000000312073D0408A913070000000812073D06050000FE00000008000000050000000300000002000000010000000012073CF60000000008A91303120701020000000108A91305120701040000000208A913071207010600000003000000050000000512073D0408A91307120701060000000300000005000000050000000212073D0208A91305120701040000000208A913071207010600000003000000050000000512073D0408A91307120701060000000300000005000000050000000200000001"
theorem small_5040941_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040941_right_root small_5040941_right_fuel small_5040941_right_count small_5040941_right_encoded = true := by
  decide +kernel
theorem small_5040941_right_covered : CoveredBy scale carrier boxes small_5040941_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040941_right_root small_5040941_right_fuel small_5040941_right_count small_5040941_right_encoded small_5040941_right_checked

theorem cover_5040941 : CoveredBy scale carrier boxes root_5040941 := by
  apply coveredBy_split_literal root_5040941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040942 small_5040941_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040942
  · exact small_5040941_right_covered
#print axioms cover_5040941

def root_5040936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040936_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040936_right_fuel : Nat := 1
def small_5040936_right_count : Nat := 1
def small_5040936_right_encoded : String := "00000003"
theorem small_5040936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040936_right_root small_5040936_right_fuel small_5040936_right_count small_5040936_right_encoded = true := by
  decide +kernel
theorem small_5040936_right_covered : CoveredBy scale carrier boxes small_5040936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040936_right_root small_5040936_right_fuel small_5040936_right_count small_5040936_right_encoded small_5040936_right_checked

theorem cover_5040936 : CoveredBy scale carrier boxes root_5040936 := by
  apply coveredBy_split_literal root_5040936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040941 small_5040936_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040941
  · exact small_5040936_right_covered
#print axioms cover_5040936

def root_5038448 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5038448 : CoveredBy scale carrier boxes root_5038448 := by
  apply coveredBy_split_literal root_5038448 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1885.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5040936 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1885.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5040936
#print axioms cover_5038448

def root_5038443 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5038443_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5038443_right_fuel : Nat := 1
def small_5038443_right_count : Nat := 1
def small_5038443_right_encoded : String := "00000002"
theorem small_5038443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5038443_right_root small_5038443_right_fuel small_5038443_right_count small_5038443_right_encoded = true := by
  decide +kernel
theorem small_5038443_right_covered : CoveredBy scale carrier boxes small_5038443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5038443_right_root small_5038443_right_fuel small_5038443_right_count small_5038443_right_encoded small_5038443_right_checked

theorem cover_5038443 : CoveredBy scale carrier boxes root_5038443 := by
  apply coveredBy_split_literal root_5038443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5038448 small_5038443_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5038448
  · exact small_5038443_right_covered
#print axioms cover_5038443

def root_5034357 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5034357 : CoveredBy scale carrier boxes root_5034357 := by
  apply coveredBy_split_literal root_5034357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0356.root_5034358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5038443 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0356.cover_5034358
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5038443
#print axioms cover_5034357

def root_5034352 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034352_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034352_right_fuel : Nat := 1
def small_5034352_right_count : Nat := 1
def small_5034352_right_encoded : String := "00000001"
theorem small_5034352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5034352_right_root small_5034352_right_fuel small_5034352_right_count small_5034352_right_encoded = true := by
  decide +kernel
theorem small_5034352_right_covered : CoveredBy scale carrier boxes small_5034352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5034352_right_root small_5034352_right_fuel small_5034352_right_count small_5034352_right_encoded small_5034352_right_checked

theorem cover_5034352 : CoveredBy scale carrier boxes root_5034352 := by
  apply coveredBy_split_literal root_5034352 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5034357 small_5034352_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5034357
  · exact small_5034352_right_covered
#print axioms cover_5034352

def root_5032572 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5032572 : CoveredBy scale carrier boxes root_5032572 := by
  apply coveredBy_split_literal root_5032572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1882.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5034352 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1882.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5034352
#print axioms cover_5032572

def root_5032567 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032567_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032567_right_fuel : Nat := 1
def small_5032567_right_count : Nat := 1
def small_5032567_right_encoded : String := "00000000"
theorem small_5032567_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5032567_right_root small_5032567_right_fuel small_5032567_right_count small_5032567_right_encoded = true := by
  decide +kernel
theorem small_5032567_right_covered : CoveredBy scale carrier boxes small_5032567_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5032567_right_root small_5032567_right_fuel small_5032567_right_count small_5032567_right_encoded small_5032567_right_checked

theorem cover_5032567 : CoveredBy scale carrier boxes root_5032567 := by
  apply coveredBy_split_literal root_5032567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5032572 small_5032567_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5032572
  · exact small_5032567_right_covered
#print axioms cover_5032567

def root_5032566 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032566_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032566_right_fuel : Nat := 25
def small_5032566_right_count : Nat := 281
def small_5032566_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E9050000000200000005115225050A0001061151E9070000000300000005115225070A0000FE1152250908A91305120701040000000208A91307120701060000000308A91309120700FE050000F60000000600000009000000040000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309120700FE050000F6135D810105000102135D4503000000010CFD9C050F34D10400000002000000050000000500000005000000000000000500000004000000050000000500000002000000041151E90900000004000000050000000300000002115225030A0001041151E905000000020A0001061151E9070000000300000005115225070A0000FE1152250908A91303120701020000000108A91307120701060000000308A91309120700FE050000F600000006135D45010000000000000006000000040000000512073D0608A91309120700FE050000F6135D810105000104135D45050000000204548A03000000060000000500000005000000000000000500000004000000050000000312073D0208A91307120701060000000308A91309120700FE050000F6135D810105000104135D4505000000020CFD9C030F34D10200000001000000050000000500000005000000000000000500000004000000050000000500000001000000041151E909000000040000000500000003115225050A0001061151E907000000030A0000FE1152250908A91303120701020000000108A9130512070104000000020000000912073D0408A91309120700FE050000F6000000090000000500000004000000050000000212073D0208A91305000000090000000500000001000000041151E9090000000400000005115225070A0000FE1152250908A91303120701020000000108A91305120701040000000208A91307120701060000000308A91309000000060000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309000000060000000512073D0608A91309120700FE050000F6135D810104548A0313867102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070000000600000005000000020000000900000000135D450100000000000000050000000400000005000000030000000212073D0208A91305120701040000000208A91307120701060000000308A91309000000060000000512073D0608A9130900000009000000050000000312073D0408A91307120701060000000308A91309120700FE050000F6135D81010CFD9C030F34D102000000010CFD9C0500000006000000050F350D020CFD9C0500000009000000050000000100000000135D45010000000000000005000000040000000512073D0608A91309120700FE050000F600000009000000050000000400000005000000030000000200000001000000041151E9090000000408A9130312070102000000010000000500000005000000030000000200000001"
theorem small_5032566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5032566_right_root small_5032566_right_fuel small_5032566_right_count small_5032566_right_encoded = true := by
  decide +kernel
theorem small_5032566_right_covered : CoveredBy scale carrier boxes small_5032566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5032566_right_root small_5032566_right_fuel small_5032566_right_count small_5032566_right_encoded small_5032566_right_checked

theorem cover_5032566 : CoveredBy scale carrier boxes root_5032566 := by
  apply coveredBy_split_literal root_5032566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5032567 small_5032566_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5032567
  · exact small_5032566_right_covered
#print axioms cover_5032566

def root_5024934 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5024934 : CoveredBy scale carrier boxes root_5024934 := by
  apply coveredBy_split_literal root_5024934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0356.root_5024935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5032566 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0356.cover_5024935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5032566
#print axioms cover_5024934

def root_5024933 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5024933 : CoveredBy scale carrier boxes root_5024933 := by
  apply coveredBy_split_literal root_5024933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5024934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1899.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5024934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1899.covered
#print axioms cover_5024933

def root_4913429 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913429 : CoveredBy scale carrier boxes root_4913429 := by
  apply coveredBy_split_literal root_4913429 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0355.root_4913430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5024933 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0355.cover_4913430
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5024933
#print axioms cover_4913429

def root_4832825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832825 : CoveredBy scale carrier boxes root_4832825 := by
  apply coveredBy_split_literal root_4832825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4832826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_4913429 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4832826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_4913429
#print axioms cover_4832825

def root_4731071 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731071 : CoveredBy scale carrier boxes root_4731071 := by
  apply coveredBy_split_literal root_4731071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4731072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_4832825 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4731072
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_4832825
#print axioms cover_4731071

def root_4456817 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456817 : CoveredBy scale carrier boxes root_4456817 := by
  apply coveredBy_split_literal root_4456817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4456818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_4731071 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4456818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_4731071
#print axioms cover_4456817

def root_3880867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3880867 : CoveredBy scale carrier boxes root_3880867 := by
  apply coveredBy_split_literal root_3880867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_3880868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_4456817 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_3880868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_4456817
#print axioms cover_3880867

def root_2513321 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513321 : CoveredBy scale carrier boxes root_2513321 := by
  apply coveredBy_split_literal root_2513321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.root_2513322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_3880867 coord1 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0281.cover_2513322
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_3880867
#print axioms cover_2513321

def root_1 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1 : CoveredBy scale carrier boxes root_1 := by
  apply coveredBy_split_literal root_1 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_2 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_2513321 coord0 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_2
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_2513321
#print axioms cover_1

def root_5080656 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5080656 : CoveredBy scale carrier boxes root_5080656 := by
  apply coveredBy_split_literal root_5080656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1901.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1902.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1901.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1902.covered
#print axioms cover_5080656

def root_5080650 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080650_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080650_left_fuel : Nat := 1
def small_5080650_left_count : Nat := 1
def small_5080650_left_encoded : String := "00000003"
theorem small_5080650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080650_left_root small_5080650_left_fuel small_5080650_left_count small_5080650_left_encoded = true := by
  decide +kernel
theorem small_5080650_left_covered : CoveredBy scale carrier boxes small_5080650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080650_left_root small_5080650_left_fuel small_5080650_left_count small_5080650_left_encoded small_5080650_left_checked

theorem cover_5080650 : CoveredBy scale carrier boxes root_5080650 := by
  apply coveredBy_split_literal root_5080650 small_5080650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080656 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5080650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080656
#print axioms cover_5080650

def root_5085210 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5085210 : CoveredBy scale carrier boxes root_5085210 := by
  apply coveredBy_split_literal root_5085210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1903.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1904.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1903.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1904.covered
#print axioms cover_5085210

def root_5085205 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5085205_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5085205_right_fuel : Nat := 1
def small_5085205_right_count : Nat := 1
def small_5085205_right_encoded : String := "00000003"
theorem small_5085205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5085205_right_root small_5085205_right_fuel small_5085205_right_count small_5085205_right_encoded = true := by
  decide +kernel
theorem small_5085205_right_covered : CoveredBy scale carrier boxes small_5085205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5085205_right_root small_5085205_right_fuel small_5085205_right_count small_5085205_right_encoded small_5085205_right_checked

theorem cover_5085205 : CoveredBy scale carrier boxes root_5085205 := by
  apply coveredBy_split_literal root_5085205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5085210 small_5085205_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5085210
  · exact small_5085205_right_covered
#print axioms cover_5085205

def root_5080649 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5080649 : CoveredBy scale carrier boxes root_5080649 := by
  apply coveredBy_split_literal root_5080649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5085205 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5085205
#print axioms cover_5080649

def root_5080643 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080643_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080643_left_fuel : Nat := 1
def small_5080643_left_count : Nat := 1
def small_5080643_left_encoded : String := "00000002"
theorem small_5080643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080643_left_root small_5080643_left_fuel small_5080643_left_count small_5080643_left_encoded = true := by
  decide +kernel
theorem small_5080643_left_covered : CoveredBy scale carrier boxes small_5080643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080643_left_root small_5080643_left_fuel small_5080643_left_count small_5080643_left_encoded small_5080643_left_checked

theorem cover_5080643 : CoveredBy scale carrier boxes root_5080643 := by
  apply coveredBy_split_literal root_5080643 small_5080643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080649 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5080643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080649
#print axioms cover_5080643

def root_5080642 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080642_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080642_right_fuel : Nat := 17
def small_5080642_right_count : Nat := 107
def small_5080642_right_encoded : String := "0F34D0FA045489FD1386ACFC00000003045489FF00000006138670FE0C9A86F8000000060F8750F9000000080000000100000004138670FC045489FF1386ACFE000000040C9A86F8000000060F8750F9022A457713E201000AD3577B10D13CFA00000002022A457D0000000600000009000000060000000013E1C500000000000AD3577B10D13CFA00000002022A457D000000060000000A0000000600000001138670FE0C9A86F80F878CF900000001022A457713E201000AD3577B10D13CFA00000002022A457D0000000613E1C4FC022A457F0000000613E1C4FE0DE7C9F800000006000000050000000400000003000000060000000013E1C500000000000AD3577B10D13CFA00000002022A457D0000000613E1C4FC022A457F000000060000000500000003000000060F8750F9022A457713E201000AD3577B10D13CFA00000002022A457D0000000800000009000000080000000013E1C500000000000AD3577B10D13CFA00000002022A457D13E200FC00000003022A457F00000006000000050000000510D100FA022A457D00000006000000050000000200000001000000040000000300000002"
theorem small_5080642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080642_right_root small_5080642_right_fuel small_5080642_right_count small_5080642_right_encoded = true := by
  decide +kernel
theorem small_5080642_right_covered : CoveredBy scale carrier boxes small_5080642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080642_right_root small_5080642_right_fuel small_5080642_right_count small_5080642_right_encoded small_5080642_right_checked

theorem cover_5080642 : CoveredBy scale carrier boxes root_5080642 := by
  apply coveredBy_split_literal root_5080642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080643 small_5080642_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080643
  · exact small_5080642_right_covered
#print axioms cover_5080642

def root_5080636 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080636_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080636_left_fuel : Nat := 1
def small_5080636_left_count : Nat := 1
def small_5080636_left_encoded : String := "00000001"
theorem small_5080636_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080636_left_root small_5080636_left_fuel small_5080636_left_count small_5080636_left_encoded = true := by
  decide +kernel
theorem small_5080636_left_covered : CoveredBy scale carrier boxes small_5080636_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080636_left_root small_5080636_left_fuel small_5080636_left_count small_5080636_left_encoded small_5080636_left_checked

theorem cover_5080636 : CoveredBy scale carrier boxes root_5080636 := by
  apply coveredBy_split_literal root_5080636 small_5080636_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080642 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5080636_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080642
#print axioms cover_5080636

def root_5080635 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080635_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080635_right_fuel : Nat := 19
def small_5080635_right_count : Nat := 123
def small_5080635_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF00000006138670FE0C9A86FA000000060F8750FB022A457713E201000AD3577910D13CF800000001067ECE7D0000000612EA58FC022A457F000000060000000A00000003000000060000000013E1C500000000000AD3577910D13CF800000001067ECE7D0000000612EA58FC0000000600000003000000060000000200000004138670FC045489FF1386ACFE000000040C9A86FA000000060F8750FB0000000700000002138670FE0C9A86FA0F878CFB00000002022A457713E201000AD3577910D13CF800000001022A457D0000000613E1C4FC022A457F0000000613E1C4FE0DE7C9FA00000006000000050000000400000003000000060000000013E1C500000000000AD3577910D13CF800000001022A457D0000000613E1C4FC022A457F000000060000000500000003000000060F8750FB022A457713E201000AD3577910D13CF800000001022A457D13E200FC00000003022A457F000000060000000A00000007000000070000000013E1C500000000000AD3577910D13CF800000001022A457D13E200FC00000003022A457F00000006000000050000000510D100F8022A457D0000000600000005000000010000000200000004000000030F34D0FA000000060000000200000001"
theorem small_5080635_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080635_right_root small_5080635_right_fuel small_5080635_right_count small_5080635_right_encoded = true := by
  decide +kernel
theorem small_5080635_right_covered : CoveredBy scale carrier boxes small_5080635_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080635_right_root small_5080635_right_fuel small_5080635_right_count small_5080635_right_encoded small_5080635_right_checked

theorem cover_5080635 : CoveredBy scale carrier boxes root_5080635 := by
  apply coveredBy_split_literal root_5080635 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080636 small_5080635_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080636
  · exact small_5080635_right_covered
#print axioms cover_5080635

def root_5080629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080629_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5080629_left_fuel : Nat := 1
def small_5080629_left_count : Nat := 1
def small_5080629_left_encoded : String := "00000000"
theorem small_5080629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5080629_left_root small_5080629_left_fuel small_5080629_left_count small_5080629_left_encoded = true := by
  decide +kernel
theorem small_5080629_left_covered : CoveredBy scale carrier boxes small_5080629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5080629_left_root small_5080629_left_fuel small_5080629_left_count small_5080629_left_encoded small_5080629_left_checked

theorem cover_5080629 : CoveredBy scale carrier boxes root_5080629 := by
  apply coveredBy_split_literal root_5080629 small_5080629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080635 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5080629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080635
#print axioms cover_5080629

def root_5079303 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5079303 : CoveredBy scale carrier boxes root_5079303 := by
  apply coveredBy_split_literal root_5079303 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1900.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5080629 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1900.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5080629
#print axioms cover_5079303

def root_5079298 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5079298_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5079298_right_fuel : Nat := 1
def small_5079298_right_count : Nat := 1
def small_5079298_right_encoded : String := "00000004"
theorem small_5079298_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5079298_right_root small_5079298_right_fuel small_5079298_right_count small_5079298_right_encoded = true := by
  decide +kernel
theorem small_5079298_right_covered : CoveredBy scale carrier boxes small_5079298_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5079298_right_root small_5079298_right_fuel small_5079298_right_count small_5079298_right_encoded small_5079298_right_checked

theorem cover_5079298 : CoveredBy scale carrier boxes root_5079298 := by
  apply coveredBy_split_literal root_5079298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5079303 small_5079298_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5079303
  · exact small_5079298_right_covered
#print axioms cover_5079298

def root_5078520 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078520_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078520_left_fuel : Nat := 29
def small_5078520_left_count : Nat := 361
def small_5078520_left_encoded : String := "12073CFE00000004045489F71386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F80F878CF900000001000000060F8750F900000005000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA00000006000000070F8750F90C9A86FA0F878CFB00000002067ECE770000000512EA590000000000000000060F8750FB00000005000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF900000001000000070F8750F90C9A86FA0F878CFB000000020C9A86FE000000070F8750FF000000050000000400000007000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA0F878CFB0000000200000007000000070F8750F90C9A86FA0F878CFB00000002067ECE7712EA9500000000070000000012EA590000000000022A457D13E200FC000000030AD3577F0000000510D100FE000000060000000413E1C4FC0AD3577F0000000710D100FE0000000700000004000000030F8750FB00000007000000020000000100000004000000030F34D0FA045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD000000060000000700000006000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F8000000060F8750F90C9A86FA000000060F8750FB0000000500000002000000010F34D0FE0C9A86F80F878CF900000001000000060F8750F90C9A86FA0F878CFB00000002000000060F8750FB022A457713E20100067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0000000700000004000000030000000013E1C50000000000067ECE7D0000000612EA58FC0AD3577F0000000610D100FE000000060000000400000003000000020000000100000004138670FC0CFD9BFF0F350CFE000000040C9A86F80F878CF9000000010C9A86FA00000006000000070F8750F90C9A86FA0F878CFB000000020C9A86FE00000006000000060F8750FB0C9A86FE0F878CFF00000004022A45770000000713E1C50000000000022A457D00000006000000070F8750FF000000070000000400000002000000010F34D0FE0C9A86F80F878CF9000000010C9A86FA0F878CFB00000002000000060F8750FB022A45770000000713E1C50000000000022A457D0000000600000007000000020F8750F90C9A86FA0F878CFB00000002022A457713E20100022A457D0000000613E1C4FC0AD3577F0000000610D100FE0000000900000004000000030000000013E1C50000000000022A457D0000000613E1C4FC0AD3577F0000000610D100FE0000000A00000004000000030F8750FB022A457713E20100022A457D13E200FC000000030AD3577F0000000710D100FE000000070000000413E1C4FC0AD3577F0000000710D100FE0000000700000004000000030000000013E1C50000000000022A457D13E200FC000000030AD3577F10D13CFE000000040B4D43F8000000060000000A10D100FE0B4D43F810804CF9000000010B4D43FA0000000600000007108010F90B4D43FA10804CFB0000000200000006108010FB011523370000000713F8590000000000033F67BD000000070000000700000002000000010000000413E1C4FC0AD3577F10D13CFE000000040000000710D100FE0B4D43F810804CF90000000100000007108010F90B4D43FA0000000900000007000000010000000400000003000000020000000100000004000000030F34D0FA045489FD00000006138670FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F34D0F80CFD9BFB0F350CFA00000002045489FD00000006138670FC0CFD9BFF000000060F34D0FE0000000600000004000000030000000600000001"
theorem small_5078520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5078520_left_root small_5078520_left_fuel small_5078520_left_count small_5078520_left_encoded = true := by
  decide +kernel
theorem small_5078520_left_covered : CoveredBy scale carrier boxes small_5078520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5078520_left_root small_5078520_left_fuel small_5078520_left_count small_5078520_left_encoded small_5078520_left_checked

theorem cover_5078520 : CoveredBy scale carrier boxes root_5078520 := by
  apply coveredBy_split_literal root_5078520 small_5078520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5079298 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5078520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5079298
#print axioms cover_5078520

def root_5078515 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078515_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5078515_right_fuel : Nat := 1
def small_5078515_right_count : Nat := 1
def small_5078515_right_encoded : String := "00000003"
theorem small_5078515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5078515_right_root small_5078515_right_fuel small_5078515_right_count small_5078515_right_encoded = true := by
  decide +kernel
theorem small_5078515_right_covered : CoveredBy scale carrier boxes small_5078515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5078515_right_root small_5078515_right_fuel small_5078515_right_count small_5078515_right_encoded small_5078515_right_checked

theorem cover_5078515 : CoveredBy scale carrier boxes root_5078515 := by
  apply coveredBy_split_literal root_5078515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.root_5078520 small_5078515_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358.cover_5078520
  · exact small_5078515_right_covered
#print axioms cover_5078515

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0358
