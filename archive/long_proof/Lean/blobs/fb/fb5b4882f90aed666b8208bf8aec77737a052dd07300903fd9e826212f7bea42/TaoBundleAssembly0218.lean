import TaoBundleAssembly0217
import TaoBundleChunkBatch0852
import TaoBundleChunkBatch0853
import TaoBundleChunkBatch0854
import TaoBundleChunkBatch0855
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218
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
  apply coveredBy_split_literal root_9101990 small_9101990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.root_9102644 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9101990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0217.cover_9102644
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
  apply coveredBy_split_literal root_9101984 small_9101984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9101990 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9101984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9101990
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
  apply coveredBy_split_literal root_9101398 small_9101398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9101984 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9101398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9101984
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
  apply coveredBy_split_literal root_9101393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9101398 small_9101393_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9101398
  · exact small_9101393_right_covered
#print axioms cover_9101393

def root_9099337 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9099337 : CoveredBy scale carrier boxes root_9099337 := by
  apply coveredBy_split_literal root_9099337 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3408.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9101393 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3408.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9101393
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
  apply coveredBy_split_literal root_9099331 small_9099331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099337 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9099331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099337
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
  apply coveredBy_split_literal root_9099153 small_9099153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099331 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9099153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099331
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
  apply coveredBy_split_literal root_9099147 small_9099147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099153 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9099147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099153
#print axioms cover_9099147

def root_9099146 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9099146 : CoveredBy scale carrier boxes root_9099146 := by
  apply coveredBy_split_literal root_9099146 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099147 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3412.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099147
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
  apply coveredBy_split_literal root_9099140 small_9099140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099146 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9099140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099146
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
  apply coveredBy_split_literal root_9098896 small_9098896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9099140 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9098896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9099140
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
  apply coveredBy_split_literal root_9098891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9098896 small_9098891_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9098896
  · exact small_9098891_right_covered
#print axioms cover_9098891

def root_9097767 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9097767 : CoveredBy scale carrier boxes root_9097767 := by
  apply coveredBy_split_literal root_9097767 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3407.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9098891 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3407.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9098891
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
  apply coveredBy_split_literal root_9097761 small_9097761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9097767 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9097761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9097767
#print axioms cover_9097761

def root_9095841 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095841 : CoveredBy scale carrier boxes root_9095841 := by
  apply coveredBy_split_literal root_9095841 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3406.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9097761 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3406.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9097761
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
  apply coveredBy_split_literal root_9095835 small_9095835_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095841 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9095835_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095841
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
  apply coveredBy_split_literal root_9095789 small_9095789_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095835 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095789_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095835
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
  apply coveredBy_split_literal root_9095783 small_9095783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095789 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9095783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095789
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
  apply coveredBy_split_literal root_9095782 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095783 small_9095782_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095783
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
  apply coveredBy_split_literal root_9095776 small_9095776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095782 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9095776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095782
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
  apply coveredBy_split_literal root_9095598 small_9095598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095776 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095776
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
  apply coveredBy_split_literal root_9095593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095598 small_9095593_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095598
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
  apply coveredBy_split_literal root_9095181 small_9095181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095593 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9095181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095593
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
  apply coveredBy_split_literal root_9095176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095181 small_9095176_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095181
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
  apply coveredBy_split_literal root_9112270 small_9112270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112276 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9112270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112276
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
  apply coveredBy_split_literal root_9112204 small_9112204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112270 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9112204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112270
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
  apply coveredBy_split_literal root_9112199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112204 small_9112199_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112204
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
  apply coveredBy_split_literal root_9112065 small_9112065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112199 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9112065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112199
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
  apply coveredBy_split_literal root_9112059 small_9112059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112065 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9112059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112065
#print axioms cover_9112059

def root_9095175 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095175 : CoveredBy scale carrier boxes root_9095175 := by
  apply coveredBy_split_literal root_9095175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9112059 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095176
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9112059
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
  apply coveredBy_split_literal root_9095170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095175 small_9095170_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095175
  · exact small_9095170_right_covered
#print axioms cover_9095170

def root_9118081 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118081_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118081_left_fuel : Nat := 26
def small_9118081_left_count : Nat := 335
def small_9118081_left_encoded : String := "0F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A87060000000800000008000000040F350CFE000000040C9A87060F8750FD0C9A86FE0F878D090AD3578100000007000000070000000400000007000000030F878CFD0000000300000008000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8706000000070F878CFD0000000300000007000000040F350CFE0000000400000007000000030F34D106000000030CFD9C09000000070000000700000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A86F80F878D030C9A87060F8750FD0AD3578110D101000000000000000008000000080000000300000008000000010F875103000000010C9A87060F8750FD0AD3578100000009000000090000000300000008000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE0F878D090AD3578110D10100000000000000000800000008000000040F875109000000040AD357810000000710D13D00022A4585000000080000000700000000000000030F878CFD000000030C9A86FE000000080F8751090000000400000008000000010F875103000000010C9A87060F8750FD0C9A86FE0F878D090AD3578110D1010000000000022A45850000000813E201040B4D43F8000000081080110300000001000000090000000210D13D00022A45850000000813E201040B4D43F80000000810801103000000010B4D4406108010FD0DE7C9FE000000080E5FD909000000040000000800000003000000080000000200000000000000040F875109000000040AD3578110D1010000000000022A4585000000080000000710D13D00022A45850000000813E201040B4D43F810804D0300000007000000011080110300000001000000050000000200000000000000030F878CFD000000030C9A86FE000000080F8751090000000400000008000000030F34D106000000030CFD9C090F34D0FE0000000800000004000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A86F80F878D030C9A87060F8750FD00000006000000030F878CFD000000030AD3578110D1010000000000067ECE85000000080000000610D13D00067ECE850000000812EA9504000000070000000200000000000000010F875103000000010C9A87060F8750FD00000006000000030F878CFD000000030AD3578110D10100000000000000000610D13D00067ECE85000000080000000600000000000000040F350CFE000000040C9A86F80F878D030C9A87060F8750FD0C9A86FE0F878D09000000070000000400000007000000030F878CFD000000030C9A86FE0F878D09000000070000000400000007000000010F875103000000010C9A87060F8750FD0C9A86FE0F878D090AD3578110D10100000000000000000610D13D00067ECE8512EA5904000000020B4D43F810804D030B4D440600000007000000070000000110801103000000010B4D44060000000610804CFD000000030DE7C9FE00000006000000050000000600000000000000040F875109000000040AD357810000000700000007000000030F878CFD000000030C9A86FE0F878D090AD3578110D10100000000000000000710D13D00067ECE85000000080000000700000000000000040F8751090000000400000005000000030F34D106000000030CFD9C090F34D0FE0C9A86F8000000080F8751030000000100000008000000040F350CFE000000040C9A86F80F878D0300000007000000010F875103000000010000000500000002"
theorem small_9118081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9118081_left_root small_9118081_left_fuel small_9118081_left_count small_9118081_left_encoded = true := by
  decide +kernel
theorem small_9118081_left_covered : CoveredBy scale carrier boxes small_9118081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9118081_left_root small_9118081_left_fuel small_9118081_left_count small_9118081_left_encoded small_9118081_left_checked

theorem cover_9118081 : CoveredBy scale carrier boxes root_9118081 := by
  apply coveredBy_split_literal root_9118081 small_9118081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3415.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9118081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3415.covered
#print axioms cover_9118081

def root_9118075 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9118075_left_fuel : Nat := 1
def small_9118075_left_count : Nat := 1
def small_9118075_left_encoded : String := "00000004"
theorem small_9118075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9118075_left_root small_9118075_left_fuel small_9118075_left_count small_9118075_left_encoded = true := by
  decide +kernel
theorem small_9118075_left_covered : CoveredBy scale carrier boxes small_9118075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9118075_left_root small_9118075_left_fuel small_9118075_left_count small_9118075_left_encoded small_9118075_left_checked

theorem cover_9118075 : CoveredBy scale carrier boxes root_9118075 := by
  apply coveredBy_split_literal root_9118075 small_9118075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9118081 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9118075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9118081
#print axioms cover_9118075

def root_9117713 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117713_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117713_left_fuel : Nat := 18
def small_9117713_left_count : Nat := 169
def small_9117713_left_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060000000500000003000000081386AD040CFD9BFD0F350D0600000006000000030F34D106000000030000000800000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0604548A09000000061386ACFE000000040C9A86F8000000080000000900000003000000091386AD040CFD9BFD000000060F34D1060000000304548A090000000600000008000000020F350D000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060000000500000003000000081386AD040CFD9BFD0F350D0604548A09000000051386ACFE000000040C9A8700000000050F878D010C9A8706000000050000000800000000000000030F34D106000000030000000800000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D0604548A09138670FE0C9A87000000000500000009000000041386ACFE000000040C9A87000F875101000000000C9A86F8000000080F875103000000010C9A870600000008000000080F878D010C9A86F8000000080000000900000000000000030F34D10600000003000000081386AD040CFD9BFD0F350D0604548A09000000061386ACFE000000040C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD00000005000000030F878CFD0000000300000008000000010F875103000000010C9A87060F8750FD00000006000000030F878CFD000000030000000A0F878D010C9A86F8000000060F875103000000010000000600000000000000030F34D1060000000304548A09138670FE0C9A87000000000A00000008000000041386ACFE000000040C9A87000F875101000000000000000800000008000000020000000000000004"
theorem small_9117713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117713_left_root small_9117713_left_fuel small_9117713_left_count small_9117713_left_encoded = true := by
  decide +kernel
theorem small_9117713_left_covered : CoveredBy scale carrier boxes small_9117713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117713_left_root small_9117713_left_fuel small_9117713_left_count small_9117713_left_encoded small_9117713_left_checked

theorem cover_9117713 : CoveredBy scale carrier boxes root_9117713 := by
  apply coveredBy_split_literal root_9117713 small_9117713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9118075 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9117713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9118075
#print axioms cover_9117713

def root_9117708 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117708_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117708_right_fuel : Nat := 1
def small_9117708_right_count : Nat := 1
def small_9117708_right_encoded : String := "00000003"
theorem small_9117708_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117708_right_root small_9117708_right_fuel small_9117708_right_count small_9117708_right_encoded = true := by
  decide +kernel
theorem small_9117708_right_covered : CoveredBy scale carrier boxes small_9117708_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117708_right_root small_9117708_right_fuel small_9117708_right_count small_9117708_right_encoded small_9117708_right_checked

theorem cover_9117708 : CoveredBy scale carrier boxes root_9117708 := by
  apply coveredBy_split_literal root_9117708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117713 small_9117708_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117713
  · exact small_9117708_right_covered
#print axioms cover_9117708

def root_9117707 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117707_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117707_right_fuel : Nat := 14
def small_9117707_right_count : Nat := 61
def small_9117707_right_encoded : String := "120701060000000308A91309120700FE0CFD9C010F34D10000000000000000080F350D000CFD9C030000000800000008000000000000000412073CFE000000040CFD9C010F34D100000000000CFD9C030F34D0F800000008000000010F350CF80000000104548A05000000081386AD04045489FD1386AD060CFD9C090F34D0FE0000000800000004000000080000000300000008000000020F350D000CFD9C030F34D0F800000008000000010F350CF80000000104548A05000000081386AD04045489FD1386AD060CFD9C090F34D0FE00000008000000040F350CFE0000000400000005000000030000000A0000000200000000"
theorem small_9117707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117707_right_root small_9117707_right_fuel small_9117707_right_count small_9117707_right_encoded = true := by
  decide +kernel
theorem small_9117707_right_covered : CoveredBy scale carrier boxes small_9117707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117707_right_root small_9117707_right_fuel small_9117707_right_count small_9117707_right_encoded small_9117707_right_checked

theorem cover_9117707 : CoveredBy scale carrier boxes root_9117707 := by
  apply coveredBy_split_literal root_9117707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117708 small_9117707_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117708
  · exact small_9117707_right_covered
#print axioms cover_9117707

def root_9117701 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117701_left_fuel : Nat := 1
def small_9117701_left_count : Nat := 1
def small_9117701_left_encoded : String := "00000002"
theorem small_9117701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117701_left_root small_9117701_left_fuel small_9117701_left_count small_9117701_left_encoded = true := by
  decide +kernel
theorem small_9117701_left_covered : CoveredBy scale carrier boxes small_9117701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117701_left_root small_9117701_left_fuel small_9117701_left_count small_9117701_left_encoded small_9117701_left_checked

theorem cover_9117701 : CoveredBy scale carrier boxes root_9117701 := by
  apply coveredBy_split_literal root_9117701 small_9117701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117707 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9117701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117707
#print axioms cover_9117701

def root_9117700 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9117700 : CoveredBy scale carrier boxes root_9117700 := by
  apply coveredBy_split_literal root_9117700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3416.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117701
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3416.covered
#print axioms cover_9117700

def root_9117694 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117694_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117694_left_fuel : Nat := 1
def small_9117694_left_count : Nat := 1
def small_9117694_left_encoded : String := "00000001"
theorem small_9117694_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117694_left_root small_9117694_left_fuel small_9117694_left_count small_9117694_left_encoded = true := by
  decide +kernel
theorem small_9117694_left_covered : CoveredBy scale carrier boxes small_9117694_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117694_left_root small_9117694_left_fuel small_9117694_left_count small_9117694_left_encoded small_9117694_left_checked

theorem cover_9117694 : CoveredBy scale carrier boxes root_9117694 := by
  apply coveredBy_split_literal root_9117694 small_9117694_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117700 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9117694_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117700
#print axioms cover_9117694

def root_9117162 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117162_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117162_left_fuel : Nat := 23
def small_9117162_left_count : Nat := 243
def small_9117162_left_encoded : String := "120700F808A91305120701040000000208A912FD12073D0608A91309120700FE0CFD9C010F34D1000000000004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD0000000500000007000000020F350D0004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD000000050F34D106000000030000000800000002000000000000000412073CFE000000040CFD9C010F34D1000000000004548A03138670F804548A0513867104000000020000000700000007000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE0000000400000007000000030F34D10600000003000000071386AD040CFD9BFD0F350D06000000070000000300000007000000020F350D0004548A03138670F804548A0513867104000000020CFD9BFD0F350D060CFD9C09000000050F350CFE0000000400000007000000030F34D10600000003000000071386AD040CFD9BFD0F350D0600000007000000030000000700000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A87060F8750FD0C9A86FE000000050000000700000003000000080F878D010000000700000000000000030F34D10600000003000000081386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A87000000000500000007000000040F350CFE0000000400000007000000030F34D106000000030CFD9C090000000700000007000000020000000000000003120701060000000308A91309120700FE000000080000000412073CFE000000040CFD9C010F34D10000000000000000070F350D0004548A0300000007000000080000000012073D0408A912FD12073D0608A91309120700FE0CFD9C010F34D10000000000000000070F350D0004548A03138670F80CFD9C050000000500000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060000000500000003000000070F350D040000000700000002000000000000000412073CFE000000040CFD9C010F34D10000000000000000070F350D0004548A03138670F800000007000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350D06000000070000000300000007000000070000000000000003120701060000000308A91309120700FE0CFD9C010F34D1000000000004548A03000000071386ACF800000001000000070F350D00000000070000000000000004000000070000000200000001"
theorem small_9117162_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117162_left_root small_9117162_left_fuel small_9117162_left_count small_9117162_left_encoded = true := by
  decide +kernel
theorem small_9117162_left_covered : CoveredBy scale carrier boxes small_9117162_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117162_left_root small_9117162_left_fuel small_9117162_left_count small_9117162_left_encoded small_9117162_left_checked

theorem cover_9117162 : CoveredBy scale carrier boxes root_9117162 := by
  apply coveredBy_split_literal root_9117162 small_9117162_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117694 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9117162_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117694
#print axioms cover_9117162

def root_9117157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117157_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9117157_right_fuel : Nat := 1
def small_9117157_right_count : Nat := 1
def small_9117157_right_encoded : String := "00000000"
theorem small_9117157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9117157_right_root small_9117157_right_fuel small_9117157_right_count small_9117157_right_encoded = true := by
  decide +kernel
theorem small_9117157_right_covered : CoveredBy scale carrier boxes small_9117157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9117157_right_root small_9117157_right_fuel small_9117157_right_count small_9117157_right_encoded small_9117157_right_checked

theorem cover_9117157 : CoveredBy scale carrier boxes root_9117157 := by
  apply coveredBy_split_literal root_9117157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117162 small_9117157_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117162
  · exact small_9117157_right_covered
#print axioms cover_9117157

def root_9115655 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9115655 : CoveredBy scale carrier boxes root_9115655 := by
  apply coveredBy_split_literal root_9115655 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3414.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9117157 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3414.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9117157
#print axioms cover_9115655

def root_9115650 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115650_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115650_right_fuel : Nat := 1
def small_9115650_right_count : Nat := 1
def small_9115650_right_encoded : String := "00000004"
theorem small_9115650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115650_right_root small_9115650_right_fuel small_9115650_right_count small_9115650_right_encoded = true := by
  decide +kernel
theorem small_9115650_right_covered : CoveredBy scale carrier boxes small_9115650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115650_right_root small_9115650_right_fuel small_9115650_right_count small_9115650_right_encoded small_9115650_right_checked

theorem cover_9115650 : CoveredBy scale carrier boxes root_9115650 := by
  apply coveredBy_split_literal root_9115650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9115655 small_9115650_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9115655
  · exact small_9115650_right_covered
#print axioms cover_9115650

def root_9115649 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115649_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115649_right_fuel : Nat := 31
def small_9115649_right_count : Nat := 397
def small_9115649_right_encoded : String := "1151E9090000000408A91301120701000000000008A91303120700F8000000070000000112073CF80000000108A91305120701040000000208A912FD12073D06050000FE135D810904548A0113867100000000000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D06000000070000000300000007000000071386AD000CFD9C03000000070F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F8000000070F8751030000000100000005000000030000000700000007000000000000000400000007000000030000000712073D04000000070000000212073D0008A91303120700F808A91305120701040000000208A912FD12073D06050000FE135D81090CFD9C01000000070F350D0004548A03000000071386ACF80000000104548A05138671040000000200000007000000070000000000000004000000070000000300000007000000070000000112073CF80000000108A91305120701040000000208A912FD12073D06050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D0F800000007000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A87060000000700000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090AD3578110D1010000000000000000050000000500000004000000050000000300000005000000030F34D10600000003000000051386AD040CFD9BFD0F350D06000000070000000300000007000000020F350D000CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A87060F8750FD078000FE128A7D090AD3578300000006000000090000000400000007000000030F878CFD00000003000000060F878D010000000700000000000000030F34D10600000003000000061386AD040CFD9BFD0F350D0600000007000000030000000700000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD078000FE128A7D09022A458500000006000000060000000400000006000000030F878CFD0000000300000006000000010F875103000000010C9A870600000006000000050F878D010C9A86F80F878D030C9A87060F8750FD078000FE128A7D09022A458513E1C504000000020DE7CA000000000600000007000000070000000400000007000000030F878CFD00000003078000FE0000000600000005000000010F875103000000010C9A87060F8750FD078000FE128A7D09022A458513E1C5040000000200000005000000050000000400000005000000030000000500000000000000030F34D10600000003000000051386AD040CFD9BFD0F350D060C9A87000F875101000000000C9A86F80F878D030C9A87060F8750FD00000009000000030F878CFD0000000300000005000000010F87510300000001000000050F878D010C9A86F80F878D0300000007000000010F875103000000010000000500000000000000030F34D1060000000300000005000000020000000000000004135D4509000000040CFD9C010F34D100000000000CFD9C03000000070F350CF800000001000000050F350D000CFD9C030F34D0F804548A0513867104000000020000000700000007000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A8700000000060000000500000003000000050000000500000000000000031207010600000003050000FE135D81090CFD9C010F34D10000000000000000050F350D000CFD9C03000000060000000500000000000000040000000512073D0408A912FD12073D06050000FE135D81090CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060C9A87000F875101000000000C9A86F800000007000000050000000700000003000000050F350D0400000007000000020000000000000004135D4509000000040CFD9C01000000070F350D000CFD9C03000000070F350CF8000000010CFD9C050F34D10400000002000000050000000500000000000000031207010600000003000000070000000200000000"
theorem small_9115649_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115649_right_root small_9115649_right_fuel small_9115649_right_count small_9115649_right_encoded = true := by
  decide +kernel
theorem small_9115649_right_covered : CoveredBy scale carrier boxes small_9115649_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115649_right_root small_9115649_right_fuel small_9115649_right_count small_9115649_right_encoded small_9115649_right_checked

theorem cover_9115649 : CoveredBy scale carrier boxes root_9115649 := by
  apply coveredBy_split_literal root_9115649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9115650 small_9115649_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9115650
  · exact small_9115649_right_covered
#print axioms cover_9115649

def root_9115643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115643_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9115643_left_fuel : Nat := 1
def small_9115643_left_count : Nat := 1
def small_9115643_left_encoded : String := "00000003"
theorem small_9115643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9115643_left_root small_9115643_left_fuel small_9115643_left_count small_9115643_left_encoded = true := by
  decide +kernel
theorem small_9115643_left_covered : CoveredBy scale carrier boxes small_9115643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9115643_left_root small_9115643_left_fuel small_9115643_left_count small_9115643_left_encoded small_9115643_left_checked

theorem cover_9115643 : CoveredBy scale carrier boxes root_9115643 := by
  apply coveredBy_split_literal root_9115643 small_9115643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9115649 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9115643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9115649
#print axioms cover_9115643

def root_9095169 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9095169 : CoveredBy scale carrier boxes root_9095169 := by
  apply coveredBy_split_literal root_9095169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9115643 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095170
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9115643
#print axioms cover_9095169

def root_9095164 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095164_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9095164_right_fuel : Nat := 1
def small_9095164_right_count : Nat := 1
def small_9095164_right_encoded : String := "00000002"
theorem small_9095164_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9095164_right_root small_9095164_right_fuel small_9095164_right_count small_9095164_right_encoded = true := by
  decide +kernel
theorem small_9095164_right_covered : CoveredBy scale carrier boxes small_9095164_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9095164_right_root small_9095164_right_fuel small_9095164_right_count small_9095164_right_encoded small_9095164_right_checked

theorem cover_9095164 : CoveredBy scale carrier boxes root_9095164 := by
  apply coveredBy_split_literal root_9095164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095169 small_9095164_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095169
  · exact small_9095164_right_covered
#print axioms cover_9095164

def root_9094844 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094844_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094844_left_fuel : Nat := 22
def small_9094844_left_count : Nat := 147
def small_9094844_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A9130112070100000000000000000612073D0008A91303120700F800000006000000010000000600000000000000041151E9090000000408A9130112070100000000000000000712073D0008A91303120700F805000104135D450500000002050001060000000800000007000000070000000112073CF80000000105000104135D45050000000200000006000000070000000000000003115224FD000000030A0000FE1152250908A91301120701000000000008A91303120700F808A912FD00000007120701060000000308A91309120700FE0000000700000004000000070000000112073CF80000000108A912FD12073D060000000600000003120701060000000308A91309120700FE00000006000000040000000712073D0008A91303120700F808A912FD12073D0608A91309000000070000000700000003000000070000000112073CF80000000108A912FD12073D0608A91309120700FE000000060000000412073CFE0000000405000104135D4505000000020CFD9C01000000070F350D000CFD9C03000000070000000600000000135D81050CFD9C010F34D10000000000000000070F350D000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFD0F350D06000000060000000300000007000000000000000200000003120701060000000308A91309120700FE00000007000000040000000700000000000000041151E9090000000408A913010000000712073D0008A91303120700F800000007000000010000000700000000"
theorem small_9094844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094844_left_root small_9094844_left_fuel small_9094844_left_count small_9094844_left_encoded = true := by
  decide +kernel
theorem small_9094844_left_covered : CoveredBy scale carrier boxes small_9094844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094844_left_root small_9094844_left_fuel small_9094844_left_count small_9094844_left_encoded small_9094844_left_checked

theorem cover_9094844 : CoveredBy scale carrier boxes root_9094844 := by
  apply coveredBy_split_literal root_9094844 small_9094844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9095164 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9094844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9095164
#print axioms cover_9094844

def root_9094839 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094839_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9094839_right_fuel : Nat := 1
def small_9094839_right_count : Nat := 1
def small_9094839_right_encoded : String := "00000001"
theorem small_9094839_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9094839_right_root small_9094839_right_fuel small_9094839_right_count small_9094839_right_encoded = true := by
  decide +kernel
theorem small_9094839_right_covered : CoveredBy scale carrier boxes small_9094839_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9094839_right_root small_9094839_right_fuel small_9094839_right_count small_9094839_right_encoded small_9094839_right_checked

theorem cover_9094839 : CoveredBy scale carrier boxes root_9094839 := by
  apply coveredBy_split_literal root_9094839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9094844 small_9094839_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9094844
  · exact small_9094839_right_covered
#print axioms cover_9094839

def root_9127381 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127381_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127381_left_fuel : Nat := 22
def small_9127381_left_count : Nat := 267
def small_9127381_left_encoded : String := "0F875101000000000C9A86FE0F878D09078000F8128A7D0307800106128A40FD022A458513E1C504000000020B4D440010801101000000000DE7C9FE000000070000000A10804D010DE7C9FE0E60150908C000F811FC25030640010600000005000000070000000100000007000000040E5FD9090000000408C000F811FC25030640010612FF70FD01152345000000070000000A000000030000000A0000000111FBE90300000001000000070000000013E201040B4D440010801101000000000DE7C9FE0E6015090000000A000000040000000A10804D010DE7C9FE0E60150908C000F80000000600000006000000040E5FD9090000000408C000F811FC25030640010612FF70FD00000006000000030000000A0000000111FBE903000000010000000A000000000000000200000003128A7CFD00000003022A458513E1C504000000020B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A0000000013E201040B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A000000000000000200000001128A41030000000107800106128A40FD022A45850000000713E201040B4D44000000000A10804D010000000A000000000000000200000003128A7CFD000000030000000A000000040F87510900000004078000F8128A7D0307800106128A40FD022A458513E1C504000000020B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC25030640010612FF70FD011523450000000713F895040000000A00000002000000030000000A0000000111FBE903000000010000000A00000004108011090000000408C000F811FC25030640010612FF70FD0115234513F85904000000020BF3E5800000000A100929010000000A0000000013F895040BF3E58000000009100929010000000A0000000000000002000000030000000A0000000111FBE903000000010000000A0000000013E201040B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC25030640010612FF70FD033F67C50000000A0000000A000000030000000A0000000111FBE903000000010000000A00000004108011090000000408C000F811FC25030640010612FF70FD033F67C50000000A00000009000000030000000A0000000111FBE903000000010000000A000000000000000200000003128A7CFD00000003022A458513E1C504000000020B4D44000000000A10804D010000000A0000000013E201040B4D44000000000A10804D010B4D43FE10804D090000000A000000040000000A000000000000000200000001128A41030000000107800106128A40FD022A45850000000A13E201040B4D44000000000A10804D010000000A000000000000000200000003128A7CFD000000030000000A"
theorem small_9127381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127381_left_root small_9127381_left_fuel small_9127381_left_count small_9127381_left_encoded = true := by
  decide +kernel
theorem small_9127381_left_covered : CoveredBy scale carrier boxes small_9127381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127381_left_root small_9127381_left_fuel small_9127381_left_count small_9127381_left_encoded small_9127381_left_checked

theorem cover_9127381 : CoveredBy scale carrier boxes root_9127381 := by
  apply coveredBy_split_literal root_9127381 small_9127381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3418.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9127381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3418.covered
#print axioms cover_9127381

def root_9127375 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127375_left_fuel : Nat := 1
def small_9127375_left_count : Nat := 1
def small_9127375_left_encoded : String := "00000004"
theorem small_9127375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127375_left_root small_9127375_left_fuel small_9127375_left_count small_9127375_left_encoded = true := by
  decide +kernel
theorem small_9127375_left_covered : CoveredBy scale carrier boxes small_9127375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127375_left_root small_9127375_left_fuel small_9127375_left_count small_9127375_left_encoded small_9127375_left_checked

theorem cover_9127375 : CoveredBy scale carrier boxes root_9127375 := by
  apply coveredBy_split_literal root_9127375 small_9127375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127381 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9127375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127381
#print axioms cover_9127375

def root_9127243 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127243_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127243_left_fuel : Nat := 13
def small_9127243_left_count : Nat := 63
def small_9127243_left_encoded : String := "0F34D0FE0C9A87000F87510100000000078000F8128A7D0307800106128A40FD022A458513E1C504000000020AD357890000000510D13CFE000000040B4D440000000005000000090000000600000003128A7CFD00000003022A458513E1C504000000020AD357890000000910D13CFE000000040000000A13E201040AD357890000000A10D13CFE000000040000000A0000000200000001128A41030000000107800106128A40FD022A4585000000070000000600000003128A7CFD000000030000000A0F878D01078000F8128A7D030780010600000006128A7CFD00000003022A4585000000090000000600000001000000090000000000000004"
theorem small_9127243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127243_left_root small_9127243_left_fuel small_9127243_left_count small_9127243_left_encoded = true := by
  decide +kernel
theorem small_9127243_left_covered : CoveredBy scale carrier boxes small_9127243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127243_left_root small_9127243_left_fuel small_9127243_left_count small_9127243_left_encoded small_9127243_left_checked

theorem cover_9127243 : CoveredBy scale carrier boxes root_9127243 := by
  apply coveredBy_split_literal root_9127243 small_9127243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127375 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9127243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127375
#print axioms cover_9127243

def root_9127237 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127237_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127237_left_fuel : Nat := 1
def small_9127237_left_count : Nat := 1
def small_9127237_left_encoded : String := "00000002"
theorem small_9127237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127237_left_root small_9127237_left_fuel small_9127237_left_count small_9127237_left_encoded = true := by
  decide +kernel
theorem small_9127237_left_covered : CoveredBy scale carrier boxes small_9127237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127237_left_root small_9127237_left_fuel small_9127237_left_count small_9127237_left_encoded small_9127237_left_checked

theorem cover_9127237 : CoveredBy scale carrier boxes root_9127237 := by
  apply coveredBy_split_literal root_9127237 small_9127237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127243 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9127237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127243
#print axioms cover_9127237

def root_9127236 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127236_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127236_right_fuel : Nat := 21
def small_9127236_right_count : Nat := 253
def small_9127236_right_encoded : String := "1386AD040CFD9C090F34D0FE0C9A87000F87510100000000078000F800000006128A4103000000010780010600000006128A7CFD00000003067ECE850000000A0000000600000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020B4D440010801101000000000DE7C9FE0E60150900000006000000040000000A000000060000000600000003128A7CFD00000003067ECE8512EA5904000000020B4D44000000000A10804D010DE7C9FE0E6015090000000A000000040000000A0000000012EA95040B4D44000000000A000000060000000200000001128A41030000000107800106128A40FD067ECE8512EA5904000000020B4D44000000000A000000060000000600000003128A7CFD00000003067ECE850000000A0000000A000000040F87510900000004078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020B4D440010801101000000000B4D43FE10804D090000000A000000040000000A10804D010B4D43FE10804D0908C000F811FC250306400106000000060000000A0000000111FBE903000000010000000A00000004108011090000000408C000F800000009000000050000000012EA95040B4D44000000000810804D0100000008000000000000000200000003128A7CFD00000003067ECE8512EA5904000000020B4D44000000000A000000050000000500000001128A41030000000107800106128A40FD067ECE8512EA5904000000020B4D440000000008000000050000000500000003000000050F878D010C9A86FE0F878D09078000F8128A7D030780010600000006128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD901000000000DE7C9FE0E60150900000006000000040E5FD9090000000408C000F811FC250308C00106000000060000000A000000010000000A000000060000000600000001128A4103000000010780010600000006128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD901000000000000000A0000000600000006000000040F87510900000004078000F8128A7D0307800106128A40FD067ECE8512EA5904000000020DE7CA000E5FD901000000000B4D43FE10804D090000000600000004108011090000000408C000F811FC25030640010600000006000000050000000100000005000000060000000600000003128A7CFD00000003067ECE8512EA5904000000020DE7CA000E5FD9010000000000000005000000050000000500000001128A41030000000107800106128A40FD067ECE8512EA5904000000020DE7CA000E5FD9010000000000000005000000050000000500000003000000050000000000000002"
theorem small_9127236_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127236_right_root small_9127236_right_fuel small_9127236_right_count small_9127236_right_encoded = true := by
  decide +kernel
theorem small_9127236_right_covered : CoveredBy scale carrier boxes small_9127236_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127236_right_root small_9127236_right_fuel small_9127236_right_count small_9127236_right_encoded small_9127236_right_checked

theorem cover_9127236 : CoveredBy scale carrier boxes root_9127236 := by
  apply coveredBy_split_literal root_9127236 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127237 small_9127236_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127237
  · exact small_9127236_right_covered
#print axioms cover_9127236

def root_9127231 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127231_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9127231_right_fuel : Nat := 1
def small_9127231_right_count : Nat := 1
def small_9127231_right_encoded : String := "00000000"
theorem small_9127231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9127231_right_root small_9127231_right_fuel small_9127231_right_count small_9127231_right_encoded = true := by
  decide +kernel
theorem small_9127231_right_covered : CoveredBy scale carrier boxes small_9127231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9127231_right_root small_9127231_right_fuel small_9127231_right_count small_9127231_right_encoded small_9127231_right_checked

theorem cover_9127231 : CoveredBy scale carrier boxes root_9127231 := by
  apply coveredBy_split_literal root_9127231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127236 small_9127231_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127236
  · exact small_9127231_right_covered
#print axioms cover_9127231

def root_9126659 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126659_left_fuel : Nat := 32
def small_9126659_left_count : Nat := 267
def small_9126659_left_encoded : String := "0F34D1000000000004548A0513867104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D0307800106128A40FD0000000600000003128A7CFD000000030AD3578110D10100000000000000000910D13D00022A45850000000913E201040DE7C9FE000000060E5FD909000000040000000600000002000000000000000100000009000000040F87510900000004078000F8128A7D0307800106128A40FD0AD3578110D1010000000000022A4585000000090000000610D13D00022A458513E1C504000000020B4D43FE10804D0908C000F811FC250300000009000000010000000900000004108011090000000408C000F811FC25030640010612FF70FD0BE879C11011710000000000000000061011AD000115234513F85904000000020AA6A27E0000000910ED710900000004096000F811AABD0305A0010600000006133170FD0000000300000009000000010000000900000006000000000000000312FFACFD000000030BE879C11011710000000000000000091011AD000115234513F85904000000020AA6A27E0000000910ED7109000000040000000513F895040AA6A27E10EDAD09096000F80000000600000005000000040000000500000002000000000000000111FBE903000000010640010612FF70FD0BE879C100000009000000090000000312FFACFD000000030BE879C1000000090000000513E201040B4D43FE00000006108011090000000408C000F80000000611FBE9030000000100000006000000020000000000000003128A7CFD000000030AD3578110D1010000000000022A45850000000913E201040B4D43FE10804D090000000600000004000000050000000210D13D00022A458513E1C504000000020B4D43FE10804D0908C000F811FC250300000009000000010000000900000004108011090000000408C000F811FC250308C0010611FBE8FD0BE879C1101171000000000000000005000000050000000300000005000000010000000513E201040B4D43FE10804D0908C000F811FC250308C0010611FBE8FD00000006000000030000000500000001000000050000000400000005000000020000000000000001128A41030000000107800106128A40FD0AD3578110D10100000000000000000910D13D00022A45850000000913E201040B4D43FE0000000600000005000000020000000000000003128A7CFD000000030AD3578110D101000000000000000005000000051386AD040CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D030780010600000006128A7CFD000000030AD3578110D10100000000000000000610D13D00067ECE8512EA5904000000020B4D43FE10804D09000000060000000400000005000000050000000000000001128A41030000000107800106000000060000000500000002"
theorem small_9126659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9126659_left_root small_9126659_left_fuel small_9126659_left_count small_9126659_left_encoded = true := by
  decide +kernel
theorem small_9126659_left_covered : CoveredBy scale carrier boxes small_9126659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9126659_left_root small_9126659_left_fuel small_9126659_left_count small_9126659_left_encoded small_9126659_left_checked

theorem cover_9126659 : CoveredBy scale carrier boxes root_9126659 := by
  apply coveredBy_split_literal root_9126659 small_9126659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9127231 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9126659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9127231
#print axioms cover_9126659

def root_9126653 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126653_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9126653_left_fuel : Nat := 1
def small_9126653_left_count : Nat := 1
def small_9126653_left_encoded : String := "00000003"
theorem small_9126653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9126653_left_root small_9126653_left_fuel small_9126653_left_count small_9126653_left_encoded = true := by
  decide +kernel
theorem small_9126653_left_covered : CoveredBy scale carrier boxes small_9126653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9126653_left_root small_9126653_left_fuel small_9126653_left_count small_9126653_left_encoded small_9126653_left_checked

theorem cover_9126653 : CoveredBy scale carrier boxes root_9126653 := by
  apply coveredBy_split_literal root_9126653 small_9126653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9126659 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9126653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9126659
#print axioms cover_9126653

def root_9124199 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9124199 : CoveredBy scale carrier boxes root_9124199 := by
  apply coveredBy_split_literal root_9124199 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3417.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9126653 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3417.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9126653
#print axioms cover_9124199

def root_9124194 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124194_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124194_right_fuel : Nat := 1
def small_9124194_right_count : Nat := 1
def small_9124194_right_encoded : String := "00000001"
theorem small_9124194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124194_right_root small_9124194_right_fuel small_9124194_right_count small_9124194_right_encoded = true := by
  decide +kernel
theorem small_9124194_right_covered : CoveredBy scale carrier boxes small_9124194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124194_right_root small_9124194_right_fuel small_9124194_right_count small_9124194_right_encoded small_9124194_right_checked

theorem cover_9124194 : CoveredBy scale carrier boxes root_9124194 := by
  apply coveredBy_split_literal root_9124194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124199 small_9124194_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124199
  · exact small_9124194_right_covered
#print axioms cover_9124194

def root_9124193 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124193_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124193_right_fuel : Nat := 21
def small_9124193_right_count : Nat := 251
def small_9124193_right_encoded : String := "135D45030000000105000106135D44FD0CFD9C010F34D1000000000004548A0513867104000000020CFD9C09000000060F350CFE0000000400000009000000060F350D0004548A0513867104000000020CFD9C090F34D0FE0C9A87000F87510100000000028000F8000000060000000700000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED030280010600000007000000070000000100000007000000040F87510900000004028000F813D7ED03028001060000000813D7ECFD00000003022A4585000000070000000800000001000000070F878D010C9A86FE0F878D0900000009000000040F87510900000004028000F813D7ED03028001060000000813D7ECFD00000003022A458513E1C504000000020DE7CA000000000800000009000000080000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A8700000000080F878D010000000800000000000000020000000000000003135D80FD000000030CFD9C010F34D1000000000004548A0513867104000000020CFD9C09000000090F350CFE000000040C9A86FE000000090F87510900000004028000F813D7ED0307800106000000090000000500000001000000051386AD040CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F8751090000000400000005000000020F350D0004548A0513867104000000020CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED03078001060000000A0000000A0000000100000007000000040F87510900000004028000F813D7ED03078001060000000A0000000500000001000000050F878D010C9A86FE0F878D0900000009000000040F87510900000004028000F813D7ED0307800106128A40FD022A458513E1C50400000002000000050000000500000003000000050000000100000005000000001386AD040CFD9C090F34D0FE0C9A87000F87510100000000028000F813D7ED030780010600000006128A7CFD000000030000000A000000010000000900000006000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D09028000F813D7ED0307800106128A40FD067ECE850000000A00000006000000030000000A0000000113D7B10300000001078001060000000800000005000000040F87510900000004000000050F878D010C9A86FE0F878D09028000F813D7ED030780010600000006128A7CFD00000003000000050000000113D7B10300000001078001060000000600000005000000040F8751090000000400000005000000000000000200000000"
theorem small_9124193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124193_right_root small_9124193_right_fuel small_9124193_right_count small_9124193_right_encoded = true := by
  decide +kernel
theorem small_9124193_right_covered : CoveredBy scale carrier boxes small_9124193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124193_right_root small_9124193_right_fuel small_9124193_right_count small_9124193_right_encoded small_9124193_right_checked

theorem cover_9124193 : CoveredBy scale carrier boxes root_9124193 := by
  apply coveredBy_split_literal root_9124193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124194 small_9124193_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124194
  · exact small_9124193_right_covered
#print axioms cover_9124193

def root_9124187 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124187_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124187_left_fuel : Nat := 1
def small_9124187_left_count : Nat := 1
def small_9124187_left_encoded : String := "00000004"
theorem small_9124187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124187_left_root small_9124187_left_fuel small_9124187_left_count small_9124187_left_encoded = true := by
  decide +kernel
theorem small_9124187_left_covered : CoveredBy scale carrier boxes small_9124187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124187_left_root small_9124187_left_fuel small_9124187_left_count small_9124187_left_encoded small_9124187_left_checked

theorem cover_9124187 : CoveredBy scale carrier boxes root_9124187 := by
  apply coveredBy_split_literal root_9124187 small_9124187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124193 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9124187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124193
#print axioms cover_9124187

def root_9124169 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124169_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124169_left_fuel : Nat := 5
def small_9124169_left_count : Nat := 9
def small_9124169_left_encoded : String := "120700FE050000F800000006135D45030000000105000106000000060000000900000004"
theorem small_9124169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124169_left_root small_9124169_left_fuel small_9124169_left_count small_9124169_left_encoded = true := by
  decide +kernel
theorem small_9124169_left_covered : CoveredBy scale carrier boxes small_9124169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124169_left_root small_9124169_left_fuel small_9124169_left_count small_9124169_left_encoded small_9124169_left_checked

theorem cover_9124169 : CoveredBy scale carrier boxes root_9124169 := by
  apply coveredBy_split_literal root_9124169 small_9124169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124187 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9124169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124187
#print axioms cover_9124169

def root_9124163 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124163_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9124163_left_fuel : Nat := 1
def small_9124163_left_count : Nat := 1
def small_9124163_left_encoded : String := "00000002"
theorem small_9124163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9124163_left_root small_9124163_left_fuel small_9124163_left_count small_9124163_left_encoded = true := by
  decide +kernel
theorem small_9124163_left_covered : CoveredBy scale carrier boxes small_9124163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9124163_left_root small_9124163_left_fuel small_9124163_left_count small_9124163_left_encoded small_9124163_left_checked

theorem cover_9124163 : CoveredBy scale carrier boxes root_9124163 := by
  apply coveredBy_split_literal root_9124163 small_9124163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.root_9124169 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9124163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218.cover_9124169
#print axioms cover_9124163

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0218
