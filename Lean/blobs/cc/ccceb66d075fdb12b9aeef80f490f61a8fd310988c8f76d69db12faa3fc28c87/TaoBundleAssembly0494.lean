import TaoBundleAssembly0493
import TaoBundleChunkBatch0679
import TaoBundleChunkBatch0680
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494
def root_7207352 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7207352_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7207352_left_fuel : Nat := 25
def small_7207352_left_count : Nat := 397
def small_7207352_left_encoded : String := "0F878CFB000000020C9A86FE0F878CFF0000000407800102128A410300000001022A457D13E201060DE7CA00000000050E6014F700000000000000050000000300000005128A7D03022A457D13E201060DE7CA000E5FD8F70DE7C9FA0E6014FB000000020DE7C9FE000000050E5FD8FF08C001020000000500000009000000040E5FD8FB0DE7C9FE0E6014FF0000000408C0010200000005000000090E5FD8FF08C0010211FBE90300000001033F67BD13BC31060000000A0000000300000009000000090000000400000002000000000E6014F7000000000DE7C9FA0E6014FB000000020DE7C9FE000000050E5FD8FF00000006000000040E5FD8FB0DE7C9FE0000000A0E5FD8FF08C001020000000A0000000900000004000000020000000313E1C506000000030DE7CA000E5FD8F7000000090000000000000009000000010F8750FF07800102128A410300000001022A457D13E201060DE7CA000E5FD8F70DE7C9FA0E6014FB00000002000000060E5FD8FB0B4D43FE10804CFF00000004064001020000000612FFAD03033F67BD0000000613BBF506000000030D412880000000050000000600000001108010FF00000006000000040000000200000000000000060000000313E1C506000000030DE7CA000E5FD8F70DE7C9FA0E6014FB00000002000000050E5FD8FB0B4D43FE10804CFF0000000400000005108010FF0640010212FF7103000000010115233D000000060000000512FFAD030115233D13F895060D4128800EFA10F70D41287A0EFA4CFB00000002000000050EFA10FB0AA6A27E10EDACFF0000000406E0010200000005000000080000000800000002000000000EFA4CF7000000000D41287A000000060EFA10FB0AA6A27E0000000610ED70FF0000000600000004000000020000000313F85906000000030D4128800EFA10F7000000090000000000000009000000010000000400000002000000000E6014F7000000000DE7C9FA0E6014FB00000002000000050E5FD8FB0B4D43FE10804CFF00000004064001020000000512FFAD030115233D000000060000000500000001108010FF064001020000000612FFAD030115233D0000000600000007000000010000000400000002128A7D03022A457D13E201060DE7CA000E5FD8F70DE7C9FA0E6014FB000000020B4D43FE10804CFF0000000408C0010211FBE903000000010000000600000009108010FF08C001020000000611FC2503033F67BD000000060000000800000001000000040E5FD8FB0B4D43FE10804CFF0000000408C0010211FBE90300000001033F67BD13BC31060D4128800EFA10F70D41287A000000060EFA10FB0BF3E57E000000061008ECFF00000006000000040000000200000000000000060000000313BBF506000000030D4128800EFA10F700000009000000000000000911FC2503033F67BD13BC31060D4128800EFA10F7000000090000000000000009000000030000000900000001108010FF08C0010211FBE90300000001033F67BD13BC31060D41288000000008000000060000000313BBF506000000030D412880000000080EFA4CF7000000000D41287A0EFA4CFB00000002000000060EFA10FB0AA6A27E00000008000000080000000211FC2503033F67BD0000000800000008000000010000000400000002000000000E6014F7000000000DE7C9FA0E6014FB000000020B4D43FE00000006108010FF00000006000000040E5FD8FB0B4D43FE10804CFF0000000408C0010211FBE903000000010000000611FC2503033F67BD13BC31060000000A000000030000000900000001108010FF08C0010211FBE903000000010000000611FC2503033F67BD00000006000000090000000100000004000000020000000313E1C506000000030DE7CA000E5FD8F70DE7C9FA0E6014FB000000020B4D43FE00000009108010FF00000009000000040E5FD8FB0B4D43FE00000009108010FF08C0010211FBE903000000010115233D13F895060D41288000000008000000090000000300000009000000090000000400000002000000000E6014F7000000000DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE00000009108010FF08C0010211FBE903000000010115233D13F895060DAED877000000090E962500000000000000000600000003000000070000000900000004000000020000000100000004"
theorem small_7207352_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7207352_left_root small_7207352_left_fuel small_7207352_left_count small_7207352_left_encoded = true := by
  decide +kernel
theorem small_7207352_left_covered : CoveredBy scale carrier boxes small_7207352_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7207352_left_root small_7207352_left_fuel small_7207352_left_count small_7207352_left_encoded small_7207352_left_checked

theorem cover_7207352 : CoveredBy scale carrier boxes root_7207352 := by
  apply coveredBy_split_literal root_7207352 small_7207352_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0493.root_7208194 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7207352_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0493.cover_7208194
#print axioms cover_7207352

def root_7207346 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7207346_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7207346_left_fuel : Nat := 1
def small_7207346_left_count : Nat := 1
def small_7207346_left_encoded : String := "00000000"
theorem small_7207346_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7207346_left_root small_7207346_left_fuel small_7207346_left_count small_7207346_left_encoded = true := by
  decide +kernel
theorem small_7207346_left_covered : CoveredBy scale carrier boxes small_7207346_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7207346_left_root small_7207346_left_fuel small_7207346_left_count small_7207346_left_encoded small_7207346_left_checked

theorem cover_7207346 : CoveredBy scale carrier boxes root_7207346 := by
  apply coveredBy_split_literal root_7207346 small_7207346_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7207352 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7207346_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7207352
#print axioms cover_7207346

def root_7205246 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7205246 : CoveredBy scale carrier boxes root_7205246 := by
  apply coveredBy_split_literal root_7205246 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2715.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7207346 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2715.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7207346
#print axioms cover_7205246

def root_7205240 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205240_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205240_left_fuel : Nat := 1
def small_7205240_left_count : Nat := 1
def small_7205240_left_encoded : String := "00000004"
theorem small_7205240_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7205240_left_root small_7205240_left_fuel small_7205240_left_count small_7205240_left_encoded = true := by
  decide +kernel
theorem small_7205240_left_covered : CoveredBy scale carrier boxes small_7205240_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7205240_left_root small_7205240_left_fuel small_7205240_left_count small_7205240_left_encoded small_7205240_left_checked

theorem cover_7205240 : CoveredBy scale carrier boxes root_7205240 := by
  apply coveredBy_split_literal root_7205240 small_7205240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7205246 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7205240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7205246
#print axioms cover_7205240

def root_7205239 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205239_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205239_right_fuel : Nat := 14
def small_7205239_right_count : Nat := 61
def small_7205239_right_encoded : String := "0F34D0FE0C9A87000F8750F70C9A86FA0F878CFB00000002000000050F8750FB07800102128A41030000000100000005128A7D03022A457D13E201060AD3577F000000070000000A0000000313E1C506000000030AD3577F10D13CFE000000040B4D44000000000500000009000000050000000100000002000000000F878CF7000000000C9A86FA0F878CFB00000002000000050F8750FB07800102128A410300000001022A457D0000000A00000005128A7D03022A457D0000000A13E1C506000000030AD3577F10D13CFE000000040DE7CA000E5FD8F70000000900000000000000090000000A000000010000000200000004"
theorem small_7205239_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7205239_right_root small_7205239_right_fuel small_7205239_right_count small_7205239_right_encoded = true := by
  decide +kernel
theorem small_7205239_right_covered : CoveredBy scale carrier boxes small_7205239_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7205239_right_root small_7205239_right_fuel small_7205239_right_count small_7205239_right_encoded small_7205239_right_checked

theorem cover_7205239 : CoveredBy scale carrier boxes root_7205239 := by
  apply coveredBy_split_literal root_7205239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7205240 small_7205239_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7205240
  · exact small_7205239_right_covered
#print axioms cover_7205239

def root_7205233 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205233_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7205233_left_fuel : Nat := 1
def small_7205233_left_count : Nat := 1
def small_7205233_left_encoded : String := "00000003"
theorem small_7205233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7205233_left_root small_7205233_left_fuel small_7205233_left_count small_7205233_left_encoded = true := by
  decide +kernel
theorem small_7205233_left_covered : CoveredBy scale carrier boxes small_7205233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7205233_left_root small_7205233_left_fuel small_7205233_left_count small_7205233_left_encoded small_7205233_left_checked

theorem cover_7205233 : CoveredBy scale carrier boxes root_7205233 := by
  apply coveredBy_split_literal root_7205233 small_7205233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7205239 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7205233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7205239
#print axioms cover_7205233

def root_7203721 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7203721 : CoveredBy scale carrier boxes root_7203721 := by
  apply coveredBy_split_literal root_7203721 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2714.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7205233 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2714.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7205233
#print axioms cover_7203721

def root_7203715 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203715_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203715_left_fuel : Nat := 1
def small_7203715_left_count : Nat := 1
def small_7203715_left_encoded : String := "00000002"
theorem small_7203715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7203715_left_root small_7203715_left_fuel small_7203715_left_count small_7203715_left_encoded = true := by
  decide +kernel
theorem small_7203715_left_covered : CoveredBy scale carrier boxes small_7203715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7203715_left_root small_7203715_left_fuel small_7203715_left_count small_7203715_left_encoded small_7203715_left_checked

theorem cover_7203715 : CoveredBy scale carrier boxes root_7203715 := by
  apply coveredBy_split_literal root_7203715 small_7203715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203721 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7203715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203721
#print axioms cover_7203715

def root_7203714 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203714_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203714_right_fuel : Nat := 21
def small_7203714_right_count : Nat := 139
def small_7203714_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF000000040780010200000005128A7D030AD3577B10D13CFA00000002067ECE7D0000000612EA5906000000030B4D4400000000050000000600000006000000010F8750FF0780010200000006128A7D030AD3577B10D13CFA00000002067ECE7D0000000612EA5906000000030B4D4400108010F70B4D43FE00000006108010FF0000000600000004000000000000000600000006000000010000000400000000000000060F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF00000004000000050F8750FF07800102128A41030000000100000005128A7D030AD3577B10D13CFA00000002022A457D13E201060B4D4400108010F70B4D43FE10804CFF0000000400000005000000080000000010804CF7000000000B4D43FE10804CFF0000000400000005108010FF08C001020000000600000008000000040000000313E1C506000000030B4D4400000000050000000910D100FA00000005000000020000000100000004000000000F878CF7000000000C9A86FE0F878CFF00000004000000050F8750FF07800102128A41030000000100000006128A7D030AD3577B10D13CFA00000002022A457D0000000613E1C506000000030DE7CA000E5FD8F70000000900000000000000070000000600000001000000040F34D0FE000000050000000400000002"
theorem small_7203714_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7203714_right_root small_7203714_right_fuel small_7203714_right_count small_7203714_right_encoded = true := by
  decide +kernel
theorem small_7203714_right_covered : CoveredBy scale carrier boxes small_7203714_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7203714_right_root small_7203714_right_fuel small_7203714_right_count small_7203714_right_encoded small_7203714_right_checked

theorem cover_7203714 : CoveredBy scale carrier boxes root_7203714 := by
  apply coveredBy_split_literal root_7203714 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203715 small_7203714_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203715
  · exact small_7203714_right_covered
#print axioms cover_7203714

def root_7203709 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203709_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203709_right_fuel : Nat := 1
def small_7203709_right_count : Nat := 1
def small_7203709_right_encoded : String := "00000000"
theorem small_7203709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7203709_right_root small_7203709_right_fuel small_7203709_right_count small_7203709_right_encoded = true := by
  decide +kernel
theorem small_7203709_right_covered : CoveredBy scale carrier boxes small_7203709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7203709_right_root small_7203709_right_fuel small_7203709_right_count small_7203709_right_encoded small_7203709_right_checked

theorem cover_7203709 : CoveredBy scale carrier boxes root_7203709 := by
  apply coveredBy_split_literal root_7203709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203714 small_7203709_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203714
  · exact small_7203709_right_covered
#print axioms cover_7203709

def root_7203708 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7203708 : CoveredBy scale carrier boxes root_7203708 := by
  apply coveredBy_split_literal root_7203708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203709 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2718.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203709
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2718.covered
#print axioms cover_7203708

def root_7203703 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203703_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7203703_right_fuel : Nat := 1
def small_7203703_right_count : Nat := 1
def small_7203703_right_encoded : String := "00000001"
theorem small_7203703_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7203703_right_root small_7203703_right_fuel small_7203703_right_count small_7203703_right_encoded = true := by
  decide +kernel
theorem small_7203703_right_covered : CoveredBy scale carrier boxes small_7203703_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7203703_right_root small_7203703_right_fuel small_7203703_right_count small_7203703_right_encoded small_7203703_right_checked

theorem cover_7203703 : CoveredBy scale carrier boxes root_7203703 := by
  apply coveredBy_split_literal root_7203703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203708 small_7203703_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203708
  · exact small_7203703_right_covered
#print axioms cover_7203703

def root_7202081 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7202081 : CoveredBy scale carrier boxes root_7202081 := by
  apply coveredBy_split_literal root_7202081 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2713.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7203703 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2713.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7203703
#print axioms cover_7202081

def root_7202075 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202075_left_fuel : Nat := 1
def small_7202075_left_count : Nat := 1
def small_7202075_left_encoded : String := "00000004"
theorem small_7202075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7202075_left_root small_7202075_left_fuel small_7202075_left_count small_7202075_left_encoded = true := by
  decide +kernel
theorem small_7202075_left_covered : CoveredBy scale carrier boxes small_7202075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7202075_left_root small_7202075_left_fuel small_7202075_left_count small_7202075_left_encoded small_7202075_left_checked

theorem cover_7202075 : CoveredBy scale carrier boxes root_7202075 := by
  apply coveredBy_split_literal root_7202075 small_7202075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7202081 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7202075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7202081
#print axioms cover_7202075

def root_7202074 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202074_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202074_right_fuel : Nat := 13
def small_7202074_right_count : Nat := 33
def small_7202074_right_encoded : String := "120700FE05000102135D45030000000100000005135D81030CFD9BF70F350D000CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A8700000000050000000A00000005000000030000000500000005000000000F34D100000000000CFD9BFB0F350CFA000000020000000A000000050000000100000004"
theorem small_7202074_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7202074_right_root small_7202074_right_fuel small_7202074_right_count small_7202074_right_encoded = true := by
  decide +kernel
theorem small_7202074_right_covered : CoveredBy scale carrier boxes small_7202074_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7202074_right_root small_7202074_right_fuel small_7202074_right_count small_7202074_right_encoded small_7202074_right_checked

theorem cover_7202074 : CoveredBy scale carrier boxes root_7202074 := by
  apply coveredBy_split_literal root_7202074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7202075 small_7202074_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7202075
  · exact small_7202074_right_covered
#print axioms cover_7202074

def root_7202068 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202068_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7202068_left_fuel : Nat := 1
def small_7202068_left_count : Nat := 1
def small_7202068_left_encoded : String := "00000003"
theorem small_7202068_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7202068_left_root small_7202068_left_fuel small_7202068_left_count small_7202068_left_encoded = true := by
  decide +kernel
theorem small_7202068_left_covered : CoveredBy scale carrier boxes small_7202068_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7202068_left_root small_7202068_left_fuel small_7202068_left_count small_7202068_left_encoded small_7202068_left_checked

theorem cover_7202068 : CoveredBy scale carrier boxes root_7202068 := by
  apply coveredBy_split_literal root_7202068 small_7202068_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7202074 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7202068_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7202074
#print axioms cover_7202068

def root_7201676 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201676_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201676_left_fuel : Nat := 27
def small_7201676_left_count : Nat := 183
def small_7201676_left_encoded : String := "12073D0608A912FF12073CFE0000000405000102135D4503000000010CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE0C9A87000F8750F70C9A86FA000000060000000A00000000000000060000000400000006000000000F34D1000000000000000006135D81030CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040780010200000006128A7D030AD3577D0000000610D10106000000030B4D4400108010F70DE7C9FA00000006000000070000000000000006000000010F8750FF00000006000000040F8750FB0C9A86FE0F878CFF00000004078001020000000A0000000A0F8750FF07800102128A41030000000100000006128A7D030AD3577D0000000A10D10106000000030B4D44000000000710804CF7000000000000000A000000010000000400000002000000000F878CF7000000000C9A86FA0F878CFB00000002000000060F8750FB0C9A86FE0000000A0F8750FF0000000600000004000000020F34D0FE0C9A87000F8750F70C9A86FA0F878CFB000000020000000A0000000A000000000000000A000000040F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000060000000400000002000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060000000A0000000600000001120700FE05000102135D4503000000010CFD9BF70F350D000CFD9BFB0F350CFA000000020000000A00000005000000000F34D100000000000000000A135D81030CFD9BF70F350D000CFD9BFB0F350CFA000000020000000A0000000A000000000F34D100000000000000000A000000010000000400000003"
theorem small_7201676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201676_left_root small_7201676_left_fuel small_7201676_left_count small_7201676_left_encoded = true := by
  decide +kernel
theorem small_7201676_left_covered : CoveredBy scale carrier boxes small_7201676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201676_left_root small_7201676_left_fuel small_7201676_left_count small_7201676_left_encoded small_7201676_left_checked

theorem cover_7201676 : CoveredBy scale carrier boxes root_7201676 := by
  apply coveredBy_split_literal root_7201676 small_7201676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7202068 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7201676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7202068
#print axioms cover_7201676

def root_7201670 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201670_left_fuel : Nat := 1
def small_7201670_left_count : Nat := 1
def small_7201670_left_encoded : String := "00000002"
theorem small_7201670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201670_left_root small_7201670_left_fuel small_7201670_left_count small_7201670_left_encoded = true := by
  decide +kernel
theorem small_7201670_left_covered : CoveredBy scale carrier boxes small_7201670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201670_left_root small_7201670_left_fuel small_7201670_left_count small_7201670_left_encoded small_7201670_left_checked

theorem cover_7201670 : CoveredBy scale carrier boxes root_7201670 := by
  apply coveredBy_split_literal root_7201670 small_7201670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201676 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7201670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201676
#print axioms cover_7201670

def root_7201669 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201669_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201669_right_fuel : Nat := 15
def small_7201669_right_count : Nat := 39
def small_7201669_right_encoded : String := "120700FA08A912FD12073D0608A912FF00000006120700FE000000050000000400000003120701060000000308A912FF12073CFE0000000405000102135D45030000000100000005135D81030CFD9BF70F350D00045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0000000600000005000000030000000500000005000000000F34D1000000000000000006000000010000000500000002"
theorem small_7201669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201669_right_root small_7201669_right_fuel small_7201669_right_count small_7201669_right_encoded = true := by
  decide +kernel
theorem small_7201669_right_covered : CoveredBy scale carrier boxes small_7201669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201669_right_root small_7201669_right_fuel small_7201669_right_count small_7201669_right_encoded small_7201669_right_checked

theorem cover_7201669 : CoveredBy scale carrier boxes root_7201669 := by
  apply coveredBy_split_literal root_7201669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201670 small_7201669_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201670
  · exact small_7201669_right_covered
#print axioms cover_7201669

def root_7201664 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201664_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201664_right_fuel : Nat := 1
def small_7201664_right_count : Nat := 1
def small_7201664_right_encoded : String := "00000000"
theorem small_7201664_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201664_right_root small_7201664_right_fuel small_7201664_right_count small_7201664_right_encoded = true := by
  decide +kernel
theorem small_7201664_right_covered : CoveredBy scale carrier boxes small_7201664_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201664_right_root small_7201664_right_fuel small_7201664_right_count small_7201664_right_encoded small_7201664_right_checked

theorem cover_7201664 : CoveredBy scale carrier boxes root_7201664 := by
  apply coveredBy_split_literal root_7201664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201669 small_7201664_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201669
  · exact small_7201664_right_covered
#print axioms cover_7201664

def root_7201663 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201663_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201663_right_fuel : Nat := 28
def small_7201663_right_count : Nat := 203
def small_7201663_right_encoded : String := "120701000000000008A912FB12073CFA0000000208A912FD12073D0608A912FF00000006120700FE0000000A0000000400000003120701060000000308A912FF12073CFE0000000405000102135D450300000001045489F71386AD000CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF000000060000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA000000060F8750FB0C9A86FE000000060F8750FF0000000600000004000000020F34D0FE00000005000000040F34D0FA00000005000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD0000000613867106000000030CFD9BFF000000060000000800000006135D8103045489F71386AD000CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA000000060000000A0000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040780010200000006128A7D03067ECE770000000A0000000A000000010F8750FF00000006000000040F8750FB0C9A86FE0F878CFF000000040000000A0F8750FF07800102128A41030000000100000006128A7D03067ECE7712EA9500022A457D0000000A13E1C506000000030000000A000000000000000A0000000100000004000000020F34D0FE0000000A000000040F34D0FA045489FD0000000613867106000000030CFD9BFF000000060F34D0FE0000000500000004000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF000000060000000A0000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE00000006000000060F8750FB0C9A86FE0000000A0F8750FF07800102000000060000000A00000004000000020F34D0FE00000008000000040F34D0FA045489FD0000000613867106000000030CFD9BFF00000006000000050000000200000001120700FE0500010200000005135D8103045489F70000000A000000050000000100000004120700FA08A912FD00000006120701060000000308A912FF000000060000000500000002"
theorem small_7201663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201663_right_root small_7201663_right_fuel small_7201663_right_count small_7201663_right_encoded = true := by
  decide +kernel
theorem small_7201663_right_covered : CoveredBy scale carrier boxes small_7201663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201663_right_root small_7201663_right_fuel small_7201663_right_count small_7201663_right_encoded small_7201663_right_checked

theorem cover_7201663 : CoveredBy scale carrier boxes root_7201663 := by
  apply coveredBy_split_literal root_7201663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201664 small_7201663_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201664
  · exact small_7201663_right_covered
#print axioms cover_7201663

def root_7201657 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201657_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7201657_left_fuel : Nat := 1
def small_7201657_left_count : Nat := 1
def small_7201657_left_encoded : String := "00000004"
theorem small_7201657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7201657_left_root small_7201657_left_fuel small_7201657_left_count small_7201657_left_encoded = true := by
  decide +kernel
theorem small_7201657_left_covered : CoveredBy scale carrier boxes small_7201657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7201657_left_root small_7201657_left_fuel small_7201657_left_count small_7201657_left_encoded small_7201657_left_checked

theorem cover_7201657 : CoveredBy scale carrier boxes root_7201657 := by
  apply coveredBy_split_literal root_7201657 small_7201657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7201663 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7201657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7201663
#print axioms cover_7201657

def root_7219101 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219101_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219101_left_fuel : Nat := 19
def small_7219101_left_count : Nat := 223
def small_7219101_left_encoded : String := "1386AD060C9A87000F8750F70C9A86FA0F878CFB0000000207800102128A410300000001078000FE128A7CFF00000004067ECE7D0000000612EA5906000000030B4D4400108010F70DE7C9FA0E6014FB0000000200000006000000080000000000000006128A40FF067ECE7D0000000612EA5906000000030B4D4400000000080000000600000004128A7D03078000FE128A7CFF00000004067ECE7D12EA95060B4D440000000008000000060000000312EA5906000000030B4D44000000000810804CF7000000000DE7C9FA0E6014FB000000020000000800000008128A40FF067ECE7D000000080000000800000004000000010F8750FB07800102128A410300000001078000FE128A7CFF00000004067ECE7D12EA95060B4D44000000000910804CF700000000000000090000000312EA5906000000030B4D4400108010F70B4D43FA10804CFB0000000200000008000000080000000010804CF7000000000B4D43FA10804CFB000000020640010212FF71030000000108C000FE000000060000000612FFAD030000000800000001108010FB06400102000000090000000500000002128A40FF067ECE7D0000000512EA5906000000030B4D4400000000080000000500000004128A7D03078000FE128A7CFF00000004067ECE7D0000000512EA5906000000030B4D44000000000800000005000000050000000100000002000000000F878CF7000000000C9A86FA0F878CFB0000000207800102128A41030000000100000006128A7D03078000FE128A7CFF00000004067ECE7D0000000612EA5906000000030DE7CA000E5FD8F70DE7C9FA0E6014FB00000002000000060E5FD8FB08C001020000000600000008000000020000000000000006128A40FF067ECE7D0000000612EA5906000000030DE7CA000E5FD8F700000008000000000000000600000004000000010F8750FB07800102128A410300000001078000FE128A7CFF00000004067ECE7D0000000612EA5906000000030DE7CA000E5FD8F70B4D43FA10804CFB0000000200000006108010FB064001020000000900000005000000020000000000000006128A40FF067ECE7D0000000512EA5906000000030DE7CA000E5FD8F700000005000000000000000500000004128A7D03078000FE128A7CFF00000004067ECE7D0000000512EA5906000000030DE7CA000E5FD8F700000005000000000000000500000005000000010000000200000003"
theorem small_7219101_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219101_left_root small_7219101_left_fuel small_7219101_left_count small_7219101_left_encoded = true := by
  decide +kernel
theorem small_7219101_left_covered : CoveredBy scale carrier boxes small_7219101_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219101_left_root small_7219101_left_fuel small_7219101_left_count small_7219101_left_encoded small_7219101_left_checked

theorem cover_7219101 : CoveredBy scale carrier boxes root_7219101 := by
  apply coveredBy_split_literal root_7219101 small_7219101_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2720.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_7219101_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2720.covered
#print axioms cover_7219101

def root_7219095 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219095_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219095_left_fuel : Nat := 1
def small_7219095_left_count : Nat := 1
def small_7219095_left_encoded : String := "00000002"
theorem small_7219095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219095_left_root small_7219095_left_fuel small_7219095_left_count small_7219095_left_encoded = true := by
  decide +kernel
theorem small_7219095_left_covered : CoveredBy scale carrier boxes small_7219095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219095_left_root small_7219095_left_fuel small_7219095_left_count small_7219095_left_encoded small_7219095_left_checked

theorem cover_7219095 : CoveredBy scale carrier boxes root_7219095 := by
  apply coveredBy_split_literal root_7219095 small_7219095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7219101 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7219095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7219101
#print axioms cover_7219095

def root_7219094 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219094_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219094_right_fuel : Nat := 15
def small_7219094_right_count : Nat := 89
def small_7219094_right_encoded : String := "0F34D0FA045489FD1386AD060C9A87000F8750F70780010200000006128A7D03078000FE00000006128A40FF0AD3577B0000000600000006000000040000000100000000000000060000000313867106000000030C9A87000F8750F707800102128A410300000001078000FE128A7CFF000000040AD3577B10D13CFA00000002022A457D0000000613E1C506000000030B4D4400000000050000000700000006128A40FF0AD3577B10D13CFA00000002022A457D00000006000000070000000600000004128A7D03078000FE128A7CFF000000040AD3577B10D13CFA00000002022A457D13E2010600000008000000030000000810D100FA0000000700000002128A40FF000000080000000400000001000000000F878CF70000000007800102128A410300000001078000FE0000000600000006128A7D03078000FE128A7CFF000000040AD3577B10D13CFA000000020000000700000006000000070000000100000002"
theorem small_7219094_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219094_right_root small_7219094_right_fuel small_7219094_right_count small_7219094_right_encoded = true := by
  decide +kernel
theorem small_7219094_right_covered : CoveredBy scale carrier boxes small_7219094_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219094_right_root small_7219094_right_fuel small_7219094_right_count small_7219094_right_encoded small_7219094_right_checked

theorem cover_7219094 : CoveredBy scale carrier boxes root_7219094 := by
  apply coveredBy_split_literal root_7219094 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7219095 small_7219094_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7219095
  · exact small_7219094_right_covered
#print axioms cover_7219094

def root_7219089 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219089_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7219089_right_fuel : Nat := 1
def small_7219089_right_count : Nat := 1
def small_7219089_right_encoded : String := "00000000"
theorem small_7219089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7219089_right_root small_7219089_right_fuel small_7219089_right_count small_7219089_right_encoded = true := by
  decide +kernel
theorem small_7219089_right_covered : CoveredBy scale carrier boxes small_7219089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7219089_right_root small_7219089_right_fuel small_7219089_right_count small_7219089_right_encoded small_7219089_right_checked

theorem cover_7219089 : CoveredBy scale carrier boxes root_7219089 := by
  apply coveredBy_split_literal root_7219089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.root_7219094 small_7219089_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494.cover_7219094
  · exact small_7219089_right_covered
#print axioms cover_7219089

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0494
