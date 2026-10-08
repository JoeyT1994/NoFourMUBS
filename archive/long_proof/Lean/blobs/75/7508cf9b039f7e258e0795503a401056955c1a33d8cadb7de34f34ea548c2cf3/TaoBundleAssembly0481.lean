import TaoBundleAssembly0478
import TaoBundleAssembly0480
import TaoBundleChunkBatch0656
import TaoBundleChunkBatch0659
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481
def root_6984818 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6984818_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6984818_left_fuel : Nat := 19
def small_6984818_left_count : Nat := 161
def small_6984818_left_encoded : String := "0F34D0FC0CFD9C090F34D108000000040C9A87040F87510500000002078001000000000900000009000000090F350D080C9A87040F875105000000020C9A87080F8751090000000407800100128A40F70000000500000000128A7CF70000000007800102128A40F90000000500000001128A7CF9000000010AD3578710D100FC0B4D440400000005000000090000000310D13CFC000000030B4D440410801105000000020B4D4408108011090000000408C0010000000005000000070000000710804D050B4D440810801109000000040000000610804D090000000900000004000000020F878D0907800100128A40F70780010200000005128A7CF9000000010AD3578710D100FC000000090000000310D13CFC000000030B4D440410801105000000020DE7CA08000000050E601509000000090000000410804D05000000090000000200000000128A7CF70000000007800102128A40F90AD3578710D100FC000000090000000310D13CFC000000030B4D44040000000710804D05000000090000000200000001128A7CF90000000100000009000000040F878D050C9A87080F8751090000000407800100128A40F70780010200000005128A7CF9000000010AD3578710D100FC000000090000000310D13CFC000000030DE7CA040E5FD90500000002000000060000000600000000128A7CF70000000007800102128A40F90AD3578710D100FC000000090000000310D13CFC000000030DE7CA040E5FD905000000020B4D44080000000510804D0900000009000000040E601505000000090000000200000001128A7CF900000001000000090F878D0907800100128A40F7078001020000000900000009000000000000000900000004000000020000000400000003"
theorem small_6984818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6984818_left_root small_6984818_left_fuel small_6984818_left_count small_6984818_left_encoded = true := by
  decide +kernel
theorem small_6984818_left_covered : CoveredBy scale carrier boxes small_6984818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6984818_left_root small_6984818_left_fuel small_6984818_left_count small_6984818_left_encoded small_6984818_left_checked

theorem cover_6984818 : CoveredBy scale carrier boxes root_6984818 := by
  apply coveredBy_split_literal root_6984818 small_6984818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6985172 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6984818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6985172
#print axioms cover_6984818

def root_6984813 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6984813_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6984813_right_fuel : Nat := 1
def small_6984813_right_count : Nat := 1
def small_6984813_right_encoded : String := "00000002"
theorem small_6984813_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6984813_right_root small_6984813_right_fuel small_6984813_right_count small_6984813_right_encoded = true := by
  decide +kernel
theorem small_6984813_right_covered : CoveredBy scale carrier boxes small_6984813_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6984813_right_root small_6984813_right_fuel small_6984813_right_count small_6984813_right_encoded small_6984813_right_checked

theorem cover_6984813 : CoveredBy scale carrier boxes root_6984813 := by
  apply coveredBy_split_literal root_6984813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6984818 small_6984813_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6984818
  · exact small_6984813_right_covered
#print axioms cover_6984813

def root_6983953 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6983953_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6983953_left_fuel : Nat := 33
def small_6983953_left_count : Nat := 411
def small_6983953_left_encoded : String := "0F34D104000000020CFD9C070F34D0FC0CFD9C09000000090F350D080C9A87080F875109000000040780010000000009000000090000000900000004000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC000000090F875107000000030780010000000009000000050F350D080C9A86FC0F878D070C9A87080F8751090000000407800100128A40F707800102128A40F90AD3578510D10104000000020000000910D13D040DE7C9FC0E6015070B4D44080000000600000009000000030E5FD907000000030B4D44080000000610804D090640010012FF70F7000000060000000012FFACF70000000000000009000000040000000200000001128A7CF9000000010AD35785000000090000000600000000128A7CF70000000007800102128A40F90AD357850000000910D13D040DE7C9FC000000090E5FD907000000030B4D4408108011090000000408C0010011FBE8F700000006000000000000000A000000090000000200000001128A7CF900000001000000090F878D0907800100128A40F7078001020000000900000009000000000000000900000004000000030F875107000000030C9A87080F8751090000000407800100128A40F707800102128A40F90AD3578510D10104000000020B4D43FC000000060000000710D13D040B4D43FC10804D070B4D44080000000610804D090640010012FF70F70640010212FF70F90000000600000001000000060000000012FFACF7000000000640010212FF70F90BE879C50000000A1011AD040BF3E57C000000061008ED070000000300000006000000020000000100000006000000040000000310801107000000030B4D440810801109000000040000000610804D090640010012FF70F70640010212FF70F90BE879C5000000060000000600000001000000060000000012FFACF7000000000640010212FF70F90BE879C5000000081011AD040AA6A27C0000000600000008000000020000000100000006000000040000000200000001128A7CF9000000010AD3578510D1010400000002000000060000000600000000128A7CF70000000007800102128A40F90AD3578510D10104000000020B4D43FC0000000910801107000000030B4D4408000000080000000510D13D040B4D43FC10804D070B4D4408108011090000000408C0010011FBE8F7064001020000000800000006000000000000000810804D0908C0010011FBE8F70640010212FF70F90BE879C5000000091011AD040BF3E57C00000009000000080000000200000001000000090000000011FC24F70000000000000009000000040000000310801107000000030B4D440810801109000000040000000810804D0908C0010011FBE8F70640010200000008000000050000000000000005000000040000000200000001128A7CF9000000010AD3578510D10104000000020000000510D13D040B4D43FC10804D070B4D440800000006000000050000000300000005000000020F878D0907800100128A40F707800102128A40F90AD3578510D10104000000020000000910D13D040B4D43FC10804D070DE7CA080E5FD909000000040640010012FF70F70640010212FF70F90BE879C5000000090000000900000001000000090000000000000009000000090000000310801107000000030DE7CA080E5FD909000000040640010012FF70F70640010212FF70F90BE879C510117104000000020AA6A27C00000007000000071011AD040AA6A27C10EDAD070D4128880EFA110900000004000000060EFA4D0900000009000000040000000310ED7107000000030D4128880EFA110900000004000000060EFA4D0905A00100133134F70000000700000000133170F70000000005A00102000000090000000500000004000000020000000112FFACF9000000010BE879C500000007000000060000000012FFACF7000000000640010212FF70F90BE879C5000000091011AD040AA6A27C10EDAD07000000090000000310ED7107000000030D4128880EFA11090000000406E0010012C7E4F7000000080000000000000005000000050000000200000001000000050E6015090640010012FF70F70640010200000009000000050000000000000005000000040000000200000001128A7CF9000000010AD357850000000910D13D040B4D43FC00000009000000050000000200000000128A7CF70000000007800102128A40F90AD357850000000910D13D040B4D43FC00000009000000050000000200000001000000050000000400000004"
theorem small_6983953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6983953_left_root small_6983953_left_fuel small_6983953_left_count small_6983953_left_encoded = true := by
  decide +kernel
theorem small_6983953_left_covered : CoveredBy scale carrier boxes small_6983953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6983953_left_root small_6983953_left_fuel small_6983953_left_count small_6983953_left_encoded small_6983953_left_checked

theorem cover_6983953 : CoveredBy scale carrier boxes root_6983953 := by
  apply coveredBy_split_literal root_6983953 small_6983953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6984813 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6983953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6984813
#print axioms cover_6983953

def root_6983947 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6983947_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6983947_left_fuel : Nat := 1
def small_6983947_left_count : Nat := 1
def small_6983947_left_encoded : String := "00000001"
theorem small_6983947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6983947_left_root small_6983947_left_fuel small_6983947_left_count small_6983947_left_encoded = true := by
  decide +kernel
theorem small_6983947_left_covered : CoveredBy scale carrier boxes small_6983947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6983947_left_root small_6983947_left_fuel small_6983947_left_count small_6983947_left_encoded small_6983947_left_checked

theorem cover_6983947 : CoveredBy scale carrier boxes root_6983947 := by
  apply coveredBy_split_literal root_6983947 small_6983947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6983953 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6983947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6983953
#print axioms cover_6983947

def root_6977723 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6977723 : CoveredBy scale carrier boxes root_6977723 := by
  apply coveredBy_split_literal root_6977723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.root_6977724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6983947 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0480.cover_6977724
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6983947
#print axioms cover_6977723

def root_6977717 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977717_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6977717_left_fuel : Nat := 1
def small_6977717_left_count : Nat := 1
def small_6977717_left_encoded : String := "00000000"
theorem small_6977717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6977717_left_root small_6977717_left_fuel small_6977717_left_count small_6977717_left_encoded = true := by
  decide +kernel
theorem small_6977717_left_covered : CoveredBy scale carrier boxes small_6977717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6977717_left_root small_6977717_left_fuel small_6977717_left_count small_6977717_left_encoded small_6977717_left_checked

theorem cover_6977717 : CoveredBy scale carrier boxes root_6977717 := by
  apply coveredBy_split_literal root_6977717 small_6977717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6977723 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6977717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6977723
#print axioms cover_6977717

def root_6968695 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6968695 : CoveredBy scale carrier boxes root_6968695 := by
  apply coveredBy_split_literal root_6968695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0478.root_6968696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6977717 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0478.cover_6968696
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6977717
#print axioms cover_6968695

def root_6968690 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968690_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968690_right_fuel : Nat := 1
def small_6968690_right_count : Nat := 1
def small_6968690_right_encoded : String := "00000004"
theorem small_6968690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6968690_right_root small_6968690_right_fuel small_6968690_right_count small_6968690_right_encoded = true := by
  decide +kernel
theorem small_6968690_right_covered : CoveredBy scale carrier boxes small_6968690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6968690_right_root small_6968690_right_fuel small_6968690_right_count small_6968690_right_encoded small_6968690_right_checked

theorem cover_6968690 : CoveredBy scale carrier boxes root_6968690 := by
  apply coveredBy_split_literal root_6968690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6968695 small_6968690_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6968695
  · exact small_6968690_right_covered
#print axioms cover_6968690

def root_6968384 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968384_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968384_left_fuel : Nat := 19
def small_6968384_left_count : Nat := 141
def small_6968384_left_encoded : String := "120701080000000405000100135D44F705000102135D44F90CFD9C050F34D104000000020CFD9C070F34D0FC0000000800000003000000090F350D040CFD9C070F34D0FC00000008000000030F350CFC0000000304548A09000000081386AD080C9A87040F875105000000020C9A86FC00000006000000060F878D050C9A86FC000000080F8751070000000302800100000000080000000600000002000000040000000200000001135D80F9000000010CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000008000000030F350CFC0000000304548A09000000081386AD080C9A87040F87510500000002000000080F878D050C9A86FC000000080F8751070000000302800100000000080000000900000002000000040000000200000000135D80F70000000005000102135D44F90CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09000000061386AD080C9A8704000000060F878D050C9A86FC000000060000000600000002000000040000000200000001135D80F9000000010CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC0000000304548A091386710800000004000000091386AD080C9A87040F875105000000020C9A86FC000000090F8751070000000307800100128A40F707800102000000060000000800000000128A7CF700000000000000060F878D0500000009000000020000000400000002"
theorem small_6968384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6968384_left_root small_6968384_left_fuel small_6968384_left_count small_6968384_left_encoded = true := by
  decide +kernel
theorem small_6968384_left_covered : CoveredBy scale carrier boxes small_6968384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6968384_left_root small_6968384_left_fuel small_6968384_left_count small_6968384_left_encoded small_6968384_left_checked

theorem cover_6968384 : CoveredBy scale carrier boxes root_6968384 := by
  apply coveredBy_split_literal root_6968384 small_6968384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6968690 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6968384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6968690
#print axioms cover_6968384

def root_6968378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968378_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6968378_left_fuel : Nat := 1
def small_6968378_left_count : Nat := 1
def small_6968378_left_encoded : String := "00000003"
theorem small_6968378_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6968378_left_root small_6968378_left_fuel small_6968378_left_count small_6968378_left_encoded = true := by
  decide +kernel
theorem small_6968378_left_covered : CoveredBy scale carrier boxes small_6968378_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6968378_left_root small_6968378_left_fuel small_6968378_left_count small_6968378_left_encoded small_6968378_left_checked

theorem cover_6968378 : CoveredBy scale carrier boxes root_6968378 := by
  apply coveredBy_split_literal root_6968378 small_6968378_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6968384 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6968378_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6968384
#print axioms cover_6968378

def root_6967942 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967942_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967942_left_fuel : Nat := 19
def small_6967942_left_count : Nat := 199
def small_6967942_left_encoded : String := "120700FC08A91309120701080000000405000100135D44F705000102135D44F90CFD9C050000000900000008000000010000000800000000135D80F7000000000000000912073D0805000100135D44F705000102135D44F90CFD9C050F34D1040000000204548A07138670FC0CFD9C090F34D10800000004000000080000000A000000031386ACFC000000030CFD9C090F34D10800000004000000090000000A0F350D04000000050000000200000001135D80F9000000010CFD9C050F34D1040000000204548A07138670FC0CFD9C09000000090F350D080C9A87080F87510900000004000000050F878D09000000090000000400000004000000031386ACFC000000030CFD9C09000000090F350D080C9A87080F875109000000040000000500000009000000040F350D0404548A07138670FC0CFD9C09000000080F350D080000000500000004000000031386ACFC000000030CFD9C090F34D10800000004000000080F350D0800000005000000040000000200000000135D80F70000000005000102135D44F90CFD9C050F34D1040000000204548A07138670FC0000000A000000031386ACFC000000030CFD9C09000000090000000A0F350D0404548A07138670FC0CFD9C090F34D108000000040C9A87040F87510500000002000000050F878D0500000009000000020F350D080000000500000004000000031386ACFC000000030CFD9C090F34D108000000040C9A87040F8751050000000200000005000000090F350D0800000005000000040000000200000001135D80F9000000010CFD9C050F34D10400000002000000090F350D0404548A07138670FC0CFD9C09000000090F350D080C9A87040F875105000000020C9A8708000000050F878D0900000009000000040F878D050C9A870800000009000000090000000200000004000000031386ACFC000000030CFD9C090F34D10800000004000000090F350D080C9A87040F875105000000020C9A8708000000050F878D09078001000000000500000009000000040F878D050C9A87080F87510900000004078001000000000500000009000000090000000200000004000000020000000400000003"
theorem small_6967942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6967942_left_root small_6967942_left_fuel small_6967942_left_count small_6967942_left_encoded = true := by
  decide +kernel
theorem small_6967942_left_covered : CoveredBy scale carrier boxes small_6967942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6967942_left_root small_6967942_left_fuel small_6967942_left_count small_6967942_left_encoded small_6967942_left_checked

theorem cover_6967942 : CoveredBy scale carrier boxes root_6967942 := by
  apply coveredBy_split_literal root_6967942 small_6967942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6968378 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6967942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6968378
#print axioms cover_6967942

def root_6967937 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967937_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967937_right_fuel : Nat := 1
def small_6967937_right_count : Nat := 1
def small_6967937_right_encoded : String := "00000002"
theorem small_6967937_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6967937_right_root small_6967937_right_fuel small_6967937_right_count small_6967937_right_encoded = true := by
  decide +kernel
theorem small_6967937_right_covered : CoveredBy scale carrier boxes small_6967937_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6967937_right_root small_6967937_right_fuel small_6967937_right_count small_6967937_right_encoded small_6967937_right_checked

theorem cover_6967937 : CoveredBy scale carrier boxes root_6967937 := by
  apply coveredBy_split_literal root_6967937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6967942 small_6967937_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6967942
  · exact small_6967937_right_covered
#print axioms cover_6967937

def root_6967521 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967521_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967521_left_fuel : Nat := 23
def small_6967521_left_count : Nat := 191
def small_6967521_left_encoded : String := "120701040000000208A91307120700FC08A913090000000912073D0805000100135D44F705000102135D44F904548A05000000091386AD040000000A00000002000000010000000900000000135D80F70000000000000009000000040000000312073CFC0000000308A9130912070108000000040000000912073D0805000100135D44F705000102135D44F904548A0513867104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C09000000090000000A1386AD040CFD9C070F34D0FC0CFD9C09000000090000000A000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A8708000000070F878D0902800100000000070000000A00000004000000040000000200000001135D80F90000000104548A0513867104000000020CFD9C07000000070F350CFC000000030CFD9C0900000007000000071386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0F878D07000000070000000300000007000000040000000200000000135D80F70000000005000102135D44F904548A0513867104000000020CFD9C07000000090F350CFC000000030CFD9C0900000009000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0000000A0F875107000000030C9A87080F875109000000040000000A0F878D0907800100000000090000000900000004000000040000000200000001135D80F90000000104548A051386710400000002000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86FC0F878D0700000009000000030F875107000000030C9A87080F875109000000040780010000000007128A7CF7000000000780010200000009000000050F878D090000000900000004000000040000000200000004"
theorem small_6967521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6967521_left_root small_6967521_left_fuel small_6967521_left_count small_6967521_left_encoded = true := by
  decide +kernel
theorem small_6967521_left_covered : CoveredBy scale carrier boxes small_6967521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6967521_left_root small_6967521_left_fuel small_6967521_left_count small_6967521_left_encoded small_6967521_left_checked

theorem cover_6967521 : CoveredBy scale carrier boxes root_6967521 := by
  apply coveredBy_split_literal root_6967521 small_6967521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6967937 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6967521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6967937
#print axioms cover_6967521

def root_6967516 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967516_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6967516_right_fuel : Nat := 1
def small_6967516_right_count : Nat := 1
def small_6967516_right_encoded : String := "00000004"
theorem small_6967516_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6967516_right_root small_6967516_right_fuel small_6967516_right_count small_6967516_right_encoded = true := by
  decide +kernel
theorem small_6967516_right_covered : CoveredBy scale carrier boxes small_6967516_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6967516_right_root small_6967516_right_fuel small_6967516_right_count small_6967516_right_encoded small_6967516_right_checked

theorem cover_6967516 : CoveredBy scale carrier boxes root_6967516 := by
  apply coveredBy_split_literal root_6967516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6967521 small_6967516_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6967521
  · exact small_6967516_right_covered
#print axioms cover_6967516

def root_6965788 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6965788 : CoveredBy scale carrier boxes root_6965788 := by
  apply coveredBy_split_literal root_6965788 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2621.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6967516 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2621.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6967516
#print axioms cover_6965788

def root_6965783 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6965783_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6965783_right_fuel : Nat := 1
def small_6965783_right_count : Nat := 1
def small_6965783_right_encoded : String := "00000003"
theorem small_6965783_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6965783_right_root small_6965783_right_fuel small_6965783_right_count small_6965783_right_encoded = true := by
  decide +kernel
theorem small_6965783_right_covered : CoveredBy scale carrier boxes small_6965783_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6965783_right_root small_6965783_right_fuel small_6965783_right_count small_6965783_right_encoded small_6965783_right_checked

theorem cover_6965783 : CoveredBy scale carrier boxes root_6965783 := by
  apply coveredBy_split_literal root_6965783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_6965788 small_6965783_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_6965788
  · exact small_6965783_right_covered
#print axioms cover_6965783

def root_7003567 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003567 : CoveredBy scale carrier boxes root_7003567 := by
  apply coveredBy_split_literal root_7003567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2634.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2635.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2634.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2635.covered
#print axioms cover_7003567

def root_7003561 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003561_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003561_left_fuel : Nat := 1
def small_7003561_left_count : Nat := 1
def small_7003561_left_encoded : String := "00000004"
theorem small_7003561_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003561_left_root small_7003561_left_fuel small_7003561_left_count small_7003561_left_encoded = true := by
  decide +kernel
theorem small_7003561_left_covered : CoveredBy scale carrier boxes small_7003561_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003561_left_root small_7003561_left_fuel small_7003561_left_count small_7003561_left_encoded small_7003561_left_checked

theorem cover_7003561 : CoveredBy scale carrier boxes root_7003561 := by
  apply coveredBy_split_literal root_7003561 small_7003561_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_7003567 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7003561_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_7003567
#print axioms cover_7003561

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481
