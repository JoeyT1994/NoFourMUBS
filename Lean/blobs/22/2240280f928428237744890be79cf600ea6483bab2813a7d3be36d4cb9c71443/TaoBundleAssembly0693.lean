import TaoBundleAssembly0692
import TaoBundleChunkBatch0968
import TaoBundleChunkBatch0969
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693
def root_10324314 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10324314_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10324314_left_fuel : Nat := 18
def small_10324314_left_count : Nat := 193
def small_10324314_left_encoded : String := "0F878D0907800104128A40FB022A458113E1C500000000000DE7CA020E5FD903000000010B4D43FC10804D07000000050000000310801107000000030DE7C9FE0E60150900000005000000040E5FD909000000040640010412FF70FB0115234100000005000000080000000212FFACFB000000020115234113F85900000000000D4128820EFA110300000001000000060000000613F895000D412882000000080000000A000000000E6015030B4D43FC10804D070DE7C9FE000000050E5FD90900000004064001040000000512FFACFB0000000201152341000000050000000A0000000310801107000000030DE7C9FE0000000A0E5FD90900000004064001040000000A12FFACFB000000020000000A0000000113E201000DE7CA020E5FD903000000010B4D43FC10804D070DE7C9FE0E60150900000005000000040E5FD909000000040640010412FF70FB000000050000000212FFACFB00000002033F67C113BBF500000000000D412882000000050000000A0000000A0000000310801107000000030DE7C9FE000000080E5FD90900000004000000080E6015030B4D43FC10804D070000000A000000030000000A000000010000000000000002128A7CFB00000002022A458113E1C500000000000DE7CA020E5FD903000000010B4D43FC10804D070DE7C9FE000000060E5FD90900000004000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C0010411FBE8FB011523410000000613F895000D41288200000008000000060000000000000002000000060E6015030B4D43FC10804D07000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C001040000000A000000060000000113E201000DE7CA020E5FD903000000010B4D43FC10804D070DE7C9FE0000000A0E5FD9090000000408C0010411FBE8FB033F67C113BBF500000000000D4128820EFA11030000000100000006000000060000000A0000000211FC24FB000000020000000A0000000310801107000000030000000A0E6015030000000A000000010000000000000004"
theorem small_10324314_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10324314_left_root small_10324314_left_fuel small_10324314_left_count small_10324314_left_encoded = true := by
  decide +kernel
theorem small_10324314_left_covered : CoveredBy scale carrier boxes small_10324314_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10324314_left_root small_10324314_left_fuel small_10324314_left_count small_10324314_left_encoded small_10324314_left_checked

theorem cover_10324314 : CoveredBy scale carrier boxes root_10324314 := by
  apply coveredBy_split_literal root_10324314 small_10324314_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0692.root_10324728 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10324314_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0692.cover_10324728
#print axioms cover_10324314

def root_10324308 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10324308_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10324308_left_fuel : Nat := 1
def small_10324308_left_count : Nat := 1
def small_10324308_left_encoded : String := "00000003"
theorem small_10324308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10324308_left_root small_10324308_left_fuel small_10324308_left_count small_10324308_left_encoded = true := by
  decide +kernel
theorem small_10324308_left_covered : CoveredBy scale carrier boxes small_10324308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10324308_left_root small_10324308_left_fuel small_10324308_left_count small_10324308_left_encoded small_10324308_left_checked

theorem cover_10324308 : CoveredBy scale carrier boxes root_10324308 := by
  apply coveredBy_split_literal root_10324308 small_10324308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10324314 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10324308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10324314
#print axioms cover_10324308

def root_10323466 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10323466_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10323466_left_fuel : Nat := 25
def small_10323466_left_count : Nat := 397
def small_10323466_left_encoded : String := "0F878D070C9A86FE0F878D0907800104128A40FB022A45810000000513E201000DE7CA02000000050E60150300000005000000010000000000000002128A7CFB00000002022A458113E1C500000000000DE7CA020E5FD90300000001000000060000000613E201000DE7CA020E5FD903000000010DE7C9FC0E6015070DE7C9FE000000050E5FD9090000000408C001040000000500000006000000030E5FD907000000030DE7C9FE0E60150908C001040000000500000006000000040E5FD9090000000408C0010411FBE8FB033F67C10000000613BC31000000000A0000000000000002000000060E6015030DE7C9FC0E6015070DE7C9FE000000050E5FD9090000000400000006000000030E5FD907000000030DE7C9FE0000000A0E5FD9090000000408C001040000000A000000060000000100000000000000040F8751090000000407800104128A40FB022A458113E1C500000000000DE7CA020E5FD903000000010DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09000000050000000410801109000000040640010412FF70FB0115234100000005000000070000000212FFACFB000000020115234113F85900000000000D4128820EFA110300000001000000060000000613F895000D4128820EFA1103000000010D41287C0EFA4D0700000005000000030EFA1107000000030AA6A27E10EDAD0906E00104000000050000000600000004000000090EFA4D030D41287C000000070EFA1107000000030AA6A27E0000000610ED7109000000040000000700000001000000000E6015030DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09064001040000000512FFACFB00000002011523410000000500000007000000041080110900000004064001040000000712FFACFB000000020115234100000008000000070000000113E201000DE7CA020E5FD903000000010DE7C9FC0E60150700000007000000030E5FD907000000030B4D43FE10804D09064001040000000712FFACFB00000002033F67C113BBF500000000000D41288200000005000000070000000700000004108011090000000400000007000000070000000000000002128A7CFB00000002022A458113E1C500000000000DE7CA020E5FD903000000010DE7C9FC0E6015070B4D43FE00000006108011090000000400000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010411FBE8FB011523410000000613F895000D41288200000009000000060000000000000002000000060E6015030DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010411FBE8FB011523410000000613F895000DAED8830E9625020000000100000006000000060000000000000002000000060000000113E201000DE7CA020E5FD903000000010DE7C9FC0E6015070B4D43FE10804D0908C0010411FBE8FB00000007000000020000000600000004108011090000000408C001040000000711FC24FB00000002033F67C10000000600000007000000030E5FD907000000030B4D43FE10804D0908C0010411FBE8FB033F67C113BBF500000000000D4128820EFA110300000001000000060000000613BC31000D4128820EFA1103000000010D41287C000000070EFA1107000000030BF3E57E000000071008ED09000000040000000700000007000000000000000211FC24FB00000002033F67C10000000613BC31000D4128820EFA11030000000100000006000000060000000000000004108011090000000408C0010411FBE8FB033F67C113BBF500000000000D412882000000090EFA4D030D41287C0EFA4D0700000007000000030EFA1107000000030AA6A27E00000006000000090000000113BC31000D4128820000000900000007000000000000000211FC24FB00000002033F67C100000006000000090E6015030DE7C9FC0E6015070B4D43FE00000007108011090000000400000007000000030E5FD907000000030B4D43FE10804D0908C0010411FBE8FB000000070000000211FC24FB00000002033F67C10000000613BC31000000000A0000000000000004108011090000000408C0010411FBE8FB000000070000000211FC24FB00000002033F67C10000000600000007000000010000000000000003"
theorem small_10323466_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10323466_left_root small_10323466_left_fuel small_10323466_left_count small_10323466_left_encoded = true := by
  decide +kernel
theorem small_10323466_left_covered : CoveredBy scale carrier boxes small_10323466_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10323466_left_root small_10323466_left_fuel small_10323466_left_count small_10323466_left_encoded small_10323466_left_checked

theorem cover_10323466 : CoveredBy scale carrier boxes root_10323466 := by
  apply coveredBy_split_literal root_10323466 small_10323466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10324308 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10323466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10324308
#print axioms cover_10323466

def root_10323461 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10323461_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10323461_right_fuel : Nat := 1
def small_10323461_right_count : Nat := 1
def small_10323461_right_encoded : String := "00000001"
theorem small_10323461_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10323461_right_root small_10323461_right_fuel small_10323461_right_count small_10323461_right_encoded = true := by
  decide +kernel
theorem small_10323461_right_covered : CoveredBy scale carrier boxes small_10323461_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10323461_right_root small_10323461_right_fuel small_10323461_right_count small_10323461_right_encoded small_10323461_right_checked

theorem cover_10323461 : CoveredBy scale carrier boxes root_10323461 := by
  apply coveredBy_split_literal root_10323461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10323466 small_10323461_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10323466
  · exact small_10323461_right_covered
#print axioms cover_10323461

def root_10321361 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10321361 : CoveredBy scale carrier boxes root_10321361 := by
  apply coveredBy_split_literal root_10321361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3870.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10323461 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3870.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10323461
#print axioms cover_10321361

def root_10321355 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321355_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321355_left_fuel : Nat := 1
def small_10321355_left_count : Nat := 1
def small_10321355_left_encoded : String := "00000004"
theorem small_10321355_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10321355_left_root small_10321355_left_fuel small_10321355_left_count small_10321355_left_encoded = true := by
  decide +kernel
theorem small_10321355_left_covered : CoveredBy scale carrier boxes small_10321355_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10321355_left_root small_10321355_left_fuel small_10321355_left_count small_10321355_left_encoded small_10321355_left_checked

theorem cover_10321355 : CoveredBy scale carrier boxes root_10321355 := by
  apply coveredBy_split_literal root_10321355 small_10321355_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321361 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10321355_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321361
#print axioms cover_10321355

def root_10321225 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321225_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321225_left_fuel : Nat := 14
def small_10321225_left_count : Nat := 61
def small_10321225_left_encoded : String := "0F34D0FE0C9A87020F875103000000010C9A86FC0F878D0700000005000000030F8751070000000307800104128A40FB0000000500000002128A7CFB00000002022A458113E1C500000000000AD357890000000510D13CFE000000040B4D4402000000050000000613E201000AD357890000000A00000008000000000F878D030C9A86FC0F878D0700000005000000030F8751070000000307800104128A40FB022A4581000000050000000A00000002128A7CFB00000002022A458113E1C500000000000AD357890000000A10D13CFE000000040DE7CA020E5FD9030000000100000006000000060000000A0000000100000004"
theorem small_10321225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10321225_left_root small_10321225_left_fuel small_10321225_left_count small_10321225_left_encoded = true := by
  decide +kernel
theorem small_10321225_left_covered : CoveredBy scale carrier boxes small_10321225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10321225_left_root small_10321225_left_fuel small_10321225_left_count small_10321225_left_encoded small_10321225_left_checked

theorem cover_10321225 : CoveredBy scale carrier boxes root_10321225 := by
  apply coveredBy_split_literal root_10321225 small_10321225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321355 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10321225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321355
#print axioms cover_10321225

def root_10321219 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321219_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321219_left_fuel : Nat := 1
def small_10321219_left_count : Nat := 1
def small_10321219_left_encoded : String := "00000003"
theorem small_10321219_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10321219_left_root small_10321219_left_fuel small_10321219_left_count small_10321219_left_encoded = true := by
  decide +kernel
theorem small_10321219_left_covered : CoveredBy scale carrier boxes small_10321219_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10321219_left_root small_10321219_left_fuel small_10321219_left_count small_10321219_left_encoded small_10321219_left_checked

theorem cover_10321219 : CoveredBy scale carrier boxes root_10321219 := by
  apply coveredBy_split_literal root_10321219 small_10321219_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321225 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10321219_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321225
#print axioms cover_10321219

def root_10321027 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321027_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321027_left_fuel : Nat := 19
def small_10321027_left_count : Nat := 87
def small_10321027_left_encoded : String := "0F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A86FE0F878D0900000005000000040F8751090000000407800104128A40FB0000000500000002128A7CFB00000002022A458113E1C500000000000AD357870000000510D13CFC000000030B4D4402000000050000000613E201000AD3578710D100FC000000050000000310D13CFC000000030B4D440210801103000000010B4D43FE10804D0900000005000000040000000910804D030B4D43FE10804D090000000500000004108011090000000408C00104000000070000000900000001000000000F878D030C9A86FE0F878D0900000005000000040F8751090000000407800104128A40FB0000000700000002128A7CFB00000002022A458113E1C500000000000AD357870000000710D13CFC000000030DE7CA020E5FD903000000010000000600000006000000070000000100000003"
theorem small_10321027_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10321027_left_root small_10321027_left_fuel small_10321027_left_count small_10321027_left_encoded = true := by
  decide +kernel
theorem small_10321027_left_covered : CoveredBy scale carrier boxes small_10321027_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10321027_left_root small_10321027_left_fuel small_10321027_left_count small_10321027_left_encoded small_10321027_left_checked

theorem cover_10321027 : CoveredBy scale carrier boxes root_10321027 := by
  apply coveredBy_split_literal root_10321027 small_10321027_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321219 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10321027_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321219
#print axioms cover_10321027

def root_10321022 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321022_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10321022_right_fuel : Nat := 1
def small_10321022_right_count : Nat := 1
def small_10321022_right_encoded : String := "00000001"
theorem small_10321022_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10321022_right_root small_10321022_right_fuel small_10321022_right_count small_10321022_right_encoded = true := by
  decide +kernel
theorem small_10321022_right_covered : CoveredBy scale carrier boxes small_10321022_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10321022_right_root small_10321022_right_fuel small_10321022_right_count small_10321022_right_encoded small_10321022_right_checked

theorem cover_10321022 : CoveredBy scale carrier boxes root_10321022 := by
  apply coveredBy_split_literal root_10321022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321027 small_10321022_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321027
  · exact small_10321022_right_covered
#print axioms cover_10321022

def root_10320002 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10320002_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10320002_left_fuel : Nat := 33
def small_10320002_left_count : Nat := 479
def small_10320002_left_encoded : String := "0F34D102000000010CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000070F8751090000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D070780010400000005128A7CFB00000002022A4581000000050000000A000000030F875107000000030000000A000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0907800104128A40FB022A4581000000050000000700000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010DE7C9FC000000060000000A10D13D020DE7C9FC000000060E5FD90700000003000000060000000113E201000AD3578310D10102000000010000000710D13D020DE7C9FC0E60150700000007000000030000000A0000000100000000000000040F8751090000000407800104128A40FB022A458113E1C500000000000AD357830000000710D13D020DE7C9FC000000070E5FD907000000030B4D43FE0000000700000008000000010000000700000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010000000810D13D020DE7C9FC0E60150700000008000000030E5FD907000000030B4D43FE00000006000000080000000113E201000AD3578310D10102000000010000000710D13D020DE7C9FC000000070E5FD907000000030B4D43FE000000071080110900000004000000070000000100000000000000030F875107000000030C9A86FE0F878D0907800104128A40FB022A458113E1C500000000000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070DE7C9FE000000050E5FD9090000000406400104000000050000000A000000030000000A000000010000000A00000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070DE7C9FE000000060E5FD9090000000400000006000000030000000A000000010000000A000000040F8751090000000407800104128A40FB022A458113E1C500000000000AD3578310D10102000000010B4D43FC10804D07000000070000000310801107000000030B4D43FE0000000A108011090000000406400104000000070000000A10D13D020B4D43FC10804D070B4D43FE10804D090640010412FF70FB000000070000000212FFACFB000000020115234113F85900000000000BE879C31011710200000001000000060000000600000007000000041080110900000004064001040000000712FFACFB000000020115234100000008000000070000000310801107000000030B4D43FE10804D090640010412FF70FB0115234113F85900000000000BE879C30000000A0000000A0000000A0000000212FFACFB000000020000000A0000000410801109000000040640010412FF70FB0115234113F85900000000000BE879C31011710200000001000000071011AD020AA6A27C10EDAD070AA6A27E00000007000000080000000310ED7107000000030AA6A27E0000000A10ED71090000000405A00104133134FB0000000700000002133170FB00000002008A9221000000080000000700000001000000070000000212FFACFB000000020115234113F85900000000000BE879C310117102000000010000000A1011AD020AA6A27C10EDAD070AA6A27E00000006000000080000000310ED7107000000030AA6A27E0000000A10ED71090000000406E001040000000A12C820FB000000020000000A0000000113F895000BE879C30000000A1011AD020AA6A27C10EDAD070000000A000000030000000A00000001000000000000000113E201000AD3578310D10102000000010000000710D13D020B4D43FC10804D07000000070000000310801107000000030B4D43FE0000000A108011090000000406400104000000070000000A000000010000000000000002128A7CFB00000002022A458113E1C500000000000AD3578310D10102000000010B4D43FC10804D070B4D43FE00000006000000080000000310801107000000030000000A10D13D020B4D43FC10804D070B4D43FE10804D0908C0010411FBE8FB01152341000000060000000A000000020000000600000004108011090000000408C0010411FBE8FB011523410000000613F895000BE879C31011710200000001000000071011AD020BF3E57C000000061008ED070000000300000006000000010000000000000002000000060000000310801107000000030B4D43FE10804D0908C001040000000A0000000600000004108011090000000408C0010411FBE8FB0115234113F85900000000000BE879C31011710200000001000000060000000613F895000BE879C30000000A0000000A000000000000000211FC24FB000000020115234100000006000000050000000113E201000AD3578310D10102000000010000000A10D13D020B4D43FC10804D070B4D43FE10804D090000000A00000004108011090000000408C0010411FBE8FB000000070000000211FC24FB00000002033F67C113BBF500000000000BE879C30000000A0000000A0000000A0000000310801107000000030B4D43FE0000000A108011090000000408C001040000000A000000050000000100000000"
theorem small_10320002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10320002_left_root small_10320002_left_fuel small_10320002_left_count small_10320002_left_encoded = true := by
  decide +kernel
theorem small_10320002_left_covered : CoveredBy scale carrier boxes small_10320002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10320002_left_root small_10320002_left_fuel small_10320002_left_count small_10320002_left_encoded small_10320002_left_checked

theorem cover_10320002 : CoveredBy scale carrier boxes root_10320002 := by
  apply coveredBy_split_literal root_10320002 small_10320002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10321022 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10320002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10321022
#print axioms cover_10320002

def root_10319996 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319996_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319996_left_fuel : Nat := 1
def small_10319996_left_count : Nat := 1
def small_10319996_left_encoded : String := "00000000"
theorem small_10319996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10319996_left_root small_10319996_left_fuel small_10319996_left_count small_10319996_left_encoded = true := by
  decide +kernel
theorem small_10319996_left_covered : CoveredBy scale carrier boxes small_10319996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10319996_left_root small_10319996_left_fuel small_10319996_left_count small_10319996_left_encoded small_10319996_left_checked

theorem cover_10319996 : CoveredBy scale carrier boxes root_10319996 := by
  apply coveredBy_split_literal root_10319996 small_10319996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10320002 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10319996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10320002
#print axioms cover_10319996

def root_10319995 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10319995 : CoveredBy scale carrier boxes root_10319995 := by
  apply coveredBy_split_literal root_10319995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10319996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3873.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10319996
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3873.covered
#print axioms cover_10319995

def root_10319989 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319989_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10319989_left_fuel : Nat := 1
def small_10319989_left_count : Nat := 1
def small_10319989_left_encoded : String := "00000002"
theorem small_10319989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10319989_left_root small_10319989_left_fuel small_10319989_left_count small_10319989_left_encoded = true := by
  decide +kernel
theorem small_10319989_left_covered : CoveredBy scale carrier boxes small_10319989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10319989_left_root small_10319989_left_fuel small_10319989_left_count small_10319989_left_encoded small_10319989_left_checked

theorem cover_10319989 : CoveredBy scale carrier boxes root_10319989 := by
  apply coveredBy_split_literal root_10319989 small_10319989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10319995 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10319989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10319995
#print axioms cover_10319989

def root_10318055 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10318055 : CoveredBy scale carrier boxes root_10318055 := by
  apply coveredBy_split_literal root_10318055 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3869.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10319989 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3869.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10319989
#print axioms cover_10318055

def root_10318049 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10318049_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10318049_left_fuel : Nat := 1
def small_10318049_left_count : Nat := 1
def small_10318049_left_encoded : String := "00000004"
theorem small_10318049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10318049_left_root small_10318049_left_fuel small_10318049_left_count small_10318049_left_encoded = true := by
  decide +kernel
theorem small_10318049_left_covered : CoveredBy scale carrier boxes small_10318049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10318049_left_root small_10318049_left_fuel small_10318049_left_count small_10318049_left_encoded small_10318049_left_checked

theorem cover_10318049 : CoveredBy scale carrier boxes root_10318049 := by
  apply coveredBy_split_literal root_10318049 small_10318049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10318055 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10318049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10318055
#print axioms cover_10318049

def root_10317973 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317973_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317973_left_fuel : Nat := 13
def small_10317973_left_count : Nat := 35
def small_10317973_left_encoded : String := "120700FE05000104135D44FB0000000500000002135D80FB0000000204548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D102000000010000000A0F350D020CFD9C07000000050F350CFC0000000304548A09000000051386ACFE000000040C9A8702000000050000000A000000010000000000000004"
theorem small_10317973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317973_left_root small_10317973_left_fuel small_10317973_left_count small_10317973_left_encoded = true := by
  decide +kernel
theorem small_10317973_left_covered : CoveredBy scale carrier boxes small_10317973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317973_left_root small_10317973_left_fuel small_10317973_left_count small_10317973_left_encoded small_10317973_left_checked

theorem cover_10317973 : CoveredBy scale carrier boxes root_10317973 := by
  apply coveredBy_split_literal root_10317973 small_10317973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10318049 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10317973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10318049
#print axioms cover_10317973

def root_10317967 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317967_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317967_left_fuel : Nat := 1
def small_10317967_left_count : Nat := 1
def small_10317967_left_encoded : String := "00000003"
theorem small_10317967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317967_left_root small_10317967_left_fuel small_10317967_left_count small_10317967_left_encoded = true := by
  decide +kernel
theorem small_10317967_left_covered : CoveredBy scale carrier boxes small_10317967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317967_left_root small_10317967_left_fuel small_10317967_left_count small_10317967_left_encoded small_10317967_left_checked

theorem cover_10317967 : CoveredBy scale carrier boxes root_10317967 := by
  apply coveredBy_split_literal root_10317967 small_10317967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10317973 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10317967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10317973
#print axioms cover_10317967

def root_10317891 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317891_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317891_left_fuel : Nat := 13
def small_10317891_left_count : Nat := 35
def small_10317891_left_encoded : String := "120700FC08A913090000000512073CFE0000000405000104135D44FB0000000500000002135D80FB0000000204548A0113867100000000000CFD9C03000000050F350D0200000005000000011386AD000CFD9C030F34D10200000001000000070F350D0204548A07000000051386ACFC000000030CFD9C090000000500000007000000010000000000000003"
theorem small_10317891_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317891_left_root small_10317891_left_fuel small_10317891_left_count small_10317891_left_encoded = true := by
  decide +kernel
theorem small_10317891_left_covered : CoveredBy scale carrier boxes small_10317891_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317891_left_root small_10317891_left_fuel small_10317891_left_count small_10317891_left_encoded small_10317891_left_checked

theorem cover_10317891 : CoveredBy scale carrier boxes root_10317891 := by
  apply coveredBy_split_literal root_10317891 small_10317891_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10317967 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10317891_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10317967
#print axioms cover_10317891

def root_10317886 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317886_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10317886_right_fuel : Nat := 1
def small_10317886_right_count : Nat := 1
def small_10317886_right_encoded : String := "00000001"
theorem small_10317886_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10317886_right_root small_10317886_right_fuel small_10317886_right_count small_10317886_right_encoded = true := by
  decide +kernel
theorem small_10317886_right_covered : CoveredBy scale carrier boxes small_10317886_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10317886_right_root small_10317886_right_fuel small_10317886_right_count small_10317886_right_encoded small_10317886_right_checked

theorem cover_10317886 : CoveredBy scale carrier boxes root_10317886 := by
  apply coveredBy_split_literal root_10317886 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.root_10317891 small_10317886_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693.cover_10317891
  · exact small_10317886_right_covered
#print axioms cover_10317886

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0693
