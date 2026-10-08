import TaoBundleAssembly0311
import TaoBundleChunkBatch0399
import TaoBundleChunkBatch0400
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312
def root_4270528 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270528_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270528_right_fuel : Nat := 19
def small_4270528_right_count : Nat := 237
def small_4270528_right_encoded : String := "1386AD080C9A86F60F878D010C9A87060F8751070000000307800102128A40F9078000FA128A7D05067ECE8912EA5908000000040DE7C9F60E60150100000009000000000E5FD901000000000B4D4406108011070000000300000006000000090000000900000002128A410500000002067ECE8912EA5908000000040DE7C9F60E6015010000000600000000000000060000000900000001128A7CF900000001078000FA128A7D05067ECE8912EA5908000000040DE7C9F60E60150100000006000000000000000612EA95080DE7C9F60E6015010000000600000000000000060000000400000002128A410500000002067ECE8900000006000000060F878D0707800102128A40F90000000900000001128A7CF900000001078000FA128A7D05067ECE8912EA5908000000040DE7C9F60E60150100000009000000000E5FD901000000000DE7CA060E5FD9070000000308C001020000000900000006000000090000000900000002128A410500000002067ECE8912EA5908000000040DE7C9F6000000090E5FD90100000000000000050000000900000003000000000F875101000000000C9A87060F8751070000000307800102128A40F9078000FA128A7D05067ECE8912EA5908000000040B4D43F610804D010B4D440610801107000000030000000610804D070640010212FF70F908C000FA00000009000000060000000112FFACF90000000100000006000000030000000010801101000000000B4D440610801107000000030000000610804D07064001020000000A000000050000000312EA95080B4D43F610804D010B4D44060000000600000009000000000000000A0000000400000002128A410500000002067ECE8912EA5908000000040B4D43F610804D010000000600000000000000050000000500000001128A7CF900000001078000FA128A7D05067ECE8912EA5908000000040B4D43F610804D010000000600000000000000050000000500000002000000050F878D0707800102128A40F9078000FA128A7D05067ECE8912EA5908000000040B4D43F610804D01000000090000000010801101000000000DE7CA060E5FD90700000003064001020000000A00000005000000090000000900000002128A410500000002067ECE8912EA5908000000040B4D43F610804D010000000900000000000000050000000500000001128A7CF900000001078000FA128A7D05067ECE8912EA5908000000040B4D43F610804D010DE7CA060E5FD90700000003000000050000000500000000000000050000000500000002000000050000000300000004"
theorem small_4270528_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4270528_right_root small_4270528_right_fuel small_4270528_right_count small_4270528_right_encoded = true := by
  decide +kernel
theorem small_4270528_right_covered : CoveredBy scale carrier boxes small_4270528_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4270528_right_root small_4270528_right_fuel small_4270528_right_count small_4270528_right_encoded small_4270528_right_checked

theorem cover_4270528 : CoveredBy scale carrier boxes root_4270528 := by
  apply coveredBy_split_literal root_4270528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4270529 small_4270528_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4270529
  · exact small_4270528_right_covered
#print axioms cover_4270528

def root_4270523 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270523_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270523_right_fuel : Nat := 1
def small_4270523_right_count : Nat := 1
def small_4270523_right_encoded : String := "00000003"
theorem small_4270523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4270523_right_root small_4270523_right_fuel small_4270523_right_count small_4270523_right_encoded = true := by
  decide +kernel
theorem small_4270523_right_covered : CoveredBy scale carrier boxes small_4270523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4270523_right_root small_4270523_right_fuel small_4270523_right_count small_4270523_right_encoded small_4270523_right_checked

theorem cover_4270523 : CoveredBy scale carrier boxes root_4270523 := by
  apply coveredBy_split_literal root_4270523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4270528 small_4270523_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4270528
  · exact small_4270523_right_covered
#print axioms cover_4270523

def root_4269971 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269971_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269971_left_fuel : Nat := 29
def small_4269971_left_count : Nat := 259
def small_4269971_left_encoded : String := "0F34D1060000000304548A0913867108000000040C9A86F60F878D0107800102128A40F9078000FA000000090000000700000001128A7CF900000001078000FA128A7D050AD3578710D10106000000030000000710D13D06022A45890000000713E201080DE7C9F6000000070E5FD901000000000000000900000004000000030000000200000007000000000F8751010000000007800102128A40F9078000FA128A7D050AD3578710D1010600000003022A4589000000070000000910D13D06022A458913E1C508000000040B4D43F610804D01064001020000000712FFACF900000001000000070000000010801101000000000640010212FF70F908C000FA11FC25050BE879C71011710600000003000000071011AD060115234913F85908000000040AA6A2760000000710ED71010000000005A00102133134F9096000FA000000090000000700000001133170F9000000010000000700000009000000030000000211FBE905000000020BE879C700000007000000070000000112FFACF90000000108C000FA11FC25050BE879C71011710600000003000000071011AD060115234913F85908000000040AA6A2760000000710ED7101000000000000000513F895080AA6A27610EDAD0106E001020000000700000005000000000000000500000004000000030000000211FBE905000000020BE879C7000000070000000513E201080B4D43F6000000091080110100000000064001020000000912FFACF90000000108C000FA0000000900000005000000040000000300000002128A4105000000020AD3578710D10106000000030000000710D13D06022A45890000000713E201080B4D43F60000000900000005000000040000000300000001128A7CF900000001078000FA128A7D050AD3578710D1010600000003022A45890000000713E201080B4D43F610804D010000000700000000000000050000000410D13D06022A458913E1C508000000040B4D43F610804D0108C001020000000711FC24F9000000010000000700000000108011010000000008C0010211FBE8F908C000FA11FC25050BE879C7101171060000000300000005000000050000000200000005000000010000000513E201080B4D43F610804D0108C0010211FBE8F908C000FA000000090000000500000001000000050000000000000005000000040000000300000002128A4105000000020AD3578710D101060000000300000005000000051386AD080C9A86F60F878D0100000009000000000F8751010000000007800102128A40F90000000900000001128A7CF900000001078000FA128A7D050AD3578710D10106000000030000000910D13D06067ECE8912EA5908000000040B4D43F610804D01000000090000000000000005000000050000000300000002128A4105000000020000000500000004"
theorem small_4269971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269971_left_root small_4269971_left_fuel small_4269971_left_count small_4269971_left_encoded = true := by
  decide +kernel
theorem small_4269971_left_covered : CoveredBy scale carrier boxes small_4269971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269971_left_root small_4269971_left_fuel small_4269971_left_count small_4269971_left_encoded small_4269971_left_checked

theorem cover_4269971 : CoveredBy scale carrier boxes root_4269971 := by
  apply coveredBy_split_literal root_4269971 small_4269971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4270523 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4269971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4270523
#print axioms cover_4269971

def root_4269965 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269965_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269965_left_fuel : Nat := 1
def small_4269965_left_count : Nat := 1
def small_4269965_left_encoded : String := "00000000"
theorem small_4269965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269965_left_root small_4269965_left_fuel small_4269965_left_count small_4269965_left_encoded = true := by
  decide +kernel
theorem small_4269965_left_covered : CoveredBy scale carrier boxes small_4269965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269965_left_root small_4269965_left_fuel small_4269965_left_count small_4269965_left_encoded small_4269965_left_checked

theorem cover_4269965 : CoveredBy scale carrier boxes root_4269965 := by
  apply coveredBy_split_literal root_4269965 small_4269965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269971 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4269965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269971
#print axioms cover_4269965

def root_4269765 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269765_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269765_left_fuel : Nat := 17
def small_4269765_left_count : Nat := 95
def small_4269765_left_encoded : String := "0F34D0F60CFD9C070F34D10600000003000000090F350D0604548A0913867108000000040C9A87060F8751070000000307800102128A40F9078000FA128A7D050AD357810000000910D13CF600000000022A458913E1C508000000040B4D440600000005000000070000000900000002128A4105000000020AD357810000000610D13CF600000000022A4589000000060000000600000001128A7CF900000001078000FA128A7D050AD3578110D100F6000000070000000010D13CF600000000022A45890000000613E20108000000060000000400000002128A410500000002000000060F878D0707800102128A40F9078000FA000000090000000700000001128A7CF900000001078000FA128A7D050AD357810000000710D13CF600000000000000070000000200000007000000031386AD080C9A87060F875107000000030780010200000009128A7CF900000001078000FA00000009128A4105000000020AD35781000000060000000900000009000000040000000300000000"
theorem small_4269765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269765_left_root small_4269765_left_fuel small_4269765_left_count small_4269765_left_encoded = true := by
  decide +kernel
theorem small_4269765_left_covered : CoveredBy scale carrier boxes small_4269765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269765_left_root small_4269765_left_fuel small_4269765_left_count small_4269765_left_encoded small_4269765_left_checked

theorem cover_4269765 : CoveredBy scale carrier boxes root_4269765 := by
  apply coveredBy_split_literal root_4269765 small_4269765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269965 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4269765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269965
#print axioms cover_4269765

def root_4269760 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269760_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269760_right_fuel : Nat := 1
def small_4269760_right_count : Nat := 1
def small_4269760_right_encoded : String := "00000002"
theorem small_4269760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269760_right_root small_4269760_right_fuel small_4269760_right_count small_4269760_right_encoded = true := by
  decide +kernel
theorem small_4269760_right_covered : CoveredBy scale carrier boxes small_4269760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269760_right_root small_4269760_right_fuel small_4269760_right_count small_4269760_right_encoded small_4269760_right_checked

theorem cover_4269760 : CoveredBy scale carrier boxes root_4269760 := by
  apply coveredBy_split_literal root_4269760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269765 small_4269760_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269765
  · exact small_4269760_right_covered
#print axioms cover_4269760

def root_4269759 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269759_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269759_right_fuel : Nat := 18
def small_4269759_right_count : Nat := 137
def small_4269759_right_encoded : String := "135D4505000000020CFD9C010F34D0F60CFD9C070F34D10600000003000000070F350D0604548A09000000071386AD080C9A87060F8751070000000307800102128A40F90000000900000001128A7CF900000001028000FA0000000600000006000000090000000400000003000000000F350CF6000000000CFD9C070F34D1060000000304548A0913867108000000040C9A86F6000000070F875101000000000780010200000007000000051386AD080C9A86F60F878D0100000009000000000F8751010000000000000005000000040F350D0604548A0913867108000000040C9A86F60F878D010C9A87060F8751070000000307800102128A40F90000000800000001000000060F878D070000000700000003000000000F875101000000000C9A87060F8751070000000307800102128A40F9028000FA000000060000000500000001000000050F878D0707800102128A40F9028000FA13D7ED05022A458913E1C50800000004000000050000000500000002000000050000000100000005000000031386AD080C9A86F60F878D010C9A87060F8751070000000307800102128A40F9028000FA13D7ED05067ECE890000000600000006000000020000000600000001128A7CF900000001028000FA00000006000000050F878D0707800102128A40F90000000900000001128A7CF9000000010000000500000003000000000F875101000000000C9A87060F8751070000000300000005000000050000000400000003"
theorem small_4269759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269759_right_root small_4269759_right_fuel small_4269759_right_count small_4269759_right_encoded = true := by
  decide +kernel
theorem small_4269759_right_covered : CoveredBy scale carrier boxes small_4269759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269759_right_root small_4269759_right_fuel small_4269759_right_count small_4269759_right_encoded small_4269759_right_checked

theorem cover_4269759 : CoveredBy scale carrier boxes root_4269759 := by
  apply coveredBy_split_literal root_4269759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269760 small_4269759_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269760
  · exact small_4269759_right_covered
#print axioms cover_4269759

def root_4269753 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269753_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4269753_left_fuel : Nat := 1
def small_4269753_left_count : Nat := 1
def small_4269753_left_encoded : String := "00000001"
theorem small_4269753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4269753_left_root small_4269753_left_fuel small_4269753_left_count small_4269753_left_encoded = true := by
  decide +kernel
theorem small_4269753_left_covered : CoveredBy scale carrier boxes small_4269753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4269753_left_root small_4269753_left_fuel small_4269753_left_count small_4269753_left_encoded small_4269753_left_checked

theorem cover_4269753 : CoveredBy scale carrier boxes root_4269753 := by
  apply coveredBy_split_literal root_4269753 small_4269753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269759 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4269753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269759
#print axioms cover_4269753

def root_4267017 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4267017 : CoveredBy scale carrier boxes root_4267017 := by
  apply coveredBy_split_literal root_4267017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1595.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4269753 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1595.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4269753
#print axioms cover_4267017

def root_4267011 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267011_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267011_left_fuel : Nat := 1
def small_4267011_left_count : Nat := 1
def small_4267011_left_encoded : String := "00000004"
theorem small_4267011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4267011_left_root small_4267011_left_fuel small_4267011_left_count small_4267011_left_encoded = true := by
  decide +kernel
theorem small_4267011_left_covered : CoveredBy scale carrier boxes small_4267011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4267011_left_root small_4267011_left_fuel small_4267011_left_count small_4267011_left_encoded small_4267011_left_checked

theorem cover_4267011 : CoveredBy scale carrier boxes root_4267011 := by
  apply coveredBy_split_literal root_4267011 small_4267011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4267017 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4267011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4267017
#print axioms cover_4267011

def root_4267010 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267010_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267010_right_fuel : Nat := 21
def small_4267010_right_count : Nat := 93
def small_4267010_right_encoded : String := "12073D0805000102135D44F9050000FA00000009135D4505000000020000000900000001135D80F900000001050000FA135D81050CFD9C01000000090F350CF6000000000CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A87060F875107000000030780010200000009128A7CF900000001078000FA00000009128A4105000000020000000900000009000000000F875101000000000C9A87060F87510700000003078001020000000A128A7CF900000001078000FA128A7D050AD35789000000060000000500000002000000050F878D070780010200000009128A7CF900000001078000FA000000090000000500000003000000090000000300000002135D4505000000020CFD9C01000000090F350CF6000000000CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A87060000000A00000009000000000000000A000000090000000300000004"
theorem small_4267010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4267010_right_root small_4267010_right_fuel small_4267010_right_count small_4267010_right_encoded = true := by
  decide +kernel
theorem small_4267010_right_covered : CoveredBy scale carrier boxes small_4267010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4267010_right_root small_4267010_right_fuel small_4267010_right_count small_4267010_right_encoded small_4267010_right_checked

theorem cover_4267010 : CoveredBy scale carrier boxes root_4267010 := by
  apply coveredBy_split_literal root_4267010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4267011 small_4267010_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4267011
  · exact small_4267010_right_covered
#print axioms cover_4267010

def root_4267005 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267005_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4267005_right_fuel : Nat := 1
def small_4267005_right_count : Nat := 1
def small_4267005_right_encoded : String := "00000003"
theorem small_4267005_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4267005_right_root small_4267005_right_fuel small_4267005_right_count small_4267005_right_encoded = true := by
  decide +kernel
theorem small_4267005_right_covered : CoveredBy scale carrier boxes small_4267005_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4267005_right_root small_4267005_right_fuel small_4267005_right_count small_4267005_right_encoded small_4267005_right_checked

theorem cover_4267005 : CoveredBy scale carrier boxes root_4267005 := by
  apply coveredBy_split_literal root_4267005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4267010 small_4267005_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4267010
  · exact small_4267005_right_covered
#print axioms cover_4267005

def root_4266821 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266821_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266821_left_fuel : Nat := 23
def small_4266821_left_count : Nat := 87
def small_4266821_left_encoded : String := "120701060000000308A91309120701080000000405000102135D44F9050000FA00000009135D4505000000020000000900000001135D80F900000001050000FA135D81050CFD9C01000000090F350CF60000000004548A07138671060000000304548A0913867108000000040C9A86F6000000070F875101000000000780010200000007128A7CF90000000100000007000000091386AD0604548A0913867108000000040C9A86F60F878D0100000007000000000F8751010000000007800102128A40F9078000FA000000090000000700000001128A7CF900000001078000FA128A7D05067ECE8712EA5906000000030000000712EA9506022A45890000000700000009000000030000000200000007000000090000000300000002135D4505000000020CFD9C01000000090F350CF60000000004548A071386710600000003000000071386AD0604548A0900000007000000090000000300000009"
theorem small_4266821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266821_left_root small_4266821_left_fuel small_4266821_left_count small_4266821_left_encoded = true := by
  decide +kernel
theorem small_4266821_left_covered : CoveredBy scale carrier boxes small_4266821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266821_left_root small_4266821_left_fuel small_4266821_left_count small_4266821_left_encoded small_4266821_left_checked

theorem cover_4266821 : CoveredBy scale carrier boxes root_4266821 := by
  apply coveredBy_split_literal root_4266821 small_4266821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4267005 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4266821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4267005
#print axioms cover_4266821

def root_4266815 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266815_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266815_left_fuel : Nat := 1
def small_4266815_left_count : Nat := 1
def small_4266815_left_encoded : String := "00000000"
theorem small_4266815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266815_left_root small_4266815_left_fuel small_4266815_left_count small_4266815_left_encoded = true := by
  decide +kernel
theorem small_4266815_left_covered : CoveredBy scale carrier boxes small_4266815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266815_left_root small_4266815_left_fuel small_4266815_left_count small_4266815_left_encoded small_4266815_left_checked

theorem cover_4266815 : CoveredBy scale carrier boxes root_4266815 := by
  apply coveredBy_split_literal root_4266815 small_4266815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266821 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4266815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266821
#print axioms cover_4266815

def root_4266775 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266775_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266775_left_fuel : Nat := 9
def small_4266775_left_count : Nat := 19
def small_4266775_left_encoded : String := "120700F608A9130712070106000000030000000912073D0608A9130912070108000000040500010200000009135D80F900000001050000FA0000000900000007000000090000000300000000"
theorem small_4266775_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266775_left_root small_4266775_left_fuel small_4266775_left_count small_4266775_left_encoded = true := by
  decide +kernel
theorem small_4266775_left_covered : CoveredBy scale carrier boxes small_4266775_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266775_left_root small_4266775_left_fuel small_4266775_left_count small_4266775_left_encoded small_4266775_left_checked

theorem cover_4266775 : CoveredBy scale carrier boxes root_4266775 := by
  apply coveredBy_split_literal root_4266775 small_4266775_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266815 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4266775_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266815
#print axioms cover_4266775

def root_4266770 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266770_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266770_right_fuel : Nat := 1
def small_4266770_right_count : Nat := 1
def small_4266770_right_encoded : String := "00000004"
theorem small_4266770_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266770_right_root small_4266770_right_fuel small_4266770_right_count small_4266770_right_encoded = true := by
  decide +kernel
theorem small_4266770_right_covered : CoveredBy scale carrier boxes small_4266770_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266770_right_root small_4266770_right_fuel small_4266770_right_count small_4266770_right_encoded small_4266770_right_checked

theorem cover_4266770 : CoveredBy scale carrier boxes root_4266770 := by
  apply coveredBy_split_literal root_4266770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266775 small_4266770_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266775
  · exact small_4266770_right_covered
#print axioms cover_4266770

def root_4266762 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266762_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266762_left_fuel : Nat := 2
def small_4266762_left_count : Nat := 3
def small_4266762_left_encoded : String := "1151E9090000000400000009"
theorem small_4266762_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266762_left_root small_4266762_left_fuel small_4266762_left_count small_4266762_left_encoded = true := by
  decide +kernel
theorem small_4266762_left_covered : CoveredBy scale carrier boxes small_4266762_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266762_left_root small_4266762_left_fuel small_4266762_left_count small_4266762_left_encoded small_4266762_left_checked

theorem cover_4266762 : CoveredBy scale carrier boxes root_4266762 := by
  apply coveredBy_split_literal root_4266762 small_4266762_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266770 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4266762_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266770
#print axioms cover_4266762

def root_4266757 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266757_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4266757_right_fuel : Nat := 1
def small_4266757_right_count : Nat := 1
def small_4266757_right_encoded : String := "00000003"
theorem small_4266757_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4266757_right_root small_4266757_right_fuel small_4266757_right_count small_4266757_right_encoded = true := by
  decide +kernel
theorem small_4266757_right_covered : CoveredBy scale carrier boxes small_4266757_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4266757_right_root small_4266757_right_fuel small_4266757_right_count small_4266757_right_encoded small_4266757_right_checked

theorem cover_4266757 : CoveredBy scale carrier boxes root_4266757 := by
  apply coveredBy_split_literal root_4266757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266762 small_4266757_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266762
  · exact small_4266757_right_covered
#print axioms cover_4266757

def root_4265051 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4265051 : CoveredBy scale carrier boxes root_4265051 := by
  apply coveredBy_split_literal root_4265051 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1594.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4266757 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1594.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4266757
#print axioms cover_4265051

def root_4265045 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4265045_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4265045_left_fuel : Nat := 1
def small_4265045_left_count : Nat := 1
def small_4265045_left_encoded : String := "00000002"
theorem small_4265045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4265045_left_root small_4265045_left_fuel small_4265045_left_count small_4265045_left_encoded = true := by
  decide +kernel
theorem small_4265045_left_covered : CoveredBy scale carrier boxes small_4265045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4265045_left_root small_4265045_left_fuel small_4265045_left_count small_4265045_left_encoded small_4265045_left_checked

theorem cover_4265045 : CoveredBy scale carrier boxes root_4265045 := by
  apply coveredBy_split_literal root_4265045 small_4265045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4265051 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4265045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4265051
#print axioms cover_4265045

def root_4245851 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4245851 : CoveredBy scale carrier boxes root_4245851 := by
  apply coveredBy_split_literal root_4245851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4245852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4265045 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4245852
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4265045
#print axioms cover_4245851

def root_4245846 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245846_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245846_right_fuel : Nat := 1
def small_4245846_right_count : Nat := 1
def small_4245846_right_encoded : String := "00000001"
theorem small_4245846_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4245846_right_root small_4245846_right_fuel small_4245846_right_count small_4245846_right_encoded = true := by
  decide +kernel
theorem small_4245846_right_covered : CoveredBy scale carrier boxes small_4245846_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4245846_right_root small_4245846_right_fuel small_4245846_right_count small_4245846_right_encoded small_4245846_right_checked

theorem cover_4245846 : CoveredBy scale carrier boxes root_4245846 := by
  apply coveredBy_split_literal root_4245846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4245851 small_4245846_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4245851
  · exact small_4245846_right_covered
#print axioms cover_4245846

def root_4277415 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277415_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277415_left_fuel : Nat := 19
def small_4277415_left_count : Nat := 203
def small_4277415_left_encoded : String := "120700FA08A91309120701080000000405000106135D4507000000030CFD9C010F34D0F60CFD9BF9000000050F34D102000000010000000A000000000F350CF6000000000CFD9BF90F350D0204548A05138670FA00000005000000021386ACFA0000000204548A0913867108000000040000000700000007000000010F34D1020000000104548A050000000900000009135D81070CFD9C010F34D0F60CFD9BF90F350D0200000005000000010F34D102000000010000000A000000000F350CF6000000000CFD9BF90F350D0204548A05138670FA04548A09000000051386AD080000000800000004000000021386ACFA0000000204548A0913867108000000040C9A86F60F878D010C9A8702000000050000000A000000000F875101000000000C9A870200000009000000071386AD080C9A86F60F878D010C9A87020F8750F900000005000000010F878CF900000001078001060000000700000008000000000F875101000000000000000700000004000000010F34D1020000000104548A05138670FA0000000A000000021386ACFA0000000204548A090000000A1386AD080C9A86F60000000A00000008000000040000000312073D0805000106135D4507000000030CFD9C010F34D0F60CFD9BF90F350D0204548A05000000051386ACFA000000020CFD9C090000000500000007000000010F34D1020000000104548A05138670FA00000008000000021386ACFA000000020CFD9C090F34D10800000004028001060000000713D7ED070AD3578100000008000000070000000300000007000000000F350CF6000000000CFD9BF90F350D0204548A050000000700000007000000010F34D1020000000104548A050000000700000007135D81070CFD9C010F34D0F60CFD9BF90F350D0204548A05138670FA00000008000000021386ACFA000000020CFD9C090F34D108000000040C9A87020F8750F900000005000000010F878CF9000000010000000800000008000000010F34D1020000000100000008000000000F350CF6000000000CFD9BF90F350D0204548A05000000081386ACFA000000020CFD9C090F34D1080000000400000008000000080000000100000008000000030000000400000002"
theorem small_4277415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4277415_left_root small_4277415_left_fuel small_4277415_left_count small_4277415_left_encoded = true := by
  decide +kernel
theorem small_4277415_left_covered : CoveredBy scale carrier boxes small_4277415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4277415_left_root small_4277415_left_fuel small_4277415_left_count small_4277415_left_encoded small_4277415_left_checked

theorem cover_4277415 : CoveredBy scale carrier boxes root_4277415 := by
  apply coveredBy_split_literal root_4277415 small_4277415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1598.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4277415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1598.covered
#print axioms cover_4277415

def root_4277410 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277410_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277410_right_fuel : Nat := 1
def small_4277410_right_count : Nat := 1
def small_4277410_right_encoded : String := "00000001"
theorem small_4277410_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4277410_right_root small_4277410_right_fuel small_4277410_right_count small_4277410_right_encoded = true := by
  decide +kernel
theorem small_4277410_right_covered : CoveredBy scale carrier boxes small_4277410_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4277410_right_root small_4277410_right_fuel small_4277410_right_count small_4277410_right_encoded small_4277410_right_checked

theorem cover_4277410 : CoveredBy scale carrier boxes root_4277410 := by
  apply coveredBy_split_literal root_4277410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4277415 small_4277410_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4277415
  · exact small_4277410_right_covered
#print axioms cover_4277410

def root_4277409 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277409_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277409_right_fuel : Nat := 15
def small_4277409_right_count : Nat := 135
def small_4277409_right_encoded : String := "120701020000000108A91305120700FA08A91309120701080000000405000106135D4507000000030CFD9C010000000A000000090000000A12073D0805000106135D4507000000030CFD9C010F34D0F6045489F91386AD0204548A05000000081386ACFA000000020CFD9C0900000006000000080000000100000008000000000F350CF6000000000000000800000008000000040000000212073CFA0000000208A91309120701080000000405000106135D4507000000030CFD9C01000000060F350CF60000000000000006135D81070CFD9C010F34D0F60000000A000000000F350CF600000000045489F91386AD020CFD9C05000000090000000600000001000000060000000312073D0805000106135D4507000000030CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA0000000600000002000000060000000100000006000000000F350CF600000000045489F91386AD020CFD9C050F34D0FA0000000600000002000000060000000100000006135D81070CFD9C010F34D0F6045489F91386AD020CFD9C050F34D0FA0CFD9C090000000600000008000000020F350CFA00000002000000060000000113867102000000010CFD9C050F34D0FA000000060000000200000006000000000F350CF600000000045489F91386AD020CFD9C050F34D0FA00000008000000020F350CFA00000002000000060000000113867102000000010CFD9C0500000008000000050000000300000004"
theorem small_4277409_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4277409_right_root small_4277409_right_fuel small_4277409_right_count small_4277409_right_encoded = true := by
  decide +kernel
theorem small_4277409_right_covered : CoveredBy scale carrier boxes small_4277409_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4277409_right_root small_4277409_right_fuel small_4277409_right_count small_4277409_right_encoded small_4277409_right_checked

theorem cover_4277409 : CoveredBy scale carrier boxes root_4277409 := by
  apply coveredBy_split_literal root_4277409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4277410 small_4277409_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4277410
  · exact small_4277409_right_covered
#print axioms cover_4277409

def root_4277403 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277403_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4277403_left_fuel : Nat := 1
def small_4277403_left_count : Nat := 1
def small_4277403_left_encoded : String := "00000000"
theorem small_4277403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4277403_left_root small_4277403_left_fuel small_4277403_left_count small_4277403_left_encoded = true := by
  decide +kernel
theorem small_4277403_left_covered : CoveredBy scale carrier boxes small_4277403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4277403_left_root small_4277403_left_fuel small_4277403_left_count small_4277403_left_encoded small_4277403_left_checked

theorem cover_4277403 : CoveredBy scale carrier boxes root_4277403 := by
  apply coveredBy_split_literal root_4277403 small_4277403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4277409 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4277403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4277409
#print axioms cover_4277403

def root_4275937 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4275937 : CoveredBy scale carrier boxes root_4275937 := by
  apply coveredBy_split_literal root_4275937 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1597.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4277403 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1597.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4277403
#print axioms cover_4275937

def root_4275932 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275932_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4275932_right_fuel : Nat := 1
def small_4275932_right_count : Nat := 1
def small_4275932_right_encoded : String := "00000004"
theorem small_4275932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4275932_right_root small_4275932_right_fuel small_4275932_right_count small_4275932_right_encoded = true := by
  decide +kernel
theorem small_4275932_right_covered : CoveredBy scale carrier boxes small_4275932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4275932_right_root small_4275932_right_fuel small_4275932_right_count small_4275932_right_encoded small_4275932_right_checked

theorem cover_4275932 : CoveredBy scale carrier boxes root_4275932 := by
  apply coveredBy_split_literal root_4275932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.root_4275937 small_4275932_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312.cover_4275937
  · exact small_4275932_right_covered
#print axioms cover_4275932

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0312
