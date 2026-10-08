import TaoBundleAssembly0181
import TaoBundleAssembly0183
import TaoBundleAssembly0184
import TaoBundleChunkBatch0718
import TaoBundleChunkBatch0721
import TaoBundleChunkBatch0722
import TaoBundleChunkBatch0723
import TaoBundleChunkBatch0724
import TaoBundleChunkBatch0725
import TaoBundleChunkBatch0726
import TaoBundleChunkBatch0727
import TaoBundleChunkBatch0728
import TaoBundleChunkBatch0729
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185
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
  apply coveredBy_split_literal root_7672816 small_7672816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672822 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_7672816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672822
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
  apply coveredBy_split_literal root_7672532 small_7672532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672816 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7672532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672816
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
  apply coveredBy_split_literal root_7672527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672532 small_7672527_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672532
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
  apply coveredBy_split_literal root_7672305 small_7672305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672527 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7672305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672527
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
  apply coveredBy_split_literal root_7672300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672305 small_7672300_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672305
  · exact small_7672300_right_covered
#print axioms cover_7672300

def root_7667760 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667760 : CoveredBy scale carrier boxes root_7667760 := by
  apply coveredBy_split_literal root_7667760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0184.root_7667761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7672300 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0184.cover_7667761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7672300
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
  apply coveredBy_split_literal root_7667754 small_7667754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667760 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7667754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667760
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
  apply coveredBy_split_literal root_7676295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676300 small_7676295_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676300
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
  apply coveredBy_split_literal root_7676065 small_7676065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676295 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7676065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676295
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
  apply coveredBy_split_literal root_7676059 small_7676059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676065 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7676059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676065
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
  apply coveredBy_split_literal root_7679826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7679831 small_7679826_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7679831
  · exact small_7679826_right_covered
#print axioms cover_7679826

def root_7676058 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7676058 : CoveredBy scale carrier boxes root_7676058 := by
  apply coveredBy_split_literal root_7676058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7679826 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676059
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7679826
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
  apply coveredBy_split_literal root_7676053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676058 small_7676053_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676058
  · exact small_7676053_right_covered
#print axioms cover_7676053

def root_7667753 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667753 : CoveredBy scale carrier boxes root_7667753 := by
  apply coveredBy_split_literal root_7667753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7676053 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7676053
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
  apply coveredBy_split_literal root_7667748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667753 small_7667748_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667753
  · exact small_7667748_right_covered
#print axioms cover_7667748

def root_7667747 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667747_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667747_right_fuel : Nat := 26
def small_7667747_right_count : Nat := 329
def small_7667747_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D106000000030280010013D7B0F70280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010AD3578710D10106000000030140010013F5D8F70140010413F5D8FB03C000FE13A54D0909BE35430000000811777D02000000060000000100000004000000050000000200000005000000000000000510D13D06014001000000000813F614F7000000000140010413F5D8FB03C000FE13A54D0909BE35430000000811777D020BE879C7000000080000000800000001000000040000000500000002000000050000000310D13D020AD3578710D10106000000030140010013F5D8F7014001040000000613F614FB0000000203C000FE13A54D090BE879C3000000060000000600000004000000050000000013F614F70000000001400104000000060000000510D13D06014001000000000A13F614F700000000014001040000000A13F614FB0000000203C000FE13A54D090BE879C310117102000000010BE879C71011710600000003000000050000000A0000000A000000040000000500000003000000010000000413D7B109000000040AD3578310D10102000000010000000510D13D020AD3578710D1010600000003000000050000000A000000010000000213D7ECFB00000002028000FE13D7ED090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D060140010013F5D8F703C0010413A510FB03C000FE13A54D090BE879C3000000080000000A000000040000000500000002000000050000000000000005000000030000000100000004000000050000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D0603C0010013A510F70140010413F5D8FB03C000FE13A54D090BE879C300000006000000060000000400000005000000020000000500000000000000050000000300000001000000040000000500000002000000050F350D060C9A87060F875107000000030000000A0F878D070280010013D7B0F70280010413D7B0FB0000000A0000000213D7ECFB00000002028000FE13D7ED090AD35783000000080000000A00000004000000080000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010DE7CA060E5FD90700000003000000070E60150703C0010013A510F7000000080000000000000005000000030000000A000000040000000A0000000213D7ECFB00000002028000FE13D7ED090AD3578310D10102000000010000000510D13D020DE7CA060E5FD907000000030000000A0000000500000001000000040000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F875103000000010000000A0F878D030280010013D7B0F70280010413D7B0FB0000000A0000000213D7ECFB00000002028000FE13D7ED090AD3578710D10106000000030DE7CA020E5FD90300000001000000060E6015030140010013F5D8F703C0010413A510FB0000000600000002000000050000000000000005000000010000000A000000040000000A0000000013D7ECF7000000000280010413D7B0FB028000FE13D7ED090AD35787000000060000000A00000004000000060000000213D7ECFB00000002028000FE13D7ED090AD3578710D10106000000030000000510D13D060DE7CA020E5FD903000000010000000A00000005000000030000000400000005000000010000000A00000001"
theorem small_7667747_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667747_right_root small_7667747_right_fuel small_7667747_right_count small_7667747_right_encoded = true := by
  decide +kernel
theorem small_7667747_right_covered : CoveredBy scale carrier boxes small_7667747_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667747_right_root small_7667747_right_fuel small_7667747_right_count small_7667747_right_encoded small_7667747_right_checked

theorem cover_7667747 : CoveredBy scale carrier boxes root_7667747 := by
  apply coveredBy_split_literal root_7667747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667748 small_7667747_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667748
  · exact small_7667747_right_covered
#print axioms cover_7667747

def root_7667742 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667742_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667742_right_fuel : Nat := 1
def small_7667742_right_count : Nat := 1
def small_7667742_right_encoded : String := "00000002"
theorem small_7667742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667742_right_root small_7667742_right_fuel small_7667742_right_count small_7667742_right_encoded = true := by
  decide +kernel
theorem small_7667742_right_covered : CoveredBy scale carrier boxes small_7667742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667742_right_root small_7667742_right_fuel small_7667742_right_count small_7667742_right_encoded small_7667742_right_checked

theorem cover_7667742 : CoveredBy scale carrier boxes root_7667742 := by
  apply coveredBy_split_literal root_7667742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667747 small_7667742_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667747
  · exact small_7667742_right_covered
#print axioms cover_7667742

def root_7684418 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7684418 : CoveredBy scale carrier boxes root_7684418 := by
  apply coveredBy_split_literal root_7684418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2887.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2887.covered
#print axioms cover_7684418

def root_7684413 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7684413_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7684413_right_fuel : Nat := 1
def small_7684413_right_count : Nat := 1
def small_7684413_right_encoded : String := "00000001"
theorem small_7684413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7684413_right_root small_7684413_right_fuel small_7684413_right_count small_7684413_right_encoded = true := by
  decide +kernel
theorem small_7684413_right_covered : CoveredBy scale carrier boxes small_7684413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7684413_right_root small_7684413_right_fuel small_7684413_right_count small_7684413_right_encoded small_7684413_right_checked

theorem cover_7684413 : CoveredBy scale carrier boxes root_7684413 := by
  apply coveredBy_split_literal root_7684413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7684418 small_7684413_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7684418
  · exact small_7684413_right_covered
#print axioms cover_7684413

def root_7683723 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683723_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683723_left_fuel : Nat := 32
def small_7683723_left_count : Nat := 325
def small_7683723_left_encoded : String := "0F34D102000000010CFD9C070F34D106000000030280010013D7B0F707800104128A40FB078000FE128A7D090AD3578310D10102000000010AD35787000000080000000810D13D020AD3578710D1010600000003014001000000000713F614F7000000000000000A10D13D060140010013F5D8F70640010412FF70FB08C000FE000000070000000800000002000000080000000013F614F7000000000640010412FF70FB08C000FE11FC25090BE879C3000000081011AD020BE879C70000000700000008000000010000000411FBE909000000040BE879C3000000081011AD020BE879C70000000800000008000000010000000212FFACFB0000000208C000FE11FC2509000000080000000400000005000000030000000100000004128A4109000000040AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D06014001000000000800000005000000030000000100000002128A7CFB00000002078000FE128A7D090AD357830000000810D13D020AD3578710D10106000000030000000510D13D0600000008000000030000000100000004000000050000000013D7ECF70000000007800104128A40FB078000FE128A7D090AD3578310D10102000000010000000510D13D020AD3578710D10106000000030000000510D13D0603C0010013A510F70640010412FF70FB08C000FE11FC25090BE879C30000000A1011AD020BE879C70000000A1011AD06032001000000000813C144F70000000005A001040000000A0000000500000003000000010000000400000005000000020000000500000000000000050000000300000001000000040000000500000002000000050F350D060C9A87060F87510700000003028001000000000813D7ECF70000000007800104128A40FB078000FE128A7D090AD357830000000810D13D020000000800000001000000040000000800000002128A7CFB00000002000000080F878D070280010013D7B0F707800104128A40FB078000FE128A7D090AD357830000000810D13D020000000800000001000000040000000800000002128A7CFB00000002000000080000000013D7ECF70000000007800104128A40FB078000FE128A7D090AD3578310D10102000000010000000810D13D020DE7CA060E5FD9070000000303C001000000000813A54CF7000000000640010412FF70FB08C000FE11FC25090BE879C3000000081011AD02000000080000000100000004000000080000000212FFACFB00000002000000080E60150703C0010013A510F70640010412FF70FB08C000FE11FC25090000000800000004000000080000000212FFACFB00000002000000080000000013A54CF7000000000640010412FF70FB08C000FE11FC25090BE879C31011710200000001000000081011AD020DAED8870E96250600000003046001001383DCF705A00104133134FB096000FE0000000800000005000000020000000500000000000000050E9661060460010000000008138418F70000000005A00104133134FB096000FE11AABD090000000800000004000000050000000200000005000000030000000100000004000000050000000200000005000000030000000100000004128A4109000000040AD3578310D10102000000010000000510D13D020DE7CA060E5FD9070000000303C001000000000800000005000000050000000100000002128A7CFB00000002078000FE128A7D090AD357830000000810D13D020DE7CA0600000008000000050000000100000004000000050000000300000003"
theorem small_7683723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683723_left_root small_7683723_left_fuel small_7683723_left_count small_7683723_left_encoded = true := by
  decide +kernel
theorem small_7683723_left_covered : CoveredBy scale carrier boxes small_7683723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683723_left_root small_7683723_left_fuel small_7683723_left_count small_7683723_left_encoded small_7683723_left_checked

theorem cover_7683723 : CoveredBy scale carrier boxes root_7683723 := by
  apply coveredBy_split_literal root_7683723 small_7683723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7684413 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7683723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7684413
#print axioms cover_7683723

def root_7683718 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683718_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683718_right_fuel : Nat := 1
def small_7683718_right_count : Nat := 1
def small_7683718_right_encoded : String := "00000004"
theorem small_7683718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683718_right_root small_7683718_right_fuel small_7683718_right_count small_7683718_right_encoded = true := by
  decide +kernel
theorem small_7683718_right_covered : CoveredBy scale carrier boxes small_7683718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683718_right_root small_7683718_right_fuel small_7683718_right_count small_7683718_right_encoded small_7683718_right_checked

theorem cover_7683718 : CoveredBy scale carrier boxes root_7683718 := by
  apply coveredBy_split_literal root_7683718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7683723 small_7683718_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7683723
  · exact small_7683718_right_covered
#print axioms cover_7683718

def root_7683717 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683717_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683717_right_fuel : Nat := 17
def small_7683717_right_count : Nat := 85
def small_7683717_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003000000080F878D0702800100000000080000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F875103000000010280010000000009000000090F878D030280010013D7B0F707800104128A40FB028000FE13D7ED090AD357870000000910D13D060DE7CA02000000090000000500000003000000040000000500000002000000050000000000000005000000010F350D060C9A87020F875103000000010000000A0F878D030C9A87060F875107000000030000000A0F878D070280010013D7B0F7078001040000000A000000090000000013D7ECF70000000007800104128A40FB028000FE13D7ED090DE7CA020000000A000000050000000400000005000000020000000500000003000000010000000300000001"
theorem small_7683717_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683717_right_root small_7683717_right_fuel small_7683717_right_count small_7683717_right_encoded = true := by
  decide +kernel
theorem small_7683717_right_covered : CoveredBy scale carrier boxes small_7683717_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683717_right_root small_7683717_right_fuel small_7683717_right_count small_7683717_right_encoded small_7683717_right_checked

theorem cover_7683717 : CoveredBy scale carrier boxes root_7683717 := by
  apply coveredBy_split_literal root_7683717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7683718 small_7683717_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7683718
  · exact small_7683717_right_covered
#print axioms cover_7683717

def root_7683711 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683711_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7683711_left_fuel : Nat := 1
def small_7683711_left_count : Nat := 1
def small_7683711_left_encoded : String := "00000002"
theorem small_7683711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7683711_left_root small_7683711_left_fuel small_7683711_left_count small_7683711_left_encoded = true := by
  decide +kernel
theorem small_7683711_left_covered : CoveredBy scale carrier boxes small_7683711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7683711_left_root small_7683711_left_fuel small_7683711_left_count small_7683711_left_encoded small_7683711_left_checked

theorem cover_7683711 : CoveredBy scale carrier boxes root_7683711 := by
  apply coveredBy_split_literal root_7683711 small_7683711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7683717 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7683711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7683717
#print axioms cover_7683711

def root_7667741 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667741 : CoveredBy scale carrier boxes root_7667741 := by
  apply coveredBy_split_literal root_7667741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7683711 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667742
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7683711
#print axioms cover_7667741

def root_7667736 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667736_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667736_right_fuel : Nat := 1
def small_7667736_right_count : Nat := 1
def small_7667736_right_encoded : String := "00000000"
theorem small_7667736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667736_right_root small_7667736_right_fuel small_7667736_right_count small_7667736_right_encoded = true := by
  decide +kernel
theorem small_7667736_right_covered : CoveredBy scale carrier boxes small_7667736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667736_right_root small_7667736_right_fuel small_7667736_right_count small_7667736_right_encoded small_7667736_right_checked

theorem cover_7667736 : CoveredBy scale carrier boxes root_7667736 := by
  apply coveredBy_split_literal root_7667736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667741 small_7667736_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667741
  · exact small_7667736_right_covered
#print axioms cover_7667736

def root_7692060 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692060_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692060_left_fuel : Nat := 30
def small_7692060_left_count : Nat := 171
def small_7692060_left_encoded : String := "0F34D106000000030C9A87020F8751030000000107800100128A40F7028001040000000613D7ECFB00000002078000FE128A7D090AD357870000000610D13D060000000600000003000000040000000600000000128A7CF700000000000000060F878D0307800100128A40F70280010413D7B0FB078000FE128A7D090AD357870000000610D13D06000000060000000300000004000000060000000213D7ECFB00000002078000FE128A7D090AD3578710D10106000000030000000610D13D060DE7CA020E5FD903000000010640010012FF70F703C001040000000613A54CFB0000000208C000FE11FC25090BE879C7000000061011AD06000000060000000300000004000000060000000012FFACF700000000000000060E6015030640010012FF70F703C0010413A510FB08C000FE11FC25090000000600000004000000060000000213A54CFB0000000208C000FE11FC25090BE879C71011710600000003000000061011AD060DAED8830E9625020000000105A00100133134F7046001041383DCFB096000FE0000000600000005000000020000000500000000000000050E96610205A00100133134F70460010400000006138418FB00000002096000FE11AABD0900000006000000040000000500000000133170F70000000000000006000000010000000300000004000000050000000012FFACF70000000003C001040000000600000005000000010000000300000004128A4109000000040AD3578710D10106000000030000000510D13D060DE7CA020E5FD903000000010640010012FF70F703C0010400000006000000050000000000000005000000050000000300000000128A7CF700000000028001040000000613D7ECFB00000002078000FE128A7D090AD357870000000610D13D060DE7CA02000000060000000500000003000000040000000500000001"
theorem small_7692060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7692060_left_root small_7692060_left_fuel small_7692060_left_count small_7692060_left_encoded = true := by
  decide +kernel
theorem small_7692060_left_covered : CoveredBy scale carrier boxes small_7692060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7692060_left_root small_7692060_left_fuel small_7692060_left_count small_7692060_left_encoded small_7692060_left_checked

theorem cover_7692060 : CoveredBy scale carrier boxes root_7692060 := by
  apply coveredBy_split_literal root_7692060 small_7692060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2889.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7692060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2889.covered
#print axioms cover_7692060

def root_7692055 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692055_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7692055_right_fuel : Nat := 1
def small_7692055_right_count : Nat := 1
def small_7692055_right_encoded : String := "00000001"
theorem small_7692055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7692055_right_root small_7692055_right_fuel small_7692055_right_count small_7692055_right_encoded = true := by
  decide +kernel
theorem small_7692055_right_covered : CoveredBy scale carrier boxes small_7692055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7692055_right_root small_7692055_right_fuel small_7692055_right_count small_7692055_right_encoded small_7692055_right_checked

theorem cover_7692055 : CoveredBy scale carrier boxes root_7692055 := by
  apply coveredBy_split_literal root_7692055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7692060 small_7692055_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7692060
  · exact small_7692055_right_covered
#print axioms cover_7692055

def root_7689567 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7689567 : CoveredBy scale carrier boxes root_7689567 := by
  apply coveredBy_split_literal root_7689567 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2888.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7692055 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2888.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7692055
#print axioms cover_7689567

def root_7689562 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689562_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689562_right_fuel : Nat := 1
def small_7689562_right_count : Nat := 1
def small_7689562_right_encoded : String := "00000004"
theorem small_7689562_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689562_right_root small_7689562_right_fuel small_7689562_right_count small_7689562_right_encoded = true := by
  decide +kernel
theorem small_7689562_right_covered : CoveredBy scale carrier boxes small_7689562_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689562_right_root small_7689562_right_fuel small_7689562_right_count small_7689562_right_encoded small_7689562_right_checked

theorem cover_7689562 : CoveredBy scale carrier boxes root_7689562 := by
  apply coveredBy_split_literal root_7689562 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689567 small_7689562_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689567
  · exact small_7689562_right_covered
#print axioms cover_7689562

def root_7689561 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689561_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689561_right_fuel : Nat := 17
def small_7689561_right_count : Nat := 91
def small_7689561_right_encoded : String := "135D4509000000040CFD9C030F34D102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F8751070000000307800100128A40F70000000700000000000000070F878D0707800100128A40F70280010413D7B0FB028000FE13D7ED090AD357830000000710D13D020DE7CA0600000007000000050000000100000004000000050000000200000005000000000000000500000003000000030F350D020CFD9C070F34D106000000030C9A87020F87510300000001000000060F878D0307800100128A40F70280010400000006000000050000000000000005000000010F350D060C9A87020F875103000000010000000A0F878D030C9A87060F875107000000030000000A0F878D0707800100128A40F7028001040000000A13D7ECFB00000002028000FE13D7ED090DE7CA020000000A00000005000000040000000500000000128A7CF70000000002800104000000070000000500000003000000010000000300000001"
theorem small_7689561_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689561_right_root small_7689561_right_fuel small_7689561_right_count small_7689561_right_encoded = true := by
  decide +kernel
theorem small_7689561_right_covered : CoveredBy scale carrier boxes small_7689561_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689561_right_root small_7689561_right_fuel small_7689561_right_count small_7689561_right_encoded small_7689561_right_checked

theorem cover_7689561 : CoveredBy scale carrier boxes root_7689561 := by
  apply coveredBy_split_literal root_7689561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689562 small_7689561_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689562
  · exact small_7689561_right_covered
#print axioms cover_7689561

def root_7689556 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689556_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689556_right_fuel : Nat := 1
def small_7689556_right_count : Nat := 1
def small_7689556_right_encoded : String := "00000002"
theorem small_7689556_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689556_right_root small_7689556_right_fuel small_7689556_right_count small_7689556_right_encoded = true := by
  decide +kernel
theorem small_7689556_right_covered : CoveredBy scale carrier boxes small_7689556_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689556_right_root small_7689556_right_fuel small_7689556_right_count small_7689556_right_encoded small_7689556_right_checked

theorem cover_7689556 : CoveredBy scale carrier boxes root_7689556 := by
  apply coveredBy_split_literal root_7689556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689561 small_7689556_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689561
  · exact small_7689556_right_covered
#print axioms cover_7689556

def root_7689555 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7689555 : CoveredBy scale carrier boxes root_7689555 := by
  apply coveredBy_split_literal root_7689555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2890.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2890.covered
#print axioms cover_7689555

def root_7689549 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689549_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7689549_left_fuel : Nat := 1
def small_7689549_left_count : Nat := 1
def small_7689549_left_encoded : String := "00000000"
theorem small_7689549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7689549_left_root small_7689549_left_fuel small_7689549_left_count small_7689549_left_encoded = true := by
  decide +kernel
theorem small_7689549_left_covered : CoveredBy scale carrier boxes small_7689549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7689549_left_root small_7689549_left_fuel small_7689549_left_count small_7689549_left_encoded small_7689549_left_checked

theorem cover_7689549 : CoveredBy scale carrier boxes root_7689549 := by
  apply coveredBy_split_literal root_7689549 small_7689549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689555 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7689549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689555
#print axioms cover_7689549

def root_7667735 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7667735 : CoveredBy scale carrier boxes root_7667735 := by
  apply coveredBy_split_literal root_7667735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7689549 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667736
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7689549
#print axioms cover_7667735

def root_7667730 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667730_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7667730_right_fuel : Nat := 1
def small_7667730_right_count : Nat := 1
def small_7667730_right_encoded : String := "00000003"
theorem small_7667730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7667730_right_root small_7667730_right_fuel small_7667730_right_count small_7667730_right_encoded = true := by
  decide +kernel
theorem small_7667730_right_covered : CoveredBy scale carrier boxes small_7667730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7667730_right_root small_7667730_right_fuel small_7667730_right_count small_7667730_right_encoded small_7667730_right_checked

theorem cover_7667730 : CoveredBy scale carrier boxes root_7667730 := by
  apply coveredBy_split_literal root_7667730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667735 small_7667730_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667735
  · exact small_7667730_right_covered
#print axioms cover_7667730

def root_7666990 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666990_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666990_left_fuel : Nat := 24
def small_7666990_left_count : Nat := 351
def small_7666990_left_encoded : String := "120701060000000305000100135D44F705000104135D44FB050000FE135D81090CFD9C030F34D1020000000104548A0713867106000000030280010000000007000000061386AD060280010013D7B0F70280010413D7B0FB078000FE128A7D090AD357830000000A0000000700000004128A4109000000040AD3578310D1010200000001067ECE870000000612EA95060140010000000007000000060000000310D13D0200000006000000010000000213D7ECFB00000002078000FE128A7D090000000700000004128A4109000000040AD3578310D10102000000010000000510D13D02067ECE870000000612EA950601400100000000070000000500000003000000010000000013D7ECF7000000000280010413D7B0FB078000FE128A7D090000000A00000004000000060000000213D7ECFB00000002078000FE0000000A00000005000000030F350D0204548A07000000061386AD060C9A87020F87510300000001000000060F878D030280010013D7B0F7028001040000000613D7ECFB00000002078000FE00000007000000060000000013D7ECF700000000028001040000000613D7ECFB00000002078000FE000000060000000600000001000000030000000100000004135D4509000000040CFD9C030F34D1020000000104548A071386710600000003000000051386AD060280010013D7B0F70280010413D7B0FB028000FE13D7ED090AD3578310D10102000000010000000500000006000000040000000500000002000000050000000000000005000000030F350D0204548A07000000061386AD060C9A8702000000060F878D030280010013D7B0F7028001040000000613D7ECFB00000002028000FE0000000600000005000000000000000600000001000000030000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D1020000000104548A070000000A1386AD060280010013D7B0F707800104128A40FB078000FE0000000A0000000500000002000000050000000000000005000000030F350D0204548A0713867106000000030C9A87020F87510300000001000000060F878D03028001000000000700000005000000011386AD060C9A87020F875103000000010280010013D7B0F707800104128A40FB0000000700000002000000070000000013D7ECF70000000007800104128A40FB078000FE000000060000000600000002128A7CFB00000002078000FE00000007000000050F878D030280010013D7B0F707800104128A40FB078000FE00000007128A410900000004067ECE870000000712EA9506000000070000000300000002128A7CFB00000002078000FE00000007000000050000000013D7ECF70000000007800104128A40FB078000FE128A7D09067ECE870000000612EA95060DE7CA020E5FD903000000010000000600000005000000030000000400000005000000020000000500000001000000030000000100000004135D4509000000040CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F875103000000010000000900000005000000030000000100000000135D80F70000000005000104135D44FB050000FE135D81090CFD9C030F34D1020000000104548A07000000061386AD0607800100128A40F70280010400000006000000050000000000000005000000030F350D02000000060000000100000004135D4509000000040CFD9C030F34D10200000001000000050F350D02000000060000000100000002135D80FB00000002050000FE135D81090CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F8751030000000107800100128A40F707800104000000060000000500000000000000050000000500000003000000010000000400000005"
theorem small_7666990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666990_left_root small_7666990_left_fuel small_7666990_left_count small_7666990_left_encoded = true := by
  decide +kernel
theorem small_7666990_left_covered : CoveredBy scale carrier boxes small_7666990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666990_left_root small_7666990_left_fuel small_7666990_left_count small_7666990_left_encoded small_7666990_left_checked

theorem cover_7666990 : CoveredBy scale carrier boxes root_7666990 := by
  apply coveredBy_split_literal root_7666990 small_7666990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7667730 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7666990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7667730
#print axioms cover_7666990

def root_7666985 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666985_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666985_right_fuel : Nat := 1
def small_7666985_right_count : Nat := 1
def small_7666985_right_encoded : String := "00000001"
theorem small_7666985_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666985_right_root small_7666985_right_fuel small_7666985_right_count small_7666985_right_encoded = true := by
  decide +kernel
theorem small_7666985_right_covered : CoveredBy scale carrier boxes small_7666985_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666985_right_root small_7666985_right_fuel small_7666985_right_count small_7666985_right_encoded small_7666985_right_checked

theorem cover_7666985 : CoveredBy scale carrier boxes root_7666985 := by
  apply coveredBy_split_literal root_7666985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7666990 small_7666985_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7666990
  · exact small_7666985_right_covered
#print axioms cover_7666985

def root_7666193 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666193_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666193_left_fuel : Nat := 26
def small_7666193_left_count : Nat := 375
def small_7666193_left_encoded : String := "120701020000000108A91307120701060000000305000100135D44F705000104135D44FB050000FE135D810904548A030000000A0000000A00000004000000050000000200000005000000000000000512073D0605000100135D44F705000104135D44FB050000FE135D810904548A0313867102000000010CFD9C070F34D1060000000302800100000000080000000A0F350D0600000008000000031386AD020CFD9C070F34D106000000030280010013D7B0F70280010413D7B0FB078000FE128A7D09067ECE830000000812EA95020AD357870000000A000000090000000100000004128A410900000004067ECE830000000812EA95020AD3578710D101060000000301400100000000080000000A10D13D060000000800000003000000010000000213D7ECFB00000002078000FE128A7D090000000A00000004000000080000000013D7ECF7000000000280010413D7B0FB078000FE128A7D090000000900000004128A410900000004067ECE830000000912EA95020AD3578710D10106000000030000000510D13D0603C00100000000090000000500000003000000010000000213D7ECFB00000002078000FE0000000A000000050F350D060C9A87060F87510700000003000000080F878D07028001000000000813D7ECF7000000000280010413D7B0FB078000FE00000009000000080000000213D7ECFB00000002078000FE000000080000000800000003000000030000000100000004135D45090000000404548A0313867102000000010CFD9C0700000008000000081386AD020CFD9C070F34D106000000030280010013D7B0F70280010413D7B0FB028000FE13D7ED09067ECE830000000812EA95020AD3578710D10106000000030000000500000008000000010000000400000005000000020000000500000000000000050F350D060C9A8706000000080F878D07028001000000000813D7ECF7000000000280010413D7B0FB028000FE0000000800000005000000020000000500000003000000030000000100000002135D80FB00000002050000FE135D810904548A031386710200000001000000081386AD020CFD9C070F34D106000000030280010000000008000000050F350D0600000008000000030000000100000004135D45090000000404548A03000000081386AD020CFD9C070F34D10600000003000000050F350D0600000008000000030000000100000000135D80F70000000005000104135D44FB050000FE135D810904548A0313867102000000010CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003000000080F878D0707800100000000090000000500000003000000031386AD020CFD9C070F34D1060000000307800100128A40F70280010413D7B0FB078000FE0000000A00000005000000020000000500000000000000050F350D060C9A87060F8751070000000307800100128A40F70280010413D7B0FB000000090000000213D7ECFB00000002078000FE000000080000000700000000128A7CF700000000028001040000000913D7ECFB00000002078000FE00000009000000050F878D0707800100128A40F70280010413D7B0FB078000FE00000009128A410900000004067ECE830000000912EA950200000009000000010000000213D7ECFB00000002078000FE128A7D09067ECE830000000812EA95020DE7CA060E5FD90700000003000000080000000500000001000000040000000500000000128A7CF7000000000280010413D7B0FB078000FE0000000900000005000000020000000500000003000000030000000100000004135D45090000000404548A031386710200000001000000051386AD020CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000700000005000000030000000100000002135D80FB00000002050000FE135D810904548A031386710200000001000000051386AD020CFD9C070F34D10600000003000000050F350D060C9A87060F87510700000003078001000000000800000005000000050000000300000001000000040000000500000003"
theorem small_7666193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666193_left_root small_7666193_left_fuel small_7666193_left_count small_7666193_left_encoded = true := by
  decide +kernel
theorem small_7666193_left_covered : CoveredBy scale carrier boxes small_7666193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666193_left_root small_7666193_left_fuel small_7666193_left_count small_7666193_left_encoded small_7666193_left_checked

theorem cover_7666193 : CoveredBy scale carrier boxes root_7666193 := by
  apply coveredBy_split_literal root_7666193 small_7666193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7666985 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7666193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7666985
#print axioms cover_7666193

def root_7666187 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666187_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7666187_left_fuel : Nat := 1
def small_7666187_left_count : Nat := 1
def small_7666187_left_encoded : String := "00000004"
theorem small_7666187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7666187_left_root small_7666187_left_fuel small_7666187_left_count small_7666187_left_encoded = true := by
  decide +kernel
theorem small_7666187_left_covered : CoveredBy scale carrier boxes small_7666187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7666187_left_root small_7666187_left_fuel small_7666187_left_count small_7666187_left_encoded small_7666187_left_checked

theorem cover_7666187 : CoveredBy scale carrier boxes root_7666187 := by
  apply coveredBy_split_literal root_7666187 small_7666187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7666193 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7666187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7666193
#print axioms cover_7666187

def root_7632425 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7632425 : CoveredBy scale carrier boxes root_7632425 := by
  apply coveredBy_split_literal root_7632425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0184.root_7632426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7666187 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0184.cover_7632426
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7666187
#print axioms cover_7632425

def root_7632420 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7632420_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7632420_right_fuel : Nat := 1
def small_7632420_right_count : Nat := 1
def small_7632420_right_encoded : String := "00000003"
theorem small_7632420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7632420_right_root small_7632420_right_fuel small_7632420_right_count small_7632420_right_encoded = true := by
  decide +kernel
theorem small_7632420_right_covered : CoveredBy scale carrier boxes small_7632420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7632420_right_root small_7632420_right_fuel small_7632420_right_count small_7632420_right_encoded small_7632420_right_checked

theorem cover_7632420 : CoveredBy scale carrier boxes root_7632420 := by
  apply coveredBy_split_literal root_7632420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7632425 small_7632420_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7632425
  · exact small_7632420_right_covered
#print axioms cover_7632420

def root_7629926 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7629926 : CoveredBy scale carrier boxes root_7629926 := by
  apply coveredBy_split_literal root_7629926 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2869.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7632420 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2869.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7632420
#print axioms cover_7629926

def root_7629921 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7629921_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7629921_right_fuel : Nat := 1
def small_7629921_right_count : Nat := 1
def small_7629921_right_encoded : String := "00000002"
theorem small_7629921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7629921_right_root small_7629921_right_fuel small_7629921_right_count small_7629921_right_encoded = true := by
  decide +kernel
theorem small_7629921_right_covered : CoveredBy scale carrier boxes small_7629921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7629921_right_root small_7629921_right_fuel small_7629921_right_count small_7629921_right_encoded small_7629921_right_checked

theorem cover_7629921 : CoveredBy scale carrier boxes root_7629921 := by
  apply coveredBy_split_literal root_7629921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7629926 small_7629921_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7629926
  · exact small_7629921_right_covered
#print axioms cover_7629921

def root_7698094 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7698094_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7698094_left_fuel : Nat := 26
def small_7698094_left_count : Nat := 315
def small_7698094_left_encoded : String := "1151E907000000030A0000FE1152250908A91303120701020000000108A912FB12073D0408A91309120700FE05000100135D44F70000000600000000135D80F70000000005000106000000060000000A0000000412073CFE0000000405000100135D44F70500010600000006135D810704548A03138671020000000100000006000000060000000300000000135D80F7000000000500010600000006135D810704548A0313867102000000010CFD9BFB0F350D040CFD9C090000000A0000000600000002000000061386AD020CFD9BFB0F350D040CFD9C090F34D0FE000000060000000400000006000000020000000600000001000000030000000212070104000000020000000612073D0208A912FB12073D0408A91309120700FE05000100135D44F70500010600000006135D81070CFD9C030F34D1020000000100000006000000060000000300000000135D80F7000000000500010600000006135D81070CFD9C030F34D10200000001000000060F350D020CFD9BFB0F350D0404548A09138670FE000000060000000400000006000000020000000600000001000000030000000412073CFE0000000405000100135D44F70500010600000006135D81070CFD9C030F34D10200000001000000060F350D020CFD9BFB0F350D040CFD9C090F34D0FE0000000600000004000000060000000200000006000000010000000300000000135D80F70000000005000106135D4507000000030CFD9C030F34D102000000010000000600000006135D81070CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040000000600000002000000060F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020F875103000000010C9A87040F8750FB0C9A86FE000000060F8751090000000400000006000000020000000600000006000000020F34D104000000020000000600000001000000030000000212070104000000020000000600000001000000041151E9090000000408A91303120701020000000108A912FB12073D0400000008000000020000000812073D0208A912FB12073D0405000100135D44F70500010600000008135D8107050000FE135D81090CFD9C03000000080F350D020CFD9BFB0F350D040C9A87020F87510300000001000000060000000600000002000000060000000100000004135D4509000000040CFD9C03000000080F350D0200000008000000010000000300000000135D80F70000000005000106135D450700000003050000FE135D81090CFD9C030F34D10200000001000000060000000600000004135D4509000000040CFD9C03000000070F350D020000000700000001135D8107050000FE135D81090CFD9C030F34D102000000010CFD9BFB0F350D040C9A87040F8750FB00000006000000020000000600000002000000060F350D020CFD9BFB0F350D040C9A87020F875103000000010C9A87040F8750FB07800100000000090000000700000002000000060F878D030C9A87040F8750FB0780010000000006128A7CF70000000000000007000000020000000600000001000000020F34D10400000002000000060000000100000004135D4509000000040CFD9C030F34D10200000001000000050F350D020CFD9BFB0F350D040C9A87020000000700000005000000020000000700000001000000030000000212070104000000020000000600000001"
theorem small_7698094_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7698094_left_root small_7698094_left_fuel small_7698094_left_count small_7698094_left_encoded = true := by
  decide +kernel
theorem small_7698094_left_covered : CoveredBy scale carrier boxes small_7698094_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7698094_left_root small_7698094_left_fuel small_7698094_left_count small_7698094_left_encoded small_7698094_left_checked

theorem cover_7698094 : CoveredBy scale carrier boxes root_7698094 := by
  apply coveredBy_split_literal root_7698094 small_7698094_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2891.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7698094_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2891.covered
#print axioms cover_7698094

def root_7698088 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7698088_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7698088_left_fuel : Nat := 1
def small_7698088_left_count : Nat := 1
def small_7698088_left_encoded : String := "00000002"
theorem small_7698088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7698088_left_root small_7698088_left_fuel small_7698088_left_count small_7698088_left_encoded = true := by
  decide +kernel
theorem small_7698088_left_covered : CoveredBy scale carrier boxes small_7698088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7698088_left_root small_7698088_left_fuel small_7698088_left_count small_7698088_left_encoded small_7698088_left_checked

theorem cover_7698088 : CoveredBy scale carrier boxes root_7698088 := by
  apply coveredBy_split_literal root_7698088 small_7698088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7698094 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7698088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7698094
#print axioms cover_7698088

def root_7629920 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7629920 : CoveredBy scale carrier boxes root_7629920 := by
  apply coveredBy_split_literal root_7629920 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7629921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7698088 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7629921
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7698088
#print axioms cover_7629920

def root_7629915 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7629915_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7629915_right_fuel : Nat := 1
def small_7629915_right_count : Nat := 1
def small_7629915_right_encoded : String := "00000001"
theorem small_7629915_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7629915_right_root small_7629915_right_fuel small_7629915_right_count small_7629915_right_encoded = true := by
  decide +kernel
theorem small_7629915_right_covered : CoveredBy scale carrier boxes small_7629915_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7629915_right_root small_7629915_right_fuel small_7629915_right_count small_7629915_right_encoded small_7629915_right_checked

theorem cover_7629915 : CoveredBy scale carrier boxes root_7629915 := by
  apply coveredBy_split_literal root_7629915 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7629920 small_7629915_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7629920
  · exact small_7629915_right_covered
#print axioms cover_7629915

def root_7622525 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7622525 : CoveredBy scale carrier boxes root_7622525 := by
  apply coveredBy_split_literal root_7622525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7622526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7629915 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7622526
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7629915
#print axioms cover_7622525

def root_7622520 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7622520_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7622520_right_fuel : Nat := 1
def small_7622520_right_count : Nat := 1
def small_7622520_right_encoded : String := "00000000"
theorem small_7622520_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7622520_right_root small_7622520_right_fuel small_7622520_right_count small_7622520_right_encoded = true := by
  decide +kernel
theorem small_7622520_right_covered : CoveredBy scale carrier boxes small_7622520_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7622520_right_root small_7622520_right_fuel small_7622520_right_count small_7622520_right_encoded small_7622520_right_checked

theorem cover_7622520 : CoveredBy scale carrier boxes root_7622520 := by
  apply coveredBy_split_literal root_7622520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7622525 small_7622520_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7622525
  · exact small_7622520_right_covered
#print axioms cover_7622520

def root_7703526 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7703526 : CoveredBy scale carrier boxes root_7703526 := by
  apply coveredBy_split_literal root_7703526 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2893.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2894.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2893.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2894.covered
#print axioms cover_7703526

def root_7703520 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7703520_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7703520_left_fuel : Nat := 1
def small_7703520_left_count : Nat := 1
def small_7703520_left_encoded : String := "00000002"
theorem small_7703520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7703520_left_root small_7703520_left_fuel small_7703520_left_count small_7703520_left_encoded = true := by
  decide +kernel
theorem small_7703520_left_covered : CoveredBy scale carrier boxes small_7703520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7703520_left_root small_7703520_left_fuel small_7703520_left_count small_7703520_left_encoded small_7703520_left_checked

theorem cover_7703520 : CoveredBy scale carrier boxes root_7703520 := by
  apply coveredBy_split_literal root_7703520 small_7703520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7703526 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7703520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7703526
#print axioms cover_7703520

def root_7701988 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7701988 : CoveredBy scale carrier boxes root_7701988 := by
  apply coveredBy_split_literal root_7701988 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2892.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7703520 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2892.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7703520
#print axioms cover_7701988

def root_7701982 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7701982_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7701982_left_fuel : Nat := 1
def small_7701982_left_count : Nat := 1
def small_7701982_left_encoded : String := "00000001"
theorem small_7701982_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7701982_left_root small_7701982_left_fuel small_7701982_left_count small_7701982_left_encoded = true := by
  decide +kernel
theorem small_7701982_left_covered : CoveredBy scale carrier boxes small_7701982_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7701982_left_root small_7701982_left_fuel small_7701982_left_count small_7701982_left_encoded small_7701982_left_checked

theorem cover_7701982 : CoveredBy scale carrier boxes root_7701982 := by
  apply coveredBy_split_literal root_7701982 small_7701982_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7701988 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7701982_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7701988
#print axioms cover_7701982

def root_7706791 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706791_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706791_right_fuel : Nat := 20
def small_7706791_right_count : Nat := 381
def small_7706791_right_encoded : String := "1151E9090000000408A912F712073D0008A91303120701020000000105000104135D44FB05000106135D450700000003050000FE135D81090CFD9BF70F350D0004548A03000000071386AD020000000700000001000000000F34D1000000000004548A03000000090000000700000004135D4509000000040CFD9BF7000000070F34D1000000000004548A0313867102000000010000000500000005135D8107050000FE135D81090CFD9BF70F350D0004548A0313867102000000010C9A870000000009000000071386AD020C9A87000F8750F700000007000000000000000700000001000000000F34D1000000000004548A03000000071386AD02000000070000000100000004135D4509000000040CFD9BF7000000070F34D10000000000000000050000000300000002135D80FB0000000205000106135D450700000003050000FE135D81090CFD9BF7000000070F34D10000000000000000070000000400000007135D8107050000FE135D81090CFD9BF70F350D0004548A03000000071386AD020C9A87000F8750F700000007000000000000000500000001000000000F34D100000000000000000500000004000000050000000312073D0205000104135D44FB05000106135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D102000000010C9A87000F8750F70000000700000000000000070F350D020000000700000001000000000F34D100000000000CFD9C03000000070F350D02000000070000000100000004135D4509000000040CFD9BF7000000070F34D1000000000000000007135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D102000000010C9A87000F8750F702800104000000070000000700000000000000070F350D020C9A87000F8750F70C9A8702000000070F878D030000000700000001000000000F878CF7000000000000000700000001000000000F34D100000000000CFD9C030F34D102000000010280010400000007000000050F350D02000000070000000100000004135D4509000000040CFD9BF70F350D000CFD9C03000000070F350D020000000700000001000000000F34D10000000000000000070000000300000002135D80FB0000000205000106135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C03000000070F350D020000000700000001000000000F34D100000000000000000700000004135D4509000000040CFD9BF70000000700000007135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D102000000010C9A87000F8750F707800104000000070000000700000000000000070F350D020C9A87000F8750F70C9A8702000000070F878D030000000700000001000000000F878CF7000000000000000700000001000000000F34D100000000000CFD9C03000000070F350D02000000070000000100000004135D4509000000040CFD9BF7000000070F34D1000000000000000005000000030000000100000000120701000000000008A91303120701020000000105000104135D44FB05000106135D450700000003050000FE135D8109045489F71386AD0004548A03000000091386AD020280010400000009000000050000000100000000138671000000000000000005000000040000000500000005000000020000000512073D0205000104135D44FB05000106135D450700000003050000FE135D8109045489F71386AD000CFD9C030F34D102000000010280010413D7B0FB0000000700000002000000070F350D0200000007000000010000000013867100000000000CFD9C030F34D10200000001000000050F350D02000000080000000100000004135D450900000004045489F700000007138671000000000000000005135D8107050000FE135D8109045489F71386AD000CFD9C030F34D10200000001000000050F350D0200000007000000010000000013867100000000000CFD9C03000000060000000500000004000000050000000300000002135D80FB0000000205000106135D450700000003050000FE135D8109045489F70000000713867100000000000000000500000004000000050000000500000001"
theorem small_7706791_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7706791_right_root small_7706791_right_fuel small_7706791_right_count small_7706791_right_encoded = true := by
  decide +kernel
theorem small_7706791_right_covered : CoveredBy scale carrier boxes small_7706791_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7706791_right_root small_7706791_right_fuel small_7706791_right_count small_7706791_right_encoded small_7706791_right_checked

theorem cover_7706791 : CoveredBy scale carrier boxes root_7706791 := by
  apply coveredBy_split_literal root_7706791 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2895.root small_7706791_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2895.covered
  · exact small_7706791_right_covered
#print axioms cover_7706791

def root_7706785 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706785_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706785_left_fuel : Nat := 1
def small_7706785_left_count : Nat := 1
def small_7706785_left_encoded : String := "00000003"
theorem small_7706785_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7706785_left_root small_7706785_left_fuel small_7706785_left_count small_7706785_left_encoded = true := by
  decide +kernel
theorem small_7706785_left_covered : CoveredBy scale carrier boxes small_7706785_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7706785_left_root small_7706785_left_fuel small_7706785_left_count small_7706785_left_encoded small_7706785_left_checked

theorem cover_7706785 : CoveredBy scale carrier boxes root_7706785 := by
  apply coveredBy_split_literal root_7706785 small_7706785_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706791 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7706785_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706791
#print axioms cover_7706785

def root_7706784 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7706784 : CoveredBy scale carrier boxes root_7706784 := by
  apply coveredBy_split_literal root_7706784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2896.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706785
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2896.covered
#print axioms cover_7706784

def root_7706779 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706779_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706779_right_fuel : Nat := 1
def small_7706779_right_count : Nat := 1
def small_7706779_right_encoded : String := "00000002"
theorem small_7706779_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7706779_right_root small_7706779_right_fuel small_7706779_right_count small_7706779_right_encoded = true := by
  decide +kernel
theorem small_7706779_right_covered : CoveredBy scale carrier boxes small_7706779_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7706779_right_root small_7706779_right_fuel small_7706779_right_count small_7706779_right_encoded small_7706779_right_checked

theorem cover_7706779 : CoveredBy scale carrier boxes root_7706779 := by
  apply coveredBy_split_literal root_7706779 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706784 small_7706779_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706784
  · exact small_7706779_right_covered
#print axioms cover_7706779

def root_7706778 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7706778 : CoveredBy scale carrier boxes root_7706778 := by
  apply coveredBy_split_literal root_7706778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706779 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2897.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706779
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2897.covered
#print axioms cover_7706778

def root_7706773 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706773_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7706773_right_fuel : Nat := 1
def small_7706773_right_count : Nat := 1
def small_7706773_right_encoded : String := "00000001"
theorem small_7706773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7706773_right_root small_7706773_right_fuel small_7706773_right_count small_7706773_right_encoded = true := by
  decide +kernel
theorem small_7706773_right_covered : CoveredBy scale carrier boxes small_7706773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7706773_right_root small_7706773_right_fuel small_7706773_right_count small_7706773_right_encoded small_7706773_right_checked

theorem cover_7706773 : CoveredBy scale carrier boxes root_7706773 := by
  apply coveredBy_split_literal root_7706773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706778 small_7706773_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706778
  · exact small_7706773_right_covered
#print axioms cover_7706773

def root_7701981 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7701981 : CoveredBy scale carrier boxes root_7701981 := by
  apply coveredBy_split_literal root_7701981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7701982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7706773 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7701982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7706773
#print axioms cover_7701981

def root_7701975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7701975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7701975_left_fuel : Nat := 1
def small_7701975_left_count : Nat := 1
def small_7701975_left_encoded : String := "00000000"
theorem small_7701975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7701975_left_root small_7701975_left_fuel small_7701975_left_count small_7701975_left_encoded = true := by
  decide +kernel
theorem small_7701975_left_covered : CoveredBy scale carrier boxes small_7701975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7701975_left_root small_7701975_left_fuel small_7701975_left_count small_7701975_left_encoded small_7701975_left_checked

theorem cover_7701975 : CoveredBy scale carrier boxes root_7701975 := by
  apply coveredBy_split_literal root_7701975 small_7701975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7701981 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7701975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7701981
#print axioms cover_7701975

def root_7622519 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7622519 : CoveredBy scale carrier boxes root_7622519 := by
  apply coveredBy_split_literal root_7622519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7622520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7701975 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7622520
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7701975
#print axioms cover_7622519

def root_7535301 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535301 : CoveredBy scale carrier boxes root_7535301 := by
  apply coveredBy_split_literal root_7535301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7535302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7622519 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7535302
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7622519
#print axioms cover_7535301

def root_7535300 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535300 : CoveredBy scale carrier boxes root_7535300 := by
  apply coveredBy_split_literal root_7535300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7535301 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2898.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7535301
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2898.covered
#print axioms cover_7535300

def root_7525630 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7525630 : CoveredBy scale carrier boxes root_7525630 := by
  apply coveredBy_split_literal root_7525630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7525631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7535300 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7525631
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7535300
#print axioms cover_7525630

def root_7456052 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456052 : CoveredBy scale carrier boxes root_7456052 := by
  apply coveredBy_split_literal root_7456052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7456053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7525630 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7456053
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7525630
#print axioms cover_7456052

def root_7722525 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7722525 : CoveredBy scale carrier boxes root_7722525 := by
  apply coveredBy_split_literal root_7722525 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2901.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2902.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2901.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2902.covered
#print axioms cover_7722525

def root_7722520 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7722520_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7722520_right_fuel : Nat := 1
def small_7722520_right_count : Nat := 1
def small_7722520_right_encoded : String := "00000000"
theorem small_7722520_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7722520_right_root small_7722520_right_fuel small_7722520_right_count small_7722520_right_encoded = true := by
  decide +kernel
theorem small_7722520_right_covered : CoveredBy scale carrier boxes small_7722520_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7722520_right_root small_7722520_right_fuel small_7722520_right_count small_7722520_right_encoded small_7722520_right_checked

theorem cover_7722520 : CoveredBy scale carrier boxes root_7722520 := by
  apply coveredBy_split_literal root_7722520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7722525 small_7722520_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7722525
  · exact small_7722520_right_covered
#print axioms cover_7722520

def root_7722519 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7722519 : CoveredBy scale carrier boxes root_7722519 := by
  apply coveredBy_split_literal root_7722519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7722520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2903.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7722520
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2903.covered
#print axioms cover_7722519

def root_7720575 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7720575 : CoveredBy scale carrier boxes root_7720575 := by
  apply coveredBy_split_literal root_7720575 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2900.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7722519 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2900.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7722519
#print axioms cover_7720575

def root_7717789 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7717789 : CoveredBy scale carrier boxes root_7717789 := by
  apply coveredBy_split_literal root_7717789 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2899.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7720575 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2899.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7720575
#print axioms cover_7717789

def root_7733167 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7733167 : CoveredBy scale carrier boxes root_7733167 := by
  apply coveredBy_split_literal root_7733167 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2906.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2907.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2906.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2907.covered
#print axioms cover_7733167

def root_7733161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7733161_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7733161_left_fuel : Nat := 1
def small_7733161_left_count : Nat := 1
def small_7733161_left_encoded : String := "00000000"
theorem small_7733161_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7733161_left_root small_7733161_left_fuel small_7733161_left_count small_7733161_left_encoded = true := by
  decide +kernel
theorem small_7733161_left_covered : CoveredBy scale carrier boxes small_7733161_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7733161_left_root small_7733161_left_fuel small_7733161_left_count small_7733161_left_encoded small_7733161_left_checked

theorem cover_7733161 : CoveredBy scale carrier boxes root_7733161 := by
  apply coveredBy_split_literal root_7733161 small_7733161_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7733167 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7733161_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7733167
#print axioms cover_7733161

def root_7731437 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7731437 : CoveredBy scale carrier boxes root_7731437 := by
  apply coveredBy_split_literal root_7731437 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2905.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7733161 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2905.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7733161
#print axioms cover_7731437

def root_7731436 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7731436 : CoveredBy scale carrier boxes root_7731436 := by
  apply coveredBy_split_literal root_7731436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7731437 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2908.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7731437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2908.covered
#print axioms cover_7731436

def root_7728660 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7728660 : CoveredBy scale carrier boxes root_7728660 := by
  apply coveredBy_split_literal root_7728660 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2904.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7731436 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2904.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7731436
#print axioms cover_7728660

def root_7717788 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7717788 : CoveredBy scale carrier boxes root_7717788 := by
  apply coveredBy_split_literal root_7717788 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7717789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7728660 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7717789
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7728660
#print axioms cover_7717788

def root_7742697 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7742697 : CoveredBy scale carrier boxes root_7742697 := by
  apply coveredBy_split_literal root_7742697 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2911.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2912.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2911.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2912.covered
#print axioms cover_7742697

def root_7742691 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7742691_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7742691_left_fuel : Nat := 1
def small_7742691_left_count : Nat := 1
def small_7742691_left_encoded : String := "00000000"
theorem small_7742691_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7742691_left_root small_7742691_left_fuel small_7742691_left_count small_7742691_left_encoded = true := by
  decide +kernel
theorem small_7742691_left_covered : CoveredBy scale carrier boxes small_7742691_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7742691_left_root small_7742691_left_fuel small_7742691_left_count small_7742691_left_encoded small_7742691_left_checked

theorem cover_7742691 : CoveredBy scale carrier boxes root_7742691 := by
  apply coveredBy_split_literal root_7742691 small_7742691_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7742697 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7742691_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7742697
#print axioms cover_7742691

def root_7740981 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7740981 : CoveredBy scale carrier boxes root_7740981 := by
  apply coveredBy_split_literal root_7740981 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2910.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7742691 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2910.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7742691
#print axioms cover_7740981

def root_7739063 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7739063 : CoveredBy scale carrier boxes root_7739063 := by
  apply coveredBy_split_literal root_7739063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2909.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7740981 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2909.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7740981
#print axioms cover_7739063

def root_7739062 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7739062 : CoveredBy scale carrier boxes root_7739062 := by
  apply coveredBy_split_literal root_7739062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.root_7739063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2913.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185.cover_7739063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2913.covered
#print axioms cover_7739062

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0185
