import TaoBundleAssembly0177
import TaoBundleChunkBatch0693
import TaoBundleChunkBatch0694
import TaoBundleChunkBatch0695
import TaoBundleChunkBatch0696
import TaoBundleChunkBatch0697
import TaoBundleChunkBatch0698
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178
def root_7371974 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371974_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371974_left_fuel : Nat := 29
def small_7371974_left_count : Nat := 445
def small_7371974_left_encoded : String := "0F34D108000000040C9A86FA0F878D050C9A86FC0F878D0707800100128A40F7022A4583000000050000000A00000000128A7CF700000000022A458313E1C502000000010AD3578910D10108000000040DE7C9FA000000070000000910D13D080DE7C9FA000000070E5FD90500000002000000070000000413E201020AD3578910D10108000000040000000910D13D080DE7C9FA0E6015050000000A00000002000000090000000400000001000000030F8751070000000307800100128A40F7022A458313E1C502000000010AD357890000000A10D13D080DE7C9FA0000000A0E5FD905000000020B4D43FC0000000A00000006000000040000000A00000000128A7CF700000000022A458313E1C502000000010AD3578910D10108000000040000000610D13D080DE7C9FA0E60150500000006000000020E5FD905000000020B4D43FC00000007000000060000000413E201020AD3578910D10108000000040000000A10D13D080DE7C9FA0000000A0E5FD905000000020B4D43FC0000000A10801107000000030000000A0000000400000001000000020F875105000000020C9A86FC0F878D0707800100128A40F7022A458313E1C502000000010AD3578910D10108000000040000000910D13D080B4D43FA10804D050DE7C9FC000000050E5FD907000000030640010000000005000000090000000200000009000000040000000900000000128A7CF700000000022A458313E1C502000000010AD3578910D10108000000040000000910D13D080B4D43FA10804D050DE7C9FC000000070E5FD907000000030000000700000002000000090000000400000009000000030F8751070000000307800100128A40F7022A458313E1C502000000010AD3578910D10108000000040B4D43FA10804D050000000A0000000210801105000000020B4D43FC00000009108011070000000306400100000000090000000910D13D080B4D43FA10804D050B4D43FC10804D070640010012FF70F70000000A0000000012FFACF7000000000115234313F85902000000010BE879C91011710800000004000000060000000700000009000000031080110700000003064001000000000A12FFACF70000000001152343000000060000000A0000000210801105000000020B4D43FC10804D070640010012FF70F70115234313F85902000000010BE879C90000000900000009000000090000000012FFACF700000000000000090000000310801107000000030640010012FF70F70115234313F85902000000010BE879C910117108000000040000000A1011AD080AA6A27A10EDAD050AA6A27C0000000A000000060000000210ED7105000000020AA6A27C0000000910ED71070000000305A00100133134F70000000A00000000133170F700000000008A92230000000600000009000000040000000A0000000012FFACF7000000000115234313F85902000000010BE879C91011710800000004000000091011AD080AA6A27A10EDAD050AA6A27C00000007000000060000000210ED7105000000020AA6A27C0000000910ED71070000000306E001000000000912C820F700000000000000090000000413F895020BE879C9000000091011AD080AA6A27A10EDAD0500000009000000020000000900000004000000010000000413E201020AD3578910D10108000000040000000910D13D080B4D43FA10804D050000000A0000000210801105000000020B4D43FC000000091080110700000003064001000000000900000009000000040000000100000000128A7CF700000000022A458313E1C502000000010AD3578910D10108000000040B4D43FA10804D050B4D43FC00000007000000060000000210801105000000020000000910D13D080B4D43FA10804D050B4D43FC10804D0708C0010011FBE8F7011523430000000700000009000000000000000700000003108011070000000308C0010011FBE8F7011523430000000613F895020BE879C91011710800000004000000061011AD080BF3E57A000000061008ED050000000200000007000000040000000100000000000000070000000210801105000000020B4D43FC10804D0708C00100000000090000000700000003108011070000000308C0010011FBE8F70115234313F85902000000010BE879C91011710800000004000000070000000713F895020BE879C90000000900000009000000010000000011FC24F7000000000115234300000007000000050000000413E201020AD3578910D10108000000040000000910D13D080B4D43FA10804D050B4D43FC10804D070000000900000003108011070000000308C0010011FBE8F70000000A0000000011FC24F700000000033F67C313BBF502000000010BE879C90000000900000009000000090000000210801105000000020B4D43FC00000009108011070000000308C0010000000009000000050000000400000001"
theorem small_7371974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371974_left_root small_7371974_left_fuel small_7371974_left_count small_7371974_left_encoded = true := by
  decide +kernel
theorem small_7371974_left_covered : CoveredBy scale carrier boxes small_7371974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371974_left_root small_7371974_left_fuel small_7371974_left_count small_7371974_left_encoded small_7371974_left_checked

theorem cover_7371974 : CoveredBy scale carrier boxes root_7371974 := by
  apply coveredBy_split_literal root_7371974 small_7371974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0177.root_7372920 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0177.cover_7372920
#print axioms cover_7371974

def root_7371968 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371968_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371968_left_fuel : Nat := 1
def small_7371968_left_count : Nat := 1
def small_7371968_left_encoded : String := "00000003"
theorem small_7371968_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371968_left_root small_7371968_left_fuel small_7371968_left_count small_7371968_left_encoded = true := by
  decide +kernel
theorem small_7371968_left_covered : CoveredBy scale carrier boxes small_7371968_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371968_left_root small_7371968_left_fuel small_7371968_left_count small_7371968_left_encoded small_7371968_left_checked

theorem cover_7371968 : CoveredBy scale carrier boxes root_7371968 := by
  apply coveredBy_split_literal root_7371968 small_7371968_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371974 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7371968_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371974
#print axioms cover_7371968

def root_7371812 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371812_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371812_left_fuel : Nat := 15
def small_7371812_left_count : Nat := 75
def small_7371812_left_encoded : String := "0F34D0FC0CFD9C090F34D108000000040C9A86FA0F878D050780010000000005128A7CF700000000022A45830000000500000009000000020F87510500000002000000090F350D080C9A86FA0F878D050C9A8708000000050F878D090000000500000004000000020F875105000000020C9A87080F8751090000000407800100128A40F70000000500000000128A7CF700000000022A458313E1C502000000010AD357870000000510D13CFC000000030B4D43FA000000050000000613E201020AD357870000000900000006000000010F878D0907800100128A40F7022A4583000000050000000900000000128A7CF700000000022A458313E1C502000000010AD357870000000910D13CFC000000030B4D43FA000000070000000900000009000000040000000400000003"
theorem small_7371812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371812_left_root small_7371812_left_fuel small_7371812_left_count small_7371812_left_encoded = true := by
  decide +kernel
theorem small_7371812_left_covered : CoveredBy scale carrier boxes small_7371812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371812_left_root small_7371812_left_fuel small_7371812_left_count small_7371812_left_encoded small_7371812_left_checked

theorem cover_7371812 : CoveredBy scale carrier boxes root_7371812 := by
  apply coveredBy_split_literal root_7371812 small_7371812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371968 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371968
#print axioms cover_7371812

def root_7371806 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371806_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371806_left_fuel : Nat := 1
def small_7371806_left_count : Nat := 1
def small_7371806_left_encoded : String := "00000002"
theorem small_7371806_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371806_left_root small_7371806_left_fuel small_7371806_left_count small_7371806_left_encoded = true := by
  decide +kernel
theorem small_7371806_left_covered : CoveredBy scale carrier boxes small_7371806_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371806_left_root small_7371806_left_fuel small_7371806_left_count small_7371806_left_encoded small_7371806_left_checked

theorem cover_7371806 : CoveredBy scale carrier boxes root_7371806 := by
  apply coveredBy_split_literal root_7371806 small_7371806_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371812 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7371806_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371812
#print axioms cover_7371806

def root_7371602 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371602_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371602_left_fuel : Nat := 21
def small_7371602_left_count : Nat := 95
def small_7371602_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC0000000A0F875107000000030000000A0F350D080C9A86FC0F878D070C9A8708000000050F878D090000000500000004000000030F875107000000030C9A87080F8751090000000407800100128A40F70000000500000000128A7CF700000000022A458313E1C502000000010AD357850000000510D13CFA000000020B4D43FC0000000510801107000000030B4D4408000000050000000713E201020AD3578510D100FA000000050000000210D13CFA000000020B4D43FC10804D070B4D44080000000510804D0900000005000000040000000310801107000000030B4D44080000000810804D0908C00100000000080000000800000004000000010F878D0907800100128A40F70000000A00000000128A7CF700000000022A458313E1C502000000010AD357850000000610D13CFA000000020B4D43FC00000007000000060000000A000000040000000400000002"
theorem small_7371602_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371602_left_root small_7371602_left_fuel small_7371602_left_count small_7371602_left_encoded = true := by
  decide +kernel
theorem small_7371602_left_covered : CoveredBy scale carrier boxes small_7371602_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371602_left_root small_7371602_left_fuel small_7371602_left_count small_7371602_left_encoded small_7371602_left_checked

theorem cover_7371602 : CoveredBy scale carrier boxes root_7371602 := by
  apply coveredBy_split_literal root_7371602 small_7371602_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371806 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371602_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371806
#print axioms cover_7371602

def root_7371596 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371596_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371596_left_fuel : Nat := 1
def small_7371596_left_count : Nat := 1
def small_7371596_left_encoded : String := "00000001"
theorem small_7371596_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371596_left_root small_7371596_left_fuel small_7371596_left_count small_7371596_left_encoded = true := by
  decide +kernel
theorem small_7371596_left_covered : CoveredBy scale carrier boxes small_7371596_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371596_left_root small_7371596_left_fuel small_7371596_left_count small_7371596_left_encoded small_7371596_left_checked

theorem cover_7371596 : CoveredBy scale carrier boxes root_7371596 := by
  apply coveredBy_split_literal root_7371596 small_7371596_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371602 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7371596_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371602
#print axioms cover_7371596

def root_7371595 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7371595 : CoveredBy scale carrier boxes root_7371595 := by
  apply coveredBy_split_literal root_7371595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2779.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2779.covered
#print axioms cover_7371595

def root_7371589 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371589_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7371589_left_fuel : Nat := 1
def small_7371589_left_count : Nat := 1
def small_7371589_left_encoded : String := "00000000"
theorem small_7371589_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7371589_left_root small_7371589_left_fuel small_7371589_left_count small_7371589_left_encoded = true := by
  decide +kernel
theorem small_7371589_left_covered : CoveredBy scale carrier boxes small_7371589_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7371589_left_root small_7371589_left_fuel small_7371589_left_count small_7371589_left_encoded small_7371589_left_checked

theorem cover_7371589 : CoveredBy scale carrier boxes root_7371589 := by
  apply coveredBy_split_literal root_7371589 small_7371589_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371595 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7371589_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371595
#print axioms cover_7371589

def root_7369691 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7369691 : CoveredBy scale carrier boxes root_7369691 := by
  apply coveredBy_split_literal root_7369691 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2773.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7371589 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2773.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7371589
#print axioms cover_7369691

def root_7369686 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369686_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369686_right_fuel : Nat := 1
def small_7369686_right_count : Nat := 1
def small_7369686_right_encoded : String := "00000004"
theorem small_7369686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369686_right_root small_7369686_right_fuel small_7369686_right_count small_7369686_right_encoded = true := by
  decide +kernel
theorem small_7369686_right_covered : CoveredBy scale carrier boxes small_7369686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369686_right_root small_7369686_right_fuel small_7369686_right_count small_7369686_right_encoded small_7369686_right_checked

theorem cover_7369686 : CoveredBy scale carrier boxes root_7369686 := by
  apply coveredBy_split_literal root_7369686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369691 small_7369686_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369691
  · exact small_7369686_right_covered
#print axioms cover_7369686

def root_7369368 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369368_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369368_left_fuel : Nat := 21
def small_7369368_left_count : Nat := 149
def small_7369368_left_encoded : String := "120701080000000405000100135D44F704548A0313867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A090000000A1386AD080C9A86FA0000000A0F875105000000020C9A86FC000000080F875107000000030000000A000000041386AD020CFD9C050000000A0F350CFA000000020CFD9C07000000090000000A0000000100000000135D80F70000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030000000A000000020F350CFA000000020CFD9C070F34D0FC04548A090000000900000009000000030F350CFC0000000304548A0913867108000000040C9A86FA0F878D050C9A86FC0000000A0000000A000000020F875105000000020C9A86FC000000090F875107000000030780010000000009000000091386AD080C9A86FA0F878D050C9A86FC0F878D07078001000000000A128A7CF700000000022A458313E1C50200000001067ECE89000000090000000900000009000000030F875107000000030000000A000000020F875105000000020C9A86FC0F878D0700000009000000030F8751070000000307800100128A40F70000000A00000000128A7CF700000000022A458313E1C50200000001067ECE89000000090000000900000009000000041386AD020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC0000000304548A0913867108000000040000000A1386AD080C9A86FA0000000A000000090000000400000001"
theorem small_7369368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369368_left_root small_7369368_left_fuel small_7369368_left_count small_7369368_left_encoded = true := by
  decide +kernel
theorem small_7369368_left_covered : CoveredBy scale carrier boxes small_7369368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369368_left_root small_7369368_left_fuel small_7369368_left_count small_7369368_left_encoded small_7369368_left_checked

theorem cover_7369368 : CoveredBy scale carrier boxes root_7369368 := by
  apply coveredBy_split_literal root_7369368 small_7369368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369686 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369686
#print axioms cover_7369368

def root_7369362 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369362_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369362_left_fuel : Nat := 1
def small_7369362_left_count : Nat := 1
def small_7369362_left_encoded : String := "00000003"
theorem small_7369362_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369362_left_root small_7369362_left_fuel small_7369362_left_count small_7369362_left_encoded = true := by
  decide +kernel
theorem small_7369362_left_covered : CoveredBy scale carrier boxes small_7369362_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369362_left_root small_7369362_left_fuel small_7369362_left_count small_7369362_left_encoded small_7369362_left_checked

theorem cover_7369362 : CoveredBy scale carrier boxes root_7369362 := by
  apply coveredBy_split_literal root_7369362 small_7369362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369368 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7369362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369368
#print axioms cover_7369362

def root_7369246 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369246_left_fuel : Nat := 15
def small_7369246_left_count : Nat := 55
def small_7369246_left_encoded : String := "120700FC08A9130912070108000000040500010000000005135D80F70000000004548A03000000050000000912073D0805000100135D44F70000000500000000135D80F70000000004548A0313867102000000010CFD9C05000000050F350CFA0000000204548A07000000051386ACFC000000030CFD9C09000000050F350D0800000005000000041386AD020CFD9C050F34D0FA00000005000000020F350CFA0000000204548A07000000091386ACFC000000030CFD9C09000000090F350D080C9A86FA000000050000000900000004000000010000000400000003"
theorem small_7369246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369246_left_root small_7369246_left_fuel small_7369246_left_count small_7369246_left_encoded = true := by
  decide +kernel
theorem small_7369246_left_covered : CoveredBy scale carrier boxes small_7369246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369246_left_root small_7369246_left_fuel small_7369246_left_count small_7369246_left_encoded small_7369246_left_checked

theorem cover_7369246 : CoveredBy scale carrier boxes root_7369246 := by
  apply coveredBy_split_literal root_7369246 small_7369246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369362 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369362
#print axioms cover_7369246

def root_7369240 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369240_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369240_left_fuel : Nat := 1
def small_7369240_left_count : Nat := 1
def small_7369240_left_encoded : String := "00000002"
theorem small_7369240_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369240_left_root small_7369240_left_fuel small_7369240_left_count small_7369240_left_encoded = true := by
  decide +kernel
theorem small_7369240_left_covered : CoveredBy scale carrier boxes small_7369240_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369240_left_root small_7369240_left_fuel small_7369240_left_count small_7369240_left_encoded small_7369240_left_checked

theorem cover_7369240 : CoveredBy scale carrier boxes root_7369240 := by
  apply coveredBy_split_literal root_7369240 small_7369240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369246 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7369240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369246
#print axioms cover_7369240

def root_7369136 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369136_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369136_left_fuel : Nat := 16
def small_7369136_left_count : Nat := 47
def small_7369136_left_encoded : String := "120700FA08A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70000000500000000135D80F70000000004548A03138671020000000104548A05000000051386ACFA000000020CFD9C07000000050F350CFC000000030CFD9C09000000050F350D0800000005000000041386AD0204548A050000000A1386ACFA000000020CFD9C070F34D0FC00000005000000030000000A000000010000000400000002"
theorem small_7369136_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369136_left_root small_7369136_left_fuel small_7369136_left_count small_7369136_left_encoded = true := by
  decide +kernel
theorem small_7369136_left_covered : CoveredBy scale carrier boxes small_7369136_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369136_left_root small_7369136_left_fuel small_7369136_left_count small_7369136_left_encoded small_7369136_left_checked

theorem cover_7369136 : CoveredBy scale carrier boxes root_7369136 := by
  apply coveredBy_split_literal root_7369136 small_7369136_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369240 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369136_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369240
#print axioms cover_7369136

def root_7369130 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369130_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369130_left_fuel : Nat := 1
def small_7369130_left_count : Nat := 1
def small_7369130_left_encoded : String := "00000001"
theorem small_7369130_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369130_left_root small_7369130_left_fuel small_7369130_left_count small_7369130_left_encoded = true := by
  decide +kernel
theorem small_7369130_left_covered : CoveredBy scale carrier boxes small_7369130_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369130_left_root small_7369130_left_fuel small_7369130_left_count small_7369130_left_encoded small_7369130_left_checked

theorem cover_7369130 : CoveredBy scale carrier boxes root_7369130 := by
  apply coveredBy_split_literal root_7369130 small_7369130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369136 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7369130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369136
#print axioms cover_7369130

def root_7369129 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369129_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369129_right_fuel : Nat := 32
def small_7369129_right_count : Nat := 179
def small_7369129_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC00000005000000030000000A0000000212073CFA0000000208A91307120700FC08A9130912070108000000040000000912073D0805000100135D44F70CFD9C030F34D102000000010CFD9C0500000005000000090000000900000000135D80F7000000000CFD9C030F34D102000000010CFD9C05000000090F350CFA000000020000000900000009000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70CFD9C030F34D102000000010CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC0CFD9C09000000090F350D080C9A86FA0000000A0000000900000004000000030000000A0000000A00000000135D80F7000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC0000000A000000030000000A000000020F350CFA000000020CFD9C070F34D0FC0CFD9C09000000090F350D080C9A86FA0F878D0500000009000000020000000900000004000000030F350CFC000000030CFD9C090F34D108000000040000000A0F350D080C9A86FA0F878D050C9A86FC0F878D070C9A87080F87510900000004078001000000000A128A7CF7000000000AD3578310D10102000000010DE7C9FA0000000A00000009000000090000000A000000030F875107000000030000000A000000020F875105000000020C9A86FC0F878D070C9A87080F8751090000000407800100000000090000000900000009000000030F875107000000030C9A87080F8751090000000407800100128A40F70000000A00000000128A7CF7000000000AD3578310D10102000000010B4D43FA10804D050B4D43FC0000000610801107000000030000000A0000000200000006000000090000000A000000040F350D020CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC00000009000000030000000A000000010000000400000001"
theorem small_7369129_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369129_right_root small_7369129_right_fuel small_7369129_right_count small_7369129_right_encoded = true := by
  decide +kernel
theorem small_7369129_right_covered : CoveredBy scale carrier boxes small_7369129_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369129_right_root small_7369129_right_fuel small_7369129_right_count small_7369129_right_encoded small_7369129_right_checked

theorem cover_7369129 : CoveredBy scale carrier boxes root_7369129 := by
  apply coveredBy_split_literal root_7369129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369130 small_7369129_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369130
  · exact small_7369129_right_covered
#print axioms cover_7369129

def root_7369124 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369124_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7369124_right_fuel : Nat := 1
def small_7369124_right_count : Nat := 1
def small_7369124_right_encoded : String := "00000004"
theorem small_7369124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7369124_right_root small_7369124_right_fuel small_7369124_right_count small_7369124_right_encoded = true := by
  decide +kernel
theorem small_7369124_right_covered : CoveredBy scale carrier boxes small_7369124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7369124_right_root small_7369124_right_fuel small_7369124_right_count small_7369124_right_encoded small_7369124_right_checked

theorem cover_7369124 : CoveredBy scale carrier boxes root_7369124 := by
  apply coveredBy_split_literal root_7369124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369129 small_7369124_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369129
  · exact small_7369124_right_covered
#print axioms cover_7369124

def root_7366778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366778 : CoveredBy scale carrier boxes root_7366778 := by
  apply coveredBy_split_literal root_7366778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2772.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7369124 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2772.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7369124
#print axioms cover_7366778

def root_7366773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366773_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366773_right_fuel : Nat := 1
def small_7366773_right_count : Nat := 1
def small_7366773_right_encoded : String := "00000003"
theorem small_7366773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7366773_right_root small_7366773_right_fuel small_7366773_right_count small_7366773_right_encoded = true := by
  decide +kernel
theorem small_7366773_right_covered : CoveredBy scale carrier boxes small_7366773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7366773_right_root small_7366773_right_fuel small_7366773_right_count small_7366773_right_encoded small_7366773_right_checked

theorem cover_7366773 : CoveredBy scale carrier boxes root_7366773 := by
  apply coveredBy_split_literal root_7366773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366778 small_7366773_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366778
  · exact small_7366773_right_covered
#print axioms cover_7366773

def root_7391171 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7391171_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7391171_left_fuel : Nat := 23
def small_7391171_left_count : Nat := 313
def small_7391171_left_encoded : String := "0F878D050C9A87080F8751090000000407800100128A40F7078000FC128A7D07022A458313E1C502000000010DE7C9FA0E6015050B4D44080000000810804D090640010012FF70F700000009000000000000000800000004000000020E5FD905000000020B4D440810801109000000040000000810804D090640010012FF70F708C000FC11FC250701152343000000080000000800000003000000080000000012FFACF700000000000000080000000413E201020DE7C9FA0E6015050B4D440810801109000000040000000810804D09064001000000000A12FFACF7000000000000000800000004000000020E5FD905000000020B4D440810801109000000040000000810804D090640010012FF70F708C000FC0000000A000000080000000012FFACF70000000000000008000000040000000100000003128A410700000003022A45830000000913E201020DE7C9FA0E6015050000000800000002000000080000000100000000128A7CF700000000078000FC128A7D07022A458313E1C502000000010DE7C9FA0E60150500000008000000020000000813E201020DE7C9FA0E6015050000000800000002000000080000000100000003128A410700000003000000080F878D0907800100128A40F7078000FC128A7D07022A458313E1C502000000010DE7C9FA0E6015050DE7CA080E5FD909000000040000000600000006000000020E5FD905000000020DE7CA080E5FD909000000040640010012FF70F708C000FC11FC25070115234313F85902000000010D41287A000000060EFA1105000000020D41288800000009000000060000000A0000000311FBE9070000000301152343000000060000000A0000000012FFACF70000000008C000FC11FC25070115234313F85902000000010D41287A000000060000000813F895020D41287A0EFA4D05000000080000000200000008000000010000000311FBE90700000003000000060E601509064001000000000612FFACF700000000000000060000000413E201020DE7C9FA0000000A0E5FD905000000020DE7CA080E5FD90900000004064001000000000A12FFACF70000000008C000FC0000000A11FBE90700000003000000080000000A0000000100000003128A410700000003022A45830000000613E201020DE7C9FA0000000A0E5FD905000000020DE7CA080E5FD90900000004064001000000000800000008000000060000000100000000128A7CF700000000078000FC128A7D07022A458313E1C502000000010DE7C9FA0E6015050DE7CA080E5FD909000000040000000600000006000000020E5FD905000000020DE7CA080E5FD9090000000408C0010011FBE8F708C000FC000000080000000600000000000000080E601509000000060000000413E201020DE7C9FA0E6015050DE7CA080E5FD9090000000408C0010011FBE8F70000000A00000000000000080000000A000000020E5FD905000000020DE7CA080E5FD9090000000408C0010011FBE8F708C000FC000000080000000800000000000000080E60150908C0010011FBE8F708C000FC0000000A000000060000000011FC24F70000000008C000FC11FC2507033F67C300000006000000080000000300000006000000040000000100000003128A410700000003022A45830000000613E201020DE7C9FA0E60150500000006000000020E5FD905000000020DE7CA080000000800000005000000010000000400000002"
theorem small_7391171_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7391171_left_root small_7391171_left_fuel small_7391171_left_count small_7391171_left_encoded = true := by
  decide +kernel
theorem small_7391171_left_covered : CoveredBy scale carrier boxes small_7391171_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7391171_left_root small_7391171_left_fuel small_7391171_left_count small_7391171_left_encoded small_7391171_left_checked

theorem cover_7391171 : CoveredBy scale carrier boxes root_7391171 := by
  apply coveredBy_split_literal root_7391171 small_7391171_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2782.root coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7391171_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2782.covered
#print axioms cover_7391171

def root_7391166 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7391166_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7391166_right_fuel : Nat := 1
def small_7391166_right_count : Nat := 1
def small_7391166_right_encoded : String := "00000004"
theorem small_7391166_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7391166_right_root small_7391166_right_fuel small_7391166_right_count small_7391166_right_encoded = true := by
  decide +kernel
theorem small_7391166_right_covered : CoveredBy scale carrier boxes small_7391166_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7391166_right_root small_7391166_right_fuel small_7391166_right_count small_7391166_right_encoded small_7391166_right_checked

theorem cover_7391166 : CoveredBy scale carrier boxes root_7391166 := by
  apply coveredBy_split_literal root_7391166 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7391171 small_7391166_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7391171
  · exact small_7391166_right_covered
#print axioms cover_7391166

def root_7390680 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390680_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390680_left_fuel : Nat := 27
def small_7390680_left_count : Nat := 233
def small_7390680_left_encoded : String := "0F34D108000000040C9A86FA0F878D0507800100128A40F7078000FC0000000A0000000600000000128A7CF700000000078000FC128A7D07022A45830000000613E201020AD357890000000A10D13D080DE7C9FA000000060E5FD905000000020000000A00000004000000010000000300000006000000020F8751050000000207800100128A40F7078000FC128A7D07022A458313E1C502000000010AD3578910D10108000000040000000610D13D080B4D43FA10804D05064001000000000612FFACF700000000000000060000000210801105000000020640010012FF70F708C000FC11FC25070115234313F85902000000010BE879C9000000061011AD080AA6A27A0000000610ED71050000000205A00100133134F7096000FC0000000A0000000600000000133170F70000000000000006000000040000000A0000000311FBE9070000000301152343000000060000000A0000000012FFACF70000000008C000FC11FC25070115234313F85902000000010BE879C9000000061011AD080AA6A27A0000000610ED710500000002000000050000000413F895020BE879C91011710800000004000000061011AD080AA6A27A10EDAD0506E001000000000600000005000000020000000500000004000000010000000311FBE907000000030115234300000006000000050000000413E201020AD3578910D10108000000040000000A10D13D080B4D43FA0000000A1080110500000002064001000000000A12FFACF70000000008C000FC0000000A00000005000000040000000100000003128A410700000003022A458313E1C502000000010AD35789000000060000000613E201020AD357890000000A10D13D080B4D43FA0000000A00000005000000040000000100000000128A7CF700000000078000FC128A7D07022A458313E1C502000000010AD3578910D10108000000040000000610D13D080B4D43FA10804D0508C001000000000611FC24F7000000000000000600000002108011050000000208C0010011FBE8F708C000FC11FC25070115234313F85902000000010BE879C9000000060000000500000005000000030000000500000000000000050000000413E201020AD3578910D10108000000040B4D43FA10804D0500000006000000020000000510D13D080B4D43FA10804D0508C0010011FBE8F708C000FC0000000A0000000500000000000000050000000200000005000000040000000100000003128A410700000003022A458313E1C502000000010AD35789000000060000000500000005"
theorem small_7390680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390680_left_root small_7390680_left_fuel small_7390680_left_count small_7390680_left_encoded = true := by
  decide +kernel
theorem small_7390680_left_covered : CoveredBy scale carrier boxes small_7390680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390680_left_root small_7390680_left_fuel small_7390680_left_count small_7390680_left_encoded small_7390680_left_checked

theorem cover_7390680 : CoveredBy scale carrier boxes root_7390680 := by
  apply coveredBy_split_literal root_7390680 small_7390680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7391166 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7390680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7391166
#print axioms cover_7390680

def root_7390674 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390674_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390674_left_fuel : Nat := 1
def small_7390674_left_count : Nat := 1
def small_7390674_left_encoded : String := "00000002"
theorem small_7390674_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390674_left_root small_7390674_left_fuel small_7390674_left_count small_7390674_left_encoded = true := by
  decide +kernel
theorem small_7390674_left_covered : CoveredBy scale carrier boxes small_7390674_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390674_left_root small_7390674_left_fuel small_7390674_left_count small_7390674_left_encoded small_7390674_left_checked

theorem cover_7390674 : CoveredBy scale carrier boxes root_7390674 := by
  apply coveredBy_split_literal root_7390674 small_7390674_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390680 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7390674_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390680
#print axioms cover_7390674

def root_7390520 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390520_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390520_left_fuel : Nat := 15
def small_7390520_left_count : Nat := 73
def small_7390520_left_encoded : String := "0F34D0FA0CFD9C090F34D10800000004000000060F350D080C9A87080F8751090000000407800100128A40F7078000FC128A7D07022A458313E1C502000000010AD357850000000510D13CFA000000020B4D440800000005000000060000000A00000003128A410700000003022A4583000000060000000A00000000128A7CF700000000078000FC128A7D07022A458313E1C502000000010AD357850000000610D13CFA000000020000000813E201020AD357850000000810D13CFA00000002000000080000000100000003128A410700000003000000080F878D0907800100128A40F7078000FC0000000A0000000600000000128A7CF700000000078000FC128A7D07022A4583000000060000000A0000000300000006000000040000000400000002"
theorem small_7390520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390520_left_root small_7390520_left_fuel small_7390520_left_count small_7390520_left_encoded = true := by
  decide +kernel
theorem small_7390520_left_covered : CoveredBy scale carrier boxes small_7390520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390520_left_root small_7390520_left_fuel small_7390520_left_count small_7390520_left_encoded small_7390520_left_checked

theorem cover_7390520 : CoveredBy scale carrier boxes root_7390520 := by
  apply coveredBy_split_literal root_7390520 small_7390520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390674 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7390520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390674
#print axioms cover_7390520

def root_7390514 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390514_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390514_left_fuel : Nat := 1
def small_7390514_left_count : Nat := 1
def small_7390514_left_encoded : String := "00000001"
theorem small_7390514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390514_left_root small_7390514_left_fuel small_7390514_left_count small_7390514_left_encoded = true := by
  decide +kernel
theorem small_7390514_left_covered : CoveredBy scale carrier boxes small_7390514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390514_left_root small_7390514_left_fuel small_7390514_left_count small_7390514_left_encoded small_7390514_left_checked

theorem cover_7390514 : CoveredBy scale carrier boxes root_7390514 := by
  apply coveredBy_split_literal root_7390514 small_7390514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390520 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7390514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390520
#print axioms cover_7390514

def root_7390513 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390513_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390513_right_fuel : Nat := 23
def small_7390513_right_count : Nat := 301
def small_7390513_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C090F34D108000000040000000A0F350D080C9A87080F87510900000004078001000000000A128A7CF700000000078000FC0000000A128A410700000003067ECE83000000080000000A0000000A00000004000000020F350CFA000000020CFD9C090F34D108000000040C9A86FA0F878D050000000A000000020F8751050000000207800100128A40F70000000A00000000128A7CF700000000078000FC128A7D07067ECE8312EA5902000000010AD3578910D10108000000040000000A10D13D080B4D43FA10804D050000000A0000000200000005000000040000000A00000003128A410700000003000000050F350D080C9A86FA0F878D050C9A87080F8751090000000407800100128A40F7078000FC128A7D07067ECE8312EA5902000000010DE7C9FA0E6015050000000A000000020E5FD905000000020B4D44081080110900000004000000080000000A0000000A00000003128A410700000003067ECE8312EA5902000000010DE7C9FA0E6015050000000800000002000000080000000A00000000128A7CF700000000078000FC128A7D07067ECE8312EA5902000000010DE7C9FA0E60150500000008000000020000000812EA95020DE7C9FA0E6015050000000800000002000000080000000100000003128A410700000003067ECE8300000008000000080F878D0907800100128A40F70000000A00000000128A7CF700000000078000FC128A7D07067ECE8312EA5902000000010DE7C9FA0E6015050000000A000000020E5FD905000000020DE7CA080E5FD9090000000408C001000000000A000000080000000A0000000A00000003128A410700000003067ECE8312EA5902000000010DE7C9FA0000000A0E5FD90500000002000000050000000A00000004000000020F875105000000020C9A87080F8751090000000407800100128A40F7078000FC128A7D07067ECE8312EA5902000000010B4D43FA10804D050B4D440810801109000000040000000810804D090640010012FF70F708C000FC0000000A000000070000000012FFACF70000000000000008000000040000000210801105000000020B4D440810801109000000040000000610804D090640010000000007000000050000000412EA95020B4D43FA10804D050B4D4408000000070000000A00000002000000070000000100000003128A410700000003067ECE8312EA5902000000010B4D43FA10804D050000000800000002000000050000000500000000128A7CF700000000078000FC128A7D07067ECE8312EA5902000000010B4D43FA10804D050000000800000002000000050000000500000003000000050F878D0907800100128A40F7078000FC128A7D07067ECE8312EA5902000000010B4D43FA10804D050000000A0000000210801105000000020DE7CA080E5FD909000000040640010000000007000000050000000A0000000A00000003128A410700000003067ECE8312EA5902000000010B4D43FA10804D050000000A00000002000000050000000500000000128A7CF700000000078000FC128A7D07067ECE8312EA5902000000010B4D43FA10804D050DE7CA080E5FD9090000000400000005000000050000000200000005000000050000000300000005000000040000000400000001"
theorem small_7390513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390513_right_root small_7390513_right_fuel small_7390513_right_count small_7390513_right_encoded = true := by
  decide +kernel
theorem small_7390513_right_covered : CoveredBy scale carrier boxes small_7390513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390513_right_root small_7390513_right_fuel small_7390513_right_count small_7390513_right_encoded small_7390513_right_checked

theorem cover_7390513 : CoveredBy scale carrier boxes root_7390513 := by
  apply coveredBy_split_literal root_7390513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390514 small_7390513_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390514
  · exact small_7390513_right_covered
#print axioms cover_7390513

def root_7390508 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390508_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390508_right_fuel : Nat := 1
def small_7390508_right_count : Nat := 1
def small_7390508_right_encoded : String := "00000003"
theorem small_7390508_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390508_right_root small_7390508_right_fuel small_7390508_right_count small_7390508_right_encoded = true := by
  decide +kernel
theorem small_7390508_right_covered : CoveredBy scale carrier boxes small_7390508_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390508_right_root small_7390508_right_fuel small_7390508_right_count small_7390508_right_encoded small_7390508_right_checked

theorem cover_7390508 : CoveredBy scale carrier boxes root_7390508 := by
  apply coveredBy_split_literal root_7390508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390513 small_7390508_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390513
  · exact small_7390508_right_covered
#print axioms cover_7390508

def root_7390507 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390507_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390507_right_fuel : Nat := 18
def small_7390507_right_count : Nat := 141
def small_7390507_right_encoded : String := "135D45070000000304548A0313867102000000010CFD9C050F34D0FA0CFD9C090000000600000006000000020F350CFA000000020CFD9C090F34D108000000040C9A86FA000000060F875105000000020780010000000006000000050F350D080C9A86FA0F878D050C9A87080F8751090000000407800100128A40F70000000900000000000000080F878D090000000600000004000000020F875105000000020C9A87080F8751090000000407800100128A40F7028000FC000000080000000500000000000000050F878D0907800100128A40F7028000FC13D7ED07022A458313E1C5020000000100000005000000050000000300000005000000000000000500000004000000041386AD020CFD9C050F34D0FA0CFD9C090F34D10800000004000000060F350D080C9A87080F8751090000000407800100128A40F70000000A00000000128A7CF700000000028000FC00000008000000060000000A00000004000000020F350CFA000000020CFD9C090F34D108000000040C9A86FA0F878D050000000A000000020F87510500000002000000050F350D080C9A86FA0F878D050C9A87080F8751090000000407800100128A40F7028000FC13D7ED07067ECE830000000800000007000000030000000700000000128A7CF700000000028000FC00000008000000050F878D0907800100128A40F70000000A00000000128A7CF7000000000000000500000004000000020F875105000000020C9A87080F8751090000000400000005000000050000000400000001"
theorem small_7390507_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390507_right_root small_7390507_right_fuel small_7390507_right_count small_7390507_right_encoded = true := by
  decide +kernel
theorem small_7390507_right_covered : CoveredBy scale carrier boxes small_7390507_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390507_right_root small_7390507_right_fuel small_7390507_right_count small_7390507_right_encoded small_7390507_right_checked

theorem cover_7390507 : CoveredBy scale carrier boxes root_7390507 := by
  apply coveredBy_split_literal root_7390507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390508 small_7390507_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390508
  · exact small_7390507_right_covered
#print axioms cover_7390507

def root_7390501 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390501_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7390501_left_fuel : Nat := 1
def small_7390501_left_count : Nat := 1
def small_7390501_left_encoded : String := "00000000"
theorem small_7390501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7390501_left_root small_7390501_left_fuel small_7390501_left_count small_7390501_left_encoded = true := by
  decide +kernel
theorem small_7390501_left_covered : CoveredBy scale carrier boxes small_7390501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7390501_left_root small_7390501_left_fuel small_7390501_left_count small_7390501_left_encoded small_7390501_left_checked

theorem cover_7390501 : CoveredBy scale carrier boxes root_7390501 := by
  apply coveredBy_split_literal root_7390501 small_7390501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390507 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7390501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390507
#print axioms cover_7390501

def root_7387749 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7387749 : CoveredBy scale carrier boxes root_7387749 := by
  apply coveredBy_split_literal root_7387749 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2781.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7390501 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2781.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7390501
#print axioms cover_7387749

def root_7387744 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387744_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387744_right_fuel : Nat := 1
def small_7387744_right_count : Nat := 1
def small_7387744_right_encoded : String := "00000004"
theorem small_7387744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387744_right_root small_7387744_right_fuel small_7387744_right_count small_7387744_right_encoded = true := by
  decide +kernel
theorem small_7387744_right_covered : CoveredBy scale carrier boxes small_7387744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387744_right_root small_7387744_right_fuel small_7387744_right_count small_7387744_right_encoded small_7387744_right_checked

theorem cover_7387744 : CoveredBy scale carrier boxes root_7387744 := by
  apply coveredBy_split_literal root_7387744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387749 small_7387744_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387749
  · exact small_7387744_right_covered
#print axioms cover_7387744

def root_7387606 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387606_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387606_left_fuel : Nat := 19
def small_7387606_left_count : Nat := 65
def small_7387606_left_encoded : String := "120701080000000405000100135D44F7050000FC0000000A135D4507000000030000000A00000000135D80F700000000050000FC135D810704548A0313867102000000010CFD9C050000000A0F350CFA0000000204548A0913867108000000040C9A86FA000000060F875105000000020780010000000006128A7CF700000000000000061386AD080C9A86FA0F878D0500000006000000020F8751050000000207800100128A40F7078000FC0000000A0000000600000000128A7CF700000000078000FC128A7D07022A4583000000060000000A0000000300000006000000040000000A00000003135D45070000000304548A031386710200000001000000060000000A"
theorem small_7387606_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387606_left_root small_7387606_left_fuel small_7387606_left_count small_7387606_left_encoded = true := by
  decide +kernel
theorem small_7387606_left_covered : CoveredBy scale carrier boxes small_7387606_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387606_left_root small_7387606_left_fuel small_7387606_left_count small_7387606_left_encoded small_7387606_left_checked

theorem cover_7387606 : CoveredBy scale carrier boxes root_7387606 := by
  apply coveredBy_split_literal root_7387606 small_7387606_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387744 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7387606_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387744
#print axioms cover_7387606

def root_7387600 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387600_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387600_left_fuel : Nat := 1
def small_7387600_left_count : Nat := 1
def small_7387600_left_encoded : String := "00000002"
theorem small_7387600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387600_left_root small_7387600_left_fuel small_7387600_left_count small_7387600_left_encoded = true := by
  decide +kernel
theorem small_7387600_left_covered : CoveredBy scale carrier boxes small_7387600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387600_left_root small_7387600_left_fuel small_7387600_left_count small_7387600_left_encoded small_7387600_left_checked

theorem cover_7387600 : CoveredBy scale carrier boxes root_7387600 := by
  apply coveredBy_split_literal root_7387600 small_7387600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387606 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7387600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387606
#print axioms cover_7387600

def root_7387568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387568_left_fuel : Nat := 7
def small_7387568_left_count : Nat := 15
def small_7387568_left_encoded : String := "120700FA08A9130912070108000000040000000612073D08050001000000000A135D80F700000000050000FC0000000A000000060000000400000002"
theorem small_7387568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387568_left_root small_7387568_left_fuel small_7387568_left_count small_7387568_left_encoded = true := by
  decide +kernel
theorem small_7387568_left_covered : CoveredBy scale carrier boxes small_7387568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387568_left_root small_7387568_left_fuel small_7387568_left_count small_7387568_left_encoded small_7387568_left_checked

theorem cover_7387568 : CoveredBy scale carrier boxes root_7387568 := by
  apply coveredBy_split_literal root_7387568 small_7387568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387600 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7387568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387600
#print axioms cover_7387568

def root_7387562 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387562_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387562_left_fuel : Nat := 1
def small_7387562_left_count : Nat := 1
def small_7387562_left_encoded : String := "00000001"
theorem small_7387562_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387562_left_root small_7387562_left_fuel small_7387562_left_count small_7387562_left_encoded = true := by
  decide +kernel
theorem small_7387562_left_covered : CoveredBy scale carrier boxes small_7387562_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387562_left_root small_7387562_left_fuel small_7387562_left_count small_7387562_left_encoded small_7387562_left_checked

theorem cover_7387562 : CoveredBy scale carrier boxes root_7387562 := by
  apply coveredBy_split_literal root_7387562 small_7387562_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387568 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7387562_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387568
#print axioms cover_7387562

def root_7387561 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387561_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387561_right_fuel : Nat := 25
def small_7387561_right_count : Nat := 103
def small_7387561_right_encoded : String := "12073D0208A913050000000A12073CFA0000000208A9130912070108000000040000000A12073D0805000100135D44F7050000FC0000000A135D4507000000030000000A00000000135D80F700000000050000FC135D81070CFD9C030F34D102000000010CFD9C050000000A0F350CFA000000020CFD9C090F34D108000000040000000A0F350D080C9A86FA0F878D050C9A87080F87510900000004078001000000000A128A7CF700000000078000FC0000000A128A4107000000030000000A0000000A000000020F875105000000020C9A87080F875109000000040780010000000007128A7CF700000000078000FC128A7D070AD35783000000080000000500000003000000050F878D09078001000000000A128A7CF700000000078000FC0000000A0000000500000004000000040000000A00000003135D4507000000030CFD9C030F34D102000000010CFD9C050000000A0F350CFA000000020CFD9C090F34D108000000040000000A0F350D080C9A86FA0F878D050C9A8708000000070000000A0000000200000007000000040000000A0000000400000001"
theorem small_7387561_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387561_right_root small_7387561_right_fuel small_7387561_right_count small_7387561_right_encoded = true := by
  decide +kernel
theorem small_7387561_right_covered : CoveredBy scale carrier boxes small_7387561_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387561_right_root small_7387561_right_fuel small_7387561_right_count small_7387561_right_encoded small_7387561_right_checked

theorem cover_7387561 : CoveredBy scale carrier boxes root_7387561 := by
  apply coveredBy_split_literal root_7387561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387562 small_7387561_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387562
  · exact small_7387561_right_covered
#print axioms cover_7387561

def root_7387556 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387556_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7387556_right_fuel : Nat := 1
def small_7387556_right_count : Nat := 1
def small_7387556_right_encoded : String := "00000004"
theorem small_7387556_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7387556_right_root small_7387556_right_fuel small_7387556_right_count small_7387556_right_encoded = true := by
  decide +kernel
theorem small_7387556_right_covered : CoveredBy scale carrier boxes small_7387556_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7387556_right_root small_7387556_right_fuel small_7387556_right_count small_7387556_right_encoded small_7387556_right_checked

theorem cover_7387556 : CoveredBy scale carrier boxes root_7387556 := by
  apply coveredBy_split_literal root_7387556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387561 small_7387556_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387561
  · exact small_7387556_right_covered
#print axioms cover_7387556

def root_7385904 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7385904 : CoveredBy scale carrier boxes root_7385904 := by
  apply coveredBy_split_literal root_7385904 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2780.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7387556 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2780.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7387556
#print axioms cover_7385904

def root_7385898 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7385898_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7385898_left_fuel : Nat := 1
def small_7385898_left_count : Nat := 1
def small_7385898_left_encoded : String := "00000003"
theorem small_7385898_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7385898_left_root small_7385898_left_fuel small_7385898_left_count small_7385898_left_encoded = true := by
  decide +kernel
theorem small_7385898_left_covered : CoveredBy scale carrier boxes small_7385898_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7385898_left_root small_7385898_left_fuel small_7385898_left_count small_7385898_left_encoded small_7385898_left_checked

theorem cover_7385898 : CoveredBy scale carrier boxes root_7385898 := by
  apply coveredBy_split_literal root_7385898 small_7385898_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7385904 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7385898_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7385904
#print axioms cover_7385898

def root_7366772 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366772 : CoveredBy scale carrier boxes root_7366772 := by
  apply coveredBy_split_literal root_7366772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7385898 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366773
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7385898
#print axioms cover_7366772

def root_7366767 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366767_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366767_right_fuel : Nat := 1
def small_7366767_right_count : Nat := 1
def small_7366767_right_encoded : String := "00000002"
theorem small_7366767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7366767_right_root small_7366767_right_fuel small_7366767_right_count small_7366767_right_encoded = true := by
  decide +kernel
theorem small_7366767_right_covered : CoveredBy scale carrier boxes small_7366767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7366767_right_root small_7366767_right_fuel small_7366767_right_count small_7366767_right_encoded small_7366767_right_checked

theorem cover_7366767 : CoveredBy scale carrier boxes root_7366767 := by
  apply coveredBy_split_literal root_7366767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366772 small_7366767_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366772
  · exact small_7366767_right_covered
#print axioms cover_7366767

def root_7396507 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7396507 : CoveredBy scale carrier boxes root_7396507 := by
  apply coveredBy_split_literal root_7396507 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2783.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2784.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2783.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2784.covered
#print axioms cover_7396507

def root_7396502 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396502_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396502_right_fuel : Nat := 1
def small_7396502_right_count : Nat := 1
def small_7396502_right_encoded : String := "00000004"
theorem small_7396502_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396502_right_root small_7396502_right_fuel small_7396502_right_count small_7396502_right_encoded = true := by
  decide +kernel
theorem small_7396502_right_covered : CoveredBy scale carrier boxes small_7396502_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396502_right_root small_7396502_right_fuel small_7396502_right_count small_7396502_right_encoded small_7396502_right_checked

theorem cover_7396502 : CoveredBy scale carrier boxes root_7396502 := by
  apply coveredBy_split_literal root_7396502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396507 small_7396502_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396507
  · exact small_7396502_right_covered
#print axioms cover_7396502

def root_7396396 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396396_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396396_left_fuel : Nat := 15
def small_7396396_left_count : Nat := 53
def small_7396396_left_encoded : String := "120701080000000405000100135D44F7050000FA135D810504548A0313867102000000010CFD9C07000000080F350CFC0000000304548A09000000081386AD080C9A86FC000000080F875107000000030280010000000008000000090000000400000009000000020000000900000000135D80F700000000050000FA135D810504548A0313867102000000010CFD9C07000000090F350CFC0000000304548A09000000091386AD080C9A86FC000000090F8751070000000307800100000000090000000900000004000000090000000200000009"
theorem small_7396396_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396396_left_root small_7396396_left_fuel small_7396396_left_count small_7396396_left_encoded = true := by
  decide +kernel
theorem small_7396396_left_covered : CoveredBy scale carrier boxes small_7396396_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396396_left_root small_7396396_left_fuel small_7396396_left_count small_7396396_left_encoded small_7396396_left_checked

theorem cover_7396396 : CoveredBy scale carrier boxes root_7396396 := by
  apply coveredBy_split_literal root_7396396 small_7396396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396502 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7396396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396502
#print axioms cover_7396396

def root_7396390 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396390_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396390_left_fuel : Nat := 1
def small_7396390_left_count : Nat := 1
def small_7396390_left_encoded : String := "00000003"
theorem small_7396390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396390_left_root small_7396390_left_fuel small_7396390_left_count small_7396390_left_encoded = true := by
  decide +kernel
theorem small_7396390_left_covered : CoveredBy scale carrier boxes small_7396390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396390_left_root small_7396390_left_fuel small_7396390_left_count small_7396390_left_encoded small_7396390_left_checked

theorem cover_7396390 : CoveredBy scale carrier boxes root_7396390 := by
  apply coveredBy_split_literal root_7396390 small_7396390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396396 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7396390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396396
#print axioms cover_7396390

def root_7396312 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396312_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396312_left_fuel : Nat := 13
def small_7396312_left_count : Nat := 37
def small_7396312_left_encoded : String := "120700FC08A9130912070108000000040000000812073D0805000100135D44F7050000FA135D810504548A0313867102000000010000000800000009000000020000000900000000135D80F700000000050000FA135D810504548A03138671020000000104548A07000000091386ACFC000000030CFD9C0900000009000000090000000900000002000000090000000400000003"
theorem small_7396312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396312_left_root small_7396312_left_fuel small_7396312_left_count small_7396312_left_encoded = true := by
  decide +kernel
theorem small_7396312_left_covered : CoveredBy scale carrier boxes small_7396312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396312_left_root small_7396312_left_fuel small_7396312_left_count small_7396312_left_encoded small_7396312_left_checked

theorem cover_7396312 : CoveredBy scale carrier boxes root_7396312 := by
  apply coveredBy_split_literal root_7396312 small_7396312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396390 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7396312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396390
#print axioms cover_7396312

def root_7396306 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396306_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396306_left_fuel : Nat := 1
def small_7396306_left_count : Nat := 1
def small_7396306_left_encoded : String := "00000001"
theorem small_7396306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396306_left_root small_7396306_left_fuel small_7396306_left_count small_7396306_left_encoded = true := by
  decide +kernel
theorem small_7396306_left_covered : CoveredBy scale carrier boxes small_7396306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396306_left_root small_7396306_left_fuel small_7396306_left_count small_7396306_left_encoded small_7396306_left_checked

theorem cover_7396306 : CoveredBy scale carrier boxes root_7396306 := by
  apply coveredBy_split_literal root_7396306 small_7396306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396312 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7396306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396312
#print axioms cover_7396306

def root_7396305 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396305_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396305_right_fuel : Nat := 20
def small_7396305_right_count : Nat := 103
def small_7396305_right_encoded : String := "12073D0208A91307120700FC08A9130900000009000000090000000312073CFC0000000308A9130912070108000000040000000912073D0805000100135D44F7050000FA135D81050CFD9C030F34D102000000010CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0F878D07000000090000000300000007000000040F350D020CFD9C07000000090000000A0000000100000002135D4505000000020CFD9C030F34D10200000001000000090000000700000000135D80F700000000050000FA135D81050CFD9C030F34D102000000010CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0F878D0700000009000000030F875107000000030C9A87080F87510900000004000000060F878D090000000900000004000000040F350D020CFD9C07000000090F350CFC000000030CFD9C0900000009000000090000000100000002135D4505000000020CFD9C030F34D1020000000100000009000000090000000400000001"
theorem small_7396305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396305_right_root small_7396305_right_fuel small_7396305_right_count small_7396305_right_encoded = true := by
  decide +kernel
theorem small_7396305_right_covered : CoveredBy scale carrier boxes small_7396305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396305_right_root small_7396305_right_fuel small_7396305_right_count small_7396305_right_encoded small_7396305_right_checked

theorem cover_7396305 : CoveredBy scale carrier boxes root_7396305 := by
  apply coveredBy_split_literal root_7396305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396306 small_7396305_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396306
  · exact small_7396305_right_covered
#print axioms cover_7396305

def root_7396300 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396300_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396300_right_fuel : Nat := 1
def small_7396300_right_count : Nat := 1
def small_7396300_right_encoded : String := "00000004"
theorem small_7396300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396300_right_root small_7396300_right_fuel small_7396300_right_count small_7396300_right_encoded = true := by
  decide +kernel
theorem small_7396300_right_covered : CoveredBy scale carrier boxes small_7396300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396300_right_root small_7396300_right_fuel small_7396300_right_count small_7396300_right_encoded small_7396300_right_checked

theorem cover_7396300 : CoveredBy scale carrier boxes root_7396300 := by
  apply coveredBy_split_literal root_7396300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396305 small_7396300_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396305
  · exact small_7396300_right_covered
#print axioms cover_7396300

def root_7396052 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396052_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396052_left_fuel : Nat := 16
def small_7396052_left_count : Nat := 115
def small_7396052_left_encoded : String := "1151E9090000000408A91303120701020000000108A91307120700FC05000100135D44F70000000600000000000000060000000312073CFC0000000305000100135D44F7050000FA135D81050500010800000006135D810904548A031386710200000001000000060000000600000004000000020000000600000000135D80F700000000050000FA135D81050500010800000006135D810904548A0313867102000000010CFD9C070F34D0FC0000000600000003000000061386AD020CFD9C070F34D0FC0000000600000003000000060000000100000004000000020000000612073D0208A91307120700FC05000100135D44F70000000600000000000000060000000312073CFC0000000305000100135D44F7050000FA135D81050500010800000006135D81090CFD9C030F34D10200000001000000060F350D020CFD9C0700000006000000060000000100000004000000020000000600000000135D80F700000000050000FA135D810505000108135D45090000000400000006135D81090CFD9C030F34D102000000010CFD9C0700000006000000060F350D020CFD9C070F34D0FC000000060000000300000006000000010000000400000002135D4505000000020000000600000001"
theorem small_7396052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396052_left_root small_7396052_left_fuel small_7396052_left_count small_7396052_left_encoded = true := by
  decide +kernel
theorem small_7396052_left_covered : CoveredBy scale carrier boxes small_7396052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396052_left_root small_7396052_left_fuel small_7396052_left_count small_7396052_left_encoded small_7396052_left_checked

theorem cover_7396052 : CoveredBy scale carrier boxes root_7396052 := by
  apply coveredBy_split_literal root_7396052 small_7396052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396300 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7396052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396300
#print axioms cover_7396052

def root_7396047 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396047_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396047_right_fuel : Nat := 1
def small_7396047_right_count : Nat := 1
def small_7396047_right_encoded : String := "00000003"
theorem small_7396047_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396047_right_root small_7396047_right_fuel small_7396047_right_count small_7396047_right_encoded = true := by
  decide +kernel
theorem small_7396047_right_covered : CoveredBy scale carrier boxes small_7396047_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396047_right_root small_7396047_right_fuel small_7396047_right_count small_7396047_right_encoded small_7396047_right_checked

theorem cover_7396047 : CoveredBy scale carrier boxes root_7396047 := by
  apply coveredBy_split_literal root_7396047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396052 small_7396047_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396052
  · exact small_7396047_right_covered
#print axioms cover_7396047

def root_7400002 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7400002_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7400002_left_fuel : Nat := 19
def small_7400002_left_count : Nat := 111
def small_7400002_left_encoded : String := "1151E9090000000408A91303120701020000000105000100135D44F7050000FA135D8105050000FC135D81070500010800000006135D810904548A03138671020000000100000006000000060000000400000003135D4507000000030000000700000002135D450500000002050000FC000000060000000700000000135D80F700000000050000FA135D8105050000FC135D81070500010800000006135D810904548A03138671020000000107800100128A40F7078000FA128A7D05078000FC0000000600000008000000020000000600000000128A7CF700000000078000FA128A7D050000000800000002000000061386AD0207800100128A40F70000000600000000128A7CF700000000078000FA128A7D05000000080000000200000005000000010000000400000003135D4507000000030500010800000008135D810904548A0300000008000000050000000400000002135D450500000002050000FC00000006135D4507000000030000000512073D020500010000000007135D80F700000000050000FA135D8105050000FC135D81070500010800000007135D810900000007000000040000000300000007000000020000000700000001"
theorem small_7400002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7400002_left_root small_7400002_left_fuel small_7400002_left_count small_7400002_left_encoded = true := by
  decide +kernel
theorem small_7400002_left_covered : CoveredBy scale carrier boxes small_7400002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7400002_left_root small_7400002_left_fuel small_7400002_left_count small_7400002_left_encoded small_7400002_left_checked

theorem cover_7400002 : CoveredBy scale carrier boxes root_7400002 := by
  apply coveredBy_split_literal root_7400002 small_7400002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2785.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7400002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2785.covered
#print axioms cover_7400002

def root_7399996 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7399996_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7399996_left_fuel : Nat := 1
def small_7399996_left_count : Nat := 1
def small_7399996_left_encoded : String := "00000003"
theorem small_7399996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7399996_left_root small_7399996_left_fuel small_7399996_left_count small_7399996_left_encoded = true := by
  decide +kernel
theorem small_7399996_left_covered : CoveredBy scale carrier boxes small_7399996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7399996_left_root small_7399996_left_fuel small_7399996_left_count small_7399996_left_encoded small_7399996_left_checked

theorem cover_7399996 : CoveredBy scale carrier boxes root_7399996 := by
  apply coveredBy_split_literal root_7399996 small_7399996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7400002 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7399996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7400002
#print axioms cover_7399996

def root_7396046 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7396046 : CoveredBy scale carrier boxes root_7396046 := by
  apply coveredBy_split_literal root_7396046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7399996 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396047
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7399996
#print axioms cover_7396046

def root_7396040 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396040_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7396040_left_fuel : Nat := 1
def small_7396040_left_count : Nat := 1
def small_7396040_left_encoded : String := "00000002"
theorem small_7396040_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7396040_left_root small_7396040_left_fuel small_7396040_left_count small_7396040_left_encoded = true := by
  decide +kernel
theorem small_7396040_left_covered : CoveredBy scale carrier boxes small_7396040_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7396040_left_root small_7396040_left_fuel small_7396040_left_count small_7396040_left_encoded small_7396040_left_checked

theorem cover_7396040 : CoveredBy scale carrier boxes root_7396040 := by
  apply coveredBy_split_literal root_7396040 small_7396040_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396046 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7396040_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396046
#print axioms cover_7396040

def root_7366766 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366766 : CoveredBy scale carrier boxes root_7366766 := by
  apply coveredBy_split_literal root_7366766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7396040 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366767
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7396040
#print axioms cover_7366766

def root_7366761 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366761_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366761_right_fuel : Nat := 1
def small_7366761_right_count : Nat := 1
def small_7366761_right_encoded : String := "00000001"
theorem small_7366761_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7366761_right_root small_7366761_right_fuel small_7366761_right_count small_7366761_right_encoded = true := by
  decide +kernel
theorem small_7366761_right_covered : CoveredBy scale carrier boxes small_7366761_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7366761_right_root small_7366761_right_fuel small_7366761_right_count small_7366761_right_encoded small_7366761_right_checked

theorem cover_7366761 : CoveredBy scale carrier boxes root_7366761 := by
  apply coveredBy_split_literal root_7366761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366766 small_7366761_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366766
  · exact small_7366761_right_covered
#print axioms cover_7366761

def root_7366273 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366273_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366273_left_fuel : Nat := 22
def small_7366273_left_count : Nat := 227
def small_7366273_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91305120700FA08A91307000000050000000A0000000212073CFA0000000208A91307120700FC05000100135D44F705000102135D45030000000100000009135D81030500010800000005000000090000000100000000135D80F70000000005000102135D45030000000100000009135D810305000108135D4509000000040000000600000009000000010000000312073CFC0000000305000100135D44F7050001020000000A135D810305000108135D4509000000040CFD9C050000000A0F350CFA00000002000000070000000A0000000100000000135D80F70000000005000102135D45030000000105000108135D4509000000040CFD9C050000000A0F350CFA00000002000000070000000A135D810305000108135D4509000000040CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030000000A000000020F350CFA000000020CFD9C070F34D0FC000000060000000300000006135D81090CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC00000009000000030000000A00000004000000011152250908A913050000000A12073CFA0000000208A91307120700FC00000009000000030000000A00000004000000031151E907000000030A0001081151E9090000000408A913050000000A12073CFA000000020500010000000007135D80F7000000000500010200000007135D8103050000FC135D8107000000070000000300000007000000010000000A000000021151E905000000020A0000FC115225070A0001081151E9090000000408A91307120700FC05000100135D44F70000000600000000000000060000000312073CFC000000030500010000000007135D80F7000000000500010200000007135D8103050000FA135D8105000000070000000200000006000000011152250908A91307120700FC08A913090000000912073D0805000100135D44F7000000070000000000000009000000040000000312073CFC0000000308A913090000000912073D0805000100135D44F70000000A00000000000000090000000400000004000000031151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000912073D08050001000000000A135D80F700000000050001020000000A135D8103050000FA0000000A135D45050000000200000005000000010000000400000004"
theorem small_7366273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7366273_left_root small_7366273_left_fuel small_7366273_left_count small_7366273_left_encoded = true := by
  decide +kernel
theorem small_7366273_left_covered : CoveredBy scale carrier boxes small_7366273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7366273_left_root small_7366273_left_fuel small_7366273_left_count small_7366273_left_encoded small_7366273_left_checked

theorem cover_7366273 : CoveredBy scale carrier boxes root_7366273 := by
  apply coveredBy_split_literal root_7366273 small_7366273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366761 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7366273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366761
#print axioms cover_7366273

def root_7366268 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366268_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7366268_right_fuel : Nat := 1
def small_7366268_right_count : Nat := 1
def small_7366268_right_encoded : String := "00000000"
theorem small_7366268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7366268_right_root small_7366268_right_fuel small_7366268_right_count small_7366268_right_encoded = true := by
  decide +kernel
theorem small_7366268_right_covered : CoveredBy scale carrier boxes small_7366268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7366268_right_root small_7366268_right_fuel small_7366268_right_count small_7366268_right_encoded small_7366268_right_checked

theorem cover_7366268 : CoveredBy scale carrier boxes root_7366268 := by
  apply coveredBy_split_literal root_7366268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7366273 small_7366268_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7366273
  · exact small_7366268_right_covered
#print axioms cover_7366268

def root_7404897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7404897 : CoveredBy scale carrier boxes root_7404897 := by
  apply coveredBy_split_literal root_7404897 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2787.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2788.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2787.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2788.covered
#print axioms cover_7404897

def root_7404892 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404892_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404892_right_fuel : Nat := 1
def small_7404892_right_count : Nat := 1
def small_7404892_right_encoded : String := "00000000"
theorem small_7404892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404892_right_root small_7404892_right_fuel small_7404892_right_count small_7404892_right_encoded = true := by
  decide +kernel
theorem small_7404892_right_covered : CoveredBy scale carrier boxes small_7404892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404892_right_root small_7404892_right_fuel small_7404892_right_count small_7404892_right_encoded small_7404892_right_checked

theorem cover_7404892 : CoveredBy scale carrier boxes root_7404892 := by
  apply coveredBy_split_literal root_7404892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7404897 small_7404892_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7404897
  · exact small_7404892_right_covered
#print axioms cover_7404892

def root_7404891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404891_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404891_right_fuel : Nat := 19
def small_7404891_right_count : Nat := 285
def small_7404891_right_encoded : String := "120701000000000008A91303120701020000000108A91305120700FA08A91307120700FC000000070000000312073CFC000000030500010800000008000000070000000212073CFA0000000208A91307120700FC05000108135D450900000004045489F71386AD0004548A03000000071386AD020CFD9C050000000700000007000000010000000000000007000000070000000312073CFC0000000305000108135D450900000004045489F71386AD0004548A0300000008000000080000000000000008135D8109045489F71386AD0004548A0313867102000000010CFD9C0500000008000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000A000000080000000100000000138671000000000004548A0300000007000000080000000412073D0208A91305120700FA08A91307120700FC05000108135D450900000004045489F71386AD000CFD9C03000000070F350D0200000009000000010000000000000007135D8109045489F71386AD000CFD9C0300000007000000090000000000000007000000040000000312073CFC0000000305000108135D450900000004045489F71386AD000CFD9C030F34D10200000001000000080F350D0204548A05138670FA0CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020000000800000008000000021386ACFA000000020CFD9C070F34D0FC000000080000000300000008000000010000000013867100000000000CFD9C03000000080F350D0204548A05138670FA0CFD9C070F34D0FC000000070000000300000008000000021386ACFA000000020000000800000001135D8109045489F71386AD000CFD9C030F34D1020000000104548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070F34D0FC0000000700000003000000080F350D0204548A05138670FA0CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020000000800000008000000021386ACFA000000020CFD9C070000000900000008000000010000000013867100000000000CFD9C03000000080F350D0204548A05138670FA0CFD9C070000000900000008000000021386ACFA000000020000000800000001000000040000000212073CFA0000000208A91307120700FC05000108135D450900000004045489F71386AD000CFD9C030F34D102000000010CFD9C050000000900000009000000090000000000000009000000090000000312073CFC0000000305000108135D450900000004045489F71386AD000CFD9C03000000080F350D0200000008000000010000000000000008135D8109045489F71386AD000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000008000000020F350CFA000000020CFD9C070F34D0FC0000000800000003000000050F350D020CFD9C050F34D0FA0CFD9C070000000900000008000000020F350CFA0000000200000009000000010000000013867100000000000CFD9C03000000080F350D0200000008000000010000000400000001"
theorem small_7404891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404891_right_root small_7404891_right_fuel small_7404891_right_count small_7404891_right_encoded = true := by
  decide +kernel
theorem small_7404891_right_covered : CoveredBy scale carrier boxes small_7404891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404891_right_root small_7404891_right_fuel small_7404891_right_count small_7404891_right_encoded small_7404891_right_checked

theorem cover_7404891 : CoveredBy scale carrier boxes root_7404891 := by
  apply coveredBy_split_literal root_7404891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7404892 small_7404891_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7404892
  · exact small_7404891_right_covered
#print axioms cover_7404891

def root_7404885 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404885_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7404885_left_fuel : Nat := 1
def small_7404885_left_count : Nat := 1
def small_7404885_left_encoded : String := "00000004"
theorem small_7404885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7404885_left_root small_7404885_left_fuel small_7404885_left_count small_7404885_left_encoded = true := by
  decide +kernel
theorem small_7404885_left_covered : CoveredBy scale carrier boxes small_7404885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7404885_left_root small_7404885_left_fuel small_7404885_left_count small_7404885_left_encoded small_7404885_left_checked

theorem cover_7404885 : CoveredBy scale carrier boxes root_7404885 := by
  apply coveredBy_split_literal root_7404885 small_7404885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7404891 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7404885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7404891
#print axioms cover_7404885

def root_7411499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7411499_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7411499_right_fuel : Nat := 16
def small_7411499_right_count : Nat := 135
def small_7411499_right_encoded : String := "0F34D1000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000700000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000007000000030F350CFC000000030CFD9C090F34D10800000004000000070F350D080C9A86FA000000070F8751050000000200000007000000041386AD020CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000007000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC000000070F87510700000003000000070F350D080C9A86FC0F878D0700000007000000030F875107000000030C9A8708000000080000000700000004000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D10800000004000000090F350D080C9A86FA0F878D0500000007000000020000000900000004000000030F350CFC000000030CFD9C090F34D108000000040C9A86FA0F878D050C9A86FC000000070F875107000000030000000500000002000000090F350D080C9A86FA0F878D050C9A86FC0F878D070C9A87080F875109000000040000000700000007000000030F875107000000030C9A87080000000800000005000000020F875105000000020C9A86FC0F878D070C9A87080F87510900000004000000050000000500000003000000050000000400000001"
theorem small_7411499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7411499_right_root small_7411499_right_fuel small_7411499_right_count small_7411499_right_encoded = true := by
  decide +kernel
theorem small_7411499_right_covered : CoveredBy scale carrier boxes small_7411499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7411499_right_root small_7411499_right_fuel small_7411499_right_count small_7411499_right_encoded small_7411499_right_checked

theorem cover_7411499 : CoveredBy scale carrier boxes root_7411499 := by
  apply coveredBy_split_literal root_7411499 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2789.root small_7411499_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2789.covered
  · exact small_7411499_right_covered
#print axioms cover_7411499

def root_7411494 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7411494_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7411494_right_fuel : Nat := 1
def small_7411494_right_count : Nat := 1
def small_7411494_right_encoded : String := "00000004"
theorem small_7411494_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7411494_right_root small_7411494_right_fuel small_7411494_right_count small_7411494_right_encoded = true := by
  decide +kernel
theorem small_7411494_right_covered : CoveredBy scale carrier boxes small_7411494_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7411494_right_root small_7411494_right_fuel small_7411494_right_count small_7411494_right_encoded small_7411494_right_checked

theorem cover_7411494 : CoveredBy scale carrier boxes root_7411494 := by
  apply coveredBy_split_literal root_7411494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7411499 small_7411494_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7411499
  · exact small_7411494_right_covered
#print axioms cover_7411494

def root_7410920 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410920_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410920_left_fuel : Nat := 23
def small_7410920_left_count : Nat := 269
def small_7410920_left_encoded : String := "12070108000000040CFD9BF70F350D0004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A0913867108000000040C9A870000000005000000071386AD080C9A87000F8750F700000005000000000000000700000004000000030F350CFC0000000304548A0913867108000000040C9A87000F8750F70000000A000000000F878CF7000000000C9A86FC00000007000000061386AD080C9A87000F8750F70C9A86FC0000000A00000006000000000F878CF7000000000000000700000004000000020F350CFA000000020CFD9C070F34D0FC04548A090000000900000009000000030F350CFC0000000304548A0913867108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC0F878D0700000009000000030F87510700000003022A458300000006000000090000000200000009000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000070F875107000000030000000700000002000000091386AD080C9A87000F8750F70C9A86FA0F878D050C9A86FC0F878D07022A45830000000700000009000000030F87510700000003022A45830000000613E20102067ECE8912EA5908000000040000000612EA95080B4D440000000006000000070000000400000001000000020F875105000000020C9A86FC000000090F87510700000003022A458313E1C50200000001067ECE89000000090000000700000009000000000F878CF7000000000C9A86FA000000070F875105000000020C9A86FC000000070F8751070000000300000005000000041386AD020CFD9C050F34D0FA0CFD9C070F34D0FC04548A090000000900000009000000030F350CFC0000000304548A0913867108000000040000000A1386AD080C9A87000000000A0F878CF7000000000C9A86FC0000000A0F875107000000030000000A00000004000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC0000000304548A0913867108000000040C9A8700000000090F878CF700000000000000091386AD080C9A87000F8750F70C9A86FA0F878D05000000090000000200000009000000000F878CF7000000000C9A86FA0F878D050000000900000002000000090000000400000001000000000F34D1000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138671080000000400000007000000071386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000009000000030F350CFC0000000304548A0913867108000000040C9A86FC000000070F875107000000030AD357770000000A000000071386AD080C9A86FC000000070F875107000000030000000700000004000000020F350CFA000000020CFD9C07000000090F350CFC0000000304548A09000000090000000900000001"
theorem small_7410920_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410920_left_root small_7410920_left_fuel small_7410920_left_count small_7410920_left_encoded = true := by
  decide +kernel
theorem small_7410920_left_covered : CoveredBy scale carrier boxes small_7410920_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410920_left_root small_7410920_left_fuel small_7410920_left_count small_7410920_left_encoded small_7410920_left_checked

theorem cover_7410920 : CoveredBy scale carrier boxes root_7410920 := by
  apply coveredBy_split_literal root_7410920 small_7410920_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7411494 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7410920_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7411494
#print axioms cover_7410920

def root_7410914 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410914_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410914_left_fuel : Nat := 1
def small_7410914_left_count : Nat := 1
def small_7410914_left_encoded : String := "00000003"
theorem small_7410914_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410914_left_root small_7410914_left_fuel small_7410914_left_count small_7410914_left_encoded = true := by
  decide +kernel
theorem small_7410914_left_covered : CoveredBy scale carrier boxes small_7410914_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410914_left_root small_7410914_left_fuel small_7410914_left_count small_7410914_left_encoded small_7410914_left_checked

theorem cover_7410914 : CoveredBy scale carrier boxes root_7410914 := by
  apply coveredBy_split_literal root_7410914 small_7410914_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7410920 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7410914_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7410920
#print axioms cover_7410914

def root_7410654 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410654_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410654_left_fuel : Nat := 18
def small_7410654_left_count : Nat := 123
def small_7410654_left_encoded : String := "120700FC08A9130912070108000000040CFD9BF70F350D0004548A0313867102000000010CFD9C05000000090000000900000009000000000000000912073D080CFD9BF70F350D0004548A0313867102000000010CFD9C050F34D0FA04548A07000000051386ACFC000000030CFD9C090000000500000007000000020F350CFA0000000204548A07138670FC0CFD9C090000000900000009000000031386ACFC000000030CFD9C090F34D10800000004000000090F350D080C9A87000F8750F70C9A86FA0F878D05000000050000000200000009000000000F878CF7000000000C9A86FA0000000700000009000000041386AD020CFD9C050F34D0FA04548A07138670FC00000005000000031386ACFC000000030CFD9C090F34D10800000004000000090F350D080C9A8700000000050F878CF7000000000000000900000004000000020F350CFA0000000204548A07000000091386ACFC000000030CFD9C09000000090000000900000001000000000F34D1000000000004548A0313867102000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A0700000009000000071386AD020CFD9C050F34D0FA04548A07000000091386ACFC000000030CFD9C090000000900000007000000020F350CFA0000000200000009000000010000000400000003"
theorem small_7410654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410654_left_root small_7410654_left_fuel small_7410654_left_count small_7410654_left_encoded = true := by
  decide +kernel
theorem small_7410654_left_covered : CoveredBy scale carrier boxes small_7410654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410654_left_root small_7410654_left_fuel small_7410654_left_count small_7410654_left_encoded small_7410654_left_checked

theorem cover_7410654 : CoveredBy scale carrier boxes root_7410654 := by
  apply coveredBy_split_literal root_7410654 small_7410654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7410914 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7410654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7410914
#print axioms cover_7410654

def root_7410648 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410648_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7410648_left_fuel : Nat := 1
def small_7410648_left_count : Nat := 1
def small_7410648_left_encoded : String := "00000002"
theorem small_7410648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7410648_left_root small_7410648_left_fuel small_7410648_left_count small_7410648_left_encoded = true := by
  decide +kernel
theorem small_7410648_left_covered : CoveredBy scale carrier boxes small_7410648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7410648_left_root small_7410648_left_fuel small_7410648_left_count small_7410648_left_encoded small_7410648_left_checked

theorem cover_7410648 : CoveredBy scale carrier boxes root_7410648 := by
  apply coveredBy_split_literal root_7410648 small_7410648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.root_7410654 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7410648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178.cover_7410654
#print axioms cover_7410648

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0178
