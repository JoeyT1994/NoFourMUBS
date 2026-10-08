import TaoBundleAssembly0442
import TaoBundleChunkBatch0601
import TaoBundleChunkBatch0602
import TaoBundleChunkBatch0603
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443
def root_6403908 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403908_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403908_right_fuel : Nat := 24
def small_6403908_right_count : Nat := 447
def small_6403908_right_encoded : String := "13E201040B4D43F810804D030DE7CA060E5FD907000000030B4D43FE10804D090640010012FF70F7033F67C513BBF504000000020BF3E5781009290300000005000000011008ED03000000010D4128860EFA1107000000030000000600000009000000090000000012FFACF700000000033F67C513BBF504000000020BF3E578100929030D4128860EFA1107000000030BF3E57E1009290900000005000000041008ED090000000406E0010012C7E4F7000000090000000012C820F70000000002B4D6A500000008000000090EFA4D070BF3E57E000000091008ED09000000040000000900000003000000011008ED03000000010D4128860EFA1107000000030BF3E57E000000061008ED0900000004000000060EFA4D070BF3E57E0000000A1008ED090000000406E001000000000A0000000A0000000313BC31040BF3E5781009290300000009000000011008ED03000000010000000A000000020000000410801109000000040640010012FF70F7033F67C513BBF504000000020BF3E578000000091008ED03000000010D4128860EFA1107000000030AA6A27E10EDAD0905A0010000000009133170F700000000000000090000000410ED7109000000040000000900000009000000090000000012FFACF700000000033F67C513BBF504000000020BF3E578100929030D4128860EFA1107000000030AA6A27E10EDAD0906E00100000000090000000700000004000000070EFA4D070000000900000003000000011008ED03000000010D4128860EFA1107000000030AA6A27E10EDAD0906E0010012C7E4F702B4D6A50000000700000006000000000000000700000004000000070EFA4D070AA6A27E10EDAD0906E0010012C7E4F7000000090000000012C820F70000000002B4D6A513D0D104000000020BA094B810460503000000070000000100000007000000090000000410ED71090000000406E0010000000009000000070000000313BC31040BF3E5781009290300000009000000011008ED03000000010D4128860EFA1107000000030AA6A27E000000060000000700000009000000020E6015070B4D43FE10804D09064001000000000912FFACF700000000033F67C513BBF504000000020DAED8870000000A0E9661060BF3E578000000090000000A0000000300000009000000041080110900000004064001000000000912FFACF700000000033F67C513BBF504000000020DAED887000000090E9661060BF3E578000000091008ED03000000010AA6A27E00000009000000090000000300000009000000030000000110801103000000010DE7CA060E5FD907000000030B4D43FE10804D090640010012FF70F7033F67C513BBF504000000020AA6A27810EDAD030D412886000000060EFA4D070000000A000000030000000100000006000000060000000012FFACF700000000033F67C513BBF504000000020AA6A27810EDAD030D412886000000060000000A0000000100000006000000060000000410801109000000040640010012FF70F7033F67C513BBF504000000020AA6A27810EDAD030D4128860EFA1107000000030AA6A27E0000000610ED710900000004000000060EFA4D070AA6A27E10EDAD0905A0010000000009133170F70000000002B4D6A513D0D104000000020AF9F3380000000600000006000000060000000410ED71090000000400000009000000030000000110ED7103000000010D412886000000060EFA4D070AA6A27E0000000610ED710900000004000000060000000313BC31040AA6A27810EDAD030D41288600000006000000090000000100000006000000020000000012FFACF700000000033F67C513BBF504000000020AA6A27810EDAD030D4128860EFA1107000000030AA6A27E0000000610ED710900000004000000070EFA4D070AA6A27E10EDAD0906E001000000000A12C820F7000000000000000A0000000410ED71090000000406E0010012C7E4F702B4D6A500000007000000070000000000000007000000030000000110ED7103000000010D412886000000060EFA4D070AA6A27E0000000610ED710900000004000000050000000313BC31040AA6A27810EDAD030D4128860EFA110700000003000000060EFA4D070AA6A27E0000000610ED71090000000400000005000000030000000110ED71030000000100000006000000020E6015070B4D43FE10804D09064001000000000A0000000A0000000410801109000000040640010012FF70F7033F67C513BBF504000000020DAED8870E96250600000003000000090E9661060AA6A2780000000910ED7103000000010000000A00000003000000090000000012FFACF700000000033F67C513BBF504000000020DAED8870E962506000000030000000A0E9661060AA6A27810EDAD030AA6A27E0000000A10ED71090000000406E001000000000900000005000000010000000A000000030000000A0000000300000002"
theorem small_6403908_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403908_right_root small_6403908_right_fuel small_6403908_right_count small_6403908_right_encoded = true := by
  decide +kernel
theorem small_6403908_right_covered : CoveredBy scale carrier boxes small_6403908_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403908_right_root small_6403908_right_fuel small_6403908_right_count small_6403908_right_encoded small_6403908_right_checked

theorem cover_6403908 : CoveredBy scale carrier boxes root_6403908 := by
  apply coveredBy_split_literal root_6403908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6403909 small_6403908_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6403909
  · exact small_6403908_right_covered
#print axioms cover_6403908

def root_6403903 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403903_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403903_right_fuel : Nat := 1
def small_6403903_right_count : Nat := 1
def small_6403903_right_encoded : String := "00000000"
theorem small_6403903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403903_right_root small_6403903_right_fuel small_6403903_right_count small_6403903_right_encoded = true := by
  decide +kernel
theorem small_6403903_right_covered : CoveredBy scale carrier boxes small_6403903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403903_right_root small_6403903_right_fuel small_6403903_right_count small_6403903_right_encoded small_6403903_right_checked

theorem cover_6403903 : CoveredBy scale carrier boxes root_6403903 := by
  apply coveredBy_split_literal root_6403903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403908 small_6403903_right_root coord0 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403908
  · exact small_6403903_right_covered
#print axioms cover_6403903

def root_6403902 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6403902 : CoveredBy scale carrier boxes root_6403902 := by
  apply coveredBy_split_literal root_6403902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403903 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2409.root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403903
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2409.covered
#print axioms cover_6403902

def root_6403896 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403896_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403896_left_fuel : Nat := 1
def small_6403896_left_count : Nat := 1
def small_6403896_left_encoded : String := "00000004"
theorem small_6403896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403896_left_root small_6403896_left_fuel small_6403896_left_count small_6403896_left_encoded = true := by
  decide +kernel
theorem small_6403896_left_covered : CoveredBy scale carrier boxes small_6403896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403896_left_root small_6403896_left_fuel small_6403896_left_count small_6403896_left_encoded small_6403896_left_checked

theorem cover_6403896 : CoveredBy scale carrier boxes root_6403896 := by
  apply coveredBy_split_literal root_6403896 small_6403896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403902 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6403896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403902
#print axioms cover_6403896

def root_6403486 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403486_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403486_left_fuel : Nat := 18
def small_6403486_left_count : Nat := 193
def small_6403486_left_encoded : String := "0F878D0907800100128A40F7022A458513E1C504000000020B4D43F810804D030DE7CA06000000050E6015070DE7C9FE000000050E5FD90900000004064001000000000512FFACF70000000001152345000000050000000A000000030000000110801103000000010DE7CA060E5FD907000000030DE7C9FE0E60150900000005000000040E5FD909000000040640010012FF70F70115234500000005000000060000000012FFACF7000000000115234513F85904000000020AA6A2780000000810ED7103000000010000000613F895040AA6A27810EDAD030000000A0000000100000006000000020E6015070DE7C9FE0000000A0E5FD90900000004064001000000000A12FFACF7000000000000000A0000000313E201040B4D43F810804D030DE7CA060E5FD907000000030DE7C9FE0E60150900000005000000040E5FD909000000040640010012FF70F7000000050000000012FFACF700000000033F67C513BBF504000000020BF3E578000000050000000A0000000A0E6015070000000A000000030000000110801103000000010DE7CA060E5FD907000000030DE7C9FE000000060E5FD90900000004000000060000000A0000000200000000128A7CF700000000022A458513E1C504000000020B4D43F810804D030DE7CA060E5FD907000000030DE7C9FE000000080E5FD9090000000400000008000000080000000110801103000000010DE7CA060E5FD907000000030DE7C9FE000000080E5FD9090000000408C0010011FBE8F7011523450000000813F895040AA6A27800000008000000060000000200000000000000080E6015070DE7C9FE000000080E5FD9090000000408C001000000000A000000080000000313E201040B4D43F810804D030DE7CA060E5FD907000000030DE7C9FE0000000A0E5FD9090000000408C0010011FBE8F7033F67C513BBF504000000020BF3E578000000080000000A0000000A0000000011FC24F7000000000000000A0E6015070000000A000000030000000110801103000000010DE7CA060E5FD907000000030000000A0000000A0000000200000004"
theorem small_6403486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403486_left_root small_6403486_left_fuel small_6403486_left_count small_6403486_left_encoded = true := by
  decide +kernel
theorem small_6403486_left_covered : CoveredBy scale carrier boxes small_6403486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403486_left_root small_6403486_left_fuel small_6403486_left_count small_6403486_left_encoded small_6403486_left_checked

theorem cover_6403486 : CoveredBy scale carrier boxes root_6403486 := by
  apply coveredBy_split_literal root_6403486 small_6403486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403896 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6403486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403896
#print axioms cover_6403486

def root_6403481 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403481_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6403481_right_fuel : Nat := 1
def small_6403481_right_count : Nat := 1
def small_6403481_right_encoded : String := "00000003"
theorem small_6403481_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6403481_right_root small_6403481_right_fuel small_6403481_right_count small_6403481_right_encoded = true := by
  decide +kernel
theorem small_6403481_right_covered : CoveredBy scale carrier boxes small_6403481_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6403481_right_root small_6403481_right_fuel small_6403481_right_count small_6403481_right_encoded small_6403481_right_checked

theorem cover_6403481 : CoveredBy scale carrier boxes root_6403481 := by
  apply coveredBy_split_literal root_6403481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403486 small_6403481_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403486
  · exact small_6403481_right_covered
#print axioms cover_6403481

def root_6402221 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6402221 : CoveredBy scale carrier boxes root_6402221 := by
  apply coveredBy_split_literal root_6402221 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2405.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6403481 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2405.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6403481
#print axioms cover_6402221

def root_6402215 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6402215_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6402215_left_fuel : Nat := 1
def small_6402215_left_count : Nat := 1
def small_6402215_left_encoded : String := "00000001"
theorem small_6402215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6402215_left_root small_6402215_left_fuel small_6402215_left_count small_6402215_left_encoded = true := by
  decide +kernel
theorem small_6402215_left_covered : CoveredBy scale carrier boxes small_6402215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6402215_left_root small_6402215_left_fuel small_6402215_left_count small_6402215_left_encoded small_6402215_left_checked

theorem cover_6402215 : CoveredBy scale carrier boxes root_6402215 := by
  apply coveredBy_split_literal root_6402215 small_6402215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6402221 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6402215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6402221
#print axioms cover_6402215

def root_6400527 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6400527 : CoveredBy scale carrier boxes root_6400527 := by
  apply coveredBy_split_literal root_6400527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2404.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6402215 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2404.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6402215
#print axioms cover_6400527

def root_6400521 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400521_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400521_left_fuel : Nat := 1
def small_6400521_left_count : Nat := 1
def small_6400521_left_encoded : String := "00000004"
theorem small_6400521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6400521_left_root small_6400521_left_fuel small_6400521_left_count small_6400521_left_encoded = true := by
  decide +kernel
theorem small_6400521_left_covered : CoveredBy scale carrier boxes small_6400521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6400521_left_root small_6400521_left_fuel small_6400521_left_count small_6400521_left_encoded small_6400521_left_checked

theorem cover_6400521 : CoveredBy scale carrier boxes root_6400521 := by
  apply coveredBy_split_literal root_6400521 small_6400521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6400527 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6400521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6400527
#print axioms cover_6400521

def root_6400403 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400403_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400403_left_fuel : Nat := 13
def small_6400403_left_count : Nat := 57
def small_6400403_left_encoded : String := "0F34D0FE0C9A86F80F878D030C9A8706000000050F878D070000000500000003000000010F875103000000010C9A87060F8751070000000307800100128A40F70000000500000000128A7CF700000000022A458513E1C504000000020AD357890000000510D13CFE000000040B4D43F8000000050000000613E201040AD357890000000A00000006000000020F878D0707800100128A40F7022A4585000000050000000A00000000128A7CF700000000022A458513E1C504000000020AD357890000000A10D13CFE000000040B4D43F8000000080000000A0000000A0000000300000004"
theorem small_6400403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6400403_left_root small_6400403_left_fuel small_6400403_left_count small_6400403_left_encoded = true := by
  decide +kernel
theorem small_6400403_left_covered : CoveredBy scale carrier boxes small_6400403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6400403_left_root small_6400403_left_fuel small_6400403_left_count small_6400403_left_encoded small_6400403_left_checked

theorem cover_6400403 : CoveredBy scale carrier boxes root_6400403 := by
  apply coveredBy_split_literal root_6400403 small_6400403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6400521 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6400403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6400521
#print axioms cover_6400403

def root_6400398 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400398_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6400398_right_fuel : Nat := 1
def small_6400398_right_count : Nat := 1
def small_6400398_right_encoded : String := "00000003"
theorem small_6400398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6400398_right_root small_6400398_right_fuel small_6400398_right_count small_6400398_right_encoded = true := by
  decide +kernel
theorem small_6400398_right_covered : CoveredBy scale carrier boxes small_6400398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6400398_right_root small_6400398_right_fuel small_6400398_right_count small_6400398_right_encoded small_6400398_right_checked

theorem cover_6400398 : CoveredBy scale carrier boxes root_6400398 := by
  apply coveredBy_split_literal root_6400398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6400403 small_6400398_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6400403
  · exact small_6400398_right_covered
#print axioms cover_6400398

def root_6399414 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399414_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399414_left_fuel : Nat := 31
def small_6399414_left_count : Nat := 463
def small_6399414_left_encoded : String := "0F34D106000000030CFD9C090F34D0FE0C9A86F80F878D030780010000000005128A7CF700000000022A4585000000050000000A000000010F875103000000010000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0907800100128A40F7022A4585000000050000000900000000128A7CF700000000022A458513E1C504000000020AD3578710D10106000000030DE7C9F8000000080000000A10D13D060DE7C9F8000000080E5FD90300000001000000080000000313E201040AD3578710D10106000000030000000910D13D060DE7C9F80E60150300000009000000010000000A0000000300000002000000040F8751090000000407800100128A40F7022A458513E1C504000000020AD357870000000910D13D060DE7C9F8000000090E5FD903000000010B4D43FE0000000900000006000000030000000900000000128A7CF700000000022A458513E1C504000000020AD3578710D10106000000030000000610D13D060DE7C9F80E60150300000006000000010E5FD903000000010B4D43FE00000008000000060000000313E201040AD3578710D10106000000030000000910D13D060DE7C9F8000000090E5FD903000000010B4D43FE000000091080110900000004000000090000000300000002000000010F875103000000010C9A86FE0F878D0907800100128A40F7022A458513E1C504000000020AD3578710D10106000000030000000A10D13D060B4D43F810804D030DE7C9FE000000050E5FD9090000000406400100000000050000000A000000010000000A000000030000000A00000000128A7CF700000000022A458513E1C504000000020AD3578710D10106000000030000000A10D13D060B4D43F810804D030DE7C9FE000000080E5FD9090000000400000008000000010000000A000000030000000A000000040F8751090000000407800100128A40F7022A458513E1C504000000020AD3578710D10106000000030B4D43F810804D03000000090000000110801103000000010B4D43FE0000000A108011090000000406400100000000090000000A10D13D060B4D43F810804D030B4D43FE10804D090640010012FF70F7000000090000000012FFACF7000000000115234513F85904000000020BE879C71011710600000003000000060000000800000009000000041080110900000004064001000000000912FFACF7000000000115234500000006000000090000000110801103000000010B4D43FE10804D090640010012FF70F70115234513F85904000000020BE879C70000000A0000000A0000000A0000000012FFACF7000000000000000A0000000410801109000000040640010012FF70F70115234513F85904000000020BE879C71011710600000003000000091011AD060AA6A27810EDAD030AA6A27E00000009000000060000000110ED7103000000010AA6A27E0000000A10ED71090000000405A00100133134F70000000900000000133170F700000000008A9225000000060000000900000003000000090000000012FFACF7000000000115234513F85904000000020BE879C710117106000000030000000A1011AD060AA6A27810EDAD030AA6A27E00000008000000060000000110ED7103000000010AA6A27E0000000A10ED71090000000406E001000000000A12C820F7000000000000000A0000000313F895040BE879C70000000A1011AD060AA6A27810EDAD030000000A000000010000000A00000003000000020000000313E201040AD3578710D10106000000030000000910D13D060B4D43F810804D03000000090000000110801103000000010B4D43FE0000000A108011090000000406400100000000090000000A000000030000000200000000128A7CF700000000022A458513E1C504000000020AD3578710D10106000000030B4D43F810804D030B4D43FE00000008000000060000000110801103000000010000000A10D13D060B4D43F810804D030B4D43FE10804D0908C0010011FBE8F701152345000000080000000A000000000000000800000004108011090000000408C0010011FBE8F7011523450000000613F895040BE879C71011710600000003000000061011AD060BF3E578000000061008ED030000000100000008000000030000000200000000000000080000000110801103000000010B4D43FE10804D0908C001000000000A0000000800000004108011090000000408C0010011FBE8F70115234513F85904000000020BE879C71011710600000003000000080000000813F895040BE879C70000000A0000000A000000020000000011FC24F7000000000115234500000008000000050000000313E201040AD3578710D10106000000030000000A10D13D060B4D43F810804D030B4D43FE10804D090000000A00000004108011090000000408C0010011FBE8F7000000090000000011FC24F700000000033F67C513BBF504000000020BE879C70000000A0000000A0000000A0000000110801103000000010B4D43FE0000000A108011090000000408C001000000000A000000050000000300000002"
theorem small_6399414_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6399414_left_root small_6399414_left_fuel small_6399414_left_count small_6399414_left_encoded = true := by
  decide +kernel
theorem small_6399414_left_covered : CoveredBy scale carrier boxes small_6399414_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6399414_left_root small_6399414_left_fuel small_6399414_left_count small_6399414_left_encoded small_6399414_left_checked

theorem cover_6399414 : CoveredBy scale carrier boxes root_6399414 := by
  apply coveredBy_split_literal root_6399414 small_6399414_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6400398 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6399414_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6400398
#print axioms cover_6399414

def root_6399408 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399408_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399408_left_fuel : Nat := 1
def small_6399408_left_count : Nat := 1
def small_6399408_left_encoded : String := "00000002"
theorem small_6399408_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6399408_left_root small_6399408_left_fuel small_6399408_left_count small_6399408_left_encoded = true := by
  decide +kernel
theorem small_6399408_left_covered : CoveredBy scale carrier boxes small_6399408_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6399408_left_root small_6399408_left_fuel small_6399408_left_count small_6399408_left_encoded small_6399408_left_checked

theorem cover_6399408 : CoveredBy scale carrier boxes root_6399408 := by
  apply coveredBy_split_literal root_6399408 small_6399408_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399414 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6399408_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399414
#print axioms cover_6399408

def root_6399407 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6399407 : CoveredBy scale carrier boxes root_6399407 := by
  apply coveredBy_split_literal root_6399407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2410.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399408
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2410.covered
#print axioms cover_6399407

def root_6399401 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399401_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399401_left_fuel : Nat := 1
def small_6399401_left_count : Nat := 1
def small_6399401_left_encoded : String := "00000001"
theorem small_6399401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6399401_left_root small_6399401_left_fuel small_6399401_left_count small_6399401_left_encoded = true := by
  decide +kernel
theorem small_6399401_left_covered : CoveredBy scale carrier boxes small_6399401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6399401_left_root small_6399401_left_fuel small_6399401_left_count small_6399401_left_encoded small_6399401_left_checked

theorem cover_6399401 : CoveredBy scale carrier boxes root_6399401 := by
  apply coveredBy_split_literal root_6399401 small_6399401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399407 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6399401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399407
#print axioms cover_6399401

def root_6399043 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399043_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399043_left_fuel : Nat := 23
def small_6399043_left_count : Nat := 165
def small_6399043_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000090F87510900000004000000090F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D0900000005000000040F8751090000000407800100128A40F70000000500000000128A7CF7000000000AD3578310D100F8000000050000000110D13CF800000001022A458513E1C504000000020B4D4406000000050000000813E201040B4D440610801107000000030B4D43FE10804D0900000005000000040000000710804D070B4D43FE10804D090000000500000004108011090000000408C00100000000070000000700000003000000020F878D070C9A86FE0F878D0900000005000000040F8751090000000407800100128A40F70000000900000000128A7CF7000000000AD357830000000910D13CF800000001022A458513E1C504000000020DE7CA060E5FD9070000000300000008000000060000000900000003000000031386AD040CFD9C070F34D106000000030CFD9C090F34D0FE0000000500000004000000090F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D090780010000000005128A7CF7000000000AD357830000000910D13CF800000001067ECE8512EA5904000000020B4D4406000000050000000900000009000000040F875109000000040780010000000009128A7CF7000000000AD357830000000910D13CF800000001067ECE8512EA5904000000020B4D440610801107000000030B4D43FE00000009108011090000000400000007000000090000000900000009000000030000000200000001"
theorem small_6399043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6399043_left_root small_6399043_left_fuel small_6399043_left_count small_6399043_left_encoded = true := by
  decide +kernel
theorem small_6399043_left_covered : CoveredBy scale carrier boxes small_6399043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6399043_left_root small_6399043_left_fuel small_6399043_left_count small_6399043_left_encoded small_6399043_left_checked

theorem cover_6399043 : CoveredBy scale carrier boxes root_6399043 := by
  apply coveredBy_split_literal root_6399043 small_6399043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399401 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6399043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399401
#print axioms cover_6399043

def root_6399037 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399037_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6399037_left_fuel : Nat := 1
def small_6399037_left_count : Nat := 1
def small_6399037_left_encoded : String := "00000000"
theorem small_6399037_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6399037_left_root small_6399037_left_fuel small_6399037_left_count small_6399037_left_encoded = true := by
  decide +kernel
theorem small_6399037_left_covered : CoveredBy scale carrier boxes small_6399037_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6399037_left_root small_6399037_left_fuel small_6399037_left_count small_6399037_left_encoded small_6399037_left_checked

theorem cover_6399037 : CoveredBy scale carrier boxes root_6399037 := by
  apply coveredBy_split_literal root_6399037 small_6399037_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399043 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6399037_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399043
#print axioms cover_6399037

def root_6397137 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6397137 : CoveredBy scale carrier boxes root_6397137 := by
  apply coveredBy_split_literal root_6397137 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2403.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6399037 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2403.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6399037
#print axioms cover_6397137

def root_6397131 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397131_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397131_left_fuel : Nat := 1
def small_6397131_left_count : Nat := 1
def small_6397131_left_encoded : String := "00000004"
theorem small_6397131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6397131_left_root small_6397131_left_fuel small_6397131_left_count small_6397131_left_encoded = true := by
  decide +kernel
theorem small_6397131_left_covered : CoveredBy scale carrier boxes small_6397131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6397131_left_root small_6397131_left_fuel small_6397131_left_count small_6397131_left_encoded small_6397131_left_checked

theorem cover_6397131 : CoveredBy scale carrier boxes root_6397131 := by
  apply coveredBy_split_literal root_6397131 small_6397131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6397137 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6397131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6397137
#print axioms cover_6397131

def root_6397055 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397055_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397055_left_fuel : Nat := 13
def small_6397055_left_count : Nat := 35
def small_6397055_left_encoded : String := "120700FE05000100135D44F70000000500000000135D80F7000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A0513867104000000020CFD9C07000000050F350D0600000005000000031386AD040CFD9C070000000A0F350D0604548A09000000051386ACFE000000040C9A86F8000000050000000A000000030000000200000004"
theorem small_6397055_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6397055_left_root small_6397055_left_fuel small_6397055_left_count small_6397055_left_encoded = true := by
  decide +kernel
theorem small_6397055_left_covered : CoveredBy scale carrier boxes small_6397055_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6397055_left_root small_6397055_left_fuel small_6397055_left_count small_6397055_left_encoded small_6397055_left_checked

theorem cover_6397055 : CoveredBy scale carrier boxes root_6397055 := by
  apply coveredBy_split_literal root_6397055 small_6397055_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6397131 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6397055_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6397131
#print axioms cover_6397055

def root_6397050 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397050_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6397050_right_fuel : Nat := 1
def small_6397050_right_count : Nat := 1
def small_6397050_right_encoded : String := "00000003"
theorem small_6397050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6397050_right_root small_6397050_right_fuel small_6397050_right_count small_6397050_right_encoded = true := by
  decide +kernel
theorem small_6397050_right_covered : CoveredBy scale carrier boxes small_6397050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6397050_right_root small_6397050_right_fuel small_6397050_right_count small_6397050_right_encoded small_6397050_right_checked

theorem cover_6397050 : CoveredBy scale carrier boxes root_6397050 := by
  apply coveredBy_split_literal root_6397050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.root_6397055 small_6397050_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443.cover_6397055
  · exact small_6397050_right_covered
#print axioms cover_6397050

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0443
