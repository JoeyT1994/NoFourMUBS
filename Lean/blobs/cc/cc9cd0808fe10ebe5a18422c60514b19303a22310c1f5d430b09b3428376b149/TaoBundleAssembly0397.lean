import TaoBundleAssembly0396
import TaoBundleChunkBatch0532
import TaoBundleChunkBatch0533
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397
def root_5672385 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672385_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672385_left_fuel : Nat := 18
def small_5672385_left_count : Nat := 193
def small_5672385_left_encoded : String := "0F878CFD0000000307800104128A410500000002022A457F13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000050E5FD8FD0640010412FF7105000000020000000512FFAD05033F67BF0000000913BBF508000000040D41288000000005000000090000000200000003108010F90DE7C9FC000000080E5FD8FD000000080000000300000001000000000E6014F7000000000B4D43F810804CF90000000100000009000000090000000413E1C508000000040DE7CA000E5FD8F70B4D43F810804CF90000000100000005108010F90DE7C9FC0E6014FD00000003000000050E5FD8FD0640010412FF7105000000020115233F000000080000000512FFAD050115233F13F895080D41288000000008000000090000000413F85908000000040D4128800EFA10F700000008000000000000000A000000020000000300000001000000000E6014F7000000000B4D43F810804CF9000000010DE7C9FC000000050E5FD8FD064001040000000512FFAD050115233F00000009000000050000000200000003108010F90DE7C9FC000000090E5FD8FD064001040000000912FFAD0500000009000000020000000300000001128A7D05022A457F13E201080DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC000000090E5FD8FD08C0010411FBE90500000002033F67BF0000000913BBF508000000040D4128800EFA10F700000009000000000000000911FC2505000000090000000200000003108010F90000000900000001000000000E6014F700000000000000090000000413E1C508000000040DE7CA000E5FD8F70B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0000000A00000003108010F90DE7C9FC0000000A0E5FD8FD08C0010411FBE905000000020115233F13F895080D4128800000000800000009000000040000000A0000000A0000000300000001000000000E6014F7000000000B4D43F810804CF9000000010000000A108010F90DE7C9FC000000090E5FD8FD08C001040000000900000009000000030000000100000002"
theorem small_5672385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672385_left_root small_5672385_left_fuel small_5672385_left_count small_5672385_left_encoded = true := by
  decide +kernel
theorem small_5672385_left_covered : CoveredBy scale carrier boxes small_5672385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672385_left_root small_5672385_left_fuel small_5672385_left_count small_5672385_left_encoded small_5672385_left_checked

theorem cover_5672385 : CoveredBy scale carrier boxes root_5672385 := by
  apply coveredBy_split_literal root_5672385 small_5672385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0396.root_5672799 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5672385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0396.cover_5672799
#print axioms cover_5672385

def root_5672380 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672380_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5672380_right_fuel : Nat := 1
def small_5672380_right_count : Nat := 1
def small_5672380_right_encoded : String := "00000001"
theorem small_5672380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5672380_right_root small_5672380_right_fuel small_5672380_right_count small_5672380_right_encoded = true := by
  decide +kernel
theorem small_5672380_right_covered : CoveredBy scale carrier boxes small_5672380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5672380_right_root small_5672380_right_fuel small_5672380_right_count small_5672380_right_encoded small_5672380_right_checked

theorem cover_5672380 : CoveredBy scale carrier boxes root_5672380 := by
  apply coveredBy_split_literal root_5672380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5672385 small_5672380_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5672385
  · exact small_5672380_right_covered
#print axioms cover_5672380

def root_5671538 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671538_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671538_left_fuel : Nat := 25
def small_5671538_left_count : Nat := 397
def small_5671538_left_encoded : String := "0F878CF9000000010C9A86FC0F878CFD0000000307800104128A410500000002022A457F13E201080DE7CA00000000050E6014F700000000000000050000000400000005128A7D05022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F9000000010DE7C9FC000000050E5FD8FD08C00104000000050000000A000000030E5FD8F90DE7C9FC0E6014FD0000000308C0010400000005000000090E5FD8FD08C0010411FBE90500000002033F67BF13BC310800000009000000040000000A0000000A0000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010DE7C9FC000000050E5FD8FD00000006000000030E5FD8F90DE7C9FC000000090E5FD8FD08C00104000000090000000A00000003000000010000000413E1C508000000040DE7CA000E5FD8F70000000A000000000000000A000000020F8750FD07800104128A410500000002022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F900000001000000060E5FD8F90B4D43FC10804CFD00000003064001040000000612FFAD05033F67BF0000000613BBF508000000040D412880000000050000000600000002108010FD00000006000000030000000100000000000000060000000413E1C508000000040DE7CA000E5FD8F70DE7C9F80E6014F900000001000000050E5FD8F90B4D43FC10804CFD0000000300000005108010FD0640010412FF7105000000020115233F000000060000000512FFAD050115233F13F895080D4128800EFA10F70D4128780EFA4CF900000001000000050EFA10F90AA6A27C10EDACFD0000000306E0010400000005000000070000000700000001000000000EFA4CF7000000000D412878000000060EFA10F90AA6A27C0000000610ED70FD0000000600000003000000010000000413F85908000000040D4128800EFA10F70000000A000000000000000A000000020000000300000001000000000E6014F7000000000DE7C9F80E6014F900000001000000050E5FD8F90B4D43FC10804CFD00000003064001040000000512FFAD050115233F000000060000000500000002108010FD064001040000000612FFAD050115233F0000000600000008000000020000000300000001128A7D05022A457F13E201080DE7CA000E5FD8F70DE7C9F80E6014F9000000010B4D43FC10804CFD0000000308C0010411FBE90500000002000000060000000A108010FD08C001040000000611FC2505033F67BF000000060000000700000002000000030E5FD8F90B4D43FC10804CFD0000000308C0010411FBE90500000002033F67BF13BC31080D4128800EFA10F70D412878000000060EFA10F90BF3E57C000000061008ECFD00000006000000030000000100000000000000060000000413BBF508000000040D4128800EFA10F70000000A000000000000000A11FC2505033F67BF13BC31080D4128800EFA10F70000000A000000000000000A000000040000000A00000002108010FD08C0010411FBE90500000002033F67BF13BC31080D41288000000007000000060000000413BBF508000000040D412880000000070EFA4CF7000000000D4128780EFA4CF900000001000000060EFA10F90AA6A27C00000007000000070000000111FC2505033F67BF0000000700000007000000020000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010B4D43FC00000006108010FD00000006000000030E5FD8F90B4D43FC10804CFD0000000308C0010411FBE905000000020000000611FC2505033F67BF13BC310800000009000000040000000A00000002108010FD08C0010411FBE905000000020000000611FC2505033F67BF000000060000000A0000000200000003000000010000000413E1C508000000040DE7CA000E5FD8F70DE7C9F80E6014F9000000010B4D43FC0000000A108010FD0000000A000000030E5FD8F90B4D43FC0000000A108010FD08C0010411FBE905000000020115233F13F895080D412880000000070000000A000000040000000A0000000A0000000300000001000000000E6014F7000000000DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC0000000A108010FD08C0010411FBE905000000020115233F13F895080DAED8770000000A0E962500000000000000000600000004000000080000000A00000003000000010000000200000003"
theorem small_5671538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5671538_left_root small_5671538_left_fuel small_5671538_left_count small_5671538_left_encoded = true := by
  decide +kernel
theorem small_5671538_left_covered : CoveredBy scale carrier boxes small_5671538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5671538_left_root small_5671538_left_fuel small_5671538_left_count small_5671538_left_encoded small_5671538_left_checked

theorem cover_5671538 : CoveredBy scale carrier boxes root_5671538 := by
  apply coveredBy_split_literal root_5671538 small_5671538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5672380 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5671538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5672380
#print axioms cover_5671538

def root_5671532 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671532_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5671532_left_fuel : Nat := 1
def small_5671532_left_count : Nat := 1
def small_5671532_left_encoded : String := "00000000"
theorem small_5671532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5671532_left_root small_5671532_left_fuel small_5671532_left_count small_5671532_left_encoded = true := by
  decide +kernel
theorem small_5671532_left_covered : CoveredBy scale carrier boxes small_5671532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5671532_left_root small_5671532_left_fuel small_5671532_left_count small_5671532_left_encoded small_5671532_left_checked

theorem cover_5671532 : CoveredBy scale carrier boxes root_5671532 := by
  apply coveredBy_split_literal root_5671532 small_5671532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5671538 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5671532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5671538
#print axioms cover_5671532

def root_5669432 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5669432 : CoveredBy scale carrier boxes root_5669432 := by
  apply coveredBy_split_literal root_5669432 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2128.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5671532 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2128.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5671532
#print axioms cover_5669432

def root_5669426 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5669426_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5669426_left_fuel : Nat := 1
def small_5669426_left_count : Nat := 1
def small_5669426_left_encoded : String := "00000004"
theorem small_5669426_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5669426_left_root small_5669426_left_fuel small_5669426_left_count small_5669426_left_encoded = true := by
  decide +kernel
theorem small_5669426_left_covered : CoveredBy scale carrier boxes small_5669426_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5669426_left_root small_5669426_left_fuel small_5669426_left_count small_5669426_left_encoded small_5669426_left_checked

theorem cover_5669426 : CoveredBy scale carrier boxes root_5669426 := by
  apply coveredBy_split_literal root_5669426 small_5669426_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5669432 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5669426_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5669432
#print axioms cover_5669426

def root_5667994 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5667994 : CoveredBy scale carrier boxes root_5667994 := by
  apply coveredBy_split_literal root_5667994 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2127.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5669426 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2127.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5669426
#print axioms cover_5667994

def root_5667988 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667988_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667988_left_fuel : Nat := 1
def small_5667988_left_count : Nat := 1
def small_5667988_left_encoded : String := "00000003"
theorem small_5667988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667988_left_root small_5667988_left_fuel small_5667988_left_count small_5667988_left_encoded = true := by
  decide +kernel
theorem small_5667988_left_covered : CoveredBy scale carrier boxes small_5667988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667988_left_root small_5667988_left_fuel small_5667988_left_count small_5667988_left_encoded small_5667988_left_checked

theorem cover_5667988 : CoveredBy scale carrier boxes root_5667988 := by
  apply coveredBy_split_literal root_5667988 small_5667988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667994 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5667988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667994
#print axioms cover_5667988

def root_5667987 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667987_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667987_right_fuel : Nat := 16
def small_5667987_right_count : Nat := 103
def small_5667987_right_encoded : String := "0F34D0FC045489FF1386AD080C9A87000F8750F70C9A86F80F878CF9000000010780010400000005128A7D050AD3577D10D13CFC00000003067ECE7F0000000912EA5908000000040B4D4400000000050000000900000009000000020F8750F907800104000000090000000900000001000000000F878CF7000000000C9A86F80F878CF900000001078001040000000900000009000000090000000413867108000000040C9A87000F8750F70C9A86F80F878CF900000001000000050F8750F907800104128A41050000000200000005128A7D050AD3577D10D13CFC00000003022A457F0000000813E1C508000000040B4D4400000000050000000A10D100FC00000005000000030000000200000001000000000F878CF7000000000C9A86F80F878CF900000001000000050F8750F907800104128A4105000000020AD3577D10D13CFC00000003022A457F000000090000000500000005128A7D050AD3577D10D13CFC00000003022A457F0000000913E1C508000000040DE7CA000E5FD8F700000009000000000000000900000009000000020000000100000003"
theorem small_5667987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667987_right_root small_5667987_right_fuel small_5667987_right_count small_5667987_right_encoded = true := by
  decide +kernel
theorem small_5667987_right_covered : CoveredBy scale carrier boxes small_5667987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667987_right_root small_5667987_right_fuel small_5667987_right_count small_5667987_right_encoded small_5667987_right_checked

theorem cover_5667987 : CoveredBy scale carrier boxes root_5667987 := by
  apply coveredBy_split_literal root_5667987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667988 small_5667987_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667988
  · exact small_5667987_right_covered
#print axioms cover_5667987

def root_5667981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667981_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667981_left_fuel : Nat := 1
def small_5667981_left_count : Nat := 1
def small_5667981_left_encoded : String := "00000001"
theorem small_5667981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667981_left_root small_5667981_left_fuel small_5667981_left_count small_5667981_left_encoded = true := by
  decide +kernel
theorem small_5667981_left_covered : CoveredBy scale carrier boxes small_5667981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667981_left_root small_5667981_left_fuel small_5667981_left_count small_5667981_left_encoded small_5667981_left_checked

theorem cover_5667981 : CoveredBy scale carrier boxes root_5667981 := by
  apply coveredBy_split_literal root_5667981 small_5667981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667987 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5667981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667987
#print axioms cover_5667981

def root_5667980 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667980_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667980_right_fuel : Nat := 21
def small_5667980_right_count : Nat := 137
def small_5667980_right_encoded : String := "0F34D0F80CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FC0F878CFD000000030780010400000005128A7D050AD3577910D13CF800000001067ECE7F0000000612EA5908000000040B4D4400000000050000000600000006000000020F8750FD0780010400000006128A7D050AD3577910D13CF800000001067ECE7F0000000612EA5908000000040B4D4400108010F70B4D43FC00000006108010FD0000000600000003000000000000000600000006000000020000000300000000000000060000000413867108000000040C9A87000F8750F70C9A86FC0F878CFD00000003000000050F8750FD07800104128A41050000000200000005128A7D050AD3577910D13CF800000001022A457F13E201080B4D4400108010F70B4D43FC10804CFD0000000300000005000000070000000010804CF7000000000B4D43FC10804CFD0000000300000005108010FD08C001040000000600000007000000030000000413E1C508000000040B4D4400000000050000000A10D100F800000005000000010000000200000003000000000F878CF7000000000C9A86FC0F878CFD00000003000000050F8750FD07800104128A41050000000200000006128A7D050AD3577910D13CF800000001022A457F0000000613E1C508000000040DE7CA000E5FD8F70000000A00000000000000080000000600000002000000030F34D0FC045489FF1386AD080000000500000004000000050000000300000001"
theorem small_5667980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667980_right_root small_5667980_right_fuel small_5667980_right_count small_5667980_right_encoded = true := by
  decide +kernel
theorem small_5667980_right_covered : CoveredBy scale carrier boxes small_5667980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667980_right_root small_5667980_right_fuel small_5667980_right_count small_5667980_right_encoded small_5667980_right_checked

theorem cover_5667980 : CoveredBy scale carrier boxes root_5667980 := by
  apply coveredBy_split_literal root_5667980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667981 small_5667980_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667981
  · exact small_5667980_right_covered
#print axioms cover_5667980

def root_5667975 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667975_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667975_right_fuel : Nat := 1
def small_5667975_right_count : Nat := 1
def small_5667975_right_encoded : String := "00000000"
theorem small_5667975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667975_right_root small_5667975_right_fuel small_5667975_right_count small_5667975_right_encoded = true := by
  decide +kernel
theorem small_5667975_right_covered : CoveredBy scale carrier boxes small_5667975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667975_right_root small_5667975_right_fuel small_5667975_right_count small_5667975_right_encoded small_5667975_right_checked

theorem cover_5667975 : CoveredBy scale carrier boxes root_5667975 := by
  apply coveredBy_split_literal root_5667975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667980 small_5667975_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667980
  · exact small_5667975_right_covered
#print axioms cover_5667975

def root_5667974 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5667974 : CoveredBy scale carrier boxes root_5667974 := by
  apply coveredBy_split_literal root_5667974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2131.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667975
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2131.covered
#print axioms cover_5667974

def root_5667969 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667969_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5667969_right_fuel : Nat := 1
def small_5667969_right_count : Nat := 1
def small_5667969_right_encoded : String := "00000002"
theorem small_5667969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5667969_right_root small_5667969_right_fuel small_5667969_right_count small_5667969_right_encoded = true := by
  decide +kernel
theorem small_5667969_right_covered : CoveredBy scale carrier boxes small_5667969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5667969_right_root small_5667969_right_fuel small_5667969_right_count small_5667969_right_encoded small_5667969_right_checked

theorem cover_5667969 : CoveredBy scale carrier boxes root_5667969 := by
  apply coveredBy_split_literal root_5667969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667974 small_5667969_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667974
  · exact small_5667969_right_covered
#print axioms cover_5667969

def root_5666365 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5666365 : CoveredBy scale carrier boxes root_5666365 := by
  apply coveredBy_split_literal root_5666365 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2126.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5667969 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2126.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5667969
#print axioms cover_5666365

def root_5666359 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666359_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666359_left_fuel : Nat := 1
def small_5666359_left_count : Nat := 1
def small_5666359_left_encoded : String := "00000004"
theorem small_5666359_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666359_left_root small_5666359_left_fuel small_5666359_left_count small_5666359_left_encoded = true := by
  decide +kernel
theorem small_5666359_left_covered : CoveredBy scale carrier boxes small_5666359_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666359_left_root small_5666359_left_fuel small_5666359_left_count small_5666359_left_encoded small_5666359_left_checked

theorem cover_5666359 : CoveredBy scale carrier boxes root_5666359 := by
  apply coveredBy_split_literal root_5666359 small_5666359_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666365 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5666359_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666365
#print axioms cover_5666359

def root_5666049 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666049_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666049_left_fuel : Nat := 25
def small_5666049_left_count : Nat := 145
def small_5666049_left_encoded : String := "12073D0805000104135D4505000000020CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D108000000040C9A87000F8750F70C9A86F8000000060000000900000000000000060000000300000006000000000F34D1000000000000000006135D81050CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F8750F70C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010400000006128A7D050AD3577F0000000610D10108000000040B4D4400108010F70DE7C9F800000006000000080000000000000006000000020F8750FD00000006000000030F8750F90C9A86FC0F878CFD000000030780010400000009000000090F8750FD07800104128A41050000000200000006128A7D050AD3577F0000000910D10108000000040B4D44000000000810804CF70000000000000009000000020000000300000001000000000F878CF7000000000C9A86F80F878CF900000001000000060F8750F90C9A86FC000000090F8750FD0000000600000003000000010F34D0FC0CFD9BFF000000090F34D108000000040C9A87000F8750F70C9A86F80F878CF90000000100000009000000090000000000000009000000030F34D0F80CFD9BFD000000060F34D0FC000000060000000300000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC0000000900000003000000060000000200000004"
theorem small_5666049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666049_left_root small_5666049_left_fuel small_5666049_left_count small_5666049_left_encoded = true := by
  decide +kernel
theorem small_5666049_left_covered : CoveredBy scale carrier boxes small_5666049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666049_left_root small_5666049_left_fuel small_5666049_left_count small_5666049_left_encoded small_5666049_left_checked

theorem cover_5666049 : CoveredBy scale carrier boxes root_5666049 := by
  apply coveredBy_split_literal root_5666049 small_5666049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666359 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5666049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666359
#print axioms cover_5666049

def root_5666043 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666043_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666043_left_fuel : Nat := 1
def small_5666043_left_count : Nat := 1
def small_5666043_left_encoded : String := "00000003"
theorem small_5666043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666043_left_root small_5666043_left_fuel small_5666043_left_count small_5666043_left_encoded = true := by
  decide +kernel
theorem small_5666043_left_covered : CoveredBy scale carrier boxes small_5666043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666043_left_root small_5666043_left_fuel small_5666043_left_count small_5666043_left_encoded small_5666043_left_checked

theorem cover_5666043 : CoveredBy scale carrier boxes root_5666043 := by
  apply coveredBy_split_literal root_5666043 small_5666043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666049 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5666043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666049
#print axioms cover_5666043

def root_5666042 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666042_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666042_right_fuel : Nat := 15
def small_5666042_right_count : Nat := 65
def small_5666042_right_encoded : String := "120700FC08A912FF12073D0805000104135D4505000000020CFD9BF70F350D000CFD9BF90F350CF8000000010000000900000005000000000F34D1000000000000000009135D81050CFD9BF70F350D000CFD9BF90F350CF8000000010000000900000009000000000F34D10000000000000000090000000200000004120701080000000405000104135D45050000000200000005135D81050CFD9BF70F350D000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A8700000000050000000900000004000000050000000500000005000000000F34D100000000000CFD9BF90F350CF80000000100000009000000050000000200000003"
theorem small_5666042_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666042_right_root small_5666042_right_fuel small_5666042_right_count small_5666042_right_encoded = true := by
  decide +kernel
theorem small_5666042_right_covered : CoveredBy scale carrier boxes small_5666042_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666042_right_root small_5666042_right_fuel small_5666042_right_count small_5666042_right_encoded small_5666042_right_checked

theorem cover_5666042 : CoveredBy scale carrier boxes root_5666042 := by
  apply coveredBy_split_literal root_5666042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666043 small_5666042_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666043
  · exact small_5666042_right_covered
#print axioms cover_5666042

def root_5666036 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666036_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666036_left_fuel : Nat := 1
def small_5666036_left_count : Nat := 1
def small_5666036_left_encoded : String := "00000001"
theorem small_5666036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666036_left_root small_5666036_left_fuel small_5666036_left_count small_5666036_left_encoded = true := by
  decide +kernel
theorem small_5666036_left_covered : CoveredBy scale carrier boxes small_5666036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666036_left_root small_5666036_left_fuel small_5666036_left_count small_5666036_left_encoded small_5666036_left_checked

theorem cover_5666036 : CoveredBy scale carrier boxes root_5666036 := by
  apply coveredBy_split_literal root_5666036 small_5666036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666042 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5666036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666042
#print axioms cover_5666036

def root_5666035 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666035_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666035_right_fuel : Nat := 15
def small_5666035_right_count : Nat := 35
def small_5666035_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF00000006120701080000000405000104135D45050000000200000005135D81050CFD9BF70F350D00045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF00000006000000050000000500000005000000000F34D100000000000000000600000002120700FC000000050000000300000001"
theorem small_5666035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666035_right_root small_5666035_right_fuel small_5666035_right_count small_5666035_right_encoded = true := by
  decide +kernel
theorem small_5666035_right_covered : CoveredBy scale carrier boxes small_5666035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666035_right_root small_5666035_right_fuel small_5666035_right_count small_5666035_right_encoded small_5666035_right_checked

theorem cover_5666035 : CoveredBy scale carrier boxes root_5666035 := by
  apply coveredBy_split_literal root_5666035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666036 small_5666035_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666036
  · exact small_5666035_right_covered
#print axioms cover_5666035

def root_5666030 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666030_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666030_right_fuel : Nat := 1
def small_5666030_right_count : Nat := 1
def small_5666030_right_encoded : String := "00000000"
theorem small_5666030_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666030_right_root small_5666030_right_fuel small_5666030_right_count small_5666030_right_encoded = true := by
  decide +kernel
theorem small_5666030_right_covered : CoveredBy scale carrier boxes small_5666030_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666030_right_root small_5666030_right_fuel small_5666030_right_count small_5666030_right_encoded small_5666030_right_checked

theorem cover_5666030 : CoveredBy scale carrier boxes root_5666030 := by
  apply coveredBy_split_literal root_5666030 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666035 small_5666030_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666035
  · exact small_5666030_right_covered
#print axioms cover_5666030

def root_5666029 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666029_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666029_right_fuel : Nat := 28
def small_5666029_right_count : Nat := 181
def small_5666029_right_encoded : String := "120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000104135D450500000002045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F8000000060F8750F90C9A86FC000000060F8750FD0000000600000003000000010F34D0FC00000005000000030F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000060F34D0FC000000050000000300000006135D8105045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F800000006000000090000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030780010400000006128A7D05067ECE770000000900000009000000020F8750FD00000006000000030F8750F90C9A86FC0F878CFD00000003000000090F8750FD07800104128A41050000000200000006128A7D05067ECE7712EA9500022A457F0000000913E1C508000000040000000900000000000000090000000200000003000000010F34D0FC00000009000000030F34D0F80CFD9BFD000000060F34D0FC0000000500000003000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF9000000010C9A86FC00000006000000060F8750F90C9A86FC000000090F8750FD07800104000000060000000900000003000000010F34D0FC00000009000000030F34D0F80CFD9BFD000000060F34D0FC00000005000000030000000100000002120700FC08A912FF0000000912070108000000040500010400000005135D8105045489F700000009000000050000000200000003120700F808A912FD00000006120700FC000000050000000300000001"
theorem small_5666029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666029_right_root small_5666029_right_fuel small_5666029_right_count small_5666029_right_encoded = true := by
  decide +kernel
theorem small_5666029_right_covered : CoveredBy scale carrier boxes small_5666029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666029_right_root small_5666029_right_fuel small_5666029_right_count small_5666029_right_encoded small_5666029_right_checked

theorem cover_5666029 : CoveredBy scale carrier boxes root_5666029 := by
  apply coveredBy_split_literal root_5666029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666030 small_5666029_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666030
  · exact small_5666029_right_covered
#print axioms cover_5666029

def root_5666023 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5666023_left_fuel : Nat := 1
def small_5666023_left_count : Nat := 1
def small_5666023_left_encoded : String := "00000004"
theorem small_5666023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5666023_left_root small_5666023_left_fuel small_5666023_left_count small_5666023_left_encoded = true := by
  decide +kernel
theorem small_5666023_left_covered : CoveredBy scale carrier boxes small_5666023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5666023_left_root small_5666023_left_fuel small_5666023_left_count small_5666023_left_encoded small_5666023_left_checked

theorem cover_5666023 : CoveredBy scale carrier boxes root_5666023 := by
  apply coveredBy_split_literal root_5666023 small_5666023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666029 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5666023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666029
#print axioms cover_5666023

def root_5665985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665985_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665985_left_fuel : Nat := 8
def small_5665985_left_count : Nat := 17
def small_5665985_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073CF80000000108A912FD00000006120700FC0000000600000003000000060000000012070100000000000000000600000004"
theorem small_5665985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665985_left_root small_5665985_left_fuel small_5665985_left_count small_5665985_left_encoded = true := by
  decide +kernel
theorem small_5665985_left_covered : CoveredBy scale carrier boxes small_5665985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665985_left_root small_5665985_left_fuel small_5665985_left_count small_5665985_left_encoded small_5665985_left_checked

theorem cover_5665985 : CoveredBy scale carrier boxes root_5665985 := by
  apply coveredBy_split_literal root_5665985 small_5665985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5666023 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5665985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5666023
#print axioms cover_5665985

def root_5665979 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665979_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5665979_left_fuel : Nat := 1
def small_5665979_left_count : Nat := 1
def small_5665979_left_encoded : String := "00000003"
theorem small_5665979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5665979_left_root small_5665979_left_fuel small_5665979_left_count small_5665979_left_encoded = true := by
  decide +kernel
theorem small_5665979_left_covered : CoveredBy scale carrier boxes small_5665979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5665979_left_root small_5665979_left_fuel small_5665979_left_count small_5665979_left_encoded small_5665979_left_checked

theorem cover_5665979 : CoveredBy scale carrier boxes root_5665979 := by
  apply coveredBy_split_literal root_5665979 small_5665979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.root_5665985 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5665979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397.cover_5665985
#print axioms cover_5665979

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0397
