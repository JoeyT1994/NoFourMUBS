import TaoBundleAssembly0680
import TaoBundleChunkBatch0949
import TaoBundleChunkBatch0950
import TaoBundleChunkBatch0951
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681
def root_10133576 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133576_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133576_right_fuel : Nat := 24
def small_10133576_right_count : Nat := 443
def small_10133576_right_encoded : String := "13E201020DE7CA000E5FD901000000000B4D43FA10804D050B4D43FC10804D070640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000BF3E57A000000051008ED05000000020BF3E57C000000051008ED07000000030000000A00000006000000060000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000BF3E57A100929050BF3E57C1009290700000005000000030000000A000000021008ED05000000020BF3E57C1009290706E0010812C7E4FF000000060000000412C820FF0000000402B4D6A30000000700000006000000031008ED07000000030000000A0EFA4D010BF3E57A100929050BF3E57C10092907000000060000000300000008000000021008ED05000000020BF3E57C1009290700000006000000031008ED070000000306E0010800000008000000080000000013BC31020D4128800EFA1101000000000BF3E57A0000000A1008ED05000000020BF3E57C00000006000000080EFA4D010000000600000000000000010000000310801107000000030640010812FF70FF033F67C313BBF502000000010D4128800000000A0EFA4D010000000800000000000000080000000412FFACFF00000004033F67C313BBF502000000010D4128800000000A0EFA4D010000000800000000000000080000000210801105000000020B4D43FC10804D070640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C000000061008ED070000000305A0010800000006133170FF00000004000000060000000210ED7105000000020000000600000006000000060000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C1009290706E001080000000600000009000000031008ED070000000306E0010812C7E4FF02B4D6A3000000090000000900000004000000090000000210ED710500000002000000090EFA4D010AA6A27A10EDAD050BF3E57C1009290700000006000000031008ED070000000306E0010812C7E4FF000000060000000412C820FF0000000402B4D6A313D0D102000000010D947940000000090EAEE9010000000800000000000000060000000210ED7105000000020BF3E57C000000061008ED070000000306E0010800000006000000090000000013BC31020D4128800EFA1101000000000AA6A27A10EDAD050BF3E57C000000061008ED07000000030000000A0000000210ED7105000000020000000600000006000000010000000310801107000000030640010812FF70FF033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A0000000A10ED7105000000020000000A0EFA4D010AA6A27A10EDAD050AA6A27C10EDAD0705A0010800000006133170FF0000000402B4D6A313D0D102000000010D9479400000000A0000000600000006000000030000000A0000000210ED7105000000020AA6A27C10EDAD07000000060000000310ED7107000000030000000A0000000013BC31020D4128800000000A0EFA4D010AA6A27A000000060000000600000000000000010000000412FFACFF00000004033F67C313BBF502000000010D4128800EFA1101000000000AA6A27A0000000A10ED710500000002000000090EFA4D010AA6A27A10EDAD050AA6A27C10EDAD0706E001080000000812C820FF000000040000000800000003000000080000000210ED7105000000020AA6A27C10EDAD0706E0010812C7E4FF02B4D6A3000000090000000600000004000000090000000310ED710700000003000000050000000013BC31020D4128800EFA1101000000000000000A0EFA4D010AA6A27A0000000810ED7105000000020000000500000000000000010E6015010B4D43FA10804D050B4D43FC10804D07064001080000000612FFACFF00000004033F67C313BBF502000000010DAED881000000080E9661000BF3E57A000000081008ED05000000020000000600000000000000060000000310801107000000030640010800000008000000080000000210801105000000020B4D43FC10804D07064001080000000612FFACFF00000004033F67C313BBF502000000010DAED881000000060E9661000AA6A27A000000060000000600000000000000060000000310801107000000030640010812FF70FF033F67C313BBF502000000010DAED8810E96250000000000000000060E9661000AA6A27A10EDAD05000000080000000210ED7105000000020000000600000000000000060000000412FFACFF00000004033F67C313BBF502000000010DAED8810E96250000000000000000080E9661000AA6A27A10EDAD05000000080000000210ED7105000000020AA6A27C10EDAD0706E001080000000600000005000000030000000500000000000000080000000000000001"
theorem small_10133576_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133576_right_root small_10133576_right_fuel small_10133576_right_count small_10133576_right_encoded = true := by
  decide +kernel
theorem small_10133576_right_covered : CoveredBy scale carrier boxes small_10133576_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133576_right_root small_10133576_right_fuel small_10133576_right_count small_10133576_right_encoded small_10133576_right_checked

theorem cover_10133576 : CoveredBy scale carrier boxes root_10133576 := by
  apply coveredBy_split_literal root_10133576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.root_10133577 small_10133576_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0680.cover_10133577
  · exact small_10133576_right_covered
#print axioms cover_10133576

def root_10133571 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133571_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133571_right_fuel : Nat := 1
def small_10133571_right_count : Nat := 1
def small_10133571_right_encoded : String := "00000004"
theorem small_10133571_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133571_right_root small_10133571_right_fuel small_10133571_right_count small_10133571_right_encoded = true := by
  decide +kernel
theorem small_10133571_right_covered : CoveredBy scale carrier boxes small_10133571_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133571_right_root small_10133571_right_fuel small_10133571_right_count small_10133571_right_encoded small_10133571_right_checked

theorem cover_10133571 : CoveredBy scale carrier boxes root_10133571 := by
  apply coveredBy_split_literal root_10133571 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10133576 small_10133571_right_root coord4 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10133576
  · exact small_10133571_right_covered
#print axioms cover_10133571

def root_10133570 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10133570 : CoveredBy scale carrier boxes root_10133570 := by
  apply coveredBy_split_literal root_10133570 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10133571 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3801.root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10133571
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3801.covered
#print axioms cover_10133570

def root_10133564 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133564_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10133564_left_fuel : Nat := 1
def small_10133564_left_count : Nat := 1
def small_10133564_left_encoded : String := "00000003"
theorem small_10133564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10133564_left_root small_10133564_left_fuel small_10133564_left_count small_10133564_left_encoded = true := by
  decide +kernel
theorem small_10133564_left_covered : CoveredBy scale carrier boxes small_10133564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10133564_left_root small_10133564_left_fuel small_10133564_left_count small_10133564_left_encoded small_10133564_left_checked

theorem cover_10133564 : CoveredBy scale carrier boxes root_10133564 := by
  apply coveredBy_split_literal root_10133564 small_10133564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10133570 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10133564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10133570
#print axioms cover_10133564

def root_10132910 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132910_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132910_left_fuel : Nat := 23
def small_10132910_left_count : Nat := 309
def small_10132910_left_encoded : String := "0F878D0707800108128A40FF022A458313E1C502000000010DE7CA000E5FD901000000000B4D43FA10804D05000000050000000210801105000000020DE7C9FC0E60150700000005000000030E5FD907000000030640010812FF70FF0115234300000005000000060000000412FFACFF000000040115234313F85902000000010D4128800EFA110100000000000000070000000713F895020D4128800EFA1101000000000AA6A27A10EDAD050D41287C000000050EFA11070000000306E0010800000005000000070000000210ED710500000002000000090EFA4D010AA6A27A0000000610ED7105000000020000000600000000000000010E6015010B4D43FA10804D050DE7C9FC000000050E5FD90700000003064001080000000512FFACFF000000040115234300000005000000060000000210801105000000020DE7C9FC000000060E5FD90700000003064001080000000612FFACFF00000004011523430000000A000000060000000013E201020DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC000000060E5FD90700000003064001080000000612FFACFF00000004033F67C313BBF502000000010D41288000000005000000060000000600000002108011050000000200000006000000060000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC000000070E5FD90700000003000000070000000210801105000000020DE7C9FC000000070E5FD9070000000308C0010811FBE8FF011523430000000713F895020D41288000000009000000070000000100000004000000070E6015010B4D43FA10804D05000000070000000210801105000000020DE7C9FC000000070E5FD9070000000308C0010811FBE8FF011523430000000713F895020DAED8810E9625000000000000000006000000070000000100000004000000070000000013E201020DE7CA000E5FD901000000000B4D43FA10804D050DE7C9FC0E60150708C0010811FBE8FF000000060000000400000007000000030E5FD9070000000308C0010811FBE8FF033F67C313BBF502000000010D4128800EFA110100000000000000070000000713BC31020D4128800EFA1101000000000BF3E57A000000061008ED05000000020000000600000006000000010000000411FC24FF00000004033F67C30000000713BC31020D4128800EFA1101000000000000000700000007000000010000000210801105000000020DE7C9FC0E60150708C001080000000611FC24FF00000004033F67C30000000700000006000000030E5FD9070000000308C0010811FBE8FF033F67C313BBF502000000010D412880000000090EFA4D010AA6A27A10EDAD050D41287C000000060000000900000002000000090000000013BC31020D4128800000000900000006000000010000000411FC24FF00000004033F67C300000007000000090E6015010B4D43FA10804D050DE7C9FC0E60150700000006000000030E5FD9070000000308C0010811FBE8FF000000060000000411FC24FF00000004033F67C30000000713BC310200000008000000010000000210801105000000020DE7C9FC0E60150700000006000000030E5FD9070000000308C0010811FBE8FF000000060000000411FC24FF00000004033F67C30000000700000006000000000000000100000003"
theorem small_10132910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132910_left_root small_10132910_left_fuel small_10132910_left_count small_10132910_left_encoded = true := by
  decide +kernel
theorem small_10132910_left_covered : CoveredBy scale carrier boxes small_10132910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132910_left_root small_10132910_left_fuel small_10132910_left_count small_10132910_left_encoded small_10132910_left_checked

theorem cover_10132910 : CoveredBy scale carrier boxes root_10132910 := by
  apply coveredBy_split_literal root_10132910 small_10132910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10133564 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10132910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10133564
#print axioms cover_10132910

def root_10132904 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132904_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132904_left_fuel : Nat := 1
def small_10132904_left_count : Nat := 1
def small_10132904_left_encoded : String := "00000002"
theorem small_10132904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132904_left_root small_10132904_left_fuel small_10132904_left_count small_10132904_left_encoded = true := by
  decide +kernel
theorem small_10132904_left_covered : CoveredBy scale carrier boxes small_10132904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132904_left_root small_10132904_left_fuel small_10132904_left_count small_10132904_left_encoded small_10132904_left_checked

theorem cover_10132904 : CoveredBy scale carrier boxes root_10132904 := by
  apply coveredBy_split_literal root_10132904 small_10132904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10132910 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10132904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10132910
#print axioms cover_10132904

def root_10132318 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132318_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132318_left_fuel : Nat := 20
def small_10132318_left_count : Nat := 273
def small_10132318_left_encoded : String := "0F878D050C9A86FC0F878D0707800108128A40FF022A45830000000513E201020DE7CA00000000050E60150100000005000000000000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD90100000000000000070000000713E201020DE7CA000E5FD901000000000DE7C9FA0E6015050DE7C9FC000000050E5FD9070000000308C001080000000500000007000000020E5FD905000000020DE7C9FC0E60150708C001080000000500000007000000030E5FD9070000000308C0010811FBE8FF033F67C30000000713BC3102000000080000000100000004000000070E6015010DE7C9FA0E6015050DE7C9FC0000000500000008000000020E5FD905000000020DE7C9FC0E60150700000006000000030E5FD9070000000308C0010800000008000000070000000000000001000000030F8751070000000307800108128A40FF022A458313E1C502000000010DE7CA000E5FD901000000000DE7C9FA0E60150500000005000000020E5FD905000000020B4D43FC10804D07000000050000000310801107000000030640010812FF70FF01152343000000050000000A0000000412FFACFF000000040115234313F85902000000010D4128800EFA110100000000000000070000000713F895020D4128800000000A00000008000000010E6015010DE7C9FA0E60150500000005000000020E5FD905000000020B4D43FC10804D07064001080000000512FFACFF00000004011523430000000500000008000000031080110700000003064001080000000812FFACFF00000004000000080000000013E201020DE7CA000E5FD901000000000DE7C9FA0E60150500000008000000020E5FD905000000020B4D43FC10804D070640010812FF70FF000000050000000412FFACFF00000004033F67C313BBF502000000010D4128800000000500000008000000080000000310801107000000030000000A0E6015010DE7C9FA000000080E5FD905000000020B4D43FC10804D07000000080000000300000008000000000000000100000004128A7CFF00000004022A458313E1C502000000010DE7CA000E5FD901000000000DE7C9FA0E6015050B4D43FC00000007108011070000000300000007000000020E5FD905000000020B4D43FC00000007108011070000000308C0010811FBE8FF011523430000000713F895020D4128800000000A000000070000000100000004000000070E6015010DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC00000007108011070000000308C0010800000008000000070000000013E201020DE7CA000E5FD901000000000DE7C9FA0E60150500000008000000020E5FD905000000020B4D43FC10804D0708C0010811FBE8FF033F67C313BBF502000000010D4128800EFA1101000000000000000700000007000000080000000411FC24FF0000000400000008000000031080110700000003000000080E60150100000008000000000000000100000002"
theorem small_10132318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132318_left_root small_10132318_left_fuel small_10132318_left_count small_10132318_left_encoded = true := by
  decide +kernel
theorem small_10132318_left_covered : CoveredBy scale carrier boxes small_10132318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132318_left_root small_10132318_left_fuel small_10132318_left_count small_10132318_left_encoded small_10132318_left_checked

theorem cover_10132318 : CoveredBy scale carrier boxes root_10132318 := by
  apply coveredBy_split_literal root_10132318 small_10132318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10132904 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10132318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10132904
#print axioms cover_10132318

def root_10132313 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132313_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10132313_right_fuel : Nat := 1
def small_10132313_right_count : Nat := 1
def small_10132313_right_encoded : String := "00000000"
theorem small_10132313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10132313_right_root small_10132313_right_fuel small_10132313_right_count small_10132313_right_encoded = true := by
  decide +kernel
theorem small_10132313_right_covered : CoveredBy scale carrier boxes small_10132313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10132313_right_root small_10132313_right_fuel small_10132313_right_count small_10132313_right_encoded small_10132313_right_checked

theorem cover_10132313 : CoveredBy scale carrier boxes root_10132313 := by
  apply coveredBy_split_literal root_10132313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10132318 small_10132313_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10132318
  · exact small_10132313_right_covered
#print axioms cover_10132313

def root_10130257 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10130257 : CoveredBy scale carrier boxes root_10130257 := by
  apply coveredBy_split_literal root_10130257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3798.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10132313 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3798.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10132313
#print axioms cover_10130257

def root_10130251 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130251_left_fuel : Nat := 1
def small_10130251_left_count : Nat := 1
def small_10130251_left_encoded : String := "00000003"
theorem small_10130251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130251_left_root small_10130251_left_fuel small_10130251_left_count small_10130251_left_encoded = true := by
  decide +kernel
theorem small_10130251_left_covered : CoveredBy scale carrier boxes small_10130251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130251_left_root small_10130251_left_fuel small_10130251_left_count small_10130251_left_encoded small_10130251_left_checked

theorem cover_10130251 : CoveredBy scale carrier boxes root_10130251 := by
  apply coveredBy_split_literal root_10130251 small_10130251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10130257 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10130251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10130257
#print axioms cover_10130251

def root_10130073 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130073_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130073_left_fuel : Nat := 17
def small_10130073_left_count : Nat := 81
def small_10130073_left_encoded : String := "0F34D0FC0C9A87000F875101000000000C9A86FA0F878D0500000005000000020F8751050000000207800108128A40FF0000000500000004128A7CFF00000004022A458313E1C502000000010AD357870000000510D13CFC000000030B4D4400000000050000000713E201020AD3578710D100FC000000050000000310D13CFC000000030B4D440010801101000000000B4D43FA10804D0500000005000000020000000910804D010B4D43FA10804D050000000500000002108011050000000208C00108000000060000000900000000000000010F878D010C9A86FA0F878D0500000005000000020F8751050000000207800108128A40FF0000000600000004128A7CFF00000004022A458313E1C502000000010AD357870000000610D13CFC000000030DE7CA000E5FD901000000000000000700000007000000060000000000000003"
theorem small_10130073_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130073_left_root small_10130073_left_fuel small_10130073_left_count small_10130073_left_encoded = true := by
  decide +kernel
theorem small_10130073_left_covered : CoveredBy scale carrier boxes small_10130073_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130073_left_root small_10130073_left_fuel small_10130073_left_count small_10130073_left_encoded small_10130073_left_checked

theorem cover_10130073 : CoveredBy scale carrier boxes root_10130073 := by
  apply coveredBy_split_literal root_10130073 small_10130073_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10130251 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10130073_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10130251
#print axioms cover_10130073

def root_10130067 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10130067_left_fuel : Nat := 1
def small_10130067_left_count : Nat := 1
def small_10130067_left_encoded : String := "00000002"
theorem small_10130067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10130067_left_root small_10130067_left_fuel small_10130067_left_count small_10130067_left_encoded = true := by
  decide +kernel
theorem small_10130067_left_covered : CoveredBy scale carrier boxes small_10130067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10130067_left_root small_10130067_left_fuel small_10130067_left_count small_10130067_left_encoded small_10130067_left_checked

theorem cover_10130067 : CoveredBy scale carrier boxes root_10130067 := by
  apply coveredBy_split_literal root_10130067 small_10130067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10130073 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10130067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10130073
#print axioms cover_10130067

def root_10129923 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129923_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129923_left_fuel : Nat := 16
def small_10129923_left_count : Nat := 67
def small_10129923_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D0700000005000000030F8751070000000307800108128A40FF0000000500000004128A7CFF00000004022A458313E1C502000000010AD357850000000510D13CFA000000020B4D4400000000050000000713E201020AD35785000000080000000A000000010F878D010C9A86FC0F878D0700000005000000030F8751070000000307800108128A40FF022A4583000000050000000800000004128A7CFF00000004022A458313E1C502000000010AD357850000000810D13CFA000000020DE7CA000E5FD901000000000000000700000007000000080000000000000002"
theorem small_10129923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129923_left_root small_10129923_left_fuel small_10129923_left_count small_10129923_left_encoded = true := by
  decide +kernel
theorem small_10129923_left_covered : CoveredBy scale carrier boxes small_10129923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129923_left_root small_10129923_left_fuel small_10129923_left_count small_10129923_left_encoded small_10129923_left_checked

theorem cover_10129923 : CoveredBy scale carrier boxes root_10129923 := by
  apply coveredBy_split_literal root_10129923 small_10129923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10130067 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10129923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10130067
#print axioms cover_10129923

def root_10129917 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129917_left_fuel : Nat := 1
def small_10129917_left_count : Nat := 1
def small_10129917_left_encoded : String := "00000001"
theorem small_10129917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129917_left_root small_10129917_left_fuel small_10129917_left_count small_10129917_left_encoded = true := by
  decide +kernel
theorem small_10129917_left_covered : CoveredBy scale carrier boxes small_10129917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129917_left_root small_10129917_left_fuel small_10129917_left_count small_10129917_left_encoded small_10129917_left_checked

theorem cover_10129917 : CoveredBy scale carrier boxes root_10129917 := by
  apply coveredBy_split_literal root_10129917 small_10129917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10129923 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10129917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10129923
#print axioms cover_10129917

def root_10129916 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10129916 : CoveredBy scale carrier boxes root_10129916 := by
  apply coveredBy_split_literal root_10129916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10129917 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3802.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10129917
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3802.covered
#print axioms cover_10129916

def root_10129911 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129911_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10129911_right_fuel : Nat := 1
def small_10129911_right_count : Nat := 1
def small_10129911_right_encoded : String := "00000000"
theorem small_10129911_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10129911_right_root small_10129911_right_fuel small_10129911_right_count small_10129911_right_encoded = true := by
  decide +kernel
theorem small_10129911_right_covered : CoveredBy scale carrier boxes small_10129911_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10129911_right_root small_10129911_right_fuel small_10129911_right_count small_10129911_right_encoded small_10129911_right_checked

theorem cover_10129911 : CoveredBy scale carrier boxes root_10129911 := by
  apply coveredBy_split_literal root_10129911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10129916 small_10129911_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10129916
  · exact small_10129911_right_covered
#print axioms cover_10129911

def root_10128787 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10128787 : CoveredBy scale carrier boxes root_10128787 := by
  apply coveredBy_split_literal root_10128787 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3797.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10129911 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3797.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10129911
#print axioms cover_10128787

def root_10128781 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10128781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10128781_left_fuel : Nat := 1
def small_10128781_left_count : Nat := 1
def small_10128781_left_encoded : String := "00000004"
theorem small_10128781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10128781_left_root small_10128781_left_fuel small_10128781_left_count small_10128781_left_encoded = true := by
  decide +kernel
theorem small_10128781_left_covered : CoveredBy scale carrier boxes small_10128781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10128781_left_root small_10128781_left_fuel small_10128781_left_count small_10128781_left_encoded small_10128781_left_checked

theorem cover_10128781 : CoveredBy scale carrier boxes root_10128781 := by
  apply coveredBy_split_literal root_10128781 small_10128781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10128787 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_10128781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10128787
#print axioms cover_10128781

def root_10126849 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10126849 : CoveredBy scale carrier boxes root_10126849 := by
  apply coveredBy_split_literal root_10126849 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3796.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10128781 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3796.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10128781
#print axioms cover_10126849

def root_10126843 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126843_left_fuel : Nat := 1
def small_10126843_left_count : Nat := 1
def small_10126843_left_encoded : String := "00000003"
theorem small_10126843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126843_left_root small_10126843_left_fuel small_10126843_left_count small_10126843_left_encoded = true := by
  decide +kernel
theorem small_10126843_left_covered : CoveredBy scale carrier boxes small_10126843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126843_left_root small_10126843_left_fuel small_10126843_left_count small_10126843_left_encoded small_10126843_left_checked

theorem cover_10126843 : CoveredBy scale carrier boxes root_10126843 := by
  apply coveredBy_split_literal root_10126843 small_10126843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126849 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10126843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126849
#print axioms cover_10126843

def root_10126797 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126797_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126797_left_fuel : Nat := 9
def small_10126797_left_count : Nat := 21
def small_10126797_left_encoded : String := "120700FC05000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D10000000000000000060F350D0004548A03000000051386AD020CFD9C050000000500000006000000010000000000000003"
theorem small_10126797_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126797_left_root small_10126797_left_fuel small_10126797_left_count small_10126797_left_encoded = true := by
  decide +kernel
theorem small_10126797_left_covered : CoveredBy scale carrier boxes small_10126797_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126797_left_root small_10126797_left_fuel small_10126797_left_count small_10126797_left_encoded small_10126797_left_checked

theorem cover_10126797 : CoveredBy scale carrier boxes root_10126797 := by
  apply coveredBy_split_literal root_10126797 small_10126797_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126843 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126797_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126843
#print axioms cover_10126797

def root_10126791 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126791_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126791_left_fuel : Nat := 1
def small_10126791_left_count : Nat := 1
def small_10126791_left_encoded : String := "00000002"
theorem small_10126791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126791_left_root small_10126791_left_fuel small_10126791_left_count small_10126791_left_encoded = true := by
  decide +kernel
theorem small_10126791_left_covered : CoveredBy scale carrier boxes small_10126791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126791_left_root small_10126791_left_fuel small_10126791_left_count small_10126791_left_encoded small_10126791_left_checked

theorem cover_10126791 : CoveredBy scale carrier boxes root_10126791 := by
  apply coveredBy_split_literal root_10126791 small_10126791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126797 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10126791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126797
#print axioms cover_10126791

def root_10126719 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126719_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126719_left_fuel : Nat := 15
def small_10126719_left_count : Nat := 35
def small_10126719_left_encoded : String := "120700FA08A913070000000512073CFC0000000305000108135D44FF0000000500000004135D80FF000000040CFD9C010F34D1000000000004548A0300000005000000080F350D0004548A03000000051386AD0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC000000030C9A87000000000500000008000000010000000000000002"
theorem small_10126719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126719_left_root small_10126719_left_fuel small_10126719_left_count small_10126719_left_encoded = true := by
  decide +kernel
theorem small_10126719_left_covered : CoveredBy scale carrier boxes small_10126719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126719_left_root small_10126719_left_fuel small_10126719_left_count small_10126719_left_encoded small_10126719_left_checked

theorem cover_10126719 : CoveredBy scale carrier boxes root_10126719 := by
  apply coveredBy_split_literal root_10126719 small_10126719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126791 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10126719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126791
#print axioms cover_10126719

def root_10126713 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126713_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126713_left_fuel : Nat := 1
def small_10126713_left_count : Nat := 1
def small_10126713_left_encoded : String := "00000001"
theorem small_10126713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126713_left_root small_10126713_left_fuel small_10126713_left_count small_10126713_left_encoded = true := by
  decide +kernel
theorem small_10126713_left_covered : CoveredBy scale carrier boxes small_10126713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126713_left_root small_10126713_left_fuel small_10126713_left_count small_10126713_left_encoded small_10126713_left_checked

theorem cover_10126713 : CoveredBy scale carrier boxes root_10126713 := by
  apply coveredBy_split_literal root_10126713 small_10126713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126719 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10126713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126719
#print axioms cover_10126713

def root_10126712 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126712_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126712_right_fuel : Nat := 30
def small_10126712_right_count : Nat := 197
def small_10126712_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC000000050000000312073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000080F350D000CFD9C0300000005000000080000000000000004135D80FF000000040CFD9C010F34D10000000000000000080F350D000CFD9C030F34D1020000000104548A05000000081386ACFA000000020CFD9C07000000080000000800000008000000000000000212073CFA0000000208A91307120700FC000000060000000312073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C07000000060F350CFC000000030C9A87000F875101000000000C9A86FC0000000600000008000000060000000200000006000000060000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C050F34D0FA000000080000000200000006000000060F350D000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F875101000000000C9A86FC0F878D0700000008000000030000000800000008000000020F350CFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F875101000000000C9A86FA0F878D050C9A86FC0F878D070780010800000006128A7CFF000000040AD3578310D10102000000010B4D440010801101000000000DE7C9FA000000060E5FD90500000002000000060000000600000006000000030F87510700000003078001080000000800000008000000020F875105000000020C9A86FC0F878D0700000006000000030F8751070000000307800108128A40FF0000000600000004128A7CFF000000040AD3578310D10102000000010B4D44000000000A10804D010000000800000000000000080F878D010C9A86FA0F878D050C9A86FC0000000600000008000000020F8751050000000200000006000000000F350D020CFD9C050F34D0FA0CFD9C0700000006000000080000000200000006000000010000000000000001"
theorem small_10126712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126712_right_root small_10126712_right_fuel small_10126712_right_count small_10126712_right_encoded = true := by
  decide +kernel
theorem small_10126712_right_covered : CoveredBy scale carrier boxes small_10126712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126712_right_root small_10126712_right_fuel small_10126712_right_count small_10126712_right_encoded small_10126712_right_checked

theorem cover_10126712 : CoveredBy scale carrier boxes root_10126712 := by
  apply coveredBy_split_literal root_10126712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126713 small_10126712_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126713
  · exact small_10126712_right_covered
#print axioms cover_10126712

def root_10126707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126707_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10126707_right_fuel : Nat := 1
def small_10126707_right_count : Nat := 1
def small_10126707_right_encoded : String := "00000000"
theorem small_10126707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10126707_right_root small_10126707_right_fuel small_10126707_right_count small_10126707_right_encoded = true := by
  decide +kernel
theorem small_10126707_right_covered : CoveredBy scale carrier boxes small_10126707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10126707_right_root small_10126707_right_fuel small_10126707_right_count small_10126707_right_encoded small_10126707_right_checked

theorem cover_10126707 : CoveredBy scale carrier boxes root_10126707 := by
  apply coveredBy_split_literal root_10126707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.root_10126712 small_10126707_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681.cover_10126712
  · exact small_10126707_right_covered
#print axioms cover_10126707

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0681
