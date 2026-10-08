import TaoBundleAssembly0626
import TaoBundleChunkBatch0860
import TaoBundleChunkBatch0861
import TaoBundleChunkBatch0862
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627
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
  apply coveredBy_split_literal root_9190222 small_9190222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.root_9190808 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9190222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0626.cover_9190808
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
  apply coveredBy_split_literal root_9190216 small_9190216_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9190222 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9190216_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9190222
#print axioms cover_9190216

def root_9188160 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9188160 : CoveredBy scale carrier boxes root_9188160 := by
  apply coveredBy_split_literal root_9188160 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3441.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9190216 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3441.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9190216
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
  apply coveredBy_split_literal root_9188154 small_9188154_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9188160 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9188154_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9188160
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
  apply coveredBy_split_literal root_9188153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9188154 small_9188153_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9188154
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
  apply coveredBy_split_literal root_9188147 small_9188147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9188153 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9188147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9188153
#print axioms cover_9188147

def root_9186621 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9186621 : CoveredBy scale carrier boxes root_9186621 := by
  apply coveredBy_split_literal root_9186621 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3440.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9188147 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3440.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9188147
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
  apply coveredBy_split_literal root_9186615 small_9186615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186621 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9186615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186621
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
  apply coveredBy_split_literal root_9186614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186615 small_9186614_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186615
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
  apply coveredBy_split_literal root_9186609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186614 small_9186609_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186614
  · exact small_9186609_right_covered
#print axioms cover_9186609

def root_9186608 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9186608 : CoveredBy scale carrier boxes root_9186608 := by
  apply coveredBy_split_literal root_9186608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3445.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186609
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
  apply coveredBy_split_literal root_9186603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186608 small_9186603_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186608
  · exact small_9186603_right_covered
#print axioms cover_9186603

def root_9184979 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184979 : CoveredBy scale carrier boxes root_9184979 := by
  apply coveredBy_split_literal root_9184979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3439.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9186603 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3439.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9186603
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
  apply coveredBy_split_literal root_9184973 small_9184973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184979 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9184973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184979
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
  apply coveredBy_split_literal root_9184972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184973 small_9184972_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184973
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
  apply coveredBy_split_literal root_9184966 small_9184966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184972 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9184966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184972
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
  apply coveredBy_split_literal root_9184628 small_9184628_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184966 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9184628_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184966
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
  apply coveredBy_split_literal root_9184622 small_9184622_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184628 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9184622_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184628
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
  apply coveredBy_split_literal root_9184621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184622 small_9184621_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184622
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
  apply coveredBy_split_literal root_9184616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184621 small_9184616_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184621
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
  apply coveredBy_split_literal root_9184615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184616 small_9184615_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184616
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
  apply coveredBy_split_literal root_9184609 small_9184609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184615 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184615
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
  apply coveredBy_split_literal root_9199576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9199581 small_9199576_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9199581
  · exact small_9199576_right_covered
#print axioms cover_9199576

def root_9184608 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9184608 : CoveredBy scale carrier boxes root_9184608 := by
  apply coveredBy_split_literal root_9184608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9199576 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9199576
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
  apply coveredBy_split_literal root_9184602 small_9184602_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184608 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184602_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184608
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
  apply coveredBy_split_literal root_9184514 small_9184514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184602 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9184514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184602
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
  apply coveredBy_split_literal root_9184508 small_9184508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9184514 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9184508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9184514
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
  apply coveredBy_split_literal root_9205904 small_9205904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9205910 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9205904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9205910
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
  apply coveredBy_split_literal root_9205396 small_9205396_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9205904 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9205396_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9205904
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
  apply coveredBy_split_literal root_9205391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.root_9205396 small_9205391_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627.cover_9205396
  · exact small_9205391_right_covered
#print axioms cover_9205391

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0627
