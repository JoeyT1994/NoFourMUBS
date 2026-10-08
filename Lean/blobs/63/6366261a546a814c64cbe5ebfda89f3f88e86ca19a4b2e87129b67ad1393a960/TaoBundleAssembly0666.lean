import TaoBundleAssembly0665
import TaoBundleChunkBatch0922
import TaoBundleChunkBatch0924
import TaoBundleChunkBatch0925
import TaoBundleChunkBatch0926
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666
def root_9847574 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847574_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847574_right_fuel : Nat := 31
def small_9847574_right_count : Nat := 267
def small_9847574_right_encoded : String := "138670FE0C9A86FC0F878D070280010013D7B1010000000002800102000000090000000713D7ED010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC0E60150700000007000000030E5FD9070000000303C001000000000913A54D0101400102000000090000000700000000000000070000000913D7ED03067ECE7B0000000712EA58FA022A457F13E200FE000000040DE7C9FC000000070E5FD907000000030000000700000007000000020000000100000000000000030F875107000000030280010013D7B10100000000028001020000000913D7ED03067ECE7B00000007000000090000000113D7ED010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D0703C001000000000913A54D01014001020000000913F615030793F0BB12825CFA000000020000000900000009000000010000000000000003108011070000000303C001000000000913A54D01014001020000000813F61503000000080000000100000000000000090000000913D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D0703C001000000000713A54D0103C0010213A51103000000010793F0BB00000007128220FA0000000700000002000000070000000000000003108011070000000303C0010013A511010000000003C0010213A51103000000010793F0BB00000006000000090000000713A54D0103C0010213A51103000000010793F0BB12825CFA00000002033F67BF0000000800000006128220FA033F67BF13BC30FE000000040AA6A27C10EDAD07046001000000000913841901032001020000000800000007000000000000000310ED71070000000300000008000000090000000213A54D030793F0BB00000007128220FA000000070000000200000001000000000000000712EA58FA022A457F13E200FE000000040B4D43FC10804D0703C0010013A511010000000003C00102000000050000000713A54D0103C0010213A51103000000010569AC3B134110FA00000002000000090000000513A54D030569AC3B000000071340D4FA0000000700000002000000010000000000000003108011070000000303C0010013A511010000000003C001020000000513A54D030569AC3B00000007000000050000000113A54D0103C0010213A51103000000010569AC3B134110FA00000002000000090000000513A54D030569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD07000000070000000310ED710700000003046001001383DD010000000004600102000000050000000713841901046001021383DD030000000105F43D5B1317F8FA0000000203C9F8DF000000AE00000005000000050000000700000000000000050000000500000001000000000000000500000002000000010000000000000004"
theorem small_9847574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847574_right_root small_9847574_right_fuel small_9847574_right_count small_9847574_right_encoded = true := by
  decide +kernel
theorem small_9847574_right_covered : CoveredBy scale carrier boxes small_9847574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847574_right_root small_9847574_right_fuel small_9847574_right_count small_9847574_right_encoded small_9847574_right_checked

theorem cover_9847574 : CoveredBy scale carrier boxes root_9847574 := by
  apply coveredBy_split_literal root_9847574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9847575 small_9847574_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9847575
  · exact small_9847574_right_covered
#print axioms cover_9847574

def root_9847568 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847568_left_fuel : Nat := 1
def small_9847568_left_count : Nat := 1
def small_9847568_left_encoded : String := "00000003"
theorem small_9847568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847568_left_root small_9847568_left_fuel small_9847568_left_count small_9847568_left_encoded = true := by
  decide +kernel
theorem small_9847568_left_covered : CoveredBy scale carrier boxes small_9847568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847568_left_root small_9847568_left_fuel small_9847568_left_count small_9847568_left_encoded small_9847568_left_checked

theorem cover_9847568 : CoveredBy scale carrier boxes root_9847568 := by
  apply coveredBy_split_literal root_9847568 small_9847568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847574 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9847568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847574
#print axioms cover_9847568

def root_9847468 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847468_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847468_left_fuel : Nat := 15
def small_9847468_left_count : Nat := 47
def small_9847468_left_encoded : String := "0F34D0FC045489FF1386ACFE000000040280010013D7B101000000000280010213D7B10300000001067ECE7B12EA94FA000000020AD357870000000710D13CFC00000003067ECE7F12EA94FE000000040140010000000007000000060000000712EA58FA0AD357870000000610D13CFC0000000300000009000000020000000713D7ED010280010213D7B103000000010000000613D7ED03067ECE7B00000007000000060000000100000000138670FE000000070000000400000003"
theorem small_9847468_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847468_left_root small_9847468_left_fuel small_9847468_left_count small_9847468_left_encoded = true := by
  decide +kernel
theorem small_9847468_left_covered : CoveredBy scale carrier boxes small_9847468_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847468_left_root small_9847468_left_fuel small_9847468_left_count small_9847468_left_encoded small_9847468_left_checked

theorem cover_9847468 : CoveredBy scale carrier boxes root_9847468 := by
  apply coveredBy_split_literal root_9847468 small_9847468_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847568 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9847468_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847568
#print axioms cover_9847468

def root_9847462 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847462_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847462_left_fuel : Nat := 1
def small_9847462_left_count : Nat := 1
def small_9847462_left_encoded : String := "00000002"
theorem small_9847462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847462_left_root small_9847462_left_fuel small_9847462_left_count small_9847462_left_encoded = true := by
  decide +kernel
theorem small_9847462_left_covered : CoveredBy scale carrier boxes small_9847462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847462_left_root small_9847462_left_fuel small_9847462_left_count small_9847462_left_encoded small_9847462_left_checked

theorem cover_9847462 : CoveredBy scale carrier boxes root_9847462 := by
  apply coveredBy_split_literal root_9847462 small_9847462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847468 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9847462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847468
#print axioms cover_9847462

def root_9847461 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847461_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847461_right_fuel : Nat := 33
def small_9847461_right_count : Nat := 321
def small_9847461_right_encoded : String := "138670FA0CFD9C070F34D0FC045489FF0000000600000009000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D070280010013D7B10100000000028001020000000913D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040DE7C9FC0E60150700000006000000030E5FD9070000000301400100000000090000000600000009000000090000000113D7ED01028001020000000613D7ED03022A457B13E200FA00000002067ECE7F0000000612EA58FE0DE7C9FC000000060E5FD907000000030000000600000004000000060000000100000000000000030F875107000000030280010013D7B10100000000028001020000000913D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040B4D43FC10804D07014001000000000913F6150103C001020000000913A54D03033F67BB13BC30FA000000020793F0BF0000000A00000009000000090000000100000000000000031080110700000003014001000000000913F6150103C00102000000090000000A0000000000000009000000090000000113D7ED010280010213D7B10300000001022A457B13E200FA00000002067ECE7F00000006000000090000000613D7ED03022A457B13E200FA00000002067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A511010000000003C001020000000613A54D03033F67BB13BC30FA000000020793F0BF00000006128220FE000000060000000400000006000000010000000600000003108011070000000303C0010013A511010000000003C0010213A5110300000001033F67BB13BC30FA000000020793F0BF00000006000000090000000613A54D03033F67BB13BC30FA000000020793F0BF0000000A128220FE0AA6A27C10EDAD070320010000000009000000060000000310ED7107000000030000000A0000000413BBF4FA0793F0BF0000000600000009000000020000000113A54D0103C001020000000613A54D03033F67BB13BC30FA000000020793F0BF00000006128220FE000000060000000400000006000000010000000012EA58FE0B4D43FC10804D0703C0010013A511010000000003C001020000000513A54D03033F67BB13BC30FA0000000200000009000000050000000113A54D0103C001020000000613A54D03033F67BB13BC30FA000000020569AC3F000000061340D4FE000000060000000400000006000000010000000000000003108011070000000303C0010013A511010000000003C001020000000513A54D03033F67BB13BC30FA000000020569AC3F134110FE000000040000000900000005000000050000000113A54D0103C0010213A5110300000001033F67BB13BC30FA000000020569AC3F00000006000000050000000513A54D03033F67BB13BC30FA000000020569AC3F134110FE000000040AA6A27C10EDAD07000000060000000310ED710700000003046001001383DD010000000004600102000000051384190303C9F8DB000000AE000000050000000100000006000000050000000500000001000000000000000413E1C4FA067ECE7F0000000612EA58FE0000000500000004000000020000000100000000138670FE0C9A86FC0F878D07028001000000000513D7ED01028001020000000513D7ED03022A457B13E200FA00000002022A457F13E200FE000000040DE7C9FC0E60150700000006000000030000000900000005000000050000000100000000000000030F87510700000003000000050000000400000002"
theorem small_9847461_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847461_right_root small_9847461_right_fuel small_9847461_right_count small_9847461_right_encoded = true := by
  decide +kernel
theorem small_9847461_right_covered : CoveredBy scale carrier boxes small_9847461_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847461_right_root small_9847461_right_fuel small_9847461_right_count small_9847461_right_encoded small_9847461_right_checked

theorem cover_9847461 : CoveredBy scale carrier boxes root_9847461 := by
  apply coveredBy_split_literal root_9847461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847462 small_9847461_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847462
  · exact small_9847461_right_covered
#print axioms cover_9847461

def root_9847455 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847455_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847455_left_fuel : Nat := 1
def small_9847455_left_count : Nat := 1
def small_9847455_left_encoded : String := "00000001"
theorem small_9847455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847455_left_root small_9847455_left_fuel small_9847455_left_count small_9847455_left_encoded = true := by
  decide +kernel
theorem small_9847455_left_covered : CoveredBy scale carrier boxes small_9847455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847455_left_root small_9847455_left_fuel small_9847455_left_count small_9847455_left_encoded small_9847455_left_checked

theorem cover_9847455 : CoveredBy scale carrier boxes root_9847455 := by
  apply coveredBy_split_literal root_9847455 small_9847455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847461 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9847455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847461
#print axioms cover_9847455

def root_9858177 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9858177 : CoveredBy scale carrier boxes root_9858177 := by
  apply coveredBy_split_literal root_9858177 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3693.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3694.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3693.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3694.covered
#print axioms cover_9858177

def root_9858172 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9858172_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9858172_right_fuel : Nat := 1
def small_9858172_right_count : Nat := 1
def small_9858172_right_encoded : String := "00000001"
theorem small_9858172_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9858172_right_root small_9858172_right_fuel small_9858172_right_count small_9858172_right_encoded = true := by
  decide +kernel
theorem small_9858172_right_covered : CoveredBy scale carrier boxes small_9858172_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9858172_right_root small_9858172_right_fuel small_9858172_right_count small_9858172_right_encoded small_9858172_right_checked

theorem cover_9858172 : CoveredBy scale carrier boxes root_9858172 := by
  apply coveredBy_split_literal root_9858172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9858177 small_9858172_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9858177
  · exact small_9858172_right_covered
#print axioms cover_9858172

def root_9847454 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847454 : CoveredBy scale carrier boxes root_9847454 := by
  apply coveredBy_split_literal root_9847454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9858172 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847455
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9858172
#print axioms cover_9847454

def root_9847448 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847448_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847448_left_fuel : Nat := 1
def small_9847448_left_count : Nat := 1
def small_9847448_left_encoded : String := "00000000"
theorem small_9847448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847448_left_root small_9847448_left_fuel small_9847448_left_count small_9847448_left_encoded = true := by
  decide +kernel
theorem small_9847448_left_covered : CoveredBy scale carrier boxes small_9847448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847448_left_root small_9847448_left_fuel small_9847448_left_count small_9847448_left_encoded small_9847448_left_checked

theorem cover_9847448 : CoveredBy scale carrier boxes root_9847448 := by
  apply coveredBy_split_literal root_9847448 small_9847448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847454 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9847448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847454
#print axioms cover_9847448

def root_9862158 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862158_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862158_right_fuel : Nat := 29
def small_9862158_right_count : Nat := 451
def small_9862158_right_encoded : String := "138670FE0C9A86FC0F878D0707800100128A4101000000000280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC0000000A0000000A0000000A0000000A13D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040DE7C9FC000000070000000A0000000712EA58FA022A457F13E200FE000000040DE7C9FC0000000A0000000A000000070000000200000001128A7D01028001020000000A0000000A00000000000000030F8751070000000307800100128A4101000000000280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000001400102000000080000000A0000000A0000000310801107000000030640010012FF710100000000000000080000000813E1C4FE0B4D43FC0000000A10801107000000030640010000000008000000080000000412EA58FA022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000001400102000000090000000A000000060000000310801107000000030640010012FF710100000000014001020000000513F615030569AC3B134110FA00000002033F67BF13BC30FE000000040000000900000005000000050000000112FFAD01014001020000000A13F615030569AC3B0000000A0000000A000000010000000013E1C4FE00000005000000040000000213D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000003C0010213A51103000000010793F0BB0000000A0000000A000000070000000A0000000310801107000000030640010012FF71010000000003C0010213A51103000000010793F0BB12825CFA0000000200000008128220FA033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED710700000003000000080000000A0000000213A54D030793F0BB12825CFA00000002033F67BF13BC30FE000000040AA6A27C0000000710ED7107000000030000000800000007128220FA033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED71070000000305A0010013313501000000000460010200000008000000070000000A00000007000000020000000112FFAD0103C0010213A51103000000010793F0BB000000080000000A13A54D030793F0BB0000000A0000000A000000010000000013E1C4FE0B4D43FC10804D07000000070000000310801107000000030640010012FF71010000000003C001020000000A000000070000000A0000000412EA58FA022A457F13E200FE000000040B4D43FC10804D070640010012FF71010000000003C0010213A51103000000010569AC3B0000000A0000000A13A54D030569AC3B0000000A0000000A0000000112FFAD010000000A000000000000000310801107000000030640010012FF71010000000003C0010213A51103000000010569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD070000000A0000000310ED71070000000305A001001331350100000000032001020000000513C1450305F43D5B0000000800000005000000010000000A000000050000000513A54D030569AC3B134110FA00000002033F67BF13BC30FE000000040AA6A27C10EDAD0705A0010013313501000000000000000A0000000A0000000310ED71070000000305A001001331350100000000046001021383DD030000000105F43D5B0000000A0000000A1384190305F43D5B000000070000000A0000000113317101046001020000000A0000000A0000000013BBF4FE0000000A000000041340D4FA033F67BF13BC30FE000000040AA6A27C10EDAD0705A001001331350100000000000000050000000A0000000310ED71070000000305A00100000000051331710104600102000000050000000A0000000000000005000000020000000112FFAD0103C0010213A51103000000010569AC3B0000000A0000000A13A54D030569AC3B134110FA000000020000000A0000000A000000010000000013E1C4FE0B4D43FC10804D070000000A00000003108011070000000306400100000000050000000A000000040000000200000001128A7D010280010213D7B10300000001067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC0000000A0000000A0000000A12EA58FA022A457F13E200FE000000040B4D43FC000000060000000A0000000A0000000213D7ED03067ECE7B12EA94FA00000002022A457F13E200FE000000040B4D43FC10804D070000000A00000003108011070000000308C0010011FBE901000000000000000A0000000A0000000A12EA58FA022A457F13E200FE000000040B4D43FC10804D070000000A00000003108011070000000308C0010011FBE9010000000003C001020000000A0000000A0000000A0000000A00000002000000010000000000000004"
theorem small_9862158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862158_right_root small_9862158_right_fuel small_9862158_right_count small_9862158_right_encoded = true := by
  decide +kernel
theorem small_9862158_right_covered : CoveredBy scale carrier boxes small_9862158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862158_right_root small_9862158_right_fuel small_9862158_right_count small_9862158_right_encoded small_9862158_right_checked

theorem cover_9862158 : CoveredBy scale carrier boxes root_9862158 := by
  apply coveredBy_split_literal root_9862158 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3695.root small_9862158_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3695.covered
  · exact small_9862158_right_covered
#print axioms cover_9862158

def root_9862152 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862152_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862152_left_fuel : Nat := 1
def small_9862152_left_count : Nat := 1
def small_9862152_left_encoded : String := "00000003"
theorem small_9862152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862152_left_root small_9862152_left_fuel small_9862152_left_count small_9862152_left_encoded = true := by
  decide +kernel
theorem small_9862152_left_covered : CoveredBy scale carrier boxes small_9862152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862152_left_root small_9862152_left_fuel small_9862152_left_count small_9862152_left_encoded small_9862152_left_checked

theorem cover_9862152 : CoveredBy scale carrier boxes root_9862152 := by
  apply coveredBy_split_literal root_9862152 small_9862152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862158 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9862152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862158
#print axioms cover_9862152

def root_9862128 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862128_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862128_left_fuel : Nat := 6
def small_9862128_left_count : Nat := 11
def small_9862128_left_encoded : String := "0F34D0FC045489FF00000006138670FE07800100128A4101000000000000000A000000060000000400000003"
theorem small_9862128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862128_left_root small_9862128_left_fuel small_9862128_left_count small_9862128_left_encoded = true := by
  decide +kernel
theorem small_9862128_left_covered : CoveredBy scale carrier boxes small_9862128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862128_left_root small_9862128_left_fuel small_9862128_left_count small_9862128_left_encoded small_9862128_left_checked

theorem cover_9862128 : CoveredBy scale carrier boxes root_9862128 := by
  apply coveredBy_split_literal root_9862128 small_9862128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862152 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9862128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862152
#print axioms cover_9862128

def root_9862122 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862122_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862122_left_fuel : Nat := 1
def small_9862122_left_count : Nat := 1
def small_9862122_left_encoded : String := "00000002"
theorem small_9862122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862122_left_root small_9862122_left_fuel small_9862122_left_count small_9862122_left_encoded = true := by
  decide +kernel
theorem small_9862122_left_covered : CoveredBy scale carrier boxes small_9862122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862122_left_root small_9862122_left_fuel small_9862122_left_count small_9862122_left_encoded small_9862122_left_checked

theorem cover_9862122 : CoveredBy scale carrier boxes root_9862122 := by
  apply coveredBy_split_literal root_9862122 small_9862122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862128 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9862122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862128
#print axioms cover_9862122

def root_9862121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862121_right_fuel : Nat := 29
def small_9862121_right_count : Nat := 135
def small_9862121_right_encoded : String := "138670FA0CFD9C070F34D0FC00000006000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC000000060F8751070000000307800100128A410100000000028001020000000613D7ED03022A457B13E200FA00000002067ECE7F0000000612EA58FE0B4D43FC0000000610801107000000030640010012FF71010000000003C001020000000613A54D03033F67BB13BC30FA000000020569AC3F000000061340D4FE0AA6A27C0000000610ED71070000000305A0010000000005000000060000000400000006000000010000000600000004000000060000000100000006138670FE0C9A86FC0F878D0707800100128A410100000000028001020000000613D7ED03022A457B13E200FA00000002022A457F000000060000000A000000060000000100000006000000030F8751070000000307800100128A4101000000000280010213D7B103000000010000000513D7ED03022A457B13E200FA00000002022A457F13E200FE000000040B4D43FC10804D070640010012FF7101000000000000000500000006000000031080110700000003064001000000000512FFAD0103C001020000000513A54D03033F67BB13BC30FA000000020000000A000000050000000100000000000000050000000500000001128A7D010280010213D7B103000000010000000613D7ED03022A457B13E200FA00000002022A457F000000060000000A0000000600000001000000000000000400000002"
theorem small_9862121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862121_right_root small_9862121_right_fuel small_9862121_right_count small_9862121_right_encoded = true := by
  decide +kernel
theorem small_9862121_right_covered : CoveredBy scale carrier boxes small_9862121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862121_right_root small_9862121_right_fuel small_9862121_right_count small_9862121_right_encoded small_9862121_right_checked

theorem cover_9862121 : CoveredBy scale carrier boxes root_9862121 := by
  apply coveredBy_split_literal root_9862121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862122 small_9862121_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862122
  · exact small_9862121_right_covered
#print axioms cover_9862121

def root_9862115 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862115_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862115_left_fuel : Nat := 1
def small_9862115_left_count : Nat := 1
def small_9862115_left_encoded : String := "00000001"
theorem small_9862115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862115_left_root small_9862115_left_fuel small_9862115_left_count small_9862115_left_encoded = true := by
  decide +kernel
theorem small_9862115_left_covered : CoveredBy scale carrier boxes small_9862115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862115_left_root small_9862115_left_fuel small_9862115_left_count small_9862115_left_encoded small_9862115_left_checked

theorem cover_9862115 : CoveredBy scale carrier boxes root_9862115 := by
  apply coveredBy_split_literal root_9862115 small_9862115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862121 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9862115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862121
#print axioms cover_9862115

def root_9862114 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9862114 : CoveredBy scale carrier boxes root_9862114 := by
  apply coveredBy_split_literal root_9862114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862115 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3696.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862115
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3696.covered
#print axioms cover_9862114

def root_9862109 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862109_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9862109_right_fuel : Nat := 1
def small_9862109_right_count : Nat := 1
def small_9862109_right_encoded : String := "00000000"
theorem small_9862109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9862109_right_root small_9862109_right_fuel small_9862109_right_count small_9862109_right_encoded = true := by
  decide +kernel
theorem small_9862109_right_covered : CoveredBy scale carrier boxes small_9862109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9862109_right_root small_9862109_right_fuel small_9862109_right_count small_9862109_right_encoded small_9862109_right_checked

theorem cover_9862109 : CoveredBy scale carrier boxes root_9862109 := by
  apply coveredBy_split_literal root_9862109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862114 small_9862109_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862114
  · exact small_9862109_right_covered
#print axioms cover_9862109

def root_9847447 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847447 : CoveredBy scale carrier boxes root_9847447 := by
  apply coveredBy_split_literal root_9847447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9862109 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9862109
#print axioms cover_9847447

def root_9847442 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847442_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847442_right_fuel : Nat := 1
def small_9847442_right_count : Nat := 1
def small_9847442_right_encoded : String := "00000004"
theorem small_9847442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847442_right_root small_9847442_right_fuel small_9847442_right_count small_9847442_right_encoded = true := by
  decide +kernel
theorem small_9847442_right_covered : CoveredBy scale carrier boxes small_9847442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847442_right_root small_9847442_right_fuel small_9847442_right_count small_9847442_right_encoded small_9847442_right_checked

theorem cover_9847442 : CoveredBy scale carrier boxes root_9847442 := by
  apply coveredBy_split_literal root_9847442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847447 small_9847442_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847447
  · exact small_9847442_right_covered
#print axioms cover_9847442

def root_9845284 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9845284 : CoveredBy scale carrier boxes root_9845284 := by
  apply coveredBy_split_literal root_9845284 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3688.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9847442 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3688.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9847442
#print axioms cover_9845284

def root_9845278 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845278_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845278_left_fuel : Nat := 1
def small_9845278_left_count : Nat := 1
def small_9845278_left_encoded : String := "00000003"
theorem small_9845278_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845278_left_root small_9845278_left_fuel small_9845278_left_count small_9845278_left_encoded = true := by
  decide +kernel
theorem small_9845278_left_covered : CoveredBy scale carrier boxes small_9845278_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845278_left_root small_9845278_left_fuel small_9845278_left_count small_9845278_left_encoded small_9845278_left_checked

theorem cover_9845278 : CoveredBy scale carrier boxes root_9845278 := by
  apply coveredBy_split_literal root_9845278 small_9845278_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9845284 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9845278_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9845284
#print axioms cover_9845278

def root_9845198 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845198_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845198_left_fuel : Nat := 9
def small_9845198_left_count : Nat := 39
def small_9845198_left_encoded : String := "120700FC08A912FF12073CFE0000000405000100135D45010000000005000102135D45030000000100000006135D8103045489FB00000005000000060000000100000006120700FE05000100135D45010000000005000102135D450300000001045489FB000000070000000600000007135D81010500010200000006135D8103045489FB000000070000000600000001000000000000000400000003"
theorem small_9845198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845198_left_root small_9845198_left_fuel small_9845198_left_count small_9845198_left_encoded = true := by
  decide +kernel
theorem small_9845198_left_covered : CoveredBy scale carrier boxes small_9845198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845198_left_root small_9845198_left_fuel small_9845198_left_count small_9845198_left_encoded small_9845198_left_checked

theorem cover_9845198 : CoveredBy scale carrier boxes root_9845198 := by
  apply coveredBy_split_literal root_9845198 small_9845198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9845278 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9845198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9845278
#print axioms cover_9845198

def root_9845193 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845193_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9845193_right_fuel : Nat := 1
def small_9845193_right_count : Nat := 1
def small_9845193_right_encoded : String := "00000002"
theorem small_9845193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9845193_right_root small_9845193_right_fuel small_9845193_right_count small_9845193_right_encoded = true := by
  decide +kernel
theorem small_9845193_right_covered : CoveredBy scale carrier boxes small_9845193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9845193_right_root small_9845193_right_fuel small_9845193_right_count small_9845193_right_encoded small_9845193_right_checked

theorem cover_9845193 : CoveredBy scale carrier boxes root_9845193 := by
  apply coveredBy_split_literal root_9845193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9845198 small_9845193_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9845198
  · exact small_9845193_right_covered
#print axioms cover_9845193

def root_9842885 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9842885 : CoveredBy scale carrier boxes root_9842885 := by
  apply coveredBy_split_literal root_9842885 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3687.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9845193 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3687.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9845193
#print axioms cover_9842885

def root_9842879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842879_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842879_left_fuel : Nat := 1
def small_9842879_left_count : Nat := 1
def small_9842879_left_encoded : String := "00000004"
theorem small_9842879_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842879_left_root small_9842879_left_fuel small_9842879_left_count small_9842879_left_encoded = true := by
  decide +kernel
theorem small_9842879_left_covered : CoveredBy scale carrier boxes small_9842879_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842879_left_root small_9842879_left_fuel small_9842879_left_count small_9842879_left_encoded small_9842879_left_checked

theorem cover_9842879 : CoveredBy scale carrier boxes root_9842879 := by
  apply coveredBy_split_literal root_9842879 small_9842879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9842885 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9842879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9842885
#print axioms cover_9842879

def root_9842878 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842878_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842878_right_fuel : Nat := 6
def small_9842878_right_count : Nat := 11
def small_9842878_right_encoded : String := "1151E8FF08A912FB00000005120700FA08A913070000000512073CFC00000003000000050000000200000004"
theorem small_9842878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842878_right_root small_9842878_right_fuel small_9842878_right_count small_9842878_right_encoded = true := by
  decide +kernel
theorem small_9842878_right_covered : CoveredBy scale carrier boxes small_9842878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842878_right_root small_9842878_right_fuel small_9842878_right_count small_9842878_right_encoded small_9842878_right_checked

theorem cover_9842878 : CoveredBy scale carrier boxes root_9842878 := by
  apply coveredBy_split_literal root_9842878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9842879 small_9842878_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9842879
  · exact small_9842878_right_covered
#print axioms cover_9842878

def root_9842873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842873_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9842873_right_fuel : Nat := 1
def small_9842873_right_count : Nat := 1
def small_9842873_right_encoded : String := "00000003"
theorem small_9842873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9842873_right_root small_9842873_right_fuel small_9842873_right_count small_9842873_right_encoded = true := by
  decide +kernel
theorem small_9842873_right_covered : CoveredBy scale carrier boxes small_9842873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9842873_right_root small_9842873_right_fuel small_9842873_right_count small_9842873_right_encoded small_9842873_right_checked

theorem cover_9842873 : CoveredBy scale carrier boxes root_9842873 := by
  apply coveredBy_split_literal root_9842873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9842878 small_9842873_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9842878
  · exact small_9842873_right_covered
#print axioms cover_9842873

def root_9872597 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9872597 : CoveredBy scale carrier boxes root_9872597 := by
  apply coveredBy_split_literal root_9872597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3698.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3699.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3698.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3699.covered
#print axioms cover_9872597

def root_9872592 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872592_right_fuel : Nat := 1
def small_9872592_right_count : Nat := 1
def small_9872592_right_encoded : String := "00000003"
theorem small_9872592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872592_right_root small_9872592_right_fuel small_9872592_right_count small_9872592_right_encoded = true := by
  decide +kernel
theorem small_9872592_right_covered : CoveredBy scale carrier boxes small_9872592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872592_right_root small_9872592_right_fuel small_9872592_right_count small_9872592_right_encoded small_9872592_right_checked

theorem cover_9872592 : CoveredBy scale carrier boxes root_9872592 := by
  apply coveredBy_split_literal root_9872592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9872597 small_9872592_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9872597
  · exact small_9872592_right_covered
#print axioms cover_9872592

def root_9872591 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872591_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872591_right_fuel : Nat := 17
def small_9872591_right_count : Nat := 69
def small_9872591_right_encoded : String := "135D450700000003045489FB1386ACFA00000002045489FF1386ACFE00000004028001000000000613D7ED010780010200000006000000060000000000000006138670FA045489FF1386ACFE000000040280010013D7B10100000000078001020000000A0000000A13D7ED0107800102128A410300000001028000FC13D7ED07022A457B13E200FA00000002067ECE7F0000000712EA58FE03C00100000000060000000700000004000000070000000300000007128A7D03028000FC13D7ED07022A457B0000000A0000000A000000030000000A0000000100000000138670FE028001000000000613D7ED0107800102128A41030000000100000005128A7D030000000600000001000000000000000400000002"
theorem small_9872591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872591_right_root small_9872591_right_fuel small_9872591_right_count small_9872591_right_encoded = true := by
  decide +kernel
theorem small_9872591_right_covered : CoveredBy scale carrier boxes small_9872591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872591_right_root small_9872591_right_fuel small_9872591_right_count small_9872591_right_encoded small_9872591_right_checked

theorem cover_9872591 : CoveredBy scale carrier boxes root_9872591 := by
  apply coveredBy_split_literal root_9872591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9872592 small_9872591_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9872592
  · exact small_9872591_right_covered
#print axioms cover_9872591

def root_9872586 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872586_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9872586_right_fuel : Nat := 1
def small_9872586_right_count : Nat := 1
def small_9872586_right_encoded : String := "00000001"
theorem small_9872586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9872586_right_root small_9872586_right_fuel small_9872586_right_count small_9872586_right_encoded = true := by
  decide +kernel
theorem small_9872586_right_covered : CoveredBy scale carrier boxes small_9872586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9872586_right_root small_9872586_right_fuel small_9872586_right_count small_9872586_right_encoded small_9872586_right_checked

theorem cover_9872586 : CoveredBy scale carrier boxes root_9872586 := by
  apply coveredBy_split_literal root_9872586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9872591 small_9872586_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9872591
  · exact small_9872586_right_covered
#print axioms cover_9872586

def root_9870296 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9870296 : CoveredBy scale carrier boxes root_9870296 := by
  apply coveredBy_split_literal root_9870296 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3697.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9872586 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3697.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9872586
#print axioms cover_9870296

def root_9870290 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870290_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9870290_left_fuel : Nat := 1
def small_9870290_left_count : Nat := 1
def small_9870290_left_encoded : String := "00000000"
theorem small_9870290_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9870290_left_root small_9870290_left_fuel small_9870290_left_count small_9870290_left_encoded = true := by
  decide +kernel
theorem small_9870290_left_covered : CoveredBy scale carrier boxes small_9870290_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9870290_left_root small_9870290_left_fuel small_9870290_left_count small_9870290_left_encoded small_9870290_left_checked

theorem cover_9870290 : CoveredBy scale carrier boxes root_9870290 := by
  apply coveredBy_split_literal root_9870290 small_9870290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9870296 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9870290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9870296
#print axioms cover_9870290

def root_9876544 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9876544 : CoveredBy scale carrier boxes root_9876544 := by
  apply coveredBy_split_literal root_9876544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3700.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3701.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3700.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3701.covered
#print axioms cover_9876544

def root_9876538 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876538_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9876538_left_fuel : Nat := 1
def small_9876538_left_count : Nat := 1
def small_9876538_left_encoded : String := "00000002"
theorem small_9876538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9876538_left_root small_9876538_left_fuel small_9876538_left_count small_9876538_left_encoded = true := by
  decide +kernel
theorem small_9876538_left_covered : CoveredBy scale carrier boxes small_9876538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9876538_left_root small_9876538_left_fuel small_9876538_left_count small_9876538_left_encoded small_9876538_left_checked

theorem cover_9876538 : CoveredBy scale carrier boxes root_9876538 := by
  apply coveredBy_split_literal root_9876538 small_9876538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.root_9876544 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9876538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666.cover_9876544
#print axioms cover_9876538

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0666
