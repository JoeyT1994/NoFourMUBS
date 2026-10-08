import TaoBundleAssembly0237
import TaoBundleAssembly0238
import TaoBundleChunkBatch0951
import TaoBundleChunkBatch0952
import TaoBundleChunkBatch0953
import TaoBundleChunkBatch0954
import TaoBundleChunkBatch0955
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239
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
  apply coveredBy_split_literal root_10145468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145473 small_10145468_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145473
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
  apply coveredBy_split_literal root_10145467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145468 small_10145467_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145468
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
  apply coveredBy_split_literal root_10145461 small_10145461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145467 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10145461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145467
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
  apply coveredBy_split_literal root_10145017 small_10145017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145461 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10145017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145461
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
  apply coveredBy_split_literal root_10145011 small_10145011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145017 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10145011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145017
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
  apply coveredBy_split_literal root_10144665 small_10144665_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10145011 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10144665_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10145011
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
  apply coveredBy_split_literal root_10144659 small_10144659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10144665 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10144659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10144665
#print axioms cover_10144659

def root_10144658 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10144658 : CoveredBy scale carrier boxes root_10144658 := by
  apply coveredBy_split_literal root_10144658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10144659 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3805.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10144659
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
  apply coveredBy_split_literal root_10144653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10144658 small_10144653_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10144658
  · exact small_10144653_right_covered
#print axioms cover_10144653

def root_10143163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10143163 : CoveredBy scale carrier boxes root_10143163 := by
  apply coveredBy_split_literal root_10143163 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3803.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10144653 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3803.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10144653
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
  apply coveredBy_split_literal root_10143157 small_10143157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10143163 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10143157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10143163
#print axioms cover_10143157

def root_10126267 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126267 : CoveredBy scale carrier boxes root_10126267 := by
  apply coveredBy_split_literal root_10126267 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10126268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10143157 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10126268
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10143157
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
  apply coveredBy_split_literal root_10126262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126267 small_10126262_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126267
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
  apply coveredBy_split_literal root_10150479 small_10150479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150485 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10150479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150485
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
  apply coveredBy_split_literal root_10150437 small_10150437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150479 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10150437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150479
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
  apply coveredBy_split_literal root_10150431 small_10150431_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150437 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10150431_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150437
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
  apply coveredBy_split_literal root_10150430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150431 small_10150430_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150431
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
  apply coveredBy_split_literal root_10150425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150430 small_10150425_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150430
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
  apply coveredBy_split_literal root_10150293 small_10150293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150425 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10150293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150425
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
  apply coveredBy_split_literal root_10150288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150293 small_10150288_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150293
  · exact small_10150288_right_covered
#print axioms cover_10150288

def root_10150287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150287_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150287_right_fuel : Nat := 31
def small_10150287_right_count : Nat := 399
def small_10150287_right_encoded : String := "115224FF0000000408A91301120701000000000008A91303120701020000000108A913050000000812073CFA0000000208A912FF12073D08050000FC135D810704548A01138671000000000004548A0313867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D08000000080000000400000008000000081386AD0004548A0313867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D080C9A86FA000000080F8751050000000200000005000000040000000800000008000000000000000300000008000000040000000812073D02000000080000000112073D0008A91303120701020000000108A91305120700FA08A912FF12073D08050000FC135D81070CFD9C01000000080F350D0004548A031386710200000001000000080000000800000000000000030000000800000004000000080000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9C010F34D1000000000004548A0313867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A87080000000800000008000000020F875105000000020C9A87080F8750FF078000FC128A7D070AD3578110D1010000000000000000050000000500000003000000050000000400000005000000040F34D10800000004000000051386AD020CFD9C05000000080F350CFA000000020CFD9BFF0F350D08000000080000000400000008000000010F350D0004548A0313867102000000010CFD9C050F34D0FA0CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF078000FC128A7D07022A458300000006000000080000000300000008000000040F878CFF00000004000000060F878D010000000800000000000000040F34D1080000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F875101000000000C9A86FA0F878D050C9A87080F8750FF078000FC128A7D07022A458300000006000000060000000300000006000000040F878CFF0000000400000006000000020F875105000000020C9A870800000006000000050F878D010C9A86FA0F878D050C9A87080F8750FF078000FC128A7D07022A458313E1C502000000010DE7CA000000000600000007000000080000000300000008000000040F878CFF00000004078000FC0000000600000005000000020F875105000000020C9A87080F8750FF078000FC128A7D07022A458313E1C5020000000100000005000000050000000300000005000000040000000500000000000000040F34D10800000004000000051386AD020CFD9C050F34D0FA0CFD9BFF0F350D08000000080000000400000008000000020F350CFA000000020CFD9BFF0F350D080C9A87000F875101000000000C9A86FA0F878D050C9A87080F8750FF0000000A000000040F878CFF0000000400000005000000020F87510500000002000000050F878D010C9A86FA0F878D0500000008000000020F875105000000020000000500000000000000040F34D1080000000400000005000000010000000000000003135D4507000000030CFD9C010F34D1000000000004548A0313867102000000010CFD9C05000000080F350CFA0000000200000005000000080F350D0004548A0313867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A8700000000060000000500000004000000051386AD020CFD9C05000000080F350CFA00000002000000050000000100000000000000041207010800000004050000FC135D81070CFD9C010F34D10000000000000000050F350D0004548A03000000060000000500000000000000030000000512073D0208A91305120700FA000000080000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9C010F34D10000000000000000080F350D000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A87000F875101000000000C9A86FA00000008000000050000000800000004000000050F350D0200000008000000010000000000000003135D4507000000030CFD9C01000000080F350D000CFD9C030F34D10200000001000000080000000800000000000000041207010800000004000000080000000100000000"
theorem small_10150287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150287_right_root small_10150287_right_fuel small_10150287_right_count small_10150287_right_encoded = true := by
  decide +kernel
theorem small_10150287_right_covered : CoveredBy scale carrier boxes small_10150287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150287_right_root small_10150287_right_fuel small_10150287_right_count small_10150287_right_encoded small_10150287_right_checked

theorem cover_10150287 : CoveredBy scale carrier boxes root_10150287 := by
  apply coveredBy_split_literal root_10150287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150288 small_10150287_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150288
  · exact small_10150287_right_covered
#print axioms cover_10150287

def root_10150281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150281_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10150281_left_fuel : Nat := 1
def small_10150281_left_count : Nat := 1
def small_10150281_left_encoded : String := "00000003"
theorem small_10150281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10150281_left_root small_10150281_left_fuel small_10150281_left_count small_10150281_left_encoded = true := by
  decide +kernel
theorem small_10150281_left_covered : CoveredBy scale carrier boxes small_10150281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10150281_left_root small_10150281_left_fuel small_10150281_left_count small_10150281_left_encoded small_10150281_left_checked

theorem cover_10150281 : CoveredBy scale carrier boxes root_10150281 := by
  apply coveredBy_split_literal root_10150281 small_10150281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150287 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10150281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150287
#print axioms cover_10150281

def root_10126261 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126261 : CoveredBy scale carrier boxes root_10126261 := by
  apply coveredBy_split_literal root_10126261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10150281 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126262
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10150281
#print axioms cover_10126261

def root_10126256 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126256_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126256_right_fuel : Nat := 1
def small_10126256_right_count : Nat := 1
def small_10126256_right_encoded : String := "00000002"
theorem small_10126256_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126256_right_root small_10126256_right_fuel small_10126256_right_count small_10126256_right_encoded = true := by
  decide +kernel
theorem small_10126256_right_covered : CoveredBy scale carrier boxes small_10126256_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126256_right_root small_10126256_right_fuel small_10126256_right_count small_10126256_right_encoded small_10126256_right_checked

theorem cover_10126256 : CoveredBy scale carrier boxes root_10126256 := by
  apply coveredBy_split_literal root_10126256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126261 small_10126256_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126261
  · exact small_10126256_right_covered
#print axioms cover_10126256

def root_10158199 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158199_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158199_left_fuel : Nat := 22
def small_10158199_left_count : Nat := 267
def small_10158199_left_encoded : String := "0F875101000000000C9A86FC0F878D07078000FA128A7D0507800108128A40FF022A458313E1C502000000010B4D440010801101000000000DE7C9FC000000080000000910804D010DE7C9FC0E60150708C000FA11FC25050640010800000005000000080000000200000008000000030E5FD9070000000308C000FA11FC25050640010812FF70FF01152343000000080000000900000004000000090000000211FBE90500000002000000080000000013E201020B4D440010801101000000000DE7C9FC0E60150700000009000000030000000910804D010DE7C9FC0E60150708C000FA0000000600000006000000030E5FD9070000000308C000FA11FC25050640010812FF70FF0000000600000004000000090000000211FBE9050000000200000009000000000000000100000004128A7CFF00000004022A458313E1C502000000010B4D44000000000910804D010DE7C9FC0E6015070000000900000003000000090000000013E201020B4D44000000000910804D010DE7C9FC0E601507000000090000000300000009000000000000000100000002128A41050000000207800108128A40FF022A45830000000813E201020B4D44000000000910804D0100000009000000000000000100000004128A7CFF0000000400000009000000030F87510700000003078000FA128A7D0507800108128A40FF022A458313E1C502000000010B4D440010801101000000000B4D43FC10804D0700000009000000030000000910804D010B4D43FC10804D0708C000FA11FC25050640010812FF70FF011523430000000813F89502000000090000000100000004000000090000000211FBE905000000020000000900000003108011070000000308C000FA11FC25050640010812FF70FF0115234313F85902000000010BF3E5800000000910092901000000090000000013F895020BF3E580000000091009290100000009000000000000000100000004000000090000000211FBE90500000002000000090000000013E201020B4D440010801101000000000B4D43FC10804D0700000009000000030000000910804D010B4D43FC10804D0708C000FA11FC25050640010812FF70FF033F67C3000000090000000900000004000000090000000211FBE905000000020000000900000003108011070000000308C000FA11FC25050640010812FF70FF033F67C3000000090000000900000004000000090000000211FBE9050000000200000009000000000000000100000004128A7CFF00000004022A458313E1C502000000010B4D44000000000910804D01000000090000000013E201020B4D44000000000910804D010B4D43FC10804D07000000090000000300000009000000000000000100000002128A41050000000207800108128A40FF022A45830000000913E201020B4D44000000000910804D0100000009000000000000000100000004128A7CFF0000000400000009"
theorem small_10158199_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158199_left_root small_10158199_left_fuel small_10158199_left_count small_10158199_left_encoded = true := by
  decide +kernel
theorem small_10158199_left_covered : CoveredBy scale carrier boxes small_10158199_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158199_left_root small_10158199_left_fuel small_10158199_left_count small_10158199_left_encoded small_10158199_left_checked

theorem cover_10158199 : CoveredBy scale carrier boxes root_10158199 := by
  apply coveredBy_split_literal root_10158199 small_10158199_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3808.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10158199_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3808.covered
#print axioms cover_10158199

def root_10158193 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158193_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158193_left_fuel : Nat := 1
def small_10158193_left_count : Nat := 1
def small_10158193_left_encoded : String := "00000003"
theorem small_10158193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158193_left_root small_10158193_left_fuel small_10158193_left_count small_10158193_left_encoded = true := by
  decide +kernel
theorem small_10158193_left_covered : CoveredBy scale carrier boxes small_10158193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158193_left_root small_10158193_left_fuel small_10158193_left_count small_10158193_left_encoded small_10158193_left_checked

theorem cover_10158193 : CoveredBy scale carrier boxes root_10158193 := by
  apply coveredBy_split_literal root_10158193 small_10158193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158199 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10158193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158199
#print axioms cover_10158193

def root_10158061 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158061_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158061_left_fuel : Nat := 13
def small_10158061_left_count : Nat := 63
def small_10158061_left_encoded : String := "0F34D0FC0C9A87000F87510100000000078000FA128A7D0507800108128A40FF022A458313E1C502000000010AD357870000000510D13CFC000000030B4D4400000000050000000A0000000600000004128A7CFF00000004022A458313E1C502000000010AD357870000000910D13CFC000000030000000913E201020AD357870000000910D13CFC00000003000000090000000100000002128A41050000000207800108128A40FF022A4583000000080000000600000004128A7CFF00000004000000090F878D01078000FA128A7D050780010800000006128A7CFF00000004022A45830000000A00000006000000020000000A0000000000000003"
theorem small_10158061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158061_left_root small_10158061_left_fuel small_10158061_left_count small_10158061_left_encoded = true := by
  decide +kernel
theorem small_10158061_left_covered : CoveredBy scale carrier boxes small_10158061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158061_left_root small_10158061_left_fuel small_10158061_left_count small_10158061_left_encoded small_10158061_left_checked

theorem cover_10158061 : CoveredBy scale carrier boxes root_10158061 := by
  apply coveredBy_split_literal root_10158061 small_10158061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158193 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10158061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158193
#print axioms cover_10158061

def root_10158055 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158055_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158055_left_fuel : Nat := 1
def small_10158055_left_count : Nat := 1
def small_10158055_left_encoded : String := "00000001"
theorem small_10158055_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158055_left_root small_10158055_left_fuel small_10158055_left_count small_10158055_left_encoded = true := by
  decide +kernel
theorem small_10158055_left_covered : CoveredBy scale carrier boxes small_10158055_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158055_left_root small_10158055_left_fuel small_10158055_left_count small_10158055_left_encoded small_10158055_left_checked

theorem cover_10158055 : CoveredBy scale carrier boxes root_10158055 := by
  apply coveredBy_split_literal root_10158055 small_10158055_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158061 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10158055_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158061
#print axioms cover_10158055

def root_10158054 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158054_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158054_right_fuel : Nat := 21
def small_10158054_right_count : Nat := 253
def small_10158054_right_encoded : String := "1386AD020CFD9C070F34D0FC0C9A87000F87510100000000078000FA00000006128A4105000000020780010800000006128A7CFF00000004067ECE83000000090000000600000006000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D07078000FA128A7D0507800108128A40FF067ECE8312EA5902000000010B4D440010801101000000000DE7C9FC0E601507000000060000000300000009000000060000000600000004128A7CFF00000004067ECE8312EA5902000000010B4D44000000000910804D010DE7C9FC0E6015070000000900000003000000090000000012EA95020B4D440000000009000000060000000100000002128A41050000000207800108128A40FF067ECE8312EA5902000000010B4D440000000009000000060000000600000004128A7CFF00000004067ECE830000000900000009000000030F87510700000003078000FA128A7D0507800108128A40FF067ECE8312EA5902000000010B4D440010801101000000000B4D43FC10804D0700000009000000030000000910804D010B4D43FC10804D0708C000FA11FC25050640010800000006000000090000000211FBE905000000020000000900000003108011070000000308C000FA0000000A000000050000000012EA95020B4D44000000000710804D0100000007000000000000000100000004128A7CFF00000004067ECE8312EA5902000000010B4D440000000009000000050000000500000002128A41050000000207800108128A40FF067ECE8312EA5902000000010B4D440000000007000000050000000500000004000000050F878D010C9A86FC0F878D07078000FA128A7D050780010800000006128A7CFF00000004067ECE8312EA5902000000010DE7CA000E5FD901000000000DE7C9FC0E60150700000006000000030E5FD9070000000308C000FA11FC250508C0010800000006000000090000000200000009000000060000000600000002128A4105000000020780010800000006128A7CFF00000004067ECE8312EA5902000000010DE7CA000E5FD90100000000000000090000000600000006000000030F87510700000003078000FA128A7D0507800108128A40FF067ECE8312EA5902000000010DE7CA000E5FD901000000000B4D43FC10804D070000000600000003108011070000000308C000FA11FC25050640010800000006000000050000000200000005000000060000000600000004128A7CFF00000004067ECE8312EA5902000000010DE7CA000E5FD9010000000000000005000000050000000500000002128A41050000000207800108128A40FF067ECE8312EA5902000000010DE7CA000E5FD9010000000000000005000000050000000500000004000000050000000000000001"
theorem small_10158054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158054_right_root small_10158054_right_fuel small_10158054_right_count small_10158054_right_encoded = true := by
  decide +kernel
theorem small_10158054_right_covered : CoveredBy scale carrier boxes small_10158054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158054_right_root small_10158054_right_fuel small_10158054_right_count small_10158054_right_encoded small_10158054_right_checked

theorem cover_10158054 : CoveredBy scale carrier boxes root_10158054 := by
  apply coveredBy_split_literal root_10158054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158055 small_10158054_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158055
  · exact small_10158054_right_covered
#print axioms cover_10158054

def root_10158049 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158049_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10158049_right_fuel : Nat := 1
def small_10158049_right_count : Nat := 1
def small_10158049_right_encoded : String := "00000000"
theorem small_10158049_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10158049_right_root small_10158049_right_fuel small_10158049_right_count small_10158049_right_encoded = true := by
  decide +kernel
theorem small_10158049_right_covered : CoveredBy scale carrier boxes small_10158049_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10158049_right_root small_10158049_right_fuel small_10158049_right_count small_10158049_right_encoded small_10158049_right_checked

theorem cover_10158049 : CoveredBy scale carrier boxes root_10158049 := by
  apply coveredBy_split_literal root_10158049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158054 small_10158049_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158054
  · exact small_10158049_right_covered
#print axioms cover_10158049

def root_10157477 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10157477_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10157477_left_fuel : Nat := 32
def small_10157477_left_count : Nat := 267
def small_10157477_left_encoded : String := "0F34D1000000000004548A0313867102000000010CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC0F878D07078000FA128A7D0507800108128A40FF0000000600000004128A7CFF000000040AD3578110D10100000000000000000A10D13D00022A45830000000A13E201020DE7C9FC000000060E5FD90700000003000000060000000100000000000000020000000A000000030F87510700000003078000FA128A7D0507800108128A40FF0AD3578110D1010000000000022A45830000000A0000000610D13D00022A458313E1C502000000010B4D43FC10804D0708C000FA11FC25050000000A000000020000000A00000003108011070000000308C000FA11FC25050640010812FF70FF0BE879C11011710000000000000000061011AD000115234313F85902000000010AA6A27C0000000A10ED710700000003096000FA11AABD0505A0010800000006133170FF000000040000000A000000020000000A00000006000000000000000412FFACFF000000040BE879C110117100000000000000000A1011AD000115234313F85902000000010AA6A27C0000000A10ED7107000000030000000513F895020AA6A27C10EDAD07096000FA0000000600000005000000030000000500000001000000000000000211FBE905000000020640010812FF70FF0BE879C10000000A0000000A0000000412FFACFF000000040BE879C10000000A0000000513E201020B4D43FC00000006108011070000000308C000FA0000000611FBE9050000000200000006000000010000000000000004128A7CFF000000040AD3578110D1010000000000022A45830000000A13E201020B4D43FC10804D070000000600000003000000050000000110D13D00022A458313E1C502000000010B4D43FC10804D0708C000FA11FC25050000000A000000020000000A00000003108011070000000308C000FA11FC250508C0010811FBE8FF0BE879C1101171000000000000000005000000050000000400000005000000020000000513E201020B4D43FC10804D0708C000FA11FC250508C0010811FBE8FF00000006000000040000000500000002000000050000000300000005000000010000000000000002128A41050000000207800108128A40FF0AD3578110D10100000000000000000A10D13D00022A45830000000A13E201020B4D43FC0000000600000005000000010000000000000004128A7CFF000000040AD3578110D101000000000000000005000000051386AD020CFD9C07000000060F350CFC000000030C9A86FC0F878D0700000006000000030F87510700000003078000FA128A7D050780010800000006128A7CFF000000040AD3578110D10100000000000000000610D13D00067ECE8312EA5902000000010B4D43FC10804D07000000060000000300000005000000050000000000000002128A41050000000207800108000000060000000500000001"
theorem small_10157477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10157477_left_root small_10157477_left_fuel small_10157477_left_count small_10157477_left_encoded = true := by
  decide +kernel
theorem small_10157477_left_covered : CoveredBy scale carrier boxes small_10157477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10157477_left_root small_10157477_left_fuel small_10157477_left_count small_10157477_left_encoded small_10157477_left_checked

theorem cover_10157477 : CoveredBy scale carrier boxes root_10157477 := by
  apply coveredBy_split_literal root_10157477 small_10157477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10158049 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10157477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10158049
#print axioms cover_10157477

def root_10157471 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10157471_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10157471_left_fuel : Nat := 1
def small_10157471_left_count : Nat := 1
def small_10157471_left_encoded : String := "00000004"
theorem small_10157471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10157471_left_root small_10157471_left_fuel small_10157471_left_count small_10157471_left_encoded = true := by
  decide +kernel
theorem small_10157471_left_covered : CoveredBy scale carrier boxes small_10157471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10157471_left_root small_10157471_left_fuel small_10157471_left_count small_10157471_left_encoded small_10157471_left_checked

theorem cover_10157471 : CoveredBy scale carrier boxes root_10157471 := by
  apply coveredBy_split_literal root_10157471 small_10157471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10157477 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10157471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10157477
#print axioms cover_10157471

def root_10155017 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10155017 : CoveredBy scale carrier boxes root_10155017 := by
  apply coveredBy_split_literal root_10155017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3807.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10157471 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3807.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10157471
#print axioms cover_10155017

def root_10155012 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155012_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10155012_right_fuel : Nat := 1
def small_10155012_right_count : Nat := 1
def small_10155012_right_encoded : String := "00000002"
theorem small_10155012_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10155012_right_root small_10155012_right_fuel small_10155012_right_count small_10155012_right_encoded = true := by
  decide +kernel
theorem small_10155012_right_covered : CoveredBy scale carrier boxes small_10155012_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10155012_right_root small_10155012_right_fuel small_10155012_right_count small_10155012_right_encoded small_10155012_right_checked

theorem cover_10155012 : CoveredBy scale carrier boxes root_10155012 := by
  apply coveredBy_split_literal root_10155012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10155017 small_10155012_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10155017
  · exact small_10155012_right_covered
#print axioms cover_10155012

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
  apply coveredBy_split_literal root_10155011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10155012 small_10155011_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10155012
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
  apply coveredBy_split_literal root_10155005 small_10155005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10155011 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10155005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10155011
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
  apply coveredBy_split_literal root_10154987 small_10154987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10155005 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10154987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10155005
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
  apply coveredBy_split_literal root_10154981 small_10154981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154987 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10154981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154987
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
  apply coveredBy_split_literal root_10154980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154981 small_10154980_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154981
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
  apply coveredBy_split_literal root_10154975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154980 small_10154975_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154980
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
  apply coveredBy_split_literal root_10154783 small_10154783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154975 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10154783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154975
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
  apply coveredBy_split_literal root_10154778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154783 small_10154778_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154783
  · exact small_10154778_right_covered
#print axioms cover_10154778

def root_10154777 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10154777 : CoveredBy scale carrier boxes root_10154777 := by
  apply coveredBy_split_literal root_10154777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3809.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154778
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
  apply coveredBy_split_literal root_10154772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154777 small_10154772_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154777
  · exact small_10154772_right_covered
#print axioms cover_10154772

def root_10154771 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10154771 : CoveredBy scale carrier boxes root_10154771 := by
  apply coveredBy_split_literal root_10154771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3810.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154772
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
  apply coveredBy_split_literal root_10154765 small_10154765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154771 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10154765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154771
#print axioms cover_10154765

def root_10126255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126255 : CoveredBy scale carrier boxes root_10126255 := by
  apply coveredBy_split_literal root_10126255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10154765 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126256
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10154765
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
  apply coveredBy_split_literal root_10126250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126255 small_10126250_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126255
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
  apply coveredBy_split_literal root_10125668 small_10125668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10126250 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10125668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10126250
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
  apply coveredBy_split_literal root_10125663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10125668 small_10125663_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10125668
  · exact small_10125663_right_covered
#print axioms cover_10125663

def root_10112561 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112561 : CoveredBy scale carrier boxes root_10112561 := by
  apply coveredBy_split_literal root_10112561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10112562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10125663 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10112562
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10125663
#print axioms cover_10112561

def root_10112560 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10112560 : CoveredBy scale carrier boxes root_10112560 := by
  apply coveredBy_split_literal root_10112560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10112561 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3811.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10112561
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3811.covered
#print axioms cover_10112560

def root_10068952 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10068952 : CoveredBy scale carrier boxes root_10068952 := by
  apply coveredBy_split_literal root_10068952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.root_10068953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10112560 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0238.cover_10068953
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10112560
#print axioms cover_10068952

def root_10058534 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10058534 : CoveredBy scale carrier boxes root_10058534 := by
  apply coveredBy_split_literal root_10058534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10058535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10068952 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10058535
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10068952
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
  apply coveredBy_split_literal root_10173248 small_10173248_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10173254 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10173248_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10173254
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
  apply coveredBy_split_literal root_10180283 small_10180283_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10180289 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10180283_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10180289
#print axioms cover_10180283

def root_10179615 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179615_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179615_left_fuel : Nat := 25
def small_10179615_left_count : Nat := 315
def small_10179615_left_encoded : String := "120700FA08A912FD12073D0608A91309120700FE04548A01000000051386AD0000000005000000000000000412073CFE0000000404548A01138671000000000004548A03138671020000000104548A050000000A1386ACFA000000020CFD9BFD0F350D060CFD9C090F34D0FE000000050000000400000007000000030F34D106000000030CFD9C090F34D0FE00000009000000040000000A1386AD0204548A050000000A1386ACFA000000020CFD9BFD0F350D060000000A000000030000000A000000011386AD0004548A03138671020000000104548A05000000071386ACFA000000020CFD9BFD000000070F34D106000000030CFD9C090F34D0FE067ECE8112EA590000000000022A45830000000913E20102067ECE850000000712EA94FA000000020AD3577D0000000700000009000000010000000700000004000000071386AD0204548A05138670FA00000007000000021386ACFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9C090F34D0FE067ECE8112EA590000000000067ECE8312EA590200000001067ECE850000000712EA94FA000000020000000A0000000A00000007000000040F350CFE000000040000000A000000010000000000000003120701060000000308A91309120700FE04548A01138671000000000004548A03000000091386AD0204548A05138670FA000000090000000200000009000000011386AD0004548A03138671020000000104548A05138670FA0000000900000002000000091386AD0204548A05138670FA045489FD0000000500000009000000021386ACFA00000002045489FD1386AD0604548A09138670FE00000005000000041386ACFE00000004067ECE8112EA5900000000000000000912EA9500067ECE8312EA5902000000010000000912EA9502067ECE8512EA58FA067ECE7D00000005000000090000000212EA94FA00000002067ECE7D12EA9506067ECE8900000005000000090000000300000009000000010000000000000003138671060000000304548A09000000090000000900000001000000000000000412073CFE0000000404548A01138671000000000004548A03138671020000000104548A050000000A1386ACFA00000002045489FD1386AD060CFD9C09000000090000000900000003000000091386AD0204548A050000000A1386ACFA00000002045489FD0000000A0000000A000000011386AD0004548A03138671020000000104548A05138670FA045489FD1386AD060CFD9C090F34D0FE0000000600000004000000060000000300000006000000021386ACFA00000002045489FD1386AD060CFD9C090F34D0FE00000009000000040000000600000003000000061386AD0204548A05138670FA045489FD0000000A0000000A000000021386ACFA00000002045489FD1386AD060CFD9C090F34D0FE067ECE8112EA590000000000067ECE83000000090000000A12EA9500067ECE8312EA590200000001067ECE8512EA58FA000000090000000212EA94FA00000002067ECE7D12EA95060AD357890000000900000007000000030000000912EA9502067ECE850000000A12EA94FA00000002067ECE7D12EA95060000000A000000030000000A0000000100000000000000040F350CFE000000040000000A0000000313867106000000030CFD9C090F34D0FE067ECE810000000912EA950000000009000000000000000400000006000000010000000000000002"
theorem small_10179615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179615_left_root small_10179615_left_fuel small_10179615_left_count small_10179615_left_encoded = true := by
  decide +kernel
theorem small_10179615_left_covered : CoveredBy scale carrier boxes small_10179615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179615_left_root small_10179615_left_fuel small_10179615_left_count small_10179615_left_encoded small_10179615_left_checked

theorem cover_10179615 : CoveredBy scale carrier boxes root_10179615 := by
  apply coveredBy_split_literal root_10179615 small_10179615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10180283 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10179615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10180283
#print axioms cover_10179615

def root_10179609 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179609_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179609_left_fuel : Nat := 1
def small_10179609_left_count : Nat := 1
def small_10179609_left_encoded : String := "00000001"
theorem small_10179609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179609_left_root small_10179609_left_fuel small_10179609_left_count small_10179609_left_encoded = true := by
  decide +kernel
theorem small_10179609_left_covered : CoveredBy scale carrier boxes small_10179609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179609_left_root small_10179609_left_fuel small_10179609_left_count small_10179609_left_encoded small_10179609_left_checked

theorem cover_10179609 : CoveredBy scale carrier boxes root_10179609 := by
  apply coveredBy_split_literal root_10179609 small_10179609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10179615 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10179609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10179615
#print axioms cover_10179609

def root_10179608 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10179608 : CoveredBy scale carrier boxes root_10179608 := by
  apply coveredBy_split_literal root_10179608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10179609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3817.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10179609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3817.covered
#print axioms cover_10179608

def root_10179602 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179602_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179602_left_fuel : Nat := 1
def small_10179602_left_count : Nat := 1
def small_10179602_left_encoded : String := "00000000"
theorem small_10179602_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179602_left_root small_10179602_left_fuel small_10179602_left_count small_10179602_left_encoded = true := by
  decide +kernel
theorem small_10179602_left_covered : CoveredBy scale carrier boxes small_10179602_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179602_left_root small_10179602_left_fuel small_10179602_left_count small_10179602_left_encoded small_10179602_left_checked

theorem cover_10179602 : CoveredBy scale carrier boxes root_10179602 := by
  apply coveredBy_split_literal root_10179602 small_10179602_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10179608 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10179602_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10179608
#print axioms cover_10179602

def root_10191797 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10191797 : CoveredBy scale carrier boxes root_10191797 := by
  apply coveredBy_split_literal root_10191797 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3819.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3820.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3819.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3820.covered
#print axioms cover_10191797

def root_10191792 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191792_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(14107392), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191792_right_fuel : Nat := 1
def small_10191792_right_count : Nat := 1
def small_10191792_right_encoded : String := "00000001"
theorem small_10191792_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10191792_right_root small_10191792_right_fuel small_10191792_right_count small_10191792_right_encoded = true := by
  decide +kernel
theorem small_10191792_right_covered : CoveredBy scale carrier boxes small_10191792_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10191792_right_root small_10191792_right_fuel small_10191792_right_count small_10191792_right_encoded small_10191792_right_checked

theorem cover_10191792 : CoveredBy scale carrier boxes root_10191792 := by
  apply coveredBy_split_literal root_10191792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10191797 small_10191792_right_root coord1 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10191797
  · exact small_10191792_right_covered
#print axioms cover_10191792

def root_10191476 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191476_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191476_left_fuel : Nat := 17
def small_10191476_left_count : Nat := 151
def small_10191476_left_encoded : String := "10D1010200000001067ECE8512EA58FA022A457D13E20106067ECE8912EA58FE0BE879C1101171000000000009BE35430000000911777D020569AC450000000500000009000000011011AD0009BE354311774102000000010000000811777D020569AC4500000005134110FA000000020000000800000001000000000000000412EA94FE000000040BE879C1101171000000000009BE354311774102000000010000000911777D020569AC4500000007134110FA00000002033F67BD000000070000000900000001000000070000000313E1C50600000003067ECE8912EA58FE0BE879C1000000091011AD0000000009000000000000000412EA94FE000000040BE879C1000000091011AD0000000006000000000000000212EA94FA00000002022A457D13E20106067ECE8912EA58FE0BE879C100000008000000080000000412EA94FE000000040BE879C1101171000000000009BE354311774102000000010793F0C5000000090000000811777D020793F0C5128220FA033F67BD13BC31060793F0C9000000080000000700000003000000090000000212825CFA00000002033F67BD0000000800000008000000011011AD0009BE35430000000811777D020793F0C5128220FA033F67BD0000000713BBF506000000030793F0C90000000800000007000000020000000800000001000000000000000313E1C50600000003067ECE8912EA58FE0BE879C100000008000000080000000412EA94FE000000040BE879C11011710000000000000000091011AD0009BE35430000000811777D020793F0C5128220FA0000000900000002000000080000000100000000"
theorem small_10191476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10191476_left_root small_10191476_left_fuel small_10191476_left_count small_10191476_left_encoded = true := by
  decide +kernel
theorem small_10191476_left_covered : CoveredBy scale carrier boxes small_10191476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10191476_left_root small_10191476_left_fuel small_10191476_left_count small_10191476_left_encoded small_10191476_left_checked

theorem cover_10191476 : CoveredBy scale carrier boxes root_10191476 := by
  apply coveredBy_split_literal root_10191476 small_10191476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10191792 coord1 true (9081120)
  · decide +kernel
  · decide +kernel
  · exact small_10191476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10191792
#print axioms cover_10191476

def root_10191471 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191471_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10191471_right_fuel : Nat := 1
def small_10191471_right_count : Nat := 1
def small_10191471_right_encoded : String := "00000000"
theorem small_10191471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10191471_right_root small_10191471_right_fuel small_10191471_right_count small_10191471_right_encoded = true := by
  decide +kernel
theorem small_10191471_right_covered : CoveredBy scale carrier boxes small_10191471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10191471_right_root small_10191471_right_fuel small_10191471_right_count small_10191471_right_encoded small_10191471_right_checked

theorem cover_10191471 : CoveredBy scale carrier boxes root_10191471 := by
  apply coveredBy_split_literal root_10191471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.root_10191476 small_10191471_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239.cover_10191476
  · exact small_10191471_right_covered
#print axioms cover_10191471

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0239
