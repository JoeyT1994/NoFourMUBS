import TaoBundleAssembly0412
import TaoBundleChunkBatch0559
import TaoBundleChunkBatch0560
import TaoBundleChunkBatch0561
import TaoBundleChunkBatch0562
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413
def root_5941259 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941259_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941259_left_fuel : Nat := 29
def small_5941259_left_count : Nat := 475
def small_5941259_left_encoded : String := "138670FE0C9A86FA0F878CFB000000020280010013D7B0F707800106128A40FD067ECE830000000A12EA94F800000001022A45890000000A13E200FE000000040DE7C9FA0000000A0000000A000000030000000A0000000013D7ECF70000000007800106128A40FD067ECE8312EA58F8022A45890000000613E200FE000000040DE7C9FA0000000A0000000A0000000112EA94F800000001022A45890000000613E200FE000000040DE7C9FA000000060000000A00000003128A7CFD000000030000000A0F8750FB0280010013D7B0F707800106128A40FD067ECE8312EA58F8022A458913E1C4FE000000050000000413E200FE000000040B4D43FA10804CFB00000002014001000000000A13F614F7000000000640010612FF70FD0000000A0000000300000009108010FB0140010013F5D8F706400106000000080000000A0000000013F614F7000000000640010612FF70FD0569AC4300000005134110F800000001033F67C90000000513BC30FE00000004000000080000000312FFACFD000000030569AC430000000A0000000A000000020000000112EA94F800000001022A458913E1C4FE0B4D43FA0000000A108010FB01400100000000070000000A000000020000000413E200FE000000040B4D43FA10804CFB000000020140010013F5D8F70640010612FF70FD0000000700000003000000070000000013F614F7000000000640010612FF70FD0000000A000000030000000A108010FB014001000000000713F614F7000000000640010612FF70FD0000000700000003000000070000000200000003128A7CFD00000003067ECE8312EA58F8022A45890000000A13E200FE000000040B4D43FA000000090000000A0000000112EA94F800000001022A45890000000A13E200FE000000040B4D43FA0000000A0000000A0000000013D7ECF70000000007800106128A40FD067ECE8312EA58F8022A458913E1C4FE0B4D43FA10804CFB000000020000000A108010FB03C001000000000513A54CF7000000000000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000203C0010013A510F70640010612FF70FD0569AC430000000A0000000A000000030000000A0000000013A54CF7000000000640010612FF70FD0569AC430000000A0000000A000000030000000A108010FB03C0010013A510F70640010612FF70FD0569AC4300000005134110F800000001033F67C90000000513BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB0320010013C108F705A0010600000007000000070000000013C144F70000000005A00106133134FD05F43D630000000500000007000000030000000A000000020000000312FFACFD000000030569AC430000000A0000000A0000000013A54CF7000000000640010612FF70FD0569AC431340D4F8033F67C90000000513BC30FE000000040AA6A27A10EDACFB00000002046001000000000A0000000A10ED70FB0460010000000005138418F70000000005A00106000000050000000A0000000200000001134110F800000001033F67C913BBF4FE0000000A0000000413BC30FE000000040AA6A27A10EDACFB00000002046001000000000A0000000A10ED70FB046001001383DCF705A00106133134FD05F43D630000000A0000000A000000030000000A00000000138418F70000000005A00106133134FD05F43D630000000A00000006000000030000000A000000020000000312FFACFD000000030569AC430000000A134110F8000000010000000A000000020000000112EA94F800000001022A458913E1C4FE0B4D43FA10804CFB0000000200000006108010FB03C001000000000A13A54CF7000000000000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000203C0010013A510F70640010612FF70FD0793F0C30000000A0000000A000000030000000A0000000013A54CF7000000000640010612FF70FD00000006000000030000000A108010FB03C0010013A510F70640010612FF70FD0793F0C3128220F8033F67C90000000A13BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB00000007000000020000000112825CF800000001000000070000000312FFACFD000000030793F0C30000000A000000070000000013A54CF7000000000640010612FF70FD0793F0C3128220F8033F67C90000000613BC30FE000000040AA6A27A10EDACFB000000020000000A10ED70FB046001001383DCF705A00106133134FD00000007000000030000000700000000138418F70000000005A00106000000060000000A000000020000000112825CF800000001033F67C90000000613BC30FE000000040AA6A27A0000000610ED70FB00000007000000020000000312FFACFD000000030793F0C30000000A0000000A0000000200000003128A7CFD00000003067ECE8312EA58F8022A45890000000A13E200FE000000040B4D43FA10804CFB000000020000000A108010FB03C001000000000A0000000A000000020000000112EA94F800000001022A45890000000A13E200FE000000040B4D43FA10804CFB000000020000000A108010FB03C001000000000A0000000A000000020000000200000004"
theorem small_5941259_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941259_left_root small_5941259_left_fuel small_5941259_left_count small_5941259_left_encoded = true := by
  decide +kernel
theorem small_5941259_left_covered : CoveredBy scale carrier boxes small_5941259_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941259_left_root small_5941259_left_fuel small_5941259_left_count small_5941259_left_encoded small_5941259_left_checked

theorem cover_5941259 : CoveredBy scale carrier boxes root_5941259 := by
  apply coveredBy_split_literal root_5941259 small_5941259_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2235.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5941259_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2235.covered
#print axioms cover_5941259

def root_5941253 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941253_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941253_left_fuel : Nat := 1
def small_5941253_left_count : Nat := 1
def small_5941253_left_encoded : String := "00000002"
theorem small_5941253_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941253_left_root small_5941253_left_fuel small_5941253_left_count small_5941253_left_encoded = true := by
  decide +kernel
theorem small_5941253_left_covered : CoveredBy scale carrier boxes small_5941253_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941253_left_root small_5941253_left_fuel small_5941253_left_count small_5941253_left_encoded small_5941253_left_checked

theorem cover_5941253 : CoveredBy scale carrier boxes root_5941253 := by
  apply coveredBy_split_literal root_5941253 small_5941253_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5941259 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5941253_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5941259
#print axioms cover_5941253

def root_5941252 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941252_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941252_right_fuel : Nat := 5
def small_5941252_right_count : Nat := 9
def small_5941252_right_encoded : String := "0F34D0FA04548A09138670FE028001000000000A0000000A000000040000000900000002"
theorem small_5941252_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941252_right_root small_5941252_right_fuel small_5941252_right_count small_5941252_right_encoded = true := by
  decide +kernel
theorem small_5941252_right_covered : CoveredBy scale carrier boxes small_5941252_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941252_right_root small_5941252_right_fuel small_5941252_right_count small_5941252_right_encoded small_5941252_right_checked

theorem cover_5941252 : CoveredBy scale carrier boxes root_5941252 := by
  apply coveredBy_split_literal root_5941252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5941253 small_5941252_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5941253
  · exact small_5941252_right_covered
#print axioms cover_5941252

def root_5941246 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5941246_left_fuel : Nat := 1
def small_5941246_left_count : Nat := 1
def small_5941246_left_encoded : String := "00000001"
theorem small_5941246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5941246_left_root small_5941246_left_fuel small_5941246_left_count small_5941246_left_encoded = true := by
  decide +kernel
theorem small_5941246_left_covered : CoveredBy scale carrier boxes small_5941246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5941246_left_root small_5941246_left_fuel small_5941246_left_count small_5941246_left_encoded small_5941246_left_checked

theorem cover_5941246 : CoveredBy scale carrier boxes root_5941246 := by
  apply coveredBy_split_literal root_5941246 small_5941246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5941252 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5941246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5941252
#print axioms cover_5941246

def root_5940964 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940964_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940964_left_fuel : Nat := 29
def small_5940964_left_count : Nat := 137
def small_5940964_left_encoded : String := "138670F80CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002028001000000000913D7ECF70000000007800106128A40FD022A45830000000913E200F800000001022A45890000000A0000000900000003000000090F8750FB0280010013D7B0F707800106128A40FD0000000500000003000000090000000013D7ECF70000000007800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE000000040B4D43FA10804CFB0000000203C001000000000913A54CF7000000000640010612FF70FD000000050000000300000009108010FB03C001000000000513A54CF700000000064001060000000512FFACFD00000003033F67C30000000513BC30F8000000010000000A0000000200000003128A7CFD00000003022A45830000000913E200F800000001022A45890000000A0000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB028001000000000913D7ECF70000000007800106128A40FD022A45830000000913E200F800000001067ECE8912EA58FE0B4D43FA00000009108010FB03C001000000000913A54CF7000000000640010612FF70FD033F67C30000000913BC30F8000000010569AC491340D4FE0AA6A27A0000000910ED70FB04600100000000050000000900000002000000040000000900000003000000090000000200000004000000090000000300000009000000020F34D0FA000000090000000200000001"
theorem small_5940964_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5940964_left_root small_5940964_left_fuel small_5940964_left_count small_5940964_left_encoded = true := by
  decide +kernel
theorem small_5940964_left_covered : CoveredBy scale carrier boxes small_5940964_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5940964_left_root small_5940964_left_fuel small_5940964_left_count small_5940964_left_encoded small_5940964_left_checked

theorem cover_5940964 : CoveredBy scale carrier boxes root_5940964 := by
  apply coveredBy_split_literal root_5940964 small_5940964_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5941246 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5940964_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5941246
#print axioms cover_5940964

def root_5940958 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940958_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5940958_left_fuel : Nat := 1
def small_5940958_left_count : Nat := 1
def small_5940958_left_encoded : String := "00000003"
theorem small_5940958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5940958_left_root small_5940958_left_fuel small_5940958_left_count small_5940958_left_encoded = true := by
  decide +kernel
theorem small_5940958_left_covered : CoveredBy scale carrier boxes small_5940958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5940958_left_root small_5940958_left_fuel small_5940958_left_count small_5940958_left_encoded small_5940958_left_checked

theorem cover_5940958 : CoveredBy scale carrier boxes root_5940958 := by
  apply coveredBy_split_literal root_5940958 small_5940958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5940964 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5940958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5940964
#print axioms cover_5940958

def root_5931746 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931746 : CoveredBy scale carrier boxes root_5931746 := by
  apply coveredBy_split_literal root_5931746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0412.root_5931747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5940958 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0412.cover_5931747
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5940958
#print axioms cover_5931746

def root_5931741 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931741_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931741_right_fuel : Nat := 1
def small_5931741_right_count : Nat := 1
def small_5931741_right_encoded : String := "00000000"
theorem small_5931741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931741_right_root small_5931741_right_fuel small_5931741_right_count small_5931741_right_encoded = true := by
  decide +kernel
theorem small_5931741_right_covered : CoveredBy scale carrier boxes small_5931741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931741_right_root small_5931741_right_fuel small_5931741_right_count small_5931741_right_encoded small_5931741_right_checked

theorem cover_5931741 : CoveredBy scale carrier boxes root_5931741 := by
  apply coveredBy_split_literal root_5931741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931746 small_5931741_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931746
  · exact small_5931741_right_covered
#print axioms cover_5931741

def root_5944442 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5944442 : CoveredBy scale carrier boxes root_5944442 := by
  apply coveredBy_split_literal root_5944442 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2236.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2237.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2236.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2237.covered
#print axioms cover_5944442

def root_5944437 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944437_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944437_right_fuel : Nat := 1
def small_5944437_right_count : Nat := 1
def small_5944437_right_encoded : String := "00000003"
theorem small_5944437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5944437_right_root small_5944437_right_fuel small_5944437_right_count small_5944437_right_encoded = true := by
  decide +kernel
theorem small_5944437_right_covered : CoveredBy scale carrier boxes small_5944437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5944437_right_root small_5944437_right_fuel small_5944437_right_count small_5944437_right_encoded small_5944437_right_checked

theorem cover_5944437 : CoveredBy scale carrier boxes root_5944437 := by
  apply coveredBy_split_literal root_5944437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5944442 small_5944437_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5944442
  · exact small_5944437_right_covered
#print axioms cover_5944437

def root_5944436 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5944436 : CoveredBy scale carrier boxes root_5944436 := by
  apply coveredBy_split_literal root_5944436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5944437 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2238.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5944437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2238.covered
#print axioms cover_5944436

def root_5944430 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944430_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5944430_left_fuel : Nat := 1
def small_5944430_left_count : Nat := 1
def small_5944430_left_encoded : String := "00000000"
theorem small_5944430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5944430_left_root small_5944430_left_fuel small_5944430_left_count small_5944430_left_encoded = true := by
  decide +kernel
theorem small_5944430_left_covered : CoveredBy scale carrier boxes small_5944430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5944430_left_root small_5944430_left_fuel small_5944430_left_count small_5944430_left_encoded small_5944430_left_checked

theorem cover_5944430 : CoveredBy scale carrier boxes root_5944430 := by
  apply coveredBy_split_literal root_5944430 small_5944430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5944436 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5944430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5944436
#print axioms cover_5944430

def root_5931740 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931740 : CoveredBy scale carrier boxes root_5931740 := by
  apply coveredBy_split_literal root_5931740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5944430 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5944430
#print axioms cover_5931740

def root_5931735 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931735_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931735_right_fuel : Nat := 1
def small_5931735_right_count : Nat := 1
def small_5931735_right_encoded : String := "00000004"
theorem small_5931735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931735_right_root small_5931735_right_fuel small_5931735_right_count small_5931735_right_encoded = true := by
  decide +kernel
theorem small_5931735_right_covered : CoveredBy scale carrier boxes small_5931735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931735_right_root small_5931735_right_fuel small_5931735_right_count small_5931735_right_encoded small_5931735_right_checked

theorem cover_5931735 : CoveredBy scale carrier boxes root_5931735 := by
  apply coveredBy_split_literal root_5931735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931740 small_5931735_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931740
  · exact small_5931735_right_covered
#print axioms cover_5931735

def root_5931734 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931734 : CoveredBy scale carrier boxes root_5931734 := by
  apply coveredBy_split_literal root_5931734 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931735 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2239.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931735
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2239.covered
#print axioms cover_5931734

def root_5931728 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931728_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931728_left_fuel : Nat := 1
def small_5931728_left_count : Nat := 1
def small_5931728_left_encoded : String := "00000002"
theorem small_5931728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931728_left_root small_5931728_left_fuel small_5931728_left_count small_5931728_left_encoded = true := by
  decide +kernel
theorem small_5931728_left_covered : CoveredBy scale carrier boxes small_5931728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931728_left_root small_5931728_left_fuel small_5931728_left_count small_5931728_left_encoded small_5931728_left_checked

theorem cover_5931728 : CoveredBy scale carrier boxes root_5931728 := by
  apply coveredBy_split_literal root_5931728 small_5931728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931734 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5931728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931734
#print axioms cover_5931728

def root_5931727 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931727_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931727_right_fuel : Nat := 9
def small_5931727_right_count : Nat := 39
def small_5931727_right_encoded : String := "120700FA08A91309120700FE05000100135D44F705000106135D44FD04548A030000000900000006000000030000000900000000135D80F7000000000500010600000006135D80FD0000000304548A0300000007000000060000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000106135D44FD04548A030000000900000005000000030000000500000002"
theorem small_5931727_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931727_right_root small_5931727_right_fuel small_5931727_right_count small_5931727_right_encoded = true := by
  decide +kernel
theorem small_5931727_right_covered : CoveredBy scale carrier boxes small_5931727_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931727_right_root small_5931727_right_fuel small_5931727_right_count small_5931727_right_encoded small_5931727_right_checked

theorem cover_5931727 : CoveredBy scale carrier boxes root_5931727 := by
  apply coveredBy_split_literal root_5931727 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931728 small_5931727_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931728
  · exact small_5931727_right_covered
#print axioms cover_5931727

def root_5931722 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931722_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931722_right_fuel : Nat := 1
def small_5931722_right_count : Nat := 1
def small_5931722_right_encoded : String := "00000001"
theorem small_5931722_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931722_right_root small_5931722_right_fuel small_5931722_right_count small_5931722_right_encoded = true := by
  decide +kernel
theorem small_5931722_right_covered : CoveredBy scale carrier boxes small_5931722_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931722_right_root small_5931722_right_fuel small_5931722_right_count small_5931722_right_encoded small_5931722_right_checked

theorem cover_5931722 : CoveredBy scale carrier boxes root_5931722 := by
  apply coveredBy_split_literal root_5931722 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931727 small_5931722_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931727
  · exact small_5931722_right_covered
#print axioms cover_5931722

def root_5931721 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931721 : CoveredBy scale carrier boxes root_5931721 := by
  apply coveredBy_split_literal root_5931721 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931722 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2240.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931722
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2240.covered
#print axioms cover_5931721

def root_5931716 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931716_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931716_right_fuel : Nat := 1
def small_5931716_right_count : Nat := 1
def small_5931716_right_encoded : String := "00000004"
theorem small_5931716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931716_right_root small_5931716_right_fuel small_5931716_right_count small_5931716_right_encoded = true := by
  decide +kernel
theorem small_5931716_right_covered : CoveredBy scale carrier boxes small_5931716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931716_right_root small_5931716_right_fuel small_5931716_right_count small_5931716_right_encoded small_5931716_right_checked

theorem cover_5931716 : CoveredBy scale carrier boxes root_5931716 := by
  apply coveredBy_split_literal root_5931716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931721 small_5931716_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931721
  · exact small_5931716_right_covered
#print axioms cover_5931716

def root_5931715 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931715_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931715_right_fuel : Nat := 6
def small_5931715_right_count : Nat := 11
def small_5931715_right_encoded : String := "1151E9090000000408A91303120700F808A912FB12073CFA0000000200000005000000050000000100000005"
theorem small_5931715_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931715_right_root small_5931715_right_fuel small_5931715_right_count small_5931715_right_encoded = true := by
  decide +kernel
theorem small_5931715_right_covered : CoveredBy scale carrier boxes small_5931715_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931715_right_root small_5931715_right_fuel small_5931715_right_count small_5931715_right_encoded small_5931715_right_checked

theorem cover_5931715 : CoveredBy scale carrier boxes root_5931715 := by
  apply coveredBy_split_literal root_5931715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931716 small_5931715_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931716
  · exact small_5931715_right_covered
#print axioms cover_5931715

def root_5931710 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931710_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931710_right_fuel : Nat := 1
def small_5931710_right_count : Nat := 1
def small_5931710_right_encoded : String := "00000003"
theorem small_5931710_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931710_right_root small_5931710_right_fuel small_5931710_right_count small_5931710_right_encoded = true := by
  decide +kernel
theorem small_5931710_right_covered : CoveredBy scale carrier boxes small_5931710_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931710_right_root small_5931710_right_fuel small_5931710_right_count small_5931710_right_encoded small_5931710_right_checked

theorem cover_5931710 : CoveredBy scale carrier boxes root_5931710 := by
  apply coveredBy_split_literal root_5931710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931715 small_5931710_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931715
  · exact small_5931710_right_covered
#print axioms cover_5931710

def root_5931709 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931709_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931709_right_fuel : Nat := 29
def small_5931709_right_count : Nat := 329
def small_5931709_right_encoded : String := "115224FD000000030A0000FE1152250908A91303120700F808A912FB12073CFA0000000208A912FD12073D0608A91309120700FE05000100135D44F704548A03138670F800000009000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A00000003000000090F8750FB0C9A87060F8750FD0280010013D7B0F7067ECE83000000090000000A0000000013D7ECF700000000067ECE830000000A0000000A000000030F878CFD0000000302800100000000090000000A00000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD028001000000000913D7ECF700000000067ECE830000000900000005000000030000000900000002000000030F34D10600000003000000090F34D0FA000000090000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD07800100128A40F7022A4583000000090000000A00000000128A7CF700000000022A45830000000A0000000A000000030F878CFD000000030000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD078001000000000900000009000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A000000030000000A0F8750FB0C9A87060F8750FD07800100128A40F7067ECE830000000A0000000A00000000128A7CF700000000067ECE830000000A00000005000000030F878CFD00000003078001000000000A0000000800000002000000041386ACFE000000040C9A86FA0F878CFB000000020000000500000005000000030F34D10600000003000000050F34D0FA0CFD9BFD0F350D0604548A090000000A000000050000000300000005000000020000000412073CFE0000000405000100135D44F704548A03000000091386ACF8000000010000000500000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020000000500000005000000010000000500000003120701060000000308A91309120700FE0500010000000009000000050000000400000005120700FA08A912FD12073D0608A91309120700FE0000000900000004000000050000000300000005000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD12073D0608A91309120700FE05000100135D44F70CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA0F878CFB000000020C9A87060F8750FD0000000A00000003000000050F8750FB0C9A87060F8750FD0280010013D7B0F70AD357830000000A000000050000000013D7ECF7000000000AD357830000000A00000005000000030F878CFD000000030000000500000002000000040000000500000003000000050F34D0FA0CFD9BFD0F350D0604548A09138670FE0000000A0000000400000005000000030000000500000002000000010F350CF8000000010000000500000000135D80F7000000000CFD9C030F34D0F80CFD9BFB0F350CFA00000002000000050000000500000001000000050000000400000005000000030000000500000005000000041151E9090000000400000005"
theorem small_5931709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931709_right_root small_5931709_right_fuel small_5931709_right_count small_5931709_right_encoded = true := by
  decide +kernel
theorem small_5931709_right_covered : CoveredBy scale carrier boxes small_5931709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931709_right_root small_5931709_right_fuel small_5931709_right_count small_5931709_right_encoded small_5931709_right_checked

theorem cover_5931709 : CoveredBy scale carrier boxes root_5931709 := by
  apply coveredBy_split_literal root_5931709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931710 small_5931709_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931710
  · exact small_5931709_right_covered
#print axioms cover_5931709

def root_5931703 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931703_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931703_left_fuel : Nat := 1
def small_5931703_left_count : Nat := 1
def small_5931703_left_encoded : String := "00000002"
theorem small_5931703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931703_left_root small_5931703_left_fuel small_5931703_left_count small_5931703_left_encoded = true := by
  decide +kernel
theorem small_5931703_left_covered : CoveredBy scale carrier boxes small_5931703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931703_left_root small_5931703_left_fuel small_5931703_left_count small_5931703_left_encoded small_5931703_left_checked

theorem cover_5931703 : CoveredBy scale carrier boxes root_5931703 := by
  apply coveredBy_split_literal root_5931703 small_5931703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931709 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5931703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931709
#print axioms cover_5931703

def root_5957938 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957938_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957938_left_fuel : Nat := 29
def small_5957938_left_count : Nat := 253
def small_5957938_left_encoded : String := "138670F804548A09138670FE0280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F800000001022A45890000000500000006128A40FB0780010600000005128A7CFD0000000300000006000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE0000000403C001000000000513A54CF70000000008C000FA0000000511FBE8FB000000050000000200000003128A7CFD00000003022A458313E1C4F8022A458900000005000000090000000113E200F800000001022A458913E1C4FE03C001000000000513A54CF70000000008C000FA000000050000000A0000000413E200FE0000000403C0010013A510F708C000FA11FC24FB000000020000000911FBE8FB00000006000000020000000013A54CF70000000008C000FA11FC24FB0000000208C0010611FBE8FD033F67C3000000050000000A000000030000000911FBE8FB08C0010611FBE8FD033F67C30000000513BC30F800000001033F67C900000005000000060000000311FC24FD000000030000000600000002128A40FB07800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F800000001022A4589000000050000000600000002000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB00000002078001060000000600000006000000060000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD022A458313E1C4F8067ECE8912EA58FE03C001000000000613A54CF70000000008C000FA000000090000000600000004000000060000000113E200F800000001067ECE8912EA58FE03C0010013A510F708C000FA11FC24FB00000002064001060000000600000006000000060000000013A54CF70000000008C000FA11FC24FB000000020640010612FF70FD033F67C313BBF4F80569AC4900000005000000060000000113BC30F8000000010569AC491340D4FE046001001383DCF70000000500000000138418F700000000096000FA11AABCFB0000000205A00106000000050000000911AA80FB000000050000000200000004000000060000000312FFACFD00000003033F67C30000000613BC30F8000000010569AC491340D4FE046001000000000600000009000000040000000611FBE8FB06400106000000060000000600000002000000040000000600000003128A7CFD00000003022A45830000000613E200F800000001067ECE8912EA58FE03C001000000000613A54CF70000000008C000FA00000009000000060000000400000006128A40FB000000060000000200000001"
theorem small_5957938_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5957938_left_root small_5957938_left_fuel small_5957938_left_count small_5957938_left_encoded = true := by
  decide +kernel
theorem small_5957938_left_covered : CoveredBy scale carrier boxes small_5957938_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5957938_left_root small_5957938_left_fuel small_5957938_left_count small_5957938_left_encoded small_5957938_left_checked

theorem cover_5957938 : CoveredBy scale carrier boxes root_5957938 := by
  apply coveredBy_split_literal root_5957938 small_5957938_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2242.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5957938_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2242.covered
#print axioms cover_5957938

def root_5957932 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957932_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5957932_left_fuel : Nat := 1
def small_5957932_left_count : Nat := 1
def small_5957932_left_encoded : String := "00000003"
theorem small_5957932_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5957932_left_root small_5957932_left_fuel small_5957932_left_count small_5957932_left_encoded = true := by
  decide +kernel
theorem small_5957932_left_covered : CoveredBy scale carrier boxes small_5957932_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5957932_left_root small_5957932_left_fuel small_5957932_left_count small_5957932_left_encoded small_5957932_left_checked

theorem cover_5957932 : CoveredBy scale carrier boxes root_5957932 := by
  apply coveredBy_split_literal root_5957932 small_5957932_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5957938 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5957932_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5957938
#print axioms cover_5957932

def root_5955894 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955894 : CoveredBy scale carrier boxes root_5955894 := by
  apply coveredBy_split_literal root_5955894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2241.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5957932 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2241.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5957932
#print axioms cover_5955894

def root_5955888 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955888_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955888_left_fuel : Nat := 1
def small_5955888_left_count : Nat := 1
def small_5955888_left_encoded : String := "00000002"
theorem small_5955888_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955888_left_root small_5955888_left_fuel small_5955888_left_count small_5955888_left_encoded = true := by
  decide +kernel
theorem small_5955888_left_covered : CoveredBy scale carrier boxes small_5955888_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955888_left_root small_5955888_left_fuel small_5955888_left_count small_5955888_left_encoded small_5955888_left_checked

theorem cover_5955888 : CoveredBy scale carrier boxes root_5955888 := by
  apply coveredBy_split_literal root_5955888 small_5955888_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5955894 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5955888_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5955894
#print axioms cover_5955888

def root_5955887 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955887_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955887_right_fuel : Nat := 19
def small_5955887_right_count : Nat := 127
def small_5955887_right_encoded : String := "135D44FB05000106135D44FD04548A03138670F804548A090000000500000006000000011386ACF80000000104548A09000000091386ACFE000000040280010013D7B0F7028000FA13D7ECFB000000020280010613D7B0FD067ECE8300000006000000070000000300000006000000060000000013D7ECF700000000028000FA13D7ECFB00000002028001060000000913D7ECFD00000003067ECE83000000060000000913D7B0FB000000090000000200000003135D80FD0000000304548A03138670F804548A09138670FE028001000000000613D7ECF700000000028000FA13D7ECFB0000000207800106128A40FD0000000500000003128A7CFD0000000300000006000000060000000400000006000000011386ACF80000000104548A09138670FE0280010013D7B0F7028000FA00000007000000070000000013D7ECF700000000028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8022A45890000000513E200FE0000000403C001000000000600000009000000010000000700000003128A7CFD00000003067ECE8312EA58F8022A45890000000700000006000000010000000713D7B0FB07800106000000070000000700000002000000041386ACFE00000004028001000000000613D7ECF700000000028000FA13D7ECFB000000020780010600000006000000060000000600000002"
theorem small_5955887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955887_right_root small_5955887_right_fuel small_5955887_right_count small_5955887_right_encoded = true := by
  decide +kernel
theorem small_5955887_right_covered : CoveredBy scale carrier boxes small_5955887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955887_right_root small_5955887_right_fuel small_5955887_right_count small_5955887_right_encoded small_5955887_right_checked

theorem cover_5955887 : CoveredBy scale carrier boxes root_5955887 := by
  apply coveredBy_split_literal root_5955887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5955888 small_5955887_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5955888
  · exact small_5955887_right_covered
#print axioms cover_5955887

def root_5955882 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955882_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955882_right_fuel : Nat := 1
def small_5955882_right_count : Nat := 1
def small_5955882_right_encoded : String := "00000000"
theorem small_5955882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955882_right_root small_5955882_right_fuel small_5955882_right_count small_5955882_right_encoded = true := by
  decide +kernel
theorem small_5955882_right_covered : CoveredBy scale carrier boxes small_5955882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955882_right_root small_5955882_right_fuel small_5955882_right_count small_5955882_right_encoded small_5955882_right_checked

theorem cover_5955882 : CoveredBy scale carrier boxes root_5955882 := by
  apply coveredBy_split_literal root_5955882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5955887 small_5955882_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5955887
  · exact small_5955882_right_covered
#print axioms cover_5955882

def root_5961760 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5961760 : CoveredBy scale carrier boxes root_5961760 := by
  apply coveredBy_split_literal root_5961760 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2243.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2244.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2243.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2244.covered
#print axioms cover_5961760

def root_5961755 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961755_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961755_right_fuel : Nat := 1
def small_5961755_right_count : Nat := 1
def small_5961755_right_encoded : String := "00000003"
theorem small_5961755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961755_right_root small_5961755_right_fuel small_5961755_right_count small_5961755_right_encoded = true := by
  decide +kernel
theorem small_5961755_right_covered : CoveredBy scale carrier boxes small_5961755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961755_right_root small_5961755_right_fuel small_5961755_right_count small_5961755_right_encoded small_5961755_right_checked

theorem cover_5961755 : CoveredBy scale carrier boxes root_5961755 := by
  apply coveredBy_split_literal root_5961755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5961760 small_5961755_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5961760
  · exact small_5961755_right_covered
#print axioms cover_5961755

def root_5965204 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5965204 : CoveredBy scale carrier boxes root_5965204 := by
  apply coveredBy_split_literal root_5965204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2245.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2246.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2245.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2246.covered
#print axioms cover_5965204

def root_5965199 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965199_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965199_right_fuel : Nat := 1
def small_5965199_right_count : Nat := 1
def small_5965199_right_encoded : String := "00000001"
theorem small_5965199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5965199_right_root small_5965199_right_fuel small_5965199_right_count small_5965199_right_encoded = true := by
  decide +kernel
theorem small_5965199_right_covered : CoveredBy scale carrier boxes small_5965199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5965199_right_root small_5965199_right_fuel small_5965199_right_count small_5965199_right_encoded small_5965199_right_checked

theorem cover_5965199 : CoveredBy scale carrier boxes root_5965199 := by
  apply coveredBy_split_literal root_5965199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5965204 small_5965199_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5965204
  · exact small_5965199_right_covered
#print axioms cover_5965199

def root_5970292 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5970292 : CoveredBy scale carrier boxes root_5970292 := by
  apply coveredBy_split_literal root_5970292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2247.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2248.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2247.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2248.covered
#print axioms cover_5970292

def root_5970286 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5970286_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5970286_left_fuel : Nat := 1
def small_5970286_left_count : Nat := 1
def small_5970286_left_encoded : String := "00000001"
theorem small_5970286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5970286_left_root small_5970286_left_fuel small_5970286_left_count small_5970286_left_encoded = true := by
  decide +kernel
theorem small_5970286_left_covered : CoveredBy scale carrier boxes small_5970286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5970286_left_root small_5970286_left_fuel small_5970286_left_count small_5970286_left_encoded small_5970286_left_checked

theorem cover_5970286 : CoveredBy scale carrier boxes root_5970286 := by
  apply coveredBy_split_literal root_5970286 small_5970286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5970292 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5970286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5970292
#print axioms cover_5970286

def root_5965198 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5965198 : CoveredBy scale carrier boxes root_5965198 := by
  apply coveredBy_split_literal root_5965198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5965199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5970286 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5965199
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5970286
#print axioms cover_5965198

def root_5965192 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965192_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5965192_left_fuel : Nat := 1
def small_5965192_left_count : Nat := 1
def small_5965192_left_encoded : String := "00000003"
theorem small_5965192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5965192_left_root small_5965192_left_fuel small_5965192_left_count small_5965192_left_encoded = true := by
  decide +kernel
theorem small_5965192_left_covered : CoveredBy scale carrier boxes small_5965192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5965192_left_root small_5965192_left_fuel small_5965192_left_count small_5965192_left_encoded small_5965192_left_checked

theorem cover_5965192 : CoveredBy scale carrier boxes root_5965192 := by
  apply coveredBy_split_literal root_5965192 small_5965192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5965198 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5965192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5965198
#print axioms cover_5965192

def root_5961754 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5961754 : CoveredBy scale carrier boxes root_5961754 := by
  apply coveredBy_split_literal root_5961754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5961755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5965192 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5961755
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5965192
#print axioms cover_5961754

def root_5961748 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961748_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961748_left_fuel : Nat := 1
def small_5961748_left_count : Nat := 1
def small_5961748_left_encoded : String := "00000002"
theorem small_5961748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961748_left_root small_5961748_left_fuel small_5961748_left_count small_5961748_left_encoded = true := by
  decide +kernel
theorem small_5961748_left_covered : CoveredBy scale carrier boxes small_5961748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961748_left_root small_5961748_left_fuel small_5961748_left_count small_5961748_left_encoded small_5961748_left_checked

theorem cover_5961748 : CoveredBy scale carrier boxes root_5961748 := by
  apply coveredBy_split_literal root_5961748 small_5961748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5961754 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5961748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5961754
#print axioms cover_5961748

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413
