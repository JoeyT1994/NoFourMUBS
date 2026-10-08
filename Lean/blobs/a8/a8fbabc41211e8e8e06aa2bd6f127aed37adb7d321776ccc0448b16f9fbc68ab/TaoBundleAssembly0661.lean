import TaoBundleAssembly0660
import TaoBundleChunkBatch0914
import TaoBundleChunkBatch0915
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661
def root_9767052 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767052_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767052_left_fuel : Nat := 23
def small_9767052_left_count : Nat := 309
def small_9767052_left_encoded : String := "0F878D0907800102128A40F9022A458113E1C500000000000DE7CA040E5FD905000000020B4D43FC10804D07000000050000000310801107000000030DE7C9FE0E60150900000005000000040E5FD909000000040640010212FF70F90115234100000005000000080000000112FFACF9000000010115234113F85900000000000D4128840EFA110500000002000000060000000613F895000D4128840EFA1105000000020AA6A27C10EDAD070D41287E000000050EFA11090000000406E0010200000005000000060000000310ED7107000000030000000A0EFA4D050AA6A27C0000000810ED7107000000030000000800000002000000000E6015050B4D43FC10804D070DE7C9FE000000050E5FD90900000004064001020000000512FFACF9000000010115234100000005000000080000000310801107000000030DE7C9FE000000080E5FD90900000004064001020000000812FFACF9000000010115234100000007000000080000000213E201000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE000000080E5FD90900000004064001020000000812FFACF900000001033F67C113BBF500000000000D41288400000005000000080000000800000003108011070000000300000008000000080000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE000000060E5FD90900000004000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C0010211FBE8F9011523410000000613F895000D4128840000000A000000060000000000000001000000060E6015050B4D43FC10804D07000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C0010211FBE8F9011523410000000613F895000DAED8850E9625040000000200000006000000060000000000000001000000060000000213E201000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE0E60150908C0010211FBE8F9000000080000000100000006000000040E5FD9090000000408C0010211FBE8F9033F67C113BBF500000000000D4128840EFA110500000002000000060000000613BC31000D4128840EFA1105000000020BF3E57C000000081008ED07000000030000000800000008000000000000000111FC24F900000001033F67C10000000613BC31000D4128840EFA1105000000020000000600000006000000000000000310801107000000030DE7C9FE0E60150908C001020000000811FC24F900000001033F67C10000000600000008000000040E5FD9090000000408C0010211FBE8F9033F67C113BBF500000000000D4128840000000A0EFA4D050AA6A27C10EDAD070D41287E000000060000000A000000030000000A0000000213BC31000D4128840000000A00000008000000000000000111FC24F900000001033F67C1000000060000000A0E6015050B4D43FC10804D070DE7C9FE0E60150900000008000000040E5FD9090000000408C0010211FBE8F9000000080000000111FC24F900000001033F67C10000000613BC310000000009000000000000000310801107000000030DE7C9FE0E60150900000008000000040E5FD9090000000408C0010211FBE8F9000000080000000111FC24F900000001033F67C10000000600000008000000020000000000000004"
theorem small_9767052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767052_left_root small_9767052_left_fuel small_9767052_left_count small_9767052_left_encoded = true := by
  decide +kernel
theorem small_9767052_left_covered : CoveredBy scale carrier boxes small_9767052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767052_left_root small_9767052_left_fuel small_9767052_left_count small_9767052_left_encoded small_9767052_left_checked

theorem cover_9767052 : CoveredBy scale carrier boxes root_9767052 := by
  apply coveredBy_split_literal root_9767052 small_9767052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9767706 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9767052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9767706
#print axioms cover_9767052

def root_9767046 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767046_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767046_left_fuel : Nat := 1
def small_9767046_left_count : Nat := 1
def small_9767046_left_encoded : String := "00000003"
theorem small_9767046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767046_left_root small_9767046_left_fuel small_9767046_left_count small_9767046_left_encoded = true := by
  decide +kernel
theorem small_9767046_left_covered : CoveredBy scale carrier boxes small_9767046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767046_left_root small_9767046_left_fuel small_9767046_left_count small_9767046_left_encoded small_9767046_left_checked

theorem cover_9767046 : CoveredBy scale carrier boxes root_9767046 := by
  apply coveredBy_split_literal root_9767046 small_9767046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9767052 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9767046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9767052
#print axioms cover_9767046

def root_9766460 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766460_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766460_left_fuel : Nat := 20
def small_9766460_left_count : Nat := 273
def small_9766460_left_encoded : String := "0F878D070C9A86FE0F878D0907800102128A40F9022A45810000000513E201000DE7CA04000000050E60150500000005000000020000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD90500000002000000060000000613E201000DE7CA040E5FD905000000020DE7C9FC0E6015070DE7C9FE000000050E5FD9090000000408C001020000000500000006000000030E5FD907000000030DE7C9FE0E60150908C001020000000500000006000000040E5FD9090000000408C0010211FBE8F9033F67C10000000613BC3100000000090000000000000001000000060E6015050DE7C9FC0E6015070DE7C9FE0000000500000009000000030E5FD907000000030DE7C9FE0E60150900000006000000040E5FD9090000000408C0010200000009000000060000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000DE7CA040E5FD905000000020DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09000000050000000410801109000000040640010212FF70F90115234100000005000000070000000112FFACF9000000010115234113F85900000000000D4128840EFA110500000002000000060000000613F895000D4128840000000700000009000000000E6015050DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09064001020000000512FFACF900000001011523410000000500000009000000041080110900000004064001020000000912FFACF900000001000000090000000213E201000DE7CA040E5FD905000000020DE7C9FC0E60150700000009000000030E5FD907000000030B4D43FE10804D090640010212FF70F9000000050000000112FFACF900000001033F67C113BBF500000000000D412884000000050000000900000009000000041080110900000004000000070E6015050DE7C9FC000000090E5FD907000000030B4D43FE10804D09000000090000000400000009000000020000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD905000000020DE7C9FC0E6015070B4D43FE00000006108011090000000400000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010211FBE8F9011523410000000613F895000D41288400000007000000060000000000000001000000060E6015050DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010200000009000000060000000213E201000DE7CA040E5FD905000000020DE7C9FC0E60150700000009000000030E5FD907000000030B4D43FE10804D0908C0010211FBE8F9033F67C113BBF500000000000D4128840EFA1105000000020000000600000006000000090000000111FC24F90000000100000009000000041080110900000004000000090E60150500000009000000020000000000000003"
theorem small_9766460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9766460_left_root small_9766460_left_fuel small_9766460_left_count small_9766460_left_encoded = true := by
  decide +kernel
theorem small_9766460_left_covered : CoveredBy scale carrier boxes small_9766460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9766460_left_root small_9766460_left_fuel small_9766460_left_count small_9766460_left_encoded small_9766460_left_checked

theorem cover_9766460 : CoveredBy scale carrier boxes root_9766460 := by
  apply coveredBy_split_literal root_9766460 small_9766460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9767046 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9766460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9767046
#print axioms cover_9766460

def root_9766455 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766455_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766455_right_fuel : Nat := 1
def small_9766455_right_count : Nat := 1
def small_9766455_right_encoded : String := "00000002"
theorem small_9766455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9766455_right_root small_9766455_right_fuel small_9766455_right_count small_9766455_right_encoded = true := by
  decide +kernel
theorem small_9766455_right_covered : CoveredBy scale carrier boxes small_9766455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9766455_right_root small_9766455_right_fuel small_9766455_right_count small_9766455_right_encoded small_9766455_right_checked

theorem cover_9766455 : CoveredBy scale carrier boxes root_9766455 := by
  apply coveredBy_split_literal root_9766455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9766460 small_9766455_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9766460
  · exact small_9766455_right_covered
#print axioms cover_9766455

def root_9764399 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9764399 : CoveredBy scale carrier boxes root_9764399 := by
  apply coveredBy_split_literal root_9764399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9766455 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9766455
#print axioms cover_9764399

def root_9764393 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764393_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764393_left_fuel : Nat := 1
def small_9764393_left_count : Nat := 1
def small_9764393_left_encoded : String := "00000004"
theorem small_9764393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764393_left_root small_9764393_left_fuel small_9764393_left_count small_9764393_left_encoded = true := by
  decide +kernel
theorem small_9764393_left_covered : CoveredBy scale carrier boxes small_9764393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764393_left_root small_9764393_left_fuel small_9764393_left_count small_9764393_left_encoded small_9764393_left_checked

theorem cover_9764393 : CoveredBy scale carrier boxes root_9764393 := by
  apply coveredBy_split_literal root_9764393 small_9764393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764399 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9764393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764399
#print axioms cover_9764393

def root_9764215 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764215_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764215_left_fuel : Nat := 17
def small_9764215_left_count : Nat := 81
def small_9764215_left_encoded : String := "0F34D0FE0C9A87040F875105000000020C9A86FC0F878D0700000005000000030F8751070000000307800102128A40F90000000500000001128A7CF900000001022A458113E1C500000000000AD357890000000510D13CFE000000040B4D4404000000050000000613E201000AD3578910D100FE000000050000000410D13CFE000000040B4D440410801105000000020B4D43FC10804D0700000005000000030000000A10804D050B4D43FC10804D070000000500000003108011070000000308C00102000000080000000A00000002000000000F878D050C9A86FC0F878D0700000005000000030F8751070000000307800102128A40F90000000800000001128A7CF900000001022A458113E1C500000000000AD357890000000710D13CFE000000040DE7CA040E5FD905000000020000000600000006000000080000000200000004"
theorem small_9764215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764215_left_root small_9764215_left_fuel small_9764215_left_count small_9764215_left_encoded = true := by
  decide +kernel
theorem small_9764215_left_covered : CoveredBy scale carrier boxes small_9764215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764215_left_root small_9764215_left_fuel small_9764215_left_count small_9764215_left_encoded small_9764215_left_checked

theorem cover_9764215 : CoveredBy scale carrier boxes root_9764215 := by
  apply coveredBy_split_literal root_9764215 small_9764215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764393 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9764215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764393
#print axioms cover_9764215

def root_9764209 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764209_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764209_left_fuel : Nat := 1
def small_9764209_left_count : Nat := 1
def small_9764209_left_encoded : String := "00000003"
theorem small_9764209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764209_left_root small_9764209_left_fuel small_9764209_left_count small_9764209_left_encoded = true := by
  decide +kernel
theorem small_9764209_left_covered : CoveredBy scale carrier boxes small_9764209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764209_left_root small_9764209_left_fuel small_9764209_left_count small_9764209_left_encoded small_9764209_left_checked

theorem cover_9764209 : CoveredBy scale carrier boxes root_9764209 := by
  apply coveredBy_split_literal root_9764209 small_9764209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764215 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9764209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764215
#print axioms cover_9764209

def root_9764065 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764065_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764065_left_fuel : Nat := 16
def small_9764065_left_count : Nat := 67
def small_9764065_left_encoded : String := "0F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0900000005000000040F8751090000000407800102128A40F90000000500000001128A7CF900000001022A458113E1C500000000000AD357870000000510D13CFC000000030B4D4404000000050000000613E201000AD357870000000900000007000000000F878D050C9A86FE0F878D0900000005000000040F8751090000000407800102128A40F9022A4581000000050000000900000001128A7CF900000001022A458113E1C500000000000AD357870000000910D13CFC000000030DE7CA040E5FD905000000020000000600000006000000090000000200000003"
theorem small_9764065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764065_left_root small_9764065_left_fuel small_9764065_left_count small_9764065_left_encoded = true := by
  decide +kernel
theorem small_9764065_left_covered : CoveredBy scale carrier boxes small_9764065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764065_left_root small_9764065_left_fuel small_9764065_left_count small_9764065_left_encoded small_9764065_left_checked

theorem cover_9764065 : CoveredBy scale carrier boxes root_9764065 := by
  apply coveredBy_split_literal root_9764065 small_9764065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764209 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9764065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764209
#print axioms cover_9764065

def root_9764060 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764060_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764060_right_fuel : Nat := 1
def small_9764060_right_count : Nat := 1
def small_9764060_right_encoded : String := "00000002"
theorem small_9764060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764060_right_root small_9764060_right_fuel small_9764060_right_count small_9764060_right_encoded = true := by
  decide +kernel
theorem small_9764060_right_covered : CoveredBy scale carrier boxes small_9764060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764060_right_root small_9764060_right_fuel small_9764060_right_count small_9764060_right_encoded small_9764060_right_checked

theorem cover_9764060 : CoveredBy scale carrier boxes root_9764060 := by
  apply coveredBy_split_literal root_9764060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764065 small_9764060_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764065
  · exact small_9764060_right_covered
#print axioms cover_9764060

def root_9763016 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763016_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763016_left_fuel : Nat := 33
def small_9763016_left_count : Nat := 491
def small_9763016_left_encoded : String := "0F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010200000005128A7CF900000001022A45810000000500000009000000040F8751090000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000080F8751070000000300000008000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0907800102128A40F9022A4581000000050000000800000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020DE7C9FC000000060E5FD907000000030000000610D13D040DE7C9FC000000060E5FD90700000003000000060000000213E201000AD3578510D10104000000020000000810D13D040DE7C9FC0E60150700000009000000030E5FD907000000030DE7C9FE00000008000000090000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000AD3578510D10104000000020000000910D13D040DE7C9FC000000090E5FD907000000030B4D43FE10804D090640010200000005000000090000000400000009000000020000000900000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020000000910D13D040DE7C9FC000000090E5FD907000000030B4D43FE00000006000000090000000200000009000000030F875107000000030C9A86FE0F878D0907800102128A40F9022A458113E1C500000000000AD357850000000810D13D040B4D43FC0000000800000007000000020000000800000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020000000710D13D040B4D43FC10804D070DE7C9FE000000060E5FD9090000000400000006000000031080110700000003000000070000000213E201000AD3578510D10104000000020000000810D13D040B4D43FC000000081080110700000003000000080000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000AD3578510D10104000000020B4D43FC10804D070B4D43FE00000008000000090000000310801107000000030B4D43FE00000007108011090000000406400102000000080000000910D13D040B4D43FC10804D070B4D43FE10804D090640010212FF70F9000000080000000112FFACF9000000010115234113F85900000000000BE879C510117104000000020000000600000006000000080000000410801109000000040640010212FF70F90115234113F85900000000000BE879C50000000900000009000000090000000112FFACF900000001000000090000000310801107000000030B4D43FE10804D09064001020000000812FFACF9000000010115234100000007000000080000000410801109000000040640010212FF70F90115234113F85900000000000BE879C51011710400000002000000081011AD040AA6A27C10EDAD070AA6A27E10EDAD090000000800000004000000090000000310ED7107000000030AA6A27E10EDAD09000000070000000410ED71090000000405A00102133134F90000000800000001133170F900000001008A9221000000070000000800000002000000080000000112FFACF9000000010115234113F85900000000000BE879C51011710400000002000000091011AD040AA6A27C10EDAD070AA6A27E00000006000000090000000310ED7107000000030AA6A27E0000000710ED71090000000406E001020000000912C820F900000001000000090000000213F895000BE879C5000000091011AD040AA6A27C0000000910ED7107000000030AA6A27E10EDAD0900000008000000040000000900000002000000000000000213E201000AD3578510D10104000000020000000810D13D040B4D43FC10804D070B4D43FE00000008000000090000000310801107000000030B4D43FE000000081080110900000004064001020000000800000009000000020000000000000001128A7CF900000001022A458113E1C500000000000AD3578510D10104000000020B4D43FC10804D070B4D43FE00000006000000090000000310801107000000030B4D43FE0000000710801109000000040000000910D13D040B4D43FC10804D070B4D43FE10804D0908C0010211FBE8F9011523410000000600000009000000010000000600000004108011090000000408C0010200000009000000060000000310801107000000030B4D43FE10804D0908C0010211FBE8F9011523410000000613F895000BE879C51011710400000002000000071011AD040AA6A27C00000006000000070000000200000000000000010000000600000004108011090000000408C0010211FBE8F90115234113F85900000000000BE879C51011710400000002000000060000000613F895000BE879C50000000900000009000000000000000111FC24F9000000010115234100000006000000050000000213E201000AD3578510D10104000000020000000910D13D040B4D43FC10804D070B4D43FE10804D090000000900000004000000090000000310801107000000030B4D43FE10804D0908C0010211FBE8F9000000080000000111FC24F900000001033F67C113BBF500000000000BE879C500000009000000090000000900000004108011090000000408C0010200000009000000050000000200000000"
theorem small_9763016_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763016_left_root small_9763016_left_fuel small_9763016_left_count small_9763016_left_encoded = true := by
  decide +kernel
theorem small_9763016_left_covered : CoveredBy scale carrier boxes small_9763016_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763016_left_root small_9763016_left_fuel small_9763016_left_count small_9763016_left_encoded small_9763016_left_checked

theorem cover_9763016 : CoveredBy scale carrier boxes root_9763016 := by
  apply coveredBy_split_literal root_9763016 small_9763016_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9764060 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9763016_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9764060
#print axioms cover_9763016

def root_9763010 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763010_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763010_left_fuel : Nat := 1
def small_9763010_left_count : Nat := 1
def small_9763010_left_encoded : String := "00000000"
theorem small_9763010_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763010_left_root small_9763010_left_fuel small_9763010_left_count small_9763010_left_encoded = true := by
  decide +kernel
theorem small_9763010_left_covered : CoveredBy scale carrier boxes small_9763010_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763010_left_root small_9763010_left_fuel small_9763010_left_count small_9763010_left_encoded small_9763010_left_checked

theorem cover_9763010 : CoveredBy scale carrier boxes root_9763010 := by
  apply coveredBy_split_literal root_9763010 small_9763010_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9763016 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9763010_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9763016
#print axioms cover_9763010

def root_9763009 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9763009 : CoveredBy scale carrier boxes root_9763009 := by
  apply coveredBy_split_literal root_9763009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9763010 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3659.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9763010
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3659.covered
#print axioms cover_9763009

def root_9763003 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763003_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9763003_left_fuel : Nat := 1
def small_9763003_left_count : Nat := 1
def small_9763003_left_encoded : String := "00000001"
theorem small_9763003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9763003_left_root small_9763003_left_fuel small_9763003_left_count small_9763003_left_encoded = true := by
  decide +kernel
theorem small_9763003_left_covered : CoveredBy scale carrier boxes small_9763003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9763003_left_root small_9763003_left_fuel small_9763003_left_count small_9763003_left_encoded small_9763003_left_checked

theorem cover_9763003 : CoveredBy scale carrier boxes root_9763003 := by
  apply coveredBy_split_literal root_9763003 small_9763003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9763009 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9763003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9763009
#print axioms cover_9763003

def root_9761071 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9761071 : CoveredBy scale carrier boxes root_9761071 := by
  apply coveredBy_split_literal root_9761071 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3654.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9763003 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3654.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9763003
#print axioms cover_9761071

def root_9761065 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761065_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761065_left_fuel : Nat := 1
def small_9761065_left_count : Nat := 1
def small_9761065_left_encoded : String := "00000004"
theorem small_9761065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9761065_left_root small_9761065_left_fuel small_9761065_left_count small_9761065_left_encoded = true := by
  decide +kernel
theorem small_9761065_left_covered : CoveredBy scale carrier boxes small_9761065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9761065_left_root small_9761065_left_fuel small_9761065_left_count small_9761065_left_encoded small_9761065_left_checked

theorem cover_9761065 : CoveredBy scale carrier boxes root_9761065 := by
  apply coveredBy_split_literal root_9761065 small_9761065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9761071 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9761065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9761071
#print axioms cover_9761065

def root_9761005 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761005_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9761005_left_fuel : Nat := 9
def small_9761005_left_count : Nat := 27
def small_9761005_left_encoded : String := "120700FE05000102135D44F90000000500000001135D80F90000000104548A0113867100000000000CFD9C05000000050F350D0400000005000000021386AD000CFD9C050F34D10400000002000000080F350D040CFD9C070000000500000008000000020000000000000004"
theorem small_9761005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9761005_left_root small_9761005_left_fuel small_9761005_left_count small_9761005_left_encoded = true := by
  decide +kernel
theorem small_9761005_left_covered : CoveredBy scale carrier boxes small_9761005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9761005_left_root small_9761005_left_fuel small_9761005_left_count small_9761005_left_encoded small_9761005_left_checked

theorem cover_9761005 : CoveredBy scale carrier boxes root_9761005 := by
  apply coveredBy_split_literal root_9761005 small_9761005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9761065 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9761005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9761065
#print axioms cover_9761005

def root_9760999 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760999_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760999_left_fuel : Nat := 1
def small_9760999_left_count : Nat := 1
def small_9760999_left_encoded : String := "00000003"
theorem small_9760999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760999_left_root small_9760999_left_fuel small_9760999_left_count small_9760999_left_encoded = true := by
  decide +kernel
theorem small_9760999_left_covered : CoveredBy scale carrier boxes small_9760999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760999_left_root small_9760999_left_fuel small_9760999_left_count small_9760999_left_encoded small_9760999_left_checked

theorem cover_9760999 : CoveredBy scale carrier boxes root_9760999 := by
  apply coveredBy_split_literal root_9760999 small_9760999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9761005 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9760999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9761005
#print axioms cover_9760999

def root_9760915 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760915_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760915_left_fuel : Nat := 15
def small_9760915_left_count : Nat := 39
def small_9760915_left_encoded : String := "120700FC08A913090000000512073CFE0000000405000102135D44F90000000500000001135D80F90000000104548A0113867100000000000CFD9C05000000050F350D0400000005000000021386AD000CFD9C050F34D10400000002000000090F350D0404548A07000000051386ACFC000000030CFD9C09000000050F350CFE000000040C9A87040000000500000009000000020000000000000003"
theorem small_9760915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760915_left_root small_9760915_left_fuel small_9760915_left_count small_9760915_left_encoded = true := by
  decide +kernel
theorem small_9760915_left_covered : CoveredBy scale carrier boxes small_9760915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760915_left_root small_9760915_left_fuel small_9760915_left_count small_9760915_left_encoded small_9760915_left_checked

theorem cover_9760915 : CoveredBy scale carrier boxes root_9760915 := by
  apply coveredBy_split_literal root_9760915 small_9760915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9760999 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9760915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9760999
#print axioms cover_9760915

def root_9760910 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760910_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760910_right_fuel : Nat := 1
def small_9760910_right_count : Nat := 1
def small_9760910_right_encoded : String := "00000002"
theorem small_9760910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760910_right_root small_9760910_right_fuel small_9760910_right_count small_9760910_right_encoded = true := by
  decide +kernel
theorem small_9760910_right_covered : CoveredBy scale carrier boxes small_9760910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760910_right_root small_9760910_right_fuel small_9760910_right_count small_9760910_right_encoded small_9760910_right_checked

theorem cover_9760910 : CoveredBy scale carrier boxes root_9760910 := by
  apply coveredBy_split_literal root_9760910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.root_9760915 small_9760910_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661.cover_9760915
  · exact small_9760910_right_covered
#print axioms cover_9760910

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0661
