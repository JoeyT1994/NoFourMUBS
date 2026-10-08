import TaoBundleAssembly0405
import TaoBundleChunkBatch0546
import TaoBundleChunkBatch0547
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406
def root_5813326 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813326_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813326_right_fuel : Nat := 26
def small_5813326_right_count : Nat := 305
def small_5813326_right_encoded : String := "13E20104067ECE7F12EA94FE000000040DE7CA000E5FD8F70DE7CA060E5FD8FD0569AC39134110F8000000010000000800000006000000030E6014FD000000030569AC39134110F800000001033F67C513BBF504000000020793F0BF0000000A128220FE0DAED87D0E96610600000008000000030E96250600000003000000090000000413BC31040793F0BF0000000A00000009000000021340D4F8033F67C513BBF504000000020793F0BF0000000A128220FE0DAED87D0E96610600000006000000030000000A0000000413BC31040000000A0000000200000001000000000E6014F7000000000DE7CA060E5FD8FD00000006000000030E6014FD000000030569AC39134110F800000001033F67C513BBF504000000020793F0BF12825CFE000000040DAED8770E9661000DAED87D0000000600000006000000000E9625000000000000000006128220FE0DAED8770E9661000DAED87D0E96610600000006000000030E9625060000000305F43D591317F8F80000000102B4D6A50000000A000000090000000A000000000E962500000000000DAED87D00000006000000060000000413BC310400000006000000021340D4F8000000060000000112EA58FE0DE7CA000E5FD8F70DE7CA060E5FD8FD0569AC39134110F800000001033F67C513BBF504000000020569AC3F0000000800000008000000081340D4F8033F67C513BBF504000000020569AC3F00000006000000080000000600000001000000030E6014FD000000030569AC39000000091340D4F8033F67C513BBF504000000020569AC3F134110FE000000040DAED87D0E9661060D4128800000000800000006000000030E9625060000000300000009000000090000000900000001000000000E6014F7000000000DE7CA060E5FD8FD0569AC39134110F800000001033F67C513BBF504000000020569AC3F000000061340D4FE0DAED8770E9661000D4128860000000600000008000000000E9625000000000000000006000000040000000600000006000000030E6014FD000000030569AC39134110F800000001033F67C513BBF504000000020569AC3F134110FE000000040DAED8770E9661000DAED87D0E96610605F43D590000000900000006000000030E9625060000000300000009000000000E962500000000000DAED87D0E96610600000006000000030E9625060000000305F43D591317F8F80000000102B4D6A513D0D1040000000205F43D5F1317F8FE000000040D563A37000000090EE75100000000000000000600000009000000091317BCF802B4D6A513D0D1040000000205F43D5F000000061317BCFE000000060000000400000006000000011340D4FE0DAED877000000090E962500000000000DAED87D0E96610605F43D590000000900000005000000030E96250600000003000000090000000413BC31040569AC3F134110FE000000040DAED877000000090E962500000000000000000600000009000000021340D4F8033F67C513BBF504000000020569AC3F134110FE000000040DAED8770E9661000DAED87D000000060E9625060000000304DF1B190000000900000005000000000E96250000000000000000061340D4FE0DAED8770E9661000000000500000000000000050000000413BC31040569AC3F000000060000000500000002000000010000000400000002"
theorem small_5813326_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5813326_right_root small_5813326_right_fuel small_5813326_right_count small_5813326_right_encoded = true := by
  decide +kernel
theorem small_5813326_right_covered : CoveredBy scale carrier boxes small_5813326_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5813326_right_root small_5813326_right_fuel small_5813326_right_count small_5813326_right_encoded small_5813326_right_checked

theorem cover_5813326 : CoveredBy scale carrier boxes root_5813326 := by
  apply coveredBy_split_literal root_5813326 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5813327 small_5813326_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5813327
  · exact small_5813326_right_covered
#print axioms cover_5813326

def root_5813321 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813321_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5813321_right_fuel : Nat := 1
def small_5813321_right_count : Nat := 1
def small_5813321_right_encoded : String := "00000001"
theorem small_5813321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5813321_right_root small_5813321_right_fuel small_5813321_right_count small_5813321_right_encoded = true := by
  decide +kernel
theorem small_5813321_right_covered : CoveredBy scale carrier boxes small_5813321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5813321_right_root small_5813321_right_fuel small_5813321_right_count small_5813321_right_encoded small_5813321_right_checked

theorem cover_5813321 : CoveredBy scale carrier boxes root_5813321 := by
  apply coveredBy_split_literal root_5813321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5813326 small_5813321_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5813326
  · exact small_5813321_right_covered
#print axioms cover_5813321

def root_5810119 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5810119 : CoveredBy scale carrier boxes root_5810119 := by
  apply coveredBy_split_literal root_5810119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.root_5810120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5813321 coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0405.cover_5810120
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5813321
#print axioms cover_5810119

def root_5810113 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5810113_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5810113_left_fuel : Nat := 1
def small_5810113_left_count : Nat := 1
def small_5810113_left_encoded : String := "00000003"
theorem small_5810113_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5810113_left_root small_5810113_left_fuel small_5810113_left_count small_5810113_left_encoded = true := by
  decide +kernel
theorem small_5810113_left_covered : CoveredBy scale carrier boxes small_5810113_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5810113_left_root small_5810113_left_fuel small_5810113_left_count small_5810113_left_encoded small_5810113_left_checked

theorem cover_5810113 : CoveredBy scale carrier boxes root_5810113 := by
  apply coveredBy_split_literal root_5810113 small_5810113_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5810119 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5810113_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5810119
#print axioms cover_5810113

def root_5809643 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809643_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809643_left_fuel : Nat := 20
def small_5809643_left_count : Nat := 225
def small_5809643_left_encoded : String := "0F8750FD067ECE7912EA94F800000001022A458513E1C50400000002067ECE7F12EA94FE000000040DE7CA000E5FD8F70B4D4406108010FD000000080000000310804CFD000000030793F0B900000005128220F801152345000000050000000800000001000000000E6014F7000000000B4D4406108010FD0793F0B900000007000000060000000310804CFD000000030793F0B912825CF800000001011523450000000513F895040793F0BF000000050000000700000002128220F80115234513F85904000000020793F0BF00000005128220FE0DAED877000000050E962500000000000000000500000004000000060000000112EA58FE0DE7CA000E5FD8F70B4D4406108010FD000000080000000310804CFD000000030793F0B912825CF8000000010115234513F85904000000020569AC3F000000050000000700000008128220F80115234513F85904000000020569AC3F00000008000000080000000800000001000000000E6014F7000000000B4D44060000000710804CFD000000030793F0B900000007128220F80115234513F85904000000020569AC3F134110FE00000004000000070000000700000007000000010000000413E20104067ECE7F12EA94FE000000040DE7CA000E5FD8F700000008000000000000000612EA58FE0DE7CA000E5FD8F700000008000000000E6014F7000000000B4D44060000000710804CFD000000030793F0B900000007128220F80000000600000001000000040000000212EA58F8022A458513E1C50400000002067ECE7F12EA94FE000000040DE7CA000E5FD8F70B4D44060000000610804CFD000000030569AC39134110F8000000010115234513F85904000000020793F0BF00000005000000080000000600000006000000000000000612EA58FE0DE7CA000E5FD8F70B4D4406108010FD000000080000000310804CFD000000030569AC39134110F8000000010115234513F85904000000020569AC3F0000000800000008000000081340D4F80115234513F85904000000020569AC3F00000006000000080000000600000001000000000E6014F7000000000B4D4406108010FD000000060000000310804CFD000000030569AC39134110F8000000010115234513F85904000000020569AC3F000000060000000A00000006000000060000000413E20104067ECE7F0000000612EA58FE0DE7CA000E5FD8F700000006000000000000000600000004000000020000000100000003"
theorem small_5809643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809643_left_root small_5809643_left_fuel small_5809643_left_count small_5809643_left_encoded = true := by
  decide +kernel
theorem small_5809643_left_covered : CoveredBy scale carrier boxes small_5809643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809643_left_root small_5809643_left_fuel small_5809643_left_count small_5809643_left_encoded small_5809643_left_checked

theorem cover_5809643 : CoveredBy scale carrier boxes root_5809643 := by
  apply coveredBy_split_literal root_5809643 small_5809643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5810113 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5809643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5810113
#print axioms cover_5809643

def root_5809637 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809637_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809637_left_fuel : Nat := 1
def small_5809637_left_count : Nat := 1
def small_5809637_left_encoded : String := "00000000"
theorem small_5809637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809637_left_root small_5809637_left_fuel small_5809637_left_count small_5809637_left_encoded = true := by
  decide +kernel
theorem small_5809637_left_covered : CoveredBy scale carrier boxes small_5809637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809637_left_root small_5809637_left_fuel small_5809637_left_count small_5809637_left_encoded small_5809637_left_checked

theorem cover_5809637 : CoveredBy scale carrier boxes root_5809637 := by
  apply coveredBy_split_literal root_5809637 small_5809637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809643 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_5809637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809643
#print axioms cover_5809637

def root_5809049 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809049_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809049_left_fuel : Nat := 22
def small_5809049_left_count : Nat := 283
def small_5809049_left_encoded : String := "0F8750F70C9A87060F8750FD067ECE7912EA94F800000001022A458513E1C50400000002067ECE7F12EA94FE000000040B4D4400000000080000000812EA58FE0B4D440000000008000000080000000413E20104067ECE7F00000008000000080000000212EA58F8022A458513E1C50400000002067ECE7F12EA94FE000000040B4D4400000000080000000812EA58FE0B4D440000000008000000080000000413E20104067ECE7F00000008000000080000000200000001000000030F878CFD00000003067ECE7912EA94F800000001022A458513E1C50400000002067ECE7F12EA94FE000000040B4D4400108010F70DE7CA060E5FD8FD00000008000000030E6014FD000000030793F0B9000000090000000A0000000010804CF7000000000DE7CA060E5FD8FD0793F0B900000005128220F801152345000000050000000800000001000000030E6014FD000000030793F0B912825CF800000001011523450000000500000009128220F80115234513F85904000000020793F0BF00000005128220FE0DAED87D000000050E96250600000003000000050000000413F895040793F0BF0000000A00000009000000020000000112EA58FE0B4D4400108010F7000000090000000010804CF7000000000DE7CA060E5FD8FD0793F0B900000009128220F80115234513F85904000000020569AC3F0000000800000008000000080000000100000003000000090000000413E20104067ECE7F12EA94FE000000040B4D4400108010F7000000090000000010804CF7000000000DE7CA060E5FD8FD000000080000000300000009000000090000000212EA58F8022A458513E1C50400000002067ECE7F12EA94FE000000040B4D4400108010F70DE7CA060E5FD8FD00000008000000030E6014FD00000003000000070000000010804CF7000000000DE7CA060E5FD8FD0569AC39134110F8000000010115234513F85904000000020793F0BF0000000500000008000000081340D4F80115234513F85904000000020793F0BF00000007000000080000000800000001000000030E6014FD000000030569AC39134110F800000001011523450000000A0000000A0000000A12EA58FE0B4D4400108010F70DE7CA060E5FD8FD0000000800000003000000090000000010804CF7000000000DE7CA060E5FD8FD0569AC39134110F8000000010115234513F85904000000020569AC3F0000000800000008000000081340D4F80115234513F85904000000020569AC3F00000008000000080000000800000001000000030E6014FD000000030569AC39000000091340D4F80115234513F85904000000020569AC3F000000070000000900000009000000010000000413E20104067ECE7F12EA94FE000000040B4D4400108010F70DE7CA0600000008000000080000000010804CF7000000000DE7CA060E5FD8FD00000008000000030E6014FD000000030569AC39134110F8000000010000000A0000000A12EA58FE0B4D44000000000910804CF7000000000DE7CA060E5FD8FD00000008000000030000000900000004000000020000000100000000"
theorem small_5809049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809049_left_root small_5809049_left_fuel small_5809049_left_count small_5809049_left_encoded = true := by
  decide +kernel
theorem small_5809049_left_covered : CoveredBy scale carrier boxes small_5809049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809049_left_root small_5809049_left_fuel small_5809049_left_count small_5809049_left_encoded small_5809049_left_checked

theorem cover_5809049 : CoveredBy scale carrier boxes root_5809049 := by
  apply coveredBy_split_literal root_5809049 small_5809049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809637 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5809049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809637
#print axioms cover_5809049

def root_5809043 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809043_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809043_left_fuel : Nat := 1
def small_5809043_left_count : Nat := 1
def small_5809043_left_encoded : String := "00000004"
theorem small_5809043_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809043_left_root small_5809043_left_fuel small_5809043_left_count small_5809043_left_encoded = true := by
  decide +kernel
theorem small_5809043_left_covered : CoveredBy scale carrier boxes small_5809043_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809043_left_root small_5809043_left_fuel small_5809043_left_count small_5809043_left_encoded small_5809043_left_checked

theorem cover_5809043 : CoveredBy scale carrier boxes root_5809043 := by
  apply coveredBy_split_literal root_5809043 small_5809043_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809049 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5809043_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809049
#print axioms cover_5809043

def root_5809042 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5809042 : CoveredBy scale carrier boxes root_5809042 := by
  apply coveredBy_split_literal root_5809042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809043 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2182.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809043
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2182.covered
#print axioms cover_5809042

def root_5809037 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809037_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809037_right_fuel : Nat := 1
def small_5809037_right_count : Nat := 1
def small_5809037_right_encoded : String := "00000003"
theorem small_5809037_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809037_right_root small_5809037_right_fuel small_5809037_right_count small_5809037_right_encoded = true := by
  decide +kernel
theorem small_5809037_right_covered : CoveredBy scale carrier boxes small_5809037_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809037_right_root small_5809037_right_fuel small_5809037_right_count small_5809037_right_encoded small_5809037_right_checked

theorem cover_5809037 : CoveredBy scale carrier boxes root_5809037 := by
  apply coveredBy_split_literal root_5809037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809042 small_5809037_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809042
  · exact small_5809037_right_covered
#print axioms cover_5809037

def root_5809036 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5809036 : CoveredBy scale carrier boxes root_5809036 := by
  apply coveredBy_split_literal root_5809036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809037 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2183.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809037
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2183.covered
#print axioms cover_5809036

def root_5809030 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809030_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809030_left_fuel : Nat := 1
def small_5809030_left_count : Nat := 1
def small_5809030_left_encoded : String := "00000002"
theorem small_5809030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809030_left_root small_5809030_left_fuel small_5809030_left_count small_5809030_left_encoded = true := by
  decide +kernel
theorem small_5809030_left_covered : CoveredBy scale carrier boxes small_5809030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809030_left_root small_5809030_left_fuel small_5809030_left_count small_5809030_left_encoded small_5809030_left_checked

theorem cover_5809030 : CoveredBy scale carrier boxes root_5809030 := by
  apply coveredBy_split_literal root_5809030 small_5809030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809036 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5809030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809036
#print axioms cover_5809030

def root_5809029 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809029_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809029_right_fuel : Nat := 28
def small_5809029_right_count : Nat := 235
def small_5809029_right_encoded : String := "1386AD040CFD9BFD0F350D06045489FF1386ACFE000000040C9A87000F8750F70C9A87060F8750FD00000008000000030F878CFD00000003067ECE790000000912EA58F8067ECE8512EA590400000002067ECE7F12EA94FE000000040B4D44000000000800000008000000090000000800000001000000000F878CF7000000000C9A87060F8750FD067ECE7912EA94F800000001067ECE8512EA590400000002067ECE7F0000000612EA58FE0DE7CA000000000800000006000000040000000600000006000000030F878CFD00000003067ECE7912EA94F800000001067ECE8512EA590400000002067ECE7F12EA94FE000000040DE7CA000E5FD8F70DE7CA060E5FD8FD000000080000000300000009000000000E6014F7000000000DE7CA060E5FD8FD00000006000000030E6014FD000000030793F0B912825CF8000000010569AC451340D504000000020793F0BF12825CFE000000040DAED877000000080E96250000000000000000060000000900000009128220F80569AC451340D504000000020793F0BF0000000600000009000000060000000112EA58FE0DE7CA00000000090E6014F7000000000DE7CA060E5FD8FD0793F0B9000000090000000600000003000000090000000412EA9504067ECE7F12EA94FE000000040DE7CA000000000900000006000000090000000212EA58F8067ECE8512EA590400000002067ECE7F12EA94FE000000040DE7CA000E5FD8F70DE7CA06000000060E6014FD000000030569AC390000000900000006000000000000000612EA58FE0DE7CA000E5FD8F700000009000000000E6014F7000000000DE7CA06000000060E6014FD000000030569AC3900000009000000050000000412EA9504000000060000000200000001138670FE0C9A87000F8750F700000009000000000F878CF7000000000C9A87060F8750FD067ECE7912EA94F800000001067ECE8512EA590400000002022A457F00000008000000070000000812EA58F80000000500000001000000030000000900000004000000030F34D10600000003045489FF1386ACFE000000040C9A87000F8750F700000009000000000F878CF700000000067ECE790000000912EA58F8067ECE8512EA5904000000020AD3577D10D13D06067ECE7F12EA94FE000000040DE7CA000000000A0E6014F7000000000569AC39134110F8000000010569AC451340D504000000020BE879BD1011AD060000000A000000030000000A000000090000000A000000090000000310D10106000000030000000900000009000000010000000900000002"
theorem small_5809029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809029_right_root small_5809029_right_fuel small_5809029_right_count small_5809029_right_encoded = true := by
  decide +kernel
theorem small_5809029_right_covered : CoveredBy scale carrier boxes small_5809029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809029_right_root small_5809029_right_fuel small_5809029_right_count small_5809029_right_encoded small_5809029_right_checked

theorem cover_5809029 : CoveredBy scale carrier boxes root_5809029 := by
  apply coveredBy_split_literal root_5809029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809030 small_5809029_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809030
  · exact small_5809029_right_covered
#print axioms cover_5809029

def root_5809023 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809023_left_fuel : Nat := 1
def small_5809023_left_count : Nat := 1
def small_5809023_left_encoded : String := "00000001"
theorem small_5809023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809023_left_root small_5809023_left_fuel small_5809023_left_count small_5809023_left_encoded = true := by
  decide +kernel
theorem small_5809023_left_covered : CoveredBy scale carrier boxes small_5809023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809023_left_root small_5809023_left_fuel small_5809023_left_count small_5809023_left_encoded small_5809023_left_checked

theorem cover_5809023 : CoveredBy scale carrier boxes root_5809023 := by
  apply coveredBy_split_literal root_5809023 small_5809023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809029 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5809023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809029
#print axioms cover_5809023

def root_5809022 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5809022 : CoveredBy scale carrier boxes root_5809022 := by
  apply coveredBy_split_literal root_5809022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809023 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2184.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809023
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2184.covered
#print axioms cover_5809022

def root_5809017 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809017_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5809017_right_fuel : Nat := 1
def small_5809017_right_count : Nat := 1
def small_5809017_right_encoded : String := "00000000"
theorem small_5809017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5809017_right_root small_5809017_right_fuel small_5809017_right_count small_5809017_right_encoded = true := by
  decide +kernel
theorem small_5809017_right_covered : CoveredBy scale carrier boxes small_5809017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5809017_right_root small_5809017_right_fuel small_5809017_right_count small_5809017_right_encoded small_5809017_right_checked

theorem cover_5809017 : CoveredBy scale carrier boxes root_5809017 := by
  apply coveredBy_split_literal root_5809017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5809022 small_5809017_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5809022
  · exact small_5809017_right_covered
#print axioms cover_5809017

def root_5827547 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5827547 : CoveredBy scale carrier boxes root_5827547 := by
  apply coveredBy_split_literal root_5827547 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2186.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2187.root coord1 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2186.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2187.covered
#print axioms cover_5827547

def root_5827542 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827542_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827542_right_fuel : Nat := 1
def small_5827542_right_count : Nat := 1
def small_5827542_right_encoded : String := "00000000"
theorem small_5827542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5827542_right_root small_5827542_right_fuel small_5827542_right_count small_5827542_right_encoded = true := by
  decide +kernel
theorem small_5827542_right_covered : CoveredBy scale carrier boxes small_5827542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5827542_right_root small_5827542_right_fuel small_5827542_right_count small_5827542_right_encoded small_5827542_right_checked

theorem cover_5827542 : CoveredBy scale carrier boxes root_5827542 := by
  apply coveredBy_split_literal root_5827542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5827547 small_5827542_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5827547
  · exact small_5827542_right_covered
#print axioms cover_5827542

def root_5827541 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827541_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-9081120), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827541_right_fuel : Nat := 19
def small_5827541_right_count : Nat := 251
def small_5827541_right_encoded : String := "10D1010000000000067ECE7912EA94F800000001022A458513E1C504000000020AD3577D10D13D06067ECE7F12EA94FE0000000409BE353711777D000793F0B912825CF800000001011523450000000813F895040BE879BD000000070000000700000002128220F8011523450000000813F895040BE879BD1011AD0600000008000000030000000800000002000000010000000011774100000000000000000812EA58FE09BE353711777D000793F0B900000007128220F800000008000000010000000000000007000000040000000310D10106000000030000000813E201040AD3577D10D13D06067ECE7F12EA94FE0000000409BE353711777D000793F0B912825CF800000001033F67C513BBF504000000020BE879BD000000070000000713BC31040BE879BD000000070000000700000002128220F8033F67C513BBF504000000020BE879BD1011AD060793F0BF00000006000000070000000310117106000000030000000813BC31040BE879BD0000000610117106000000030793F0BF000000060000000700000002000000010000000011774100000000000793F0B900000007128220F8033F67C50000000813BC310400000007000000020000000112EA58FE09BE353711777D000793F0B900000007128220F8033F67C50000000700000007000000010000000000000007000000040000000310D1010600000003067ECE7F12EA94FE0000000409BE353711777D000793F0B90000000800000008000000000000000812EA58FE00000008000000040000000212EA58F8022A458513E1C504000000020AD3577D10D13D06067ECE7F12EA94FE0000000409BE353711777D000569AC390000000800000009000000000000000812EA58FE09BE353711777D00000000080000000000000008000000040000000310D10106000000030000000813E201040AD3577D10D13D06067ECE7F12EA94FE0000000409BE353711777D000569AC39134110F800000001033F67C513BBF504000000020BE879BD000000060000000800000006000000060000000011774100000000000569AC39134110F800000001033F67C500000008000000060000000612EA58FE09BE353711777D000569AC39134110F800000001033F67C513BBF504000000020BE879BD1011AD0600000007000000030000000813BC31040BE879BD1011AD06000000050000000300000005000000021340D4F8033F67C513BBF504000000020BE879BD1011AD0600000005000000030000000500000005000000010000000011774100000000000569AC39134110F800000001000000071340D4F80000000500000001000000040000000310D1010600000003067ECE7F0000000812EA58FE00000008000000040000000200000001"
theorem small_5827541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5827541_right_root small_5827541_right_fuel small_5827541_right_count small_5827541_right_encoded = true := by
  decide +kernel
theorem small_5827541_right_covered : CoveredBy scale carrier boxes small_5827541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5827541_right_root small_5827541_right_fuel small_5827541_right_count small_5827541_right_encoded small_5827541_right_checked

theorem cover_5827541 : CoveredBy scale carrier boxes root_5827541 := by
  apply coveredBy_split_literal root_5827541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5827542 small_5827541_right_root coord0 true (-9081120)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5827542
  · exact small_5827541_right_covered
#print axioms cover_5827541

def root_5827535 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827535_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5827535_left_fuel : Nat := 1
def small_5827535_left_count : Nat := 1
def small_5827535_left_encoded : String := "00000004"
theorem small_5827535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5827535_left_root small_5827535_left_fuel small_5827535_left_count small_5827535_left_encoded = true := by
  decide +kernel
theorem small_5827535_left_covered : CoveredBy scale carrier boxes small_5827535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5827535_left_root small_5827535_left_fuel small_5827535_left_count small_5827535_left_encoded small_5827535_left_checked

theorem cover_5827535 : CoveredBy scale carrier boxes root_5827535 := by
  apply coveredBy_split_literal root_5827535 small_5827535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.root_5827541 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5827535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406.cover_5827541
#print axioms cover_5827535

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0406
