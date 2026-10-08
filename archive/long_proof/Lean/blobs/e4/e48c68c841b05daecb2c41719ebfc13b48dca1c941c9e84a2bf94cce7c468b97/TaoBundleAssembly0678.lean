import TaoBundleAssembly0677
import TaoBundleChunkBatch0944
import TaoBundleChunkBatch0945
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678
def root_10073316 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073316_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073316_left_fuel : Nat := 23
def small_10073316_left_count : Nat := 361
def small_10073316_left_encoded : String := "0F878D050C9A86FC0F878D070280010013D7B10100000000022A458313E1C50200000001067ECE7F000000050000000713E20102067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E60150700000005000000030E5FD90700000003014001000000000913F61501033F67C30000000513BC31020793F0BF0000000500000007000000010000000012EA58FE00000007000000040000000113D7ED01022A458313E1C50200000001067ECE7F000000050000000713E20102067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E60150700000005000000030000000512EA58FE0DE7C9FA000000070E5FD9050000000200000007000000040000000100000000000000030F875107000000030280010013D7B10100000000022A458313E1C50200000001067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020000000512EA58FE0DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC0000000710801107000000030140010013F5D90100000000011523430000000613F895020569AC3F0000000A000000060000000113F61501011523430000000713F895020569AC3F134110FE000000040D41287A000000070EFA1105000000020AA6A27C000000070000000A0000000700000001000000000000000413E20102067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D070140010013F5D90100000000033F67C3000000050000000A13F61501033F67C30000000500000008000000000000000310801107000000030000000A000000020E5FD905000000020B4D43FC10804D070140010013F5D90100000000033F67C313BBF502000000010000000A0000000913F61501033F67C30000000513BC31020793F0BF00000005128220FE0D41287A00000008000000090000000400000001000000000000000310801107000000030000000A12EA58FE0DE7C9FA0E6015050B4D43FC0000000700000008000000020E5FD905000000020B4D43FC10804D070140010013F5D901000000000000000713F61501033F67C30000000700000008000000000000000310801107000000030140010013F5D90100000000033F67C313BBF502000000010569AC3F0000000A0000000713BC31020569AC3F0000000A000000080000000113F61501033F67C313BBF502000000010569AC3F134110FE000000040D41287A000000080EFA1105000000020000000A000000070000000800000000000000040000000113D7ED01022A458313E1C50200000001067ECE7F0000000512EA58FE0DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC10804D070000000700000003108011070000000303C0010013A5110100000000011523430000000713F895020569AC3F134110FE000000040D41287A000000070EFA1105000000020AA6A27C0000000700000008000000070000000113A54D010115234313F85902000000010569AC3F000000050000000700000008000000000000000413E20102067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D07000000050000000300000008000000020E5FD905000000020B4D43FC10804D0703C0010013A5110100000000033F67C30000000513BC31020793F0BF00000005000000080000000113A54D01033F67C300000005000000080000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010793F0BF00000005128220FE0D41287A000000080EFA1105000000020000000A0000000413BC31020793F0BF0000000A000000080000000113A54D01033F67C313BBF502000000010793F0BF0000000500000008000000080000000012EA58FE0DE7C9FA000000080E5FD905000000020B4D43FC10804D0700000008000000030000000800000004000000010000000000000002"
theorem small_10073316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073316_left_root small_10073316_left_fuel small_10073316_left_count small_10073316_left_encoded = true := by
  decide +kernel
theorem small_10073316_left_covered : CoveredBy scale carrier boxes small_10073316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073316_left_root small_10073316_left_fuel small_10073316_left_count small_10073316_left_encoded small_10073316_left_checked

theorem cover_10073316 : CoveredBy scale carrier boxes root_10073316 := by
  apply coveredBy_split_literal root_10073316 small_10073316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0677.root_10074074 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10073316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0677.cover_10074074
#print axioms cover_10073316

def root_10073310 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073310_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073310_left_fuel : Nat := 1
def small_10073310_left_count : Nat := 1
def small_10073310_left_encoded : String := "00000004"
theorem small_10073310_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073310_left_root small_10073310_left_fuel small_10073310_left_count small_10073310_left_encoded = true := by
  decide +kernel
theorem small_10073310_left_covered : CoveredBy scale carrier boxes small_10073310_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073310_left_root small_10073310_left_fuel small_10073310_left_count small_10073310_left_encoded small_10073310_left_checked

theorem cover_10073310 : CoveredBy scale carrier boxes root_10073310 := by
  apply coveredBy_split_literal root_10073310 small_10073310_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073316 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_10073310_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073316
#print axioms cover_10073310

def root_10073309 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073309_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073309_right_fuel : Nat := 28
def small_10073309_right_count : Nat := 227
def small_10073309_right_encoded : String := "138670FE0C9A86FA0F878D050C9A86FC0F878D0700000007000000030F875107000000030280010013D7B10100000000022A45830000000713E20102022A457F13E200FE000000040DE7C9FA000000070E5FD905000000020B4D43FC0000000700000008000000070000000113D7ED01022A458313E1C50200000001000000070000000800000000000000020F875105000000020C9A86FC0F878D070280010013D7B10100000000022A4583000000070000000913D7ED01022A458313E1C502000000010000000713E20102022A457F13E200FE000000040B4D43FA0000000700000009000000070000000100000000000000030F875107000000030280010013D7B10100000000022A458313E1C50200000001022A457F13E200FE000000040B4D43FA10804D050B4D43FC0000000710801107000000030140010000000007000000070000000210801105000000020B4D43FC000000091080110700000003014001000000000913F615010115234313F8590200000001033F67BF000000090000000500000005000000000000000713E20102022A457F13E200FE000000040B4D43FA10804D050B4D43FC000000091080110700000003000000050000000200000009000000050000000113D7ED01022A458313E1C50200000001022A457F13E200FE000000040B4D43FA10804D050B4D43FC00000007108011070000000303C0010013A51101000000000000000713A54D0100000008000000000000000210801105000000020B4D43FC10804D0703C0010013A51101000000000000000713A54D01011523430000000713F89502033F67BF13BC30FE000000040AA6A27A000000070000000900000005000000010000000000000003108011070000000303C0010013A51101000000000115234313F8590200000001033F67BF13BC30FE000000040AA6A27A10EDAD05000000070000000210ED71050000000200000009000000050000000513A54D010115234313F8590200000001033F67BF13BC30FE000000040AA6A27A10EDAD05000000070000000210ED7105000000020AA6A27C10EDAD07000000070000000310ED710700000003046001001383DD0100000000000000050000000500000005000000050000000013E1C4FE0B4D43FA000000071080110500000002000000050000000413E20102022A457F13E200FE000000040B4D43FA10804D05000000080000000210801105000000020000000500000005000000010000000000000004"
theorem small_10073309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073309_right_root small_10073309_right_fuel small_10073309_right_count small_10073309_right_encoded = true := by
  decide +kernel
theorem small_10073309_right_covered : CoveredBy scale carrier boxes small_10073309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073309_right_root small_10073309_right_fuel small_10073309_right_count small_10073309_right_encoded small_10073309_right_checked

theorem cover_10073309 : CoveredBy scale carrier boxes root_10073309 := by
  apply coveredBy_split_literal root_10073309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073310 small_10073309_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073310
  · exact small_10073309_right_covered
#print axioms cover_10073309

def root_10073303 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073303_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073303_left_fuel : Nat := 1
def small_10073303_left_count : Nat := 1
def small_10073303_left_encoded : String := "00000003"
theorem small_10073303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073303_left_root small_10073303_left_fuel small_10073303_left_count small_10073303_left_encoded = true := by
  decide +kernel
theorem small_10073303_left_covered : CoveredBy scale carrier boxes small_10073303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073303_left_root small_10073303_left_fuel small_10073303_left_count small_10073303_left_encoded small_10073303_left_checked

theorem cover_10073303 : CoveredBy scale carrier boxes root_10073303 := by
  apply coveredBy_split_literal root_10073303 small_10073303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073309 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10073303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073309
#print axioms cover_10073303

def root_10073245 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073245_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073245_left_fuel : Nat := 13
def small_10073245_left_count : Nat := 29
def small_10073245_left_encoded : String := "0F34D0FC045489FF1386ACFE000000040C9A86FA0F878D05028001000000000700000007000000020F87510500000002028001000000000913D7ED01022A45830000000513E201020AD357870000000510D13CFC00000003067ECE7F000000050000000600000001000000000000000700000003"
theorem small_10073245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073245_left_root small_10073245_left_fuel small_10073245_left_count small_10073245_left_encoded = true := by
  decide +kernel
theorem small_10073245_left_covered : CoveredBy scale carrier boxes small_10073245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073245_left_root small_10073245_left_fuel small_10073245_left_count small_10073245_left_encoded small_10073245_left_checked

theorem cover_10073245 : CoveredBy scale carrier boxes root_10073245 := by
  apply coveredBy_split_literal root_10073245 small_10073245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073303 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10073245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073303
#print axioms cover_10073245

def root_10073239 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073239_left_fuel : Nat := 1
def small_10073239_left_count : Nat := 1
def small_10073239_left_encoded : String := "00000002"
theorem small_10073239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073239_left_root small_10073239_left_fuel small_10073239_left_count small_10073239_left_encoded = true := by
  decide +kernel
theorem small_10073239_left_covered : CoveredBy scale carrier boxes small_10073239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073239_left_root small_10073239_left_fuel small_10073239_left_count small_10073239_left_encoded small_10073239_left_checked

theorem cover_10073239 : CoveredBy scale carrier boxes root_10073239 := by
  apply coveredBy_split_literal root_10073239 small_10073239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073245 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10073239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073245
#print axioms cover_10073239

def root_10073131 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073131_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073131_left_fuel : Nat := 16
def small_10073131_left_count : Nat := 51
def small_10073131_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D07028001000000000700000007000000030F875107000000030280010013D7B10100000000022A458313E1C502000000010AD357850000000510D13CFA00000002067ECE7F000000050000000713E201020AD3578510D100FA000000070000000210D13CFA00000002067ECE7F12EA94FE0000000400000005000000070000000113D7ED01022A45830000000500000008000000000000000700000002"
theorem small_10073131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073131_left_root small_10073131_left_fuel small_10073131_left_count small_10073131_left_encoded = true := by
  decide +kernel
theorem small_10073131_left_covered : CoveredBy scale carrier boxes small_10073131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073131_left_root small_10073131_left_fuel small_10073131_left_count small_10073131_left_encoded small_10073131_left_checked

theorem cover_10073131 : CoveredBy scale carrier boxes root_10073131 := by
  apply coveredBy_split_literal root_10073131 small_10073131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073239 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10073131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073239
#print axioms cover_10073131

def root_10073125 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073125_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073125_left_fuel : Nat := 1
def small_10073125_left_count : Nat := 1
def small_10073125_left_encoded : String := "00000001"
theorem small_10073125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073125_left_root small_10073125_left_fuel small_10073125_left_count small_10073125_left_encoded = true := by
  decide +kernel
theorem small_10073125_left_covered : CoveredBy scale carrier boxes small_10073125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073125_left_root small_10073125_left_fuel small_10073125_left_count small_10073125_left_encoded small_10073125_left_checked

theorem cover_10073125 : CoveredBy scale carrier boxes root_10073125 := by
  apply coveredBy_split_literal root_10073125 small_10073125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073131 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10073125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073131
#print axioms cover_10073125

def root_10073124 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073124_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073124_right_fuel : Nat := 27
def small_10073124_right_count : Nat := 373
def small_10073124_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC045489FF1386ACFE0000000402800100000000070000000700000007000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D070280010013D7B10100000000067ECE8312EA5902000000010AD3578500000007000000070000000800000008000000030F875107000000030000000800000008000000020F350CFA000000020CFD9C070F34D0FC045489FF1386ACFE000000040C9A86FA0F878D050280010013D7B10100000000067ECE8312EA5902000000010AD35787000000070000000712EA9502000000090000000113D7ED01067ECE8312EA5902000000010AD357870000000610D13CFC00000003067ECE7F00000006000000070000000600000000000000020F87510500000002028001000000000900000006138670FE0C9A86FA0F878D0500000007000000020000000900000004000000030F350CFC00000003045489FF1386ACFE000000040C9A86FA0F878D050C9A86FC0F878D070280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA0E6015050DE7C9FC0E60150700000007000000030E5FD907000000030140010013F5D901000000000569AC431340D50200000001000000070000000800000008000000020E5FD905000000020000000912EA58FE0DE7C9FA00000008000000090000000412EA9502067ECE7F12EA94FE000000040DE7C9FA0000000800000009000000080000000113D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA000000080E5FD905000000020DE7C9FC000000060E5FD9070000000300000008000000080000000800000000000000030F875107000000030280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D07014001000000000A000000080000000300000008000000020E5FD905000000020B4D43FC10804D07014001000000000913F615010569AC431340D502000000010793F0BF0000000A000000080000000800000000000000030000000A12EA58FE0DE7C9FA000000080E5FD905000000020B4D43FC10804D070000000800000003000000080000000412EA9502067ECE7F12EA94FE000000040DE7C9FA000000080E5FD9050000000200000009000000080000000113D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA000000080E5FD905000000020B4D43FC10804D07000000080000000300000008000000080000000800000000000000020F875105000000020C9A86FC0F878D07028001000000000913D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040B4D43FA0000000600000006000000090000000600000000000000030F875107000000030280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE0000000400000009000000090000000913D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC10804D0703C0010013A5110100000000000000090000000600000003108011070000000303C0010013A51101000000000569AC431340D502000000010793F0BF0000000A000000080000000813A54D010569AC431340D502000000010000000800000008000000000000000210801105000000020B4D43FC10804D070000000600000003108011070000000303C001000000000913A54D010569AC431340D5020000000100000006000000050000000012EA58FE0B4D43FA10804D050B4D43FC10804D07000000080000000300000008000000021080110500000002000000050000000412EA9502067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC00000006000000080000000200000009000000050000000100000000138670FE0C9A86FA0F878D050C9A86FC0F878D07000000080000000300000008000000020F875105000000020C9A86FC0F878D0700000009000000030F87510700000003000000050000000400000001"
theorem small_10073124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073124_right_root small_10073124_right_fuel small_10073124_right_count small_10073124_right_encoded = true := by
  decide +kernel
theorem small_10073124_right_covered : CoveredBy scale carrier boxes small_10073124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073124_right_root small_10073124_right_fuel small_10073124_right_count small_10073124_right_encoded small_10073124_right_checked

theorem cover_10073124 : CoveredBy scale carrier boxes root_10073124 := by
  apply coveredBy_split_literal root_10073124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073125 small_10073124_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073125
  · exact small_10073124_right_covered
#print axioms cover_10073124

def root_10073118 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073118_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073118_left_fuel : Nat := 1
def small_10073118_left_count : Nat := 1
def small_10073118_left_encoded : String := "00000000"
theorem small_10073118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073118_left_root small_10073118_left_fuel small_10073118_left_count small_10073118_left_encoded = true := by
  decide +kernel
theorem small_10073118_left_covered : CoveredBy scale carrier boxes small_10073118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073118_left_root small_10073118_left_fuel small_10073118_left_count small_10073118_left_encoded small_10073118_left_checked

theorem cover_10073118 : CoveredBy scale carrier boxes root_10073118 := by
  apply coveredBy_split_literal root_10073118 small_10073118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073124 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_10073118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073124
#print axioms cover_10073118

def root_10073117 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10073117 : CoveredBy scale carrier boxes root_10073117 := by
  apply coveredBy_split_literal root_10073117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3777.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3777.covered
#print axioms cover_10073117

def root_10073112 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073112_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073112_right_fuel : Nat := 1
def small_10073112_right_count : Nat := 1
def small_10073112_right_encoded : String := "00000004"
theorem small_10073112_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073112_right_root small_10073112_right_fuel small_10073112_right_count small_10073112_right_encoded = true := by
  decide +kernel
theorem small_10073112_right_covered : CoveredBy scale carrier boxes small_10073112_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073112_right_root small_10073112_right_fuel small_10073112_right_count small_10073112_right_encoded small_10073112_right_checked

theorem cover_10073112 : CoveredBy scale carrier boxes root_10073112 := by
  apply coveredBy_split_literal root_10073112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073117 small_10073112_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073117
  · exact small_10073112_right_covered
#print axioms cover_10073112

def root_10071242 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10071242 : CoveredBy scale carrier boxes root_10071242 := by
  apply coveredBy_split_literal root_10071242 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3775.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10073112 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3775.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10073112
#print axioms cover_10071242

def root_10071236 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071236_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071236_left_fuel : Nat := 1
def small_10071236_left_count : Nat := 1
def small_10071236_left_encoded : String := "00000003"
theorem small_10071236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071236_left_root small_10071236_left_fuel small_10071236_left_count small_10071236_left_encoded = true := by
  decide +kernel
theorem small_10071236_left_covered : CoveredBy scale carrier boxes small_10071236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071236_left_root small_10071236_left_fuel small_10071236_left_count small_10071236_left_encoded small_10071236_left_checked

theorem cover_10071236 : CoveredBy scale carrier boxes root_10071236 := by
  apply coveredBy_split_literal root_10071236 small_10071236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10071242 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10071236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10071242
#print axioms cover_10071236

def root_10071088 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071088_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071088_left_fuel : Nat := 15
def small_10071088_left_count : Nat := 71
def small_10071088_left_encoded : String := "120700FC08A912FF12073CFE0000000405000100135D45010000000004548A03000000051386AD020CFD9C05000000050F350CFA00000002000000050000000100000005120700FE05000100135D45010000000004548A0313867102000000010CFD9C0500000007000000071386AD020CFD9C05000000070F350CFA0000000204548A07000000071386ACFC00000003045489FF1386ACFE000000040C9A86FA00000006000000060000000700000001135D810104548A0313867102000000010CFD9C05000000050F350CFA0000000204548A07000000051386ACFC00000003045489FF00000005000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020000000600000001000000000000000400000003"
theorem small_10071088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071088_left_root small_10071088_left_fuel small_10071088_left_count small_10071088_left_encoded = true := by
  decide +kernel
theorem small_10071088_left_covered : CoveredBy scale carrier boxes small_10071088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071088_left_root small_10071088_left_fuel small_10071088_left_count small_10071088_left_encoded small_10071088_left_checked

theorem cover_10071088 : CoveredBy scale carrier boxes root_10071088 := by
  apply coveredBy_split_literal root_10071088 small_10071088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10071236 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10071088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10071236
#print axioms cover_10071088

def root_10071082 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071082_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071082_left_fuel : Nat := 1
def small_10071082_left_count : Nat := 1
def small_10071082_left_encoded : String := "00000002"
theorem small_10071082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071082_left_root small_10071082_left_fuel small_10071082_left_count small_10071082_left_encoded = true := by
  decide +kernel
theorem small_10071082_left_covered : CoveredBy scale carrier boxes small_10071082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071082_left_root small_10071082_left_fuel small_10071082_left_count small_10071082_left_encoded small_10071082_left_checked

theorem cover_10071082 : CoveredBy scale carrier boxes root_10071082 := by
  apply coveredBy_split_literal root_10071082 small_10071082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10071088 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10071082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10071088
#print axioms cover_10071082

def root_10070916 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070916_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070916_left_fuel : Nat := 15
def small_10070916_left_count : Nat := 81
def small_10070916_left_encoded : String := "120700FA08A91307120700FC08A912FF00000005000000070000000312073CFC0000000308A912FF12073CFE0000000405000100135D45010000000004548A03000000051386AD0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC00000003000000050000000100000005120700FE05000100135D45010000000004548A03138671020000000104548A0500000007000000071386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC00000003045489FF000000080000000700000001135D810104548A03138671020000000104548A05000000051386ACFA000000020CFD9C0700000005000000091386AD0204548A05138670FA0CFD9C070000000500000009000000021386ACFA000000020CFD9C07000000080F350CFC000000030000000800000001000000000000000400000002"
theorem small_10070916_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070916_left_root small_10070916_left_fuel small_10070916_left_count small_10070916_left_encoded = true := by
  decide +kernel
theorem small_10070916_left_covered : CoveredBy scale carrier boxes small_10070916_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070916_left_root small_10070916_left_fuel small_10070916_left_count small_10070916_left_encoded small_10070916_left_checked

theorem cover_10070916 : CoveredBy scale carrier boxes root_10070916 := by
  apply coveredBy_split_literal root_10070916 small_10070916_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10071082 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10070916_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10071082
#print axioms cover_10070916

def root_10070910 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070910_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070910_left_fuel : Nat := 1
def small_10070910_left_count : Nat := 1
def small_10070910_left_encoded : String := "00000001"
theorem small_10070910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070910_left_root small_10070910_left_fuel small_10070910_left_count small_10070910_left_encoded = true := by
  decide +kernel
theorem small_10070910_left_covered : CoveredBy scale carrier boxes small_10070910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070910_left_root small_10070910_left_fuel small_10070910_left_count small_10070910_left_encoded small_10070910_left_checked

theorem cover_10070910 : CoveredBy scale carrier boxes root_10070910 := by
  apply coveredBy_split_literal root_10070910 small_10070910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10070916 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10070910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10070916
#print axioms cover_10070910

def root_10070909 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070909 : CoveredBy scale carrier boxes root_10070909 := by
  apply coveredBy_split_literal root_10070909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10070910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3778.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10070910
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3778.covered
#print axioms cover_10070909

def root_10070903 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070903_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070903_left_fuel : Nat := 1
def small_10070903_left_count : Nat := 1
def small_10070903_left_encoded : String := "00000004"
theorem small_10070903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070903_left_root small_10070903_left_fuel small_10070903_left_count small_10070903_left_encoded = true := by
  decide +kernel
theorem small_10070903_left_covered : CoveredBy scale carrier boxes small_10070903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070903_left_root small_10070903_left_fuel small_10070903_left_count small_10070903_left_encoded small_10070903_left_checked

theorem cover_10070903 : CoveredBy scale carrier boxes root_10070903 := by
  apply coveredBy_split_literal root_10070903 small_10070903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.root_10070909 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10070903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678.cover_10070909
#print axioms cover_10070903

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0678
