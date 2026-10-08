import TaoBundleAssembly0681
import TaoBundleChunkBatch0951
import TaoBundleChunkBatch0952
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682
def root_10126273 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126273_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126273_left_fuel : Nat := 28
def small_10126273_left_count : Nat := 201
def small_10126273_left_encoded : String := "120701000000000008A91303120701020000000108A91305120700FA08A913070000000512073CFC000000030500010800000005135D80FF0000000404548A0100000005000000080000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000108135D44FF04548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA000000050000000200000006000000061386AD0004548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA000000060F87510500000002000000061386AD020CFD9C050F34D0FA000000050000000200000006000000010000000000000004135D80FF0000000404548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070000000500000009000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC0F878D07000000060000000300000008000000020F875105000000020C9A86FC000000060F875107000000030780010800000006000000081386AD020CFD9C050F34D0FA000000080000000200000006000000011386AD0004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FA0F878D050C9A86FC0F878D070780010800000006128A7CFF00000004067ECE810000000800000008000000030F8751070000000300000008000000020F875105000000020C9A86FC0F878D0700000006000000030F8751070000000307800108128A40FF0000000600000004128A7CFF00000004067ECE810000000812EA9500022A458313E1C502000000010000000800000008000000001386AD020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA000000060F8751050000000200000006000000010000000012073D0208A91305120700FA08A913070000000500000008000000020000000600000001"
theorem small_10126273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126273_left_root small_10126273_left_fuel small_10126273_left_count small_10126273_left_encoded = true := by
  decide +kernel
theorem small_10126273_left_covered : CoveredBy scale carrier boxes small_10126273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126273_left_root small_10126273_left_fuel small_10126273_left_count small_10126273_left_encoded small_10126273_left_checked

theorem cover_10126273 : CoveredBy scale carrier boxes root_10126273 := by
  apply coveredBy_split_literal root_10126273 small_10126273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126707 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126707
#print axioms cover_10126273

def root_10126268 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126268_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126268_right_fuel : Nat := 1
def small_10126268_right_count : Nat := 1
def small_10126268_right_encoded : String := "00000004"
theorem small_10126268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126268_right_root small_10126268_right_fuel small_10126268_right_count small_10126268_right_encoded = true := by
  decide +kernel
theorem small_10126268_right_covered : CoveredBy scale carrier boxes small_10126268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126268_right_root small_10126268_right_fuel small_10126268_right_count small_10126268_right_encoded small_10126268_right_checked

theorem cover_10126268 : CoveredBy scale carrier boxes root_10126268 := by
  apply coveredBy_split_literal root_10126268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10126273 small_10126268_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10126273
  · exact small_10126268_right_covered
#print axioms cover_10126268

def root_10145473 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145473_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145473_left_fuel : Nat := 24
def small_10145473_left_count : Nat := 329
def small_10145473_left_encoded : String := "0F34D1000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9BFF0F350D080C9A870800000007000000070000000400000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A87080F8750FF0AD3578100000008000000070000000400000007000000030F8751070000000300000008000000040F34D1080000000400000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A86FA0F878D050C9A87080F8750FF0AD3578110D101000000000000000007000000070000000400000007000000020F875105000000020C9A87080F8750FF0AD357810000000A0000000A0000000400000007000000040F34D1080000000400000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FA0F878D050C9A86FC0F878D070C9A87080F8750FF0AD3578110D101000000000000000007000000070000000400000007000000030F875107000000030C9A87080F8750FF0AD357810000000810D13D00022A45830000000700000008000000000000000400000007000000020F875105000000020C9A86FC0F878D070C9A87080F8750FF0AD3578110D1010000000000022A45830000000713E201020B4D43FA0000000710801105000000020000000A0000000110D13D00022A45830000000713E201020B4D43FA0000000710801105000000020DE7C9FC000000070E5FD907000000030000000700000001000000000000000400000007000000030F875107000000030C9A87080F8750FF0AD3578110D1010000000000022A4583000000070000000810D13D00022A45830000000713E201020B4D43FA10804D0500000008000000021080110500000002000000050000000100000000000000040F878CFF0000000400000007000000040F34D10800000004000000071386AD020CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9BFF0F350D080C9A8708000000080F878CFF00000004000000080000000400000008000000030F350CFC000000030CFD9BFF0F350D08000000080000000400000008000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A86FA0F878D050C9A87080F8750FF00000006000000040F878CFF000000040AD3578110D1010000000000067ECE83000000070000000610D13D00067ECE830000000712EA9502000000080000000100000000000000020F875105000000020C9A87080F8750FF00000006000000040F878CFF000000040AD3578110D10100000000000000000610D13D00067ECE83000000070000000600000000000000040F34D108000000040C9A86FA000000070F8751050000000200000007000000030F350CFC000000030CFD9BFF0F350D080C9A86FA0F878D050C9A86FC0F878D070C9A8708000000080F878CFF00000004000000080000000300000008000000020F875105000000020C9A86FC0F878D070C9A87080F8750FF0AD3578110D10100000000000000000610D13D00067ECE8312EA5902000000010B4D43FA10804D050DE7C9FC0E6015070000000600000003000000080000000210801105000000020DE7C9FC000000060E5FD90700000003000000080000000600000000000000040F878CFF000000040AD3578110D10100000000000000000810D13D00067ECE83000000070000000800000000000000030F875107000000030C9A87080F8750FF0AD357810000000800000008000000040F878CFF0000000400000005000000040F34D108000000040C9A86FA0F878D0500000008000000020F875105000000020000000500000001"
theorem small_10145473_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145473_left_root small_10145473_left_fuel small_10145473_left_count small_10145473_left_encoded = true := by
  decide +kernel
theorem small_10145473_left_covered : CoveredBy scale carrier boxes small_10145473_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145473_left_root small_10145473_left_fuel small_10145473_left_count small_10145473_left_encoded small_10145473_left_checked

theorem cover_10145473 : CoveredBy scale carrier boxes root_10145473 := by
  apply coveredBy_split_literal root_10145473 small_10145473_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3804.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10145473_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3804.covered
#print axioms cover_10145473

def root_10145468 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145468_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145468_right_fuel : Nat := 1
def small_10145468_right_count : Nat := 1
def small_10145468_right_encoded : String := "00000004"
theorem small_10145468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145468_right_root small_10145468_right_fuel small_10145468_right_count small_10145468_right_encoded = true := by
  decide +kernel
theorem small_10145468_right_covered : CoveredBy scale carrier boxes small_10145468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145468_right_root small_10145468_right_fuel small_10145468_right_count small_10145468_right_encoded small_10145468_right_checked

theorem cover_10145468 : CoveredBy scale carrier boxes root_10145468 := by
  apply coveredBy_split_literal root_10145468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145473 small_10145468_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145473
  · exact small_10145468_right_covered
#print axioms cover_10145468

def root_10145467 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145467_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145467_right_fuel : Nat := 10
def small_10145467_right_count : Nat := 43
def small_10145467_right_encoded : String := "12070108000000040CFD9C010F34D1000000000004548A03000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC000000070000000300000007000000010F350D0004548A0313867102000000010CFD9C0500000007000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003000000050000000100000000"
theorem small_10145467_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145467_right_root small_10145467_right_fuel small_10145467_right_count small_10145467_right_encoded = true := by
  decide +kernel
theorem small_10145467_right_covered : CoveredBy scale carrier boxes small_10145467_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145467_right_root small_10145467_right_fuel small_10145467_right_count small_10145467_right_encoded small_10145467_right_checked

theorem cover_10145467 : CoveredBy scale carrier boxes root_10145467 := by
  apply coveredBy_split_literal root_10145467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145468 small_10145467_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145468
  · exact small_10145467_right_covered
#print axioms cover_10145467

def root_10145461 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145461_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145461_left_fuel : Nat := 1
def small_10145461_left_count : Nat := 1
def small_10145461_left_encoded : String := "00000003"
theorem small_10145461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145461_left_root small_10145461_left_fuel small_10145461_left_count small_10145461_left_encoded = true := by
  decide +kernel
theorem small_10145461_left_covered : CoveredBy scale carrier boxes small_10145461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145461_left_root small_10145461_left_fuel small_10145461_left_count small_10145461_left_encoded small_10145461_left_checked

theorem cover_10145461 : CoveredBy scale carrier boxes root_10145461 := by
  apply coveredBy_split_literal root_10145461 small_10145461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145467 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10145461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145467
#print axioms cover_10145461

def root_10145017 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145017_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145017_left_fuel : Nat := 20
def small_10145017_left_count : Nat := 207
def small_10145017_left_encoded : String := "120700FC08A912FF12073D080CFD9C010F34D1000000000004548A0313867102000000010CFD9C050F34D0FA04548A07138670FC000000050000000300000007000000020F350CFA0000000204548A070000000A1386ACFC000000030CFD9BFF0F350D080C9A86FA000000070000000A00000004000000071386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000500000007000000031386ACFC000000030CFD9BFF0F350D0800000006000000040F34D1080000000400000007000000020F350CFA0000000204548A07000000061386ACFC000000030CFD9BFF000000060F34D1080000000400000007000000010F350D0004548A0313867102000000010CFD9C050F34D0FA04548A07138670FC000000070000000300000007000000020F350CFA0000000204548A07138670FC0CFD9BFF0F350D080C9A8700000000050000000A000000040000000A000000031386ACFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FA000000070F875105000000020C9A870800000007000000070F878D010C9A86FA000000070000000A00000000000000040F34D10800000004000000071386AD020CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000500000007000000031386ACFC000000030CFD9BFF0F350D080C9A8700000000050F878D010C9A8708000000050000000700000000000000040F34D1080000000400000007000000020F350CFA0000000204548A07138670FC0CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000000000900000007000000031386ACFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FA0F878D050C9A87080F8750FF00000005000000040F878CFF0000000400000007000000020F875105000000020C9A87080F8750FF00000006000000040F878CFF00000004000000090F878D010C9A86FA000000060F875105000000020000000600000000000000040F34D108000000040C9A87000F87510100000000000000070000000700000001000000000000000412070108000000040CFD9C010F34D10000000000000000070F350D0004548A03000000071386AD020CFD9C050000000700000007000000010000000000000003"
theorem small_10145017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145017_left_root small_10145017_left_fuel small_10145017_left_count small_10145017_left_encoded = true := by
  decide +kernel
theorem small_10145017_left_covered : CoveredBy scale carrier boxes small_10145017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145017_left_root small_10145017_left_fuel small_10145017_left_count small_10145017_left_encoded small_10145017_left_checked

theorem cover_10145017 : CoveredBy scale carrier boxes root_10145017 := by
  apply coveredBy_split_literal root_10145017 small_10145017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145461 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10145017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145461
#print axioms cover_10145017

def root_10145011 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145011_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10145011_left_fuel : Nat := 1
def small_10145011_left_count : Nat := 1
def small_10145011_left_encoded : String := "00000002"
theorem small_10145011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10145011_left_root small_10145011_left_fuel small_10145011_left_count small_10145011_left_encoded = true := by
  decide +kernel
theorem small_10145011_left_covered : CoveredBy scale carrier boxes small_10145011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10145011_left_root small_10145011_left_fuel small_10145011_left_count small_10145011_left_encoded small_10145011_left_checked

theorem cover_10145011 : CoveredBy scale carrier boxes root_10145011 := by
  apply coveredBy_split_literal root_10145011 small_10145011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145017 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10145011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145017
#print axioms cover_10145011

def root_10144665 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144665_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144665_left_fuel : Nat := 20
def small_10144665_left_count : Nat := 161
def small_10144665_left_encoded : String := "120700FA08A91307120700FC08A912FF12073D080CFD9C010F34D1000000000004548A03000000051386AD0204548A05000000051386ACFA0000000204548A07000000051386ACFC000000030CFD9BFF0000000500000007000000010F350D0004548A03000000051386AD0204548A05000000051386ACFA0000000204548A07000000051386ACFC000000030CFD9BFF00000005000000070000000100000000000000041207010800000004000000070000000312073CFC0000000308A912FF12073D080CFD9C010F34D1000000000004548A03138671020000000104548A05138670FA00000008000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003000000081386AD0204548A05000000081386ACFA000000020CFD9C070000000800000008000000010F350D0004548A03138671020000000104548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D08000000080000000400000008000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9BFF0F350D080C9A87000F875101000000000C9A86FC000000070F87510700000003000000080F878D010000000800000000000000040F34D10800000004000000071386AD0204548A05138670FA0CFD9C070000000800000008000000021386ACFA000000020CFD9C070F34D0FC0CFD9BFF0F350D080C9A870000000005000000080000000400000008000000030F350CFC000000030CFD9BFF0F350D0800000008000000040000000800000001000000000000000412070108000000040CFD9C010F34D10000000000000000070F350D0004548A0300000007000000080000000000000002"
theorem small_10144665_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10144665_left_root small_10144665_left_fuel small_10144665_left_count small_10144665_left_encoded = true := by
  decide +kernel
theorem small_10144665_left_covered : CoveredBy scale carrier boxes small_10144665_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10144665_left_root small_10144665_left_fuel small_10144665_left_count small_10144665_left_encoded small_10144665_left_checked

theorem cover_10144665 : CoveredBy scale carrier boxes root_10144665 := by
  apply coveredBy_split_literal root_10144665 small_10144665_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10145011 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10144665_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10145011
#print axioms cover_10144665

def root_10144659 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144659_left_fuel : Nat := 1
def small_10144659_left_count : Nat := 1
def small_10144659_left_encoded : String := "00000001"
theorem small_10144659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10144659_left_root small_10144659_left_fuel small_10144659_left_count small_10144659_left_encoded = true := by
  decide +kernel
theorem small_10144659_left_covered : CoveredBy scale carrier boxes small_10144659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10144659_left_root small_10144659_left_fuel small_10144659_left_count small_10144659_left_encoded small_10144659_left_checked

theorem cover_10144659 : CoveredBy scale carrier boxes root_10144659 := by
  apply coveredBy_split_literal root_10144659 small_10144659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10144665 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10144659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10144665
#print axioms cover_10144659

def root_10144658 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10144658 : CoveredBy scale carrier boxes root_10144658 := by
  apply coveredBy_split_literal root_10144658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10144659 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3805.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10144659
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3805.covered
#print axioms cover_10144658

def root_10144653 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144653_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10144653_right_fuel : Nat := 1
def small_10144653_right_count : Nat := 1
def small_10144653_right_encoded : String := "00000000"
theorem small_10144653_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10144653_right_root small_10144653_right_fuel small_10144653_right_count small_10144653_right_encoded = true := by
  decide +kernel
theorem small_10144653_right_covered : CoveredBy scale carrier boxes small_10144653_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10144653_right_root small_10144653_right_fuel small_10144653_right_count small_10144653_right_encoded small_10144653_right_checked

theorem cover_10144653 : CoveredBy scale carrier boxes root_10144653 := by
  apply coveredBy_split_literal root_10144653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10144658 small_10144653_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10144658
  · exact small_10144653_right_covered
#print axioms cover_10144653

def root_10143163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10143163 : CoveredBy scale carrier boxes root_10143163 := by
  apply coveredBy_split_literal root_10143163 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3803.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10144653 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3803.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10144653
#print axioms cover_10143163

def root_10143157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10143157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10143157_left_fuel : Nat := 1
def small_10143157_left_count : Nat := 1
def small_10143157_left_encoded : String := "00000004"
theorem small_10143157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10143157_left_root small_10143157_left_fuel small_10143157_left_count small_10143157_left_encoded = true := by
  decide +kernel
theorem small_10143157_left_covered : CoveredBy scale carrier boxes small_10143157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10143157_left_root small_10143157_left_fuel small_10143157_left_count small_10143157_left_encoded small_10143157_left_checked

theorem cover_10143157 : CoveredBy scale carrier boxes root_10143157 := by
  apply coveredBy_split_literal root_10143157 small_10143157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10143163 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10143157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10143163
#print axioms cover_10143157

def root_10126267 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126267 : CoveredBy scale carrier boxes root_10126267 := by
  apply coveredBy_split_literal root_10126267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10126268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10143157 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10126268
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10143157
#print axioms cover_10126267

def root_10126262 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126262_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126262_right_fuel : Nat := 1
def small_10126262_right_count : Nat := 1
def small_10126262_right_encoded : String := "00000003"
theorem small_10126262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126262_right_root small_10126262_right_fuel small_10126262_right_count small_10126262_right_encoded = true := by
  decide +kernel
theorem small_10126262_right_covered : CoveredBy scale carrier boxes small_10126262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126262_right_root small_10126262_right_fuel small_10126262_right_count small_10126262_right_encoded small_10126262_right_checked

theorem cover_10126262 : CoveredBy scale carrier boxes root_10126262 := by
  apply coveredBy_split_literal root_10126262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10126267 small_10126262_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10126267
  · exact small_10126262_right_covered
#print axioms cover_10126262

def root_10150485 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150485_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150485_right_fuel : Nat := 14
def small_10150485_right_count : Nat := 65
def small_10150485_right_encoded : String := "135D45070000000305000108135D44FF0CFD9C010F34D1000000000004548A03138671020000000100000008000000080F350D0004548A0313867102000000010CFD9C050F34D0FA00000008000000020000000A1386AD020CFD9C050F34D0FA00000008000000020000000A000000010000000000000004135D80FF000000040CFD9C010F34D1000000000004548A03138671020000000100000008000000080F350D0004548A0313867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A87000000000A0F878D010C9A86FA0000000A0F875105000000020000000A000000001386AD020CFD9C05000000080000000A0000000100000000"
theorem small_10150485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150485_right_root small_10150485_right_fuel small_10150485_right_count small_10150485_right_encoded = true := by
  decide +kernel
theorem small_10150485_right_covered : CoveredBy scale carrier boxes small_10150485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150485_right_root small_10150485_right_fuel small_10150485_right_count small_10150485_right_encoded small_10150485_right_checked

theorem cover_10150485 : CoveredBy scale carrier boxes root_10150485 := by
  apply coveredBy_split_literal root_10150485 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3806.root small_10150485_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3806.covered
  · exact small_10150485_right_covered
#print axioms cover_10150485

def root_10150479 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150479_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150479_left_fuel : Nat := 1
def small_10150479_left_count : Nat := 1
def small_10150479_left_encoded : String := "00000002"
theorem small_10150479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150479_left_root small_10150479_left_fuel small_10150479_left_count small_10150479_left_encoded = true := by
  decide +kernel
theorem small_10150479_left_covered : CoveredBy scale carrier boxes small_10150479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150479_left_root small_10150479_left_fuel small_10150479_left_count small_10150479_left_encoded small_10150479_left_checked

theorem cover_10150479 : CoveredBy scale carrier boxes root_10150479 := by
  apply coveredBy_split_literal root_10150479 small_10150479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150485 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10150479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150485
#print axioms cover_10150479

def root_10150437 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150437_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150437_left_fuel : Nat := 9
def small_10150437_left_count : Nat := 21
def small_10150437_left_encoded : String := "120700FA050000FC135D810705000108135D44FF0CFD9C01000000080F350D0004548A0300000005000000080000000000000004135D80FF000000040CFD9C010000000800000008000000030000000800000002"
theorem small_10150437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150437_left_root small_10150437_left_fuel small_10150437_left_count small_10150437_left_encoded = true := by
  decide +kernel
theorem small_10150437_left_covered : CoveredBy scale carrier boxes small_10150437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150437_left_root small_10150437_left_fuel small_10150437_left_count small_10150437_left_encoded small_10150437_left_checked

theorem cover_10150437 : CoveredBy scale carrier boxes root_10150437 := by
  apply coveredBy_split_literal root_10150437 small_10150437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150479 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10150437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150479
#print axioms cover_10150437

def root_10150431 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150431_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150431_left_fuel : Nat := 1
def small_10150431_left_count : Nat := 1
def small_10150431_left_encoded : String := "00000001"
theorem small_10150431_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150431_left_root small_10150431_left_fuel small_10150431_left_count small_10150431_left_encoded = true := by
  decide +kernel
theorem small_10150431_left_covered : CoveredBy scale carrier boxes small_10150431_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150431_left_root small_10150431_left_fuel small_10150431_left_count small_10150431_left_encoded small_10150431_left_checked

theorem cover_10150431 : CoveredBy scale carrier boxes root_10150431 := by
  apply coveredBy_split_literal root_10150431 small_10150431_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150437 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10150431_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150437
#print axioms cover_10150431

def root_10150430 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150430_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150430_right_fuel : Nat := 18
def small_10150430_right_count : Nat := 95
def small_10150430_right_encoded : String := "12073D0208A91305120700FA000000080000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9C010F34D10000000000000000080F350D000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A87000F875101000000000000000A0F878D0100000008000000000F350D0200000008000000010000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020C9A87000F875101000000000C9A86FA0000000A0F875105000000020000000A0F878D0100000008000000000F350D0200000008000000010000000000000003135D45070000000305000108135D44FF0CFD9C01000000080F350D000CFD9C030F34D1020000000100000008000000070000000000000004135D80FF000000040CFD9C01000000080F350D000CFD9C030F34D1020000000100000008000000080000000000000001"
theorem small_10150430_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150430_right_root small_10150430_right_fuel small_10150430_right_count small_10150430_right_encoded = true := by
  decide +kernel
theorem small_10150430_right_covered : CoveredBy scale carrier boxes small_10150430_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150430_right_root small_10150430_right_fuel small_10150430_right_count small_10150430_right_encoded small_10150430_right_checked

theorem cover_10150430 : CoveredBy scale carrier boxes root_10150430 := by
  apply coveredBy_split_literal root_10150430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150431 small_10150430_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150431
  · exact small_10150430_right_covered
#print axioms cover_10150430

def root_10150425 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150425_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150425_right_fuel : Nat := 1
def small_10150425_right_count : Nat := 1
def small_10150425_right_encoded : String := "00000000"
theorem small_10150425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150425_right_root small_10150425_right_fuel small_10150425_right_count small_10150425_right_encoded = true := by
  decide +kernel
theorem small_10150425_right_covered : CoveredBy scale carrier boxes small_10150425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150425_right_root small_10150425_right_fuel small_10150425_right_count small_10150425_right_encoded small_10150425_right_checked

theorem cover_10150425 : CoveredBy scale carrier boxes root_10150425 := by
  apply coveredBy_split_literal root_10150425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150430 small_10150425_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150430
  · exact small_10150425_right_covered
#print axioms cover_10150425

def root_10150293 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150293_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150293_left_fuel : Nat := 20
def small_10150293_left_count : Nat := 63
def small_10150293_left_encoded : String := "120701000000000008A91303120701020000000108A913050000000812073CFA00000002050000FC135D810705000108135D44FF04548A01000000081386AD0004548A0313867102000000010CFD9C05000000080F350CFA000000020C9A86FA000000080F87510500000002078000FC0000000900000008000000080000000000000004135D80FF0000000404548A011386710000000000000000081386AD0004548A0313867102000000010CFD9C05000000080F350CFA000000020C9A86FA000000080F87510500000002078000FC128A7D07000000080000000300000008000000080000000000000003135D4507000000030000000800000008"
theorem small_10150293_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150293_left_root small_10150293_left_fuel small_10150293_left_count small_10150293_left_encoded = true := by
  decide +kernel
theorem small_10150293_left_covered : CoveredBy scale carrier boxes small_10150293_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150293_left_root small_10150293_left_fuel small_10150293_left_count small_10150293_left_encoded small_10150293_left_checked

theorem cover_10150293 : CoveredBy scale carrier boxes root_10150293 := by
  apply coveredBy_split_literal root_10150293 small_10150293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150425 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10150293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150425
#print axioms cover_10150293

def root_10150288 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150288_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150288_right_fuel : Nat := 1
def small_10150288_right_count : Nat := 1
def small_10150288_right_encoded : String := "00000004"
theorem small_10150288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150288_right_root small_10150288_right_fuel small_10150288_right_count small_10150288_right_encoded = true := by
  decide +kernel
theorem small_10150288_right_covered : CoveredBy scale carrier boxes small_10150288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150288_right_root small_10150288_right_fuel small_10150288_right_count small_10150288_right_encoded small_10150288_right_checked

theorem cover_10150288 : CoveredBy scale carrier boxes root_10150288 := by
  apply coveredBy_split_literal root_10150288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.root_10150293 small_10150288_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682.cover_10150293
  · exact small_10150288_right_covered
#print axioms cover_10150288

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0682
