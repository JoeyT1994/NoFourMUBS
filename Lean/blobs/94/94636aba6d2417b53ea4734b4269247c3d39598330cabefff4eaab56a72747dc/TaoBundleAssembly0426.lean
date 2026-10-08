import TaoBundleAssembly0418
import TaoBundleAssembly0423
import TaoBundleAssembly0424
import TaoBundleAssembly0425
import TaoBundleChunkBatch0574
import TaoBundleChunkBatch0575
import TaoBundleChunkBatch0579
import TaoBundleChunkBatch0580
import TaoBundleChunkBatch0581
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426
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
  apply coveredBy_split_literal root_6144533 small_6144533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6145053 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6144533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6145053
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
  apply coveredBy_split_literal root_6144527 small_6144527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6144533 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6144527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6144533
#print axioms cover_6144527

def root_6114839 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6114839 : CoveredBy scale carrier boxes root_6114839 := by
  apply coveredBy_split_literal root_6114839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6114840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6144527 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6114840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6144527
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
  apply coveredBy_split_literal root_6114834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6114839 small_6114834_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6114839
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
  apply coveredBy_split_literal root_6148667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148672 small_6148667_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148672
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
  apply coveredBy_split_literal root_6148293 small_6148293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148667 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6148293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148667
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
  apply coveredBy_split_literal root_6148288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148293 small_6148288_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148293
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
  apply coveredBy_split_literal root_6154018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6154023 small_6154018_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6154023
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
  apply coveredBy_split_literal root_6153316 small_6153316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6154018 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6153316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6154018
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
  apply coveredBy_split_literal root_6153311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6153316 small_6153311_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6153316
  · exact small_6153311_right_covered
#print axioms cover_6153311

def root_6151961 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6151961 : CoveredBy scale carrier boxes root_6151961 := by
  apply coveredBy_split_literal root_6151961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2314.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6153311 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2314.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6153311
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
  apply coveredBy_split_literal root_6151955 small_6151955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6151961 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6151955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6151961
#print axioms cover_6151955

def root_6148287 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6148287 : CoveredBy scale carrier boxes root_6148287 := by
  apply coveredBy_split_literal root_6148287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6151955 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148288
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6151955
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
  apply coveredBy_split_literal root_6148281 small_6148281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148287 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6148281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148287
#print axioms cover_6148281

def root_6114833 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6114833 : CoveredBy scale carrier boxes root_6114833 := by
  apply coveredBy_split_literal root_6114833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6114834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6148281 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6114834
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6148281
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
  apply coveredBy_split_literal root_6114827 small_6114827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6114833 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6114827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6114833
#print axioms cover_6114827

def root_6109133 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6109133 : CoveredBy scale carrier boxes root_6109133 := by
  apply coveredBy_split_literal root_6109133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6109134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6114827 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6109134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6114827
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
  apply coveredBy_split_literal root_6109128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6109133 small_6109128_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6109133
  · exact small_6109128_right_covered
#print axioms cover_6109128

def root_6107398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6107398 : CoveredBy scale carrier boxes root_6107398 := by
  apply coveredBy_split_literal root_6107398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2298.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6109128 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2298.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6109128
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
  apply coveredBy_split_literal root_6107393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6107398 small_6107393_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6107398
  · exact small_6107393_right_covered
#print axioms cover_6107393

def root_6104407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104407 : CoveredBy scale carrier boxes root_6104407 := by
  apply coveredBy_split_literal root_6104407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2297.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6107393 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2297.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6107393
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
  apply coveredBy_split_literal root_6104402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104407 small_6104402_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104407
  · exact small_6104402_right_covered
#print axioms cover_6104402

def root_6104401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104401 : CoveredBy scale carrier boxes root_6104401 := by
  apply coveredBy_split_literal root_6104401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104402 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2316.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104402
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
  apply coveredBy_split_literal root_6104396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104401 small_6104396_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104401
  · exact small_6104396_right_covered
#print axioms cover_6104396

def root_6104395 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6104395 : CoveredBy scale carrier boxes root_6104395 := by
  apply coveredBy_split_literal root_6104395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104396 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2317.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104396
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
  apply coveredBy_split_literal root_6104389 small_6104389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104395 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6104389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104395
#print axioms cover_6104389

def root_6102965 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6102965 : CoveredBy scale carrier boxes root_6102965 := by
  apply coveredBy_split_literal root_6102965 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2296.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6104389 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2296.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6104389
#print axioms cover_6102965

def root_6098319 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6098319 : CoveredBy scale carrier boxes root_6098319 := by
  apply coveredBy_split_literal root_6098319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6098320 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6102965 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6098320
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6102965
#print axioms cover_6098319

def root_6092915 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6092915 : CoveredBy scale carrier boxes root_6092915 := by
  apply coveredBy_split_literal root_6092915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6092916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6098319 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6092916
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6098319
#print axioms cover_6092915

def root_6081487 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6081487 : CoveredBy scale carrier boxes root_6081487 := by
  apply coveredBy_split_literal root_6081487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.root_6081488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6092915 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.cover_6081488
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6092915
#print axioms cover_6081487

def root_6032469 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6032469 : CoveredBy scale carrier boxes root_6032469 := by
  apply coveredBy_split_literal root_6032469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.root_6032470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6081487 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0423.cover_6032470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6081487
#print axioms cover_6032469

def root_5870925 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870925 : CoveredBy scale carrier boxes root_5870925 := by
  apply coveredBy_split_literal root_5870925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.root_5870926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6032469 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0418.cover_5870926
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6032469
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
  apply coveredBy_split_literal root_6161049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6161050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6165579 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6161050
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6165579
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
  apply coveredBy_split_literal root_6171440 small_6171440_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_6171446 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6171440_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_6171446
#print axioms cover_6171440

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426
