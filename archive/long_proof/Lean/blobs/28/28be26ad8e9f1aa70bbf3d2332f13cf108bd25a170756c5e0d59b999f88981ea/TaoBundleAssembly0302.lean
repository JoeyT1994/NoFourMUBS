import TaoBundleChunkBatch0391
import TaoBundleChunkBatch0392
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302
def root_4169816 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169816_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169816_left_fuel : Nat := 24
def small_4169816_left_count : Nat := 175
def small_4169816_left_encoded : String := "10804D010DE7CA02000000050E6014F9000000010B4D43FA0000000510801105000000020DE7CA06000000050E6014FD000000030115234913F85908000000040DAED8790E9661020DAED87D0E96610600000005000000030E962506000000030BF3E576000000051008ED01000000000AA6A27A0000000510ED710500000002008A922913FDF908000000040E0776B90E41390200000005000000010E40FD02000000010D563A3D0EE78D0600000005000000030EE75106000000030000000900000009000000010E962502000000010DAED87D0E9661060BF3E576000000051008ED01000000000AA6A27A0000000510ED71050000000200000006000000030E962506000000030BF3E576100929010AA6A27A0000000500000006000000001008ED01000000000AA6A27A10EDAD05008A922913FDF908000000040D563A390EE78D0200000005000000010EE75102000000010D563A3D0EE78D0600000005000000030EE75106000000030000000A13FE35080D563A390EE78D0200000005000000010EE75102000000010D563A3D0EE78D06000000050000000300000006000000040000000210ED710500000002008A922913FDF908000000040D563A390EE78D020D563A3D0EE78D0600000006000000030000000600000001000000060000000613F895080DAED8790E9661020DAED87D0E96610600000005000000030E962506000000030BF3E576000000051008ED01000000000AA6A27A0000000500000009000000010E962502000000010DAED87D0E9661060BF3E576000000051008ED01000000000AA6A27A0000000500000006000000030E962506000000030BF3E5761009290100000006000000001008ED01000000000AA6A27A10EDAD05019FB46913EEF908000000040D563A390EE78D0200000005000000010EE7510200000001000000060000000600000002000000060000000400000000"
theorem small_4169816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169816_left_root small_4169816_left_fuel small_4169816_left_count small_4169816_left_encoded = true := by
  decide +kernel
theorem small_4169816_left_covered : CoveredBy scale carrier boxes small_4169816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169816_left_root small_4169816_left_fuel small_4169816_left_count small_4169816_left_encoded small_4169816_left_checked

theorem cover_4169816 : CoveredBy scale carrier boxes root_4169816 := by
  apply coveredBy_split_literal root_4169816 small_4169816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1562.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_4169816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1562.covered
#print axioms cover_4169816

def root_4169810 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169810_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169810_left_fuel : Nat := 1
def small_4169810_left_count : Nat := 1
def small_4169810_left_encoded : String := "00000004"
theorem small_4169810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169810_left_root small_4169810_left_fuel small_4169810_left_count small_4169810_left_encoded = true := by
  decide +kernel
theorem small_4169810_left_covered : CoveredBy scale carrier boxes small_4169810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169810_left_root small_4169810_left_fuel small_4169810_left_count small_4169810_left_encoded small_4169810_left_checked

theorem cover_4169810 : CoveredBy scale carrier boxes root_4169810 := by
  apply coveredBy_split_literal root_4169810 small_4169810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169816 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4169810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169816
#print axioms cover_4169810

def root_4169809 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169809_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169809_right_fuel : Nat := 20
def small_4169809_right_count : Nat := 177
def small_4169809_right_encoded : String := "13E201080B4D43F610804D010DE7CA020E5FD8F900000005000000010E6014F9000000010B4D43FA10804D050DE7CA06000000050E6014FD00000003033F67C90000000513BC310800000005000000040000000210801105000000020DE7CA060E5FD8FD00000005000000030E6014FD00000003033F67C913BBF508000000040DAED8790E96610200000009000000010E9625020000000100000006000000090000000010801101000000000DE7CA020E5FD8F90B4D43FA10804D05000000050000000210801105000000020DE7CA060E5FD8FD00000005000000030E6014FD00000003033F67C913BBF508000000040DAED87D000000090E962506000000030000000900000009000000010E6014F9000000010B4D43FA10804D050DE7CA06000000070E6014FD00000003033F67C913BBF508000000040DAED8790E9661020DAED87D000000070E9625060000000300000008000000010E962502000000010DAED87D0000000700000007000000070000000210801105000000020DE7CA060E5FD8FD033F67C913BBF508000000040DAED879000000070E962502000000010000000700000007000000030E6014FD00000003033F67C913BBF508000000040DAED8790E9661020DAED87D0E9661060AA6A27610EDAD01000000090000000010ED7101000000000AA6A27A0000000710ED71050000000200000007000000030E962506000000030AA6A27610EDAD01000000090000000000000008000000010E962502000000010DAED87D0E9661060AA6A27610EDAD01000000060000000010ED71010000000000000007000000030E962506000000030AA6A27610EDAD010AA6A27A10EDAD05000000060000000200000006000000000000000813BC31080DAED8790E9661020DAED87D000000090E9625060000000300000008000000010E962502000000010DAED87D0E9661060000000600000003000000060000000400000004"
theorem small_4169809_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169809_right_root small_4169809_right_fuel small_4169809_right_count small_4169809_right_encoded = true := by
  decide +kernel
theorem small_4169809_right_covered : CoveredBy scale carrier boxes small_4169809_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169809_right_root small_4169809_right_fuel small_4169809_right_count small_4169809_right_encoded small_4169809_right_checked

theorem cover_4169809 : CoveredBy scale carrier boxes root_4169809 := by
  apply coveredBy_split_literal root_4169809 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169810 small_4169809_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169810
  · exact small_4169809_right_covered
#print axioms cover_4169809

def root_4169803 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169803_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169803_left_fuel : Nat := 1
def small_4169803_left_count : Nat := 1
def small_4169803_left_encoded : String := "00000003"
theorem small_4169803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169803_left_root small_4169803_left_fuel small_4169803_left_count small_4169803_left_encoded = true := by
  decide +kernel
theorem small_4169803_left_covered : CoveredBy scale carrier boxes small_4169803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169803_left_root small_4169803_left_fuel small_4169803_left_count small_4169803_left_encoded small_4169803_left_checked

theorem cover_4169803 : CoveredBy scale carrier boxes root_4169803 := by
  apply coveredBy_split_literal root_4169803 small_4169803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169809 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_4169803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169809
#print axioms cover_4169803

def root_4169795 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169795_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169795_left_fuel : Nat := 2
def small_4169795_left_count : Nat := 3
def small_4169795_left_encoded : String := "0F8750FD0000000500000003"
theorem small_4169795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169795_left_root small_4169795_left_fuel small_4169795_left_count small_4169795_left_encoded = true := by
  decide +kernel
theorem small_4169795_left_covered : CoveredBy scale carrier boxes small_4169795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169795_left_root small_4169795_left_fuel small_4169795_left_count small_4169795_left_encoded small_4169795_left_checked

theorem cover_4169795 : CoveredBy scale carrier boxes root_4169795 := by
  apply coveredBy_split_literal root_4169795 small_4169795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169803 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169803
#print axioms cover_4169795

def root_4169789 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169789_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169789_left_fuel : Nat := 1
def small_4169789_left_count : Nat := 1
def small_4169789_left_encoded : String := "00000002"
theorem small_4169789_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169789_left_root small_4169789_left_fuel small_4169789_left_count small_4169789_left_encoded = true := by
  decide +kernel
theorem small_4169789_left_covered : CoveredBy scale carrier boxes small_4169789_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169789_left_root small_4169789_left_fuel small_4169789_left_count small_4169789_left_encoded small_4169789_left_checked

theorem cover_4169789 : CoveredBy scale carrier boxes root_4169789 := by
  apply coveredBy_split_literal root_4169789 small_4169789_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169795 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4169789_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169795
#print axioms cover_4169789

def root_4169755 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169755_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169755_left_fuel : Nat := 9
def small_4169755_left_count : Nat := 17
def small_4169755_left_encoded : String := "0F878D050C9A8706000000050F878CFD00000003022A45890000000513E201080B4D43F60000000510801101000000000DE7CA0200000005000000070000000400000002"
theorem small_4169755_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169755_left_root small_4169755_left_fuel small_4169755_left_count small_4169755_left_encoded = true := by
  decide +kernel
theorem small_4169755_left_covered : CoveredBy scale carrier boxes small_4169755_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169755_left_root small_4169755_left_fuel small_4169755_left_count small_4169755_left_encoded small_4169755_left_checked

theorem cover_4169755 : CoveredBy scale carrier boxes root_4169755 := by
  apply coveredBy_split_literal root_4169755 small_4169755_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169789 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169755_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169789
#print axioms cover_4169755

def root_4169749 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169749_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169749_left_fuel : Nat := 1
def small_4169749_left_count : Nat := 1
def small_4169749_left_encoded : String := "00000001"
theorem small_4169749_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169749_left_root small_4169749_left_fuel small_4169749_left_count small_4169749_left_encoded = true := by
  decide +kernel
theorem small_4169749_left_covered : CoveredBy scale carrier boxes small_4169749_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169749_left_root small_4169749_left_fuel small_4169749_left_count small_4169749_left_encoded small_4169749_left_checked

theorem cover_4169749 : CoveredBy scale carrier boxes root_4169749 := by
  apply coveredBy_split_literal root_4169749 small_4169749_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169755 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_4169749_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169755
#print axioms cover_4169749

def root_4169741 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169741_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169741_left_fuel : Nat := 2
def small_4169741_left_count : Nat := 3
def small_4169741_left_encoded : String := "0F8750F90000000500000001"
theorem small_4169741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169741_left_root small_4169741_left_fuel small_4169741_left_count small_4169741_left_encoded = true := by
  decide +kernel
theorem small_4169741_left_covered : CoveredBy scale carrier boxes small_4169741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169741_left_root small_4169741_left_fuel small_4169741_left_count small_4169741_left_encoded small_4169741_left_checked

theorem cover_4169741 : CoveredBy scale carrier boxes root_4169741 := by
  apply coveredBy_split_literal root_4169741 small_4169741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169749 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169749
#print axioms cover_4169741

def root_4169735 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169735_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169735_left_fuel : Nat := 1
def small_4169735_left_count : Nat := 1
def small_4169735_left_encoded : String := "00000000"
theorem small_4169735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169735_left_root small_4169735_left_fuel small_4169735_left_count small_4169735_left_encoded = true := by
  decide +kernel
theorem small_4169735_left_covered : CoveredBy scale carrier boxes small_4169735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169735_left_root small_4169735_left_fuel small_4169735_left_count small_4169735_left_encoded small_4169735_left_checked

theorem cover_4169735 : CoveredBy scale carrier boxes root_4169735 := by
  apply coveredBy_split_literal root_4169735 small_4169735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169741 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4169735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169741
#print axioms cover_4169735

def root_4169669 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169669_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169669_left_fuel : Nat := 17
def small_4169669_left_count : Nat := 33
def small_4169669_left_encoded : String := "0F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003022A45890000000513E201080DE7C9F6000000050E5FD901000000000DE7CA02000000050E6014F9000000010B4D43FA0000000510801105000000020DE7CA0600000005000000090000000400000000"
theorem small_4169669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169669_left_root small_4169669_left_fuel small_4169669_left_count small_4169669_left_encoded = true := by
  decide +kernel
theorem small_4169669_left_covered : CoveredBy scale carrier boxes small_4169669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169669_left_root small_4169669_left_fuel small_4169669_left_count small_4169669_left_encoded small_4169669_left_checked

theorem cover_4169669 : CoveredBy scale carrier boxes root_4169669 := by
  apply coveredBy_split_literal root_4169669 small_4169669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169735 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169735
#print axioms cover_4169669

def root_4169663 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169663_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169663_left_fuel : Nat := 1
def small_4169663_left_count : Nat := 1
def small_4169663_left_encoded : String := "00000004"
theorem small_4169663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169663_left_root small_4169663_left_fuel small_4169663_left_count small_4169663_left_encoded = true := by
  decide +kernel
theorem small_4169663_left_covered : CoveredBy scale carrier boxes small_4169663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169663_left_root small_4169663_left_fuel small_4169663_left_count small_4169663_left_encoded small_4169663_left_checked

theorem cover_4169663 : CoveredBy scale carrier boxes root_4169663 := by
  apply coveredBy_split_literal root_4169663 small_4169663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169669 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4169663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169669
#print axioms cover_4169663

def root_4169662 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169662_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169662_right_fuel : Nat := 23
def small_4169662_right_count : Nat := 131
def small_4169662_right_encoded : String := "1386AD080C9A86F60F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003067ECE8912EA5908000000040DE7C9F6000000050E5FD901000000000DE7CA02000000050E6014F9000000010000000900000009000000000F875101000000000C9A87020F8750F90C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003067ECE890000000500000009000000010F878CF9000000010C9A86FA0F878D050C9A8706000000050F878CFD00000003067ECE8912EA5908000000040B4D43F6000000050000000700000007000000020F875105000000020C9A87060F8750FD067ECE890000000500000007000000030F878CFD00000003067ECE8912EA5908000000040B4D43F610804D010DE7CA020E5FD8F900000009000000010E6014F9000000010B4D43FA10804D050DE7CA060000000500000009000000021080110500000002000000090000000010801101000000000DE7CA020E5FD8F90B4D43FA10804D050000000700000002108011050000000200000009000000010E6014F9000000010B4D43FA0000000710801105000000020DE7CA06000000060E6014FD000000030569AC491340D508000000040DAED87900000007000000060000000612EA95080B4D43F610804D0100000009000000001080110100000000000000070000000400000004"
theorem small_4169662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169662_right_root small_4169662_right_fuel small_4169662_right_count small_4169662_right_encoded = true := by
  decide +kernel
theorem small_4169662_right_covered : CoveredBy scale carrier boxes small_4169662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169662_right_root small_4169662_right_fuel small_4169662_right_count small_4169662_right_encoded small_4169662_right_checked

theorem cover_4169662 : CoveredBy scale carrier boxes root_4169662 := by
  apply coveredBy_split_literal root_4169662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169663 small_4169662_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169663
  · exact small_4169662_right_covered
#print axioms cover_4169662

def root_4169657 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169657_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169657_right_fuel : Nat := 1
def small_4169657_right_count : Nat := 1
def small_4169657_right_encoded : String := "00000003"
theorem small_4169657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169657_right_root small_4169657_right_fuel small_4169657_right_count small_4169657_right_encoded = true := by
  decide +kernel
theorem small_4169657_right_covered : CoveredBy scale carrier boxes small_4169657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169657_right_root small_4169657_right_fuel small_4169657_right_count small_4169657_right_encoded small_4169657_right_checked

theorem cover_4169657 : CoveredBy scale carrier boxes root_4169657 := by
  apply coveredBy_split_literal root_4169657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169662 small_4169657_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169662
  · exact small_4169657_right_covered
#print axioms cover_4169657

def root_4169656 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169656 : CoveredBy scale carrier boxes root_4169656 := by
  apply coveredBy_split_literal root_4169656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169657 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1563.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169657
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1563.covered
#print axioms cover_4169656

def root_4169650 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169650_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169650_left_fuel : Nat := 1
def small_4169650_left_count : Nat := 1
def small_4169650_left_encoded : String := "00000002"
theorem small_4169650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169650_left_root small_4169650_left_fuel small_4169650_left_count small_4169650_left_encoded = true := by
  decide +kernel
theorem small_4169650_left_covered : CoveredBy scale carrier boxes small_4169650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169650_left_root small_4169650_left_fuel small_4169650_left_count small_4169650_left_encoded small_4169650_left_checked

theorem cover_4169650 : CoveredBy scale carrier boxes root_4169650 := by
  apply coveredBy_split_literal root_4169650 small_4169650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169656 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4169650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169656
#print axioms cover_4169650

def root_4169590 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169590_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169590_left_fuel : Nat := 10
def small_4169590_left_count : Nat := 27
def small_4169590_left_encoded : String := "0F34D0FA0CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A86F6000000050F875101000000000C9A8702000000050F878CF900000001000000081386AD080C9A86F6000000050F87510100000000000000080000000400000002"
theorem small_4169590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169590_left_root small_4169590_left_fuel small_4169590_left_count small_4169590_left_encoded = true := by
  decide +kernel
theorem small_4169590_left_covered : CoveredBy scale carrier boxes small_4169590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169590_left_root small_4169590_left_fuel small_4169590_left_count small_4169590_left_encoded small_4169590_left_checked

theorem cover_4169590 : CoveredBy scale carrier boxes root_4169590 := by
  apply coveredBy_split_literal root_4169590 small_4169590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169650 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4169590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169650
#print axioms cover_4169590

def root_4169585 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169585_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169585_right_fuel : Nat := 1
def small_4169585_right_count : Nat := 1
def small_4169585_right_encoded : String := "00000001"
theorem small_4169585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169585_right_root small_4169585_right_fuel small_4169585_right_count small_4169585_right_encoded = true := by
  decide +kernel
theorem small_4169585_right_covered : CoveredBy scale carrier boxes small_4169585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169585_right_root small_4169585_right_fuel small_4169585_right_count small_4169585_right_encoded small_4169585_right_checked

theorem cover_4169585 : CoveredBy scale carrier boxes root_4169585 := by
  apply coveredBy_split_literal root_4169585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169590 small_4169585_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169590
  · exact small_4169585_right_covered
#print axioms cover_4169585

def root_4177020 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4177020 : CoveredBy scale carrier boxes root_4177020 := by
  apply coveredBy_split_literal root_4177020 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1564.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1565.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1564.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1565.covered
#print axioms cover_4177020

def root_4177014 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4177014_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4177014_left_fuel : Nat := 1
def small_4177014_left_count : Nat := 1
def small_4177014_left_encoded : String := "00000002"
theorem small_4177014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4177014_left_root small_4177014_left_fuel small_4177014_left_count small_4177014_left_encoded = true := by
  decide +kernel
theorem small_4177014_left_covered : CoveredBy scale carrier boxes small_4177014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4177014_left_root small_4177014_left_fuel small_4177014_left_count small_4177014_left_encoded small_4177014_left_checked

theorem cover_4177014 : CoveredBy scale carrier boxes root_4177014 := by
  apply coveredBy_split_literal root_4177014 small_4177014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4177020 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4177014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4177020
#print axioms cover_4177014

def root_4176708 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176708_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176708_left_fuel : Nat := 17
def small_4176708_left_count : Nat := 141
def small_4176708_left_encoded : String := "0F34D0FA0CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000050F875101000000000C9A8706000000050F878CFD000000030AD3577910D13D02000000050000000110D1010200000001000000071386AD080C9A86F6000000050F875101000000000000000700000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D010AD3577910D13D02000000050000000110D10102000000010AD3578510D100FA000000050000000210D13CFA000000020AD3577D10D13D06000000050000000310D10106000000030000000A000000000F875101000000000AD3577910D13D020AD357850000000810D13CFA000000020AD3577D10D13D06022A4589000000080000000800000003000000080000000110D10102000000010AD357850000000810D13CFA000000020AD3577D10D13D06022A458913E1C508000000040B4D43F60000000A000000080000000700000003000000081386AD080C9A86F60F878D010AD3577910D13D020AD3578510D100FA000000050000000210D13CFA000000020AD3577D10D13D06000000050000000310D1010600000003000000080000000110D10102000000010AD3578510D100FA0AD3577D00000005000000070000000210D13CFA000000020AD3577D10D13D06067ECE8912EA59080000000400000007000000070000000310D1010600000003067ECE890000000800000008000000000F875101000000000AD3577910D13D020000000800000001000000080000000400000002"
theorem small_4176708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4176708_left_root small_4176708_left_fuel small_4176708_left_count small_4176708_left_encoded = true := by
  decide +kernel
theorem small_4176708_left_covered : CoveredBy scale carrier boxes small_4176708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4176708_left_root small_4176708_left_fuel small_4176708_left_count small_4176708_left_encoded small_4176708_left_checked

theorem cover_4176708 : CoveredBy scale carrier boxes root_4176708 := by
  apply coveredBy_split_literal root_4176708 small_4176708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4177014 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4176708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4177014
#print axioms cover_4176708

def root_4176702 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176702_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176702_left_fuel : Nat := 1
def small_4176702_left_count : Nat := 1
def small_4176702_left_encoded : String := "00000001"
theorem small_4176702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4176702_left_root small_4176702_left_fuel small_4176702_left_count small_4176702_left_encoded = true := by
  decide +kernel
theorem small_4176702_left_covered : CoveredBy scale carrier boxes small_4176702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4176702_left_root small_4176702_left_fuel small_4176702_left_count small_4176702_left_encoded small_4176702_left_checked

theorem cover_4176702 : CoveredBy scale carrier boxes root_4176702 := by
  apply coveredBy_split_literal root_4176702 small_4176702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4176708 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4176702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4176708
#print axioms cover_4176702

def root_4169584 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169584 : CoveredBy scale carrier boxes root_4169584 := by
  apply coveredBy_split_literal root_4169584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4176702 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169585
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4176702
#print axioms cover_4169584

def root_4169578 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169578_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169578_left_fuel : Nat := 1
def small_4169578_left_count : Nat := 1
def small_4169578_left_encoded : String := "00000000"
theorem small_4169578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169578_left_root small_4169578_left_fuel small_4169578_left_count small_4169578_left_encoded = true := by
  decide +kernel
theorem small_4169578_left_covered : CoveredBy scale carrier boxes small_4169578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169578_left_root small_4169578_left_fuel small_4169578_left_count small_4169578_left_encoded small_4169578_left_checked

theorem cover_4169578 : CoveredBy scale carrier boxes root_4169578 := by
  apply coveredBy_split_literal root_4169578 small_4169578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169584 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4169578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169584
#print axioms cover_4169578

def root_4169164 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169164_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169164_left_fuel : Nat := 21
def small_4169164_left_count : Nat := 189
def small_4169164_left_encoded : String := "0F34D0F60CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020AD357810000000910D13CF6000000000AD3577D10D13D06000000050000000310D1010600000003000000091386AD080C9A8702000000050F878CF9000000010C9A86FA000000050000000900000004000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003000000061386AD080C9A86FA000000050F875105000000020000000600000004000000030F34D1060000000304548A0913867108000000040C9A86FA0F878D050AD3578110D100F6000000050000000010D13CF6000000000AD3577910D13D02000000050000000110D10102000000010AD3577D10D13D06000000050000000310D10106000000030000000A000000020F875105000000020AD3578110D100F60AD3577910D13D020000000600000001000000060000000010D13CF6000000000AD3577910D13D020AD3577D10D13D06022A458900000006000000060000000310D1010600000003022A458913E1C508000000040B4D43FA0000000A00000006000000060000000110D1010200000001000000061386AD080C9A86FA0F878D050AD3578110D100F60AD357790000000510D1010200000001000000060000000010D13CF6000000000AD3577910D13D020AD3577D10D13D06000000050000000310D1010600000003067ECE8912EA59080000000400000009000000090000000110D10102000000010AD3577D10D13D06000000060000000310D1010600000003067ECE890000000600000006000000020F875105000000020AD357810000000610D13CF6000000000AD3577910D13D020000000900000001000000060000000400000000"
theorem small_4169164_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169164_left_root small_4169164_left_fuel small_4169164_left_count small_4169164_left_encoded = true := by
  decide +kernel
theorem small_4169164_left_covered : CoveredBy scale carrier boxes small_4169164_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169164_left_root small_4169164_left_fuel small_4169164_left_count small_4169164_left_encoded small_4169164_left_checked

theorem cover_4169164 : CoveredBy scale carrier boxes root_4169164 := by
  apply coveredBy_split_literal root_4169164 small_4169164_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169578 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4169164_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169578
#print axioms cover_4169164

def root_4169158 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169158_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169158_left_fuel : Nat := 1
def small_4169158_left_count : Nat := 1
def small_4169158_left_encoded : String := "00000004"
theorem small_4169158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169158_left_root small_4169158_left_fuel small_4169158_left_count small_4169158_left_encoded = true := by
  decide +kernel
theorem small_4169158_left_covered : CoveredBy scale carrier boxes small_4169158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169158_left_root small_4169158_left_fuel small_4169158_left_count small_4169158_left_encoded small_4169158_left_checked

theorem cover_4169158 : CoveredBy scale carrier boxes root_4169158 := by
  apply coveredBy_split_literal root_4169158 small_4169158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169164 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4169158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169164
#print axioms cover_4169158

def root_4169157 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169157_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169157_right_fuel : Nat := 22
def small_4169157_right_count : Nat := 281
def small_4169157_right_encoded : String := "12073D080CFD9C010F34D0F60CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000300000009000000010F34D102000000010CFD9C050F34D0FA0CFD9BFD000000050F34D106000000030CFD9C09000000050F350D080000000500000004000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86FA00000005000000060F350D080000000600000004000000030F34D106000000030CFD9C090F34D108000000040C9A86FA0F878D050AD357810000000910D13CF6000000000AD357790000000900000009000000020F875105000000020000000600000009000000000F350CF6000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D108000000040C9A86F600000005000000080F350D080000000800000004000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F8751050000000200000009000000000F875101000000000C9A87020F8750F90C9A86FA000000050F8751050000000200000009000000010F878CF9000000010C9A86FA000000070F875105000000020C9A8706000000070F878CFD000000030AD3578910D101080000000400000007000000070F350D080C9A86F60F878D0100000009000000000F875101000000000000000700000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010C9A8702000000090F878CF90000000100000009000000000F87510100000000000000080F350D080000000900000004000000010F34D102000000010CFD9C050F34D0FA0CFD9BFD000000070F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010AD357790000000710D101020000000100000007000000000F875101000000000000000700000007000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D0500000007000000020F8751050000000200000006000000000F875101000000000C9A86FA000000070F87510500000002000000060F350D080000000700000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D050AD3577910D13D020AD3577D10D13D060AD3578910D101080000000400000007000000070000000310D1010600000003000000080000000110D10102000000010AD3577D10D13D06000000060000000300000006000000020F875105000000020AD3577910D13D02000000060000000100000006000000000F875101000000000C9A86FA0F878D050AD357790000000800000008000000020F875105000000020AD3577910D13D020000000800000001000000060F350D080C9A86F60F878D010C9A86FA0000000900000006000000000F87510100000000000000080000000400000004"
theorem small_4169157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169157_right_root small_4169157_right_fuel small_4169157_right_count small_4169157_right_encoded = true := by
  decide +kernel
theorem small_4169157_right_covered : CoveredBy scale carrier boxes small_4169157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169157_right_root small_4169157_right_fuel small_4169157_right_count small_4169157_right_encoded small_4169157_right_checked

theorem cover_4169157 : CoveredBy scale carrier boxes root_4169157 := by
  apply coveredBy_split_literal root_4169157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169158 small_4169157_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169158
  · exact small_4169157_right_covered
#print axioms cover_4169157

def root_4169152 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169152_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169152_right_fuel : Nat := 1
def small_4169152_right_count : Nat := 1
def small_4169152_right_encoded : String := "00000003"
theorem small_4169152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169152_right_root small_4169152_right_fuel small_4169152_right_count small_4169152_right_encoded = true := by
  decide +kernel
theorem small_4169152_right_covered : CoveredBy scale carrier boxes small_4169152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169152_right_root small_4169152_right_fuel small_4169152_right_count small_4169152_right_encoded small_4169152_right_checked

theorem cover_4169152 : CoveredBy scale carrier boxes root_4169152 := by
  apply coveredBy_split_literal root_4169152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169157 small_4169152_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169157
  · exact small_4169152_right_covered
#print axioms cover_4169152

def root_4169151 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169151 : CoveredBy scale carrier boxes root_4169151 := by
  apply coveredBy_split_literal root_4169151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169152 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1566.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169152
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1566.covered
#print axioms cover_4169151

def root_4169145 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169145_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169145_left_fuel : Nat := 1
def small_4169145_left_count : Nat := 1
def small_4169145_left_encoded : String := "00000002"
theorem small_4169145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169145_left_root small_4169145_left_fuel small_4169145_left_count small_4169145_left_encoded = true := by
  decide +kernel
theorem small_4169145_left_covered : CoveredBy scale carrier boxes small_4169145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169145_left_root small_4169145_left_fuel small_4169145_left_count small_4169145_left_encoded small_4169145_left_checked

theorem cover_4169145 : CoveredBy scale carrier boxes root_4169145 := by
  apply coveredBy_split_literal root_4169145 small_4169145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169151 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4169145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169151
#print axioms cover_4169145

def root_4168883 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168883_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168883_left_fuel : Nat := 18
def small_4168883_left_count : Nat := 121
def small_4168883_left_encoded : String := "120700FA08A912FD12073D0608A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350D02000000050000000100000005000000000F350CF6000000000CFD9BF90F350D0204548A05138670FA000000050000000200000005000000010F34D1020000000104548A05138670FA0CFD9BFD0000000700000005000000021386ACFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A86F6000000050F87510100000000000000081386AD080C9A86F600000005000000080000000412073D080CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D10200000001000000070000000400000003120701060000000308A9130912070108000000040CFD9C010F34D0F60CFD9BF9000000050F34D1020000000104548A05000000051386ACFA00000002045489FD00000005138671060000000300000008000000000F350CF6000000000CFD9BF9000000080000000812073D080CFD9C010F34D0F60CFD9BF90F350D0200000005000000010F34D1020000000104548A05000000081386ACFA00000002045489FD1386AD060CFD9C0900000005000000080000000300000008000000000F350CF600000000000000080000000400000002"
theorem small_4168883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168883_left_root small_4168883_left_fuel small_4168883_left_count small_4168883_left_encoded = true := by
  decide +kernel
theorem small_4168883_left_covered : CoveredBy scale carrier boxes small_4168883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168883_left_root small_4168883_left_fuel small_4168883_left_count small_4168883_left_encoded small_4168883_left_checked

theorem cover_4168883 : CoveredBy scale carrier boxes root_4168883 := by
  apply coveredBy_split_literal root_4168883 small_4168883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4169145 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4168883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4169145
#print axioms cover_4168883

def root_4168878 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168878_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168878_right_fuel : Nat := 1
def small_4168878_right_count : Nat := 1
def small_4168878_right_encoded : String := "00000001"
theorem small_4168878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168878_right_root small_4168878_right_fuel small_4168878_right_count small_4168878_right_encoded = true := by
  decide +kernel
theorem small_4168878_right_covered : CoveredBy scale carrier boxes small_4168878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168878_right_root small_4168878_right_fuel small_4168878_right_count small_4168878_right_encoded small_4168878_right_checked

theorem cover_4168878 : CoveredBy scale carrier boxes root_4168878 := by
  apply coveredBy_split_literal root_4168878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4168883 small_4168878_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4168883
  · exact small_4168878_right_covered
#print axioms cover_4168878

def root_4168877 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4168877 : CoveredBy scale carrier boxes root_4168877 := by
  apply coveredBy_split_literal root_4168877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4168878 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1567.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4168878
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1567.covered
#print axioms cover_4168877

def root_4168871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168871_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168871_left_fuel : Nat := 1
def small_4168871_left_count : Nat := 1
def small_4168871_left_encoded : String := "00000000"
theorem small_4168871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168871_left_root small_4168871_left_fuel small_4168871_left_count small_4168871_left_encoded = true := by
  decide +kernel
theorem small_4168871_left_covered : CoveredBy scale carrier boxes small_4168871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168871_left_root small_4168871_left_fuel small_4168871_left_count small_4168871_left_encoded small_4168871_left_checked

theorem cover_4168871 : CoveredBy scale carrier boxes root_4168871 := by
  apply coveredBy_split_literal root_4168871 small_4168871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4168877 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4168871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4168877
#print axioms cover_4168871

def root_4167781 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4167781 : CoveredBy scale carrier boxes root_4167781 := by
  apply coveredBy_split_literal root_4167781 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1561.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4168871 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1561.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4168871
#print axioms cover_4167781

def root_4167776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167776_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167776_right_fuel : Nat := 1
def small_4167776_right_count : Nat := 1
def small_4167776_right_encoded : String := "00000004"
theorem small_4167776_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167776_right_root small_4167776_right_fuel small_4167776_right_count small_4167776_right_encoded = true := by
  decide +kernel
theorem small_4167776_right_covered : CoveredBy scale carrier boxes small_4167776_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167776_right_root small_4167776_right_fuel small_4167776_right_count small_4167776_right_encoded small_4167776_right_checked

theorem cover_4167776 : CoveredBy scale carrier boxes root_4167776 := by
  apply coveredBy_split_literal root_4167776 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4167781 small_4167776_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4167781
  · exact small_4167776_right_covered
#print axioms cover_4167776

def root_4167546 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167546_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167546_left_fuel : Nat := 17
def small_4167546_left_count : Nat := 109
def small_4167546_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073D0208A91305120700FA00000005000000020000000900000001120701020000000108A91305120700FA08A912FD0000000512070106000000030500010800000005135D810904548A010000000500000007000000040000000212073CFA0000000208A912FD00000006000000060000000012073CF60000000008A912F912073D0208A91305120700FA08A912FD000000071207010600000003000000080000000212073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9C010000000900000007135D81090CFD9C010F34D0F60CFD9BF9000000090F34D102000000010CFD9C050000000700000006000000000F350CF6000000000CFD9BF90F350D020CFD9C050000000700000009000000010F34D1020000000100000007000000040000000312070106000000030000000900000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A912FD12073D06000000070000000312070106000000030500010800000006135D81090CFD9C010F34D0F6045489F90000000800000006000000000000000800000004"
theorem small_4167546_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167546_left_root small_4167546_left_fuel small_4167546_left_count small_4167546_left_encoded = true := by
  decide +kernel
theorem small_4167546_left_covered : CoveredBy scale carrier boxes small_4167546_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167546_left_root small_4167546_left_fuel small_4167546_left_count small_4167546_left_encoded small_4167546_left_checked

theorem cover_4167546 : CoveredBy scale carrier boxes root_4167546 := by
  apply coveredBy_split_literal root_4167546 small_4167546_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4167776 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4167546_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4167776
#print axioms cover_4167546

def root_4167540 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167540_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167540_left_fuel : Nat := 1
def small_4167540_left_count : Nat := 1
def small_4167540_left_encoded : String := "00000003"
theorem small_4167540_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167540_left_root small_4167540_left_fuel small_4167540_left_count small_4167540_left_encoded = true := by
  decide +kernel
theorem small_4167540_left_covered : CoveredBy scale carrier boxes small_4167540_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167540_left_root small_4167540_left_fuel small_4167540_left_count small_4167540_left_encoded small_4167540_left_checked

theorem cover_4167540 : CoveredBy scale carrier boxes root_4167540 := by
  apply coveredBy_split_literal root_4167540 small_4167540_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.root_4167546 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4167540_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302.cover_4167546
#print axioms cover_4167540

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0302
