import TaoBundleAssembly0620
import TaoBundleChunkBatch0852
import TaoBundleChunkBatch0853
import TaoBundleChunkBatch0854
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621
def root_9101990 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101990_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101990_left_fuel : Nat := 23
def small_9101990_left_count : Nat := 309
def small_9101990_left_encoded : String := "0F878D0907800106128A40FD022A458513E1C504000000020DE7CA000E5FD901000000000B4D43F810804D03000000050000000110801103000000010DE7C9FE0E60150900000005000000040E5FD909000000040640010612FF70FD0115234500000005000000060000000312FFACFD000000030115234513F85904000000020D4128800EFA110100000000000000080000000813F895040D4128800EFA1101000000000AA6A27810EDAD030D41287E000000050EFA11090000000406E0010600000005000000080000000110ED7103000000010000000A0EFA4D010AA6A2780000000610ED7103000000010000000600000000000000020E6015010B4D43F810804D030DE7C9FE000000050E5FD90900000004064001060000000512FFACFD000000030115234500000005000000060000000110801103000000010DE7C9FE000000060E5FD90900000004064001060000000612FFACFD000000030115234500000009000000060000000013E201040DE7CA000E5FD901000000000B4D43F810804D030DE7C9FE000000060E5FD90900000004064001060000000612FFACFD00000003033F67C513BBF504000000020D41288000000005000000060000000600000001108011030000000100000006000000060000000200000003128A7CFD00000003022A458513E1C504000000020DE7CA000E5FD901000000000B4D43F810804D030DE7C9FE000000080E5FD90900000004000000080000000110801103000000010DE7C9FE000000080E5FD9090000000408C0010611FBE8FD011523450000000813F895040D4128800000000A000000080000000200000003000000080E6015010B4D43F810804D03000000080000000110801103000000010DE7C9FE000000080E5FD9090000000408C0010611FBE8FD011523450000000813F895040DAED8810E9625000000000000000006000000080000000200000003000000080000000013E201040DE7CA000E5FD901000000000B4D43F810804D030DE7C9FE0E60150908C0010611FBE8FD000000060000000300000008000000040E5FD9090000000408C0010611FBE8FD033F67C513BBF504000000020D4128800EFA110100000000000000080000000813BC31040D4128800EFA1101000000000BF3E578000000061008ED03000000010000000600000006000000020000000311FC24FD00000003033F67C50000000813BC31040D4128800EFA1101000000000000000800000008000000020000000110801103000000010DE7C9FE0E60150908C001060000000611FC24FD00000003033F67C50000000800000006000000040E5FD9090000000408C0010611FBE8FD033F67C513BBF504000000020D4128800000000A0EFA4D010AA6A27810EDAD030D41287E000000060000000A000000010000000A0000000013BC31040D4128800000000A00000006000000020000000311FC24FD00000003033F67C5000000080000000A0E6015010B4D43F810804D030DE7C9FE0E60150900000006000000040E5FD9090000000408C0010611FBE8FD000000060000000311FC24FD00000003033F67C50000000813BC310400000007000000020000000110801103000000010DE7C9FE0E60150900000006000000040E5FD9090000000408C0010611FBE8FD000000060000000311FC24FD00000003033F67C50000000800000006000000000000000200000004"
theorem small_9101990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9101990_left_root small_9101990_left_fuel small_9101990_left_count small_9101990_left_encoded = true := by
  decide +kernel
theorem small_9101990_left_covered : CoveredBy scale carrier boxes small_9101990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9101990_left_root small_9101990_left_fuel small_9101990_left_count small_9101990_left_encoded small_9101990_left_checked

theorem cover_9101990 : CoveredBy scale carrier boxes root_9101990 := by
  apply coveredBy_split_literal root_9101990 small_9101990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102644 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9101990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102644
#print axioms cover_9101990

def root_9101984 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101984_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101984_left_fuel : Nat := 1
def small_9101984_left_count : Nat := 1
def small_9101984_left_encoded : String := "00000001"
theorem small_9101984_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9101984_left_root small_9101984_left_fuel small_9101984_left_count small_9101984_left_encoded = true := by
  decide +kernel
theorem small_9101984_left_covered : CoveredBy scale carrier boxes small_9101984_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9101984_left_root small_9101984_left_fuel small_9101984_left_count small_9101984_left_encoded small_9101984_left_checked

theorem cover_9101984 : CoveredBy scale carrier boxes root_9101984 := by
  apply coveredBy_split_literal root_9101984 small_9101984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9101990 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9101984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9101990
#print axioms cover_9101984

def root_9101398 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101398_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101398_left_fuel : Nat := 20
def small_9101398_left_count : Nat := 273
def small_9101398_left_encoded : String := "0F878D030C9A86FE0F878D0907800106128A40FD022A45850000000513E201040DE7CA00000000050E60150100000005000000000000000200000003128A7CFD00000003022A458513E1C504000000020DE7CA000E5FD90100000000000000080000000813E201040DE7CA000E5FD901000000000DE7C9F80E6015030DE7C9FE000000050E5FD9090000000408C001060000000500000007000000010E5FD903000000010DE7C9FE0E60150908C001060000000500000008000000040E5FD9090000000408C0010611FBE8FD033F67C50000000813BC3104000000070000000200000003000000080E6015010DE7C9F80E6015030DE7C9FE0000000500000007000000010E5FD903000000010DE7C9FE0E60150900000006000000040E5FD9090000000408C0010600000007000000080000000000000002000000040F8751090000000407800106128A40FD022A458513E1C504000000020DE7CA000E5FD901000000000DE7C9F80E60150300000005000000010E5FD903000000010B4D43FE10804D09000000050000000410801109000000040640010612FF70FD0115234500000005000000090000000312FFACFD000000030115234513F85904000000020D4128800EFA110100000000000000080000000813F895040D4128800000000900000007000000020E6015010DE7C9F80E60150300000005000000010E5FD903000000010B4D43FE10804D09064001060000000512FFACFD00000003011523450000000500000007000000041080110900000004064001060000000712FFACFD00000003000000070000000013E201040DE7CA000E5FD901000000000DE7C9F80E60150300000007000000010E5FD903000000010B4D43FE10804D090640010612FF70FD000000050000000312FFACFD00000003033F67C513BBF504000000020D412880000000050000000700000007000000041080110900000004000000090E6015010DE7C9F8000000070E5FD903000000010B4D43FE10804D09000000070000000400000007000000000000000200000003128A7CFD00000003022A458513E1C504000000020DE7CA000E5FD901000000000DE7C9F80E6015030B4D43FE00000008108011090000000400000008000000010E5FD903000000010B4D43FE00000008108011090000000408C0010611FBE8FD011523450000000813F895040D41288000000009000000070000000200000003000000080E6015010DE7C9F80E60150300000008000000010E5FD903000000010B4D43FE00000008108011090000000408C0010600000007000000070000000013E201040DE7CA000E5FD901000000000DE7C9F80E60150300000007000000010E5FD903000000010B4D43FE10804D0908C0010611FBE8FD033F67C513BBF504000000020D4128800EFA1101000000000000000700000007000000070000000311FC24FD0000000300000007000000041080110900000004000000070E60150100000007000000000000000200000001"
theorem small_9101398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9101398_left_root small_9101398_left_fuel small_9101398_left_count small_9101398_left_encoded = true := by
  decide +kernel
theorem small_9101398_left_covered : CoveredBy scale carrier boxes small_9101398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9101398_left_root small_9101398_left_fuel small_9101398_left_count small_9101398_left_encoded small_9101398_left_checked

theorem cover_9101398 : CoveredBy scale carrier boxes root_9101398 := by
  apply coveredBy_split_literal root_9101398 small_9101398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9101984 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9101398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9101984
#print axioms cover_9101398

def root_9101393 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101393_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9101393_right_fuel : Nat := 1
def small_9101393_right_count : Nat := 1
def small_9101393_right_encoded : String := "00000000"
theorem small_9101393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9101393_right_root small_9101393_right_fuel small_9101393_right_count small_9101393_right_encoded = true := by
  decide +kernel
theorem small_9101393_right_covered : CoveredBy scale carrier boxes small_9101393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9101393_right_root small_9101393_right_fuel small_9101393_right_count small_9101393_right_encoded small_9101393_right_checked

theorem cover_9101393 : CoveredBy scale carrier boxes root_9101393 := by
  apply coveredBy_split_literal root_9101393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9101398 small_9101393_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9101398
  · exact small_9101393_right_covered
#print axioms cover_9101393

def root_9099337 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9099337 : CoveredBy scale carrier boxes root_9099337 := by
  apply coveredBy_split_literal root_9099337 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3408.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9101393 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3408.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9101393
#print axioms cover_9099337

def root_9099331 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099331_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099331_left_fuel : Nat := 1
def small_9099331_left_count : Nat := 1
def small_9099331_left_encoded : String := "00000004"
theorem small_9099331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9099331_left_root small_9099331_left_fuel small_9099331_left_count small_9099331_left_encoded = true := by
  decide +kernel
theorem small_9099331_left_covered : CoveredBy scale carrier boxes small_9099331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9099331_left_root small_9099331_left_fuel small_9099331_left_count small_9099331_left_encoded small_9099331_left_checked

theorem cover_9099331 : CoveredBy scale carrier boxes root_9099331 := by
  apply coveredBy_split_literal root_9099331 small_9099331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099337 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9099331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099337
#print axioms cover_9099331

def root_9099153 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099153_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099153_left_fuel : Nat := 17
def small_9099153_left_count : Nat := 81
def small_9099153_left_encoded : String := "0F34D0FE0C9A87000F875101000000000C9A86F80F878D0300000005000000010F8751030000000107800106128A40FD0000000500000003128A7CFD00000003022A458513E1C504000000020AD357890000000510D13CFE000000040B4D4400000000050000000813E201040AD3578910D100FE000000050000000410D13CFE000000040B4D440010801101000000000B4D43F810804D0300000005000000010000000A10804D010B4D43F810804D030000000500000001108011030000000108C00106000000060000000A00000000000000020F878D010C9A86F80F878D0300000005000000010F8751030000000107800106128A40FD0000000600000003128A7CFD00000003022A458513E1C504000000020AD357890000000610D13CFE000000040DE7CA000E5FD901000000000000000800000008000000060000000000000004"
theorem small_9099153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9099153_left_root small_9099153_left_fuel small_9099153_left_count small_9099153_left_encoded = true := by
  decide +kernel
theorem small_9099153_left_covered : CoveredBy scale carrier boxes small_9099153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9099153_left_root small_9099153_left_fuel small_9099153_left_count small_9099153_left_encoded small_9099153_left_checked

theorem cover_9099153 : CoveredBy scale carrier boxes root_9099153 := by
  apply coveredBy_split_literal root_9099153 small_9099153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099331 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9099153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099331
#print axioms cover_9099153

def root_9099147 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099147_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099147_left_fuel : Nat := 1
def small_9099147_left_count : Nat := 1
def small_9099147_left_encoded : String := "00000002"
theorem small_9099147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9099147_left_root small_9099147_left_fuel small_9099147_left_count small_9099147_left_encoded = true := by
  decide +kernel
theorem small_9099147_left_covered : CoveredBy scale carrier boxes small_9099147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9099147_left_root small_9099147_left_fuel small_9099147_left_count small_9099147_left_encoded small_9099147_left_checked

theorem cover_9099147 : CoveredBy scale carrier boxes root_9099147 := by
  apply coveredBy_split_literal root_9099147 small_9099147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099153 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9099147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099153
#print axioms cover_9099147

def root_9099146 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9099146 : CoveredBy scale carrier boxes root_9099146 := by
  apply coveredBy_split_literal root_9099146 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099147 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3412.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099147
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3412.covered
#print axioms cover_9099146

def root_9099140 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099140_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9099140_left_fuel : Nat := 1
def small_9099140_left_count : Nat := 1
def small_9099140_left_encoded : String := "00000001"
theorem small_9099140_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9099140_left_root small_9099140_left_fuel small_9099140_left_count small_9099140_left_encoded = true := by
  decide +kernel
theorem small_9099140_left_covered : CoveredBy scale carrier boxes small_9099140_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9099140_left_root small_9099140_left_fuel small_9099140_left_count small_9099140_left_encoded small_9099140_left_checked

theorem cover_9099140 : CoveredBy scale carrier boxes root_9099140 := by
  apply coveredBy_split_literal root_9099140 small_9099140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099146 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9099140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099146
#print axioms cover_9099140

def root_9098896 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9098896_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9098896_left_fuel : Nat := 18
def small_9098896_left_count : Nat := 115
def small_9098896_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D0900000005000000040F8751090000000407800106128A40FD0000000500000003128A7CFD000000030AD3578310D100F8000000050000000110D13CF800000001022A458513E1C504000000020B4D44000000000500000008000000090F878D010C9A86FE0F878D0900000005000000040F8751090000000407800106128A40FD0AD357830000000510D13CF800000001022A4585000000050000000700000003128A7CFD000000030AD357830000000710D13CF800000001022A458513E1C504000000020DE7CA000E5FD90100000000000000070000000700000007000000001386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D090780010600000005128A7CFD000000030AD357830000000710D13CF800000001067ECE8512EA5904000000020B4D4400000000050000000700000007000000040F875109000000040780010600000007000000070F878D010C9A86FE0F878D090780010600000007000000070000000400000007000000000000000200000001"
theorem small_9098896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9098896_left_root small_9098896_left_fuel small_9098896_left_count small_9098896_left_encoded = true := by
  decide +kernel
theorem small_9098896_left_covered : CoveredBy scale carrier boxes small_9098896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9098896_left_root small_9098896_left_fuel small_9098896_left_count small_9098896_left_encoded small_9098896_left_checked

theorem cover_9098896 : CoveredBy scale carrier boxes root_9098896 := by
  apply coveredBy_split_literal root_9098896 small_9098896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9099140 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9098896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9099140
#print axioms cover_9098896

def root_9098891 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9098891_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9098891_right_fuel : Nat := 1
def small_9098891_right_count : Nat := 1
def small_9098891_right_encoded : String := "00000000"
theorem small_9098891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9098891_right_root small_9098891_right_fuel small_9098891_right_count small_9098891_right_encoded = true := by
  decide +kernel
theorem small_9098891_right_covered : CoveredBy scale carrier boxes small_9098891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9098891_right_root small_9098891_right_fuel small_9098891_right_count small_9098891_right_encoded small_9098891_right_checked

theorem cover_9098891 : CoveredBy scale carrier boxes root_9098891 := by
  apply coveredBy_split_literal root_9098891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9098896 small_9098891_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9098896
  · exact small_9098891_right_covered
#print axioms cover_9098891

def root_9097767 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9097767 : CoveredBy scale carrier boxes root_9097767 := by
  apply coveredBy_split_literal root_9097767 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3407.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9098891 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3407.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9098891
#print axioms cover_9097767

def root_9097761 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9097761_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9097761_left_fuel : Nat := 1
def small_9097761_left_count : Nat := 1
def small_9097761_left_encoded : String := "00000003"
theorem small_9097761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9097761_left_root small_9097761_left_fuel small_9097761_left_count small_9097761_left_encoded = true := by
  decide +kernel
theorem small_9097761_left_covered : CoveredBy scale carrier boxes small_9097761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9097761_left_root small_9097761_left_fuel small_9097761_left_count small_9097761_left_encoded small_9097761_left_checked

theorem cover_9097761 : CoveredBy scale carrier boxes root_9097761 := by
  apply coveredBy_split_literal root_9097761 small_9097761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9097767 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9097761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9097767
#print axioms cover_9097761

def root_9095841 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095841 : CoveredBy scale carrier boxes root_9095841 := by
  apply coveredBy_split_literal root_9095841 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3406.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9097761 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3406.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9097761
#print axioms cover_9095841

def root_9095835 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095835_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095835_left_fuel : Nat := 1
def small_9095835_left_count : Nat := 1
def small_9095835_left_encoded : String := "00000004"
theorem small_9095835_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095835_left_root small_9095835_left_fuel small_9095835_left_count small_9095835_left_encoded = true := by
  decide +kernel
theorem small_9095835_left_covered : CoveredBy scale carrier boxes small_9095835_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095835_left_root small_9095835_left_fuel small_9095835_left_count small_9095835_left_encoded small_9095835_left_checked

theorem cover_9095835 : CoveredBy scale carrier boxes root_9095835 := by
  apply coveredBy_split_literal root_9095835 small_9095835_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095841 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9095835_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095841
#print axioms cover_9095835

def root_9095789 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095789_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095789_left_fuel : Nat := 9
def small_9095789_left_count : Nat := 21
def small_9095789_left_encoded : String := "120700FE05000106135D44FD0000000500000003135D80FD000000030CFD9C010F34D10000000000000000060F350D000CFD9C03000000050F350CF80000000104548A0500000005000000060000000000000004"
theorem small_9095789_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095789_left_root small_9095789_left_fuel small_9095789_left_count small_9095789_left_encoded = true := by
  decide +kernel
theorem small_9095789_left_covered : CoveredBy scale carrier boxes small_9095789_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095789_left_root small_9095789_left_fuel small_9095789_left_count small_9095789_left_encoded small_9095789_left_checked

theorem cover_9095789 : CoveredBy scale carrier boxes root_9095789 := by
  apply coveredBy_split_literal root_9095789 small_9095789_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095835 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095789_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095835
#print axioms cover_9095789

def root_9095783 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095783_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095783_left_fuel : Nat := 1
def small_9095783_left_count : Nat := 1
def small_9095783_left_encoded : String := "00000002"
theorem small_9095783_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095783_left_root small_9095783_left_fuel small_9095783_left_count small_9095783_left_encoded = true := by
  decide +kernel
theorem small_9095783_left_covered : CoveredBy scale carrier boxes small_9095783_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095783_left_root small_9095783_left_fuel small_9095783_left_count small_9095783_left_encoded small_9095783_left_checked

theorem cover_9095783 : CoveredBy scale carrier boxes root_9095783 := by
  apply coveredBy_split_literal root_9095783 small_9095783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095789 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9095783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095789
#print axioms cover_9095783

def root_9095782 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095782_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095782_right_fuel : Nat := 28
def small_9095782_right_count : Nat := 157
def small_9095782_right_encoded : String := "12073D0408A91309120700FE000000060000000412073CFE0000000405000106135D44FD0CFD9C010F34D10000000000000000060F350D000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C09000000060F350CFE000000040C9A87000F875101000000000C9A86FE0000000600000007000000060000000600000001000000060000000000000003135D80FD000000030CFD9C010F34D100000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000070000000600000001000000060F350D000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09000000070000000400000007000000070F350D040CFD9C09000000060000000700000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87000F875101000000000C9A86F80F878D030C9A86FE0F878D090780010600000006128A7CFD000000030AD3578510D10104000000020B4D440010801101000000000DE7C9F8000000060E5FD90300000001000000060000000600000006000000040F87510900000004078001060000000700000007000000010F875103000000010C9A86FE0F878D0900000006000000040F8751090000000407800106128A40FD0000000600000003128A7CFD000000030AD3578510D10104000000020B4D44000000000910804D010000000700000000000000070F878D010C9A86F80F878D030C9A86FE0000000600000007000000010F8751030000000100000006000000000F350D0400000006000000020000000000000002"
theorem small_9095782_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095782_right_root small_9095782_right_fuel small_9095782_right_count small_9095782_right_encoded = true := by
  decide +kernel
theorem small_9095782_right_covered : CoveredBy scale carrier boxes small_9095782_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095782_right_root small_9095782_right_fuel small_9095782_right_count small_9095782_right_encoded small_9095782_right_checked

theorem cover_9095782 : CoveredBy scale carrier boxes root_9095782 := by
  apply coveredBy_split_literal root_9095782 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095783 small_9095782_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095783
  · exact small_9095782_right_covered
#print axioms cover_9095782

def root_9095776 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095776_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095776_left_fuel : Nat := 1
def small_9095776_left_count : Nat := 1
def small_9095776_left_encoded : String := "00000001"
theorem small_9095776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095776_left_root small_9095776_left_fuel small_9095776_left_count small_9095776_left_encoded = true := by
  decide +kernel
theorem small_9095776_left_covered : CoveredBy scale carrier boxes small_9095776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095776_left_root small_9095776_left_fuel small_9095776_left_count small_9095776_left_encoded small_9095776_left_checked

theorem cover_9095776 : CoveredBy scale carrier boxes root_9095776 := by
  apply coveredBy_split_literal root_9095776 small_9095776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095782 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9095776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095782
#print axioms cover_9095776

def root_9095598 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095598_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095598_left_fuel : Nat := 17
def small_9095598_left_count : Nat := 85
def small_9095598_left_encoded : String := "120700F808A91305120701040000000208A913090000000512073CFE0000000405000106135D44FD0000000500000003135D80FD000000030CFD9C010F34D1000000000004548A03000000051386ACF80000000104548A0500000005000000070F350D0004548A03000000051386ACF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040C9A87000000000500000007000000020000000012073D0408A91309120700FE000000050000000412073CFE0000000405000106135D44FD0CFD9C010F34D10000000000000000070F350D0004548A03000000051386ACF8000000010CFD9C0500000005000000060000000000000003135D80FD000000030CFD9C010F34D10000000000000000070F350D0004548A03000000071386ACF8000000010CFD9C050F34D104000000020CFD9C09000000070000000700000007000000000000000200000001"
theorem small_9095598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095598_left_root small_9095598_left_fuel small_9095598_left_count small_9095598_left_encoded = true := by
  decide +kernel
theorem small_9095598_left_covered : CoveredBy scale carrier boxes small_9095598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095598_left_root small_9095598_left_fuel small_9095598_left_count small_9095598_left_encoded small_9095598_left_checked

theorem cover_9095598 : CoveredBy scale carrier boxes root_9095598 := by
  apply coveredBy_split_literal root_9095598 small_9095598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095776 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095776
#print axioms cover_9095598

def root_9095593 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095593_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095593_right_fuel : Nat := 1
def small_9095593_right_count : Nat := 1
def small_9095593_right_encoded : String := "00000000"
theorem small_9095593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095593_right_root small_9095593_right_fuel small_9095593_right_count small_9095593_right_encoded = true := by
  decide +kernel
theorem small_9095593_right_covered : CoveredBy scale carrier boxes small_9095593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095593_right_root small_9095593_right_fuel small_9095593_right_count small_9095593_right_encoded small_9095593_right_checked

theorem cover_9095593 : CoveredBy scale carrier boxes root_9095593 := by
  apply coveredBy_split_literal root_9095593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095598 small_9095593_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095598
  · exact small_9095593_right_covered
#print axioms cover_9095593

def root_9095181 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095181_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095181_left_fuel : Nat := 28
def small_9095181_left_count : Nat := 191
def small_9095181_left_encoded : String := "120701000000000008A91303120700F808A91305120701040000000208A913090000000512073CFE000000040500010600000005135D80FD0000000304548A01000000050000000712073D0408A913090000000500000007000000020000000112073CF80000000108A91305120701040000000208A91309120700FE000000060000000412073CFE0000000405000106135D44FD04548A0113867100000000000CFD9C030F34D0F80000000500000001000000061386AD000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86F8000000060F8751030000000100000006000000060000000000000003135D80FD0000000304548A0113867100000000000CFD9C030F34D0F804548A0513867104000000020CFD9C09000000050000000A00000007000000010F350CF80000000104548A0513867104000000020CFD9C09000000060F350CFE000000040C9A86F80F878D030C9A86FE0F878D09000000060000000400000007000000010F875103000000010C9A86FE000000060F87510900000004078001060000000600000007000000061386AD000CFD9C030F34D0F804548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE00000004000000071386AD040000000700000002000000010F350CF80000000104548A0513867104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090780010600000006128A7CFD00000003067ECE810000000700000007000000040F8751090000000400000007000000010F875103000000010C9A86FE0F878D0900000006000000040F8751090000000407800106128A40FD0000000600000003128A7CFD00000003067ECE810000000712EA9500022A458513E1C504000000020000000700000007000000001386AD040CFD9C09000000060F350CFE000000040C9A86F8000000060F8751030000000100000006000000020000000012073D040000000600000002"
theorem small_9095181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095181_left_root small_9095181_left_fuel small_9095181_left_count small_9095181_left_encoded = true := by
  decide +kernel
theorem small_9095181_left_covered : CoveredBy scale carrier boxes small_9095181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095181_left_root small_9095181_left_fuel small_9095181_left_count small_9095181_left_encoded small_9095181_left_checked

theorem cover_9095181 : CoveredBy scale carrier boxes root_9095181 := by
  apply coveredBy_split_literal root_9095181 small_9095181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095593 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095593
#print axioms cover_9095181

def root_9095176 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095176_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095176_right_fuel : Nat := 1
def small_9095176_right_count : Nat := 1
def small_9095176_right_encoded : String := "00000004"
theorem small_9095176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095176_right_root small_9095176_right_fuel small_9095176_right_count small_9095176_right_encoded = true := by
  decide +kernel
theorem small_9095176_right_covered : CoveredBy scale carrier boxes small_9095176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095176_right_root small_9095176_right_fuel small_9095176_right_count small_9095176_right_encoded small_9095176_right_checked

theorem cover_9095176 : CoveredBy scale carrier boxes root_9095176 := by
  apply coveredBy_split_literal root_9095176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095181 small_9095176_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095181
  · exact small_9095176_right_covered
#print axioms cover_9095176

def root_9112276 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112276_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112276_right_fuel : Nat := 16
def small_9112276_right_count : Nat := 89
def small_9112276_right_encoded : String := "12073D0405000106135D44FD050000FE135D81090CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D104000000020C9A87000F87510100000000000000090F878D010000000700000000000000080000000000000004135D4509000000040CFD9C01000000070F350D000CFD9C0300000007000000080000000000000003135D80FD00000003050000FE135D81090CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D104000000020C9A87000F875101000000000C9A86F8000000090F87510300000001000000090F878D0100000007000000000F350D0400000007000000020000000000000004135D4509000000040CFD9C01000000070F350D000CFD9C03000000070F350CF8000000010CFD9C050F34D1040000000200000007000000070000000000000002"
theorem small_9112276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112276_right_root small_9112276_right_fuel small_9112276_right_count small_9112276_right_encoded = true := by
  decide +kernel
theorem small_9112276_right_covered : CoveredBy scale carrier boxes small_9112276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112276_right_root small_9112276_right_fuel small_9112276_right_count small_9112276_right_encoded small_9112276_right_checked

theorem cover_9112276 : CoveredBy scale carrier boxes root_9112276 := by
  apply coveredBy_split_literal root_9112276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3413.root small_9112276_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3413.covered
  · exact small_9112276_right_covered
#print axioms cover_9112276

def root_9112270 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112270_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112270_left_fuel : Nat := 1
def small_9112270_left_count : Nat := 1
def small_9112270_left_encoded : String := "00000001"
theorem small_9112270_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112270_left_root small_9112270_left_fuel small_9112270_left_count small_9112270_left_encoded = true := by
  decide +kernel
theorem small_9112270_left_covered : CoveredBy scale carrier boxes small_9112270_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112270_left_root small_9112270_left_fuel small_9112270_left_count small_9112270_left_encoded small_9112270_left_checked

theorem cover_9112270 : CoveredBy scale carrier boxes root_9112270 := by
  apply coveredBy_split_literal root_9112270 small_9112270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112276 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9112270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112276
#print axioms cover_9112270

def root_9112204 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112204_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112204_left_fuel : Nat := 13
def small_9112204_left_count : Nat := 33
def small_9112204_left_encoded : String := "120700F808A91305120701040000000205000106135D44FD050000FE135D81090CFD9C01000000070F350D0004548A03000000051386ACF80000000104548A05000000050000000700000000000000040000000700000003135D80FD00000003050000FE135D81090CFD9C01000000070000000700000004000000070000000700000001"
theorem small_9112204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112204_left_root small_9112204_left_fuel small_9112204_left_count small_9112204_left_encoded = true := by
  decide +kernel
theorem small_9112204_left_covered : CoveredBy scale carrier boxes small_9112204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112204_left_root small_9112204_left_fuel small_9112204_left_count small_9112204_left_encoded small_9112204_left_checked

theorem cover_9112204 : CoveredBy scale carrier boxes root_9112204 := by
  apply coveredBy_split_literal root_9112204 small_9112204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112270 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9112204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112270
#print axioms cover_9112204

def root_9112199 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112199_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112199_right_fuel : Nat := 1
def small_9112199_right_count : Nat := 1
def small_9112199_right_encoded : String := "00000000"
theorem small_9112199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112199_right_root small_9112199_right_fuel small_9112199_right_count small_9112199_right_encoded = true := by
  decide +kernel
theorem small_9112199_right_covered : CoveredBy scale carrier boxes small_9112199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112199_right_root small_9112199_right_fuel small_9112199_right_count small_9112199_right_encoded small_9112199_right_checked

theorem cover_9112199 : CoveredBy scale carrier boxes root_9112199 := by
  apply coveredBy_split_literal root_9112199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112204 small_9112199_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112204
  · exact small_9112199_right_covered
#print axioms cover_9112199

def root_9112065 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112065_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112065_left_fuel : Nat := 19
def small_9112065_left_count : Nat := 65
def small_9112065_left_encoded : String := "120701000000000008A91303120700F8000000070000000112073CF80000000108A91305120701040000000205000106135D44FD050000FE135D810904548A01000000071386AD000CFD9C03000000070F350CF80000000104548A0513867104000000020C9A86F8000000070F875103000000010280010600000007000000070000000700000000000000040000000700000003135D80FD00000003050000FE135D810904548A011386710000000000000000071386AD000CFD9C03000000070F350CF80000000104548A0513867104000000020C9A86F8000000070F875103000000010780010600000007000000070000000700000000000000040000000700000007"
theorem small_9112065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112065_left_root small_9112065_left_fuel small_9112065_left_count small_9112065_left_encoded = true := by
  decide +kernel
theorem small_9112065_left_covered : CoveredBy scale carrier boxes small_9112065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112065_left_root small_9112065_left_fuel small_9112065_left_count small_9112065_left_encoded small_9112065_left_checked

theorem cover_9112065 : CoveredBy scale carrier boxes root_9112065 := by
  apply coveredBy_split_literal root_9112065 small_9112065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112199 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9112065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112199
#print axioms cover_9112065

def root_9112059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9112059_left_fuel : Nat := 1
def small_9112059_left_count : Nat := 1
def small_9112059_left_encoded : String := "00000004"
theorem small_9112059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9112059_left_root small_9112059_left_fuel small_9112059_left_count small_9112059_left_encoded = true := by
  decide +kernel
theorem small_9112059_left_covered : CoveredBy scale carrier boxes small_9112059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9112059_left_root small_9112059_left_fuel small_9112059_left_count small_9112059_left_encoded small_9112059_left_checked

theorem cover_9112059 : CoveredBy scale carrier boxes root_9112059 := by
  apply coveredBy_split_literal root_9112059 small_9112059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112065 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9112059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112065
#print axioms cover_9112059

def root_9095175 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095175 : CoveredBy scale carrier boxes root_9095175 := by
  apply coveredBy_split_literal root_9095175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9112059 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095176
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9112059
#print axioms cover_9095175

def root_9095170 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095170_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095170_right_fuel : Nat := 1
def small_9095170_right_count : Nat := 1
def small_9095170_right_encoded : String := "00000003"
theorem small_9095170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095170_right_root small_9095170_right_fuel small_9095170_right_count small_9095170_right_encoded = true := by
  decide +kernel
theorem small_9095170_right_covered : CoveredBy scale carrier boxes small_9095170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095170_right_root small_9095170_right_fuel small_9095170_right_count small_9095170_right_encoded small_9095170_right_checked

theorem cover_9095170 : CoveredBy scale carrier boxes root_9095170 := by
  apply coveredBy_split_literal root_9095170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.root_9095175 small_9095170_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621.cover_9095175
  · exact small_9095170_right_covered
#print axioms cover_9095170

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0621
