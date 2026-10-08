import TaoBundleAssembly0146
import TaoBundleAssembly0148
import TaoBundleChunkBatch0574
import TaoBundleChunkBatch0575
import TaoBundleChunkBatch0576
import TaoBundleChunkBatch0577
import TaoBundleChunkBatch0578
import TaoBundleChunkBatch0579
import TaoBundleChunkBatch0580
import TaoBundleChunkBatch0581
import TaoBundleChunkBatch0582
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149
def root_6110043 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110043_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110043_left_fuel : Nat := 23
def small_6110043_left_count : Nat := 241
def small_6110043_left_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040CFD9BF70F350D000CFD9C030F34D0F804548A05000000051386ACFA0000000204548A07000000050000000A000000010000000A000000000F34D100000000000CFD9C030F34D0F804548A05138670FA04548A07000000050000000A000000021386ACFA0000000204548A07138671060000000304548A09138671080000000400000006000000071386AD0604548A0913867108000000040AD357770000000A10D10100000000000AD3578310D100F800000005000000010000000A1386AD080AD357770000000A10D10100000000000AD3578310D100F8067ECE850000000712EA94FA00000002067ECE87000000070000000A000000010000000A0000000400000003000000010F350CF80000000104548A05000000071386ACFA0000000204548A07000000071386AD0604548A0913867108000000040000000A000000070000000312073D080CFD9BF70F350D000CFD9C030F34D0F804548A0500000007000000090000000100000007000000000F34D100000000000CFD9C030F34D0F804548A05000000071386ACFA0000000204548A07000000071386AD060CFD9C090F34D108000000040AD357770000000700000007000000070000000300000001000000070000000412073D0608A9130912070108000000040000000A12073D080CFD9BF70F350D000CFD9C030F34D0F804548A050000000A1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040000000A000000090000000A000000010000000A000000000F34D100000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D0800000007000000040000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040AD357770000000A10D10100000000000AD3578310D100F80000000A000000010000000A0F350D080C9A8708000000070F878D090AD3577710D13D00000000070000000010D10100000000000AD3578310D100F800000009000000010000000700000004000000040F350D060CFD9C090F34D108000000040000000A0F350D080C9A87060000000A0F878D070C9A87080F87510900000004000000060000000A000000030000000400000003000000010F350CF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D0800000007000000040F350D060000000A00000003000000040000000300000002"
theorem small_6110043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110043_left_root small_6110043_left_fuel small_6110043_left_count small_6110043_left_encoded = true := by
  decide +kernel
theorem small_6110043_left_covered : CoveredBy scale carrier boxes small_6110043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110043_left_root small_6110043_left_fuel small_6110043_left_count small_6110043_left_encoded small_6110043_left_checked

theorem cover_6110043 : CoveredBy scale carrier boxes root_6110043 := by
  apply coveredBy_split_literal root_6110043 small_6110043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6110557 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6110043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6110557
#print axioms cover_6110043

def root_6110037 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110037_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110037_left_fuel : Nat := 1
def small_6110037_left_count : Nat := 1
def small_6110037_left_encoded : String := "00000001"
theorem small_6110037_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110037_left_root small_6110037_left_fuel small_6110037_left_count small_6110037_left_encoded = true := by
  decide +kernel
theorem small_6110037_left_covered : CoveredBy scale carrier boxes small_6110037_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110037_left_root small_6110037_left_fuel small_6110037_left_count small_6110037_left_encoded small_6110037_left_checked

theorem cover_6110037 : CoveredBy scale carrier boxes root_6110037 := by
  apply coveredBy_split_literal root_6110037 small_6110037_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6110043 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6110037_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6110043
#print axioms cover_6110037

def root_6109139 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109139_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109139_left_fuel : Nat := 27
def small_6109139_left_count : Nat := 425
def small_6109139_left_encoded : String := "120700F808A91305120700FA08A91307120701060000000308A9130912070108000000040CFD9BF7000000050F34D1000000000004548A03000000051386ACF80000000104548A05000000051386ACFA0000000204548A07000000051386AD06000000050000000312073D080CFD9BF7000000090F34D1000000000004548A03000000091386ACF80000000104548A05138670FA04548A07000000051386AD06000000050000000300000002000000090000000412073D0608A9130912070108000000040CFD9BF70000000A0F34D1000000000004548A03138670F804548A05000000051386ACFA000000020CFD9C070000000500000008000000010000000A12073D080CFD9BF70F350D0004548A03138670F800000005000000011386ACF80000000104548A050000000A1386ACFA000000020CFD9C070F34D10600000003000000090000000A000000000F34D1000000000004548A03138670F804548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C09000000050000000900000003000000011386ACF80000000104548A05138670FA0CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040000000A000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040AD3577710D13D00067ECE83000000050000000A0000000010D1010000000000067ECE8312EA58F8067ECE8500000005000000090000000112EA94F800000001067ECE850000000A12EA94FA000000020AD3578710D1010600000003000000090000000A000000090F350D060CFD9C090F34D108000000040000000A0F350D080C9A87060F875107000000030000000600000009000000040000000300000004000000030000000212073CFA0000000208A91307120701060000000308A9130912070108000000040CFD9BF70F350D0004548A03000000091386ACF8000000010CFD9C050F34D0FA04548A07000000051386AD0600000005000000030000000200000009000000000F34D1000000000004548A03138670F80CFD9C050F34D0FA04548A0700000005000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA04548A07138671060000000304548A091386710800000004000000061386AD080AD357770000000910D1010000000000067ECE830000000912EA94F8000000010AD357850000000600000006000000041386AD0604548A09000000081386AD080AD357770000000910D1010000000000067ECE830000000812EA94F8000000010AD3578510D100FA067ECE8712EA590600000003067ECE89000000050000000912EA9506000000080000000300000002000000090000000400000003000000020F350CFA0000000204548A07138671060000000304548A0900000008000000090000000812073D08000000090000000412073D0608A9130912070108000000040CFD9BF70F350D0004548A03000000081386ACF8000000010CFD9C050F34D0FA0000000A0000000200000008000000000F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD080AD3577700000008000000080000000400000008000000020000000812073D080CFD9BF70F350D0004548A03000000091386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040000000A00000009000000030000000200000009000000000F34D1000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040000000800000009000000030000000200000009000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D108000000040AD357770000000910D1010000000000067ECE830000000912EA94F8000000010AD3578510D100FA000000090000000200000009000000090F350D060CFD9C090F34D108000000040C9A8706000000080F878D070AD3577710D13D00000000080000000010D1010000000000067ECE830000000812EA94F8000000010AD357850000000A00000008000000030F350D080C9A87060F875107000000030C9A87080000000600000006000000090000000400000003000000020F350CFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C090F34D10800000004000000080F350D08000000090000000400000003000000040000000300000001"
theorem small_6109139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6109139_left_root small_6109139_left_fuel small_6109139_left_count small_6109139_left_encoded = true := by
  decide +kernel
theorem small_6109139_left_covered : CoveredBy scale carrier boxes small_6109139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6109139_left_root small_6109139_left_fuel small_6109139_left_count small_6109139_left_encoded small_6109139_left_checked

theorem cover_6109139 : CoveredBy scale carrier boxes root_6109139 := by
  apply coveredBy_split_literal root_6109139 small_6109139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6110037 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6109139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6110037
#print axioms cover_6109139

def root_6109134 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109134_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109134_right_fuel : Nat := 1
def small_6109134_right_count : Nat := 1
def small_6109134_right_encoded : String := "00000000"
theorem small_6109134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6109134_right_root small_6109134_right_fuel small_6109134_right_count small_6109134_right_encoded = true := by
  decide +kernel
theorem small_6109134_right_covered : CoveredBy scale carrier boxes small_6109134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6109134_right_root small_6109134_right_fuel small_6109134_right_count small_6109134_right_encoded small_6109134_right_checked

theorem cover_6109134 : CoveredBy scale carrier boxes root_6109134 := by
  apply coveredBy_split_literal root_6109134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6109139 small_6109134_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6109139
  · exact small_6109134_right_covered
#print axioms cover_6109134

def root_6123725 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123725 : CoveredBy scale carrier boxes root_6123725 := by
  apply coveredBy_split_literal root_6123725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2304.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2305.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2304.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2305.covered
#print axioms cover_6123725

def root_6123719 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123719_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123719_left_fuel : Nat := 1
def small_6123719_left_count : Nat := 1
def small_6123719_left_encoded : String := "00000004"
theorem small_6123719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123719_left_root small_6123719_left_fuel small_6123719_left_count small_6123719_left_encoded = true := by
  decide +kernel
theorem small_6123719_left_covered : CoveredBy scale carrier boxes small_6123719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123719_left_root small_6123719_left_fuel small_6123719_left_count small_6123719_left_encoded small_6123719_left_checked

theorem cover_6123719 : CoveredBy scale carrier boxes root_6123719 := by
  apply coveredBy_split_literal root_6123719 small_6123719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123725 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6123719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123725
#print axioms cover_6123719

def root_6123718 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123718 : CoveredBy scale carrier boxes root_6123718 := by
  apply coveredBy_split_literal root_6123718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123719 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2306.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123719
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2306.covered
#print axioms cover_6123718

def root_6123712 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123712_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123712_left_fuel : Nat := 1
def small_6123712_left_count : Nat := 1
def small_6123712_left_encoded : String := "00000003"
theorem small_6123712_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123712_left_root small_6123712_left_fuel small_6123712_left_count small_6123712_left_encoded = true := by
  decide +kernel
theorem small_6123712_left_covered : CoveredBy scale carrier boxes small_6123712_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123712_left_root small_6123712_left_fuel small_6123712_left_count small_6123712_left_encoded small_6123712_left_checked

theorem cover_6123712 : CoveredBy scale carrier boxes root_6123712 := by
  apply coveredBy_split_literal root_6123712 small_6123712_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123718 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6123712_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123718
#print axioms cover_6123712

def root_6137809 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6137809 : CoveredBy scale carrier boxes root_6137809 := by
  apply coveredBy_split_literal root_6137809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2309.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2310.root coord2 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2309.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2310.covered
#print axioms cover_6137809

def root_6137804 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137804_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137804_right_fuel : Nat := 1
def small_6137804_right_count : Nat := 1
def small_6137804_right_encoded : String := "00000001"
theorem small_6137804_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6137804_right_root small_6137804_right_fuel small_6137804_right_count small_6137804_right_encoded = true := by
  decide +kernel
theorem small_6137804_right_covered : CoveredBy scale carrier boxes small_6137804_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6137804_right_root small_6137804_right_fuel small_6137804_right_count small_6137804_right_encoded small_6137804_right_checked

theorem cover_6137804 : CoveredBy scale carrier boxes root_6137804 := by
  apply coveredBy_split_literal root_6137804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6137809 small_6137804_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6137809
  · exact small_6137804_right_covered
#print axioms cover_6137804

def root_6137803 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6137803 : CoveredBy scale carrier boxes root_6137803 := by
  apply coveredBy_split_literal root_6137803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6137804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2311.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6137804
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2311.covered
#print axioms cover_6137803

def root_6137797 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137797_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6137797_left_fuel : Nat := 1
def small_6137797_left_count : Nat := 1
def small_6137797_left_encoded : String := "00000000"
theorem small_6137797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6137797_left_root small_6137797_left_fuel small_6137797_left_count small_6137797_left_encoded = true := by
  decide +kernel
theorem small_6137797_left_covered : CoveredBy scale carrier boxes small_6137797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6137797_left_root small_6137797_left_fuel small_6137797_left_count small_6137797_left_encoded small_6137797_left_checked

theorem cover_6137797 : CoveredBy scale carrier boxes root_6137797 := by
  apply coveredBy_split_literal root_6137797 small_6137797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6137803 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6137797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6137803
#print axioms cover_6137797

def root_6136087 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6136087 : CoveredBy scale carrier boxes root_6136087 := by
  apply coveredBy_split_literal root_6136087 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2308.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6137797 coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2308.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6137797
#print axioms cover_6136087

def root_6136082 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6136082_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6136082_right_fuel : Nat := 1
def small_6136082_right_count : Nat := 1
def small_6136082_right_encoded : String := "00000004"
theorem small_6136082_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6136082_right_root small_6136082_right_fuel small_6136082_right_count small_6136082_right_encoded = true := by
  decide +kernel
theorem small_6136082_right_covered : CoveredBy scale carrier boxes small_6136082_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6136082_right_root small_6136082_right_fuel small_6136082_right_count small_6136082_right_encoded small_6136082_right_checked

theorem cover_6136082 : CoveredBy scale carrier boxes root_6136082 := by
  apply coveredBy_split_literal root_6136082 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6136087 small_6136082_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6136087
  · exact small_6136082_right_covered
#print axioms cover_6136082

def root_6135612 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135612_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135612_left_fuel : Nat := 20
def small_6135612_left_count : Nat := 225
def small_6135612_left_encoded : String := "0F87510900000004022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0DE7CA060E5FD90700000003000000060000000900000002000000090000000112EA94F800000001067ECE8512EA58FA0DE7CA060E5FD90700000003000000060E6015070B4D44080000000710804D09033F67B7000000070000000700000004000000030000000212EA94FA000000020DE7CA060E5FD9070000000300000006000000090000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F895000569AC4300000006000000060000000013F85900000000000569AC431340D4F80569AC45000000060000000600000001134110F8000000010569AC450000000600000006000000040E6015070B4D440810801109000000040000000910804D09011523370000000913F85900000000000569AC4300000009134110F8000000010569AC45000000080000000900000004000000030000000212EA94FA000000020DE7CA060E5FD907000000030B4D44080000000910804D09011523370000000913F85900000000000569AC4300000009134110F8000000010793F0C5000000060000000500000004000000090000000112EA94F800000001067ECE8512EA58FA0DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F89500000000060000000013F85900000000000793F0C3128220F80569AC4500000006000000060000000112825CF8000000010569AC450000000600000005000000040E6015070B4D44080000000710804D09011523370000000713F85900000000000793F0C3128220F80569AC4500000007134110FA0000000200000007000000010000000700000004000000030000000212EA94FA000000020DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F895000793F0C300000006000000050000000000000005000000040E6015070B4D44081080110900000004011523370000000913F85900000000000793F0C3000000090000000510804D090115233713F895000793F0C30000000912825CF8000000010793F0C500000007000000050000000013F85900000000000793F0C3128220F80793F0C5128220FA0DAED8870E962506000000030000000500000005000000020000000500000001000000050000000400000003"
theorem small_6135612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135612_left_root small_6135612_left_fuel small_6135612_left_count small_6135612_left_encoded = true := by
  decide +kernel
theorem small_6135612_left_covered : CoveredBy scale carrier boxes small_6135612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135612_left_root small_6135612_left_fuel small_6135612_left_count small_6135612_left_encoded small_6135612_left_checked

theorem cover_6135612 : CoveredBy scale carrier boxes root_6135612 := by
  apply coveredBy_split_literal root_6135612 small_6135612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6136082 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6135612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6136082
#print axioms cover_6135612

def root_6135607 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135607_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135607_right_fuel : Nat := 1
def small_6135607_right_count : Nat := 1
def small_6135607_right_encoded : String := "00000003"
theorem small_6135607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135607_right_root small_6135607_right_fuel small_6135607_right_count small_6135607_right_encoded = true := by
  decide +kernel
theorem small_6135607_right_covered : CoveredBy scale carrier boxes small_6135607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135607_right_root small_6135607_right_fuel small_6135607_right_count small_6135607_right_encoded small_6135607_right_checked

theorem cover_6135607 : CoveredBy scale carrier boxes root_6135607 := by
  apply coveredBy_split_literal root_6135607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6135612 small_6135607_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6135612
  · exact small_6135607_right_covered
#print axioms cover_6135607

def root_6135013 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135013_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135013_left_fuel : Nat := 22
def small_6135013_left_count : Nat := 285
def small_6135013_left_encoded : String := "0F875107000000030C9A87080F87510900000004022A457713E20100067ECE8312EA58F8067ECE8500000006000000060000000112EA94F800000001067ECE8500000006000000060000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0B4D440600000006000000060000000212EA94FA000000020B4D440600000006000000060000000112EA94F800000001067ECE8512EA58FA0B4D440600000006000000060000000212EA94FA000000020B4D440600000006000000060F878D09022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0B4D44060000000A10804D070DE7CA080E5FD90900000004000000060000000A000000030000000212EA94FA000000020B4D440610801107000000030DE7CA08000000060000000610804D070DE7CA080E5FD90900000004000000060E601509033F67B7000000080000000800000004000000030000000112EA94F800000001067ECE850000000A12EA94FA000000020B4D440610801107000000030000000A10804D070DE7CA080E5FD90900000004000000060000000A000000030000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0B4D440610801107000000030DE7CA080E5FD90900000004000000060000000A10804D070DE7CA080E5FD909000000040115233713F895000569AC4300000006000000060000000013F85900000000000569AC431340D4F80569AC45000000060000000600000001134110F8000000010569AC4500000006000000060E601509011523370000000A13F85900000000000569AC431340D4F80569AC450000000A00000007000000010000000A00000004000000030000000212EA94FA000000020B4D440610801107000000030DE7CA080E5FD90900000004000000060E601509000000070000000410804D070DE7CA080E5FD909000000040115233713F89500000000060000000013F85900000000000569AC431340D4F80793F0C5000000060000000600000001134110F8000000010793F0C500000006000000050E601509011523370000000813F85900000000000569AC4300000007134110F8000000010000000800000004000000030000000112EA94F800000001067ECE8512EA58FA0B4D440610801107000000030000000A10804D070DE7CA080E5FD90900000004011523370000000A13F85900000000000793F0C3128220F80569AC450000000600000006000000010000000A0000000A000000030000000212EA94FA000000020B4D440610801107000000030DE7CA080E5FD90900000004000000060E601509011523370000000A13F85900000000000793F0C300000008000000050000000410804D070DE7CA080E5FD909000000040115233713F895000793F0C3000000060000000500000000000000050E6015090115233713F895000793F0C3128220F80793F0C50000000A00000008000000010000000A0000000013F85900000000000793F0C3128220F80793F0C5128220FA0DAED8890E96250800000004000000050000000500000002000000050000000100000005000000040000000300000004"
theorem small_6135013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135013_left_root small_6135013_left_fuel small_6135013_left_count small_6135013_left_encoded = true := by
  decide +kernel
theorem small_6135013_left_covered : CoveredBy scale carrier boxes small_6135013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135013_left_root small_6135013_left_fuel small_6135013_left_count small_6135013_left_encoded small_6135013_left_checked

theorem cover_6135013 : CoveredBy scale carrier boxes root_6135013 := by
  apply coveredBy_split_literal root_6135013 small_6135013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6135607 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6135013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6135607
#print axioms cover_6135013

def root_6135008 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135008_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135008_right_fuel : Nat := 1
def small_6135008_right_count : Nat := 1
def small_6135008_right_encoded : String := "00000004"
theorem small_6135008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135008_right_root small_6135008_right_fuel small_6135008_right_count small_6135008_right_encoded = true := by
  decide +kernel
theorem small_6135008_right_covered : CoveredBy scale carrier boxes small_6135008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135008_right_root small_6135008_right_fuel small_6135008_right_count small_6135008_right_encoded small_6135008_right_checked

theorem cover_6135008 : CoveredBy scale carrier boxes root_6135008 := by
  apply coveredBy_split_literal root_6135008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6135013 small_6135008_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6135013
  · exact small_6135008_right_covered
#print axioms cover_6135008

def root_6132370 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6132370 : CoveredBy scale carrier boxes root_6132370 := by
  apply coveredBy_split_literal root_6132370 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2307.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6135008 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2307.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6135008
#print axioms cover_6132370

def root_6132365 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6132365_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6132365_right_fuel : Nat := 1
def small_6132365_right_count : Nat := 1
def small_6132365_right_encoded : String := "00000003"
theorem small_6132365_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6132365_right_root small_6132365_right_fuel small_6132365_right_count small_6132365_right_encoded = true := by
  decide +kernel
theorem small_6132365_right_covered : CoveredBy scale carrier boxes small_6132365_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6132365_right_root small_6132365_right_fuel small_6132365_right_count small_6132365_right_encoded small_6132365_right_checked

theorem cover_6132365 : CoveredBy scale carrier boxes root_6132365 := by
  apply coveredBy_split_literal root_6132365 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6132370 small_6132365_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6132370
  · exact small_6132365_right_covered
#print axioms cover_6132365

def root_6123711 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123711 : CoveredBy scale carrier boxes root_6123711 := by
  apply coveredBy_split_literal root_6123711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6132365 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123712
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6132365
#print axioms cover_6123711

def root_6123705 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123705_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123705_left_fuel : Nat := 1
def small_6123705_left_count : Nat := 1
def small_6123705_left_encoded : String := "00000002"
theorem small_6123705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123705_left_root small_6123705_left_fuel small_6123705_left_count small_6123705_left_encoded = true := by
  decide +kernel
theorem small_6123705_left_covered : CoveredBy scale carrier boxes small_6123705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123705_left_root small_6123705_left_fuel small_6123705_left_count small_6123705_left_encoded small_6123705_left_checked

theorem cover_6123705 : CoveredBy scale carrier boxes root_6123705 := by
  apply coveredBy_split_literal root_6123705 small_6123705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123711 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6123705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123711
#print axioms cover_6123705

def root_6121373 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6121373 : CoveredBy scale carrier boxes root_6121373 := by
  apply coveredBy_split_literal root_6121373 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2303.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6123705 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2303.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6123705
#print axioms cover_6121373

def root_6121367 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6121367_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6121367_left_fuel : Nat := 1
def small_6121367_left_count : Nat := 1
def small_6121367_left_encoded : String := "00000001"
theorem small_6121367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6121367_left_root small_6121367_left_fuel small_6121367_left_count small_6121367_left_encoded = true := by
  decide +kernel
theorem small_6121367_left_covered : CoveredBy scale carrier boxes small_6121367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6121367_left_root small_6121367_left_fuel small_6121367_left_count small_6121367_left_encoded small_6121367_left_checked

theorem cover_6121367 : CoveredBy scale carrier boxes root_6121367 := by
  apply coveredBy_split_literal root_6121367 small_6121367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6121373 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6121367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6121373
#print axioms cover_6121367

def root_6118381 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6118381 : CoveredBy scale carrier boxes root_6118381 := by
  apply coveredBy_split_literal root_6118381 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2302.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6121367 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2302.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6121367
#print axioms cover_6118381

def root_6118375 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6118375_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6118375_left_fuel : Nat := 1
def small_6118375_left_count : Nat := 1
def small_6118375_left_encoded : String := "00000000"
theorem small_6118375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6118375_left_root small_6118375_left_fuel small_6118375_left_count small_6118375_left_encoded = true := by
  decide +kernel
theorem small_6118375_left_covered : CoveredBy scale carrier boxes small_6118375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6118375_left_root small_6118375_left_fuel small_6118375_left_count small_6118375_left_encoded small_6118375_left_checked

theorem cover_6118375 : CoveredBy scale carrier boxes root_6118375 := by
  apply coveredBy_split_literal root_6118375 small_6118375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6118381 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6118375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6118381
#print axioms cover_6118375

def root_6116275 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6116275 : CoveredBy scale carrier boxes root_6116275 := by
  apply coveredBy_split_literal root_6116275 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2301.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6118375 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2301.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6118375
#print axioms cover_6116275

def root_6116270 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6116270_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6116270_right_fuel : Nat := 1
def small_6116270_right_count : Nat := 1
def small_6116270_right_encoded : String := "00000004"
theorem small_6116270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6116270_right_root small_6116270_right_fuel small_6116270_right_count small_6116270_right_encoded = true := by
  decide +kernel
theorem small_6116270_right_covered : CoveredBy scale carrier boxes small_6116270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6116270_right_root small_6116270_right_fuel small_6116270_right_count small_6116270_right_encoded small_6116270_right_checked

theorem cover_6116270 : CoveredBy scale carrier boxes root_6116270 := by
  apply coveredBy_split_literal root_6116270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6116275 small_6116270_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6116275
  · exact small_6116270_right_covered
#print axioms cover_6116270

def root_6115666 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115666_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115666_left_fuel : Nat := 23
def small_6115666_left_count : Nat := 287
def small_6115666_left_encoded : String := "1207010800000004045489F71386AD0004548A03138670F804548A05138670FA0CFD9C07000000050000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000051386AD08067ECE770000000512EA590000000000022A45830000000513E200F800000001067ECE850000000500000008000000040F350D060000000800000003000000011386ACF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A091386710800000004067ECE7700000008000000081386AD08067ECE7712EA9500067ECE8312EA58F8067ECE850000000512EA94FA00000002000000080000000112EA94F800000001067ECE850000000A12EA94FA000000020AD3578710D1010600000003067ECE890000000812EA95080793F0B70000000A00000008000000040000000A0000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA0AD35787000000050000000A0000000212EA94FA00000002000000080000000112EA94F800000001067ECE8512EA58FA0AD3578710D1010600000003000000060000000A0000000212EA94FA000000020AD3578710D1010600000003067ECE890000000612EA9508000000060000000410D13D060000000800000003000000040F350D060000000A0000000300000000138671000000000004548A03138670F804548A05138670FA0CFD9C070F34D1060000000304548A09000000051386AD08022A45770000000500000006000000040F350D0604548A09000000051386AD080C9A8706000000050F878D0700000005000000030000000400000003000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100022A45830000000813E200F800000001067ECE8512EA58FA0000000600000002000000080000000013E1C50000000000022A45830000000600000006000000040F350D060000000800000003000000011386ACF80000000104548A05138670FA0CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100067ECE8312EA58F8022A45850000000500000006000000010000000A0000000013E1C50000000000067ECE830000000600000006000000040000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0AD357870000000610D13D0600000006000000030000000212EA94FA000000020AD3578700000006000000080000000112EA94F800000001067ECE8512EA58FA0AD357870000000610D13D060000000A000000030000000212EA94FA000000020AD357870000000610D13D0600000008000000030000000013E1C50000000000067ECE8312EA58F8000000060000000112EA94F800000001067ECE850000000600000006000000040F350D0604548A09000000081386AD080C9A8706000000080F878D07022A457713E20100067ECE83000000080000000A0000000013E1C50000000000067ECE830000000800000009000000030000000400000003"
theorem small_6115666_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6115666_left_root small_6115666_left_fuel small_6115666_left_count small_6115666_left_encoded = true := by
  decide +kernel
theorem small_6115666_left_covered : CoveredBy scale carrier boxes small_6115666_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6115666_left_root small_6115666_left_fuel small_6115666_left_count small_6115666_left_encoded small_6115666_left_checked

theorem cover_6115666 : CoveredBy scale carrier boxes root_6115666 := by
  apply coveredBy_split_literal root_6115666 small_6115666_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6116270 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6115666_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6116270
#print axioms cover_6115666

def root_6115661 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115661_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115661_right_fuel : Nat := 1
def small_6115661_right_count : Nat := 1
def small_6115661_right_encoded : String := "00000003"
theorem small_6115661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6115661_right_root small_6115661_right_fuel small_6115661_right_count small_6115661_right_encoded = true := by
  decide +kernel
theorem small_6115661_right_covered : CoveredBy scale carrier boxes small_6115661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6115661_right_root small_6115661_right_fuel small_6115661_right_count small_6115661_right_encoded small_6115661_right_checked

theorem cover_6115661 : CoveredBy scale carrier boxes root_6115661 := by
  apply coveredBy_split_literal root_6115661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6115666 small_6115661_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6115666
  · exact small_6115661_right_covered
#print axioms cover_6115661

def root_6114845 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114845_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114845_left_fuel : Nat := 25
def small_6114845_left_count : Nat := 383
def small_6114845_left_encoded : String := "120701060000000308A913091207010800000004045489F71386AD0004548A03138670F804548A05000000051386ACFA0000000204548A07000000051386AD060000000500000003000000011386ACF80000000104548A05138670FA04548A07000000051386AD060000000500000003000000021386ACFA0000000204548A07000000061386AD0604548A09000000061386AD08067ECE7712EA9500067ECE8312EA58F8000000050000000112EA94F800000001067ECE8512EA58FA0000000500000002000000060000000012EA590000000000067ECE830000000600000006000000040000000300000000138671000000000004548A03138670F800000006000000011386ACF80000000104548A05000000060000000612073D08045489F71386AD0004548A03138670F804548A05138670FA04548A07000000051386AD0600000005000000030000000200000009000000011386ACF80000000104548A05138670FA04548A07000000071386AD060CFD9C090F34D10800000004067ECE770000000512EA590000000000067ECE8300000005000000070F350D08000000070000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004067ECE770000000700000007000000091386AD060CFD9C090F34D10800000004067ECE7712EA9500067ECE8312EA58F8000000090000000112EA94F800000001067ECE850000000712EA94FA00000002067ECE870000000712EA95060AD3578910D10108000000040793F0B7000000090000000700000009000000030000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA067ECE870000000512EA95060AD357890000000500000009000000030000000212EA94FA00000002067ECE8712EA5906000000030000000912EA95060AD3578910D10108000000040000000600000009000000030000000112EA94F800000001067ECE8512EA58FA000000070000000212EA94FA00000002067ECE870000000712EA95060AD3578910D10108000000040000000610D13D080000000700000004000000030F350D0800000009000000040000000300000000138671000000000004548A03138670F804548A05138670FA04548A0713867106000000030CFD9C09000000050F350D0800000005000000041386AD060CFD9C090F34D10800000004022A457700000005000000060F350D080C9A8708000000050F878D0900000005000000040000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090000000A000000091386AD060CFD9C090F34D10800000004022A457713E20100022A45830000000913E200F800000001067ECE8512EA58FA0000000600000002000000090000000013E1C50000000000022A458300000006000000060000000900000003000000011386ACF80000000104548A05138670FA04548A07000000071386AD060CFD9C090F34D10800000004022A457713E20100067ECE8312EA58F8022A4585000000050000000600000001000000070000000013E1C50000000000067ECE8300000006000000060F350D08000000070000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000060F350D0800000007000000041386AD060CFD9C090F34D10800000004022A457713E20100067ECE8312EA58F8067ECE8512EA58FA067ECE870000000612EA950600000006000000030000000212EA94FA00000002067ECE870000000612EA95060AD357890000000610D13D080000000900000004000000030000000112EA94F800000001067ECE8512EA58FA067ECE870000000612EA950600000007000000030000000212EA94FA00000002067ECE870000000612EA95060AD357890000000610D13D080000000700000004000000030000000013E1C50000000000067ECE8312EA58F8000000060000000112EA94F800000001067ECE8500000006000000060F350D080C9A8708000000070F878D09022A457713E20100067ECE8300000009000000070000000013E1C50000000000067ECE830000000A0000000700000004000000040000000300000004"
theorem small_6114845_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114845_left_root small_6114845_left_fuel small_6114845_left_count small_6114845_left_encoded = true := by
  decide +kernel
theorem small_6114845_left_covered : CoveredBy scale carrier boxes small_6114845_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114845_left_root small_6114845_left_fuel small_6114845_left_count small_6114845_left_encoded small_6114845_left_checked

theorem cover_6114845 : CoveredBy scale carrier boxes root_6114845 := by
  apply coveredBy_split_literal root_6114845 small_6114845_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6115661 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6114845_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6115661
#print axioms cover_6114845

def root_6114840 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114840_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114840_right_fuel : Nat := 1
def small_6114840_right_count : Nat := 1
def small_6114840_right_encoded : String := "00000002"
theorem small_6114840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114840_right_root small_6114840_right_fuel small_6114840_right_count small_6114840_right_encoded = true := by
  decide +kernel
theorem small_6114840_right_covered : CoveredBy scale carrier boxes small_6114840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114840_right_root small_6114840_right_fuel small_6114840_right_count small_6114840_right_encoded small_6114840_right_checked

theorem cover_6114840 : CoveredBy scale carrier boxes root_6114840 := by
  apply coveredBy_split_literal root_6114840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114845 small_6114840_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114845
  · exact small_6114840_right_covered
#print axioms cover_6114840

def root_6145058 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145058_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145058_left_fuel : Nat := 16
def small_6145058_left_count : Nat := 57
def small_6145058_left_encoded : String := "1207010800000004045489F71386AD0004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD08067ECE7712EA9500000000080000000000000008000000040F350D060000000800000003000000020000000800000000138671000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD08022A457713E20100067ECE830000000812EA94F800000001000000080000000000000008000000040F350D0600000008000000030000000200000008"
theorem small_6145058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6145058_left_root small_6145058_left_fuel small_6145058_left_count small_6145058_left_encoded = true := by
  decide +kernel
theorem small_6145058_left_covered : CoveredBy scale carrier boxes small_6145058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6145058_left_root small_6145058_left_fuel small_6145058_left_count small_6145058_left_encoded small_6145058_left_checked

theorem cover_6145058 : CoveredBy scale carrier boxes root_6145058 := by
  apply coveredBy_split_literal root_6145058 small_6145058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2312.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6145058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2312.covered
#print axioms cover_6145058

def root_6145053 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145053_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145053_right_fuel : Nat := 1
def small_6145053_right_count : Nat := 1
def small_6145053_right_encoded : String := "00000003"
theorem small_6145053_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6145053_right_root small_6145053_right_fuel small_6145053_right_count small_6145053_right_encoded = true := by
  decide +kernel
theorem small_6145053_right_covered : CoveredBy scale carrier boxes small_6145053_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6145053_right_root small_6145053_right_fuel small_6145053_right_count small_6145053_right_encoded small_6145053_right_checked

theorem cover_6145053 : CoveredBy scale carrier boxes root_6145053 := by
  apply coveredBy_split_literal root_6145053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6145058 small_6145053_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6145058
  · exact small_6145053_right_covered
#print axioms cover_6145053

def root_6144533 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6144533_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6144533_left_fuel : Nat := 26
def small_6144533_left_count : Nat := 243
def small_6144533_left_encoded : String := "120701060000000308A913091207010800000004045489F71386AD0004548A03138670F80CFD9C050F34D0FA04548A0700000006000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA04548A071386710600000003000000061386AD0604548A09000000081386AD08067ECE7712EA9500067ECE8312EA58F8000000080000000112EA94F8000000010AD3578510D100FA067ECE870000000612EA950600000008000000030000000210D13CFA00000002000000080000000012EA590000000000067ECE8312EA58F8000000080000000112EA94F8000000010AD3578510D100FA0000000600000002000000060000000400000003000000020F350CFA0000000204548A070000000A0000000800000000138671000000000004548A03138670F80CFD9C050F34D0FA000000060000000200000008000000011386ACF8000000010CFD9C050F34D0FA04548A07000000061386AD0604548A09000000061386AD08022A457713E20100067ECE83000000060000000600000000000000060000000400000003000000020F350CFA000000020000000A12073D08045489F71386AD0004548A03138670F800000009000000011386ACF8000000010CFD9C050F34D0FA04548A0713867106000000030CFD9C090F34D10800000004067ECE770000000912EA5900000000000000000A000000091386AD060CFD9C090F34D10800000004067ECE770000000912EA590000000000067ECE830000000912EA94F8000000010AD3578510D100FA067ECE8712EA5906000000030AD35789000000060000000712EA95060AD3578910D10108000000040569AC3713411100000000090000000000000006000000090000000300000002000000090000000900000003000000020F350CFA0000000204548A071386710600000003000000091386AD060CFD9C090F34D108000000040C9A86FA000000090F8751050000000200000009000000090000000300000000138671000000000004548A03138670F80CFD9C050F34D0FA04548A070000000A1386AD060CFD9C090000000A0000000900000003000000020000000A000000011386ACF8000000010CFD9C050F34D0FA04548A0713867106000000030000000A1386AD060CFD9C090F34D10800000004022A457713E20100067ECE830000000A12EA94F8000000010AD3578510D100FA067ECE870000000612EA95060AD357890000000610D13D080000000A0000000400000003000000020000000A000000000000000A0F350D080C9A8708000000090F878D090000000A000000040000000400000003000000020F350CFA000000020000000A00000004"
theorem small_6144533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6144533_left_root small_6144533_left_fuel small_6144533_left_count small_6144533_left_encoded = true := by
  decide +kernel
theorem small_6144533_left_covered : CoveredBy scale carrier boxes small_6144533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6144533_left_root small_6144533_left_fuel small_6144533_left_count small_6144533_left_encoded small_6144533_left_checked

theorem cover_6144533 : CoveredBy scale carrier boxes root_6144533 := by
  apply coveredBy_split_literal root_6144533 small_6144533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6145053 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6144533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6145053
#print axioms cover_6144533

def root_6144527 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6144527_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6144527_left_fuel : Nat := 1
def small_6144527_left_count : Nat := 1
def small_6144527_left_encoded : String := "00000002"
theorem small_6144527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6144527_left_root small_6144527_left_fuel small_6144527_left_count small_6144527_left_encoded = true := by
  decide +kernel
theorem small_6144527_left_covered : CoveredBy scale carrier boxes small_6144527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6144527_left_root small_6144527_left_fuel small_6144527_left_count small_6144527_left_encoded small_6144527_left_checked

theorem cover_6144527 : CoveredBy scale carrier boxes root_6144527 := by
  apply coveredBy_split_literal root_6144527 small_6144527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6144533 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6144527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6144533
#print axioms cover_6144527

def root_6114839 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6114839 : CoveredBy scale carrier boxes root_6114839 := by
  apply coveredBy_split_literal root_6114839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6144527 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6144527
#print axioms cover_6114839

def root_6114834 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114834_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114834_right_fuel : Nat := 1
def small_6114834_right_count : Nat := 1
def small_6114834_right_encoded : String := "00000001"
theorem small_6114834_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114834_right_root small_6114834_right_fuel small_6114834_right_count small_6114834_right_encoded = true := by
  decide +kernel
theorem small_6114834_right_covered : CoveredBy scale carrier boxes small_6114834_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114834_right_root small_6114834_right_fuel small_6114834_right_count small_6114834_right_encoded small_6114834_right_checked

theorem cover_6114834 : CoveredBy scale carrier boxes root_6114834 := by
  apply coveredBy_split_literal root_6114834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114839 small_6114834_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114839
  · exact small_6114834_right_covered
#print axioms cover_6114834

def root_6148672 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148672_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148672_left_fuel : Nat := 24
def small_6148672_left_count : Nat := 125
def small_6148672_left_encoded : String := "1207010800000004045489F71386AD000CFD9C030F34D0F804548A050000000A1386ACFA000000020CFD9C070F34D1060000000304548A091386710800000004067ECE770000000A12EA590000000000000000091386AD08067ECE770000000A12EA5900000000000AD3578310D100F8067ECE850000000A12EA94FA000000020AD3578710D1010600000003067ECE890000000612EA95080569AC37134111000000000A0000000000000006000000040000000A000000010000000A000000040000000A000000010F350CF80000000104548A050000000A1386ACFA000000020CFD9C070F34D1060000000304548A09000000091386AD080C9A86F80000000A0F8751030000000100000009000000040000000A0000000013867100000000000CFD9C030F34D0F804548A05138670FA0CFD9C07000000090000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000091386AD08022A457713E201000AD3578310D100F8067ECE850000000912EA94FA000000020AD357870000000610D13D06000000090000000300000001000000090000000000000009000000040F350D0604548A09000000091386AD080C9A8706000000090F878D0700000009000000030000000400000003000000010F350CF80000000104548A05000000091386ACFA0000000200000009"
theorem small_6148672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6148672_left_root small_6148672_left_fuel small_6148672_left_count small_6148672_left_encoded = true := by
  decide +kernel
theorem small_6148672_left_covered : CoveredBy scale carrier boxes small_6148672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6148672_left_root small_6148672_left_fuel small_6148672_left_count small_6148672_left_encoded small_6148672_left_checked

theorem cover_6148672 : CoveredBy scale carrier boxes root_6148672 := by
  apply coveredBy_split_literal root_6148672 small_6148672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2313.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6148672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2313.covered
#print axioms cover_6148672

def root_6148667 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148667_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148667_right_fuel : Nat := 1
def small_6148667_right_count : Nat := 1
def small_6148667_right_encoded : String := "00000003"
theorem small_6148667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6148667_right_root small_6148667_right_fuel small_6148667_right_count small_6148667_right_encoded = true := by
  decide +kernel
theorem small_6148667_right_covered : CoveredBy scale carrier boxes small_6148667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6148667_right_root small_6148667_right_fuel small_6148667_right_count small_6148667_right_encoded small_6148667_right_checked

theorem cover_6148667 : CoveredBy scale carrier boxes root_6148667 := by
  apply coveredBy_split_literal root_6148667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148672 small_6148667_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148672
  · exact small_6148667_right_covered
#print axioms cover_6148667

def root_6148293 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148293_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148293_left_fuel : Nat := 24
def small_6148293_left_count : Nat := 173
def small_6148293_left_encoded : String := "120701060000000308A913091207010800000004045489F71386AD000CFD9C030F34D0F804548A05138670FA04548A07000000061386AD0604548A09000000060000000700000003000000021386ACFA0000000204548A071386710600000003000000061386AD0604548A091386710800000004000000061386AD08067ECE7712EA95000AD3578310D100F8067ECE8512EA58FA000000070000000212EA94FA00000002067ECE870000000612EA9506067ECE890000000612EA95080000000700000004000000030000000110D13CF800000001000000070000000012EA5900000000000AD3578310D100F8000000060000000110D13CF800000001000000070000000400000003000000010F350CF80000000104548A05000000071386ACFA0000000204548A07000000071386AD0604548A090000000900000007000000030000000013867100000000000CFD9C030F34D0F804548A05138670FA00000006000000021386ACFA0000000204548A07000000061386AD0604548A09000000061386AD08022A457713E201000AD35783000000060000000600000000000000060000000400000003000000010F350CF8000000010000000912073D08045489F71386AD000CFD9C030F34D0F804548A05000000071386ACFA0000000204548A07000000071386AD060CFD9C090F34D10800000004067ECE7712EA95000000000700000000000000070F350D08000000070000000400000003000000010F350CF800000001000000070000000013867100000000000CFD9C030F34D0F804548A05000000071386ACFA0000000204548A07000000071386AD060CFD9C090F34D10800000004022A457713E201000AD3578310D100F8067ECE850000000712EA94FA0000000200000007000000010000000700000000000000070F350D08000000070000000400000003000000010000000700000004"
theorem small_6148293_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6148293_left_root small_6148293_left_fuel small_6148293_left_count small_6148293_left_encoded = true := by
  decide +kernel
theorem small_6148293_left_covered : CoveredBy scale carrier boxes small_6148293_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6148293_left_root small_6148293_left_fuel small_6148293_left_count small_6148293_left_encoded small_6148293_left_checked

theorem cover_6148293 : CoveredBy scale carrier boxes root_6148293 := by
  apply coveredBy_split_literal root_6148293 small_6148293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148667 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6148293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148667
#print axioms cover_6148293

def root_6148288 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148288_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148288_right_fuel : Nat := 1
def small_6148288_right_count : Nat := 1
def small_6148288_right_encoded : String := "00000002"
theorem small_6148288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6148288_right_root small_6148288_right_fuel small_6148288_right_count small_6148288_right_encoded = true := by
  decide +kernel
theorem small_6148288_right_covered : CoveredBy scale carrier boxes small_6148288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6148288_right_root small_6148288_right_fuel small_6148288_right_count small_6148288_right_encoded small_6148288_right_checked

theorem cover_6148288 : CoveredBy scale carrier boxes root_6148288 := by
  apply coveredBy_split_literal root_6148288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148293 small_6148288_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148293
  · exact small_6148288_right_covered
#print axioms cover_6148288

def root_6154023 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6154023_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6154023_right_fuel : Nat := 28
def small_6154023_right_count : Nat := 371
def small_6154023_right_encoded : String := "13867100000000000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004022A457713E201000AD3578310D100F80AD3578510D100FA0AD3578710D10106000000030AD3578910D1010800000004033F67B713BC310009BE3543117740F809BE3545117740FA000000060000000211777CFA00000002000000050000000111777CF800000001000000050000000013BBF5000000000009BE3543117740F800000006000000010000000510D13D08033F67B713BC310009BE3543117740F809BE35450000000711777CFA000000020000000500000001000000070000000013BBF50000000000000000050000000410D13D060AD3578910D1010800000004033F67B713BC310009BE35430000000811777CF800000001000000050000000013BBF500000000000000000510D13D08033F67B713BC310009BE3543117740F809BE3545117740FA0BE879C71011710600000003000000050000000500000002000000050000000100000005000000000000000500000004000000030000000210D13CFA000000020AD3578710D101060000000300000005000000050000000110D13CF8000000010AD3578510D100FA0AD3578710D1010600000003000000050000000500000002000000050000000013E1C500000000000AD3578310D100F80AD3578510D100FA0AD3578710D10106000000030AD3578910D1010800000004000000050000000510D13D060AD3578910D10108000000040000000500000005000000030000000210D13CFA00000002000000050000000110D13CF800000001000000050F350D080C9A87080F87510900000004022A457713E201000AD3578310D100F80AD3578510D100FA0000000700000002000000090000000110D13CF800000001000000050000000013E1C500000000000AD3578310D100F80AD3578510D100FA00000007000000020000000500000001000000050F878D09022A457713E201000AD3578310D100F80AD3578510D100FA0AD3578710D10106000000030000000710D13D060DE7CA080E5FD909000000040000000500000005000000030000000210D13CFA00000002000000050000000110D13CF800000001000000050000000013E1C500000000000AD3578310D100F80AD3578510D100FA0AD3578710D101060000000300000005000000050000000200000005000000010000000500000004000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003022A457713E201000AD3578310D100F8000000080000000110D13CF800000001000000050000000013E1C500000000000AD3578310D100F80000000800000001000000050F878D07022A457713E201000AD3578310D100F80AD3578510D100FA0AD3578910D10108000000040000000810D13D080DE7CA060E5FD907000000030000000500000005000000040000000210D13CFA00000002000000050000000110D13CF800000001000000050000000013E1C500000000000AD3578310D100F80AD3578510D100FA0AD3578910D1010800000004000000050000000500000002000000050000000100000005000000030F350D080C9A87060F875107000000030C9A87080F8751090000000400000005000000050F878D070C9A87080F87510900000004000000050F878D09022A457713E201000AD3578310D100F80AD3578510D100FA0DE7CA060E5FD90700000003000000050000000500000002000000050000000100000005000000000000000500000004000000030000000400000003000000020F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D1080000000400000005000000050F350D060CFD9C090F34D10800000004000000050000000500000003000000010F350CF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D1080000000400000005000000050F350D060CFD9C090F34D10800000004000000050000000500000003000000020F350CFA000000020CFD9C070F34D106000000030000000500000005"
theorem small_6154023_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6154023_right_root small_6154023_right_fuel small_6154023_right_count small_6154023_right_encoded = true := by
  decide +kernel
theorem small_6154023_right_covered : CoveredBy scale carrier boxes small_6154023_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6154023_right_root small_6154023_right_fuel small_6154023_right_count small_6154023_right_encoded small_6154023_right_checked

theorem cover_6154023 : CoveredBy scale carrier boxes root_6154023 := by
  apply coveredBy_split_literal root_6154023 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2315.root small_6154023_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2315.covered
  · exact small_6154023_right_covered
#print axioms cover_6154023

def root_6154018 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6154018_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6154018_right_fuel : Nat := 1
def small_6154018_right_count : Nat := 1
def small_6154018_right_encoded : String := "00000004"
theorem small_6154018_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6154018_right_root small_6154018_right_fuel small_6154018_right_count small_6154018_right_encoded = true := by
  decide +kernel
theorem small_6154018_right_covered : CoveredBy scale carrier boxes small_6154018_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6154018_right_root small_6154018_right_fuel small_6154018_right_count small_6154018_right_encoded small_6154018_right_checked

theorem cover_6154018 : CoveredBy scale carrier boxes root_6154018 := by
  apply coveredBy_split_literal root_6154018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6154023 small_6154018_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6154023
  · exact small_6154018_right_covered
#print axioms cover_6154018

def root_6153316 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6153316_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6153316_left_fuel : Nat := 28
def small_6153316_left_count : Nat := 329
def small_6153316_left_encoded : String := "1207010800000004045489F71386AD000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C070F34D1060000000304548A091386710800000004067ECE7700000008000000081386AD08067ECE7712EA95000AD3578310D100F80AD3578510D100FA0AD3578710D1010600000003067ECE890000000812EA95080793F0B70000000800000008000000040000000800000002000000080000000110D13CF8000000010AD3578510D100FA0AD3578710D1010600000003067ECE8912EA5908000000040000000812EA95080793F0B70000000A12822100000000000BE879C3101170F80000000A000000010000000A000000040000000A0000000210D13CFA000000020AD3578710D1010600000003067ECE890000000812EA95080000000800000004000000080000000012EA5900000000000AD3578310D100F80AD3578510D100FA0AD3578710D1010600000003067ECE890000000612EA95080569AC3700000008000000080000000410D13D06000000080000000300000002000000080000000110D13CF8000000010AD3578510D100FA0AD3578710D1010600000003067ECE890000000912EA95080569AC37134111000BE879C3101170F809BE3545117740FA000000060000000200000008000000011011ACF80000000100000005000000001340D500000000000BE879C3101170F80000000600000001000000050000000410D13D060000000A000000030000000210D13CFA000000020AD3578710D10106000000030000000500000005000000040F350D0604548A09000000081386AD080C9A8706000000080F878D07067ECE770000000A00000008000000030000000400000003000000020F350CFA000000020CFD9C070F34D1060000000304548A09000000081386AD080C9A86FA0F878D05067ECE77000000080000000800000002000000080000000400000008000000010F350CF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A0913867108000000040C9A86F800000009000000091386AD080C9A86F80F878D03067ECE7712EA95000AD3578510D100FA0000000A0000000210D13CFA000000020AD3578710D101060000000300000005000000050000000012EA5900000000000AD357850000000900000005000000010F8751030000000100000005000000040F350D0604548A09000000091386AD080C9A86F80000000A0F87510300000001000000090000000400000003000000020F350CFA000000020CFD9C070F34D1060000000304548A09138671080000000400000005000000050F350D0604548A090000000800000005000000030000000013867100000000000CFD9C030F34D0F80CFD9C050F34D0FA0CFD9C070F34D1060000000304548A091386710800000004000000081386AD08022A457713E201000AD3578310D100F80AD3578510D100FA0AD3578710D10106000000030000000610D13D06000000080000000300000002000000080000000110D13CF8000000010AD357850000000910D13CFA00000002000000050000000013E1C500000000000AD3578310D100F80AD3578510D100FA0000000900000002000000080000000110D13CF80000000100000009000000040F350D0604548A09000000081386AD080C9A8706000000080F878D07022A45770000000800000008000000030000000400000003000000020F350CFA000000020CFD9C070000000800000008000000010F350CF8000000010CFD9C050F34D0FA0CFD9C07000000090F350D060000000900000003000000020F350CFA000000020CFD9C070F34D106000000030000000500000005"
theorem small_6153316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6153316_left_root small_6153316_left_fuel small_6153316_left_count small_6153316_left_encoded = true := by
  decide +kernel
theorem small_6153316_left_covered : CoveredBy scale carrier boxes small_6153316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6153316_left_root small_6153316_left_fuel small_6153316_left_count small_6153316_left_encoded small_6153316_left_checked

theorem cover_6153316 : CoveredBy scale carrier boxes root_6153316 := by
  apply coveredBy_split_literal root_6153316 small_6153316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6154018 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6153316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6154018
#print axioms cover_6153316

def root_6153311 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6153311_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6153311_right_fuel : Nat := 1
def small_6153311_right_count : Nat := 1
def small_6153311_right_encoded : String := "00000003"
theorem small_6153311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6153311_right_root small_6153311_right_fuel small_6153311_right_count small_6153311_right_encoded = true := by
  decide +kernel
theorem small_6153311_right_covered : CoveredBy scale carrier boxes small_6153311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6153311_right_root small_6153311_right_fuel small_6153311_right_count small_6153311_right_encoded small_6153311_right_checked

theorem cover_6153311 : CoveredBy scale carrier boxes root_6153311 := by
  apply coveredBy_split_literal root_6153311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6153316 small_6153311_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6153316
  · exact small_6153311_right_covered
#print axioms cover_6153311

def root_6151961 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6151961 : CoveredBy scale carrier boxes root_6151961 := by
  apply coveredBy_split_literal root_6151961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2314.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6153311 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2314.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6153311
#print axioms cover_6151961

def root_6151955 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6151955_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6151955_left_fuel : Nat := 1
def small_6151955_left_count : Nat := 1
def small_6151955_left_encoded : String := "00000002"
theorem small_6151955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6151955_left_root small_6151955_left_fuel small_6151955_left_count small_6151955_left_encoded = true := by
  decide +kernel
theorem small_6151955_left_covered : CoveredBy scale carrier boxes small_6151955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6151955_left_root small_6151955_left_fuel small_6151955_left_count small_6151955_left_encoded small_6151955_left_checked

theorem cover_6151955 : CoveredBy scale carrier boxes root_6151955 := by
  apply coveredBy_split_literal root_6151955 small_6151955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6151961 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6151955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6151961
#print axioms cover_6151955

def root_6148287 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6148287 : CoveredBy scale carrier boxes root_6148287 := by
  apply coveredBy_split_literal root_6148287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6151955 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148288
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6151955
#print axioms cover_6148287

def root_6148281 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148281_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6148281_left_fuel : Nat := 1
def small_6148281_left_count : Nat := 1
def small_6148281_left_encoded : String := "00000001"
theorem small_6148281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6148281_left_root small_6148281_left_fuel small_6148281_left_count small_6148281_left_encoded = true := by
  decide +kernel
theorem small_6148281_left_covered : CoveredBy scale carrier boxes small_6148281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6148281_left_root small_6148281_left_fuel small_6148281_left_count small_6148281_left_encoded small_6148281_left_checked

theorem cover_6148281 : CoveredBy scale carrier boxes root_6148281 := by
  apply coveredBy_split_literal root_6148281 small_6148281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148287 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6148281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148287
#print axioms cover_6148281

def root_6114833 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6114833 : CoveredBy scale carrier boxes root_6114833 := by
  apply coveredBy_split_literal root_6114833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6148281 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114834
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6148281
#print axioms cover_6114833

def root_6114827 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114827_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114827_left_fuel : Nat := 1
def small_6114827_left_count : Nat := 1
def small_6114827_left_encoded : String := "00000000"
theorem small_6114827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114827_left_root small_6114827_left_fuel small_6114827_left_count small_6114827_left_encoded = true := by
  decide +kernel
theorem small_6114827_left_covered : CoveredBy scale carrier boxes small_6114827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114827_left_root small_6114827_left_fuel small_6114827_left_count small_6114827_left_encoded small_6114827_left_checked

theorem cover_6114827 : CoveredBy scale carrier boxes root_6114827 := by
  apply coveredBy_split_literal root_6114827 small_6114827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114833 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6114827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114833
#print axioms cover_6114827

def root_6109133 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6109133 : CoveredBy scale carrier boxes root_6109133 := by
  apply coveredBy_split_literal root_6109133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6109134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6114827 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6109134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6114827
#print axioms cover_6109133

def root_6109128 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109128_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6109128_right_fuel : Nat := 1
def small_6109128_right_count : Nat := 1
def small_6109128_right_encoded : String := "00000004"
theorem small_6109128_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6109128_right_root small_6109128_right_fuel small_6109128_right_count small_6109128_right_encoded = true := by
  decide +kernel
theorem small_6109128_right_covered : CoveredBy scale carrier boxes small_6109128_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6109128_right_root small_6109128_right_fuel small_6109128_right_count small_6109128_right_encoded small_6109128_right_checked

theorem cover_6109128 : CoveredBy scale carrier boxes root_6109128 := by
  apply coveredBy_split_literal root_6109128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6109133 small_6109128_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6109133
  · exact small_6109128_right_covered
#print axioms cover_6109128

def root_6107398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6107398 : CoveredBy scale carrier boxes root_6107398 := by
  apply coveredBy_split_literal root_6107398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2298.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6109128 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2298.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6109128
#print axioms cover_6107398

def root_6107393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6107393_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6107393_right_fuel : Nat := 1
def small_6107393_right_count : Nat := 1
def small_6107393_right_encoded : String := "00000003"
theorem small_6107393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6107393_right_root small_6107393_right_fuel small_6107393_right_count small_6107393_right_encoded = true := by
  decide +kernel
theorem small_6107393_right_covered : CoveredBy scale carrier boxes small_6107393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6107393_right_root small_6107393_right_fuel small_6107393_right_count small_6107393_right_encoded small_6107393_right_checked

theorem cover_6107393 : CoveredBy scale carrier boxes root_6107393 := by
  apply coveredBy_split_literal root_6107393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6107398 small_6107393_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6107398
  · exact small_6107393_right_covered
#print axioms cover_6107393

def root_6104407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104407 : CoveredBy scale carrier boxes root_6104407 := by
  apply coveredBy_split_literal root_6104407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2297.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6107393 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2297.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6107393
#print axioms cover_6104407

def root_6104402 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104402_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104402_right_fuel : Nat := 1
def small_6104402_right_count : Nat := 1
def small_6104402_right_encoded : String := "00000002"
theorem small_6104402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6104402_right_root small_6104402_right_fuel small_6104402_right_count small_6104402_right_encoded = true := by
  decide +kernel
theorem small_6104402_right_covered : CoveredBy scale carrier boxes small_6104402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6104402_right_root small_6104402_right_fuel small_6104402_right_count small_6104402_right_encoded small_6104402_right_checked

theorem cover_6104402 : CoveredBy scale carrier boxes root_6104402 := by
  apply coveredBy_split_literal root_6104402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104407 small_6104402_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104407
  · exact small_6104402_right_covered
#print axioms cover_6104402

def root_6104401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104401 : CoveredBy scale carrier boxes root_6104401 := by
  apply coveredBy_split_literal root_6104401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104402 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2316.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2316.covered
#print axioms cover_6104401

def root_6104396 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104396_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104396_right_fuel : Nat := 1
def small_6104396_right_count : Nat := 1
def small_6104396_right_encoded : String := "00000001"
theorem small_6104396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6104396_right_root small_6104396_right_fuel small_6104396_right_count small_6104396_right_encoded = true := by
  decide +kernel
theorem small_6104396_right_covered : CoveredBy scale carrier boxes small_6104396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6104396_right_root small_6104396_right_fuel small_6104396_right_count small_6104396_right_encoded small_6104396_right_checked

theorem cover_6104396 : CoveredBy scale carrier boxes root_6104396 := by
  apply coveredBy_split_literal root_6104396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104401 small_6104396_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104401
  · exact small_6104396_right_covered
#print axioms cover_6104396

def root_6104395 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104395 : CoveredBy scale carrier boxes root_6104395 := by
  apply coveredBy_split_literal root_6104395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104396 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2317.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104396
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2317.covered
#print axioms cover_6104395

def root_6104389 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104389_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6104389_left_fuel : Nat := 1
def small_6104389_left_count : Nat := 1
def small_6104389_left_encoded : String := "00000000"
theorem small_6104389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6104389_left_root small_6104389_left_fuel small_6104389_left_count small_6104389_left_encoded = true := by
  decide +kernel
theorem small_6104389_left_covered : CoveredBy scale carrier boxes small_6104389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6104389_left_root small_6104389_left_fuel small_6104389_left_count small_6104389_left_encoded small_6104389_left_checked

theorem cover_6104389 : CoveredBy scale carrier boxes root_6104389 := by
  apply coveredBy_split_literal root_6104389 small_6104389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104395 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6104389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104395
#print axioms cover_6104389

def root_6102965 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6102965 : CoveredBy scale carrier boxes root_6102965 := by
  apply coveredBy_split_literal root_6102965 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2296.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6104389 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2296.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6104389
#print axioms cover_6102965

def root_6098319 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6098319 : CoveredBy scale carrier boxes root_6098319 := by
  apply coveredBy_split_literal root_6098319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6098320 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6102965 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6098320
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6102965
#print axioms cover_6098319

def root_6092915 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6092915 : CoveredBy scale carrier boxes root_6092915 := by
  apply coveredBy_split_literal root_6092915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6092916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6098319 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6092916
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6098319
#print axioms cover_6092915

def root_6081487 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6081487 : CoveredBy scale carrier boxes root_6081487 := by
  apply coveredBy_split_literal root_6081487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6081488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6092915 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6081488
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6092915
#print axioms cover_6081487

def root_6032469 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6032469 : CoveredBy scale carrier boxes root_6032469 := by
  apply coveredBy_split_literal root_6032469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6032470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6081487 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6032470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6081487
#print axioms cover_6032469

def root_5870925 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870925 : CoveredBy scale carrier boxes root_5870925 := by
  apply coveredBy_split_literal root_5870925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0146.root_5870926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6032469 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0146.cover_5870926
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6032469
#print axioms cover_5870925

def root_6161050 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161050 : CoveredBy scale carrier boxes root_6161050 := by
  apply coveredBy_split_literal root_6161050 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2318.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2319.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2318.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2319.covered
#print axioms cover_6161050

def root_6165579 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6165579 : CoveredBy scale carrier boxes root_6165579 := by
  apply coveredBy_split_literal root_6165579 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2320.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2321.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2320.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2321.covered
#print axioms cover_6165579

def root_6161049 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161049 : CoveredBy scale carrier boxes root_6161049 := by
  apply coveredBy_split_literal root_6161049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6161050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6165579 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6161050
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6165579
#print axioms cover_6161049

def root_6171446 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6171446 : CoveredBy scale carrier boxes root_6171446 := by
  apply coveredBy_split_literal root_6171446 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2322.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2323.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2322.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2323.covered
#print axioms cover_6171446

def root_6171440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6171440_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6171440_left_fuel : Nat := 1
def small_6171440_left_count : Nat := 1
def small_6171440_left_encoded : String := "00000000"
theorem small_6171440_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6171440_left_root small_6171440_left_fuel small_6171440_left_count small_6171440_left_encoded = true := by
  decide +kernel
theorem small_6171440_left_covered : CoveredBy scale carrier boxes small_6171440_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6171440_left_root small_6171440_left_fuel small_6171440_left_count small_6171440_left_encoded small_6171440_left_checked

theorem cover_6171440 : CoveredBy scale carrier boxes root_6171440 := by
  apply coveredBy_split_literal root_6171440 small_6171440_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6171446 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6171440_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6171446
#print axioms cover_6171440

def root_6170694 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6170694_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6170694_left_fuel : Nat := 22
def small_6170694_left_count : Nat := 349
def small_6170694_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E8FB0A0000FC115225070A0000FE115224FF0000000408A91303120700F808A91307120700FC08A912FF12073CFE000000040500010000000009000000070000000A0000000312073CFC0000000308A912FF12073CFE0000000405000100135D44F70000000A00000000135D80F70000000005000104135D44FB0000000700000002135D80FB0000000204548A03138670F80000000A000000010000000A120700FE05000100135D44F70000000A0000000000000007000000040000000112073CF80000000108A91307120700FC08A912FF12073CFE0000000405000100135D44F70000000A00000000135D80F70000000005000104135D44FB0000000A00000002135D80FB000000020CFD9C03000000070000000A120700FE0500010000000009135D80F700000000050001040000000A00000005000000040000000312073CFC0000000308A912FF12073CFE00000004050001000000000A135D80F70000000000000005000000051151E8FF08A91303120700F808A91307120700FC0000000A000000030000000A0000000112073CF80000000108A91307120700FC0000000A000000030000000A00000004000000031151E907000000030A0000FE115224FF0000000408A91303120700F808A912FF12073CFE00000004000000050000000500000001000000050000000A00000002115224FB000000020A0000FC115225070A0000FE115224FF0000000408A91303120700F808A912FB12073D0408A91307120700FC000000090000000312073CFC0000000308A912FF12073CFE000000040500010000000009135D80F70000000004548A03138670F80000000900000001000000050000000500000002120701040000000208A9130700000009000000050000000112073CF80000000108A912FB12073D0408A91307120700FC08A912FF12073CFE000000040500010000000009135D80F7000000000CFD9C03000000090000000500000005000000030000000500000002000000051151E8FF08A91303120700F808A912FB12073D0408A913070000000912073CFC000000030000000900000002000000090000000112073CF80000000108A912FB12073D0408A91307120700FC0500010000000009135D80F700000000050000FE135D80FF000000040CFD9C030000000900000005135D44FF0CFD9C0300000009000000050000000400000003000000050000000212070104000000020000000900000004000000031151E907000000030A0000FE115224FF00000004000000051151E8FF08A91303120700F808A912FB00000009000000050000000112073CF80000000108A912FB12073D040500010000000005135D80F70000000000000005000000020000000500000004000000011151E903000000010A0001041151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF12073CFE00000004000000050000000500000003000000050000000A000000031151E907000000030000000500000002115224FB000000020A0000FC115225070A0000FE115224FF00000004000000051151E8FF08A912FB12073D0408A91307120700FC0500010000000005135D80F700000000050000F800000005135D450300000001000000050000000312073CFC000000030500010000000005135D80F7000000000000000500000002120701040000000208A91307120700FC00000005000000030000000500000004000000031151E907000000030A0000FE000000051151E8FF08A912FB12073D040500010000000005135D80F700000000050000F800000005135D4503000000010000000A0000000212070104000000020500010000000005135D80F700000000050000F800000005135D450300000001000000090000000400000000"
theorem small_6170694_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6170694_left_root small_6170694_left_fuel small_6170694_left_count small_6170694_left_encoded = true := by
  decide +kernel
theorem small_6170694_left_covered : CoveredBy scale carrier boxes small_6170694_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6170694_left_root small_6170694_left_fuel small_6170694_left_count small_6170694_left_encoded small_6170694_left_checked

theorem cover_6170694 : CoveredBy scale carrier boxes root_6170694 := by
  apply coveredBy_split_literal root_6170694 small_6170694_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6171440 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6170694_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6171440
#print axioms cover_6170694

def root_6170693 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6170693 : CoveredBy scale carrier boxes root_6170693 := by
  apply coveredBy_split_literal root_6170693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6170694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2324.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6170694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2324.covered
#print axioms cover_6170693

def root_6177237 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6177237 : CoveredBy scale carrier boxes root_6177237 := by
  apply coveredBy_split_literal root_6177237 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2325.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2326.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2325.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2326.covered
#print axioms cover_6177237

def root_6177231 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6177231_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6177231_left_fuel : Nat := 1
def small_6177231_left_count : Nat := 1
def small_6177231_left_encoded : String := "00000000"
theorem small_6177231_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6177231_left_root small_6177231_left_fuel small_6177231_left_count small_6177231_left_encoded = true := by
  decide +kernel
theorem small_6177231_left_covered : CoveredBy scale carrier boxes small_6177231_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6177231_left_root small_6177231_left_fuel small_6177231_left_count small_6177231_left_encoded small_6177231_left_checked

theorem cover_6177231 : CoveredBy scale carrier boxes root_6177231 := by
  apply coveredBy_split_literal root_6177231 small_6177231_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6177237 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6177231_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6177237
#print axioms cover_6177231

def root_6176935 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6176935_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6176935_left_fuel : Nat := 19
def small_6176935_left_count : Nat := 139
def small_6176935_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E8FB0A0000FC0000000A1151E907000000030000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A91303120700F8000000090000000112073CF80000000108A912FB12073D0408A91307120700FC0000000A000000030000000A00000002120701040000000208A91307120700FC0500010000000005135D80F70000000005000108000000050000000A000000030000000900000004115224FF0000000408A91303120700F808A912FB0000000A120701040000000208A913070000000A0000000A0000000112073CF80000000108A912FB0000000A120701040000000208A91307120700FC0000000A000000030000000A000000031151E907000000030A0001081151E8FF08A91303120700F8000000090000000112073CF80000000108A912FB0000000A00000009000000040000000A000000011151E903000000010A0001041151E8FB0000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073D0408A91307120700FC0000000A000000030000000A00000002120701040000000208A91307120700FC0500010000000005135D80F700000000050000F800000005135D45030000000105000108000000050000000A0000000312073CFC000000030500010000000009135D80F700000000050000F800000009135D4503000000010000000A000000040000000A000000031151E907000000030000000A00000000"
theorem small_6176935_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6176935_left_root small_6176935_left_fuel small_6176935_left_count small_6176935_left_encoded = true := by
  decide +kernel
theorem small_6176935_left_covered : CoveredBy scale carrier boxes small_6176935_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6176935_left_root small_6176935_left_fuel small_6176935_left_count small_6176935_left_encoded small_6176935_left_checked

theorem cover_6176935 : CoveredBy scale carrier boxes root_6176935 := by
  apply coveredBy_split_literal root_6176935 small_6176935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.root_6177231 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6176935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149.cover_6177231
#print axioms cover_6176935

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0149
