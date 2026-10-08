import TaoBundleAssembly0676
import TaoBundleAssembly0684
import TaoBundleAssembly0687
import TaoBundleAssembly0688
import TaoBundleAssembly0689
import TaoBundleChunkBatch0961
import TaoBundleChunkBatch0964
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690
def root_10250894 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250894_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250894_right_fuel : Nat := 26
def small_10250894_right_count : Nat := 381
def small_10250894_right_encoded : String := "12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D1020000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE00000006000000040000000600000006000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0AD3578110D10100000000000AD3578310D10102000000010000000610D13D02067ECE850000000A12EA94FA00000002022A45870000000A000000050000000110D13D000AD357830000000610D13D02067ECE850000000600000005000000010000000000000004000000061386AD060CFD9C090F34D0FE0AD3578110D10100000000000AD357830000000600000005000000060000000400000005000000030F350D0204548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0C9A87020000000A0F878D030000000A00000001000000040000000A1386AD060CFD9C090F34D0FE0C9A87020000000A0F878D030000000600000001000000040000000A00000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A87020F875103000000010AD357810000000A10D13D000000000A000000000F878D030AD3578110D10100000000000000000A10D13D00067ECE8512EA58FA022A45870000000A0000000500000002000000050000000000000001000000040000000A1386AD060CFD9C090F34D0FE0C9A87020F875103000000010AD3578100000007000000050F878D030AD3578110D1010000000000000000050000000500000001000000040000000500000003000000010F350D000CFD9C030F34D1020000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE00000006000000040000000600000006000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A8700000000060F878D010AD357830000000610D13D02067ECE85000000060000000500000001000000000000000400000006000000060F350D0204548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0C9A87000F875101000000000C9A87020F87510300000001022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE000000060000000400000006000000060000000213E200FA00000002022A458713E1C506000000030AD3578910D100FE0B4D440010801101000000000000000910804D010B4D44020000000800000008000000000000000400000005000000050F878D0300000006000000010F878D010C9A87020F87510300000001022A45850000000A13E200FA00000002022A45870000000A0000000A0F878D03022A45850000000613E200FA00000002022A458713E1C506000000030AD3578910D100FE0DE7CA00000000060E6015010000000A000000000000000400000006000000060000000100000000000000040F350CFE000000040C9A8700000000060F878D010000000A000000001386AD060CFD9C090F34D0FE0C9A8700000000060F878D010C9A87020F87510300000001022A458500000006000000050000000600000000000000040000000600000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A87000F875101000000000C9A87020F87510300000001000000050F878D03067ECE8512EA58FA022A458713E1C5060000000300000006000000050000000200000005000000010F878D010C9A87020F87510300000001067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE0DE7CA000E5FD90100000000000000050000000500000004000000050000000500000002000000050F878D03067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE0DE7CA000E5FD901000000000DE7CA020E5FD9030000000100000005000000050E6015010DE7CA020E5FD9030000000100000005000000050000000000000004000000050000000500000002000000050000000100000000000000040F350CFE00000004000000051386AD060CFD9C090F34D0FE0C9A87000F8751010000000000000005000000050000000400000005000000030000000100000000"
theorem small_10250894_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250894_right_root small_10250894_right_fuel small_10250894_right_count small_10250894_right_encoded = true := by
  decide +kernel
theorem small_10250894_right_covered : CoveredBy scale carrier boxes small_10250894_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250894_right_root small_10250894_right_fuel small_10250894_right_count small_10250894_right_encoded small_10250894_right_checked

theorem cover_10250894 : CoveredBy scale carrier boxes root_10250894 := by
  apply coveredBy_split_literal root_10250894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0689.root_10250895 small_10250894_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0689.cover_10250895
  · exact small_10250894_right_covered
#print axioms cover_10250894

def root_10250888 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250888_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250888_left_fuel : Nat := 1
def small_10250888_left_count : Nat := 1
def small_10250888_left_encoded : String := "00000003"
theorem small_10250888_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250888_left_root small_10250888_left_fuel small_10250888_left_count small_10250888_left_encoded = true := by
  decide +kernel
theorem small_10250888_left_covered : CoveredBy scale carrier boxes small_10250888_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250888_left_root small_10250888_left_fuel small_10250888_left_count small_10250888_left_encoded small_10250888_left_checked

theorem cover_10250888 : CoveredBy scale carrier boxes root_10250888 := by
  apply coveredBy_split_literal root_10250888 small_10250888_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250894 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10250888_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250894
#print axioms cover_10250888

def root_10250887 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10250887 : CoveredBy scale carrier boxes root_10250887 := by
  apply coveredBy_split_literal root_10250887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250888 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3853.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250888
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3853.covered
#print axioms cover_10250887

def root_10250882 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250882_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250882_right_fuel : Nat := 1
def small_10250882_right_count : Nat := 1
def small_10250882_right_encoded : String := "00000002"
theorem small_10250882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250882_right_root small_10250882_right_fuel small_10250882_right_count small_10250882_right_encoded = true := by
  decide +kernel
theorem small_10250882_right_covered : CoveredBy scale carrier boxes small_10250882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250882_right_root small_10250882_right_fuel small_10250882_right_count small_10250882_right_encoded small_10250882_right_checked

theorem cover_10250882 : CoveredBy scale carrier boxes root_10250882 := by
  apply coveredBy_split_literal root_10250882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250887 small_10250882_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250887
  · exact small_10250882_right_covered
#print axioms cover_10250882

def root_10250881 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10250881 : CoveredBy scale carrier boxes root_10250881 := by
  apply coveredBy_split_literal root_10250881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3854.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3854.covered
#print axioms cover_10250881

def root_10250876 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250876_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250876_right_fuel : Nat := 1
def small_10250876_right_count : Nat := 1
def small_10250876_right_encoded : String := "00000001"
theorem small_10250876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250876_right_root small_10250876_right_fuel small_10250876_right_count small_10250876_right_encoded = true := by
  decide +kernel
theorem small_10250876_right_covered : CoveredBy scale carrier boxes small_10250876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250876_right_root small_10250876_right_fuel small_10250876_right_count small_10250876_right_encoded small_10250876_right_checked

theorem cover_10250876 : CoveredBy scale carrier boxes root_10250876 := by
  apply coveredBy_split_literal root_10250876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250881 small_10250876_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250881
  · exact small_10250876_right_covered
#print axioms cover_10250876

def root_10250104 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250104_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250104_left_fuel : Nat := 23
def small_10250104_left_count : Nat := 371
def small_10250104_left_encoded : String := "120701020000000108A91305120700FA08A91307120701060000000308A91309120700FE0CFD9C010F34D1000000000004548A031386710200000001000000091386AD0204548A05138670FA04548A07138671060000000304548A09000000090000000600000009000000021386ACFA0000000204548A07138671060000000304548A09138670FE00000009000000041386ACFE000000040AD357810000000910D13D00000000090000000000000009000000010F350D0004548A03138671020000000104548A05000000061386ACFA0000000204548A0700000008000000061386AD0204548A05138670FA04548A07138671060000000304548A09138670FE0C9A8700000000060F878D01067ECE830000000612EA9502022A458500000006000000090000000100000000000000040000000600000006000000021386ACFA0000000204548A07138671060000000304548A09000000081386ACFE000000040C9A8700000000060F878D0100000006000000001386AD0604548A0900000008000000060000000300000001000000000000000412073CFE000000040CFD9C010F34D1000000000004548A03000000061386AD0204548A050000000600000006000000010F350D0004548A0300000006000000060000000012073D0608A91309120700FE0CFD9C010F34D10000000000000000090F350D0004548A03000000061386AD0204548A05000000061386ACFA000000020CFD9C070F34D10600000003000000060000000600000001000000000000000412073CFE000000040CFD9C010F34D1000000000004548A03000000061386AD0204548A05000000061386ACFA000000020CFD9C0700000006000000060000000100000006000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE0CFD9C010F34D1000000000004548A03000000081386AD020CFD9C050F34D0FA04548A07138671060000000304548A09000000081386ACFE000000040AD3578100000008000000081386AD0604548A090000000700000009000000030000000200000008000000010F350D0004548A03000000081386AD020CFD9C050F34D0FA04548A070000000800000008000000020000000800000001000000000000000412073CFE000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA00000002000000051386AD020CFD9C050F34D0FA04548A0713867106000000030CFD9C090F34D0FE0AD3578110D1010000000000067ECE830000000600000005000000050000000400000005000000050000000200000005000000010F350D0004548A0313867102000000010CFD9C0500000006000000081386AD020CFD9C050F34D0FA000000060000000200000005000000010000000012073D0608A91309120700FE0CFD9C010F34D1000000000004548A0313867102000000010CFD9C050F34D0FA0000000800000002000000081386AD020CFD9C050F34D0FA0CFD9C0700000008000000090000000200000008000000010F350D0004548A0313867102000000010CFD9C050F34D0FA0CFD9C070000000800000006000000020F350CFA000000020CFD9C07000000080F350D0600000008000000031386AD020CFD9C050F34D0FA0CFD9C070F34D10600000003000000080F350D0604548A09000000080000000800000003000000020F350CFA000000020CFD9C07000000080F350D0604548A0900000008000000050000000300000001000000000000000412073CFE000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070000000600000006000000020F350CFA00000002000000051386AD020CFD9C050F34D0FA0CFD9C070F34D1060000000300000005000000050000000200000005000000010F350D0004548A0313867102000000010CFD9C0500000006000000051386AD020CFD9C050F34D0FA0CFD9C070F34D1060000000300000005000000050000000200000005000000010000000000000003"
theorem small_10250104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250104_left_root small_10250104_left_fuel small_10250104_left_count small_10250104_left_encoded = true := by
  decide +kernel
theorem small_10250104_left_covered : CoveredBy scale carrier boxes small_10250104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250104_left_root small_10250104_left_fuel small_10250104_left_count small_10250104_left_encoded small_10250104_left_checked

theorem cover_10250104 : CoveredBy scale carrier boxes root_10250104 := by
  apply coveredBy_split_literal root_10250104 small_10250104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250876 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10250104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250876
#print axioms cover_10250104

def root_10250099 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250099_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10250099_right_fuel : Nat := 1
def small_10250099_right_count : Nat := 1
def small_10250099_right_encoded : String := "00000000"
theorem small_10250099_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10250099_right_root small_10250099_right_fuel small_10250099_right_count small_10250099_right_encoded = true := by
  decide +kernel
theorem small_10250099_right_covered : CoveredBy scale carrier boxes small_10250099_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10250099_right_root small_10250099_right_fuel small_10250099_right_count small_10250099_right_encoded small_10250099_right_checked

theorem cover_10250099 : CoveredBy scale carrier boxes root_10250099 := by
  apply coveredBy_split_literal root_10250099 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250104 small_10250099_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250104
  · exact small_10250099_right_covered
#print axioms cover_10250099

def root_10248755 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10248755 : CoveredBy scale carrier boxes root_10248755 := by
  apply coveredBy_split_literal root_10248755 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3843.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10250099 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3843.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10250099
#print axioms cover_10248755

def root_10248750 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248750_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248750_right_fuel : Nat := 1
def small_10248750_right_count : Nat := 1
def small_10248750_right_encoded : String := "00000004"
theorem small_10248750_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10248750_right_root small_10248750_right_fuel small_10248750_right_count small_10248750_right_encoded = true := by
  decide +kernel
theorem small_10248750_right_covered : CoveredBy scale carrier boxes small_10248750_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10248750_right_root small_10248750_right_fuel small_10248750_right_count small_10248750_right_encoded small_10248750_right_checked

theorem cover_10248750 : CoveredBy scale carrier boxes root_10248750 := by
  apply coveredBy_split_literal root_10248750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10248755 small_10248750_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10248755
  · exact small_10248750_right_covered
#print axioms cover_10248750

def root_10248749 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248749_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248749_right_fuel : Nat := 17
def small_10248749_right_count : Nat := 109
def small_10248749_right_encoded : String := "1151E9090000000408A91301120701000000000008A91303120701020000000108A91305120700FA08A9130700000006000000060000000212073CFA0000000208A913071207010600000003000000050000000512073D0208A91305120700FA08A9130712070106000000030000000A12073D06050000FE135D810904548A0113867100000000000CFD9C030000000A0F350D0204548A050000000A00000005000000011386AD000CFD9C0300000006000000050000000000000004135D45090000000400000005000000030000000212073CFA0000000208A91307120701060000000300000005000000050000000112073D0008A91303120701020000000108A913050000000612073CFA0000000208A913071207010600000003000000050000000512073D0208A91305120700FA08A913071207010600000003050000FE135D81090CFD9C010F34D100000000000000000A0F350D000CFD9C0300000006000000050000000000000004135D4509000000040000000512073D06050000FE0000000600000005000000030000000212073CFA0000000208A91307120701060000000300000005000000050000000100000000"
theorem small_10248749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10248749_right_root small_10248749_right_fuel small_10248749_right_count small_10248749_right_encoded = true := by
  decide +kernel
theorem small_10248749_right_covered : CoveredBy scale carrier boxes small_10248749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10248749_right_root small_10248749_right_fuel small_10248749_right_count small_10248749_right_encoded small_10248749_right_checked

theorem cover_10248749 : CoveredBy scale carrier boxes root_10248749 := by
  apply coveredBy_split_literal root_10248749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10248750 small_10248749_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10248750
  · exact small_10248749_right_covered
#print axioms cover_10248749

def root_10248744 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248744_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10248744_right_fuel : Nat := 1
def small_10248744_right_count : Nat := 1
def small_10248744_right_encoded : String := "00000003"
theorem small_10248744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10248744_right_root small_10248744_right_fuel small_10248744_right_count small_10248744_right_encoded = true := by
  decide +kernel
theorem small_10248744_right_covered : CoveredBy scale carrier boxes small_10248744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10248744_right_root small_10248744_right_fuel small_10248744_right_count small_10248744_right_encoded small_10248744_right_checked

theorem cover_10248744 : CoveredBy scale carrier boxes root_10248744 := by
  apply coveredBy_split_literal root_10248744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10248749 small_10248744_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10248749
  · exact small_10248744_right_covered
#print axioms cover_10248744

def root_10247558 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10247558 : CoveredBy scale carrier boxes root_10247558 := by
  apply coveredBy_split_literal root_10247558 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3842.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10248744 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3842.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10248744
#print axioms cover_10247558

def root_10247553 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247553_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247553_right_fuel : Nat := 1
def small_10247553_right_count : Nat := 1
def small_10247553_right_encoded : String := "00000002"
theorem small_10247553_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10247553_right_root small_10247553_right_fuel small_10247553_right_count small_10247553_right_encoded = true := by
  decide +kernel
theorem small_10247553_right_covered : CoveredBy scale carrier boxes small_10247553_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10247553_right_root small_10247553_right_fuel small_10247553_right_count small_10247553_right_encoded small_10247553_right_checked

theorem cover_10247553 : CoveredBy scale carrier boxes root_10247553 := by
  apply coveredBy_split_literal root_10247553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10247558 small_10247553_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10247558
  · exact small_10247553_right_covered
#print axioms cover_10247553

def root_10247552 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247552_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247552_right_fuel : Nat := 21
def small_10247552_right_count : Nat := 165
def small_10247552_right_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A91301120701000000000008A91303120701020000000108A91309120700FE050000FA0000000800000007000000040000000512073D0208A9130900000007000000050000000112073D0008A91303120701020000000108A91309120700FE050000FA135D810505000106135D4507000000030CFD9C010F34D10000000000000000050000000500000005000000020000000500000004000000050000000500000000000000041151E9090000000400000005115225070A0000FE1152250908A91301120701000000000008A91303120701020000000108A91307120701060000000308A91309000000070000000512073D0608A9130900000008000000050000000312073D0208A91307120701060000000308A91309000000070000000512073D0608A913090000000700000005000000030000000112073D0008A91303120701020000000108A91307120701060000000308A91309000000080000000512073D0608A91309120700FE050000FA135D81050CFD9C010F34D10000000000000000070F350D0004548A0313867102000000010CFD9C070000000800000005000000050000000000000002135D4505000000020000000500000004000000050000000312073D0208A91307120701060000000308A91309120700FE050000FA135D81050CFD9C010F34D10000000000000000070F350D000CFD9C030F34D1020000000100000005000000050000000000000002135D45050000000200000005000000040000000512073D0608A91309120700FE050000FA00000007000000050000000400000005000000030000000100000000000000041151E9090000000408A913011207010000000000000000050000000500000003"
theorem small_10247552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10247552_right_root small_10247552_right_fuel small_10247552_right_count small_10247552_right_encoded = true := by
  decide +kernel
theorem small_10247552_right_covered : CoveredBy scale carrier boxes small_10247552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10247552_right_root small_10247552_right_fuel small_10247552_right_count small_10247552_right_encoded small_10247552_right_checked

theorem cover_10247552 : CoveredBy scale carrier boxes root_10247552 := by
  apply coveredBy_split_literal root_10247552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10247553 small_10247552_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10247553
  · exact small_10247552_right_covered
#print axioms cover_10247552

def root_10247547 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247547_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10247547_right_fuel : Nat := 1
def small_10247547_right_count : Nat := 1
def small_10247547_right_encoded : String := "00000001"
theorem small_10247547_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10247547_right_root small_10247547_right_fuel small_10247547_right_count small_10247547_right_encoded = true := by
  decide +kernel
theorem small_10247547_right_covered : CoveredBy scale carrier boxes small_10247547_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10247547_right_root small_10247547_right_fuel small_10247547_right_count small_10247547_right_encoded small_10247547_right_checked

theorem cover_10247547 : CoveredBy scale carrier boxes root_10247547 := by
  apply coveredBy_split_literal root_10247547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10247552 small_10247547_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10247552
  · exact small_10247547_right_covered
#print axioms cover_10247547

def root_10244863 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10244863 : CoveredBy scale carrier boxes root_10244863 := by
  apply coveredBy_split_literal root_10244863 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3841.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10247547 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3841.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10247547
#print axioms cover_10244863

def root_10244858 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10244858_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10244858_right_fuel : Nat := 1
def small_10244858_right_count : Nat := 1
def small_10244858_right_encoded : String := "00000000"
theorem small_10244858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10244858_right_root small_10244858_right_fuel small_10244858_right_count small_10244858_right_encoded = true := by
  decide +kernel
theorem small_10244858_right_covered : CoveredBy scale carrier boxes small_10244858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10244858_right_root small_10244858_right_fuel small_10244858_right_count small_10244858_right_encoded small_10244858_right_checked

theorem cover_10244858 : CoveredBy scale carrier boxes root_10244858 := by
  apply coveredBy_split_literal root_10244858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10244863 small_10244858_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10244863
  · exact small_10244858_right_covered
#print axioms cover_10244858

def root_10240484 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10240484 : CoveredBy scale carrier boxes root_10240484 := by
  apply coveredBy_split_literal root_10240484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10240485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10244858 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10240485
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10244858
#print axioms cover_10240484

def root_10232958 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10232958 : CoveredBy scale carrier boxes root_10232958 := by
  apply coveredBy_split_literal root_10232958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.root_10232959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10240484 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0688.cover_10232959
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10240484
#print axioms cover_10232958

def root_10232957 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10232957 : CoveredBy scale carrier boxes root_10232957 := by
  apply coveredBy_split_literal root_10232957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10232958 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3855.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10232958
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3855.covered
#print axioms cover_10232957

def root_10170817 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10170817 : CoveredBy scale carrier boxes root_10170817 := by
  apply coveredBy_split_literal root_10170817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10170818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10232957 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10170818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10232957
#print axioms cover_10170817

def root_10058533 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10058533 : CoveredBy scale carrier boxes root_10058533 := by
  apply coveredBy_split_literal root_10058533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10058534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10170817 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10058534
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10170817
#print axioms cover_10058533

def root_9831139 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831139 : CoveredBy scale carrier boxes root_9831139 := by
  apply coveredBy_split_literal root_9831139 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_9831140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10058533 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_9831140
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10058533
#print axioms cover_9831139

def root_10284297 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10284297_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10284297_left_fuel : Nat := 20
def small_10284297_left_count : Nat := 173
def small_10284297_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91303120701020000000108A912FD12073CFC0000000308A912FF0000000A120700FE0000000700000004120700FC08A912FF0000000A120700FE0000000A000000040000000312073D0208A912FD12073CFC0000000308A912FF0000000A120700FE050001040000000A135D80FB0000000204548A0113867100000000000CFD9C030F34D10200000001000000070000000A0000000A00000004120700FC08A912FF12073CFE0000000405000104135D44FB04548A0113867100000000000CFD9C030000000A000000050000000500000002135D80FB0000000204548A0113867100000000000CFD9C030000000A0000000A0000000A120700FE0000000500000004000000030000000112073D0008A91303120701020000000108A912FD000000070000000A12073D0208A912FD12073CFC000000030000000A120700FC000000050000000300000001000000001151E8FF08A91301120701000000000008A9130312070102000000010000000A12073D0208A912FD12073CFC0000000305000104000000080000000A120700FC05000104135D44FB0000000900000002135D80FB00000002050000FE0000000900000009000000030000000112073D0008A913030000000A12073D0208A912FD0000000A120700FC05000104135D44FB000000090000000200000009000000030000000100000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A91303120701020000000108A912FF000000080000000712073D0208A912FF0000000A120700FE050001040000000700000007000000040000000112073D0008A9130312070102000000010000000712073D020000000A00000001000000001151E8FF0000000A000000040000000300000002"
theorem small_10284297_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10284297_left_root small_10284297_left_fuel small_10284297_left_count small_10284297_left_encoded = true := by
  decide +kernel
theorem small_10284297_left_covered : CoveredBy scale carrier boxes small_10284297_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10284297_left_root small_10284297_left_fuel small_10284297_left_count small_10284297_left_encoded small_10284297_left_checked

theorem cover_10284297 : CoveredBy scale carrier boxes root_10284297 := by
  apply coveredBy_split_literal root_10284297 small_10284297_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3856.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10284297_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3856.covered
#print axioms cover_10284297

def root_10284292 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10284292_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10284292_right_fuel : Nat := 1
def small_10284292_right_count : Nat := 1
def small_10284292_right_encoded : String := "00000001"
theorem small_10284292_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10284292_right_root small_10284292_right_fuel small_10284292_right_count small_10284292_right_encoded = true := by
  decide +kernel
theorem small_10284292_right_covered : CoveredBy scale carrier boxes small_10284292_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10284292_right_root small_10284292_right_fuel small_10284292_right_count small_10284292_right_encoded small_10284292_right_checked

theorem cover_10284292 : CoveredBy scale carrier boxes root_10284292 := by
  apply coveredBy_split_literal root_10284292 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10284297 small_10284292_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10284297
  · exact small_10284292_right_covered
#print axioms cover_10284292

def root_10283736 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10283736_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10283736_left_fuel : Nat := 21
def small_10283736_left_count : Nat := 259
def small_10283736_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000312073D0000000005000000001151E8FF08A91301120701000000000008A912FD00000006120700FC000000060000000312073D0008A912FD12073CFC0000000305000102135D450300000001000000060000000A120700FC000000050000000300000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FF00000006120700FE00000006000000040000000A1151E8FF0000000A000000040000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912FB12073D0408A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000300000002120701040000000208A912FD00000006120700FC000000060000000312073D0008A912FB12073D0408A912FD12073CFC0000000308A912FF12073CFE0000000405000102000000050000000A120700FE0000000500000004120700FC000000050000000300000002120701040000000208A912FD12073CFC0000000308A912FF12073CFE0000000405000102000000050000000A120700FE0500010200000005135D8103000000050000000100000004120700FC08A912FF0000000A120700FE0500010200000005000000060000000400000003000000001151E8FF08A91301120701000000000008A912FB12073D0408A912FD00000006120700FC0500010200000006135D8103050000FE00000006000000090000000100000003000000020000000612073D0008A912FB12073D0408A912FD12073CFC0000000305000102135D4503000000010000000A0000000A120700FC050001020000000500000009000000030000000212070104000000020000000A00000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FB12073D0408A912FF00000006120700FE0500010200000006135D8103050000FC00000006135D44FD00000006000000030000000100000004000000020000000612073D0008A912FB12073D0408A912FF12073CFE000000040000000A120700FE0500010200000005135D8103050000FC00000005135D44FD0CFD9C01000000070000000700000003000000010000000400000002120701040000000208A912FF00000006120700FE0500010200000006135D8103050000FC00000006135D44FD0CFD9C01000000060F350D00045489FB000000050000000600000000000000030000000100000004000000001151E8FF0000000A0000000400000003"
theorem small_10283736_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10283736_left_root small_10283736_left_fuel small_10283736_left_count small_10283736_left_encoded = true := by
  decide +kernel
theorem small_10283736_left_covered : CoveredBy scale carrier boxes small_10283736_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10283736_left_root small_10283736_left_fuel small_10283736_left_count small_10283736_left_encoded small_10283736_left_checked

theorem cover_10283736 : CoveredBy scale carrier boxes root_10283736 := by
  apply coveredBy_split_literal root_10283736 small_10283736_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10284292 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10283736_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10284292
#print axioms cover_10283736

def root_10283731 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10283731_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10283731_right_fuel : Nat := 1
def small_10283731_right_count : Nat := 1
def small_10283731_right_encoded : String := "00000000"
theorem small_10283731_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10283731_right_root small_10283731_right_fuel small_10283731_right_count small_10283731_right_encoded = true := by
  decide +kernel
theorem small_10283731_right_covered : CoveredBy scale carrier boxes small_10283731_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10283731_right_root small_10283731_right_fuel small_10283731_right_count small_10283731_right_encoded small_10283731_right_checked

theorem cover_10283731 : CoveredBy scale carrier boxes root_10283731 := by
  apply coveredBy_split_literal root_10283731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.root_10283736 small_10283731_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690.cover_10283736
  · exact small_10283731_right_covered
#print axioms cover_10283731

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0690
