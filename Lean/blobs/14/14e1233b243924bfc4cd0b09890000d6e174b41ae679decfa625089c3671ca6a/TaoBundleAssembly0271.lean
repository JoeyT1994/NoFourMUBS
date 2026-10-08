import TaoBundleAssembly0270
import TaoBundleChunkBatch0356
import TaoBundleChunkBatch0357
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271
def root_3783752 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783752_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783752_left_fuel : Nat := 23
def small_3783752_left_count : Nat := 361
def small_3783752_left_encoded : String := "0F878D010C9A86F80F878D030280010413D7B10500000002022A458713E1C50600000003067ECE7F000000050000000913E20106067ECE7F12EA94FE000000040DE7C9F60E60150100000005000000000E5FD901000000000DE7C9F80E60150300000005000000010E5FD90300000001014001040000000713F61505033F67C70000000513BC31060793F0BF0000000500000007000000030000000212EA58FE00000009000000040000000313D7ED05022A458713E1C50600000003067ECE7F000000050000000913E20106067ECE7F12EA94FE000000040DE7C9F60E60150100000005000000000E5FD901000000000DE7C9F80E60150300000005000000010000000512EA58FE0DE7C9F6000000060E5FD9010000000000000009000000040000000300000002000000010F875103000000010280010413D7B10500000002022A458713E1C50600000003067ECE7F12EA94FE000000040DE7C9F60E60150100000005000000000000000512EA58FE0DE7C9F60E60150100000009000000000E5FD901000000000B4D43F80000000910801103000000010140010413F5D90500000002011523470000000813F895060569AC3F0000000A000000080000000313F61505011523470000000913F895060569AC3F134110FE000000040D412876000000090EFA1101000000000AA6A278000000090000000A0000000900000003000000020000000413E20106067ECE7F12EA94FE000000040DE7C9F60E6015010B4D43F810804D030140010413F5D90500000002033F67C7000000050000000A13F61505033F67C70000000500000006000000020000000110801103000000010000000A000000000E5FD901000000000B4D43F810804D030140010413F5D90500000002033F67C713BBF506000000030000000A0000000713F61505033F67C70000000513BC31060793F0BF00000005128220FE0D41287600000006000000070000000400000003000000020000000110801103000000010000000A12EA58FE0DE7C9F60E6015010B4D43F80000000900000006000000000E5FD901000000000B4D43F810804D030140010413F5D905000000020000000913F61505033F67C70000000900000006000000020000000110801103000000010140010413F5D90500000002033F67C713BBF506000000030569AC3F0000000A0000000913BC31060569AC3F0000000A000000060000000313F61505033F67C713BBF506000000030569AC3F134110FE000000040D412876000000060EFA1101000000000000000A000000060000000600000002000000040000000313D7ED05022A458713E1C50600000003067ECE7F0000000512EA58FE0DE7C9F60E60150100000009000000000E5FD901000000000B4D43F810804D030000000900000001108011030000000103C0010413A5110500000002011523470000000913F895060569AC3F134110FE000000040D412876000000060EFA1101000000000AA6A2780000000900000006000000060000000313A54D050115234713F85906000000030569AC3F000000050000000600000006000000020000000413E20106067ECE7F12EA94FE000000040DE7C9F60E6015010B4D43F810804D03000000050000000100000006000000000E5FD901000000000B4D43F810804D0303C0010413A5110500000002033F67C70000000513BC31060793F0BF00000005000000060000000313A54D05033F67C700000005000000060000000200000001108011030000000103C0010413A5110500000002033F67C713BBF506000000030793F0BF00000005128220FE0D412876000000060EFA1101000000000000000A0000000413BC31060793F0BF0000000A000000060000000313A54D05033F67C713BBF506000000030793F0BF0000000500000006000000060000000212EA58FE0DE7C9F6000000060E5FD901000000000B4D43F810804D0300000006000000010000000600000004000000030000000200000000"
theorem small_3783752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783752_left_root small_3783752_left_fuel small_3783752_left_count small_3783752_left_encoded = true := by
  decide +kernel
theorem small_3783752_left_covered : CoveredBy scale carrier boxes small_3783752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783752_left_root small_3783752_left_fuel small_3783752_left_count small_3783752_left_encoded small_3783752_left_checked

theorem cover_3783752 : CoveredBy scale carrier boxes root_3783752 := by
  apply coveredBy_split_literal root_3783752 small_3783752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0270.root_3784510 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3783752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0270.cover_3784510
#print axioms cover_3783752

def root_3783746 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783746_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783746_left_fuel : Nat := 1
def small_3783746_left_count : Nat := 1
def small_3783746_left_encoded : String := "00000004"
theorem small_3783746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783746_left_root small_3783746_left_fuel small_3783746_left_count small_3783746_left_encoded = true := by
  decide +kernel
theorem small_3783746_left_covered : CoveredBy scale carrier boxes small_3783746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783746_left_root small_3783746_left_fuel small_3783746_left_count small_3783746_left_encoded small_3783746_left_checked

theorem cover_3783746 : CoveredBy scale carrier boxes root_3783746 := by
  apply coveredBy_split_literal root_3783746 small_3783746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783752 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3783746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783752
#print axioms cover_3783746

def root_3783745 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783745_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783745_right_fuel : Nat := 28
def small_3783745_right_count : Nat := 227
def small_3783745_right_encoded : String := "138670FE0C9A86F60F878D010C9A86F80F878D0300000009000000010F875103000000010280010413D7B10500000002022A45870000000913E20106022A457F13E200FE000000040DE7C9F6000000060E5FD901000000000B4D43F80000000900000006000000060000000313D7ED05022A458713E1C50600000003000000090000000600000002000000000F875101000000000C9A86F80F878D030280010413D7B10500000002022A4587000000090000000713D7ED05022A458713E1C506000000030000000913E20106022A457F13E200FE000000040B4D43F60000000900000007000000060000000300000002000000010F875103000000010280010413D7B10500000002022A458713E1C50600000003022A457F13E200FE000000040B4D43F610804D010B4D43F80000000910801103000000010140010400000009000000090000000010801101000000000B4D43F8000000071080110300000001014001040000000713F615050115234713F8590600000003033F67BF000000070000000500000005000000020000000913E20106022A457F13E200FE000000040B4D43F610804D010B4D43F8000000071080110300000001000000050000000000000007000000050000000313D7ED05022A458713E1C50600000003022A457F13E200FE000000040B4D43F610804D010B4D43F800000009108011030000000103C0010413A51105000000020000000913A54D0500000006000000020000000010801101000000000B4D43F810804D0303C0010413A51105000000020000000913A54D05011523470000000913F89506033F67BF13BC30FE000000040AA6A276000000060000000700000005000000030000000200000001108011030000000103C0010413A51105000000020115234713F8590600000003033F67BF13BC30FE000000040AA6A27610EDAD01000000090000000010ED71010000000000000007000000050000000513A54D050115234713F8590600000003033F67BF13BC30FE000000040AA6A27610EDAD01000000090000000010ED7101000000000AA6A27810EDAD03000000090000000110ED710300000001046001041383DD0500000002000000050000000500000005000000050000000213E1C4FE0B4D43F6000000061080110100000000000000050000000413E20106022A457F13E200FE000000040B4D43F610804D01000000060000000010801101000000000000000500000005000000030000000200000004"
theorem small_3783745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783745_right_root small_3783745_right_fuel small_3783745_right_count small_3783745_right_encoded = true := by
  decide +kernel
theorem small_3783745_right_covered : CoveredBy scale carrier boxes small_3783745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783745_right_root small_3783745_right_fuel small_3783745_right_count small_3783745_right_encoded small_3783745_right_checked

theorem cover_3783745 : CoveredBy scale carrier boxes root_3783745 := by
  apply coveredBy_split_literal root_3783745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783746 small_3783745_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783746
  · exact small_3783745_right_covered
#print axioms cover_3783745

def root_3783739 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783739_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783739_left_fuel : Nat := 1
def small_3783739_left_count : Nat := 1
def small_3783739_left_encoded : String := "00000003"
theorem small_3783739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783739_left_root small_3783739_left_fuel small_3783739_left_count small_3783739_left_encoded = true := by
  decide +kernel
theorem small_3783739_left_covered : CoveredBy scale carrier boxes small_3783739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783739_left_root small_3783739_left_fuel small_3783739_left_count small_3783739_left_encoded small_3783739_left_checked

theorem cover_3783739 : CoveredBy scale carrier boxes root_3783739 := by
  apply coveredBy_split_literal root_3783739 small_3783739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783745 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3783739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783745
#print axioms cover_3783739

def root_3783738 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783738_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783738_right_fuel : Nat := 23
def small_3783738_right_count : Nat := 287
def small_3783738_right_encoded : String := "1386AD06045489FF1386ACFE000000040C9A86F60F878D010C9A86F80F878D030280010413D7B10500000002067ECE8712EA590600000003067ECE7F12EA94FE000000040DE7C9F60E6015010DE7C9F80E60150300000009000000010E5FD903000000010140010413F5D905000000020569AC471340D50600000003000000090000000600000006000000000E5FD901000000000000000712EA58FE0DE7C9F600000006000000070000000412EA9506067ECE7F12EA94FE000000040DE7C9F60000000600000007000000060000000313D7ED05067ECE8712EA590600000003067ECE7F12EA94FE000000040DE7C9F6000000060E5FD901000000000DE7C9F8000000080E5FD9030000000100000006000000060000000600000002000000010F875103000000010280010413D7B10500000002067ECE8712EA590600000003067ECE7F12EA94FE000000040DE7C9F60E6015010B4D43F810804D03014001040000000A000000060000000100000006000000000E5FD901000000000B4D43F810804D03014001040000000713F615050569AC471340D506000000030793F0BF0000000A000000060000000600000002000000010000000A12EA58FE0DE7C9F6000000060E5FD901000000000B4D43F810804D030000000600000001000000060000000412EA9506067ECE7F12EA94FE000000040DE7C9F6000000060E5FD9010000000000000007000000060000000313D7ED05067ECE8712EA590600000003067ECE7F12EA94FE000000040DE7C9F6000000060E5FD901000000000B4D43F810804D03000000060000000100000006000000060000000600000002000000000F875101000000000C9A86F80F878D03028001040000000713D7ED05067ECE8712EA590600000003067ECE7F12EA94FE000000040B4D43F60000000800000007000000070000000800000002000000010F875103000000010280010413D7B10500000002067ECE8712EA590600000003067ECE7F12EA94FE0000000400000007000000070000000713D7ED05067ECE8712EA590600000003067ECE7F12EA94FE000000040B4D43F610804D010B4D43F810804D0303C0010413A5110500000002000000070000000800000001108011030000000103C0010413A51105000000020569AC471340D506000000030793F0BF0000000A000000060000000613A54D050569AC471340D506000000030000000600000006000000020000000010801101000000000B4D43F810804D030000000700000001108011030000000103C001040000000713A54D050569AC471340D5060000000300000008000000050000000212EA58FE0B4D43F610804D010B4D43F810804D03000000060000000100000006000000001080110100000000000000050000000412EA9506067ECE7F12EA94FE000000040B4D43F610804D010B4D43F800000008000000060000000000000007000000050000000300000002138670FE0C9A86F60F878D010C9A86F80F878D03000000060000000100000006000000000F875101000000000C9A86F80F878D0300000007000000010F87510300000001000000050000000400000003"
theorem small_3783738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783738_right_root small_3783738_right_fuel small_3783738_right_count small_3783738_right_encoded = true := by
  decide +kernel
theorem small_3783738_right_covered : CoveredBy scale carrier boxes small_3783738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783738_right_root small_3783738_right_fuel small_3783738_right_count small_3783738_right_encoded small_3783738_right_checked

theorem cover_3783738 : CoveredBy scale carrier boxes root_3783738 := by
  apply coveredBy_split_literal root_3783738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783739 small_3783738_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783739
  · exact small_3783738_right_covered
#print axioms cover_3783738

def root_3783732 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783732_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783732_left_fuel : Nat := 1
def small_3783732_left_count : Nat := 1
def small_3783732_left_encoded : String := "00000001"
theorem small_3783732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783732_left_root small_3783732_left_fuel small_3783732_left_count small_3783732_left_encoded = true := by
  decide +kernel
theorem small_3783732_left_covered : CoveredBy scale carrier boxes small_3783732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783732_left_root small_3783732_left_fuel small_3783732_left_count small_3783732_left_encoded small_3783732_left_checked

theorem cover_3783732 : CoveredBy scale carrier boxes root_3783732 := by
  apply coveredBy_split_literal root_3783732 small_3783732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783738 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3783732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783738
#print axioms cover_3783732

def root_3783574 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783574_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783574_left_fuel : Nat := 15
def small_3783574_left_count : Nat := 77
def small_3783574_left_encoded : String := "0F34D0F804548A071386710600000003045489FF1386ACFE000000040C9A86F60F878D01028001040000000900000009000000000F87510100000000028001040000000713D7ED050AD357830000000510D13CF800000001022A45870000000513E20106067ECE7F00000005000000070000000300000002000000091386AD06045489FF1386ACFE000000040C9A86F60F878D010280010413D7B105000000020AD357830000000710D13CF800000001067ECE8712EA590600000003000000090000000713D7ED050AD357830000000810D13CF800000001067ECE8712EA590600000003067ECE7F00000008000000060000000600000002000000000F87510100000000028001040000000700000008138670FE0C9A86F60F878D01000000090000000000000007000000040000000300000001"
theorem small_3783574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783574_left_root small_3783574_left_fuel small_3783574_left_count small_3783574_left_encoded = true := by
  decide +kernel
theorem small_3783574_left_covered : CoveredBy scale carrier boxes small_3783574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783574_left_root small_3783574_left_fuel small_3783574_left_count small_3783574_left_encoded small_3783574_left_checked

theorem cover_3783574 : CoveredBy scale carrier boxes root_3783574 := by
  apply coveredBy_split_literal root_3783574 small_3783574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783732 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3783574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783732
#print axioms cover_3783574

def root_3783568 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783568_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783568_left_fuel : Nat := 1
def small_3783568_left_count : Nat := 1
def small_3783568_left_encoded : String := "00000000"
theorem small_3783568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783568_left_root small_3783568_left_fuel small_3783568_left_count small_3783568_left_encoded = true := by
  decide +kernel
theorem small_3783568_left_covered : CoveredBy scale carrier boxes small_3783568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783568_left_root small_3783568_left_fuel small_3783568_left_count small_3783568_left_encoded small_3783568_left_checked

theorem cover_3783568 : CoveredBy scale carrier boxes root_3783568 := by
  apply coveredBy_split_literal root_3783568 small_3783568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783574 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3783568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783574
#print axioms cover_3783568

def root_3783382 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783382_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783382_left_fuel : Nat := 18
def small_3783382_left_count : Nat := 89
def small_3783382_left_encoded : String := "0F34D0F60CFD9C030F34D0F804548A07000000091386AD06045489FF1386ACFE000000040280010400000009000000060000000600000003000000010F350CF80000000104548A071386710600000003045489FF1386ACFE000000040C9A86F80F878D03028001040000000900000009000000010F875103000000010280010413D7B105000000020AD3578110D100F6000000090000000010D13CF600000000022A458713E1C50600000003067ECE7F000000050000000913E20106067ECE7F12EA94FE0000000400000005000000060000000313D7ED050AD357810000000510D13CF600000000022A4587000000050000000600000002000000091386AD06045489FF1386ACFE000000040C9A86F80F878D030280010413D7B105000000020AD357810000000610D13CF600000000067ECE8712EA590600000003000000090000000600000006000000010F8751030000000100000006000000060000000300000000"
theorem small_3783382_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783382_left_root small_3783382_left_fuel small_3783382_left_count small_3783382_left_encoded = true := by
  decide +kernel
theorem small_3783382_left_covered : CoveredBy scale carrier boxes small_3783382_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783382_left_root small_3783382_left_fuel small_3783382_left_count small_3783382_left_encoded small_3783382_left_checked

theorem cover_3783382 : CoveredBy scale carrier boxes root_3783382 := by
  apply coveredBy_split_literal root_3783382 small_3783382_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783568 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3783382_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783568
#print axioms cover_3783382

def root_3783376 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783376_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783376_left_fuel : Nat := 1
def small_3783376_left_count : Nat := 1
def small_3783376_left_encoded : String := "00000002"
theorem small_3783376_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783376_left_root small_3783376_left_fuel small_3783376_left_count small_3783376_left_encoded = true := by
  decide +kernel
theorem small_3783376_left_covered : CoveredBy scale carrier boxes small_3783376_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783376_left_root small_3783376_left_fuel small_3783376_left_count small_3783376_left_encoded small_3783376_left_checked

theorem cover_3783376 : CoveredBy scale carrier boxes root_3783376 := by
  apply coveredBy_split_literal root_3783376 small_3783376_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783382 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_3783376_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783382
#print axioms cover_3783376

def root_3783375 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3783375 : CoveredBy scale carrier boxes root_3783375 := by
  apply coveredBy_split_literal root_3783375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783376 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1424.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783376
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1424.covered
#print axioms cover_3783375

def root_3783370 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783370_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3783370_right_fuel : Nat := 1
def small_3783370_right_count : Nat := 1
def small_3783370_right_encoded : String := "00000004"
theorem small_3783370_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3783370_right_root small_3783370_right_fuel small_3783370_right_count small_3783370_right_encoded = true := by
  decide +kernel
theorem small_3783370_right_covered : CoveredBy scale carrier boxes small_3783370_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3783370_right_root small_3783370_right_fuel small_3783370_right_count small_3783370_right_encoded small_3783370_right_checked

theorem cover_3783370 : CoveredBy scale carrier boxes root_3783370 := by
  apply coveredBy_split_literal root_3783370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783375 small_3783370_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783375
  · exact small_3783370_right_covered
#print axioms cover_3783370

def root_3781482 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3781482 : CoveredBy scale carrier boxes root_3781482 := by
  apply coveredBy_split_literal root_3781482 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1422.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3783370 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1422.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3783370
#print axioms cover_3781482

def root_3781476 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781476_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781476_left_fuel : Nat := 1
def small_3781476_left_count : Nat := 1
def small_3781476_left_encoded : String := "00000003"
theorem small_3781476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3781476_left_root small_3781476_left_fuel small_3781476_left_count small_3781476_left_encoded = true := by
  decide +kernel
theorem small_3781476_left_covered : CoveredBy scale carrier boxes small_3781476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3781476_left_root small_3781476_left_fuel small_3781476_left_count small_3781476_left_encoded small_3781476_left_checked

theorem cover_3781476 : CoveredBy scale carrier boxes root_3781476 := by
  apply coveredBy_split_literal root_3781476 small_3781476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3781482 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3781476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3781482
#print axioms cover_3781476

def root_3781475 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3781475 : CoveredBy scale carrier boxes root_3781475 := by
  apply coveredBy_split_literal root_3781475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3781476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1425.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3781476
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1425.covered
#print axioms cover_3781475

def root_3781469 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781469_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781469_left_fuel : Nat := 1
def small_3781469_left_count : Nat := 1
def small_3781469_left_encoded : String := "00000001"
theorem small_3781469_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3781469_left_root small_3781469_left_fuel small_3781469_left_count small_3781469_left_encoded = true := by
  decide +kernel
theorem small_3781469_left_covered : CoveredBy scale carrier boxes small_3781469_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3781469_left_root small_3781469_left_fuel small_3781469_left_count small_3781469_left_encoded small_3781469_left_checked

theorem cover_3781469 : CoveredBy scale carrier boxes root_3781469 := by
  apply coveredBy_split_literal root_3781469 small_3781469_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3781475 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3781469_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3781475
#print axioms cover_3781469

def root_3781201 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781201_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781201_left_fuel : Nat := 17
def small_3781201_left_count : Nat := 127
def small_3781201_left_encoded : String := "120700F808A91307120701060000000308A912FF12073CFE0000000405000104135D4505000000020CFD9C01000000050F350CF6000000000000000500000005120700FE05000104135D4505000000020CFD9C01000000090F350CF60000000004548A03000000071386ACF80000000104548A071386710600000003000000091386AD06045489FF1386ACFE000000040C9A86F600000008000000070000000700000003135D81050CFD9C010F34D0F600000009000000000F350CF60000000004548A03138670F800000008000000011386ACF80000000104548A071386710600000003045489FF000000050000000900000008000000020000000412073D0608A912FF12073CFE0000000405000104135D4505000000020CFD9C010F34D0F604548A03000000081386ACF8000000010CFD9C070F34D106000000030CFD9BFF000000050F34D0FE000000080000000400000008000000000F350CF60000000004548A03000000081386ACF8000000010CFD9C070F34D10600000003000000080000000800000008120700FE05000104135D4505000000020CFD9C010F34D0F604548A030000000600000006000000000F350CF60000000004548A03000000071386ACF8000000010CFD9C070000000700000007135D81050CFD9C010F34D0F600000006000000000000000800000002000000040000000300000001"
theorem small_3781201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3781201_left_root small_3781201_left_fuel small_3781201_left_count small_3781201_left_encoded = true := by
  decide +kernel
theorem small_3781201_left_covered : CoveredBy scale carrier boxes small_3781201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3781201_left_root small_3781201_left_fuel small_3781201_left_count small_3781201_left_encoded small_3781201_left_checked

theorem cover_3781201 : CoveredBy scale carrier boxes root_3781201 := by
  apply coveredBy_split_literal root_3781201 small_3781201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3781469 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3781201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3781469
#print axioms cover_3781201

def root_3781195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781195_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3781195_left_fuel : Nat := 1
def small_3781195_left_count : Nat := 1
def small_3781195_left_encoded : String := "00000000"
theorem small_3781195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3781195_left_root small_3781195_left_fuel small_3781195_left_count small_3781195_left_encoded = true := by
  decide +kernel
theorem small_3781195_left_covered : CoveredBy scale carrier boxes small_3781195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3781195_left_root small_3781195_left_fuel small_3781195_left_count small_3781195_left_encoded small_3781195_left_checked

theorem cover_3781195 : CoveredBy scale carrier boxes root_3781195 := by
  apply coveredBy_split_literal root_3781195 small_3781195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.root_3781201 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3781195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271.cover_3781201
#print axioms cover_3781195

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0271
