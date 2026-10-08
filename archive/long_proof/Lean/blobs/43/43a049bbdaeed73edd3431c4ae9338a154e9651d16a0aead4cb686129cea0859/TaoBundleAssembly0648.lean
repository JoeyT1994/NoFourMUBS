import TaoBundleAssembly0647
import TaoBundleChunkBatch0889
import TaoBundleChunkBatch0890
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648
def root_9511534 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511534_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511534_left_fuel : Nat := 16
def small_9511534_left_count : Nat := 81
def small_9511534_left_encoded : String := "0F875107000000030280010213D7B0F907800108128A40FF0DE7CA00000000050E601501000000050000000000000004000000070000000113D7ECF90000000107800108128A40FF0DE7CA000E5FD901000000000B4D43FA10804D050B4D44060000000510804D0700000005000000030000000210801105000000020B4D440610801107000000030000000710804D0703C0010213A510F90640010800000005000000070000000113A54CF9000000010640010812FF70FF000000080000000400000007000000030E6015010B4D43FA10804D050B4D440600000005000000070000000210801105000000020B4D44060000000710804D0703C001020000000713A54CF9000000010640010812FF70FF000000070000000400000007000000030000000000000004128A7CFF000000040DE7CA000E5FD901000000000000000700000007"
theorem small_9511534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9511534_left_root small_9511534_left_fuel small_9511534_left_count small_9511534_left_encoded = true := by
  decide +kernel
theorem small_9511534_left_covered : CoveredBy scale carrier boxes small_9511534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9511534_left_root small_9511534_left_fuel small_9511534_left_count small_9511534_left_encoded small_9511534_left_checked

theorem cover_9511534 : CoveredBy scale carrier boxes root_9511534 := by
  apply coveredBy_split_literal root_9511534 small_9511534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.root_9511708 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9511534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0647.cover_9511708
#print axioms cover_9511534

def root_9511528 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511528_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511528_left_fuel : Nat := 1
def small_9511528_left_count : Nat := 1
def small_9511528_left_encoded : String := "00000002"
theorem small_9511528_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9511528_left_root small_9511528_left_fuel small_9511528_left_count small_9511528_left_encoded = true := by
  decide +kernel
theorem small_9511528_left_covered : CoveredBy scale carrier boxes small_9511528_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9511528_left_root small_9511528_left_fuel small_9511528_left_count small_9511528_left_encoded small_9511528_left_checked

theorem cover_9511528 : CoveredBy scale carrier boxes root_9511528 := by
  apply coveredBy_split_literal root_9511528 small_9511528_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9511534 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9511528_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9511534
#print axioms cover_9511528

def root_9511228 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511228_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511228_left_fuel : Nat := 20
def small_9511228_left_count : Nat := 143
def small_9511228_left_encoded : String := "0F878D050C9A87060F875107000000030280010213D7B0F90780010800000005000000070000000113D7ECF90000000107800108128A40FF0000000500000004128A7CFF00000004000000070F878D070280010213D7B0F90780010800000005128A7CFF000000040DE7CA000E5FD901000000000DE7C9FA000000050E5FD905000000020DE7CA0600000005000000060E6015010DE7C9FA0E60150500000006000000020000000A000000000000000113D7ECF90000000107800108128A40FF0DE7CA000E5FD901000000000DE7C9FA000000050E5FD905000000020DE7CA06000000050E60150703C001020000000513A54CF900000001064001080000000512FFACFF000000040DAED887000000060E9661060000000500000003000000030E6015010DE7C9FA0E6015050DE7CA060000000500000008000000020E5FD905000000020DE7CA060E5FD9070000000303C001020000000513A54CF900000001064001080000000512FFACFF000000040DAED88100000008000000070E60150703C0010213A510F90640010800000005000000060000000100000008000000030000000000000004128A7CFF000000040DE7CA000E5FD901000000000DE7C9FA0E6015050DE7CA060E5FD90700000003000000070E6015070000000600000003000000020E5FD905000000020DE7CA060E5FD90700000003000000070E60150703C001020000000600000008000000030E6015010DE7C9FA000000080E5FD905000000020DE7CA060000000700000008000000000000000300000002"
theorem small_9511228_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9511228_left_root small_9511228_left_fuel small_9511228_left_count small_9511228_left_encoded = true := by
  decide +kernel
theorem small_9511228_left_covered : CoveredBy scale carrier boxes small_9511228_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9511228_left_root small_9511228_left_fuel small_9511228_left_count small_9511228_left_encoded small_9511228_left_checked

theorem cover_9511228 : CoveredBy scale carrier boxes root_9511228 := by
  apply coveredBy_split_literal root_9511228 small_9511228_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9511528 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9511228_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9511528
#print axioms cover_9511228

def root_9511223 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511223_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9511223_right_fuel : Nat := 1
def small_9511223_right_count : Nat := 1
def small_9511223_right_encoded : String := "00000000"
theorem small_9511223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9511223_right_root small_9511223_right_fuel small_9511223_right_count small_9511223_right_encoded = true := by
  decide +kernel
theorem small_9511223_right_covered : CoveredBy scale carrier boxes small_9511223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9511223_right_root small_9511223_right_fuel small_9511223_right_count small_9511223_right_encoded small_9511223_right_checked

theorem cover_9511223 : CoveredBy scale carrier boxes root_9511223 := by
  apply coveredBy_split_literal root_9511223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9511228 small_9511223_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9511228
  · exact small_9511223_right_covered
#print axioms cover_9511223

def root_9510157 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9510157 : CoveredBy scale carrier boxes root_9510157 := by
  apply coveredBy_split_literal root_9510157 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3556.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9511223 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3556.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9511223
#print axioms cover_9510157

def root_9510152 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9510152_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9510152_right_fuel : Nat := 1
def small_9510152_right_count : Nat := 1
def small_9510152_right_encoded : String := "00000003"
theorem small_9510152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9510152_right_root small_9510152_right_fuel small_9510152_right_count small_9510152_right_encoded = true := by
  decide +kernel
theorem small_9510152_right_covered : CoveredBy scale carrier boxes small_9510152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9510152_right_root small_9510152_right_fuel small_9510152_right_count small_9510152_right_encoded small_9510152_right_checked

theorem cover_9510152 : CoveredBy scale carrier boxes root_9510152 := by
  apply coveredBy_split_literal root_9510152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9510157 small_9510152_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9510157
  · exact small_9510152_right_covered
#print axioms cover_9510152

def root_9509220 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509220_left_fuel : Nat := 30
def small_9509220_left_count : Nat := 435
def small_9509220_left_encoded : String := "0F34D106000000030C9A87000F875101000000000C9A86FA0F878D05028001020000000613D7ECF90000000107800108128A40FF0AD357870000000610D13D060B4D44000000000500000006000000030000000400000006000000020F875105000000020280010213D7B0F907800108128A40FF0AD357870000000610D13D06000000060000000300000004000000060000000113D7ECF90000000107800108128A40FF0AD3578710D10106000000030000000610D13D060B4D440010801101000000000B4D43FA10804D0503C001020000000513A54CF9000000010000000600000002108011050000000203C0010213A510F9000000060000000113A54CF9000000010640010812FF70FF00000007000000040000000910804D010B4D43FA10804D0503C001020000000613A54CF90000000106400108000000060000000600000002108011050000000203C0010213A510F90640010800000006000000060000000113A54CF9000000010640010812FF70FF0BE879C7000000061011AD060BF3E5801008ED01000000000000000A100929010AA6A27A0000000610ED71050000000204600102000000060000000A00000000000000030000000412FFACFF000000040BE879C7000000061011AD060BF3E580000000090000000900000003000000000000000300000004128A7CFF000000040AD3578710D10106000000030000000610D13D060B4D440010801101000000000B4D43FA10804D0500000006000000020000000910804D010B4D43FA10804D050000000600000002108011050000000203C001020000000913A54CF90000000108C0010811FBE8FF00000009000000040000000900000000000000030F878D010C9A86FA0F878D050280010213D7B0F90780010800000006000000060000000113D7ECF90000000107800108128A40FF0AD357870000000610D13D060DE7CA000E5FD901000000000DE7C9FA000000060E5FD905000000020000000600000008000000030000000400000008000000020F875105000000020280010213D7B0F907800108128A40FF0AD357870000000610D13D060DE7CA000E5FD90100000000000000060E6015010B4D43FA00000006108011050000000200000006000000000000000300000004128A7CFF000000040AD357870000000610D13D060DE7CA000E5FD90100000000000000060E6015010B4D43FA0000000610801105000000020000000600000000000000030000000113D7ECF90000000107800108128A40FF0AD3578710D10106000000030DE7CA000E5FD90100000000000000060000000810D13D060DE7CA000E5FD901000000000B4D43FA10804D0503C001020000000613A54CF9000000010640010812FF70FF00000006000000040000000600000002108011050000000203C0010213A510F90640010812FF70FF0000000600000004000000060000000113A54CF9000000010640010812FF70FF0BE879C71011710600000003000000061011AD060D4128800EFA1101000000000AA6A27A0000000610ED7105000000020460010200000006138418F90000000105A0010800000006000000060EFA4D010AA6A27A0000000610ED7105000000020460010200000006138418F90000000105A00108133134FF00000006000000040000000600000000000000030000000412FFACFF000000040BE879C7000000061011AD060D4128800EFA1101000000000AA6A27A0000000610ED710500000002000000060EFA4D010AA6A27A0000000610ED7105000000020460010200000006138418F9000000010000000800000000000000030E6015010B4D43FA10804D0503C00102000000060000000800000002108011050000000203C0010213A510F90640010812FF70FF0BE879C7000000061011AD060DAED8810E962500000000000000000600000006000000030000000412FFACFF000000040BE879C7000000061011AD0600000006000000030000000113A54CF9000000010640010812FF70FF0BE879C7000000081011AD060DAED881000000080E9661000AA6A27A0000000810ED7105000000020460010200000006138418F9000000010000000800000000000000030000000412FFACFF0000000400000008000000000000000300000004128A7CFF000000040AD3578710D10106000000030000000810D13D060DE7CA000E5FD901000000000B4D43FA10804D0503C00102000000060000000800000002108011050000000203C0010213A510F908C0010811FBE8FF0000000600000004000000060000000113A54CF90000000108C0010811FBE8FF0BE879C7000000061011AD060D4128800EFA110100000000000000090EFA4D0100000008000000000000000300000004000000050E60150100000008000000000000000300000000"
theorem small_9509220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9509220_left_root small_9509220_left_fuel small_9509220_left_count small_9509220_left_encoded = true := by
  decide +kernel
theorem small_9509220_left_covered : CoveredBy scale carrier boxes small_9509220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9509220_left_root small_9509220_left_fuel small_9509220_left_count small_9509220_left_encoded small_9509220_left_checked

theorem cover_9509220 : CoveredBy scale carrier boxes root_9509220 := by
  apply coveredBy_split_literal root_9509220 small_9509220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9510152 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9509220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9510152
#print axioms cover_9509220

def root_9509214 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509214_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509214_left_fuel : Nat := 1
def small_9509214_left_count : Nat := 1
def small_9509214_left_encoded : String := "00000002"
theorem small_9509214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9509214_left_root small_9509214_left_fuel small_9509214_left_count small_9509214_left_encoded = true := by
  decide +kernel
theorem small_9509214_left_covered : CoveredBy scale carrier boxes small_9509214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9509214_left_root small_9509214_left_fuel small_9509214_left_count small_9509214_left_encoded small_9509214_left_checked

theorem cover_9509214 : CoveredBy scale carrier boxes root_9509214 := by
  apply coveredBy_split_literal root_9509214 small_9509214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9509220 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9509214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9509220
#print axioms cover_9509214

def root_9509146 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509146_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509146_left_fuel : Nat := 12
def small_9509146_left_count : Nat := 31
def small_9509146_left_encoded : String := "0F34D0FA0CFD9C070F34D106000000030C9A87000F87510100000000000000060F878D0100000008000000000F350D060C9A8700000000050F878D010C9A8706000000050F878D07028001020000000513D7ECF9000000010780010800000005128A7CFF000000040000000800000003000000000000000300000002"
theorem small_9509146_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9509146_left_root small_9509146_left_fuel small_9509146_left_count small_9509146_left_encoded = true := by
  decide +kernel
theorem small_9509146_left_covered : CoveredBy scale carrier boxes small_9509146_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9509146_left_root small_9509146_left_fuel small_9509146_left_count small_9509146_left_encoded small_9509146_left_checked

theorem cover_9509146 : CoveredBy scale carrier boxes root_9509146 := by
  apply coveredBy_split_literal root_9509146 small_9509146_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9509214 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9509146_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9509214
#print axioms cover_9509146

def root_9509141 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509141_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9509141_right_fuel : Nat := 1
def small_9509141_right_count : Nat := 1
def small_9509141_right_encoded : String := "00000000"
theorem small_9509141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9509141_right_root small_9509141_right_fuel small_9509141_right_count small_9509141_right_encoded = true := by
  decide +kernel
theorem small_9509141_right_covered : CoveredBy scale carrier boxes small_9509141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9509141_right_root small_9509141_right_fuel small_9509141_right_count small_9509141_right_encoded small_9509141_right_checked

theorem cover_9509141 : CoveredBy scale carrier boxes root_9509141 := by
  apply coveredBy_split_literal root_9509141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9509146 small_9509141_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9509146
  · exact small_9509141_right_covered
#print axioms cover_9509141

def root_9508569 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9508569_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9508569_left_fuel : Nat := 29
def small_9508569_left_count : Nat := 279
def small_9508569_left_encoded : String := "0F34D100000000000CFD9C050F34D0FA0CFD9C07000000080F350D060C9A87060F87510700000003028001020000000513D7ECF9000000010780010800000005000000080F878D07000000080000000300000003000000020F350CFA000000020CFD9C070F34D106000000030C9A86FA000000080F875105000000020280010213D7B0F907800108128A40FF0AD357810000000810D13D000AD357870000000610D13D060B4D43FA000000061080110500000002014001020000000613F614F90000000100000008000000030000000000000004128A7CFF00000004000000080000000113D7ECF90000000107800108128A40FF0AD35781000000080000000800000004000000080F350D060C9A86FA0F878D050C9A87060F87510700000003028001020000000A13D7ECF90000000107800108128A40FF0AD357810000000A10D13D000DE7C9FA000000050000000A0000000000000004000000070F878D070280010213D7B0F907800108128A40FF0AD357810000000810D13D000DE7C9FA000000050000000A0000000000000004128A7CFF000000040000000A0000000113D7ECF90000000107800108128A40FF0AD357810000000810D13D000DE7C9FA000000080E5FD905000000020DE7CA060E5FD9070000000303C001020000000A000000080000000800000000000000040000000800000003000000020F875105000000020C9A87060F87510700000003028001020000000A13D7ECF90000000107800108128A40FF0AD357810000000A10D13D000B4D43FA000000070000000A0000000000000004000000070F878D070280010213D7B0F907800108128A40FF0AD357810000000A10D13D000B4D43FA10804D050000000A000000020000000A00000000000000040000000A0000000113D7ECF90000000107800108128A40FF0AD3578110D10100000000000B4D43FA000000080000000A10D13D000B4D43FA10804D050DE7CA060E5FD9070000000303C001020000000A13A54CF9000000010640010812FF70FF0BE879C1000000081011AD000BF3E57A000000070000000A0000000000000004000000070E60150703C001020000000800000008000000030000000210801105000000020DE7CA060E5FD9070000000303C001020000000A13A54CF9000000010640010812FF70FF0BE879C10000000A1011AD000AA6A27A000000070000000A0000000000000004000000070E60150703C0010213A510F90640010812FF70FF0BE879C10000000A1011AD000DAED8870000000A0000000A00000000000000040000000A0000000113A54CF9000000010640010812FF70FF0BE879C1000000081011AD000DAED887000000080E9661060AA6A27A000000080000000A00000003000000000000000412FFACFF0000000400000008000000030000000000000004128A7CFF000000040AD357810000000A10D13D000B4D43FA10804D050DE7CA0600000007000000080000000210801105000000020DE7CA06000000070E6015070000000800000003000000000000000300000003"
theorem small_9508569_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9508569_left_root small_9508569_left_fuel small_9508569_left_count small_9508569_left_encoded = true := by
  decide +kernel
theorem small_9508569_left_covered : CoveredBy scale carrier boxes small_9508569_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9508569_left_root small_9508569_left_fuel small_9508569_left_count small_9508569_left_encoded small_9508569_left_checked

theorem cover_9508569 : CoveredBy scale carrier boxes root_9508569 := by
  apply coveredBy_split_literal root_9508569 small_9508569_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9509141 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9508569_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9509141
#print axioms cover_9508569

def root_9508563 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9508563_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9508563_left_fuel : Nat := 1
def small_9508563_left_count : Nat := 1
def small_9508563_left_encoded : String := "00000004"
theorem small_9508563_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9508563_left_root small_9508563_left_fuel small_9508563_left_count small_9508563_left_encoded = true := by
  decide +kernel
theorem small_9508563_left_covered : CoveredBy scale carrier boxes small_9508563_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9508563_left_root small_9508563_left_fuel small_9508563_left_count small_9508563_left_encoded small_9508563_left_checked

theorem cover_9508563 : CoveredBy scale carrier boxes root_9508563 := by
  apply coveredBy_split_literal root_9508563 small_9508563_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9508569 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9508563_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9508569
#print axioms cover_9508563

def root_9506067 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9506067 : CoveredBy scale carrier boxes root_9506067 := by
  apply coveredBy_split_literal root_9506067 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3555.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9508563 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3555.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9508563
#print axioms cover_9506067

def root_9506062 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9506062_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9506062_right_fuel : Nat := 1
def small_9506062_right_count : Nat := 1
def small_9506062_right_encoded : String := "00000001"
theorem small_9506062_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9506062_right_root small_9506062_right_fuel small_9506062_right_count small_9506062_right_encoded = true := by
  decide +kernel
theorem small_9506062_right_covered : CoveredBy scale carrier boxes small_9506062_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9506062_right_root small_9506062_right_fuel small_9506062_right_count small_9506062_right_encoded small_9506062_right_checked

theorem cover_9506062 : CoveredBy scale carrier boxes root_9506062 := by
  apply coveredBy_split_literal root_9506062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9506067 small_9506062_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9506067
  · exact small_9506062_right_covered
#print axioms cover_9506062

def root_9518097 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9518097_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9518097_right_fuel : Nat := 20
def small_9518097_right_count : Nat := 203
def small_9518097_right_encoded : String := "128A7CF9000000010280010813D7B0FF0DE7CA000E5FD901000000000B4D43FA0000000A000000070E6015010B4D43FA10804D050DE7CA060E5FD90700000003000000090E60150700000007000000030000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F900000009000000010000000900000007000000000000000413D7ECFF000000040DE7CA000E5FD901000000000B4D43FA10804D050DE7CA060E5FD907000000030000000A0000000A0000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F903C001080000000A13A54CFF000000040D4128800000000A0000000A000000010000000A0000000A0E6015010B4D43FA10804D050DE7CA060E5FD9070000000308C0010211FBE8F903C0010813A510FF000000090000000413A54CFF000000040DAED8810E96250000000000000000080E9661000BF3E57A100929050D4128860EFA1107000000030000000900000008000000021008ED05000000020D4128860EFA1107000000030000000A0000000A000000000000000111FC24F90000000103C0010813A510FF000000090000000413A54CFF000000040DAED881000000080000000A0E60150708C0010211FBE8F903C0010800000008000000080000000100000008000000030000000210801105000000020DE7CA060E5FD9070000000308C0010211FBE8F903C0010813A510FF0DAED8810E962500000000000AA6A27A00000009000000060E9661000AA6A27A0000000A00000006000000000000000413A54CFF000000040DAED8810E962500000000000AA6A27A10EDAD050D412886000000060EFA4D07000000080000000300000002000000060E9661000AA6A27A10EDAD050D4128860EFA110700000003000000060000000A0000000210ED71050000000200000006000000000000000111FC24F90000000103C001080000000613A54CFF000000040DAED881000000060E96610000000006000000000E60150708C0010211FBE8F903C0010813A510FF0DAED881000000070000000A0000000413A54CFF000000040DAED8810E96250000000000000000080E9661000000000A00000000000000010000000A0000000300000000"
theorem small_9518097_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9518097_right_root small_9518097_right_fuel small_9518097_right_count small_9518097_right_encoded = true := by
  decide +kernel
theorem small_9518097_right_covered : CoveredBy scale carrier boxes small_9518097_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9518097_right_root small_9518097_right_fuel small_9518097_right_count small_9518097_right_encoded small_9518097_right_checked

theorem cover_9518097 : CoveredBy scale carrier boxes root_9518097 := by
  apply coveredBy_split_literal root_9518097 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3558.root small_9518097_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3558.covered
  · exact small_9518097_right_covered
#print axioms cover_9518097

def root_9518092 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9518092_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9518092_right_fuel : Nat := 1
def small_9518092_right_count : Nat := 1
def small_9518092_right_encoded : String := "00000003"
theorem small_9518092_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9518092_right_root small_9518092_right_fuel small_9518092_right_count small_9518092_right_encoded = true := by
  decide +kernel
theorem small_9518092_right_covered : CoveredBy scale carrier boxes small_9518092_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9518092_right_root small_9518092_right_fuel small_9518092_right_count small_9518092_right_encoded small_9518092_right_checked

theorem cover_9518092 : CoveredBy scale carrier boxes root_9518092 := by
  apply coveredBy_split_literal root_9518092 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.root_9518097 small_9518092_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648.cover_9518097
  · exact small_9518092_right_covered
#print axioms cover_9518092

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0648
