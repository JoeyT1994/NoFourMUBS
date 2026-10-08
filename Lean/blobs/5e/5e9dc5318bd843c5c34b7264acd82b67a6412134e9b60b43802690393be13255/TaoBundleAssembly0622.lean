import TaoBundleAssembly0621
import TaoBundleChunkBatch0854
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622
def root_9118081 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118081_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118081_left_fuel : Nat := 26
def small_9118081_left_count : Nat := 335
def small_9118081_left_encoded : String := "0F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A87060000000800000008000000040F350CFE000000040C9A87060F8750FD0C9A86FE0F878D090AD3578100000007000000070000000400000007000000030F878CFD0000000300000008000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8706000000070F878CFD0000000300000007000000040F350CFE0000000400000007000000030F34D106000000030CFD9C09000000070000000700000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A86F80F878D030C9A87060F8750FD0AD3578110D101000000000000000008000000080000000300000008000000010F875103000000010C9A87060F8750FD0AD3578100000009000000090000000300000008000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE0F878D090AD3578110D10100000000000000000800000008000000040F875109000000040AD357810000000710D13D00022A4585000000080000000700000000000000030F878CFD000000030C9A86FE000000080F8751090000000400000008000000010F875103000000010C9A87060F8750FD0C9A86FE0F878D090AD3578110D1010000000000022A45850000000813E201040B4D43F8000000081080110300000001000000090000000210D13D00022A45850000000813E201040B4D43F80000000810801103000000010B4D4406108010FD0DE7C9FE000000080E5FD909000000040000000800000003000000080000000200000000000000040F875109000000040AD3578110D1010000000000022A4585000000080000000710D13D00022A45850000000813E201040B4D43F810804D0300000007000000011080110300000001000000050000000200000000000000030F878CFD000000030C9A86FE000000080F8751090000000400000008000000030F34D106000000030CFD9C090F34D0FE0000000800000004000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A86F80F878D030C9A87060F8750FD00000006000000030F878CFD000000030AD3578110D1010000000000067ECE85000000080000000610D13D00067ECE850000000812EA9504000000070000000200000000000000010F875103000000010C9A87060F8750FD00000006000000030F878CFD000000030AD3578110D10100000000000000000610D13D00067ECE85000000080000000600000000000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE0F878D09000000070000000400000007000000030F878CFD000000030C9A86FE0F878D09000000070000000400000007000000010F875103000000010C9A87060F8750FD0C9A86FE0F878D090AD3578110D10100000000000000000610D13D00067ECE8512EA5904000000020B4D43F810804D030B4D440600000007000000070000000110801103000000010B4D44060000000610804CFD000000030DE7C9FE00000006000000050000000600000000000000040F875109000000040AD357810000000700000007000000030F878CFD000000030C9A86FE0F878D090AD3578110D10100000000000000000710D13D00067ECE85000000080000000700000000000000040F8751090000000400000005000000030F34D106000000030CFD9C090F34D0FE0C9A86F8000000080F8751030000000100000008000000040F350CFE000000040C9A86F80F878D0300000007000000010F875103000000010000000500000002"
theorem small_9118081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9118081_left_root small_9118081_left_fuel small_9118081_left_count small_9118081_left_encoded = true := by
  decide +kernel
theorem small_9118081_left_covered : CoveredBy scale carrier boxes small_9118081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9118081_left_root small_9118081_left_fuel small_9118081_left_count small_9118081_left_encoded small_9118081_left_checked

theorem cover_9118081 : CoveredBy scale carrier boxes root_9118081 := by
  apply coveredBy_split_literal root_9118081 small_9118081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3415.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9118081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3415.covered
#print axioms cover_9118081

def root_9118075 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118075_left_fuel : Nat := 1
def small_9118075_left_count : Nat := 1
def small_9118075_left_encoded : String := "00000004"
theorem small_9118075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9118075_left_root small_9118075_left_fuel small_9118075_left_count small_9118075_left_encoded = true := by
  decide +kernel
theorem small_9118075_left_covered : CoveredBy scale carrier boxes small_9118075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9118075_left_root small_9118075_left_fuel small_9118075_left_count small_9118075_left_encoded small_9118075_left_checked

theorem cover_9118075 : CoveredBy scale carrier boxes root_9118075 := by
  apply coveredBy_split_literal root_9118075 small_9118075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9118081 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9118075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9118081
#print axioms cover_9118075

def root_9117713 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117713_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117713_left_fuel : Nat := 18
def small_9117713_left_count : Nat := 169
def small_9117713_left_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060000000500000003000000081386AD040CFD9BFD0F350D0600000006000000030F34D106000000030000000800000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0604548A09000000061386ACFE000000040C9A86F8000000080000000900000003000000091386AD040CFD9BFD000000060F34D1060000000304548A090000000600000008000000020F350D000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060000000500000003000000081386AD040CFD9BFD0F350D0604548A09000000051386ACFE000000040C9A8700000000050F878D010C9A8706000000050000000800000000000000030F34D106000000030000000800000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0604548A09138670FE0C9A87000000000500000009000000041386ACFE000000040C9A87000F875101000000000C9A86F8000000080F875103000000010C9A870600000008000000080F878D010C9A86F8000000080000000900000000000000030F34D10600000003000000081386AD040CFD9BFD0F350D0604548A09000000061386ACFE000000040C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD00000005000000030F878CFD0000000300000008000000010F875103000000010C9A87060F8750FD00000006000000030F878CFD000000030000000A0F878D010C9A86F8000000060F875103000000010000000600000000000000030F34D1060000000304548A09138670FE0C9A87000000000A00000008000000041386ACFE000000040C9A87000F875101000000000000000800000008000000020000000000000004"
theorem small_9117713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117713_left_root small_9117713_left_fuel small_9117713_left_count small_9117713_left_encoded = true := by
  decide +kernel
theorem small_9117713_left_covered : CoveredBy scale carrier boxes small_9117713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117713_left_root small_9117713_left_fuel small_9117713_left_count small_9117713_left_encoded small_9117713_left_checked

theorem cover_9117713 : CoveredBy scale carrier boxes root_9117713 := by
  apply coveredBy_split_literal root_9117713 small_9117713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9118075 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9117713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9118075
#print axioms cover_9117713

def root_9117708 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117708_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117708_right_fuel : Nat := 1
def small_9117708_right_count : Nat := 1
def small_9117708_right_encoded : String := "00000003"
theorem small_9117708_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117708_right_root small_9117708_right_fuel small_9117708_right_count small_9117708_right_encoded = true := by
  decide +kernel
theorem small_9117708_right_covered : CoveredBy scale carrier boxes small_9117708_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117708_right_root small_9117708_right_fuel small_9117708_right_count small_9117708_right_encoded small_9117708_right_checked

theorem cover_9117708 : CoveredBy scale carrier boxes root_9117708 := by
  apply coveredBy_split_literal root_9117708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117713 small_9117708_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117713
  · exact small_9117708_right_covered
#print axioms cover_9117708

def root_9117707 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117707_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117707_right_fuel : Nat := 14
def small_9117707_right_count : Nat := 61
def small_9117707_right_encoded : String := "120701060000000308A91309120700FE0CFD9C010F34D10000000000000000080F350D000CFD9C030000000800000008000000000000000412073CFE000000040CFD9C010F34D100000000000CFD9C030F34D0F800000008000000010F350CF80000000104548A05000000081386AD04045489FD1386AD060CFD9C090F34D0FE0000000800000004000000080000000300000008000000020F350D000CFD9C030F34D0F800000008000000010F350CF80000000104548A05000000081386AD04045489FD1386AD060CFD9C090F34D0FE00000008000000040F350CFE0000000400000005000000030000000A0000000200000000"
theorem small_9117707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117707_right_root small_9117707_right_fuel small_9117707_right_count small_9117707_right_encoded = true := by
  decide +kernel
theorem small_9117707_right_covered : CoveredBy scale carrier boxes small_9117707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117707_right_root small_9117707_right_fuel small_9117707_right_count small_9117707_right_encoded small_9117707_right_checked

theorem cover_9117707 : CoveredBy scale carrier boxes root_9117707 := by
  apply coveredBy_split_literal root_9117707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117708 small_9117707_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117708
  · exact small_9117707_right_covered
#print axioms cover_9117707

def root_9117701 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117701_left_fuel : Nat := 1
def small_9117701_left_count : Nat := 1
def small_9117701_left_encoded : String := "00000002"
theorem small_9117701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117701_left_root small_9117701_left_fuel small_9117701_left_count small_9117701_left_encoded = true := by
  decide +kernel
theorem small_9117701_left_covered : CoveredBy scale carrier boxes small_9117701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117701_left_root small_9117701_left_fuel small_9117701_left_count small_9117701_left_encoded small_9117701_left_checked

theorem cover_9117701 : CoveredBy scale carrier boxes root_9117701 := by
  apply coveredBy_split_literal root_9117701 small_9117701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117707 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9117701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117707
#print axioms cover_9117701

def root_9117700 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9117700 : CoveredBy scale carrier boxes root_9117700 := by
  apply coveredBy_split_literal root_9117700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3416.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117701
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3416.covered
#print axioms cover_9117700

def root_9117694 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117694_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117694_left_fuel : Nat := 1
def small_9117694_left_count : Nat := 1
def small_9117694_left_encoded : String := "00000001"
theorem small_9117694_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117694_left_root small_9117694_left_fuel small_9117694_left_count small_9117694_left_encoded = true := by
  decide +kernel
theorem small_9117694_left_covered : CoveredBy scale carrier boxes small_9117694_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117694_left_root small_9117694_left_fuel small_9117694_left_count small_9117694_left_encoded small_9117694_left_checked

theorem cover_9117694 : CoveredBy scale carrier boxes root_9117694 := by
  apply coveredBy_split_literal root_9117694 small_9117694_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117700 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9117694_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117700
#print axioms cover_9117694

def root_9117162 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117162_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117162_left_fuel : Nat := 23
def small_9117162_left_count : Nat := 243
def small_9117162_left_encoded : String := "120700F808A91305120701040000000208A912FD12073D0608A91309120700FE0CFD9C010F34D1000000000004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD0000000500000007000000020F350D0004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD000000050F34D106000000030000000800000002000000000000000412073CFE000000040CFD9C010F34D1000000000004548A03138670F804548A0513867104000000020000000700000007000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE0000000400000007000000030F34D10600000003000000071386AD040CFD9BFD0F350D06000000070000000300000007000000020F350D0004548A03138670F804548A0513867104000000020CFD9BFD0F350D060CFD9C09000000050F350CFE0000000400000007000000030F34D10600000003000000071386AD040CFD9BFD0F350D0600000007000000030000000700000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A87060F8750FD0C9A86FE000000050000000700000003000000080F878D010000000700000000000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A87000000000500000007000000040F350CFE0000000400000007000000030F34D106000000030CFD9C090000000700000007000000020000000000000003120701060000000308A91309120700FE000000080000000412073CFE000000040CFD9C010F34D10000000000000000070F350D0004548A0300000007000000080000000012073D0408A912FD12073D0608A91309120700FE0CFD9C010F34D10000000000000000070F350D0004548A03138670F80CFD9C050000000500000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060000000500000003000000070F350D040000000700000002000000000000000412073CFE000000040CFD9C010F34D10000000000000000070F350D0004548A03138670F800000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D06000000070000000300000007000000070000000000000003120701060000000308A91309120700FE0CFD9C010F34D1000000000004548A03000000071386ACF800000001000000070F350D00000000070000000000000004000000070000000200000001"
theorem small_9117162_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117162_left_root small_9117162_left_fuel small_9117162_left_count small_9117162_left_encoded = true := by
  decide +kernel
theorem small_9117162_left_covered : CoveredBy scale carrier boxes small_9117162_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117162_left_root small_9117162_left_fuel small_9117162_left_count small_9117162_left_encoded small_9117162_left_checked

theorem cover_9117162 : CoveredBy scale carrier boxes root_9117162 := by
  apply coveredBy_split_literal root_9117162 small_9117162_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117694 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9117162_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117694
#print axioms cover_9117162

def root_9117157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117157_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117157_right_fuel : Nat := 1
def small_9117157_right_count : Nat := 1
def small_9117157_right_encoded : String := "00000000"
theorem small_9117157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117157_right_root small_9117157_right_fuel small_9117157_right_count small_9117157_right_encoded = true := by
  decide +kernel
theorem small_9117157_right_covered : CoveredBy scale carrier boxes small_9117157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117157_right_root small_9117157_right_fuel small_9117157_right_count small_9117157_right_encoded small_9117157_right_checked

theorem cover_9117157 : CoveredBy scale carrier boxes root_9117157 := by
  apply coveredBy_split_literal root_9117157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117162 small_9117157_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117162
  · exact small_9117157_right_covered
#print axioms cover_9117157

def root_9115655 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9115655 : CoveredBy scale carrier boxes root_9115655 := by
  apply coveredBy_split_literal root_9115655 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3414.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9117157 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3414.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9117157
#print axioms cover_9115655

def root_9115650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115650_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115650_right_fuel : Nat := 1
def small_9115650_right_count : Nat := 1
def small_9115650_right_encoded : String := "00000004"
theorem small_9115650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115650_right_root small_9115650_right_fuel small_9115650_right_count small_9115650_right_encoded = true := by
  decide +kernel
theorem small_9115650_right_covered : CoveredBy scale carrier boxes small_9115650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115650_right_root small_9115650_right_fuel small_9115650_right_count small_9115650_right_encoded small_9115650_right_checked

theorem cover_9115650 : CoveredBy scale carrier boxes root_9115650 := by
  apply coveredBy_split_literal root_9115650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9115655 small_9115650_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9115655
  · exact small_9115650_right_covered
#print axioms cover_9115650

def root_9115649 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115649_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115649_right_fuel : Nat := 31
def small_9115649_right_count : Nat := 397
def small_9115649_right_encoded : String := "1151E9090000000408A91301120701000000000008A91303120700F8000000070000000112073CF80000000108A91305120701040000000208A912FD12073D06050000FE135D810904548A0113867100000000000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D06000000070000000300000007000000071386AD000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F8000000070F8751030000000100000005000000030000000700000007000000000000000400000007000000030000000712073D04000000070000000212073D0008A91303120700F808A91305120701040000000208A912FD12073D06050000FE135D81090CFD9C01000000070F350D0004548A03000000071386ACF80000000104548A05138671040000000200000007000000070000000000000004000000070000000300000007000000070000000112073CF80000000108A91305120701040000000208A912FD12073D06050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D0F800000007000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000700000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090AD3578110D1010000000000000000050000000500000004000000050000000300000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D06000000070000000300000007000000020F350D000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A87060F8750FD078000FE128A7D090AD3578300000006000000090000000400000007000000030F878CFD00000003000000060F878D010000000700000000000000030F34D10600000003000000061386AD040CFD9BFD0F350D0600000007000000030000000700000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD078000FE128A7D09022A458500000006000000060000000400000006000000030F878CFD0000000300000006000000010F875103000000010C9A870600000006000000050F878D010C9A86F80F878D030C9A87060F8750FD078000FE128A7D09022A458513E1C504000000020DE7CA000000000600000007000000070000000400000007000000030F878CFD00000003078000FE0000000600000005000000010F875103000000010C9A87060F8750FD078000FE128A7D09022A458513E1C5040000000200000005000000050000000400000005000000030000000500000000000000030F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD00000009000000030F878CFD0000000300000005000000010F87510300000001000000050F878D010C9A86F80F878D0300000007000000010F875103000000010000000500000000000000030F34D1060000000300000005000000020000000000000004135D4509000000040CFD9C010F34D100000000000CFD9C03000000070F350CF800000001000000050F350D000CFD9C030F34D0F804548A0513867104000000020000000700000007000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A8700000000060000000500000003000000050000000500000000000000031207010600000003050000FE135D81090CFD9C010F34D10000000000000000050F350D000CFD9C03000000060000000500000000000000040000000512073D0408A912FD12073D06050000FE135D81090CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A86F800000007000000050000000700000003000000050F350D0400000007000000020000000000000004135D4509000000040CFD9C01000000070F350D000CFD9C03000000070F350CF8000000010CFD9C050F34D10400000002000000050000000500000000000000031207010600000003000000070000000200000000"
theorem small_9115649_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115649_right_root small_9115649_right_fuel small_9115649_right_count small_9115649_right_encoded = true := by
  decide +kernel
theorem small_9115649_right_covered : CoveredBy scale carrier boxes small_9115649_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115649_right_root small_9115649_right_fuel small_9115649_right_count small_9115649_right_encoded small_9115649_right_checked

theorem cover_9115649 : CoveredBy scale carrier boxes root_9115649 := by
  apply coveredBy_split_literal root_9115649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9115650 small_9115649_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9115650
  · exact small_9115649_right_covered
#print axioms cover_9115649

def root_9115643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115643_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115643_left_fuel : Nat := 1
def small_9115643_left_count : Nat := 1
def small_9115643_left_encoded : String := "00000003"
theorem small_9115643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115643_left_root small_9115643_left_fuel small_9115643_left_count small_9115643_left_encoded = true := by
  decide +kernel
theorem small_9115643_left_covered : CoveredBy scale carrier boxes small_9115643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115643_left_root small_9115643_left_fuel small_9115643_left_count small_9115643_left_encoded small_9115643_left_checked

theorem cover_9115643 : CoveredBy scale carrier boxes root_9115643 := by
  apply coveredBy_split_literal root_9115643 small_9115643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9115649 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9115643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9115649
#print axioms cover_9115643

def root_9095169 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095169 : CoveredBy scale carrier boxes root_9095169 := by
  apply coveredBy_split_literal root_9095169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9115643 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095170
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9115643
#print axioms cover_9095169

def root_9095164 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095164_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095164_right_fuel : Nat := 1
def small_9095164_right_count : Nat := 1
def small_9095164_right_encoded : String := "00000002"
theorem small_9095164_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095164_right_root small_9095164_right_fuel small_9095164_right_count small_9095164_right_encoded = true := by
  decide +kernel
theorem small_9095164_right_covered : CoveredBy scale carrier boxes small_9095164_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095164_right_root small_9095164_right_fuel small_9095164_right_count small_9095164_right_encoded small_9095164_right_checked

theorem cover_9095164 : CoveredBy scale carrier boxes root_9095164 := by
  apply coveredBy_split_literal root_9095164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9095169 small_9095164_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9095169
  · exact small_9095164_right_covered
#print axioms cover_9095164

def root_9094844 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094844_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094844_left_fuel : Nat := 22
def small_9094844_left_count : Nat := 147
def small_9094844_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A9130112070100000000000000000612073D0008A91303120700F800000006000000010000000600000000000000041151E9090000000408A9130112070100000000000000000712073D0008A91303120700F805000104135D450500000002050001060000000800000007000000070000000112073CF80000000105000104135D45050000000200000006000000070000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A91303120700F808A912FD00000007120701060000000308A91309120700FE0000000700000004000000070000000112073CF80000000108A912FD12073D060000000600000003120701060000000308A91309120700FE00000006000000040000000712073D0008A91303120700F808A912FD12073D0608A91309000000070000000700000003000000070000000112073CF80000000108A912FD12073D0608A91309120700FE000000060000000412073CFE0000000405000104135D4505000000020CFD9C01000000070F350D000CFD9C03000000070000000600000000135D81050CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFD0F350D06000000060000000300000007000000000000000200000003120701060000000308A91309120700FE00000007000000040000000700000000000000041151E9090000000408A913010000000712073D0008A91303120700F800000007000000010000000700000000"
theorem small_9094844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094844_left_root small_9094844_left_fuel small_9094844_left_count small_9094844_left_encoded = true := by
  decide +kernel
theorem small_9094844_left_covered : CoveredBy scale carrier boxes small_9094844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094844_left_root small_9094844_left_fuel small_9094844_left_count small_9094844_left_encoded small_9094844_left_checked

theorem cover_9094844 : CoveredBy scale carrier boxes root_9094844 := by
  apply coveredBy_split_literal root_9094844 small_9094844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9095164 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9094844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9095164
#print axioms cover_9094844

def root_9094839 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094839_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094839_right_fuel : Nat := 1
def small_9094839_right_count : Nat := 1
def small_9094839_right_encoded : String := "00000001"
theorem small_9094839_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094839_right_root small_9094839_right_fuel small_9094839_right_count small_9094839_right_encoded = true := by
  decide +kernel
theorem small_9094839_right_covered : CoveredBy scale carrier boxes small_9094839_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094839_right_root small_9094839_right_fuel small_9094839_right_count small_9094839_right_encoded small_9094839_right_checked

theorem cover_9094839 : CoveredBy scale carrier boxes root_9094839 := by
  apply coveredBy_split_literal root_9094839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.root_9094844 small_9094839_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622.cover_9094844
  · exact small_9094839_right_covered
#print axioms cover_9094839

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0622
