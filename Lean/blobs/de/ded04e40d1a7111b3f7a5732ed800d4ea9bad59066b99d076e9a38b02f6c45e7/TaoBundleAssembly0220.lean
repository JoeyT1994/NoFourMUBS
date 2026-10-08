import TaoBundleAssembly0219
import TaoBundleChunkBatch0860
import TaoBundleChunkBatch0861
import TaoBundleChunkBatch0862
import TaoBundleChunkBatch0863
import TaoBundleChunkBatch0864
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220
def root_9190813 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190813_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190813_left_fuel : Nat := 23
def small_9190813_left_count : Nat := 309
def small_9190813_left_encoded : String := "0F878CFF0000000407800100128A410100000000022A457D13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE000000070E5FD8FF064001000000000712FFAD01033F67BD0000000713BBF506000000030D41288200000005000000070000000000000004108010FB000000070000000200000001000000070000000313E1C506000000030DE7CA020E5FD8F90B4D43FA10804CFB0000000200000005108010FB0DE7C9FE0E6014FF00000004000000050E5FD8FF0640010012FF7101000000000115233D000000070000000512FFAD010115233D13F895060D4128820EFA10F90AA6A27A10EDACFB000000020D41287E000000050EFA10FF06E0010000000005000000090000000410ED70FB0000000A00000002000000010EFA4CF9000000010AA6A27A0000000710ED70FB00000007000000020000000313F85906000000030D4128820EFA10F9000000090000000100000009000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7C9FE000000050E5FD8FF064001000000000512FFAD010115233D00000007000000050000000000000004108010FB0DE7C9FE000000070E5FD8FF064001000000000712FFAD010115233D0000000700000006000000000000000400000002128A7D01022A457D13E201060DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE0E6014FF0000000408C0010011FBE9010000000000000007000000090E5FD8FF08C0010011FBE90100000000033F67BD13BC31060D4128820EFA10F90BF3E57A000000071008ECFB000000070000000200000001000000070000000313BBF506000000030D4128820EFA10F900000009000000010000000911FC2501033F67BD13BC31060D4128820EFA10F900000009000000010000000900000003000000090000000000000004108010FB0DE7C9FE0E6014FF0000000408C001000000000711FC2501033F67BD0000000700000009000000000E5FD8FF08C0010011FBE90100000000033F67BD13BC31060D4128820000000A000000070000000313BBF506000000030D4128820000000A0EFA4CF9000000010AA6A27A10EDACFB000000020D41287E000000070000000A0000000A11FC2501033F67BD0000000A00000009000000000000000400000002000000010E6014F9000000010B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000070E5FD8FF08C0010011FBE901000000000000000711FC2501033F67BD13BC31060000000800000003000000090000000000000004108010FB0DE7C9FE0E6014FF00000004000000070E5FD8FF08C0010011FBE901000000000000000711FC2501033F67BD00000007000000090000000000000004000000020000000313E1C506000000030DE7CA020E5FD8F90B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE000000090E5FD8FF08C0010011FBE901000000000115233D13F895060D4128820000000A000000090000000300000009000000090000000400000002000000010E6014F9000000010B4D43FA10804CFB0000000200000009108010FB0DE7C9FE000000090E5FD8FF08C0010011FBE901000000000115233D13F895060DAED879000000090E9625020000000100000006000000030000000600000009000000040000000200000000"
theorem small_9190813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190813_left_root small_9190813_left_fuel small_9190813_left_count small_9190813_left_encoded = true := by
  decide +kernel
theorem small_9190813_left_covered : CoveredBy scale carrier boxes small_9190813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190813_left_root small_9190813_left_fuel small_9190813_left_count small_9190813_left_encoded small_9190813_left_checked

theorem cover_9190813 : CoveredBy scale carrier boxes root_9190813 := by
  apply coveredBy_split_literal root_9190813 small_9190813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9191467 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9190813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9191467
#print axioms cover_9190813

def root_9190808 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190808_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190808_right_fuel : Nat := 1
def small_9190808_right_count : Nat := 1
def small_9190808_right_encoded : String := "00000002"
theorem small_9190808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190808_right_root small_9190808_right_fuel small_9190808_right_count small_9190808_right_encoded = true := by
  decide +kernel
theorem small_9190808_right_covered : CoveredBy scale carrier boxes small_9190808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190808_right_root small_9190808_right_fuel small_9190808_right_count small_9190808_right_encoded small_9190808_right_checked

theorem cover_9190808 : CoveredBy scale carrier boxes root_9190808 := by
  apply coveredBy_split_literal root_9190808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9190813 small_9190808_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9190813
  · exact small_9190808_right_covered
#print axioms cover_9190808

def root_9190222 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190222_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190222_left_fuel : Nat := 20
def small_9190222_left_count : Nat := 273
def small_9190222_left_encoded : String := "0F878CFB000000020C9A86FE0F878CFF0000000407800100128A410100000000022A457D13E201060DE7CA02000000050E6014F900000001000000050000000300000005128A7D01022A457D13E201060DE7CA020E5FD8F90DE7C9FA0E6014FB000000020DE7C9FE000000050E5FD8FF08C001000000000500000008000000040E5FD8FB0DE7C9FE0E6014FF0000000408C0010000000005000000090E5FD8FF08C0010011FBE90100000000033F67BD13BC3106000000080000000300000009000000090000000400000002000000010E6014F9000000010DE7C9FA0E6014FB000000020DE7C9FE00000005000000080E5FD8FB0DE7C9FE0E6014FF00000004000000070E5FD8FF08C00100000000080000000900000004000000020000000313E1C506000000030DE7CA020E5FD8F9000000090000000100000009000000000F8750FF07800100128A410100000000022A457D13E201060DE7CA020E5FD8F90DE7C9FA0E6014FB00000002000000080E5FD8FB0B4D43FE10804CFF000000040640010012FF7101000000000000000512FFAD01033F67BD0000000813BBF506000000030D412882000000050000000800000000108010FF000000060000000400000002000000010E6014F9000000010DE7C9FA000000080E5FD8FB0B4D43FE10804CFF000000040000000800000008000000020000000313E1C506000000030DE7CA020E5FD8F90DE7C9FA0E6014FB00000002000000050E5FD8FB0B4D43FE10804CFF0000000400000005108010FF0640010012FF7101000000000115233D000000060000000512FFAD010115233D13F895060D41288200000006000000080000000313F85906000000030D4128820EFA10F9000000060000000100000009000000000000000400000002000000010E6014F9000000010DE7C9FA0E6014FB00000002000000050E5FD8FB0B4D43FE10804CFF00000004064001000000000512FFAD010115233D000000080000000500000000108010FF064001000000000812FFAD0100000008000000000000000400000002128A7D01022A457D13E201060DE7CA020E5FD8F90DE7C9FA0E6014FB00000002000000080E5FD8FB0B4D43FE10804CFF0000000408C0010011FBE90100000000033F67BD0000000813BBF506000000030D4128820EFA10F900000008000000010000000811FC25010000000800000000108010FF000000080000000400000002000000010E6014F900000001000000080000000313E1C506000000030DE7CA020E5FD8F90DE7C9FA0E6014FB000000020B4D43FE00000009108010FF00000009000000040E5FD8FB0B4D43FE00000009108010FF08C0010011FBE901000000000115233D13F895060D41288200000006000000080000000300000009000000090000000400000002000000010E6014F9000000010DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE00000009108010FF08C00100000000080000000800000004000000020000000000000004"
theorem small_9190222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190222_left_root small_9190222_left_fuel small_9190222_left_count small_9190222_left_encoded = true := by
  decide +kernel
theorem small_9190222_left_covered : CoveredBy scale carrier boxes small_9190222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190222_left_root small_9190222_left_fuel small_9190222_left_count small_9190222_left_encoded small_9190222_left_checked

theorem cover_9190222 : CoveredBy scale carrier boxes root_9190222 := by
  apply coveredBy_split_literal root_9190222 small_9190222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9190808 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9190222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9190808
#print axioms cover_9190222

def root_9190216 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190216_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9190216_left_fuel : Nat := 1
def small_9190216_left_count : Nat := 1
def small_9190216_left_encoded : String := "00000001"
theorem small_9190216_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9190216_left_root small_9190216_left_fuel small_9190216_left_count small_9190216_left_encoded = true := by
  decide +kernel
theorem small_9190216_left_covered : CoveredBy scale carrier boxes small_9190216_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9190216_left_root small_9190216_left_fuel small_9190216_left_count small_9190216_left_encoded small_9190216_left_checked

theorem cover_9190216 : CoveredBy scale carrier boxes root_9190216 := by
  apply coveredBy_split_literal root_9190216 small_9190216_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9190222 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9190216_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9190222
#print axioms cover_9190216

def root_9188160 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9188160 : CoveredBy scale carrier boxes root_9188160 := by
  apply coveredBy_split_literal root_9188160 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3441.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9190216 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3441.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9190216
#print axioms cover_9188160

def root_9188154 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188154_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188154_left_fuel : Nat := 1
def small_9188154_left_count : Nat := 1
def small_9188154_left_encoded : String := "00000004"
theorem small_9188154_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9188154_left_root small_9188154_left_fuel small_9188154_left_count small_9188154_left_encoded = true := by
  decide +kernel
theorem small_9188154_left_covered : CoveredBy scale carrier boxes small_9188154_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9188154_left_root small_9188154_left_fuel small_9188154_left_count small_9188154_left_encoded small_9188154_left_checked

theorem cover_9188154 : CoveredBy scale carrier boxes root_9188154 := by
  apply coveredBy_split_literal root_9188154 small_9188154_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9188160 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9188154_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9188160
#print axioms cover_9188154

def root_9188153 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188153_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188153_right_fuel : Nat := 17
def small_9188153_right_count : Nat := 81
def small_9188153_right_encoded : String := "0F34D0FE0C9A87020F8750F90C9A86FA0F878CFB00000002000000050F8750FB07800100128A41010000000000000005128A7D01022A457D13E201060AD3577F10D13CFE000000040B4D4402108010F90B4D43FA10804CFB00000002000000050000000A0000000110804CF9000000010B4D43FA10804CFB0000000200000005108010FB08C00100000000070000000A0000000210D100FE00000005000000040000000313E1C506000000030AD3577F10D13CFE000000040B4D44020000000500000009000000050000000000000002000000010F878CF9000000010C9A86FA0F878CFB00000002000000050F8750FB07800100128A41010000000000000007128A7D01022A457D0000000713E1C506000000030AD3577F10D13CFE000000040DE7CA020E5FD8F900000009000000010000000600000006000000000000000200000004"
theorem small_9188153_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9188153_right_root small_9188153_right_fuel small_9188153_right_count small_9188153_right_encoded = true := by
  decide +kernel
theorem small_9188153_right_covered : CoveredBy scale carrier boxes small_9188153_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9188153_right_root small_9188153_right_fuel small_9188153_right_count small_9188153_right_encoded small_9188153_right_checked

theorem cover_9188153 : CoveredBy scale carrier boxes root_9188153 := by
  apply coveredBy_split_literal root_9188153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9188154 small_9188153_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9188154
  · exact small_9188153_right_covered
#print axioms cover_9188153

def root_9188147 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188147_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9188147_left_fuel : Nat := 1
def small_9188147_left_count : Nat := 1
def small_9188147_left_encoded : String := "00000003"
theorem small_9188147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9188147_left_root small_9188147_left_fuel small_9188147_left_count small_9188147_left_encoded = true := by
  decide +kernel
theorem small_9188147_left_covered : CoveredBy scale carrier boxes small_9188147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9188147_left_root small_9188147_left_fuel small_9188147_left_count small_9188147_left_encoded small_9188147_left_checked

theorem cover_9188147 : CoveredBy scale carrier boxes root_9188147 := by
  apply coveredBy_split_literal root_9188147 small_9188147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9188153 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9188147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9188153
#print axioms cover_9188147

def root_9186621 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9186621 : CoveredBy scale carrier boxes root_9186621 := by
  apply coveredBy_split_literal root_9186621 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3440.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9188147 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3440.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9188147
#print axioms cover_9186621

def root_9186615 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186615_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186615_left_fuel : Nat := 1
def small_9186615_left_count : Nat := 1
def small_9186615_left_encoded : String := "00000002"
theorem small_9186615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9186615_left_root small_9186615_left_fuel small_9186615_left_count small_9186615_left_encoded = true := by
  decide +kernel
theorem small_9186615_left_covered : CoveredBy scale carrier boxes small_9186615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9186615_left_root small_9186615_left_fuel small_9186615_left_count small_9186615_left_encoded small_9186615_left_checked

theorem cover_9186615 : CoveredBy scale carrier boxes root_9186615 := by
  apply coveredBy_split_literal root_9186615 small_9186615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186621 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9186615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186621
#print axioms cover_9186615

def root_9186614 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186614_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186614_right_fuel : Nat := 18
def small_9186614_right_count : Nat := 115
def small_9186614_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF000000040780010000000005128A7D010AD3577B10D13CFA00000002067ECE7D0000000812EA5906000000030B4D4402000000050000000800000008000000000F8750FF07800100000000080000000800000004000000010F878CF9000000010C9A86FE0F878CFF00000004078001000000000800000008000000080F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF00000004000000050F8750FF07800100128A41010000000000000005128A7D010AD3577B10D13CFA00000002022A457D0000000613E1C506000000030B4D4402000000050000000910D100FA00000005000000020000000000000004000000010F878CF9000000010C9A86FE0F878CFF00000004000000050F8750FF07800100128A4101000000000AD3577B10D13CFA00000002022A457D000000080000000500000005128A7D010AD3577B10D13CFA00000002022A457D0000000813E1C506000000030DE7CA020E5FD8F90000000800000001000000080000000800000000000000040F34D0FE000000050000000400000002"
theorem small_9186614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9186614_right_root small_9186614_right_fuel small_9186614_right_count small_9186614_right_encoded = true := by
  decide +kernel
theorem small_9186614_right_covered : CoveredBy scale carrier boxes small_9186614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9186614_right_root small_9186614_right_fuel small_9186614_right_count small_9186614_right_encoded small_9186614_right_checked

theorem cover_9186614 : CoveredBy scale carrier boxes root_9186614 := by
  apply coveredBy_split_literal root_9186614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186615 small_9186614_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186615
  · exact small_9186614_right_covered
#print axioms cover_9186614

def root_9186609 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186609_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186609_right_fuel : Nat := 1
def small_9186609_right_count : Nat := 1
def small_9186609_right_encoded : String := "00000001"
theorem small_9186609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9186609_right_root small_9186609_right_fuel small_9186609_right_count small_9186609_right_encoded = true := by
  decide +kernel
theorem small_9186609_right_covered : CoveredBy scale carrier boxes small_9186609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9186609_right_root small_9186609_right_fuel small_9186609_right_count small_9186609_right_encoded small_9186609_right_checked

theorem cover_9186609 : CoveredBy scale carrier boxes root_9186609 := by
  apply coveredBy_split_literal root_9186609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186614 small_9186609_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186614
  · exact small_9186609_right_covered
#print axioms cover_9186609

def root_9186608 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9186608 : CoveredBy scale carrier boxes root_9186608 := by
  apply coveredBy_split_literal root_9186608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3445.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3445.covered
#print axioms cover_9186608

def root_9186603 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186603_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9186603_right_fuel : Nat := 1
def small_9186603_right_count : Nat := 1
def small_9186603_right_encoded : String := "00000000"
theorem small_9186603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9186603_right_root small_9186603_right_fuel small_9186603_right_count small_9186603_right_encoded = true := by
  decide +kernel
theorem small_9186603_right_covered : CoveredBy scale carrier boxes small_9186603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9186603_right_root small_9186603_right_fuel small_9186603_right_count small_9186603_right_encoded small_9186603_right_checked

theorem cover_9186603 : CoveredBy scale carrier boxes root_9186603 := by
  apply coveredBy_split_literal root_9186603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186608 small_9186603_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186608
  · exact small_9186603_right_covered
#print axioms cover_9186603

def root_9184979 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184979 : CoveredBy scale carrier boxes root_9184979 := by
  apply coveredBy_split_literal root_9184979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3439.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9186603 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3439.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9186603
#print axioms cover_9184979

def root_9184973 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184973_left_fuel : Nat := 1
def small_9184973_left_count : Nat := 1
def small_9184973_left_encoded : String := "00000004"
theorem small_9184973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184973_left_root small_9184973_left_fuel small_9184973_left_count small_9184973_left_encoded = true := by
  decide +kernel
theorem small_9184973_left_covered : CoveredBy scale carrier boxes small_9184973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184973_left_root small_9184973_left_fuel small_9184973_left_count small_9184973_left_encoded small_9184973_left_checked

theorem cover_9184973 : CoveredBy scale carrier boxes root_9184973 := by
  apply coveredBy_split_literal root_9184973 small_9184973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184979 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9184973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184979
#print axioms cover_9184973

def root_9184972 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184972_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184972_right_fuel : Nat := 9
def small_9184972_right_count : Nat := 21
def small_9184972_right_encoded : String := "120700FE05000100135D45010000000000000005135D81010CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD000000070000000500000005000000010F34D10200000001000000070000000000000004"
theorem small_9184972_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184972_right_root small_9184972_right_fuel small_9184972_right_count small_9184972_right_encoded = true := by
  decide +kernel
theorem small_9184972_right_covered : CoveredBy scale carrier boxes small_9184972_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184972_right_root small_9184972_right_fuel small_9184972_right_count small_9184972_right_encoded small_9184972_right_checked

theorem cover_9184972 : CoveredBy scale carrier boxes root_9184972 := by
  apply coveredBy_split_literal root_9184972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184973 small_9184972_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184973
  · exact small_9184972_right_covered
#print axioms cover_9184972

def root_9184966 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184966_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184966_left_fuel : Nat := 1
def small_9184966_left_count : Nat := 1
def small_9184966_left_encoded : String := "00000003"
theorem small_9184966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184966_left_root small_9184966_left_fuel small_9184966_left_count small_9184966_left_encoded = true := by
  decide +kernel
theorem small_9184966_left_covered : CoveredBy scale carrier boxes small_9184966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184966_left_root small_9184966_left_fuel small_9184966_left_count small_9184966_left_encoded small_9184966_left_checked

theorem cover_9184966 : CoveredBy scale carrier boxes root_9184966 := by
  apply coveredBy_split_literal root_9184966 small_9184966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184972 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9184966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184972
#print axioms cover_9184966

def root_9184628 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184628_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184628_left_fuel : Nat := 28
def small_9184628_left_count : Nat := 157
def small_9184628_left_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D4501000000000CFD9BF90F350D020CFD9BFB000000070F34D0FA0CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE000000070000000800000001000000070000000700000002000000010F34D1020000000100000007135D81010CFD9BF90F350D020CFD9BFB0F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040780010000000007128A7D010AD3577D0000000710D10106000000030B4D4402108010F90DE7C9FA000000060E5FD8FB00000007000000020000000100000007000000000F8750FF078001000000000800000008000000040F8750FB0C9A86FE0F878CFF00000004000000070F8750FF07800100128A41010000000000000007128A7D010AD3577D0000000810D10106000000030B4D44020000000610804CF90000000100000008000000000000000400000002000000010F878CF9000000010C9A86FA0F878CFB000000020C9A86FE00000007000000080F8750FB00000007000000020F34D0FE00000007000000040F34D0FA0CFD9BFD0F350D060CFD9BFF0000000800000007000000030F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF00000004000000080000000800000001000000080F34D0FE000000070000000400000002000000010F34D102000000010CFD9BFB000000070F34D0FA0CFD9BFD000000070F34D10600000003000000080000000200000000120700FE000000070000000400000003"
theorem small_9184628_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184628_left_root small_9184628_left_fuel small_9184628_left_count small_9184628_left_encoded = true := by
  decide +kernel
theorem small_9184628_left_covered : CoveredBy scale carrier boxes small_9184628_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184628_left_root small_9184628_left_fuel small_9184628_left_count small_9184628_left_encoded small_9184628_left_checked

theorem cover_9184628 : CoveredBy scale carrier boxes root_9184628 := by
  apply coveredBy_split_literal root_9184628 small_9184628_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184966 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9184628_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184966
#print axioms cover_9184628

def root_9184622 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184622_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184622_left_fuel : Nat := 1
def small_9184622_left_count : Nat := 1
def small_9184622_left_encoded : String := "00000002"
theorem small_9184622_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184622_left_root small_9184622_left_fuel small_9184622_left_count small_9184622_left_encoded = true := by
  decide +kernel
theorem small_9184622_left_covered : CoveredBy scale carrier boxes small_9184622_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184622_left_root small_9184622_left_fuel small_9184622_left_count small_9184622_left_encoded small_9184622_left_checked

theorem cover_9184622 : CoveredBy scale carrier boxes root_9184622 := by
  apply coveredBy_split_literal root_9184622 small_9184622_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184628 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9184622_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184628
#print axioms cover_9184622

def root_9184621 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184621_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184621_right_fuel : Nat := 17
def small_9184621_right_count : Nat := 85
def small_9184621_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D4501000000000CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD000000070000000500000005000000010F34D1020000000100000008135D81010CFD9BF90F350D02045489FB1386ACFA000000020CFD9BFD000000080F34D106000000030CFD9BFF000000080000000800000008000000010F34D102000000010000000800000000120700FE000000050000000400000003120701060000000308A912FF12073CFE0000000405000100135D45010000000000000005135D81010CFD9BF90F350D02045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A8702000000050000000800000005000000030000000500000005000000010F34D10200000001045489FB1386ACFA00000002045489FD000000080000000500000005000000000000000500000002"
theorem small_9184621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184621_right_root small_9184621_right_fuel small_9184621_right_count small_9184621_right_encoded = true := by
  decide +kernel
theorem small_9184621_right_covered : CoveredBy scale carrier boxes small_9184621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184621_right_root small_9184621_right_fuel small_9184621_right_count small_9184621_right_encoded small_9184621_right_checked

theorem cover_9184621 : CoveredBy scale carrier boxes root_9184621 := by
  apply coveredBy_split_literal root_9184621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184622 small_9184621_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184622
  · exact small_9184621_right_covered
#print axioms cover_9184621

def root_9184616 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184616_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184616_right_fuel : Nat := 1
def small_9184616_right_count : Nat := 1
def small_9184616_right_encoded : String := "00000001"
theorem small_9184616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184616_right_root small_9184616_right_fuel small_9184616_right_count small_9184616_right_encoded = true := by
  decide +kernel
theorem small_9184616_right_covered : CoveredBy scale carrier boxes small_9184616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184616_right_root small_9184616_right_fuel small_9184616_right_count small_9184616_right_encoded small_9184616_right_checked

theorem cover_9184616 : CoveredBy scale carrier boxes root_9184616 := by
  apply coveredBy_split_literal root_9184616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184621 small_9184616_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184621
  · exact small_9184616_right_covered
#print axioms cover_9184616

def root_9184615 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184615_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184615_right_fuel : Nat := 28
def small_9184615_right_count : Nat := 191
def small_9184615_right_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD12073D060000000700000003120701060000000308A912FF12073CFE0000000405000100135D450100000000045489F91386AD020CFD9BFB0F350CFA00000002045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FA000000070F8750FB0000000700000002000000070F34D0FA00000005000000020000000113867102000000010CFD9BFB000000070F34D0FA0000000500000002135D8101045489F91386AD020CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA000000070F8750FB0000000700000002000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040780010000000007128A7D01067ECE790000000800000008000000000F8750FF00000008000000040F8750FB0C9A86FE0F878CFF00000004000000070F8750FF07800100128A41010000000000000007128A7D01067ECE7912EA9502022A457D0000000813E1C506000000030000000800000001000000080000000000000004000000020F34D0FE00000007000000040F34D0FA045489FD1386AD06000000080000000313867106000000030CFD9BFF0F350CFE00000004000000080F34D0FE0000000500000004000000020000000113867102000000010CFD9BFB0F350CFA00000002045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF0000000400000007000000080F8750FB0C9A86FE000000070F8750FF0780010000000007000000080000000400000002000000070F34D0FA045489FD0000000813867106000000030CFD9BFF0000000A000000050000000200000000120700FE0000000700000004120700FA08A912FD12073D0608A912FF000000080000000500000003120701060000000308A912FF12073CFE000000040500010000000005135D8101045489F90000000800000005000000000000000500000002"
theorem small_9184615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184615_right_root small_9184615_right_fuel small_9184615_right_count small_9184615_right_encoded = true := by
  decide +kernel
theorem small_9184615_right_covered : CoveredBy scale carrier boxes small_9184615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184615_right_root small_9184615_right_fuel small_9184615_right_count small_9184615_right_encoded small_9184615_right_checked

theorem cover_9184615 : CoveredBy scale carrier boxes root_9184615 := by
  apply coveredBy_split_literal root_9184615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184616 small_9184615_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184616
  · exact small_9184615_right_covered
#print axioms cover_9184615

def root_9184609 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184609_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184609_left_fuel : Nat := 1
def small_9184609_left_count : Nat := 1
def small_9184609_left_encoded : String := "00000004"
theorem small_9184609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184609_left_root small_9184609_left_fuel small_9184609_left_count small_9184609_left_encoded = true := by
  decide +kernel
theorem small_9184609_left_covered : CoveredBy scale carrier boxes small_9184609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184609_left_root small_9184609_left_fuel small_9184609_left_count small_9184609_left_encoded small_9184609_left_checked

theorem cover_9184609 : CoveredBy scale carrier boxes root_9184609 := by
  apply coveredBy_split_literal root_9184609 small_9184609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184615 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184615
#print axioms cover_9184609

def root_9199581 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9199581_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9199581_right_fuel : Nat := 19
def small_9199581_right_count : Nat := 65
def small_9199581_right_encoded : String := "120701020000000108A912FB12073CFA0000000208A912FD00000008120701060000000305000100135D450100000000050000FE135D80FF00000004045489F91386AD020CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A86FA000000080F8750FB0280010000000008000000080000000200000008000000010000000800000008135D8101050000FE135D80FF00000004045489F91386AD020CFD9BFB0F350CFA00000002045489FD0000000813867106000000030C9A86FA000000080F8750FB0780010000000008000000080000000200000008000000011386710200000001000000080000000800000000120700FA0000000800000002"
theorem small_9199581_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9199581_right_root small_9199581_right_fuel small_9199581_right_count small_9199581_right_encoded = true := by
  decide +kernel
theorem small_9199581_right_covered : CoveredBy scale carrier boxes small_9199581_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9199581_right_root small_9199581_right_fuel small_9199581_right_count small_9199581_right_encoded small_9199581_right_checked

theorem cover_9199581 : CoveredBy scale carrier boxes root_9199581 := by
  apply coveredBy_split_literal root_9199581 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3446.root small_9199581_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3446.covered
  · exact small_9199581_right_covered
#print axioms cover_9199581

def root_9199576 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9199576_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9199576_right_fuel : Nat := 1
def small_9199576_right_count : Nat := 1
def small_9199576_right_encoded : String := "00000004"
theorem small_9199576_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9199576_right_root small_9199576_right_fuel small_9199576_right_count small_9199576_right_encoded = true := by
  decide +kernel
theorem small_9199576_right_covered : CoveredBy scale carrier boxes small_9199576_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9199576_right_root small_9199576_right_fuel small_9199576_right_count small_9199576_right_encoded small_9199576_right_checked

theorem cover_9199576 : CoveredBy scale carrier boxes root_9199576 := by
  apply coveredBy_split_literal root_9199576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9199581 small_9199576_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9199581
  · exact small_9199576_right_covered
#print axioms cover_9199576

def root_9184608 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184608 : CoveredBy scale carrier boxes root_9184608 := by
  apply coveredBy_split_literal root_9184608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9199576 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9199576
#print axioms cover_9184608

def root_9184602 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184602_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184602_left_fuel : Nat := 1
def small_9184602_left_count : Nat := 1
def small_9184602_left_encoded : String := "00000003"
theorem small_9184602_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184602_left_root small_9184602_left_fuel small_9184602_left_count small_9184602_left_encoded = true := by
  decide +kernel
theorem small_9184602_left_covered : CoveredBy scale carrier boxes small_9184602_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184602_left_root small_9184602_left_fuel small_9184602_left_count small_9184602_left_encoded small_9184602_left_checked

theorem cover_9184602 : CoveredBy scale carrier boxes root_9184602 := by
  apply coveredBy_split_literal root_9184602 small_9184602_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184608 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184602_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184608
#print axioms cover_9184602

def root_9184514 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184514_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184514_left_fuel : Nat := 10
def small_9184514_left_count : Nat := 39
def small_9184514_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB00000007120700FA0000000700000002000000011207010200000001000000071151E8FF08A912F912073D0208A912FB12073CFA0000000205000100135D4501000000000000000700000008120700FA05000100135D450100000000000000090000000800000002000000011207010200000001000000080000000400000003"
theorem small_9184514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184514_left_root small_9184514_left_fuel small_9184514_left_count small_9184514_left_encoded = true := by
  decide +kernel
theorem small_9184514_left_covered : CoveredBy scale carrier boxes small_9184514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184514_left_root small_9184514_left_fuel small_9184514_left_count small_9184514_left_encoded small_9184514_left_checked

theorem cover_9184514 : CoveredBy scale carrier boxes root_9184514 := by
  apply coveredBy_split_literal root_9184514 small_9184514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184602 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9184514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184602
#print axioms cover_9184514

def root_9184508 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184508_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184508_left_fuel : Nat := 1
def small_9184508_left_count : Nat := 1
def small_9184508_left_encoded : String := "00000002"
theorem small_9184508_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184508_left_root small_9184508_left_fuel small_9184508_left_count small_9184508_left_encoded = true := by
  decide +kernel
theorem small_9184508_left_covered : CoveredBy scale carrier boxes small_9184508_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184508_left_root small_9184508_left_fuel small_9184508_left_count small_9184508_left_encoded small_9184508_left_checked

theorem cover_9184508 : CoveredBy scale carrier boxes root_9184508 := by
  apply coveredBy_split_literal root_9184508 small_9184508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184514 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184514
#print axioms cover_9184508

def root_9205910 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205910_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205910_right_fuel : Nat := 13
def small_9205910_right_count : Nat := 67
def small_9205910_right_encoded : String := "0F34D0FE0C9A87020F8750F907800100128A410100000000078000FA128A7CFB00000002022A457D0000000713E1C506000000030AD3577F10D13CFE000000040B4D4402000000050000000600000005128A40FB022A457D000000070000000600000002128A7D01078000FA128A7CFB00000002022A457D13E201060AD3577F10D13CFE000000040000000A0000000A0000000313E1C506000000030AD3577F10D13CFE000000040000000A00000006128A40FB0000000A0000000200000000000000010F878CF90000000107800100128A410100000000078000FA0000000700000006128A7D01078000FA128A7CFB00000002022A457D0000000700000006000000060000000000000004"
theorem small_9205910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205910_right_root small_9205910_right_fuel small_9205910_right_count small_9205910_right_encoded = true := by
  decide +kernel
theorem small_9205910_right_covered : CoveredBy scale carrier boxes small_9205910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205910_right_root small_9205910_right_fuel small_9205910_right_count small_9205910_right_encoded small_9205910_right_checked

theorem cover_9205910 : CoveredBy scale carrier boxes root_9205910 := by
  apply coveredBy_split_literal root_9205910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3448.root small_9205910_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3448.covered
  · exact small_9205910_right_covered
#print axioms cover_9205910

def root_9205904 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205904_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205904_left_fuel : Nat := 1
def small_9205904_left_count : Nat := 1
def small_9205904_left_encoded : String := "00000003"
theorem small_9205904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205904_left_root small_9205904_left_fuel small_9205904_left_count small_9205904_left_encoded = true := by
  decide +kernel
theorem small_9205904_left_covered : CoveredBy scale carrier boxes small_9205904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205904_left_root small_9205904_left_fuel small_9205904_left_count small_9205904_left_encoded small_9205904_left_checked

theorem cover_9205904 : CoveredBy scale carrier boxes root_9205904 := by
  apply coveredBy_split_literal root_9205904 small_9205904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205910 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9205904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205910
#print axioms cover_9205904

def root_9205396 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205396_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205396_left_fuel : Nat := 21
def small_9205396_left_count : Nat := 243
def small_9205396_left_encoded : String := "1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF0000000407800100128A410100000000078000FA128A7CFB00000002067ECE7D0000000712EA5906000000030B4D4402108010F90DE7C9FE0E6014FF00000004000000070000000A0000000100000007128A40FB067ECE7D0000000712EA5906000000030B4D44020000000A0000000700000002128A7D01078000FA128A7CFB00000002067ECE7D12EA95060B4D44020000000A000000070000000312EA5906000000030B4D44020000000A10804CF9000000010DE7C9FE0E6014FF000000040000000A0000000A128A40FB067ECE7D0000000A0000000A00000002000000000F8750FF07800100128A410100000000078000FA128A7CFB00000002067ECE7D12EA95060B4D44020000000910804CF900000001000000090000000312EA5906000000030B4D4402108010F90B4D43FE10804CFF000000040000000A0000000A0000000110804CF9000000010B4D43FE10804CFF000000040640010012FF71010000000008C000FA000000070000000712FFAD010000000A00000000108010FF06400100000000090000000500000004128A40FB067ECE7D0000000512EA5906000000030B4D4402000000090000000500000002128A7D01078000FA128A7CFB00000002067ECE7D0000000512EA5906000000030B4D44020000000A00000005000000050000000000000004000000010F878CF9000000010C9A86FE0F878CFF0000000407800100128A41010000000000000007128A7D01078000FA128A7CFB00000002067ECE7D0000000712EA5906000000030DE7CA020E5FD8F90DE7C9FE0E6014FF00000004000000070E5FD8FF08C00100000000070000000A000000040000000100000007128A40FB067ECE7D0000000712EA5906000000030DE7CA020E5FD8F90000000A000000010000000700000002000000000F8750FF07800100128A410100000000078000FA128A7CFB00000002067ECE7D0000000712EA5906000000030DE7CA020E5FD8F90B4D43FE10804CFF0000000400000007108010FF064001000000000900000005000000040000000100000007128A40FB067ECE7D0000000512EA5906000000030DE7CA020E5FD8F900000005000000010000000500000002128A7D01078000FA128A7CFB00000002067ECE7D0000000512EA5906000000030DE7CA020E5FD8F90000000500000001000000050000000500000000000000040F34D0FE0C9A87020F8750F90780010000000007128A7D01078000FA00000007128A40FB067ECE7D000000070000000A000000020000000000000001000000070000000400000003"
theorem small_9205396_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205396_left_root small_9205396_left_fuel small_9205396_left_count small_9205396_left_encoded = true := by
  decide +kernel
theorem small_9205396_left_covered : CoveredBy scale carrier boxes small_9205396_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205396_left_root small_9205396_left_fuel small_9205396_left_count small_9205396_left_encoded small_9205396_left_checked

theorem cover_9205396 : CoveredBy scale carrier boxes root_9205396 := by
  apply coveredBy_split_literal root_9205396 small_9205396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205904 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9205396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205904
#print axioms cover_9205396

def root_9205391 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205391_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205391_right_fuel : Nat := 1
def small_9205391_right_count : Nat := 1
def small_9205391_right_encoded : String := "00000001"
theorem small_9205391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205391_right_root small_9205391_right_fuel small_9205391_right_count small_9205391_right_encoded = true := by
  decide +kernel
theorem small_9205391_right_covered : CoveredBy scale carrier boxes small_9205391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205391_right_root small_9205391_right_fuel small_9205391_right_count small_9205391_right_encoded small_9205391_right_checked

theorem cover_9205391 : CoveredBy scale carrier boxes root_9205391 := by
  apply coveredBy_split_literal root_9205391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205396 small_9205391_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205396
  · exact small_9205391_right_covered
#print axioms cover_9205391

def root_9205390 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205390_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205390_right_fuel : Nat := 31
def small_9205390_right_count : Nat := 269
def small_9205390_right_encoded : String := "0F34D10200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF07800100128A41010000000000000007128A7D01078000FA128A7CFB000000020AD3577910D13D02067ECE7D0000000512EA5906000000030B4D43FE10804CFF0000000400000007000000050000000110D101020000000100000007128A40FB00000005000000020000000000000004000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000407800100128A410100000000078000FA0000000700000006128A7D01078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060DE7C9FE000000060E5FD8FF000000070000000400000003000000060000000110D10102000000010000000600000006000000000F8750FF07800100128A410100000000078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060B4D43FE00000007108010FF064001000000000712FFAD0108C000FA000000070000000500000000000000040000000313E1C506000000030B4D43FE10804CFF00000004064001000000000612FFAD010000000600000000108010FF0640010012FF71010000000008C000FA11FC24FB000000020BE879B91011AD020115233D0000000713F85906000000030AA6A27E0000000610ED70FF05A001001331350100000000096000FA0000000700000006133171010000000600000000000000040000000110117102000000010000000611FBE8FB0BE879B900000006000000060000000212FFAD0108C000FA11FC24FB000000020BE879B91011AD020115233D13F895060AA6A27E10EDACFF0000000406E001000000000600000005000000050000000313F85906000000030AA6A27E0000000610ED70FF00000005000000040000000110117102000000010000000611FBE8FB0BE879B900000005000000060000000200000000000000040000000110D1010200000001022A457D0000000700000006128A40FB0AD3577910D13D02022A457D13E201060B4D43FE000000070000000500000003000000060000000110D10102000000010000000600000002128A7D01078000FA128A7CFB000000020AD3577910D13D02022A457D13E201060B4D43FE10804CFF0000000408C0010011FBE9010000000008C000FA000000070000000500000005000000050000000313E1C506000000030B4D43FE10804CFF0000000408C001000000000611FC25010000000600000000108010FF08C0010011FBE9010000000008C000FA11FC24FB000000020BE879B9000000051011710200000001000000050000000500000005000000040000000110D1010200000001022A457D13E201060B4D43FE10804CFF0000000400000006000000050000000300000006128A40FB0AD357790000000510D1010200000001000000050000000200000000000000040F34D0FE0000000600000004"
theorem small_9205390_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205390_right_root small_9205390_right_fuel small_9205390_right_count small_9205390_right_encoded = true := by
  decide +kernel
theorem small_9205390_right_covered : CoveredBy scale carrier boxes small_9205390_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205390_right_root small_9205390_right_fuel small_9205390_right_count small_9205390_right_encoded small_9205390_right_checked

theorem cover_9205390 : CoveredBy scale carrier boxes root_9205390 := by
  apply coveredBy_split_literal root_9205390 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205391 small_9205390_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205391
  · exact small_9205390_right_covered
#print axioms cover_9205390

def root_9205384 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205384_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205384_left_fuel : Nat := 1
def small_9205384_left_count : Nat := 1
def small_9205384_left_encoded : String := "00000002"
theorem small_9205384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205384_left_root small_9205384_left_fuel small_9205384_left_count small_9205384_left_encoded = true := by
  decide +kernel
theorem small_9205384_left_covered : CoveredBy scale carrier boxes small_9205384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205384_left_root small_9205384_left_fuel small_9205384_left_count small_9205384_left_encoded small_9205384_left_checked

theorem cover_9205384 : CoveredBy scale carrier boxes root_9205384 := by
  apply coveredBy_split_literal root_9205384 small_9205384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205390 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9205384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205390
#print axioms cover_9205384

def root_9205383 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205383_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205383_right_fuel : Nat := 18
def small_9205383_right_count : Nat := 143
def small_9205383_right_encoded : String := "135D44FB0CFD9BF90F350D02045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF0000000407800100128A410100000000028000FA13D7ECFB00000002067ECE7D000000070000000A00000009128A7D01028000FA0000000A00000005000000000F8750FF0000000500000004000000010F878CF9000000010C9A86FE0F878CFF0000000407800100128A41010000000000000007128A7D0100000005000000000F8750FF00000005000000040F34D0FE0C9A87020F8750F907800100128A41010000000000000007128A7D01028000FA0000000A00000006000000000000000100000007000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF0000000407800100128A410100000000000000080000000A0F8750FF07800100128A410100000000028000FA0000000A000000050000000500000004000000010F878CF9000000010C9A86FE0F878CFF00000004000000060F8750FF07800100128A410100000000028000FA13D7ECFB00000002022A457D0000000513E1C50600000003000000050000000500000005000000040F34D0FE0000000600000004000000010F34D10200000001045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF0000000500000004000000070000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF078001000000000600000005000000040000000600000002"
theorem small_9205383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205383_right_root small_9205383_right_fuel small_9205383_right_count small_9205383_right_encoded = true := by
  decide +kernel
theorem small_9205383_right_covered : CoveredBy scale carrier boxes small_9205383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205383_right_root small_9205383_right_fuel small_9205383_right_count small_9205383_right_encoded small_9205383_right_checked

theorem cover_9205383 : CoveredBy scale carrier boxes root_9205383 := by
  apply coveredBy_split_literal root_9205383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205384 small_9205383_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205384
  · exact small_9205383_right_covered
#print axioms cover_9205383

def root_9205378 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205378_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9205378_right_fuel : Nat := 1
def small_9205378_right_count : Nat := 1
def small_9205378_right_encoded : String := "00000000"
theorem small_9205378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9205378_right_root small_9205378_right_fuel small_9205378_right_count small_9205378_right_encoded = true := by
  decide +kernel
theorem small_9205378_right_covered : CoveredBy scale carrier boxes small_9205378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9205378_right_root small_9205378_right_fuel small_9205378_right_count small_9205378_right_encoded small_9205378_right_checked

theorem cover_9205378 : CoveredBy scale carrier boxes root_9205378 := by
  apply coveredBy_split_literal root_9205378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205383 small_9205378_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205383
  · exact small_9205378_right_covered
#print axioms cover_9205378

def root_9203090 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9203090 : CoveredBy scale carrier boxes root_9203090 := by
  apply coveredBy_split_literal root_9203090 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3447.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9205378 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3447.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9205378
#print axioms cover_9203090

def root_9203084 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203084_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203084_left_fuel : Nat := 1
def small_9203084_left_count : Nat := 1
def small_9203084_left_encoded : String := "00000004"
theorem small_9203084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203084_left_root small_9203084_left_fuel small_9203084_left_count small_9203084_left_encoded = true := by
  decide +kernel
theorem small_9203084_left_covered : CoveredBy scale carrier boxes small_9203084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203084_left_root small_9203084_left_fuel small_9203084_left_count small_9203084_left_encoded small_9203084_left_checked

theorem cover_9203084 : CoveredBy scale carrier boxes root_9203084 := by
  apply coveredBy_split_literal root_9203084 small_9203084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9203090 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9203084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9203090
#print axioms cover_9203084

def root_9203083 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203083_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203083_right_fuel : Nat := 5
def small_9203083_right_count : Nat := 9
def small_9203083_right_encoded : String := "120700FE0500010000000007135D8101050000FA00000007000000060000000000000004"
theorem small_9203083_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203083_right_root small_9203083_right_fuel small_9203083_right_count small_9203083_right_encoded = true := by
  decide +kernel
theorem small_9203083_right_covered : CoveredBy scale carrier boxes small_9203083_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203083_right_root small_9203083_right_fuel small_9203083_right_count small_9203083_right_encoded small_9203083_right_checked

theorem cover_9203083 : CoveredBy scale carrier boxes root_9203083 := by
  apply coveredBy_split_literal root_9203083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9203084 small_9203083_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9203084
  · exact small_9203083_right_covered
#print axioms cover_9203083

def root_9203077 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203077_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9203077_left_fuel : Nat := 1
def small_9203077_left_count : Nat := 1
def small_9203077_left_encoded : String := "00000003"
theorem small_9203077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9203077_left_root small_9203077_left_fuel small_9203077_left_count small_9203077_left_encoded = true := by
  decide +kernel
theorem small_9203077_left_covered : CoveredBy scale carrier boxes small_9203077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9203077_left_root small_9203077_left_fuel small_9203077_left_count small_9203077_left_encoded small_9203077_left_checked

theorem cover_9203077 : CoveredBy scale carrier boxes root_9203077 := by
  apply coveredBy_split_literal root_9203077 small_9203077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9203083 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9203077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9203083
#print axioms cover_9203077

def root_9202875 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202875_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202875_left_fuel : Nat := 23
def small_9202875_left_count : Nat := 97
def small_9202875_left_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D450100000000050000FA00000007135D44FB0000000700000002135D8101050000FA135D80FB000000020CFD9BF90F350D020CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0F878CFF000000040780010000000007128A7D01078000FA00000007128A40FB0000000700000002000000000F8750FF0780010000000009128A7D01078000FA128A7CFB000000020AD3577D000000050000000A000000050000000000000004000000010F878CF9000000010C9A86FE000000070F8750FF0780010000000007128A7D01078000FA0000000700000005000000000000000400000007000000010F34D1020000000100000007135D44FB0CFD9BF90F350D020CFD9BFD000000070F34D106000000030CFD9BFF0F350CFE000000040C9A8702000000090F878CF9000000010C9A86FE000000070000000500000007000000010F34D102000000010000000700000002000000000000000700000003"
theorem small_9202875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202875_left_root small_9202875_left_fuel small_9202875_left_count small_9202875_left_encoded = true := by
  decide +kernel
theorem small_9202875_left_covered : CoveredBy scale carrier boxes small_9202875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202875_left_root small_9202875_left_fuel small_9202875_left_count small_9202875_left_encoded small_9202875_left_checked

theorem cover_9202875 : CoveredBy scale carrier boxes root_9202875 := by
  apply coveredBy_split_literal root_9202875 small_9202875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9203077 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9202875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9203077
#print axioms cover_9202875

def root_9202870 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202870_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202870_right_fuel : Nat := 1
def small_9202870_right_count : Nat := 1
def small_9202870_right_encoded : String := "00000001"
theorem small_9202870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202870_right_root small_9202870_right_fuel small_9202870_right_count small_9202870_right_encoded = true := by
  decide +kernel
theorem small_9202870_right_covered : CoveredBy scale carrier boxes small_9202870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202870_right_root small_9202870_right_fuel small_9202870_right_count small_9202870_right_encoded small_9202870_right_checked

theorem cover_9202870 : CoveredBy scale carrier boxes root_9202870 := by
  apply coveredBy_split_literal root_9202870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202875 small_9202870_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202875
  · exact small_9202870_right_covered
#print axioms cover_9202870

def root_9202869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202869_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202869_right_fuel : Nat := 25
def small_9202869_right_count : Nat := 93
def small_9202869_right_encoded : String := "120701020000000108A912FD00000007120701060000000308A912FF12073CFE0000000405000100135D450100000000050000FA00000007135D44FB0000000700000002135D8101050000FA135D80FB00000002045489F91386AD02045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF07800100128A410100000000078000FA0000000700000006128A7D01078000FA128A7CFB00000002067ECE7912EA9502022A457D00000007000000060000000112EA5902000000010000000600000006000000000000000400000006000000011386710200000001045489FD0000000713867106000000030CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF0780010000000006128A7D0100000006000000000000000400000006135D44FB045489F91386AD02045489FD0000000700000006000000011386710200000001045489FD0000000700000006000000020000000000000007"
theorem small_9202869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202869_right_root small_9202869_right_fuel small_9202869_right_count small_9202869_right_encoded = true := by
  decide +kernel
theorem small_9202869_right_covered : CoveredBy scale carrier boxes small_9202869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202869_right_root small_9202869_right_fuel small_9202869_right_count small_9202869_right_encoded small_9202869_right_checked

theorem cover_9202869 : CoveredBy scale carrier boxes root_9202869 := by
  apply coveredBy_split_literal root_9202869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202870 small_9202869_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202870
  · exact small_9202869_right_covered
#print axioms cover_9202869

def root_9202863 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202863_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202863_left_fuel : Nat := 1
def small_9202863_left_count : Nat := 1
def small_9202863_left_encoded : String := "00000004"
theorem small_9202863_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202863_left_root small_9202863_left_fuel small_9202863_left_count small_9202863_left_encoded = true := by
  decide +kernel
theorem small_9202863_left_covered : CoveredBy scale carrier boxes small_9202863_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202863_left_root small_9202863_left_fuel small_9202863_left_count small_9202863_left_encoded small_9202863_left_checked

theorem cover_9202863 : CoveredBy scale carrier boxes root_9202863 := by
  apply coveredBy_split_literal root_9202863 small_9202863_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202869 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9202863_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202869
#print axioms cover_9202863

def root_9202862 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9202862 : CoveredBy scale carrier boxes root_9202862 := by
  apply coveredBy_split_literal root_9202862 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202863 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3449.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202863
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3449.covered
#print axioms cover_9202862

def root_9202856 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202856_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202856_left_fuel : Nat := 1
def small_9202856_left_count : Nat := 1
def small_9202856_left_encoded : String := "00000003"
theorem small_9202856_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202856_left_root small_9202856_left_fuel small_9202856_left_count small_9202856_left_encoded = true := by
  decide +kernel
theorem small_9202856_left_covered : CoveredBy scale carrier boxes small_9202856_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202856_left_root small_9202856_left_fuel small_9202856_left_count small_9202856_left_encoded small_9202856_left_checked

theorem cover_9202856 : CoveredBy scale carrier boxes root_9202856 := by
  apply coveredBy_split_literal root_9202856 small_9202856_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202862 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9202856_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202862
#print axioms cover_9202856

def root_9202810 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202810_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202810_left_fuel : Nat := 10
def small_9202810_left_count : Nat := 21
def small_9202810_left_encoded : String := "1151E8FD0A0000FE000000071151E8FF08A912F912073D020500010000000007135D8101050000FA00000007135D44FB000000070000000200000000000000011207010200000001000000070000000400000003"
theorem small_9202810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202810_left_root small_9202810_left_fuel small_9202810_left_count small_9202810_left_encoded = true := by
  decide +kernel
theorem small_9202810_left_covered : CoveredBy scale carrier boxes small_9202810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202810_left_root small_9202810_left_fuel small_9202810_left_count small_9202810_left_encoded small_9202810_left_checked

theorem cover_9202810 : CoveredBy scale carrier boxes root_9202810 := by
  apply coveredBy_split_literal root_9202810 small_9202810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202856 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9202810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202856
#print axioms cover_9202810

def root_9202805 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202805_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9202805_right_fuel : Nat := 1
def small_9202805_right_count : Nat := 1
def small_9202805_right_encoded : String := "00000002"
theorem small_9202805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9202805_right_root small_9202805_right_fuel small_9202805_right_count small_9202805_right_encoded = true := by
  decide +kernel
theorem small_9202805_right_covered : CoveredBy scale carrier boxes small_9202805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9202805_right_root small_9202805_right_fuel small_9202805_right_count small_9202805_right_encoded small_9202805_right_checked

theorem cover_9202805 : CoveredBy scale carrier boxes root_9202805 := by
  apply coveredBy_split_literal root_9202805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202810 small_9202805_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202810
  · exact small_9202805_right_covered
#print axioms cover_9202805

def root_9184507 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184507 : CoveredBy scale carrier boxes root_9184507 := by
  apply coveredBy_split_literal root_9184507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9202805 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9202805
#print axioms cover_9184507

def root_9184501 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184501_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9184501_left_fuel : Nat := 1
def small_9184501_left_count : Nat := 1
def small_9184501_left_encoded : String := "00000001"
theorem small_9184501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9184501_left_root small_9184501_left_fuel small_9184501_left_count small_9184501_left_encoded = true := by
  decide +kernel
theorem small_9184501_left_covered : CoveredBy scale carrier boxes small_9184501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9184501_left_root small_9184501_left_fuel small_9184501_left_count small_9184501_left_encoded small_9184501_left_checked

theorem cover_9184501 : CoveredBy scale carrier boxes root_9184501 := by
  apply coveredBy_split_literal root_9184501 small_9184501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184507 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184507
#print axioms cover_9184501

def root_9179625 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9179625 : CoveredBy scale carrier boxes root_9179625 := by
  apply coveredBy_split_literal root_9179625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.root_9179626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9184501 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0219.cover_9179626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9184501
#print axioms cover_9179625

def root_9179619 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179619_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9179619_left_fuel : Nat := 1
def small_9179619_left_count : Nat := 1
def small_9179619_left_encoded : String := "00000000"
theorem small_9179619_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9179619_left_root small_9179619_left_fuel small_9179619_left_count small_9179619_left_encoded = true := by
  decide +kernel
theorem small_9179619_left_covered : CoveredBy scale carrier boxes small_9179619_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9179619_left_root small_9179619_left_fuel small_9179619_left_count small_9179619_left_encoded small_9179619_left_checked

theorem cover_9179619 : CoveredBy scale carrier boxes root_9179619 := by
  apply coveredBy_split_literal root_9179619 small_9179619_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9179625 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9179619_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9179625
#print axioms cover_9179619

def root_9214379 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9214379 : CoveredBy scale carrier boxes root_9214379 := by
  apply coveredBy_split_literal root_9214379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3450.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3451.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3450.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3451.covered
#print axioms cover_9214379

def root_9214373 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214373_left_fuel : Nat := 1
def small_9214373_left_count : Nat := 1
def small_9214373_left_encoded : String := "00000002"
theorem small_9214373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214373_left_root small_9214373_left_fuel small_9214373_left_count small_9214373_left_encoded = true := by
  decide +kernel
theorem small_9214373_left_covered : CoveredBy scale carrier boxes small_9214373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214373_left_root small_9214373_left_fuel small_9214373_left_count small_9214373_left_encoded small_9214373_left_checked

theorem cover_9214373 : CoveredBy scale carrier boxes root_9214373 := by
  apply coveredBy_split_literal root_9214373 small_9214373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9214379 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9214373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9214379
#print axioms cover_9214373

def root_9214372 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214372_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214372_right_fuel : Nat := 21
def small_9214372_right_count : Nat := 319
def small_9214372_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0000000600000008000000030F34D106000000030CFD9BFF000000060F34D0FE028001020000000613D7ECF9000000010AD35781000000080000000600000004138670FA0CFD9BFD000000060F34D1060000000300000006000000020F350D00045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D106000000030CFD9BFF000000060F34D0FE0000000500000004138670FA0CFD9BFD000000060F34D1060000000300000006000000020000000000000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD000000080F34D106000000030CFD9BFF0000000800000008000000080F350D00045489FB1386ACFA000000020CFD9BFD0F350D060CFD9BFF0000000800000008000000030F34D106000000030CFD9BFF0F350CFE00000004000000080F34D0FE0C9A87000F87510100000000000000050F878D01000000080000000000000004138670FA0CFD9BFD000000080F34D106000000030CFD9BFF00000008000000080000000200000000120700FE05000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D06045489FF1386ACFE0000000400000008000000050000000300000005000000050000000500000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFD0F350D0600000008000000030F34D10600000003045489FF0000000900000005000000080F350D00045489FB1386ACFA000000020CFD9BFD0F350D0600000005000000030000000500000005000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F90CFD9C010F34D10000000000045489FB1386ACFA00000002045489FD1386AD060CFD9BFF000000070F34D0FE000000090000000400000003138671060000000300000009138670FA045489FD1386AD060CFD9BFF00000006000000090000000300000009000000020F350D00045489FB1386ACFA00000002045489FD1386AD060CFD9BFF00000006000000050000000313867106000000030CFD9BFF0F350CFE000000040000000600000005138670FA00000005000000020000000000000001135D80F9000000010CFD9C010F34D10000000000045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE00000009000000080F34D0FE00000009000000040000000300000009138670FA045489FD1386AD060CFD9BFF00000008000000080000000300000009000000020F350D00045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FE00000006000000060F878D010C9A86FE0F878CFF0000000407800102000000060000000800000006000000000F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87000F87510100000000000000050F878D0100000009000000000F34D0FE0000000500000004138670FA045489FD1386AD060CFD9BFF0F350CFE00000004000000080000000500000003000000050000000200000000120700FE0500010200000005135D80F900000001000000050000000400000002"
theorem small_9214372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214372_right_root small_9214372_right_fuel small_9214372_right_count small_9214372_right_encoded = true := by
  decide +kernel
theorem small_9214372_right_covered : CoveredBy scale carrier boxes small_9214372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214372_right_root small_9214372_right_fuel small_9214372_right_count small_9214372_right_encoded small_9214372_right_checked

theorem cover_9214372 : CoveredBy scale carrier boxes root_9214372 := by
  apply coveredBy_split_literal root_9214372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9214373 small_9214372_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9214373
  · exact small_9214372_right_covered
#print axioms cover_9214372

def root_9214367 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214367_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9214367_right_fuel : Nat := 1
def small_9214367_right_count : Nat := 1
def small_9214367_right_encoded : String := "00000000"
theorem small_9214367_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9214367_right_root small_9214367_right_fuel small_9214367_right_count small_9214367_right_encoded = true := by
  decide +kernel
theorem small_9214367_right_covered : CoveredBy scale carrier boxes small_9214367_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9214367_right_root small_9214367_right_fuel small_9214367_right_count small_9214367_right_encoded small_9214367_right_checked

theorem cover_9214367 : CoveredBy scale carrier boxes root_9214367 := by
  apply coveredBy_split_literal root_9214367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9214372 small_9214367_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9214372
  · exact small_9214367_right_covered
#print axioms cover_9214367

def root_9213823 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213823_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213823_left_fuel : Nat := 20
def small_9213823_left_count : Nat := 255
def small_9213823_left_encoded : String := "120701000000000008A912FB12073CFA0000000208A912FD12073D0608A912FF12073CFE0000000405000102135D44F904548A010000000A1386AD000CFD9BFB0000000A0F34D0FA0CFD9BFD0000000A0000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB0000000A0F34D0FA00000008000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030000000A0F34D0FA0CFD9BFD000000080F34D106000000030CFD9BFF0F350CFE00000004000000080000000A0000000200000000120700FE05000102135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060000000A000000030000000A0F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0F8750FB0000000A0000000200000004000000030000000A0F34D0FA0CFD9BFD0F350D060000000A000000030000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB0000000A0F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0F8750FB0000000A0000000200000004000000030000000A0F34D0FA0CFD9BFD0F350D0600000008000000030000000A00000002000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F904548A010000000A1386AD000CFD9BFB0000000A0F34D0FA0000000A000000020000000000000001135D80F90000000104548A0113867100000000000CFD9BFB000000090F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020000000A0F34D0FA000000090000000200000000120700FE050001020000000A0000000900000004120700FA08A912FD12073D0608A912FF12073CFE0000000405000102135D44F904548A01000000081386AD00045489FB1386ACFA000000020CFD9BFD000000080F34D106000000030CFD9BFF000000060000000800000008000000000000000100000008120700FE05000102135D44F904548A01000000091386AD00045489FB1386ACFA000000020CFD9BFD0F350D06000000080000000300000009138670FA00000009000000020000000000000001135D80F90000000104548A01000000081386AD00045489FB1386ACFA000000020CFD9BFD000000080000000900000008000000000000000400000003120701060000000308A912FF12073CFE0000000405000102135D44F904548A01000000071386AD00045489FB0000000900000007000000000000000100000009120700FE000000090000000400000002"
theorem small_9213823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213823_left_root small_9213823_left_fuel small_9213823_left_count small_9213823_left_encoded = true := by
  decide +kernel
theorem small_9213823_left_covered : CoveredBy scale carrier boxes small_9213823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213823_left_root small_9213823_left_fuel small_9213823_left_count small_9213823_left_encoded small_9213823_left_checked

theorem cover_9213823 : CoveredBy scale carrier boxes root_9213823 := by
  apply coveredBy_split_literal root_9213823 small_9213823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9214367 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9213823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9214367
#print axioms cover_9213823

def root_9213817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213817_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213817_left_fuel : Nat := 1
def small_9213817_left_count : Nat := 1
def small_9213817_left_encoded : String := "00000004"
theorem small_9213817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213817_left_root small_9213817_left_fuel small_9213817_left_count small_9213817_left_encoded = true := by
  decide +kernel
theorem small_9213817_left_covered : CoveredBy scale carrier boxes small_9213817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213817_left_root small_9213817_left_fuel small_9213817_left_count small_9213817_left_encoded small_9213817_left_checked

theorem cover_9213817 : CoveredBy scale carrier boxes root_9213817 := by
  apply coveredBy_split_literal root_9213817 small_9213817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213823 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9213817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213823
#print axioms cover_9213817

def root_9213816 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213816_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213816_right_fuel : Nat := 21
def small_9213816_right_count : Nat := 255
def small_9213816_right_encoded : String := "1151E8FF08A91301120701000000000008A912FB12073CFA0000000208A912FD12073D06050001020000000A000000050000000312070106000000030500010200000007135D80F900000001050000FE0000000700000005120700FA08A912FD000000081207010600000003000000070000000212073D0008A912FB12073CFA0000000208A912FD12073D0605000102135D44F9050000FE135D80FF000000040CFD9C010F34D100000000000CFD9BFB0000000A0F34D0FA00000006000000020F350D000CFD9BFB000000060F34D0FA000000060000000200000000135D44FF0CFD9C010F34D1000000000000000006000000060000000400000001135D80F900000001050000FE135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA00000002000000050F34D0FA00000008000000020F350D000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A87000F87510100000000000000060F878D010000000500000000000000030F34D106000000030C9A87000F87510100000000000000060F878D0100000005000000000F34D0FA0CFD9BFD000000060F34D10600000003000000060000000200000000135D44FF0CFD9C010F34D10000000000000000050F350D000CFD9BFB0F350CFA000000020CFD9BFD000000050F34D10600000003000000050F34D0FA0000000600000002000000000000000400000003120701060000000305000102135D44F9050000FE135D80FF000000040CFD9C010F34D10000000000000000070F350D000CFD9BFB000000060F34D0FA000000060000000200000000135D44FF0CFD9C0100000007000000060000000400000001135D80F900000001050000FE135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA0000000200000007000000070F350D000CFD9BFB0F350CFA00000002045489FD1386AD060C9A87000F87510100000000000000060F878D010C9A86FA0000000600000005000000000000000313867106000000030C9A87000F875101000000000C9A86FA0000000600000007000000070F34D0FA045489FD0000000613867106000000030C9A870000000007000000060000000200000000135D44FF0CFD9C010F34D100000000000CFD9BFB00000005000000070F350D000CFD9BFB000000060F34D0FA00000006000000020000000000000004120700FA08A912FD12073D0605000102135D44F900000006000000010000000800000003120701060000000305000102135D44F9050000FE000000060000000600000001135D80F900000001050000FE135D80FF000000040CFD9C010F34D10000000000000000080F350D00045489FB00000006138670FA000000060000000200000000135D44FF0000000800000004000000020000000000000004"
theorem small_9213816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213816_right_root small_9213816_right_fuel small_9213816_right_count small_9213816_right_encoded = true := by
  decide +kernel
theorem small_9213816_right_covered : CoveredBy scale carrier boxes small_9213816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213816_right_root small_9213816_right_fuel small_9213816_right_count small_9213816_right_encoded small_9213816_right_checked

theorem cover_9213816 : CoveredBy scale carrier boxes root_9213816 := by
  apply coveredBy_split_literal root_9213816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213817 small_9213816_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213817
  · exact small_9213816_right_covered
#print axioms cover_9213816

def root_9213810 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213810_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213810_left_fuel : Nat := 1
def small_9213810_left_count : Nat := 1
def small_9213810_left_encoded : String := "00000003"
theorem small_9213810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213810_left_root small_9213810_left_fuel small_9213810_left_count small_9213810_left_encoded = true := by
  decide +kernel
theorem small_9213810_left_covered : CoveredBy scale carrier boxes small_9213810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213810_left_root small_9213810_left_fuel small_9213810_left_count small_9213810_left_encoded small_9213810_left_checked

theorem cover_9213810 : CoveredBy scale carrier boxes root_9213810 := by
  apply coveredBy_split_literal root_9213810 small_9213810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213816 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9213810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213816
#print axioms cover_9213810

def root_9213124 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213124_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213124_left_fuel : Nat := 25
def small_9213124_left_count : Nat := 321
def small_9213124_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF12073CFE0000000405000102135D44F905000106135D44FD0000000800000003135D80FD0000000304548A01000000051386AD000CFD9BFB00000005000000080000000000000001135D80F90000000100000008120700FE05000102135D44F905000106135D44FD04548A01000000081386AD00000000080000000000000003135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA00000002045489FF0000000500000008000000081386AD000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0000000A0F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002000000080F8750FB0280010213D7B0F907800106000000070000000A000000010000000700000002000000040F34D0FA00000008000000020000000000000001135D80F90000000105000106000000080000000800000004120700FA000000080000000212073D0008A912FB12073CFA0000000208A912FF12073CFE0000000405000102135D44F905000106135D44FD0CFD9C010F34D100000000000CFD9BFB0000000A0F34D0FA00000008000000020F350D000CFD9BFB0000000A0F34D0FA0000000A000000020000000000000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0000000A0F34D0FA00000008000000020F350D000CFD9BFB0F350CFA000000020CFD9BFF0F350CFE000000040000000A0000000A0F34D0FA0CFD9BFF000000060F34D0FE0000000600000004000000020000000000000001135D80F90000000105000106135D44FD0CFD9C010F34D10000000000000000080F350D000CFD9BFB000000070F34D0FA00000008000000020000000000000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A000000080F350D000CFD9BFB0F350CFA000000020CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA00000007000000090F878D0100000008000000000F34D0FE00000007000000040F34D0FA000000080000000200000000120700FE05000102135D44F905000106135D44FD0CFD9C010F34D100000000000CFD9BFB000000070F34D0FA00000007000000020000000700000003135D80FD000000030CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0000000A0F8750FB0000000A00000002000000070F34D0FA045489FF0000000800000007000000020F350D000CFD9BFB000000070F34D0FA00000007000000020000000000000001135D80F9000000010500010600000007135D80FD000000030CFD9C010F34D100000000000CFD9BFB00000007000000080000000700000004120700FA08A912FF12073CFE0000000405000102135D44F90500010600000008135D80FD000000030CFD9C0100000008000000060000000100000008120700FE05000102135D44F90500010600000008135D80FD000000030CFD9C01000000080000000500000001000000080000000400000002000000001151E8FF08A913010000000812073D0008A912FB12073CFA0000000205000102135D44F9050001060000000A135D80FD00000003050000FE135D80FF000000040CFD9C0100000005000000060000000600000001135D80F900000001050001060000000800000008120700FA0000000800000002000000000000000400000003"
theorem small_9213124_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213124_left_root small_9213124_left_fuel small_9213124_left_count small_9213124_left_encoded = true := by
  decide +kernel
theorem small_9213124_left_covered : CoveredBy scale carrier boxes small_9213124_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213124_left_root small_9213124_left_fuel small_9213124_left_count small_9213124_left_encoded small_9213124_left_checked

theorem cover_9213124 : CoveredBy scale carrier boxes root_9213124 := by
  apply coveredBy_split_literal root_9213124 small_9213124_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213810 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9213124_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213810
#print axioms cover_9213124

def root_9213118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213118_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213118_left_fuel : Nat := 1
def small_9213118_left_count : Nat := 1
def small_9213118_left_encoded : String := "00000002"
theorem small_9213118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213118_left_root small_9213118_left_fuel small_9213118_left_count small_9213118_left_encoded = true := by
  decide +kernel
theorem small_9213118_left_covered : CoveredBy scale carrier boxes small_9213118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213118_left_root small_9213118_left_fuel small_9213118_left_count small_9213118_left_encoded small_9213118_left_checked

theorem cover_9213118 : CoveredBy scale carrier boxes root_9213118 := by
  apply coveredBy_split_literal root_9213118 small_9213118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213124 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9213118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213124
#print axioms cover_9213118

def root_9213117 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9213117 : CoveredBy scale carrier boxes root_9213117 := by
  apply coveredBy_split_literal root_9213117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3452.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3452.covered
#print axioms cover_9213117

def root_9213112 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213112_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9213112_right_fuel : Nat := 1
def small_9213112_right_count : Nat := 1
def small_9213112_right_encoded : String := "00000001"
theorem small_9213112_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9213112_right_root small_9213112_right_fuel small_9213112_right_count small_9213112_right_encoded = true := by
  decide +kernel
theorem small_9213112_right_covered : CoveredBy scale carrier boxes small_9213112_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9213112_right_root small_9213112_right_fuel small_9213112_right_count small_9213112_right_encoded small_9213112_right_checked

theorem cover_9213112 : CoveredBy scale carrier boxes root_9213112 := by
  apply coveredBy_split_literal root_9213112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9213117 small_9213112_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9213117
  · exact small_9213112_right_covered
#print axioms cover_9213112

def root_9223632 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223632_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223632_left_fuel : Nat := 15
def small_9223632_left_count : Nat := 131
def small_9223632_left_encoded : String := "0F34D100000000000CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA0F878CFB000000020C9A86FE000000090000000A0F8750FB0000000500000002000000010F878CF9000000010C9A86FA0F878CFB000000020C9A86FE00000009000000080F8750FB00000005000000020F34D0FE0C9A87020F8750F90C9A86FA000000090F8750FB0000000900000002000000010F878CF9000000010C9A86FA000000090F8750FB0000000900000002000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A87020F8750F90000000900000001000000090F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE000000090000000800000001000000080F34D0FE00000009000000040000000313867106000000030CFD9BFF000000090000000900000002000000010F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000080F8750FB00000005000000020F34D0FE0C9A86FA000000090F8750FB0000000900000002000000040000000313867106000000030CFD9BFF000000090F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF0000000800000008000000030000000900000002"
theorem small_9223632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9223632_left_root small_9223632_left_fuel small_9223632_left_count small_9223632_left_encoded = true := by
  decide +kernel
theorem small_9223632_left_covered : CoveredBy scale carrier boxes small_9223632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9223632_left_root small_9223632_left_fuel small_9223632_left_count small_9223632_left_encoded small_9223632_left_checked

theorem cover_9223632 : CoveredBy scale carrier boxes root_9223632 := by
  apply coveredBy_split_literal root_9223632 small_9223632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3453.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9223632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3453.covered
#print axioms cover_9223632

def root_9223626 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223626_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223626_left_fuel : Nat := 1
def small_9223626_left_count : Nat := 1
def small_9223626_left_encoded : String := "00000004"
theorem small_9223626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9223626_left_root small_9223626_left_fuel small_9223626_left_count small_9223626_left_encoded = true := by
  decide +kernel
theorem small_9223626_left_covered : CoveredBy scale carrier boxes small_9223626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9223626_left_root small_9223626_left_fuel small_9223626_left_count small_9223626_left_encoded small_9223626_left_checked

theorem cover_9223626 : CoveredBy scale carrier boxes root_9223626 := by
  apply coveredBy_split_literal root_9223626 small_9223626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9223632 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9223626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9223632
#print axioms cover_9223626

def root_9223625 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223625_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223625_right_fuel : Nat := 18
def small_9223625_right_count : Nat := 163
def small_9223625_right_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A87020F8750F9000000090000000100000009138670FE0C9A87020000000A000000060000000400000003000000090F34D0FA0000000900000002000000010F34D102000000010CFD9BFB0F350CFA00000002045489FD1386AD06045489FF000000090000000600000003000000060F34D0FA00000009000000020F350D000CFD9BF90F350D020CFD9BFB0F350CFA00000002045489FD1386AD06045489FF1386ACFE000000040C9A87000F875101000000000C9A87020F8750F90C9A86FA000000070F8750FB000000070000000200000001000000070F878D010C9A87020F8750F90C9A86FA000000090F8750FB0000000A00000002000000010F878CF9000000010C9A86FA000000070F8750FB00000007000000020000000000000007000000031386710600000003045489FF1386ACFE000000040C9A87000F875101000000000C9A87020F8750F90C9A86FA000000050F8750FB0000000600000002000000010F878CF9000000010C9A86FA00000005000000060F878D010C9A8702000000090000000900000000138670FE0C9A8700000000050F878D010000000600000000000000040F34D0FA045489FD1386AD06045489FF1386ACFE000000040C9A8700000000050F878D010C9A870200000005000000090000000000000005000000030000000500000002000000010F34D102000000010CFD9BFB0F350CFA00000002045489FD000000071386710600000003045489FF1386ACFE000000040C9A8700000000060F878D010000000600000000000000060F34D0FA045489FD0000000700000005000000020000000000000004"
theorem small_9223625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9223625_right_root small_9223625_right_fuel small_9223625_right_count small_9223625_right_encoded = true := by
  decide +kernel
theorem small_9223625_right_covered : CoveredBy scale carrier boxes small_9223625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9223625_right_root small_9223625_right_fuel small_9223625_right_count small_9223625_right_encoded small_9223625_right_checked

theorem cover_9223625 : CoveredBy scale carrier boxes root_9223625 := by
  apply coveredBy_split_literal root_9223625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9223626 small_9223625_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9223626
  · exact small_9223625_right_covered
#print axioms cover_9223625

def root_9223619 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223619_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9223619_left_fuel : Nat := 1
def small_9223619_left_count : Nat := 1
def small_9223619_left_encoded : String := "00000003"
theorem small_9223619_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9223619_left_root small_9223619_left_fuel small_9223619_left_count small_9223619_left_encoded = true := by
  decide +kernel
theorem small_9223619_left_covered : CoveredBy scale carrier boxes small_9223619_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9223619_left_root small_9223619_left_fuel small_9223619_left_count small_9223619_left_encoded small_9223619_left_checked

theorem cover_9223619 : CoveredBy scale carrier boxes root_9223619 := by
  apply coveredBy_split_literal root_9223619 small_9223619_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.root_9223625 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9223619_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220.cover_9223625
#print axioms cover_9223619

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0220
