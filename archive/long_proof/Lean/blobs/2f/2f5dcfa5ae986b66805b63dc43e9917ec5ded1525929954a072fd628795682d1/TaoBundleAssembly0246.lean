import TaoBundleAssembly0245
import TaoBundleChunkBatch0336
import TaoBundleChunkBatch0337
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246
def root_3531214 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3531214_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3531214_left_fuel : Nat := 22
def small_3531214_left_count : Nat := 489
def small_3531214_left_encoded : String := "0A0000F6115225010A0000F8115225030A0001041151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A91301120700F608A9130300000005000000060000000012073CF60000000008A91303000000050000000900000005115225070A0000FE115224FF00000004000000051151E8FF08A91301120700F6000000050000000000000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A91301120700F608A913030000000512073CF80000000108A912FB000000051207010400000002000000080000000012073CF60000000008A913030000000812073CF80000000108A912FB000000061207010400000002000000081151E8FF0000000500000004115225070A0000FE115224FF0000000408A91301120700F6000000050000000012073CF60000000008A91303120700F8000000050000000112073CF80000000108A912FB12073D0408A913070000000512073D0608A912FF00000005000000060000000300000002120701040000000208A91307120701060000000308A912FF0000000500000006000000061151E8FF08A91301120700F608A91303120700F80000000500000001000000050000000012073CF60000000008A91303120700F8000000050000000112073CF80000000108A912FB00000005120701040000000208A9130700000005000000080000000400000003000000011151E903000000010A0001041151E8FB0A0001061151E9070000000300000006115225070A0000FE000000051151E8FF00000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A913010000000912073CF60000000008A912FB12073D0408A912FF000000050000000600000002000000091151E8FF08A91301120700F600000005000000000000000600000004115225070A0000FE115224FF0000000408A91301120700F608A912FB000000071207010400000002000000070000000012073CF60000000008A912FB12073D0408A913071207010600000003000000070000000600000002120701040000000208A9130712070106000000030000000612073D0608A912FF0000000600000006000000031151E8FF08A91301120700F608A912FB00000005000000060000000012073CF60000000008A912FB12073D0408A9130712070106000000030000000712073D06000000060000000300000002120701040000000208A91307120701060000000300000007000000060000000400000003000000001151E901000000000A0000F8115225030A0001041151E8FB0A0001061151E907000000030A0000FE000000081151E8FF0000000500000004115225070A0000FE000000051151E8FF00000005000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A91303120700F808A912FB000000081207010400000002000000080000000112073CF80000000108A912FB12073D0408A91307120701060000000308A912FF00000005000000080000000800000002120701040000000208A913070000000A000000081151E8FF08A91303120700F8000000080000000112073CF80000000108A912FB12073D0408A913071207010600000003050000F6000000050000000800000008000000021207010400000002000000080000000400000003000000011151E903000000010A0001041151E8FB0A0001061151E907000000030A0000FE115224FF00000004000000061151E8FF0000000500000004115225070A0000FE115224FF0000000408A913070000000912073D0608A912FF12073CFE00000004050000F6000000050000000800000009000000031151E8FF08A9130712070106000000030000000912073D06050000F600000005135D450100000000050000F800000005135D45030000000105000104000000050000000800000003000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912FB000000081207010400000002000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A912FB12073D0408A91307120701060000000308A912FF000000090000000912073D0608A912FF00000008000000060000000300000002120701040000000208A91307120701060000000308A912FF000000090000000612073D0608A912FF0000000800000006000000031151E8FF08A912FB12073D0408A913071207010600000003050000F6135D8101050000F8135D8103050000FE00000005135D44FF0CFD9BFB00000008000000090000000400000001135D450300000001050000FE00000007135D44FF000000090000000400000000135D450100000000050000F800000008135D450300000001050000FE00000008135D44FF000000090000000412073D06050000F6135D8101050000F8000000080000000600000000135D450100000000000000080000000300000002120701040000000208A913071207010600000003050000F6135D8101050000F800000008135D4503000000010000000700000000135D450100000000050000F80000000800000009000000080000000400000003"
theorem small_3531214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3531214_left_root small_3531214_left_fuel small_3531214_left_count small_3531214_left_encoded = true := by
  decide +kernel
theorem small_3531214_left_covered : CoveredBy scale carrier boxes small_3531214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3531214_left_root small_3531214_left_fuel small_3531214_left_count small_3531214_left_encoded small_3531214_left_checked

theorem cover_3531214 : CoveredBy scale carrier boxes root_3531214 := by
  apply coveredBy_split_literal root_3531214 small_3531214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3532256 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_3531214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3532256
#print axioms cover_3531214

def root_3545712 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545712_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545712_left_fuel : Nat := 24
def small_3545712_left_count : Nat := 175
def small_3545712_left_encoded : String := "10804D010B4D43F80000000510801103000000010DE7CA04000000050E6014FB000000020DE7CA08000000050E6014FF000000040115234713F85906000000030DAED87B0E9661040DAED87F0E96610800000005000000040E962508000000040BF3E576000000051008ED01000000000AA6A2780000000510ED710300000001008A922713FDF906000000030E0776BB0E41390400000005000000020E40FD04000000020D563A3F0EE78D0800000005000000040EE75108000000040000000A0000000A000000020E962504000000020DAED87F0E9661080BF3E576000000051008ED01000000000AA6A2780000000510ED71030000000100000006000000040E962508000000040BF3E576100929010AA6A2780000000500000006000000001008ED01000000000AA6A27810EDAD03008A922713FDF906000000030D563A3B0EE78D0400000005000000020EE75104000000020D563A3F0EE78D0800000005000000040EE75108000000040000000913FE35060D563A3B0EE78D0400000005000000020EE75104000000020D563A3F0EE78D08000000050000000400000006000000030000000110ED710300000001008A922713FDF906000000030D563A3B0EE78D040D563A3F0EE78D0800000006000000040000000600000002000000060000000613F895060DAED87B0E9661040DAED87F0E96610800000005000000040E962508000000040BF3E576000000051008ED01000000000AA6A278000000050000000A000000020E962504000000020DAED87F0E9661080BF3E576000000051008ED01000000000AA6A2780000000500000006000000040E962508000000040BF3E5761009290100000006000000001008ED01000000000AA6A27810EDAD03019FB46713EEF906000000030D563A3B0EE78D0400000005000000020EE7510400000002000000060000000600000001000000060000000300000000"
theorem small_3545712_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545712_left_root small_3545712_left_fuel small_3545712_left_count small_3545712_left_encoded = true := by
  decide +kernel
theorem small_3545712_left_covered : CoveredBy scale carrier boxes small_3545712_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545712_left_root small_3545712_left_fuel small_3545712_left_count small_3545712_left_encoded small_3545712_left_checked

theorem cover_3545712 : CoveredBy scale carrier boxes root_3545712 := by
  apply coveredBy_split_literal root_3545712 small_3545712_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1344.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_3545712_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1344.covered
#print axioms cover_3545712

def root_3545706 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545706_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545706_left_fuel : Nat := 1
def small_3545706_left_count : Nat := 1
def small_3545706_left_encoded : String := "00000003"
theorem small_3545706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545706_left_root small_3545706_left_fuel small_3545706_left_count small_3545706_left_encoded = true := by
  decide +kernel
theorem small_3545706_left_covered : CoveredBy scale carrier boxes small_3545706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545706_left_root small_3545706_left_fuel small_3545706_left_count small_3545706_left_encoded small_3545706_left_checked

theorem cover_3545706 : CoveredBy scale carrier boxes root_3545706 := by
  apply coveredBy_split_literal root_3545706 small_3545706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545712 coord3 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_3545706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545712
#print axioms cover_3545706

def root_3545705 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545705_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545705_right_fuel : Nat := 20
def small_3545705_right_count : Nat := 181
def small_3545705_right_encoded : String := "13E201060B4D43F610804D010B4D43F810804D030DE7CA04000000050E6014FB000000020DE7CA08000000050E6014FF00000004033F67C70000000513BC310600000005000000030000000110801103000000010DE7CA040E5FD8FB00000005000000020E6014FB000000020DE7CA080E5FD8FF00000005000000040E6014FF00000004033F67C713BBF506000000030DAED87B0E9661040000000A000000020E96250400000002000000060000000A0000000010801101000000000B4D43F810804D030DE7CA040E5FD8FB00000005000000020E6014FB000000020DE7CA08000000080E6014FF00000004033F67C713BBF506000000030DAED87B0E9661040DAED87F000000080E9625080000000400000007000000020E962504000000020DAED87F0000000800000008000000080000000110801103000000010DE7CA040E5FD8FB0DE7CA080E5FD8FF00000005000000040E6014FF00000004033F67C713BBF506000000030DAED87F0000000A0E962508000000040000000A0000000A000000020E6014FB000000020DE7CA080E5FD8FF033F67C713BBF506000000030DAED87B000000080E962504000000020000000800000008000000040E6014FF00000004033F67C713BBF506000000030DAED87B0E9661040DAED87F0E9661080AA6A27610EDAD010000000A0000000010ED7101000000000AA6A2780000000810ED71030000000100000008000000040E962508000000040AA6A27610EDAD010000000A0000000000000007000000020E962504000000020DAED87F0E9661080AA6A27610EDAD01000000060000000010ED71010000000000000008000000040E962508000000040AA6A27610EDAD010AA6A27810EDAD03000000060000000100000006000000000000000713BC31060DAED87B0E9661040DAED87F0000000A0E9625080000000400000007000000020E962504000000020DAED87F0E9661080000000600000004000000060000000300000003"
theorem small_3545705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545705_right_root small_3545705_right_fuel small_3545705_right_count small_3545705_right_encoded = true := by
  decide +kernel
theorem small_3545705_right_covered : CoveredBy scale carrier boxes small_3545705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545705_right_root small_3545705_right_fuel small_3545705_right_count small_3545705_right_encoded small_3545705_right_checked

theorem cover_3545705 : CoveredBy scale carrier boxes root_3545705 := by
  apply coveredBy_split_literal root_3545705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545706 small_3545705_right_root coord3 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545706
  · exact small_3545705_right_covered
#print axioms cover_3545705

def root_3545699 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545699_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545699_left_fuel : Nat := 1
def small_3545699_left_count : Nat := 1
def small_3545699_left_encoded : String := "00000004"
theorem small_3545699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545699_left_root small_3545699_left_fuel small_3545699_left_count small_3545699_left_encoded = true := by
  decide +kernel
theorem small_3545699_left_covered : CoveredBy scale carrier boxes small_3545699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545699_left_root small_3545699_left_fuel small_3545699_left_count small_3545699_left_encoded small_3545699_left_checked

theorem cover_3545699 : CoveredBy scale carrier boxes root_3545699 := by
  apply coveredBy_split_literal root_3545699 small_3545699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545705 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_3545699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545705
#print axioms cover_3545699

def root_3545691 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545691_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545691_left_fuel : Nat := 2
def small_3545691_left_count : Nat := 3
def small_3545691_left_encoded : String := "0F8750FF0000000500000004"
theorem small_3545691_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545691_left_root small_3545691_left_fuel small_3545691_left_count small_3545691_left_encoded = true := by
  decide +kernel
theorem small_3545691_left_covered : CoveredBy scale carrier boxes small_3545691_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545691_left_root small_3545691_left_fuel small_3545691_left_count small_3545691_left_encoded small_3545691_left_checked

theorem cover_3545691 : CoveredBy scale carrier boxes root_3545691 := by
  apply coveredBy_split_literal root_3545691 small_3545691_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545699 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3545691_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545699
#print axioms cover_3545691

def root_3545685 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545685_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545685_left_fuel : Nat := 1
def small_3545685_left_count : Nat := 1
def small_3545685_left_encoded : String := "00000002"
theorem small_3545685_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545685_left_root small_3545685_left_fuel small_3545685_left_count small_3545685_left_encoded = true := by
  decide +kernel
theorem small_3545685_left_covered : CoveredBy scale carrier boxes small_3545685_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545685_left_root small_3545685_left_fuel small_3545685_left_count small_3545685_left_encoded small_3545685_left_checked

theorem cover_3545685 : CoveredBy scale carrier boxes root_3545685 := by
  apply coveredBy_split_literal root_3545685 small_3545685_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545691 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_3545685_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545691
#print axioms cover_3545685

def root_3545677 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545677_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545677_left_fuel : Nat := 2
def small_3545677_left_count : Nat := 3
def small_3545677_left_encoded : String := "0F8750FB0000000500000002"
theorem small_3545677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545677_left_root small_3545677_left_fuel small_3545677_left_count small_3545677_left_encoded = true := by
  decide +kernel
theorem small_3545677_left_covered : CoveredBy scale carrier boxes small_3545677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545677_left_root small_3545677_left_fuel small_3545677_left_count small_3545677_left_encoded small_3545677_left_checked

theorem cover_3545677 : CoveredBy scale carrier boxes root_3545677 := by
  apply coveredBy_split_literal root_3545677 small_3545677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545685 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3545677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545685
#print axioms cover_3545677

def root_3545671 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545671_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545671_left_fuel : Nat := 1
def small_3545671_left_count : Nat := 1
def small_3545671_left_encoded : String := "00000001"
theorem small_3545671_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545671_left_root small_3545671_left_fuel small_3545671_left_count small_3545671_left_encoded = true := by
  decide +kernel
theorem small_3545671_left_covered : CoveredBy scale carrier boxes small_3545671_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545671_left_root small_3545671_left_fuel small_3545671_left_count small_3545671_left_encoded small_3545671_left_checked

theorem cover_3545671 : CoveredBy scale carrier boxes root_3545671 := by
  apply coveredBy_split_literal root_3545671 small_3545671_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545677 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_3545671_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545677
#print axioms cover_3545671

def root_3545621 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545621_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545621_left_fuel : Nat := 13
def small_3545621_left_count : Nat := 25
def small_3545621_left_encoded : String := "0F878D030C9A8704000000050F878CFB000000020C9A8708000000050F878CFF00000004022A45870000000513E201060B4D43F60000000510801101000000000DE7C9F8000000050E5FD903000000010DE7CA0400000005000000080000000300000001"
theorem small_3545621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545621_left_root small_3545621_left_fuel small_3545621_left_count small_3545621_left_encoded = true := by
  decide +kernel
theorem small_3545621_left_covered : CoveredBy scale carrier boxes small_3545621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545621_left_root small_3545621_left_fuel small_3545621_left_count small_3545621_left_encoded small_3545621_left_checked

theorem cover_3545621 : CoveredBy scale carrier boxes root_3545621 := by
  apply coveredBy_split_literal root_3545621 small_3545621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545671 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3545621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545671
#print axioms cover_3545621

def root_3545615 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545615_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545615_left_fuel : Nat := 1
def small_3545615_left_count : Nat := 1
def small_3545615_left_encoded : String := "00000000"
theorem small_3545615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545615_left_root small_3545615_left_fuel small_3545615_left_count small_3545615_left_encoded = true := by
  decide +kernel
theorem small_3545615_left_covered : CoveredBy scale carrier boxes small_3545615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545615_left_root small_3545615_left_fuel small_3545615_left_count small_3545615_left_encoded small_3545615_left_checked

theorem cover_3545615 : CoveredBy scale carrier boxes root_3545615 := by
  apply coveredBy_split_literal root_3545615 small_3545615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545621 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_3545615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545621
#print axioms cover_3545615

def root_3545549 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545549_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545549_left_fuel : Nat := 17
def small_3545549_left_count : Nat := 33
def small_3545549_left_encoded : String := "0F878D010C9A86F8000000050F875103000000010C9A8704000000050F878CFB000000020C9A8708000000050F878CFF00000004022A45870000000513E201060DE7C9F6000000050E5FD901000000000B4D43F80000000510801103000000010DE7CA04000000050E6014FB000000020DE7CA08000000050000000A0000000300000000"
theorem small_3545549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545549_left_root small_3545549_left_fuel small_3545549_left_count small_3545549_left_encoded = true := by
  decide +kernel
theorem small_3545549_left_covered : CoveredBy scale carrier boxes small_3545549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545549_left_root small_3545549_left_fuel small_3545549_left_count small_3545549_left_encoded small_3545549_left_checked

theorem cover_3545549 : CoveredBy scale carrier boxes root_3545549 := by
  apply coveredBy_split_literal root_3545549 small_3545549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545615 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3545549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545615
#print axioms cover_3545549

def root_3545544 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545544_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545544_right_fuel : Nat := 1
def small_3545544_right_count : Nat := 1
def small_3545544_right_encoded : String := "00000004"
theorem small_3545544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545544_right_root small_3545544_right_fuel small_3545544_right_count small_3545544_right_encoded = true := by
  decide +kernel
theorem small_3545544_right_covered : CoveredBy scale carrier boxes small_3545544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545544_right_root small_3545544_right_fuel small_3545544_right_count small_3545544_right_encoded small_3545544_right_checked

theorem cover_3545544 : CoveredBy scale carrier boxes root_3545544 := by
  apply coveredBy_split_literal root_3545544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545549 small_3545544_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545549
  · exact small_3545544_right_covered
#print axioms cover_3545544

def root_3545543 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3545543 : CoveredBy scale carrier boxes root_3545543 := by
  apply coveredBy_split_literal root_3545543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1345.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545544
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1345.covered
#print axioms cover_3545543

def root_3545537 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545537_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545537_left_fuel : Nat := 1
def small_3545537_left_count : Nat := 1
def small_3545537_left_encoded : String := "00000003"
theorem small_3545537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545537_left_root small_3545537_left_fuel small_3545537_left_count small_3545537_left_encoded = true := by
  decide +kernel
theorem small_3545537_left_covered : CoveredBy scale carrier boxes small_3545537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545537_left_root small_3545537_left_fuel small_3545537_left_count small_3545537_left_encoded small_3545537_left_checked

theorem cover_3545537 : CoveredBy scale carrier boxes root_3545537 := by
  apply coveredBy_split_literal root_3545537 small_3545537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545543 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3545537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545543
#print axioms cover_3545537

def root_3545536 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545536_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545536_right_fuel : Nat := 25
def small_3545536_right_count : Nat := 223
def small_3545536_right_encoded : String := "1386AD060CFD9BFF0F350D080C9A86F60F878D010C9A86F8000000050F875103000000010C9A8704000000050F878CFB000000020C9A8708000000050F878CFF00000004067ECE8712EA5906000000030DE7C9F6000000050E5FD901000000000B4D43F8000000050000000A0000000A000000000F875101000000000C9A86F80F878D030C9A8704000000050F878CFB000000020C9A8708000000050F878CFF00000004067ECE8712EA5906000000030B4D43F6000000050000000800000008000000010F875103000000010C9A87040F8750FB0C9A8708000000050F878CFF00000004067ECE870000000500000009000000020F878CFB000000020C9A87080F8750FF067ECE870000000500000008000000040F878CFF00000004067ECE8712EA5906000000030B4D43F610804D010B4D43F810804D030DE7CA04000000050E6014FB000000020DE7CA08000000050000000A0000000110801103000000010DE7CA040000000A0E6014FB000000020000000A0000000010801101000000000B4D43F810804D030DE7CA040E5FD8FB0000000800000002000000080000000110801103000000010DE7CA040E5FD8FB0000000A000000020E6014FB000000020DE7CA08000000060E6014FF000000040569AC471340D506000000030DAED87B00000008000000060000000612EA95060B4D43F610804D010000000A0000000010801101000000000000000800000003000000040F34D108000000040C9A86F60F878D010C9A86F80F878D030C9A8704000000050F878CFB00000002067ECE8712EA5906000000030AD3577F10D13D08000000050000000410D10108000000040DE7C9F6000000050000000712EA95060AD3577F0000000A10D10108000000040000000700000003000000010F875103000000010C9A87040000000A0F878CFB00000002067ECE8712EA5906000000030AD3577F0000000A10D10108000000040000000A0000000A000000000F875101000000000C9A86F80F878D030C9A8704000000070F878CFB0000000200000007000000010F875103000000010C9A87040F8750FB0000000A000000020F878CFB00000002067ECE8712EA5906000000030AD3577F10D13D080B4D43F610804D010B4D43F810804D030DE7CA0400000007000000070000000110801103000000010000000A00000000000000070000000410D10108000000040000000712EA9506000000070000000300000003"
theorem small_3545536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545536_right_root small_3545536_right_fuel small_3545536_right_count small_3545536_right_encoded = true := by
  decide +kernel
theorem small_3545536_right_covered : CoveredBy scale carrier boxes small_3545536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545536_right_root small_3545536_right_fuel small_3545536_right_count small_3545536_right_encoded small_3545536_right_checked

theorem cover_3545536 : CoveredBy scale carrier boxes root_3545536 := by
  apply coveredBy_split_literal root_3545536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545537 small_3545536_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545537
  · exact small_3545536_right_covered
#print axioms cover_3545536

def root_3545531 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545531_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545531_right_fuel : Nat := 1
def small_3545531_right_count : Nat := 1
def small_3545531_right_encoded : String := "00000002"
theorem small_3545531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545531_right_root small_3545531_right_fuel small_3545531_right_count small_3545531_right_encoded = true := by
  decide +kernel
theorem small_3545531_right_covered : CoveredBy scale carrier boxes small_3545531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545531_right_root small_3545531_right_fuel small_3545531_right_count small_3545531_right_encoded small_3545531_right_checked

theorem cover_3545531 : CoveredBy scale carrier boxes root_3545531 := by
  apply coveredBy_split_literal root_3545531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545536 small_3545531_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545536
  · exact small_3545531_right_covered
#print axioms cover_3545531

def root_3552837 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3552837 : CoveredBy scale carrier boxes root_3552837 := by
  apply coveredBy_split_literal root_3552837 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1346.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1347.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1346.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1347.covered
#print axioms cover_3552837

def root_3552831 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552831_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552831_left_fuel : Nat := 1
def small_3552831_left_count : Nat := 1
def small_3552831_left_encoded : String := "00000003"
theorem small_3552831_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3552831_left_root small_3552831_left_fuel small_3552831_left_count small_3552831_left_encoded = true := by
  decide +kernel
theorem small_3552831_left_covered : CoveredBy scale carrier boxes small_3552831_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3552831_left_root small_3552831_left_fuel small_3552831_left_count small_3552831_left_encoded small_3552831_left_checked

theorem cover_3552831 : CoveredBy scale carrier boxes root_3552831 := by
  apply coveredBy_split_literal root_3552831 small_3552831_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3552837 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3552831_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3552837
#print axioms cover_3552831

def root_3552830 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552830_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552830_right_fuel : Nat := 23
def small_3552830_right_count : Nat := 333
def small_3552830_right_encoded : String := "1386AD060CFD9BFF0F350D080C9A86F60F878D010C9A86F80F878D030C9A8708000000050F878CFF000000040AD3577B10D13D04067ECE8700000005000000080000000210D1010400000002067ECE8712EA5906000000030DE7C9F6000000050E5FD901000000000000000800000006000000010F875103000000010C9A8708000000060F878CFF0000000400000006000000000F875101000000000C9A86F80F878D030C9A8708000000080F878CFF000000040AD3577B0000000810D101040000000200000008000000010F875103000000010C9A87080F8750FF00000008000000040F878CFF000000040AD3577B10D13D04067ECE8712EA5906000000030B4D43F610804D010B4D43F810804D030DE7CA08000000060000000600000001000000060000000010801101000000000B4D43F80000000800000006000000060000000210D101040000000200000006000000040F34D108000000040C9A86F60F878D010C9A86F80F878D030AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080DE7C9F60E60150100000005000000000E5FD901000000000DE7C9F80E60150300000005000000010E5FD903000000010BE879BB1011AD040569AC471340D506000000030BE879BF000000050000000700000007000000021011710400000002000000060000000410D10108000000040DE7C9F60E6015010DE7C9F80E60150300000007000000010E5FD903000000010000000A000000000000000712EA95060AD3577F10D13D080DE7C9F60E6015010DE7C9F8000000050000000A000000000E5FD901000000000DE7C9F8000000080E5FD90300000001000000080000000410D101080000000400000007000000030000000210D1010400000002067ECE8712EA5906000000030AD3577F10D13D080DE7C9F60E60150100000006000000000E5FD901000000000DE7C9F80E6015030000000800000001000000060000000410D10108000000040DE7C9F60E6015010DE7C9F80E60150309BE353B11777D040000000700000002000000060000000100000006000000000E5FD901000000000000000712EA95060AD3577F10D13D08000000060000000410D10108000000040DE7C9F60E60150100000006000000000000000700000003000000010F875103000000010AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080DE7C9F60E6015010000000600000000000000060000000410D10108000000040DE7C9F60E60150100000006000000000E5FD901000000000B4D43F810804D0300000007000000010000000612EA95060AD3577F0000000A00000006000000030000000210D101040000000200000006000000000F875101000000000C9A86F80F878D030AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080B4D43F600000007000000070000000400000007000000070000000210D1010400000002067ECE8712EA5906000000030AD3577F10D13D080B4D43F610804D010DE7C9F8000000080E5FD90300000001000000060000000000000007000000040000000712EA95060000000700000003000000010F875103000000010AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080B4D43F610804D010B4D43F810804D030BE879BB1011AD040000000700000002000000060000000100000006000000001080110100000000000000070000000410D10108000000040000000712EA95060AD3577F10D13D08000000060000000400000007000000030000000210D1010400000002067ECE8712EA5906000000030AD3577F00000006000000060000000600000003"
theorem small_3552830_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3552830_right_root small_3552830_right_fuel small_3552830_right_count small_3552830_right_encoded = true := by
  decide +kernel
theorem small_3552830_right_covered : CoveredBy scale carrier boxes small_3552830_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3552830_right_root small_3552830_right_fuel small_3552830_right_count small_3552830_right_encoded small_3552830_right_checked

theorem cover_3552830 : CoveredBy scale carrier boxes root_3552830 := by
  apply coveredBy_split_literal root_3552830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3552831 small_3552830_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3552831
  · exact small_3552830_right_covered
#print axioms cover_3552830

def root_3552824 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552824_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3552824_left_fuel : Nat := 1
def small_3552824_left_count : Nat := 1
def small_3552824_left_encoded : String := "00000002"
theorem small_3552824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3552824_left_root small_3552824_left_fuel small_3552824_left_count small_3552824_left_encoded = true := by
  decide +kernel
theorem small_3552824_left_covered : CoveredBy scale carrier boxes small_3552824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3552824_left_root small_3552824_left_fuel small_3552824_left_count small_3552824_left_encoded small_3552824_left_checked

theorem cover_3552824 : CoveredBy scale carrier boxes root_3552824 := by
  apply coveredBy_split_literal root_3552824 small_3552824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3552830 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_3552824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3552830
#print axioms cover_3552824

def root_3545530 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3545530 : CoveredBy scale carrier boxes root_3545530 := by
  apply coveredBy_split_literal root_3545530 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3552824 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545531
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3552824
#print axioms cover_3545530

def root_3545524 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545524_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3545524_left_fuel : Nat := 1
def small_3545524_left_count : Nat := 1
def small_3545524_left_encoded : String := "00000001"
theorem small_3545524_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3545524_left_root small_3545524_left_fuel small_3545524_left_count small_3545524_left_encoded = true := by
  decide +kernel
theorem small_3545524_left_covered : CoveredBy scale carrier boxes small_3545524_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3545524_left_root small_3545524_left_fuel small_3545524_left_count small_3545524_left_encoded small_3545524_left_checked

theorem cover_3545524 : CoveredBy scale carrier boxes root_3545524 := by
  apply coveredBy_split_literal root_3545524 small_3545524_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3545530 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3545524_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3545530
#print axioms cover_3545524

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246
