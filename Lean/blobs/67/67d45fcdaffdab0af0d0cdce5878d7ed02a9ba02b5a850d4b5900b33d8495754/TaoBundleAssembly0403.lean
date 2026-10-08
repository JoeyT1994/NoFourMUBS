import TaoBundleAssembly0401
import TaoBundleAssembly0402
import TaoBundleChunkBatch0539
import TaoBundleChunkBatch0540
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403
def root_5752621 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752621_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752621_left_fuel : Nat := 23
def small_5752621_left_count : Nat := 437
def small_5752621_left_encoded : String := "1386AD00045489F91386ACF80000000107800104128A410500000002078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000067ECE790000000512EA58F80640010412FF7105000000020000000912FFAD0508C000FC0000000500000009000000020000000100000004128A410900000004067ECE770000000812EA590000000000067ECE7900000009000000080000000300000009128A7D05078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000067ECE790000000512EA58F80000000A0000000100000004128A410900000004067ECE770000000A12EA5900000000000000000A00000003128A410700000003078000FE128A7D09067ECE770000000912EA590000000000067ECE790000000912EA58F808C001040000000911FC2505064000FC0000000A00000009000000020000000100000004128A410900000004067ECE770000000912EA590000000000067ECE790000000912EA58F808C0010411FBE90500000002000000090000000A0000000100000002138670F807800104128A410500000002078000FC128A7D07078000FE128A7D09067ECE7712EA9500022A457913E200F800000001064001040000000512FFAD050000000500000002000000080000000012EA590000000000022A457913E200F8000000010640010412FF71050000000208C000FC11FC2507000000080000000311FBE907000000030000000912FFAD0508C000FC11FC25070000000A0000000311FBE9070000000308C000FE11FC25090569AC37000000091340D50000000000033F67B900000009000000070000000411FBE909000000040569AC37000000081340D50000000000000000080000000213E1C4F80640010412FF71050000000208C000FC000000080000000812FFAD0508C000FC11FC250708C000FE00000006000000080000000311FBE9070000000308C000FE0000000700000008000000020000000100000004128A410900000004067ECE770000000812EA590000000000022A4579000000080000000800000003128A410700000003078000FE128A7D09067ECE770000000912EA590000000000022A45790000000913E1C4F80640010412FF710500000002064000FC12FFAD0708C000FE0000000900000008000000030000000912FFAD05064000FC12FFAD0708C000FE0000000711FBE909000000040569AC37000000081340D500000000000115233900000008000000050000000312FF71070000000308C000FE0000000711FBE9090000000400000009000000020000000100000004128A410900000004067ECE770000000812EA590000000000022A457913E200F800000001064001040000000812FFAD05064000FC00000008000000090000000213E1C4F8064001040000000812FFAD05064000FC00000008000000080000000200000001128A7D05078000FC128A7D07078000FE128A7D09067ECE7712EA9500022A45790000000A13E1C4F80000000A000000010000000012EA590000000000022A457913E200F80000000108C001040000000A0000000A13E1C4F808C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE000000070000000A0000000A0000000100000004128A410900000004067ECE770000000A12EA5900000000000000000A00000003128A410700000003078000FE128A7D09067ECE7712EA9500022A45790000000913E1C4F808C0010411FBE90500000002064000FC12FFAD0700000007000000030000000711FC25050000000700000002000000010000000012EA590000000000022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090569AC3700000007000000070000000411FBE909000000040569AC37000000091340D50000000000033F67B90000000900000007000000030000000911FC2505064000FC12FFAD070000000A0000000312FF71070000000308C000FE0000000711FBE909000000040569AC3700000007000000070000000213E1C4F808C0010411FBE90500000002064000FC12FFAD0708C000FE0000000711FBE9090000000400000007000000030000000711FC250500000007000000020000000100000004128A410900000004067ECE7712EA9500022A457913E200F80000000108C00104000000090000000A13E1C4F808C00104000000080000000A000000010000000012EA590000000000022A457913E200F80000000108C0010411FBE90500000002064000FC0000000A000000090000000A13E1C4F808C0010411FBE90500000002064000FC0000000A12FF710700000003064000FE12FFAD090569AC370000000800000005000000040000000811FC25050000000A0000000200000001000000020000000100000000"
theorem small_5752621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752621_left_root small_5752621_left_fuel small_5752621_left_count small_5752621_left_encoded = true := by
  decide +kernel
theorem small_5752621_left_covered : CoveredBy scale carrier boxes small_5752621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752621_left_root small_5752621_left_fuel small_5752621_left_count small_5752621_left_encoded small_5752621_left_checked

theorem cover_5752621 : CoveredBy scale carrier boxes root_5752621 := by
  apply coveredBy_split_literal root_5752621 small_5752621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5753531 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5752621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5753531
#print axioms cover_5752621

def root_5752616 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752616_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752616_right_fuel : Nat := 1
def small_5752616_right_count : Nat := 1
def small_5752616_right_encoded : String := "00000004"
theorem small_5752616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752616_right_root small_5752616_right_fuel small_5752616_right_count small_5752616_right_encoded = true := by
  decide +kernel
theorem small_5752616_right_covered : CoveredBy scale carrier boxes small_5752616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752616_right_root small_5752616_right_fuel small_5752616_right_count small_5752616_right_encoded small_5752616_right_checked

theorem cover_5752616 : CoveredBy scale carrier boxes root_5752616 := by
  apply coveredBy_split_literal root_5752616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752621 small_5752616_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752621
  · exact small_5752616_right_covered
#print axioms cover_5752616

def root_5752615 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752615_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752615_right_fuel : Nat := 15
def small_5752615_right_count : Nat := 135
def small_5752615_right_encoded : String := "135D450900000004045489F71386AD00045489F91386ACF80000000107800104128A410500000002078000FC00000008128A410700000003028000FE0000000900000006128A7D05078000FC0000000A128A410700000003028000FE13D7ED09067ECE770000000900000006000000040000000600000002138670F807800104128A41050000000200000008128A7D05078000FC0000000A128A410700000003028000FE13D7ED09067ECE770000000812EA590000000000022A45790000000A0000000800000004000000080000000200000001000000001386710000000000045489F91386ACF80000000107800104128A410500000002078000FC128A7D07028000FE13D7ED09022A457713E20100067ECE790000000600000008000000000000000600000004000000060000000300000006128A7D05078000FC128A7D07028000FE13D7ED09022A45770000000A000000060000000400000006000000030000000600000002138670F807800104128A410500000002078000FC128A7D07028000FE13D7ED09022A45770000000800000005000000040000000800000003128A41070000000300000005128A7D05078000FC128A7D07028000FE13D7ED09022A45770000000A000000050000000413D7B109000000040000000A00000003128A410700000003028000FE13D7ED09022A457713E20100022A45790000000600000005000000000000000500000004000000050000000200000001"
theorem small_5752615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752615_right_root small_5752615_right_fuel small_5752615_right_count small_5752615_right_encoded = true := by
  decide +kernel
theorem small_5752615_right_covered : CoveredBy scale carrier boxes small_5752615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752615_right_root small_5752615_right_fuel small_5752615_right_count small_5752615_right_encoded small_5752615_right_checked

theorem cover_5752615 : CoveredBy scale carrier boxes root_5752615 := by
  apply coveredBy_split_literal root_5752615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752616 small_5752615_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752616
  · exact small_5752615_right_covered
#print axioms cover_5752615

def root_5752610 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752610_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752610_right_fuel : Nat := 1
def small_5752610_right_count : Nat := 1
def small_5752610_right_encoded : String := "00000003"
theorem small_5752610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752610_right_root small_5752610_right_fuel small_5752610_right_count small_5752610_right_encoded = true := by
  decide +kernel
theorem small_5752610_right_covered : CoveredBy scale carrier boxes small_5752610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752610_right_root small_5752610_right_fuel small_5752610_right_count small_5752610_right_encoded small_5752610_right_checked

theorem cover_5752610 : CoveredBy scale carrier boxes root_5752610 := by
  apply coveredBy_split_literal root_5752610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752615 small_5752610_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752615
  · exact small_5752610_right_covered
#print axioms cover_5752610

def root_5752609 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752609_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752609_right_fuel : Nat := 24
def small_5752609_right_count : Nat := 259
def small_5752609_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD00045489F900000009138670F807800104128A410500000002028000FC13D7ED07078000FE00000009128A410900000004000000090000000300000009128A7D05028000FC13D7ED07078000FE128A7D09067ECE770000000912EA590000000000022A45790000000913E1C4F808C0010411FBE9050000000203C000FC000000070000000711FC250500000007000000020000000100000004128A410900000004067ECE770000000912EA590000000000022A45790000000913E1C4F808C0010411FBE905000000020000000511FC250503C000FC13A54D07064000FE0000000700000005000000030000000500000002000000010000000313D7B10700000003078000FE00000009128A410900000004000000090000000200000001000000001386710000000000045489F91386ACF80000000107800104128A410500000002028000FC13D7ED07078000FE128A7D09022A4577000000090000000600000004000000060000000300000006128A7D05028000FC13D7ED07078000FE128A7D09022A457713E20100067ECE790000000612EA58F808C0010400000006000000060000000100000000000000060000000400000006000000030000000600000002138670F807800104128A410500000002028000FC13D7ED07078000FE128A7D09022A457713E20100022A45790000000900000005000000000000000500000004128A410900000004000000050000000313D7B10700000003078000FE128A7D09022A457700000009000000050000000400000005128A7D05028000FC13D7ED07078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE9050000000203C000FC13A54D0708C000FE0000000911FBE9090000000400000006000000030000000911FC250503C000FC13A54D0708C000FE00000007000000060000000313A5110700000003000000060000000200000005000000000000000500000004128A410900000004022A457713E20100022A4579000000060000000500000000000000050000000313D7B10700000003078000FE128A7D09022A457713E20100022A4579000000060000000500000000000000050000000400000006000000020000000100000004135D450900000004045489F71386AD00045489F91386ACF800000001078001040000000600000006138670F807800104128A410500000002028000FC13D7ED07028000FE00000009000000060000000300000006128A7D05028000FC13D7ED07028000FE13D7ED09067ECE7712EA9500022A457900000006000000080000000012EA590000000000022A45790000000600000005000000040000000600000003000000060000000200000001000000001386710000000000045489F90000000600000005"
theorem small_5752609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752609_right_root small_5752609_right_fuel small_5752609_right_count small_5752609_right_encoded = true := by
  decide +kernel
theorem small_5752609_right_covered : CoveredBy scale carrier boxes small_5752609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752609_right_root small_5752609_right_fuel small_5752609_right_count small_5752609_right_encoded small_5752609_right_checked

theorem cover_5752609 : CoveredBy scale carrier boxes root_5752609 := by
  apply coveredBy_split_literal root_5752609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752610 small_5752609_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752610
  · exact small_5752609_right_covered
#print axioms cover_5752609

def root_5752604 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752604_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752604_right_fuel : Nat := 1
def small_5752604_right_count : Nat := 1
def small_5752604_right_encoded : String := "00000002"
theorem small_5752604_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752604_right_root small_5752604_right_fuel small_5752604_right_count small_5752604_right_encoded = true := by
  decide +kernel
theorem small_5752604_right_covered : CoveredBy scale carrier boxes small_5752604_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752604_right_root small_5752604_right_fuel small_5752604_right_count small_5752604_right_encoded small_5752604_right_checked

theorem cover_5752604 : CoveredBy scale carrier boxes root_5752604 := by
  apply coveredBy_split_literal root_5752604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752609 small_5752604_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752609
  · exact small_5752604_right_covered
#print axioms cover_5752604

def root_5750468 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5750468 : CoveredBy scale carrier boxes root_5750468 := by
  apply coveredBy_split_literal root_5750468 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2156.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5752604 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2156.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5752604
#print axioms cover_5750468

def root_5750463 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5750463_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5750463_right_fuel : Nat := 1
def small_5750463_right_count : Nat := 1
def small_5750463_right_encoded : String := "00000001"
theorem small_5750463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5750463_right_root small_5750463_right_fuel small_5750463_right_count small_5750463_right_encoded = true := by
  decide +kernel
theorem small_5750463_right_covered : CoveredBy scale carrier boxes small_5750463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5750463_right_root small_5750463_right_fuel small_5750463_right_count small_5750463_right_encoded small_5750463_right_checked

theorem cover_5750463 : CoveredBy scale carrier boxes root_5750463 := by
  apply coveredBy_split_literal root_5750463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5750468 small_5750463_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5750468
  · exact small_5750463_right_covered
#print axioms cover_5750463

def root_5749741 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749741_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749741_left_fuel : Nat := 27
def small_5749741_left_count : Nat := 345
def small_5749741_left_encoded : String := "12073CF80000000105000104135D450500000002050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF9000000050F34D0F800000009000000010000000013867100000000000CFD9BF90F350CF8000000010C9A86F800000009000000090F34D0F80280010413D7B10500000002078000FC128A7D07078000FE0000000900000007000000030000000913D7ED05078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F8000000090000000100000004128A410900000004022A457700000009000000060000000300000009000000020000000100000004135D450900000004045489F71386AD000CFD9BF900000009000000080000000013867100000000000CFD9BF9000000060F34D0F8000000060000000100000003135D450700000003050000FE00000009135D450900000004045489F70000000900000006135D8105050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350CF8000000010C9A86F8000000050F8750F900000005000000010F34D0F807800104128A410500000002078000FC128A7D07000000050000000300000009128A7D05078000FC128A7D0700000005000000030000000900000002000000010000000013867100000000000CFD9BF90F350CF8000000010C9A86F80F878CF90000000107800104128A410500000002078000FC128A7D07078000FE00000005000000060000000300000006128A7D05078000FC128A7D07078000FE00000005000000060000000300000006000000020F8750F90780010400000006128A7D05078000FC128A7D07078000FE0000000500000006000000030000000600000002000000010F34D0F807800104128A410500000002078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F80640010412FF71050000000208C000FC11FC250708C000FE0000000500000006000000030000000612FFAD0508C000FC11FC250708C000FE00000005000000060000000300000006000000020000000100000004128A410900000004022A457713E201000AD357790000000510D100F80000000600000001000000000000000600000003128A410700000003078000FE128A7D09022A457700000009000000060000000400000006128A7D05078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F808C0010411FBE9050000000208C000FC11FC250700000005000000030000000611FC25050000000A000000020000000100000004128A410900000004022A457713E201000AD357790000000510D100F80000000600000001000000000000000600000003128A410700000003078000FE128A7D09022A457713E201000AD357790000000510D100F8000000060000000100000000000000060000000400000006000000020000000100000004135D450900000004045489F71386AD000CFD9BF90F350CF8000000010C9A86F80F878CF9000000010780010400000006000000060F8750F900000006000000010F34D0F807800104128A410500000002078000FC128A7D07000000080000000300000006128A7D05078000FC128A7D070000000A000000030000000600000002000000010000000013867100000000000CFD9BF9000000060F34D0F80780010400000006000000060000000100000003135D450700000003050000FE135D8109045489F71386AD00000000090000000013867100000000000CFD9BF9000000060F34D0F80780010400000006000000060000000100000004135D450900000004045489F71386AD000CFD9BF9000000060F34D0F80000000600000001000000000000000600000002"
theorem small_5749741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749741_left_root small_5749741_left_fuel small_5749741_left_count small_5749741_left_encoded = true := by
  decide +kernel
theorem small_5749741_left_covered : CoveredBy scale carrier boxes small_5749741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749741_left_root small_5749741_left_fuel small_5749741_left_count small_5749741_left_encoded small_5749741_left_checked

theorem cover_5749741 : CoveredBy scale carrier boxes root_5749741 := by
  apply coveredBy_split_literal root_5749741 small_5749741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5750463 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5749741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5750463
#print axioms cover_5749741

def root_5749735 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749735_left_fuel : Nat := 1
def small_5749735_left_count : Nat := 1
def small_5749735_left_encoded : String := "00000000"
theorem small_5749735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749735_left_root small_5749735_left_fuel small_5749735_left_count small_5749735_left_encoded = true := by
  decide +kernel
theorem small_5749735_left_covered : CoveredBy scale carrier boxes small_5749735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749735_left_root small_5749735_left_fuel small_5749735_left_count small_5749735_left_encoded small_5749735_left_checked

theorem cover_5749735 : CoveredBy scale carrier boxes root_5749735 := by
  apply coveredBy_split_literal root_5749735 small_5749735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5749741 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5749735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5749741
#print axioms cover_5749735

def root_5749481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749481_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749481_left_fuel : Nat := 20
def small_5749481_left_count : Nat := 117
def small_5749481_left_encoded : String := "12073D0008A912F912073CF80000000105000104135D45050000000200000009135D8105050000FC135D8107050000FE135D81090CFD9BF7000000050F34D100000000000CFD9BF9000000050F34D0F8000000050000000100000004135D4509000000040CFD9BF7000000090F34D100000000000CFD9BF9000000090F34D0F80000000900000001000000030000000900000002120700F805000104135D450500000002050000FC135D8107050000FE00000009000000080000000300000009135D8105050000FC135D8107050000FE135D81090CFD9BF70F350D0000000005000000000F34D10000000000045489F91386ACF8000000010780010400000005128A7D050000000500000002138670F807800104128A410500000002078000FC128A7D07000000080000000300000009128A7D05078000FC128A7D07078000FE128A7D0900000005000000040000000800000003128A410700000003078000FE00000009128A41090000000400000009000000020000000100000004135D4509000000040CFD9BF7000000080F34D10000000000045489F91386ACF800000001000000080000000800000003135D450700000003050000FE00000009135D45090000000400000009000000020000000100000000"
theorem small_5749481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749481_left_root small_5749481_left_fuel small_5749481_left_count small_5749481_left_encoded = true := by
  decide +kernel
theorem small_5749481_left_covered : CoveredBy scale carrier boxes small_5749481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749481_left_root small_5749481_left_fuel small_5749481_left_count small_5749481_left_encoded small_5749481_left_checked

theorem cover_5749481 : CoveredBy scale carrier boxes root_5749481 := by
  apply coveredBy_split_literal root_5749481 small_5749481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5749735 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5749481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5749735
#print axioms cover_5749481

def root_5749475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749475_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749475_left_fuel : Nat := 1
def small_5749475_left_count : Nat := 1
def small_5749475_left_encoded : String := "00000004"
theorem small_5749475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749475_left_root small_5749475_left_fuel small_5749475_left_count small_5749475_left_encoded = true := by
  decide +kernel
theorem small_5749475_left_covered : CoveredBy scale carrier boxes small_5749475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749475_left_root small_5749475_left_fuel small_5749475_left_count small_5749475_left_encoded small_5749475_left_checked

theorem cover_5749475 : CoveredBy scale carrier boxes root_5749475 := by
  apply coveredBy_split_literal root_5749475 small_5749475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5749481 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5749475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5749481
#print axioms cover_5749475

def root_5742051 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5742051 : CoveredBy scale carrier boxes root_5742051 := by
  apply coveredBy_split_literal root_5742051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.root_5742052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5749475 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0402.cover_5742052
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5749475
#print axioms cover_5742051

def root_5742045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742045_left_fuel : Nat := 1
def small_5742045_left_count : Nat := 1
def small_5742045_left_encoded : String := "00000003"
theorem small_5742045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742045_left_root small_5742045_left_fuel small_5742045_left_count small_5742045_left_encoded = true := by
  decide +kernel
theorem small_5742045_left_covered : CoveredBy scale carrier boxes small_5742045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742045_left_root small_5742045_left_fuel small_5742045_left_count small_5742045_left_encoded small_5742045_left_checked

theorem cover_5742045 : CoveredBy scale carrier boxes root_5742045 := by
  apply coveredBy_split_literal root_5742045 small_5742045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5742051 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5742045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5742051
#print axioms cover_5742045

def root_5736521 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5736521 : CoveredBy scale carrier boxes root_5736521 := by
  apply coveredBy_split_literal root_5736521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5736522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5742045 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5736522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5742045
#print axioms cover_5736521

def root_5736515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736515_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736515_left_fuel : Nat := 1
def small_5736515_left_count : Nat := 1
def small_5736515_left_encoded : String := "00000002"
theorem small_5736515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5736515_left_root small_5736515_left_fuel small_5736515_left_count small_5736515_left_encoded = true := by
  decide +kernel
theorem small_5736515_left_covered : CoveredBy scale carrier boxes small_5736515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5736515_left_root small_5736515_left_fuel small_5736515_left_count small_5736515_left_encoded small_5736515_left_checked

theorem cover_5736515 : CoveredBy scale carrier boxes root_5736515 := by
  apply coveredBy_split_literal root_5736515 small_5736515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5736521 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5736515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5736521
#print axioms cover_5736515

def root_5762321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5762321 : CoveredBy scale carrier boxes root_5762321 := by
  apply coveredBy_split_literal root_5762321 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2159.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2160.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2159.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2160.covered
#print axioms cover_5762321

def root_5762315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5762315_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5762315_left_fuel : Nat := 1
def small_5762315_left_count : Nat := 1
def small_5762315_left_encoded : String := "00000003"
theorem small_5762315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5762315_left_root small_5762315_left_fuel small_5762315_left_count small_5762315_left_encoded = true := by
  decide +kernel
theorem small_5762315_left_covered : CoveredBy scale carrier boxes small_5762315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5762315_left_root small_5762315_left_fuel small_5762315_left_count small_5762315_left_encoded small_5762315_left_checked

theorem cover_5762315 : CoveredBy scale carrier boxes root_5762315 := by
  apply coveredBy_split_literal root_5762315 small_5762315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.root_5762321 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5762315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403.cover_5762321
#print axioms cover_5762315

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0403
