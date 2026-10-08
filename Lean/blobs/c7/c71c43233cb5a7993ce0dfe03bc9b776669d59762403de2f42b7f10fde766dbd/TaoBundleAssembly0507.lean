import TaoBundleAssembly0506
import TaoBundleChunkBatch0693
import TaoBundleChunkBatch0694
import TaoBundleChunkBatch0695
import TaoBundleChunkBatch0696
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507
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
  apply coveredBy_split_literal root_7371974 small_7371974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0506.root_7372920 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0506.cover_7372920
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
  apply coveredBy_split_literal root_7371968 small_7371968_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371974 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7371968_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371974
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
  apply coveredBy_split_literal root_7371812 small_7371812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371968 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371968
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
  apply coveredBy_split_literal root_7371806 small_7371806_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371812 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7371806_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371812
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
  apply coveredBy_split_literal root_7371602 small_7371602_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371806 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7371602_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371806
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
  apply coveredBy_split_literal root_7371596 small_7371596_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371602 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7371596_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371602
#print axioms cover_7371596

def root_7371595 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7371595 : CoveredBy scale carrier boxes root_7371595 := by
  apply coveredBy_split_literal root_7371595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2779.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371596
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
  apply coveredBy_split_literal root_7371589 small_7371589_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371595 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7371589_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371595
#print axioms cover_7371589

def root_7369691 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7369691 : CoveredBy scale carrier boxes root_7369691 := by
  apply coveredBy_split_literal root_7369691 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2773.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7371589 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2773.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7371589
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
  apply coveredBy_split_literal root_7369686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369691 small_7369686_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369691
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
  apply coveredBy_split_literal root_7369368 small_7369368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369686 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369686
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
  apply coveredBy_split_literal root_7369362 small_7369362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369368 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7369362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369368
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
  apply coveredBy_split_literal root_7369246 small_7369246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369362 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369362
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
  apply coveredBy_split_literal root_7369240 small_7369240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369246 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7369240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369246
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
  apply coveredBy_split_literal root_7369136 small_7369136_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369240 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7369136_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369240
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
  apply coveredBy_split_literal root_7369130 small_7369130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369136 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7369130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369136
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
  apply coveredBy_split_literal root_7369129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369130 small_7369129_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369130
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
  apply coveredBy_split_literal root_7369124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369129 small_7369124_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369129
  · exact small_7369124_right_covered
#print axioms cover_7369124

def root_7366778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7366778 : CoveredBy scale carrier boxes root_7366778 := by
  apply coveredBy_split_literal root_7366778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2772.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7369124 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2772.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7369124
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
  apply coveredBy_split_literal root_7366773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7366778 small_7366773_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7366778
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
  apply coveredBy_split_literal root_7391166 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.root_7391171 small_7391166_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507.cover_7391171
  · exact small_7391166_right_covered
#print axioms cover_7391166

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0507
