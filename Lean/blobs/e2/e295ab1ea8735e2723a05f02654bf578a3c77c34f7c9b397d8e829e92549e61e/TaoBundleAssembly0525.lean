import TaoBundleAssembly0524
import TaoBundleChunkBatch0719
import TaoBundleChunkBatch0720
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525
def root_7642631 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7642631_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7642631_left_fuel : Nat := 33
def small_7642631_left_count : Nat := 475
def small_7642631_left_encoded : String := "0F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0000000A0F8751090000000407800100128A40F70280010413D7B0FB0AD357830000000A10D13D020AD357870000000A10D13D060B4D43FE0000000910801109000000040640010012FF70F700000009000000000000000900000003000000010000000213D7ECFB000000020AD357830000000A0000000A00000000128A7CF700000000028001040000000A0000000A0F350D060CFD9C090F34D0FE0C9A87060F87510700000003000000090F878D070000000A00000003000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D0907800100128A40F7028001040000000513D7ECFB000000020AD357830000000910D13D020B4D44060000000500000009000000010000000000000009000000040F8751090000000407800100128A40F70280010413D7B0FB0AD357830000000910D13D0200000009000000010000000213D7ECFB000000020AD3578310D10102000000010000000910D13D020B4D440610801107000000030B4D43FE10804D090640010000000005000000090000000410801109000000040640010012FF70F703C0010400000009000000060000000012FFACF70000000003C00104000000070000000710804D070B4D43FE10804D090640010012FF70F70000000900000000000000090000000410801109000000040640010012FF70F703C001040000000913A54CFB000000020BE879C3000000091011AD020BF3E5861008ED070000000300000006100929070AA6A27E0000000910ED71090000000405A00100000000060000000700000003000000010000000012FFACF70000000003C001040000000913A54CFB000000020BE879C3000000071011AD020BF3E586000000070000000700000001000000030000000100000000128A7CF7000000000280010413D7B0FB000000090000000213D7ECFB000000020AD3578310D10102000000010000000910D13D020B4D440610801107000000030B4D43FE10804D0900000009000000040000000710804D070B4D43FE10804D090000000900000004108011090000000408C0010011FBE8F703C001040000000700000007000000000000000700000003000000010F878D070C9A86FE0F878D0907800100128A40F7028001040000000913D7ECFB000000020AD357830000000910D13D020DE7CA060E5FD907000000030DE7C9FE000000090E5FD90900000004000000090000000A0000000100000000128A7CF70000000002800104000000090000000A000000040F8751090000000407800100128A40F70280010413D7B0FB0AD357830000000910D13D020DE7CA060E5FD90700000003000000090E6015070B4D43FE0000000910801109000000040000000900000003000000010000000213D7ECFB000000020AD3578310D10102000000010DE7CA060E5FD90700000003000000090000000A10D13D020DE7CA060E5FD907000000030B4D43FE10804D090640010012FF70F70000000900000000000000090000000410801109000000040640010012FF70F703C001040000000913A54CFB000000020BE879C31011710200000001000000091011AD020D4128860EFA1107000000030AA6A27E0000000910ED71090000000405A0010000000009000000090EFA4D070AA6A27E0000000910ED71090000000405A00100133134F700000009000000000000000900000003000000010000000012FFACF70000000003C001040000000913A54CFB000000020BE879C3000000091011AD020D4128860EFA1107000000030AA6A27E0000000910ED710900000004000000070EFA4D070AA6A27E0000000910ED71090000000406E00100000000090000000900000003000000010E6015070B4D43FE10804D09064001000000000A0000000A0000000410801109000000040640010012FF70F703C0010413A510FB0BE879C3000000091011AD020DAED8870E962506000000030000000900000009000000010000000213A54CFB000000020BE879C30000000A1011AD020DAED8870000000A0E9661060AA6A27E0000000A10ED71090000000405A00100133134F704600104000000090000000A00000000133170F7000000000000000A00000003000000010000000012FFACF70000000003C0010413A510FB0BE879C3000000091011AD020000000900000001000000020000000A000000030000000100000000128A7CF7000000000280010413D7B0FB0AD357830000000910D13D020DE7CA060E5FD90700000003000000090E6015070B4D43FE0000000910801109000000040000000900000003000000010000000213D7ECFB000000020AD3578310D10102000000010000000A10D13D020DE7CA060E5FD907000000030B4D43FE10804D0908C001000000000A0000000900000004108011090000000408C0010011FBE8F703C001040000000913A54CFB000000020BE879C3000000091011AD020D4128860EFA110700000003000000070EFA4D070000000A00000003000000010000000011FC24F70000000003C0010400000007000000050E6015070000000A00000003000000010000000300000003"
theorem small_7642631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7642631_left_root small_7642631_left_fuel small_7642631_left_count small_7642631_left_encoded = true := by
  decide +kernel
theorem small_7642631_left_covered : CoveredBy scale carrier boxes small_7642631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7642631_left_root small_7642631_left_fuel small_7642631_left_count small_7642631_left_encoded small_7642631_left_checked

theorem cover_7642631 : CoveredBy scale carrier boxes root_7642631 := by
  apply coveredBy_split_literal root_7642631 small_7642631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0524.root_7643639 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7642631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0524.cover_7643639
#print axioms cover_7642631

def root_7642626 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7642626_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7642626_right_fuel : Nat := 1
def small_7642626_right_count : Nat := 1
def small_7642626_right_encoded : String := "00000002"
theorem small_7642626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7642626_right_root small_7642626_right_fuel small_7642626_right_count small_7642626_right_encoded = true := by
  decide +kernel
theorem small_7642626_right_covered : CoveredBy scale carrier boxes small_7642626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7642626_right_root small_7642626_right_fuel small_7642626_right_count small_7642626_right_encoded small_7642626_right_checked

theorem cover_7642626 : CoveredBy scale carrier boxes root_7642626 := by
  apply coveredBy_split_literal root_7642626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7642631 small_7642626_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7642631
  · exact small_7642626_right_covered
#print axioms cover_7642626

def root_7650924 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7650924 : CoveredBy scale carrier boxes root_7650924 := by
  apply coveredBy_split_literal root_7650924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2874.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2875.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2874.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2875.covered
#print axioms cover_7650924

def root_7650918 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650918_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650918_left_fuel : Nat := 1
def small_7650918_left_count : Nat := 1
def small_7650918_left_encoded : String := "00000001"
theorem small_7650918_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7650918_left_root small_7650918_left_fuel small_7650918_left_count small_7650918_left_encoded = true := by
  decide +kernel
theorem small_7650918_left_covered : CoveredBy scale carrier boxes small_7650918_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7650918_left_root small_7650918_left_fuel small_7650918_left_count small_7650918_left_encoded small_7650918_left_checked

theorem cover_7650918 : CoveredBy scale carrier boxes root_7650918 := by
  apply coveredBy_split_literal root_7650918 small_7650918_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7650924 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_7650918_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7650924
#print axioms cover_7650918

def root_7657433 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7657433 : CoveredBy scale carrier boxes root_7657433 := by
  apply coveredBy_split_literal root_7657433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2877.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2878.root coord4 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2877.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2878.covered
#print axioms cover_7657433

def root_7657427 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657427_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (12058112)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657427_left_fuel : Nat := 1
def small_7657427_left_count : Nat := 1
def small_7657427_left_encoded : String := "00000003"
theorem small_7657427_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657427_left_root small_7657427_left_fuel small_7657427_left_count small_7657427_left_encoded = true := by
  decide +kernel
theorem small_7657427_left_covered : CoveredBy scale carrier boxes small_7657427_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657427_left_root small_7657427_left_fuel small_7657427_left_count small_7657427_left_encoded small_7657427_left_checked

theorem cover_7657427 : CoveredBy scale carrier boxes root_7657427 := by
  apply coveredBy_split_literal root_7657427 small_7657427_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657433 coord3 true (12058112)
  · decide +kernel
  · decide +kernel
  · exact small_7657427_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657433
#print axioms cover_7657427

def root_7657426 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(12058112), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7657426 : CoveredBy scale carrier boxes root_7657426 := by
  apply coveredBy_split_literal root_7657426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2879.root coord3 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657427
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2879.covered
#print axioms cover_7657426

def root_7657420 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657420_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (11664704)⟩, ⟨(10897344), (12058112)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657420_left_fuel : Nat := 1
def small_7657420_left_count : Nat := 1
def small_7657420_left_encoded : String := "00000001"
theorem small_7657420_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657420_left_root small_7657420_left_fuel small_7657420_left_count small_7657420_left_encoded = true := by
  decide +kernel
theorem small_7657420_left_covered : CoveredBy scale carrier boxes small_7657420_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657420_left_root small_7657420_left_fuel small_7657420_left_count small_7657420_left_encoded small_7657420_left_checked

theorem cover_7657420 : CoveredBy scale carrier boxes root_7657420 := by
  apply coveredBy_split_literal root_7657420 small_7657420_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657426 coord1 true (12058112)
  · decide +kernel
  · decide +kernel
  · exact small_7657420_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657426
#print axioms cover_7657420

def root_7657419 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7657419 : CoveredBy scale carrier boxes root_7657419 := by
  apply coveredBy_split_literal root_7657419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657420 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2880.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657420
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2880.covered
#print axioms cover_7657419

def root_7657414 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657414_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657414_right_fuel : Nat := 1
def small_7657414_right_count : Nat := 1
def small_7657414_right_encoded : String := "00000002"
theorem small_7657414_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657414_right_root small_7657414_right_fuel small_7657414_right_count small_7657414_right_encoded = true := by
  decide +kernel
theorem small_7657414_right_covered : CoveredBy scale carrier boxes small_7657414_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657414_right_root small_7657414_right_fuel small_7657414_right_count small_7657414_right_encoded small_7657414_right_checked

theorem cover_7657414 : CoveredBy scale carrier boxes root_7657414 := by
  apply coveredBy_split_literal root_7657414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657419 small_7657414_right_root coord2 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657419
  · exact small_7657414_right_covered
#print axioms cover_7657414

def root_7657413 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657413_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657413_right_fuel : Nat := 20
def small_7657413_right_count : Nat := 203
def small_7657413_right_encoded : String := "128A7CFB000000020DE7CA020E5FD903000000010DE7CA060E5FD907000000030B4D43FE10804D090640010012FF70F708C0010411FBE8FB0D4128820EFA1103000000010D412886000000060EFA4D070BF3E57E000000061008ED090000000400000006000000030000000600000002000000060000000012FFACF70000000008C0010411FBE8FB0D4128820EFA1103000000010D4128860EFA110700000003000000060EFA4D070BF3E57E0000000A1008ED090000000406E001000000000912C820F7000000000000000A000000030EFA4D030D412886000000060EFA4D070000000A00000003000000010000000211FC24FB00000002000000060000000410801109000000040640010012FF70F708C0010411FBE8FB0D4128820EFA1103000000010D412886000000060EFA4D0700000009000000030EFA4D03000000060000000100000002000000060000000012FFACF70000000008C0010411FBE8FB0D4128820EFA1103000000010D4128860EFA1107000000030AA6A27E0000000600000005000000050EFA4D030D4128860EFA11070000000300000005000000050000000100000002000000050E6015070B4D43FE10804D090640010012FF70F708C0010411FBE8FB0DAED8870000000A0E9661060D4128820EFA1103000000010BF3E57E0000000A1008ED090000000405A00100000000090000000A0000000A000000030000000211FC24FB000000020000000A0000000012FFACF7000000000000000A0000000410801109000000040640010012FF70F708C0010411FBE8FB0DAED8870E962506000000030D4128820EFA11030000000100000009000000050E9661060D4128820EFA110300000001000000090EFA4D030AA6A27E10EDAD0905A0010000000009000000050000000400000005000000010000000300000002000000050000000000000005000000030E6015030DE7CA060E5FD907000000030B4D43FE10804D090640010012FF70F7000000060000000012FFACF7000000000000000A0000000410801109000000040640010012FF70F708C0010411FBE8FB00000006000000020000000500000000000000050E6015070B4D43FE0000000A000000050000000300000001"
theorem small_7657413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657413_right_root small_7657413_right_fuel small_7657413_right_count small_7657413_right_encoded = true := by
  decide +kernel
theorem small_7657413_right_covered : CoveredBy scale carrier boxes small_7657413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657413_right_root small_7657413_right_fuel small_7657413_right_count small_7657413_right_encoded small_7657413_right_checked

theorem cover_7657413 : CoveredBy scale carrier boxes root_7657413 := by
  apply coveredBy_split_literal root_7657413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657414 small_7657413_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657414
  · exact small_7657413_right_covered
#print axioms cover_7657413

def root_7657408 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657408_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657408_right_fuel : Nat := 1
def small_7657408_right_count : Nat := 1
def small_7657408_right_encoded : String := "00000000"
theorem small_7657408_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657408_right_root small_7657408_right_fuel small_7657408_right_count small_7657408_right_encoded = true := by
  decide +kernel
theorem small_7657408_right_covered : CoveredBy scale carrier boxes small_7657408_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657408_right_root small_7657408_right_fuel small_7657408_right_count small_7657408_right_encoded small_7657408_right_checked

theorem cover_7657408 : CoveredBy scale carrier boxes root_7657408 := by
  apply coveredBy_split_literal root_7657408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657413 small_7657408_right_root coord0 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657413
  · exact small_7657408_right_covered
#print axioms cover_7657408

def root_7657407 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657407_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657407_right_fuel : Nat := 23
def small_7657407_right_count : Nat := 253
def small_7657407_right_encoded : String := "128A7CF70000000007800104128A40FB0DE7CA020E5FD903000000010DE7CA060E5FD907000000030B4D43FE10804D0908C0010011FBE8F70640010412FF70FB0D412882000000080EFA4D030D4128860EFA1107000000030BF3E57E000000081008ED09000000040000000800000008000000010000000212FFACFB000000020D4128820EFA1103000000010D4128860EFA11070000000300000008000000080EFA4D030D4128860EFA1107000000030BF3E57E0000000A1008ED09000000040820010012465CF706E00104000000070000000A00000000000000070EFA4D070000000A00000003000000010000000011FC24F7000000000000000800000004108011090000000408C0010011FBE8F70640010412FF70FB0D4128820EFA110300000001000000080EFA4D030D4128860EFA110700000003000000070EFA4D070000000800000003000000010000000212FFACFB000000020D4128820EFA1103000000010D4128860EFA1107000000030AA6A27E0000000800000005000000050EFA4D030D4128860EFA1107000000030000000500000005000000010000000011FC24F7000000000640010400000008000000050E6015070B4D43FE10804D0908C0010011FBE8F70640010412FF70FB000000080000000212FFACFB000000020000000A000000000000000800000004108011090000000408C0010011FBE8F70640010412FF70FB0000000800000002000000050000000000000005000000030E6015030DE7CA060E5FD907000000030B4D43FE10804D0908C0010011FBE8F70640010412FF70FB0DAED8830000000A0E9661020D4128860EFA1107000000030BF3E57E0000000A1008ED09000000040820010012465CF705A00104000000070000000700000000000000070000000A000000010000000212FFACFB000000020000000A0000000011FC24F7000000000000000A00000004108011090000000408C0010011FBE8F70640010412FF70FB0DAED8830E962502000000010D4128860EFA11070000000300000007000000050E9661020D4128860EFA110700000003000000070EFA4D070AA6A27E10EDAD09082001000000000A0000000500000004000000050000000300000001000000020000000500000000000000050E6015070B4D43FE0000000A00000005000000030000000100000002128A7CFB000000020DE7CA020E5FD903000000010DE7CA060E5FD907000000030B4D43FE10804D0908C0010011FBE8F708C0010411FBE8FB0D4128820EFA1103000000010D4128860EFA1107000000030BF3E57E0000000A1008ED0900000004000000050EFA4D070000000A000000030EFA4D030000000A000000010000000200000005000000000000000500000004000000050000000500000005"
theorem small_7657407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657407_right_root small_7657407_right_fuel small_7657407_right_count small_7657407_right_encoded = true := by
  decide +kernel
theorem small_7657407_right_covered : CoveredBy scale carrier boxes small_7657407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657407_right_root small_7657407_right_fuel small_7657407_right_count small_7657407_right_encoded small_7657407_right_checked

theorem cover_7657407 : CoveredBy scale carrier boxes root_7657407 := by
  apply coveredBy_split_literal root_7657407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657408 small_7657407_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657408
  · exact small_7657407_right_covered
#print axioms cover_7657407

def root_7657401 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657401_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7657401_left_fuel : Nat := 1
def small_7657401_left_count : Nat := 1
def small_7657401_left_encoded : String := "00000004"
theorem small_7657401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7657401_left_root small_7657401_left_fuel small_7657401_left_count small_7657401_left_encoded = true := by
  decide +kernel
theorem small_7657401_left_covered : CoveredBy scale carrier boxes small_7657401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7657401_left_root small_7657401_left_fuel small_7657401_left_count small_7657401_left_encoded small_7657401_left_checked

theorem cover_7657401 : CoveredBy scale carrier boxes root_7657401 := by
  apply coveredBy_split_literal root_7657401 small_7657401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657407 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_7657401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657407
#print axioms cover_7657401

def root_7656861 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7656861_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7656861_left_fuel : Nat := 25
def small_7656861_left_count : Nat := 247
def small_7656861_left_encoded : String := "0F878D0907800100128A40F707800104128A40FB0DE7CA020E5FD903000000010DE7CA060E5FD907000000030DE7C9FE0E601509064001000000000512FFACF70000000006400104000000050000000A000000040E5FD909000000040640010012FF70F7064001040000000512FFACFB000000020D4128820EFA1103000000010D412886000000050EFA4D070D41287E000000050EFA11090000000405A0010000000005133170F7000000000000000A000000030EFA4D030D4128860EFA110700000003000000060EFA4D070000000A00000003000000010000000012FFACF7000000000640010412FF70FB0D4128820EFA1103000000010D412886000000050EFA4D0700000008000000030EFA4D030D4128860EFA1107000000030D41287E000000050EFA11090000000406E001000000000512C820F7000000000000000A0EFA4D070000000A00000003000000010000000212FFACFB000000020D4128820EFA1103000000010D4128860EFA1107000000030D41287E0000000A0EFA11090000000406E0010012C7E4F706E0010400000005000000060000000012C820F700000000000000080EFA4D070000000A000000030EFA4D030000000A000000010E6015070DE7C9FE0000000A0E5FD909000000040640010012FF70F70640010412FF70FB0DAED8870000000A0E96610600000005000000030000000212FFACFB000000020000000A0000000012FFACF7000000000000000A000000030E6015030DE7CA060E5FD907000000030DE7C9FE0000000A0E5FD909000000040640010012FF70F70640010412FF70FB0DAED8830000000A0E96610200000005000000010000000212FFACFB000000020000000A0000000012FFACF7000000000000000A0E6015070000000A000000030000000100000002128A7CFB000000020DE7CA020E5FD903000000010DE7CA060E5FD907000000030DE7C9FE0000000A0E5FD909000000040640010012FF70F708C0010411FBE8FB0D4128820EFA1103000000010D41288600000006000000060000000600000002000000060000000012FFACF70000000008C001040000000A000000060E6015070000000A000000030E6015030000000A0000000100000000128A7CF70000000007800104128A40FB0DE7CA020E5FD903000000010DE7CA060E5FD907000000030DE7C9FE0000000A0E5FD9090000000408C0010011FBE8F70640010412FF70FB0D412882000000080EFA4D030000000A000000010000000212FFACFB000000020000000A00000000000000080E6015070000000A000000030E6015030000000A0000000100000002128A7CFB000000020DE7CA020E5FD903000000010000000A0000000A00000004"
theorem small_7656861_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7656861_left_root small_7656861_left_fuel small_7656861_left_count small_7656861_left_encoded = true := by
  decide +kernel
theorem small_7656861_left_covered : CoveredBy scale carrier boxes small_7656861_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7656861_left_root small_7656861_left_fuel small_7656861_left_count small_7656861_left_encoded small_7656861_left_checked

theorem cover_7656861 : CoveredBy scale carrier boxes root_7656861 := by
  apply coveredBy_split_literal root_7656861 small_7656861_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7657401 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7656861_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7657401
#print axioms cover_7656861

def root_7656856 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7656856_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7656856_right_fuel : Nat := 1
def small_7656856_right_count : Nat := 1
def small_7656856_right_encoded : String := "00000003"
theorem small_7656856_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7656856_right_root small_7656856_right_fuel small_7656856_right_count small_7656856_right_encoded = true := by
  decide +kernel
theorem small_7656856_right_covered : CoveredBy scale carrier boxes small_7656856_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7656856_right_root small_7656856_right_fuel small_7656856_right_count small_7656856_right_encoded small_7656856_right_checked

theorem cover_7656856 : CoveredBy scale carrier boxes root_7656856 := by
  apply coveredBy_split_literal root_7656856 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7656861 small_7656856_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7656861
  · exact small_7656856_right_covered
#print axioms cover_7656856

def root_7654620 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7654620 : CoveredBy scale carrier boxes root_7654620 := by
  apply coveredBy_split_literal root_7654620 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2876.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7656856 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2876.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7656856
#print axioms cover_7654620

def root_7654615 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7654615_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7654615_right_fuel : Nat := 1
def small_7654615_right_count : Nat := 1
def small_7654615_right_encoded : String := "00000001"
theorem small_7654615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7654615_right_root small_7654615_right_fuel small_7654615_right_count small_7654615_right_encoded = true := by
  decide +kernel
theorem small_7654615_right_covered : CoveredBy scale carrier boxes small_7654615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7654615_right_root small_7654615_right_fuel small_7654615_right_count small_7654615_right_encoded small_7654615_right_checked

theorem cover_7654615 : CoveredBy scale carrier boxes root_7654615 := by
  apply coveredBy_split_literal root_7654615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7654620 small_7654615_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7654620
  · exact small_7654615_right_covered
#print axioms cover_7654615

def root_7650917 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7650917 : CoveredBy scale carrier boxes root_7650917 := by
  apply coveredBy_split_literal root_7650917 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7650918 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7654615 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7650918
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7654615
#print axioms cover_7650917

def root_7650911 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650911_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650911_left_fuel : Nat := 1
def small_7650911_left_count : Nat := 1
def small_7650911_left_encoded : String := "00000004"
theorem small_7650911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7650911_left_root small_7650911_left_fuel small_7650911_left_count small_7650911_left_encoded = true := by
  decide +kernel
theorem small_7650911_left_covered : CoveredBy scale carrier boxes small_7650911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7650911_left_root small_7650911_left_fuel small_7650911_left_count small_7650911_left_encoded small_7650911_left_checked

theorem cover_7650911 : CoveredBy scale carrier boxes root_7650911 := by
  apply coveredBy_split_literal root_7650911 small_7650911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7650917 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7650911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7650917
#print axioms cover_7650911

def root_7650581 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650581_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650581_left_fuel : Nat := 17
def small_7650581_left_count : Nat := 149
def small_7650581_left_encoded : String := "0F34D0FE0C9A87020F875103000000010C9A87060F8751070000000307800100128A40F70000000500000000128A7CF70000000007800104128A40FB0000000500000002128A7CFB000000020AD3578910D100FE0B4D4402000000050000000A0000000410D13CFE000000040B4D440210801103000000010B4D4406108011070000000308C0010000000005000000080000000810804D030B4D440610801107000000030000000610804D070000000A00000003000000010F878D0707800100128A40F70780010400000005128A7CFB000000020AD3578910D100FE0000000A0000000410D13CFE000000040B4D440210801103000000010DE7CA06000000050E6015070000000A0000000310804D030000000A0000000100000000128A7CF70000000007800104128A40FB0AD3578910D100FE0000000A0000000410D13CFE000000040B4D44020000000810804D030000000A0000000100000002128A7CFB000000020000000A000000030F878D030C9A87060F8751070000000307800100128A40F70780010400000005128A7CFB000000020AD3578910D100FE0000000A0000000410D13CFE000000040DE7CA020E5FD90300000001000000060000000600000000128A7CF70000000007800104128A40FB0AD3578910D100FE0000000A0000000410D13CFE000000040DE7CA020E5FD903000000010B4D44060000000510804D070000000A000000030E6015030000000A0000000100000002128A7CFB000000020000000A0F878D0707800100128A40F7078001040000000A0000000A000000000000000A000000030000000100000004"
theorem small_7650581_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7650581_left_root small_7650581_left_fuel small_7650581_left_count small_7650581_left_encoded = true := by
  decide +kernel
theorem small_7650581_left_covered : CoveredBy scale carrier boxes small_7650581_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7650581_left_root small_7650581_left_fuel small_7650581_left_count small_7650581_left_encoded small_7650581_left_checked

theorem cover_7650581 : CoveredBy scale carrier boxes root_7650581 := by
  apply coveredBy_split_literal root_7650581 small_7650581_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7650911 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7650581_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7650911
#print axioms cover_7650581

def root_7650576 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650576_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7650576_right_fuel : Nat := 1
def small_7650576_right_count : Nat := 1
def small_7650576_right_encoded : String := "00000003"
theorem small_7650576_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7650576_right_root small_7650576_right_fuel small_7650576_right_count small_7650576_right_encoded = true := by
  decide +kernel
theorem small_7650576_right_covered : CoveredBy scale carrier boxes small_7650576_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7650576_right_root small_7650576_right_fuel small_7650576_right_count small_7650576_right_encoded small_7650576_right_checked

theorem cover_7650576 : CoveredBy scale carrier boxes root_7650576 := by
  apply coveredBy_split_literal root_7650576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.root_7650581 small_7650576_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525.cover_7650581
  · exact small_7650576_right_covered
#print axioms cover_7650576

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0525
