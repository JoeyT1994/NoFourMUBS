import TaoBundleAssembly0668
import TaoBundleChunkBatch0928
import TaoBundleChunkBatch0929
import TaoBundleChunkBatch0930
import TaoBundleChunkBatch0931
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669
def root_9902006 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902006_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902006_left_fuel : Nat := 12
def small_9902006_left_count : Nat := 35
def small_9902006_left_encoded : String := "0F34D0FE0C9A86FC0F878D07028001020000000600000006000000030F875107000000030280010213D7B10300000001022A458113E1C50000000000067ECE7B000000050000000613E20100067ECE7B12EA94FA000000020AD357890000000510D13CFE0000000400000005000000060000000013D7ED03022A4581000000050000000A0000000100000004"
theorem small_9902006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902006_left_root small_9902006_left_fuel small_9902006_left_count small_9902006_left_encoded = true := by
  decide +kernel
theorem small_9902006_left_covered : CoveredBy scale carrier boxes small_9902006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902006_left_root small_9902006_left_fuel small_9902006_left_count small_9902006_left_encoded small_9902006_left_checked

theorem cover_9902006 : CoveredBy scale carrier boxes root_9902006 := by
  apply coveredBy_split_literal root_9902006 small_9902006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0668.root_9902078 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9902006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0668.cover_9902078
#print axioms cover_9902006

def root_9902000 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902000_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9902000_left_fuel : Nat := 1
def small_9902000_left_count : Nat := 1
def small_9902000_left_encoded : String := "00000003"
theorem small_9902000_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9902000_left_root small_9902000_left_fuel small_9902000_left_count small_9902000_left_encoded = true := by
  decide +kernel
theorem small_9902000_left_covered : CoveredBy scale carrier boxes small_9902000_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9902000_left_root small_9902000_left_fuel small_9902000_left_count small_9902000_left_encoded small_9902000_left_checked

theorem cover_9902000 : CoveredBy scale carrier boxes root_9902000 := by
  apply coveredBy_split_literal root_9902000 small_9902000_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9902006 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9902000_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9902006
#print axioms cover_9902000

def root_9901950 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901950_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901950_left_fuel : Nat := 11
def small_9901950_left_count : Nat := 25
def small_9901950_left_encoded : String := "0F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001020000000600000006000000040F87510900000004028001020000000913D7ED03022A45810000000513E20100067ECE7B0000000500000009000000000000000100000003"
theorem small_9901950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901950_left_root small_9901950_left_fuel small_9901950_left_count small_9901950_left_encoded = true := by
  decide +kernel
theorem small_9901950_left_covered : CoveredBy scale carrier boxes small_9901950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901950_left_root small_9901950_left_fuel small_9901950_left_count small_9901950_left_encoded small_9901950_left_checked

theorem cover_9901950 : CoveredBy scale carrier boxes root_9901950 := by
  apply coveredBy_split_literal root_9901950 small_9901950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9902000 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9901950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9902000
#print axioms cover_9901950

def root_9901944 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901944_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901944_left_fuel : Nat := 1
def small_9901944_left_count : Nat := 1
def small_9901944_left_encoded : String := "00000002"
theorem small_9901944_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901944_left_root small_9901944_left_fuel small_9901944_left_count small_9901944_left_encoded = true := by
  decide +kernel
theorem small_9901944_left_covered : CoveredBy scale carrier boxes small_9901944_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901944_left_root small_9901944_left_fuel small_9901944_left_count small_9901944_left_encoded small_9901944_left_checked

theorem cover_9901944 : CoveredBy scale carrier boxes root_9901944 := by
  apply coveredBy_split_literal root_9901944 small_9901944_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901950 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9901944_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901950
#print axioms cover_9901944

def root_9901943 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901943_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901943_right_fuel : Nat := 32
def small_9901943_right_count : Nat := 247
def small_9901943_right_encoded : String := "138670FA0CFD9C070F34D0FC0CFD9C090000000600000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000006000000040F875109000000040280010213D7B10300000001022A4581000000060000000913D7ED03022A458113E1C500000000000000000613E20100022A457B13E200FA000000020DE7C9FC000000060E5FD907000000030B4D43FE0000000600000009000000060000000000000001000000030F875107000000030C9A86FE0F878D090280010213D7B10300000001022A45810000000613E20100022A457B13E200FA000000020B4D43FC000000060000000A000000060000000013D7ED03022A458113E1C50000000000000000060000000A00000001000000040F875109000000040280010213D7B10300000001022A458113E1C50000000000022A457B13E200FA000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE10804D09014001020000000600000006000000041080110900000004014001020000000913F615030115234113F8590000000000033F67BB000000090000000500000005000000010000000613E20100022A457B13E200FA000000020B4D43FC10804D070000000900000003108011070000000300000005000000050000000013D7ED03022A458113E1C50000000000022A457B13E200FA000000020B4D43FC10804D070B4D43FE00000006108011090000000403C0010213A51103000000010000000613A54D03011523410000000613F89500033F67BB13BC30FA000000020BF3E57C000000060000000A0000000500000000000000010000000310801107000000030B4D43FE10804D0903C0010213A51103000000010000000613A54D030000000A0000000100000004108011090000000403C0010213A51103000000010115234113F8590000000000033F67BB13BC30FA000000020AA6A27C10EDAD07000000060000000310ED7107000000030AA6A27E0000000610ED71090000000400000005000000050000000513A54D030115234113F8590000000000033F67BB13BC30FA000000020AA6A27C10EDAD07000000060000000310ED7107000000030AA6A27E10EDAD09000000060000000410ED710900000004046001021383DD0300000001000000050000000500000005000000050000000113E1C4FA0B4D43FC000000061080110700000003000000050000000213E20100022A457B13E200FA000000020B4D43FC10804D070B4D43FE0000000A1080110900000004000000050000000310801107000000030000000500000005000000000000000100000002"
theorem small_9901943_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901943_right_root small_9901943_right_fuel small_9901943_right_count small_9901943_right_encoded = true := by
  decide +kernel
theorem small_9901943_right_covered : CoveredBy scale carrier boxes small_9901943_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901943_right_root small_9901943_right_fuel small_9901943_right_count small_9901943_right_encoded small_9901943_right_checked

theorem cover_9901943 : CoveredBy scale carrier boxes root_9901943 := by
  apply coveredBy_split_literal root_9901943 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901944 small_9901943_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901944
  · exact small_9901943_right_covered
#print axioms cover_9901943

def root_9901937 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901937_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901937_left_fuel : Nat := 1
def small_9901937_left_count : Nat := 1
def small_9901937_left_encoded : String := "00000000"
theorem small_9901937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901937_left_root small_9901937_left_fuel small_9901937_left_count small_9901937_left_encoded = true := by
  decide +kernel
theorem small_9901937_left_covered : CoveredBy scale carrier boxes small_9901937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901937_left_root small_9901937_left_fuel small_9901937_left_count small_9901937_left_encoded small_9901937_left_checked

theorem cover_9901937 : CoveredBy scale carrier boxes root_9901937 := by
  apply coveredBy_split_literal root_9901937 small_9901937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901943 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9901937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901943
#print axioms cover_9901937

def root_9901936 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901936_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901936_right_fuel : Nat := 27
def small_9901936_right_count : Nat := 383
def small_9901936_right_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE028001020000000600000006000000040F350CFE000000040C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020AD3578700000005000000060000000612EA9500000000090000000013D7ED03067ECE8112EA590000000000067ECE7B00000007000000060000000700000001000000040F87510900000004028001020000000900000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020000000A000000060000000A0000000A000000030F875107000000030000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC0E6015070DE7C9FE0E601509000000060000000400000009000000030E5FD907000000030DE7C9FE0E6015090140010213F5D903000000010569AC411340D5000000000000000006000000090000000A000000040E5FD909000000040000000912EA58FA0DE7C9FC0E60150700000006000000030E5FD907000000030000000A0000000212EA9500067ECE7B12EA94FA000000020DE7C9FC0E60150700000009000000030E5FD907000000030DE7C9FE0000000A00000009000000090000000013D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC0E6015070DE7C9FE0000000A0E5FD9090000000400000007000000030E5FD907000000030000000A0000000A0000000A00000001000000040F87510900000004028001020000000913D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020DE7C9FC000000070E5FD9070000000300000007000000090000000700000001000000030F875107000000030C9A86FE0F878D090280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070DE7C9FE0E60150901400102000000080000000A000000040E5FD90900000004014001020000000813F615030569AC411340D500000000000793F0BB000000080000000900000009000000010000000310801107000000030DE7C9FE000000080E5FD909000000040000000812EA58FA0B4D43FC10804D070000000A000000030000000A0000000212EA9500067ECE7B12EA94FA000000020B4D43FC10804D070000000A000000030000000A0000000A0000000013D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070000000A000000030000000A0000000A0000000A00000001000000040F875109000000040280010213D7B10300000001067ECE8112EA590000000000067ECE7B12EA94FA0000000200000009000000090000000913D7ED03067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FC10804D070B4D43FE10804D0903C0010213A51103000000010000000900000007000000041080110900000004000000070000000310801107000000030B4D43FE10804D0903C0010213A51103000000010569AC411340D500000000000793F0BB00000008000000090000000A13A54D030569AC411340D500000000000000000A0000000A0000000100000004108011090000000403C001020000000913A54D030569AC411340D5000000000000000007000000050000000112EA58FA0B4D43FC10804D070B4D43FE0000000A00000009000000031080110700000003000000050000000212EA9500067ECE7B12EA94FA000000020B4D43FC00000007108011070000000300000005000000050000000000000001138670FA0CFD9C070F34D0FC0CFD9C09000000060F350CFE000000040C9A86FE0F878D09000000060000000400000009000000030F350CFC000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0000000A0F8751090000000400000009000000030F875107000000030C9A86FE0000000A0F87510900000004000000050000000200000000"
theorem small_9901936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901936_right_root small_9901936_right_fuel small_9901936_right_count small_9901936_right_encoded = true := by
  decide +kernel
theorem small_9901936_right_covered : CoveredBy scale carrier boxes small_9901936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901936_right_root small_9901936_right_fuel small_9901936_right_count small_9901936_right_encoded small_9901936_right_checked

theorem cover_9901936 : CoveredBy scale carrier boxes root_9901936 := by
  apply coveredBy_split_literal root_9901936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901937 small_9901936_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901937
  · exact small_9901936_right_covered
#print axioms cover_9901936

def root_9901930 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901930_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901930_left_fuel : Nat := 1
def small_9901930_left_count : Nat := 1
def small_9901930_left_encoded : String := "00000001"
theorem small_9901930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901930_left_root small_9901930_left_fuel small_9901930_left_count small_9901930_left_encoded = true := by
  decide +kernel
theorem small_9901930_left_covered : CoveredBy scale carrier boxes small_9901930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901930_left_root small_9901930_left_fuel small_9901930_left_count small_9901930_left_encoded small_9901930_left_checked

theorem cover_9901930 : CoveredBy scale carrier boxes root_9901930 := by
  apply coveredBy_split_literal root_9901930 small_9901930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901936 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9901930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901936
#print axioms cover_9901930

def root_9901929 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9901929 : CoveredBy scale carrier boxes root_9901929 := by
  apply coveredBy_split_literal root_9901929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901930 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3712.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3712.covered
#print axioms cover_9901929

def root_9901923 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901923_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901923_left_fuel : Nat := 1
def small_9901923_left_count : Nat := 1
def small_9901923_left_encoded : String := "00000004"
theorem small_9901923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901923_left_root small_9901923_left_fuel small_9901923_left_count small_9901923_left_encoded = true := by
  decide +kernel
theorem small_9901923_left_covered : CoveredBy scale carrier boxes small_9901923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901923_left_root small_9901923_left_fuel small_9901923_left_count small_9901923_left_encoded small_9901923_left_checked

theorem cover_9901923 : CoveredBy scale carrier boxes root_9901923 := by
  apply coveredBy_split_literal root_9901923 small_9901923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901929 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9901923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901929
#print axioms cover_9901923

def root_9901827 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901827_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901827_left_fuel : Nat := 11
def small_9901827_left_count : Nat := 47
def small_9901827_left_encoded : String := "120700FE05000102135D45030000000104548A011386710000000000045489FB1386ACFA000000020CFD9C070000000500000006000000061386AD00045489FB1386ACFA000000020CFD9C07000000060F350CFC0000000304548A09000000050000000A0000000600000000135D810304548A011386710000000000045489FB00000005000000061386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030000000A0000000A000000000000000100000004"
theorem small_9901827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901827_left_root small_9901827_left_fuel small_9901827_left_count small_9901827_left_encoded = true := by
  decide +kernel
theorem small_9901827_left_covered : CoveredBy scale carrier boxes small_9901827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901827_left_root small_9901827_left_fuel small_9901827_left_count small_9901827_left_encoded small_9901827_left_checked

theorem cover_9901827 : CoveredBy scale carrier boxes root_9901827 := by
  apply coveredBy_split_literal root_9901827 small_9901827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901923 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9901827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901923
#print axioms cover_9901827

def root_9901821 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901821_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901821_left_fuel : Nat := 1
def small_9901821_left_count : Nat := 1
def small_9901821_left_encoded : String := "00000003"
theorem small_9901821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901821_left_root small_9901821_left_fuel small_9901821_left_count small_9901821_left_encoded = true := by
  decide +kernel
theorem small_9901821_left_covered : CoveredBy scale carrier boxes small_9901821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901821_left_root small_9901821_left_fuel small_9901821_left_count small_9901821_left_encoded small_9901821_left_checked

theorem cover_9901821 : CoveredBy scale carrier boxes root_9901821 := by
  apply coveredBy_split_literal root_9901821 small_9901821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901827 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9901821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901827
#print axioms cover_9901821

def root_9901701 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901701_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901701_left_fuel : Nat := 15
def small_9901701_left_count : Nat := 59
def small_9901701_left_encoded : String := "120700FC08A91309120700FE000000060000000412073CFE0000000405000102135D45030000000104548A011386710000000000045489FB1386ACFA0000000204548A070000000500000006000000061386AD00045489FB1386ACFA0000000204548A07000000061386ACFC000000030CFD9C09000000060F350CFE000000040C9A86FE00000007000000070000000600000000135D810304548A011386710000000000045489FB00000005000000061386AD00045489FB1386ACFA0000000204548A07000000051386ACFC000000030CFD9C0900000005000000070000000A000000000000000100000003"
theorem small_9901701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901701_left_root small_9901701_left_fuel small_9901701_left_count small_9901701_left_encoded = true := by
  decide +kernel
theorem small_9901701_left_covered : CoveredBy scale carrier boxes small_9901701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901701_left_root small_9901701_left_fuel small_9901701_left_count small_9901701_left_encoded small_9901701_left_checked

theorem cover_9901701 : CoveredBy scale carrier boxes root_9901701 := by
  apply coveredBy_split_literal root_9901701 small_9901701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901821 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9901701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901821
#print axioms cover_9901701

def root_9901696 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901696_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9901696_right_fuel : Nat := 1
def small_9901696_right_count : Nat := 1
def small_9901696_right_encoded : String := "00000002"
theorem small_9901696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9901696_right_root small_9901696_right_fuel small_9901696_right_count small_9901696_right_encoded = true := by
  decide +kernel
theorem small_9901696_right_covered : CoveredBy scale carrier boxes small_9901696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9901696_right_root small_9901696_right_fuel small_9901696_right_count small_9901696_right_encoded small_9901696_right_checked

theorem cover_9901696 : CoveredBy scale carrier boxes root_9901696 := by
  apply coveredBy_split_literal root_9901696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901701 small_9901696_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901701
  · exact small_9901696_right_covered
#print axioms cover_9901696

def root_9899712 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899712 : CoveredBy scale carrier boxes root_9899712 := by
  apply coveredBy_split_literal root_9899712 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3710.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9901696 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3710.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9901696
#print axioms cover_9899712

def root_9899706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899706_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899706_left_fuel : Nat := 1
def small_9899706_left_count : Nat := 1
def small_9899706_left_encoded : String := "00000000"
theorem small_9899706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899706_left_root small_9899706_left_fuel small_9899706_left_count small_9899706_left_encoded = true := by
  decide +kernel
theorem small_9899706_left_covered : CoveredBy scale carrier boxes small_9899706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899706_left_root small_9899706_left_fuel small_9899706_left_count small_9899706_left_encoded small_9899706_left_checked

theorem cover_9899706 : CoveredBy scale carrier boxes root_9899706 := by
  apply coveredBy_split_literal root_9899706 small_9899706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899712 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9899706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899712
#print axioms cover_9899706

def root_9899705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899705 : CoveredBy scale carrier boxes root_9899705 := by
  apply coveredBy_split_literal root_9899705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3713.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3713.covered
#print axioms cover_9899705

def root_9899700 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899700_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899700_right_fuel : Nat := 1
def small_9899700_right_count : Nat := 1
def small_9899700_right_encoded : String := "00000004"
theorem small_9899700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899700_right_root small_9899700_right_fuel small_9899700_right_count small_9899700_right_encoded = true := by
  decide +kernel
theorem small_9899700_right_covered : CoveredBy scale carrier boxes small_9899700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899700_right_root small_9899700_right_fuel small_9899700_right_count small_9899700_right_encoded small_9899700_right_checked

theorem cover_9899700 : CoveredBy scale carrier boxes root_9899700 := by
  apply coveredBy_split_literal root_9899700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899705 small_9899700_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899705
  · exact small_9899700_right_covered
#print axioms cover_9899700

def root_9913980 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9913980 : CoveredBy scale carrier boxes root_9913980 := by
  apply coveredBy_split_literal root_9913980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3714.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3715.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3714.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3715.covered
#print axioms cover_9913980

def root_9913974 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913974_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913974_left_fuel : Nat := 1
def small_9913974_left_count : Nat := 1
def small_9913974_left_encoded : String := "00000000"
theorem small_9913974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913974_left_root small_9913974_left_fuel small_9913974_left_count small_9913974_left_encoded = true := by
  decide +kernel
theorem small_9913974_left_covered : CoveredBy scale carrier boxes small_9913974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913974_left_root small_9913974_left_fuel small_9913974_left_count small_9913974_left_encoded small_9913974_left_checked

theorem cover_9913974 : CoveredBy scale carrier boxes root_9913974 := by
  apply coveredBy_split_literal root_9913974 small_9913974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9913980 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9913974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9913980
#print axioms cover_9913974

def root_9913973 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913973_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913973_right_fuel : Nat := 18
def small_9913973_right_count : Nat := 155
def small_9913973_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120700FC05000102135D450300000001050000FE0000000700000007000000070000000312073CFC0000000305000102135D450300000001050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC00000003000000060F34D0FA0CFD9C07000000090F350CFC000000030C9A86FC0F878D0700000009000000030F8751070000000300000006000000020F350D000CFD9BFB0F350CFA000000020CFD9C0700000006000000060F34D0FA00000009000000020000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB0F350CFA0000000200000006000000090F350D000CFD9BFB000000060000000900000000135D8103050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C0700000007000000070F34D0FA00000007000000020F350D00000000070000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB000000070F34D0FA00000007000000020F350D00000000070000000000000001120700FA08A91307120700FC0500010200000009000000070000000312073CFC0000000305000102135D450300000001050000FE135D81090CFD9C0100000009000000050000000400000009135D8103050000FE135D81090CFD9C010F34D10000000000045489FB00000007138670FA0CFD9C070000000700000005000000020F350D00000000070000000000000004135D4509000000040CFD9C010F34D10000000000045489FB000000070000000500000005000000010000000200000000"
theorem small_9913973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913973_right_root small_9913973_right_fuel small_9913973_right_count small_9913973_right_encoded = true := by
  decide +kernel
theorem small_9913973_right_covered : CoveredBy scale carrier boxes small_9913973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913973_right_root small_9913973_right_fuel small_9913973_right_count small_9913973_right_encoded small_9913973_right_checked

theorem cover_9913973 : CoveredBy scale carrier boxes root_9913973 := by
  apply coveredBy_split_literal root_9913973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9913974 small_9913973_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9913974
  · exact small_9913973_right_covered
#print axioms cover_9913973

def root_9913967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913967_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9913967_left_fuel : Nat := 1
def small_9913967_left_count : Nat := 1
def small_9913967_left_encoded : String := "00000004"
theorem small_9913967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9913967_left_root small_9913967_left_fuel small_9913967_left_count small_9913967_left_encoded = true := by
  decide +kernel
theorem small_9913967_left_covered : CoveredBy scale carrier boxes small_9913967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9913967_left_root small_9913967_left_fuel small_9913967_left_count small_9913967_left_encoded small_9913967_left_checked

theorem cover_9913967 : CoveredBy scale carrier boxes root_9913967 := by
  apply coveredBy_split_literal root_9913967 small_9913967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9913973 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9913967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9913973
#print axioms cover_9913967

def root_9899699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899699 : CoveredBy scale carrier boxes root_9899699 := by
  apply coveredBy_split_literal root_9899699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9913967 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899700
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9913967
#print axioms cover_9899699

def root_9899694 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899694_right_fuel : Nat := 1
def small_9899694_right_count : Nat := 1
def small_9899694_right_encoded : String := "00000003"
theorem small_9899694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899694_right_root small_9899694_right_fuel small_9899694_right_count small_9899694_right_encoded = true := by
  decide +kernel
theorem small_9899694_right_covered : CoveredBy scale carrier boxes small_9899694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899694_right_root small_9899694_right_fuel small_9899694_right_count small_9899694_right_encoded small_9899694_right_checked

theorem cover_9899694 : CoveredBy scale carrier boxes root_9899694 := by
  apply coveredBy_split_literal root_9899694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899699 small_9899694_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899699
  · exact small_9899694_right_covered
#print axioms cover_9899694

def root_9919530 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919530_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919530_right_fuel : Nat := 22
def small_9919530_right_count : Nat := 117
def small_9919530_right_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C090F34D0FE0280010213D7B10300000001078000FC128A7D070000000A000000030000000813D7ED03078000FC0000000A0000000A00000001000000040F350CFE000000040C9A86FE0F878D090280010213D7B10300000001078000FC128A7D07067ECE8112EA590000000000067ECE7B000000080000000A12EA95000000000A00000000000000030000000813D7ED03078000FC128A7D07067ECE8112EA5900000000000000000A0000000A00000003128A410700000003067ECE8112EA5900000000000000000A0000000A00000001000000040F875109000000040280010213D7B10300000001078000FC128A7D07067ECE8112EA590000000000067ECE7B00000008000000050000000500000003128A4107000000030000000513D7ED03078000FC128A7D07067ECE8112EA590000000000067ECE7B12EA94FA000000020B4D43FE10804D0903C001020000000813A54D0308C000FC11FC25070000000A00000003000000060000000100000004108011090000000403C001020000000600000006000000050000000500000003128A4107000000030000000500000001138670FA0CFD9C090F34D0FE0000000A00000004000000050000000200000000"
theorem small_9919530_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919530_right_root small_9919530_right_fuel small_9919530_right_count small_9919530_right_encoded = true := by
  decide +kernel
theorem small_9919530_right_covered : CoveredBy scale carrier boxes small_9919530_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919530_right_root small_9919530_right_fuel small_9919530_right_count small_9919530_right_encoded small_9919530_right_checked

theorem cover_9919530 : CoveredBy scale carrier boxes root_9919530 := by
  apply coveredBy_split_literal root_9919530 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3717.root small_9919530_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3717.covered
  · exact small_9919530_right_covered
#print axioms cover_9919530

def root_9919525 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919525_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919525_right_fuel : Nat := 1
def small_9919525_right_count : Nat := 1
def small_9919525_right_encoded : String := "00000003"
theorem small_9919525_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919525_right_root small_9919525_right_fuel small_9919525_right_count small_9919525_right_encoded = true := by
  decide +kernel
theorem small_9919525_right_covered : CoveredBy scale carrier boxes small_9919525_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919525_right_root small_9919525_right_fuel small_9919525_right_count small_9919525_right_encoded small_9919525_right_checked

theorem cover_9919525 : CoveredBy scale carrier boxes root_9919525 := by
  apply coveredBy_split_literal root_9919525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919530 small_9919525_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919530
  · exact small_9919525_right_covered
#print axioms cover_9919525

def root_9919524 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919524_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919524_right_fuel : Nat := 10
def small_9919524_right_count : Nat := 55
def small_9919524_right_encoded : String := "135D45070000000304548A011386710000000000045489FB1386ACFA000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE000000080F8751090000000400000008138670FA0CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000400000005000000021386AD00045489FB1386ACFA000000020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080F8751090000000400000005138670FA0CFD9C090F34D0FE0000000A00000004000000050000000200000000"
theorem small_9919524_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919524_right_root small_9919524_right_fuel small_9919524_right_count small_9919524_right_encoded = true := by
  decide +kernel
theorem small_9919524_right_covered : CoveredBy scale carrier boxes small_9919524_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919524_right_root small_9919524_right_fuel small_9919524_right_count small_9919524_right_encoded small_9919524_right_checked

theorem cover_9919524 : CoveredBy scale carrier boxes root_9919524 := by
  apply coveredBy_split_literal root_9919524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919525 small_9919524_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919525
  · exact small_9919524_right_covered
#print axioms cover_9919524

def root_9919518 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919518_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919518_left_fuel : Nat := 1
def small_9919518_left_count : Nat := 1
def small_9919518_left_encoded : String := "00000001"
theorem small_9919518_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919518_left_root small_9919518_left_fuel small_9919518_left_count small_9919518_left_encoded = true := by
  decide +kernel
theorem small_9919518_left_covered : CoveredBy scale carrier boxes small_9919518_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919518_left_root small_9919518_left_fuel small_9919518_left_count small_9919518_left_encoded small_9919518_left_checked

theorem cover_9919518 : CoveredBy scale carrier boxes root_9919518 := by
  apply coveredBy_split_literal root_9919518 small_9919518_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919524 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9919518_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919524
#print axioms cover_9919518

def root_9919517 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9919517 : CoveredBy scale carrier boxes root_9919517 := by
  apply coveredBy_split_literal root_9919517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3718.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3718.covered
#print axioms cover_9919517

def root_9919511 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919511_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919511_left_fuel : Nat := 1
def small_9919511_left_count : Nat := 1
def small_9919511_left_encoded : String := "00000004"
theorem small_9919511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919511_left_root small_9919511_left_fuel small_9919511_left_count small_9919511_left_encoded = true := by
  decide +kernel
theorem small_9919511_left_covered : CoveredBy scale carrier boxes small_9919511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919511_left_root small_9919511_left_fuel small_9919511_left_count small_9919511_left_encoded small_9919511_left_checked

theorem cover_9919511 : CoveredBy scale carrier boxes root_9919511 := by
  apply coveredBy_split_literal root_9919511 small_9919511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919517 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9919511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919517
#print axioms cover_9919511

def root_9919429 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919429_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919429_left_fuel : Nat := 13
def small_9919429_left_count : Nat := 41
def small_9919429_left_encoded : String := "120700FE05000102135D450300000001050000FC135D810704548A011386710000000000045489FB00000009000000071386AD00045489FB1386ACFA0000000204548A09000000091386ACFE00000004028001020000000A00000009138670FA04548A09000000060000000A000000020000000000000003135D45070000000304548A01000000071386AD00045489FB0000000700000007000000000000000900000004"
theorem small_9919429_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919429_left_root small_9919429_left_fuel small_9919429_left_count small_9919429_left_encoded = true := by
  decide +kernel
theorem small_9919429_left_covered : CoveredBy scale carrier boxes small_9919429_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919429_left_root small_9919429_left_fuel small_9919429_left_count small_9919429_left_encoded small_9919429_left_checked

theorem cover_9919429 : CoveredBy scale carrier boxes root_9919429 := by
  apply coveredBy_split_literal root_9919429 small_9919429_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919511 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9919429_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919511
#print axioms cover_9919429

def root_9919424 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919424_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9919424_right_fuel : Nat := 1
def small_9919424_right_count : Nat := 1
def small_9919424_right_encoded : String := "00000002"
theorem small_9919424_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9919424_right_root small_9919424_right_fuel small_9919424_right_count small_9919424_right_encoded = true := by
  decide +kernel
theorem small_9919424_right_covered : CoveredBy scale carrier boxes small_9919424_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9919424_right_root small_9919424_right_fuel small_9919424_right_count small_9919424_right_encoded small_9919424_right_checked

theorem cover_9919424 : CoveredBy scale carrier boxes root_9919424 := by
  apply coveredBy_split_literal root_9919424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919429 small_9919424_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919429
  · exact small_9919424_right_covered
#print axioms cover_9919424

def root_9918298 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918298 : CoveredBy scale carrier boxes root_9918298 := by
  apply coveredBy_split_literal root_9918298 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3716.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9919424 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3716.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9919424
#print axioms cover_9918298

def root_9918292 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918292_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918292_left_fuel : Nat := 1
def small_9918292_left_count : Nat := 1
def small_9918292_left_encoded : String := "00000000"
theorem small_9918292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918292_left_root small_9918292_left_fuel small_9918292_left_count small_9918292_left_encoded = true := by
  decide +kernel
theorem small_9918292_left_covered : CoveredBy scale carrier boxes small_9918292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918292_left_root small_9918292_left_fuel small_9918292_left_count small_9918292_left_encoded small_9918292_left_checked

theorem cover_9918292 : CoveredBy scale carrier boxes root_9918292 := by
  apply coveredBy_split_literal root_9918292 small_9918292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918298 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9918292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918298
#print axioms cover_9918292

def root_9918291 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918291 : CoveredBy scale carrier boxes root_9918291 := by
  apply coveredBy_split_literal root_9918291 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3719.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918292
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3719.covered
#print axioms cover_9918291

def root_9918286 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918286_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918286_right_fuel : Nat := 1
def small_9918286_right_count : Nat := 1
def small_9918286_right_encoded : String := "00000004"
theorem small_9918286_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918286_right_root small_9918286_right_fuel small_9918286_right_count small_9918286_right_encoded = true := by
  decide +kernel
theorem small_9918286_right_covered : CoveredBy scale carrier boxes small_9918286_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918286_right_root small_9918286_right_fuel small_9918286_right_count small_9918286_right_encoded small_9918286_right_checked

theorem cover_9918286 : CoveredBy scale carrier boxes root_9918286 := by
  apply coveredBy_split_literal root_9918286 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918291 small_9918286_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918291
  · exact small_9918286_right_covered
#print axioms cover_9918286

def root_9918285 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9918285 : CoveredBy scale carrier boxes root_9918285 := by
  apply coveredBy_split_literal root_9918285 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918286 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3720.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918286
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3720.covered
#print axioms cover_9918285

def root_9918279 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918279_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9918279_left_fuel : Nat := 1
def small_9918279_left_count : Nat := 1
def small_9918279_left_encoded : String := "00000003"
theorem small_9918279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9918279_left_root small_9918279_left_fuel small_9918279_left_count small_9918279_left_encoded = true := by
  decide +kernel
theorem small_9918279_left_covered : CoveredBy scale carrier boxes small_9918279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9918279_left_root small_9918279_left_fuel small_9918279_left_count small_9918279_left_encoded small_9918279_left_checked

theorem cover_9918279 : CoveredBy scale carrier boxes root_9918279 := by
  apply coveredBy_split_literal root_9918279 small_9918279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918285 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9918279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918285
#print axioms cover_9918279

def root_9899693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899693 : CoveredBy scale carrier boxes root_9899693 := by
  apply coveredBy_split_literal root_9899693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9918279 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9918279
#print axioms cover_9899693

def root_9899687 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899687_left_fuel : Nat := 1
def small_9899687_left_count : Nat := 1
def small_9899687_left_encoded : String := "00000002"
theorem small_9899687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899687_left_root small_9899687_left_fuel small_9899687_left_count small_9899687_left_encoded = true := by
  decide +kernel
theorem small_9899687_left_covered : CoveredBy scale carrier boxes small_9899687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899687_left_root small_9899687_left_fuel small_9899687_left_count small_9899687_left_encoded small_9899687_left_checked

theorem cover_9899687 : CoveredBy scale carrier boxes root_9899687 := by
  apply coveredBy_split_literal root_9899687 small_9899687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899693 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9899687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899693
#print axioms cover_9899687

def root_9899686 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899686 : CoveredBy scale carrier boxes root_9899686 := by
  apply coveredBy_split_literal root_9899686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899687 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3721.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899687
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3721.covered
#print axioms cover_9899686

def root_9899680 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899680_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899680_left_fuel : Nat := 1
def small_9899680_left_count : Nat := 1
def small_9899680_left_encoded : String := "00000001"
theorem small_9899680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899680_left_root small_9899680_left_fuel small_9899680_left_count small_9899680_left_encoded = true := by
  decide +kernel
theorem small_9899680_left_covered : CoveredBy scale carrier boxes small_9899680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899680_left_root small_9899680_left_fuel small_9899680_left_count small_9899680_left_encoded small_9899680_left_checked

theorem cover_9899680 : CoveredBy scale carrier boxes root_9899680 := by
  apply coveredBy_split_literal root_9899680 small_9899680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899686 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9899680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899686
#print axioms cover_9899680

def root_9930399 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9930399 : CoveredBy scale carrier boxes root_9930399 := by
  apply coveredBy_split_literal root_9930399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3722.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3723.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3722.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3723.covered
#print axioms cover_9930399

def root_9930393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930393_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930393_left_fuel : Nat := 1
def small_9930393_left_count : Nat := 1
def small_9930393_left_encoded : String := "00000002"
theorem small_9930393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9930393_left_root small_9930393_left_fuel small_9930393_left_count small_9930393_left_encoded = true := by
  decide +kernel
theorem small_9930393_left_covered : CoveredBy scale carrier boxes small_9930393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9930393_left_root small_9930393_left_fuel small_9930393_left_count small_9930393_left_encoded small_9930393_left_checked

theorem cover_9930393 : CoveredBy scale carrier boxes root_9930393 := by
  apply coveredBy_split_literal root_9930393 small_9930393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9930399 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9930393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9930399
#print axioms cover_9930393

def root_9930392 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9930392 : CoveredBy scale carrier boxes root_9930392 := by
  apply coveredBy_split_literal root_9930392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9930393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3724.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9930393
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3724.covered
#print axioms cover_9930392

def root_9930387 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930387_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9930387_right_fuel : Nat := 1
def small_9930387_right_count : Nat := 1
def small_9930387_right_encoded : String := "00000001"
theorem small_9930387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9930387_right_root small_9930387_right_fuel small_9930387_right_count small_9930387_right_encoded = true := by
  decide +kernel
theorem small_9930387_right_covered : CoveredBy scale carrier boxes small_9930387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9930387_right_root small_9930387_right_fuel small_9930387_right_count small_9930387_right_encoded small_9930387_right_checked

theorem cover_9930387 : CoveredBy scale carrier boxes root_9930387 := by
  apply coveredBy_split_literal root_9930387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9930392 small_9930387_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9930392
  · exact small_9930387_right_covered
#print axioms cover_9930387

def root_9899679 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9899679 : CoveredBy scale carrier boxes root_9899679 := by
  apply coveredBy_split_literal root_9899679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9930387 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899680
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9930387
#print axioms cover_9899679

def root_9899674 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899674_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9899674_right_fuel : Nat := 1
def small_9899674_right_count : Nat := 1
def small_9899674_right_encoded : String := "00000000"
theorem small_9899674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9899674_right_root small_9899674_right_fuel small_9899674_right_count small_9899674_right_encoded = true := by
  decide +kernel
theorem small_9899674_right_covered : CoveredBy scale carrier boxes small_9899674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9899674_right_root small_9899674_right_fuel small_9899674_right_count small_9899674_right_encoded small_9899674_right_checked

theorem cover_9899674 : CoveredBy scale carrier boxes root_9899674 := by
  apply coveredBy_split_literal root_9899674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.root_9899679 small_9899674_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669.cover_9899679
  · exact small_9899674_right_covered
#print axioms cover_9899674

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0669
