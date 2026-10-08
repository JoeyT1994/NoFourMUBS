import TaoBundleAssembly0526
import TaoBundleChunkBatch0721
import TaoBundleChunkBatch0722
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527
def root_7672822 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672822_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672822_left_fuel : Nat := 25
def small_7672822_left_count : Nat := 371
def small_7672822_left_encoded : String := "13D7B0FB078000FE128A7D090AD3578310D10102000000010DE7CA060E5FD90700000003000000090000000910D13D020DE7CA060E5FD9070000000303C0010013A510F7014001040000000513F614FB0000000208C000FE0000000511FBE909000000040BE879C3000000080000000A0000000013A54CF7000000000140010413F5D8FB08C000FE0000000511FBE90900000004000000090000000213F614FB0000000208C000FE11FC2509000000090000000411FBE909000000040BE879C31011710200000001000000091011AD020000000A000000010E60150703C0010013A510F70140010413F5D8FB08C000FE0000000511FBE909000000040BE879C3000000091011AD020DAED8870E962506000000030000000900000009000000010000000213F614FB0000000208C000FE11FC25090BE879C3000000091011AD020DAED8870E962506000000030000000900000009000000010000000411FBE909000000040BE879C31011710200000001000000091011AD020DAED8870E962506000000030320010013C108F701E001040000000913E994FB00000002082000FE000000090000000A0000000013C144F70000000001E001040000000913E994FB00000002082000FE0000000912465D09000000040C730AE3000000090000000A0E9661060000000A00000003000000010000000013A54CF7000000000140010413F5D8FB08C000FE0000000911FBE909000000040BE879C3000000091011AD0200000009000000010000000213F614FB0000000208C000FE11FC25090BE879C3000000091011AD020DAED8870E962506000000030000000900000009000000010000000411FBE909000000040BE879C31011710200000001000000091011AD020DAED8870E96250600000003046001001383DCF701E001040000000913E994FB00000002082000FE0000000912465D09000000040C730AE3000000060000000600000000138418F70000000001E001040000000613E994FB00000002082000FE00000009000000060E966106046001001383DCF701E001040000000913E994FB00000002082000FE000000090000000A00000000138418F70000000001E001040000000913E994FB00000002082000FE000000090000000A0000000300000001000000030000000100000004128A4109000000040AD3578310D10102000000010DE7CA060E5FD9070000000303C001000000000813A54CF7000000000140010400000009000000080E60150703C0010013A510F70140010413F5D8FB064000FE000000090000000800000002000000080000000013A54CF700000000014001040000000913F614FB00000002064000FE00000009000000050000000310D13D020DE7CA060E5FD907000000030000000A0E60150703C0010013A510F70140010413F5D8FB064000FE12FFAD090BE879C31011710200000001000000090000000A000000040000000A0000000213F614FB00000002064000FE12FFAD090BE879C310117102000000010DAED8870E96250600000003032001000000000813C144F700000000000000080E96610600000008000000030000000A000000040000000A0000000013A54CF7000000000140010413F5D8FB064000FE12FFAD090BE879C31011710200000001000000091011AD020000000A00000001000000040000000A0000000213F614FB00000002064000FE12FFAD090BE879C310117102000000010DAED8870E96250600000003046001001383DCF701E001040000000913E994FB0000000206E000FE000000090000000500000000138418F70000000001E0010400000009000000050E966106046001001383DCF7000000080000000000000007000000031011AD020DAED8870E96250600000003046001001383DCF70000000A00000000138418F70000000001E001040000000613E994FB0000000206E000FE00000006000000050000000A000000010000000412FF7109000000040BE879C310117102000000010DAED8870E9625060000000300000005000000070000000A000000030000000100000002"
theorem small_7672822_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672822_left_root small_7672822_left_fuel small_7672822_left_count small_7672822_left_encoded = true := by
  decide +kernel
theorem small_7672822_left_covered : CoveredBy scale carrier boxes small_7672822_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672822_left_root small_7672822_left_fuel small_7672822_left_count small_7672822_left_encoded small_7672822_left_checked

theorem cover_7672822 : CoveredBy scale carrier boxes root_7672822 := by
  apply coveredBy_split_literal root_7672822 small_7672822_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2883.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7672822_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2883.covered
#print axioms cover_7672822

def root_7672816 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672816_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672816_left_fuel : Nat := 1
def small_7672816_left_count : Nat := 1
def small_7672816_left_encoded : String := "00000000"
theorem small_7672816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672816_left_root small_7672816_left_fuel small_7672816_left_count small_7672816_left_encoded = true := by
  decide +kernel
theorem small_7672816_left_covered : CoveredBy scale carrier boxes small_7672816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672816_left_root small_7672816_left_fuel small_7672816_left_count small_7672816_left_encoded small_7672816_left_checked

theorem cover_7672816 : CoveredBy scale carrier boxes root_7672816 := by
  apply coveredBy_split_literal root_7672816 small_7672816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672822 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_7672816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672822
#print axioms cover_7672816

def root_7672532 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672532_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672532_left_fuel : Nat := 19
def small_7672532_left_count : Nat := 135
def small_7672532_left_encoded : String := "13D7B0F70280010413D7B0FB078000FE128A7D090AD3578310D10102000000010DE7CA06000000080E601507000000080000000310D13D020DE7CA06000000050E601507014001000000000513F614F700000000014001040000000513F614FB0000000208C000FE0000000511FBE909000000040BE879C3000000081011AD020000000A00000001000000030000000100000004128A4109000000040AD3578310D10102000000010000000810D13D020DE7CA060000000A0E601507014001000000000A13F614F700000000014001040000000A13F614FB00000002064000FE12FFAD090BE879C3000000080000000A000000040000000A00000003000000010000000213D7ECFB00000002078000FE128A7D090AD3578310D10102000000010000000810D13D020DE7CA060E5FD90700000003000000080E601507014001000000000813F614F70000000003C0010413A510FB08C000FE11FC25090BE879C3000000081011AD020DAED8870000000800000008000000010000000411FBE909000000040BE879C3000000081011AD0200000008000000010000000213A54CFB0000000208C000FE0000000800000008000000030000000100000004128A4109000000040AD357830000000810D13D020DE7CA06000000080E601507014001000000000813F614F70000000003C0010413A510FB064000FE12FFAD090000000800000004000000080000000200000008000000030000000100000000"
theorem small_7672532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672532_left_root small_7672532_left_fuel small_7672532_left_count small_7672532_left_encoded = true := by
  decide +kernel
theorem small_7672532_left_covered : CoveredBy scale carrier boxes small_7672532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672532_left_root small_7672532_left_fuel small_7672532_left_count small_7672532_left_encoded small_7672532_left_checked

theorem cover_7672532 : CoveredBy scale carrier boxes root_7672532 := by
  apply coveredBy_split_literal root_7672532 small_7672532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672816 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7672532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672816
#print axioms cover_7672532

def root_7672527 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672527_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672527_right_fuel : Nat := 1
def small_7672527_right_count : Nat := 1
def small_7672527_right_encoded : String := "00000003"
theorem small_7672527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672527_right_root small_7672527_right_fuel small_7672527_right_count small_7672527_right_encoded = true := by
  decide +kernel
theorem small_7672527_right_covered : CoveredBy scale carrier boxes small_7672527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672527_right_root small_7672527_right_fuel small_7672527_right_count small_7672527_right_encoded small_7672527_right_checked

theorem cover_7672527 : CoveredBy scale carrier boxes root_7672527 := by
  apply coveredBy_split_literal root_7672527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672532 small_7672527_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672532
  · exact small_7672527_right_covered
#print axioms cover_7672527

def root_7672305 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672305_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672305_left_fuel : Nat := 22
def small_7672305_left_count : Nat := 105
def small_7672305_left_encoded : String := "0F875107000000030280010013D7B0F70280010413D7B0FB078000FE128A7D090AD35783000000050000000A00000004000000080000000213D7ECFB00000002078000FE00000008000000080000000013D7ECF7000000000280010413D7B0FB078000FE128A7D090AD3578310D10102000000010000000810D13D020B4D440610801107000000030000000A10804D0703C001000000000513A54CF700000000014001040000000513F614FB0000000208C000FE000000050000000A000000030000000100000004128A4109000000040AD3578310D1010200000001000000080000000A0000000213D7ECFB00000002078000FE128A7D090AD357830000000810D13D020B4D440610801107000000030000000810804D0703C001000000000813A54CF70000000003C0010413A510FB08C000FE11FC25090BE879C3000000081011AD020BF3E586000000051009290700000008000000030000000100000004000000080000000213A54CFB0000000208C000FE0000000800000008000000030000000100000004128A4109000000040AD357830000000810D13D020000000A00000001"
theorem small_7672305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672305_left_root small_7672305_left_fuel small_7672305_left_count small_7672305_left_encoded = true := by
  decide +kernel
theorem small_7672305_left_covered : CoveredBy scale carrier boxes small_7672305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672305_left_root small_7672305_left_fuel small_7672305_left_count small_7672305_left_encoded small_7672305_left_checked

theorem cover_7672305 : CoveredBy scale carrier boxes root_7672305 := by
  apply coveredBy_split_literal root_7672305 small_7672305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672527 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7672305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672527
#print axioms cover_7672305

def root_7672300 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672300_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7672300_right_fuel : Nat := 1
def small_7672300_right_count : Nat := 1
def small_7672300_right_encoded : String := "00000003"
theorem small_7672300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7672300_right_root small_7672300_right_fuel small_7672300_right_count small_7672300_right_encoded = true := by
  decide +kernel
theorem small_7672300_right_covered : CoveredBy scale carrier boxes small_7672300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7672300_right_root small_7672300_right_fuel small_7672300_right_count small_7672300_right_encoded small_7672300_right_checked

theorem cover_7672300 : CoveredBy scale carrier boxes root_7672300 := by
  apply coveredBy_split_literal root_7672300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672305 small_7672300_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672305
  · exact small_7672300_right_covered
#print axioms cover_7672300

def root_7667760 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667760 : CoveredBy scale carrier boxes root_7667760 := by
  apply coveredBy_split_literal root_7667760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0526.root_7667761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7672300 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0526.cover_7667761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7672300
#print axioms cover_7667760

def root_7667754 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667754_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667754_left_fuel : Nat := 1
def small_7667754_left_count : Nat := 1
def small_7667754_left_encoded : String := "00000001"
theorem small_7667754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667754_left_root small_7667754_left_fuel small_7667754_left_count small_7667754_left_encoded = true := by
  decide +kernel
theorem small_7667754_left_covered : CoveredBy scale carrier boxes small_7667754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667754_left_root small_7667754_left_fuel small_7667754_left_count small_7667754_left_encoded small_7667754_left_checked

theorem cover_7667754 : CoveredBy scale carrier boxes root_7667754 := by
  apply coveredBy_split_literal root_7667754 small_7667754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7667760 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7667754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7667760
#print axioms cover_7667754

def root_7676300 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676300_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676300_left_fuel : Nat := 27
def small_7676300_left_count : Nat := 429
def small_7676300_left_encoded : String := "13D7B0F70280010413D7B0FB078000FE128A7D090AD3578710D10106000000030DE7CA02000000060E601503000000060000000110D13D060DE7CA02000000050E601503014001000000000513F614F700000000014001040000000513F614FB0000000208C000FE0000000511FBE909000000040BE879C7000000061011AD060000000A00000003000000010000000300000004128A4109000000040AD3578710D10106000000030000000610D13D060DE7CA020000000A0E601503014001000000000A13F614F700000000014001040000000A13F614FB00000002064000FE12FFAD090BE879C7000000060000000A000000040000000A00000001000000030000000213D7ECFB00000002078000FE128A7D090AD3578710D10106000000030DE7CA020E5FD90300000001000000070000000710D13D060DE7CA020E5FD903000000010140010013F5D8F703C001040000000513A54CFB0000000208C000FE0000000511FBE90900000004000000070000000013F614F70000000003C0010413A510FB08C000FE0000000511FBE909000000040BE879C7000000060000000A0000000213A54CFB0000000208C000FE11FC2509000000070000000411FBE909000000040BE879C71011710600000003000000071011AD060000000A000000030E6015030140010013F5D8F703C0010413A510FB08C000FE0000000511FBE909000000040BE879C7000000071011AD060DAED8830E962502000000010000000700000007000000030000000213A54CFB0000000208C000FE0000000711FBE909000000040BE879C7000000071011AD0600000007000000030000000013F614F70000000003C0010413A510FB08C000FE11FC25090BE879C7000000071011AD060DAED8830E962502000000010000000700000007000000030000000411FBE909000000040BE879C71011710600000003000000071011AD060DAED8830E9625020000000101E0010013E958F70320010413C108FB0000000700000002000000070000000013E994F7000000000320010413C108FB082000FE000000070000000A0000000213C144FB00000002082000FE0000000712465D09000000040C730AE7000000070000000A0E9661020000000A00000001000000030000000213A54CFB0000000208C000FE11FC25090BE879C7000000071011AD060DAED8830E962502000000010000000700000007000000030000000411FBE909000000040BE879C71011710600000003000000071011AD060DAED8830E9625020000000101E0010013E958F70460010400000007000000070000000013E994F700000000046001041383DCFB082000FE0000000712465D09000000040C730AE7000000070000000800000002138418FB00000002082000FE00000007000000080E96610201E001000000000713E994F700000000046001041383DCFB082000FE000000070000000A00000002138418FB00000002082000FE000000070000000A0000000100000003000000010000000300000004128A4109000000040AD3578710D10106000000030DE7CA020E5FD903000000010140010013F5D8F703C00104000000060000000700000000000000060E6015030140010013F5D8F703C0010413A510FB064000FE000000070000000600000002000000070000000013F614F70000000003C001040000000613A54CFB00000002064000FE00000007000000050000000110D13D060DE7CA020E5FD903000000010000000A0E6015030140010013F5D8F703C0010413A510FB064000FE12FFAD090BE879C71011710600000003000000070000000A000000040000000A0000000213A54CFB00000002064000FE12FFAD090BE879C71011710600000003000000071011AD060000000A00000003000000040000000A0000000013F614F70000000003C0010413A510FB064000FE12FFAD090BE879C710117106000000030DAED8830E9625020000000101E0010000000007000000060E96610200000006000000010000000A000000040000000A0000000213A54CFB00000002064000FE12FFAD090BE879C710117106000000030DAED8830E9625020000000101E001000000000713E994F700000000046001041383DCFB06E000FE000000070000000500000002000000050E96610201E001000000000713E994F700000000046001040000000600000007000000011011AD060DAED8830E9625020000000101E001000000000813E994F700000000046001040000000A138418FB0000000206E000FE00000008000000050000000A000000030000000412FF7109000000040BE879C710117106000000030DAED8830E9625020000000100000005000000090000000A000000010000000300000000"
theorem small_7676300_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7676300_left_root small_7676300_left_fuel small_7676300_left_count small_7676300_left_encoded = true := by
  decide +kernel
theorem small_7676300_left_covered : CoveredBy scale carrier boxes small_7676300_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7676300_left_root small_7676300_left_fuel small_7676300_left_count small_7676300_left_encoded small_7676300_left_checked

theorem cover_7676300 : CoveredBy scale carrier boxes root_7676300 := by
  apply coveredBy_split_literal root_7676300 small_7676300_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2884.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7676300_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2884.covered
#print axioms cover_7676300

def root_7676295 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676295_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676295_right_fuel : Nat := 1
def small_7676295_right_count : Nat := 1
def small_7676295_right_encoded : String := "00000001"
theorem small_7676295_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7676295_right_root small_7676295_right_fuel small_7676295_right_count small_7676295_right_encoded = true := by
  decide +kernel
theorem small_7676295_right_covered : CoveredBy scale carrier boxes small_7676295_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7676295_right_root small_7676295_right_fuel small_7676295_right_count small_7676295_right_encoded small_7676295_right_checked

theorem cover_7676295 : CoveredBy scale carrier boxes root_7676295 := by
  apply coveredBy_split_literal root_7676295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676300 small_7676295_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676300
  · exact small_7676295_right_covered
#print axioms cover_7676295

def root_7676065 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676065_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676065_left_fuel : Nat := 22
def small_7676065_left_count : Nat := 109
def small_7676065_left_encoded : String := "0F875103000000010280010013D7B0F70280010413D7B0FB078000FE128A7D090AD35787000000050000000A00000004000000060000000213D7ECFB00000002078000FE128A7D090AD3578710D10106000000030000000610D13D060B4D440210801103000000010000000A10804D03014001000000000513F614F70000000003C001040000000513A54CFB0000000208C000FE000000050000000A000000010000000300000004128A4109000000040AD3578710D1010600000003000000060000000A0000000013D7ECF7000000000280010413D7B0FB078000FE00000006000000060000000213D7ECFB00000002078000FE128A7D090AD357870000000610D13D060B4D440210801103000000010000000610804D0303C0010013A510F703C001040000000613A54CFB0000000208C000FE11FC25090BE879C7000000061011AD060BF3E582000000051009290300000006000000010000000300000004000000060000000013A54CF70000000003C001040000000613A54CFB0000000208C000FE0000000600000006000000010000000300000004128A4109000000040AD357870000000610D13D060000000A00000003"
theorem small_7676065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7676065_left_root small_7676065_left_fuel small_7676065_left_count small_7676065_left_encoded = true := by
  decide +kernel
theorem small_7676065_left_covered : CoveredBy scale carrier boxes small_7676065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7676065_left_root small_7676065_left_fuel small_7676065_left_count small_7676065_left_encoded small_7676065_left_checked

theorem cover_7676065 : CoveredBy scale carrier boxes root_7676065 := by
  apply coveredBy_split_literal root_7676065 small_7676065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676295 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7676065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676295
#print axioms cover_7676065

def root_7676059 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676059_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676059_left_fuel : Nat := 1
def small_7676059_left_count : Nat := 1
def small_7676059_left_encoded : String := "00000003"
theorem small_7676059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7676059_left_root small_7676059_left_fuel small_7676059_left_count small_7676059_left_encoded = true := by
  decide +kernel
theorem small_7676059_left_covered : CoveredBy scale carrier boxes small_7676059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7676059_left_root small_7676059_left_fuel small_7676059_left_count small_7676059_left_encoded small_7676059_left_checked

theorem cover_7676059 : CoveredBy scale carrier boxes root_7676059 := by
  apply coveredBy_split_literal root_7676059 small_7676059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676065 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7676059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676065
#print axioms cover_7676059

def root_7679831 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7679831_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7679831_left_fuel : Nat := 2
def small_7679831_left_count : Nat := 3
def small_7679831_left_encoded : String := "0F875103000000010000000A"
theorem small_7679831_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7679831_left_root small_7679831_left_fuel small_7679831_left_count small_7679831_left_encoded = true := by
  decide +kernel
theorem small_7679831_left_covered : CoveredBy scale carrier boxes small_7679831_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7679831_left_root small_7679831_left_fuel small_7679831_left_count small_7679831_left_encoded small_7679831_left_checked

theorem cover_7679831 : CoveredBy scale carrier boxes root_7679831 := by
  apply coveredBy_split_literal root_7679831 small_7679831_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2885.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7679831_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2885.covered
#print axioms cover_7679831

def root_7679826 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7679826_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7679826_right_fuel : Nat := 1
def small_7679826_right_count : Nat := 1
def small_7679826_right_encoded : String := "00000003"
theorem small_7679826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7679826_right_root small_7679826_right_fuel small_7679826_right_count small_7679826_right_encoded = true := by
  decide +kernel
theorem small_7679826_right_covered : CoveredBy scale carrier boxes small_7679826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7679826_right_root small_7679826_right_fuel small_7679826_right_count small_7679826_right_encoded small_7679826_right_checked

theorem cover_7679826 : CoveredBy scale carrier boxes root_7679826 := by
  apply coveredBy_split_literal root_7679826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7679831 small_7679826_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7679831
  · exact small_7679826_right_covered
#print axioms cover_7679826

def root_7676058 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7676058 : CoveredBy scale carrier boxes root_7676058 := by
  apply coveredBy_split_literal root_7676058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7679826 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676059
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7679826
#print axioms cover_7676058

def root_7676053 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676053_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7676053_right_fuel : Nat := 1
def small_7676053_right_count : Nat := 1
def small_7676053_right_encoded : String := "00000001"
theorem small_7676053_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7676053_right_root small_7676053_right_fuel small_7676053_right_count small_7676053_right_encoded = true := by
  decide +kernel
theorem small_7676053_right_covered : CoveredBy scale carrier boxes small_7676053_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7676053_right_root small_7676053_right_fuel small_7676053_right_count small_7676053_right_encoded small_7676053_right_checked

theorem cover_7676053 : CoveredBy scale carrier boxes root_7676053 := by
  apply coveredBy_split_literal root_7676053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676058 small_7676053_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676058
  · exact small_7676053_right_covered
#print axioms cover_7676053

def root_7667753 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667753 : CoveredBy scale carrier boxes root_7667753 := by
  apply coveredBy_split_literal root_7667753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7667754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7676053 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7667754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7676053
#print axioms cover_7667753

def root_7667748 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667748_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667748_right_fuel : Nat := 1
def small_7667748_right_count : Nat := 1
def small_7667748_right_encoded : String := "00000004"
theorem small_7667748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667748_right_root small_7667748_right_fuel small_7667748_right_count small_7667748_right_encoded = true := by
  decide +kernel
theorem small_7667748_right_covered : CoveredBy scale carrier boxes small_7667748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667748_right_root small_7667748_right_fuel small_7667748_right_count small_7667748_right_encoded small_7667748_right_checked

theorem cover_7667748 : CoveredBy scale carrier boxes root_7667748 := by
  apply coveredBy_split_literal root_7667748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.root_7667753 small_7667748_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527.cover_7667753
  · exact small_7667748_right_covered
#print axioms cover_7667748

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0527
