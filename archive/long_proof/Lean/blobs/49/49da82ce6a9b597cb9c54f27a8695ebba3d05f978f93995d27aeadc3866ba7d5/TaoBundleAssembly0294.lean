import TaoBundleAssembly0293
import TaoBundleChunkBatch0383
import TaoBundleChunkBatch0384
import TaoBundleChunkBatch0385
import TaoBundleChunkBatch0386
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294
def root_4066220 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066220_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066220_left_fuel : Nat := 33
def small_4066220_left_count : Nat := 337
def small_4066220_left_encoded : String := "138670F604548A05138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028001020000000513D7ECF900000001028001060000000513D7ECFD00000003022A45810000000513E200F600000000022A45850000000513E200FA000000020DE7C9FE0E6014FF00000004000000070000000A0F8750FF00000005000000040000000A000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010213D7B0F9028001060000000A000000090000000113D7ECF9000000010280010613D7B0FD022A45810000000A13E200F600000000067ECE850000000A12EA94FA000000020DE7C9FE0E6014FF00000004000000090E5FD8FF03C001020000000A13A54CF900000001014001060000000600000006000000040000000313D7ECFD00000003022A45810000000913E200F600000000067ECE8512EA58FA0DE7C9FE000000090E5FD8FF000000090000000400000002000000090F8750FF0280010213D7B0F9028001060000000A13D7ECFD00000003022A45810000000913E200F600000000067ECE850000000A000000090000000113D7ECF9000000010280010613D7B0FD022A45810000000A13E200F600000000067ECE850000000A12EA94FA000000020B4D43FE10804CFF0000000403C001020000000A13A54CF900000001014001060000000A13F614FD00000003033F67C10000000A13BC30F6000000000793F0C50000000A00000008108010FF03C001020000000A13A54CF900000001014001060000000813F614FD0000000300000008000000040000000313D7ECFD00000003022A458113E1C4F6067ECE8512EA58FA0000000500000002000000090000000013E200F600000000067ECE8512EA58FA0B4D43FE10804CFF0000000403C0010213A510F903C0010600000005000000090000000113A54CF90000000103C0010613A510FD033F67C10000000513BC30F6000000000000000A0000000313A54CFD00000003033F67C10000000913BC30F6000000000569AC451340D4FA000000090000000200000009108010FF03C0010213A510F903C001060000000513A54CFD00000003033F67C10000000513BC30F6000000000569AC4500000005000000090000000113A54CF90000000103C0010613A510FD033F67C10000000513BC30F6000000000569AC4500000005134110FA000000020000000A0000000313A54CFD00000003033F67C10000000513BC30F6000000000569AC4500000005134110FA000000020AA6A27E10EDACFF000000040000000910ED70FF046001021383DCF904600106000000050000000900000001138418F900000001046001061383DCFD03C9F8E100000005000000D7000000030000000900000004000000040000000212EA94FA000000020B4D43FE10804CFF0000000403C001020000000913A54CF90000000103C0010613A510FD033F67C10000000913BC30F6000000000793F0C5128220FA0000000900000002000000090000000300000009108010FF03C0010213A510F903C0010613A510FD033F67C10000000713BC30F6000000000793F0C50000000A0000000700000003000000090000000113A54CF90000000103C0010613A510FD033F67C113BBF4F60793F0C50000000A000000070000000013BC30F6000000000793F0C5128220FA0AA6A27E10EDACFF00000004046001020000000A138418F90000000103200106000000060000000910ED70FF000000080000000400000002000000080000000313A54CFD00000003033F67C10000000913BC30F6000000000793F0C5128220FA00000009000000020000000700000004000000040F34D0FE000000090000000400000000"
theorem small_4066220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066220_left_root small_4066220_left_fuel small_4066220_left_count small_4066220_left_encoded = true := by
  decide +kernel
theorem small_4066220_left_covered : CoveredBy scale carrier boxes small_4066220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066220_left_root small_4066220_left_fuel small_4066220_left_count small_4066220_left_encoded small_4066220_left_checked

theorem cover_4066220 : CoveredBy scale carrier boxes root_4066220 := by
  apply coveredBy_split_literal root_4066220 small_4066220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0293.root_4066922 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4066220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0293.cover_4066922
#print axioms cover_4066220

def root_4066215 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066215_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066215_right_fuel : Nat := 1
def small_4066215_right_count : Nat := 1
def small_4066215_right_encoded : String := "00000003"
theorem small_4066215_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066215_right_root small_4066215_right_fuel small_4066215_right_count small_4066215_right_encoded = true := by
  decide +kernel
theorem small_4066215_right_covered : CoveredBy scale carrier boxes small_4066215_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066215_right_root small_4066215_right_fuel small_4066215_right_count small_4066215_right_encoded small_4066215_right_checked

theorem cover_4066215 : CoveredBy scale carrier boxes root_4066215 := by
  apply coveredBy_split_literal root_4066215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066220 small_4066215_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066220
  · exact small_4066215_right_covered
#print axioms cover_4066215

def root_4075728 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075728_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075728_left_fuel : Nat := 31
def small_4075728_left_count : Nat := 483
def small_4075728_left_encoded : String := "138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010213D7B0F907800106128A40FD067ECE810000000812EA94F600000000022A45850000000813E200FA000000020DE7C9FE000000080000000800000003000000080000000113D7ECF90000000107800106128A40FD067ECE8112EA58F6022A45850000000713E200FA000000020DE7C9FE00000008000000080000000012EA94F600000000022A45850000000713E200FA000000020DE7C9FE000000070000000800000003128A7CFD00000003000000080F8750FF0280010213D7B0F907800106128A40FD067ECE8112EA58F6022A458513E1C4FA000000050000000213E200FA000000020B4D43FE10804CFF00000004014001020000000813F614F9000000010640010612FF70FD000000080000000300000008108010FF0140010213F5D8F9064001060000000A000000080000000113F614F9000000010640010612FF70FD0569AC4100000005134110F600000000033F67C50000000513BC30FA000000020000000A0000000312FFACFD000000030569AC410000000800000008000000040000000012EA94F600000000022A458513E1C4FA0B4D43FE00000008108010FF014001020000000600000008000000040000000213E200FA000000020B4D43FE10804CFF000000040140010213F5D8F90640010612FF70FD0000000600000003000000060000000113F614F9000000010640010612FF70FD000000080000000300000008108010FF014001020000000613F614F9000000010640010612FF70FD0000000600000003000000060000000400000003128A7CFD00000003067ECE8112EA58F6022A45850000000813E200FA000000020B4D43FE00000008000000080000000012EA94F600000000022A45850000000813E200FA000000020B4D43FE00000008000000080000000113D7ECF90000000107800106128A40FD067ECE8112EA58F6022A458513E1C4FA0B4D43FE10804CFF0000000400000008108010FF03C001020000000513A54CF90000000100000008000000040000000213E200FA000000020B4D43FE10804CFF0000000403C0010213A510F90640010612FF70FD0569AC41000000080000000800000003000000080000000113A54CF9000000010640010612FF70FD0569AC4100000008000000080000000300000008108010FF03C0010213A510F90640010612FF70FD0569AC4100000005134110F600000000033F67C50000000513BC30FA000000020AA6A27E10EDACFF000000040000000810ED70FF0320010213C108F905A0010600000006000000060000000113C144F90000000105A00106133134FD05F43D6100000005000000060000000300000008000000040000000312FFACFD000000030569AC4100000008000000080000000113A54CF9000000010640010612FF70FD0569AC411340D4F6033F67C50000000513BC30FA000000020AA6A27E10EDACFF0000000404600102000000080000000810ED70FF0460010200000005138418F90000000105A0010600000005000000080000000400000000134110F600000000033F67C513BBF4FA000000080000000213BC30FA000000020AA6A27E10EDACFF0000000404600102000000080000000810ED70FF046001021383DCF905A00106133134FD05F43D610000000800000008000000030000000800000001138418F90000000105A00106133134FD05F43D6100000008000000070000000300000008000000040000000312FFACFD000000030569AC4100000008134110F60000000000000008000000040000000012EA94F600000000022A458513E1C4FA0B4D43FE10804CFF0000000400000007108010FF03C001020000000813A54CF90000000100000008000000040000000213E200FA000000020B4D43FE10804CFF0000000403C0010213A510F90640010612FF70FD0793F0C1000000080000000800000003000000080000000113A54CF9000000010640010612FF70FD000000070000000300000008108010FF03C0010213A510F90640010612FF70FD0793F0C1128220F6033F67C50000000813BC30FA000000020AA6A27E10EDACFF000000040000000810ED70FF00000006000000040000000012825CF600000000000000060000000312FFACFD000000030793F0C100000008000000060000000113A54CF9000000010640010612FF70FD0793F0C1128220F6033F67C50000000713BC30FA000000020AA6A27E10EDACFF000000040000000810ED70FF046001021383DCF905A00106133134FD00000006000000030000000600000001138418F90000000105A001060000000700000008000000040000000012825CF600000000033F67C50000000713BC30FA000000020AA6A27E0000000710ED70FF00000006000000040000000312FFACFD000000030793F0C100000008000000080000000400000003128A7CFD00000003067ECE8112EA58F6022A45850000000813E200FA000000020B4D43FE10804CFF0000000400000008108010FF03C001020000000800000008000000040000000012EA94F600000000022A45850000000813E200FA000000020B4D43FE10804CFF0000000400000008108010FF03C00102000000080000000800000004000000040F34D0FE0280010200000008000000080000000400000002"
theorem small_4075728_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4075728_left_root small_4075728_left_fuel small_4075728_left_count small_4075728_left_encoded = true := by
  decide +kernel
theorem small_4075728_left_covered : CoveredBy scale carrier boxes small_4075728_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4075728_left_root small_4075728_left_fuel small_4075728_left_count small_4075728_left_encoded small_4075728_left_checked

theorem cover_4075728 : CoveredBy scale carrier boxes root_4075728 := by
  apply coveredBy_split_literal root_4075728 small_4075728_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1530.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4075728_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1530.covered
#print axioms cover_4075728

def root_4075722 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075722_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075722_left_fuel : Nat := 1
def small_4075722_left_count : Nat := 1
def small_4075722_left_encoded : String := "00000000"
theorem small_4075722_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4075722_left_root small_4075722_left_fuel small_4075722_left_count small_4075722_left_encoded = true := by
  decide +kernel
theorem small_4075722_left_covered : CoveredBy scale carrier boxes small_4075722_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4075722_left_root small_4075722_left_fuel small_4075722_left_count small_4075722_left_encoded small_4075722_left_checked

theorem cover_4075722 : CoveredBy scale carrier boxes root_4075722 := by
  apply coveredBy_split_literal root_4075722 small_4075722_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4075728 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4075722_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4075728
#print axioms cover_4075722

def root_4075432 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075432_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075432_left_fuel : Nat := 29
def small_4075432_left_count : Nat := 141
def small_4075432_left_encoded : String := "138670F604548A05138670FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028001020000000913D7ECF90000000107800106128A40FD022A45810000000813E200F600000000022A4585000000080000000900000003000000080F8750FF0280010213D7B0F907800106128A40FD0000000500000003000000090000000113D7ECF90000000107800106128A40FD022A45810000000513E200F600000000022A45850000000513E200FA000000020B4D43FE10804CFF0000000403C001020000000913A54CF9000000010640010612FF70FD000000050000000300000008108010FF03C001020000000513A54CF900000001064001060000000512FFACFD00000003033F67C10000000513BC30F600000000000000080000000400000003128A7CFD00000003022A45810000000913E200F600000000022A45850000000800000009000000040F34D0FE0000000800000004000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A86FE000000090F8750FF028001020000000913D7ECF90000000107800106128A40FD022A45810000000913E200F600000000067ECE8512EA58FA0B4D43FE00000009108010FF03C001020000000913A54CF9000000010640010612FF70FD033F67C10000000913BC30F6000000000569AC451340D4FA0AA6A27E0000000910ED70FF04600102000000050000000900000004000000020000000900000003000000090000000400000002000000090000000300000009000000040000000900000000"
theorem small_4075432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4075432_left_root small_4075432_left_fuel small_4075432_left_count small_4075432_left_encoded = true := by
  decide +kernel
theorem small_4075432_left_covered : CoveredBy scale carrier boxes small_4075432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4075432_left_root small_4075432_left_fuel small_4075432_left_count small_4075432_left_encoded small_4075432_left_checked

theorem cover_4075432 : CoveredBy scale carrier boxes root_4075432 := by
  apply coveredBy_split_literal root_4075432 small_4075432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4075722 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4075432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4075722
#print axioms cover_4075432

def root_4075426 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075426_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4075426_left_fuel : Nat := 1
def small_4075426_left_count : Nat := 1
def small_4075426_left_encoded : String := "00000003"
theorem small_4075426_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4075426_left_root small_4075426_left_fuel small_4075426_left_count small_4075426_left_encoded = true := by
  decide +kernel
theorem small_4075426_left_covered : CoveredBy scale carrier boxes small_4075426_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4075426_left_root small_4075426_left_fuel small_4075426_left_count small_4075426_left_encoded small_4075426_left_checked

theorem cover_4075426 : CoveredBy scale carrier boxes root_4075426 := by
  apply coveredBy_split_literal root_4075426 small_4075426_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4075432 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4075426_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4075432
#print axioms cover_4075426

def root_4066214 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066214 : CoveredBy scale carrier boxes root_4066214 := by
  apply coveredBy_split_literal root_4066214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4075426 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066215
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4075426
#print axioms cover_4066214

def root_4066209 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066209_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066209_right_fuel : Nat := 1
def small_4066209_right_count : Nat := 1
def small_4066209_right_encoded : String := "00000001"
theorem small_4066209_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066209_right_root small_4066209_right_fuel small_4066209_right_count small_4066209_right_encoded = true := by
  decide +kernel
theorem small_4066209_right_covered : CoveredBy scale carrier boxes small_4066209_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066209_right_root small_4066209_right_fuel small_4066209_right_count small_4066209_right_encoded small_4066209_right_checked

theorem cover_4066209 : CoveredBy scale carrier boxes root_4066209 := by
  apply coveredBy_split_literal root_4066209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066214 small_4066209_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066214
  · exact small_4066209_right_covered
#print axioms cover_4066209

def root_4078924 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4078924 : CoveredBy scale carrier boxes root_4078924 := by
  apply coveredBy_split_literal root_4078924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1531.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1532.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1531.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1532.covered
#print axioms cover_4078924

def root_4078919 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4078919_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4078919_right_fuel : Nat := 1
def small_4078919_right_count : Nat := 1
def small_4078919_right_encoded : String := "00000003"
theorem small_4078919_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4078919_right_root small_4078919_right_fuel small_4078919_right_count small_4078919_right_encoded = true := by
  decide +kernel
theorem small_4078919_right_covered : CoveredBy scale carrier boxes small_4078919_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4078919_right_root small_4078919_right_fuel small_4078919_right_count small_4078919_right_encoded small_4078919_right_checked

theorem cover_4078919 : CoveredBy scale carrier boxes root_4078919 := by
  apply coveredBy_split_literal root_4078919 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4078924 small_4078919_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4078924
  · exact small_4078919_right_covered
#print axioms cover_4078919

def root_4078918 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4078918 : CoveredBy scale carrier boxes root_4078918 := by
  apply coveredBy_split_literal root_4078918 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4078919 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1533.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4078919
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1533.covered
#print axioms cover_4078918

def root_4078912 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4078912_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4078912_left_fuel : Nat := 1
def small_4078912_left_count : Nat := 1
def small_4078912_left_encoded : String := "00000001"
theorem small_4078912_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4078912_left_root small_4078912_left_fuel small_4078912_left_count small_4078912_left_encoded = true := by
  decide +kernel
theorem small_4078912_left_covered : CoveredBy scale carrier boxes small_4078912_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4078912_left_root small_4078912_left_fuel small_4078912_left_count small_4078912_left_encoded small_4078912_left_checked

theorem cover_4078912 : CoveredBy scale carrier boxes root_4078912 := by
  apply coveredBy_split_literal root_4078912 small_4078912_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4078918 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4078912_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4078918
#print axioms cover_4078912

def root_4066208 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066208 : CoveredBy scale carrier boxes root_4066208 := by
  apply coveredBy_split_literal root_4066208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066209 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4078912 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066209
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4078912
#print axioms cover_4066208

def root_4066202 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066202_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066202_left_fuel : Nat := 1
def small_4066202_left_count : Nat := 1
def small_4066202_left_encoded : String := "00000004"
theorem small_4066202_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066202_left_root small_4066202_left_fuel small_4066202_left_count small_4066202_left_encoded = true := by
  decide +kernel
theorem small_4066202_left_covered : CoveredBy scale carrier boxes small_4066202_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066202_left_root small_4066202_left_fuel small_4066202_left_count small_4066202_left_encoded small_4066202_left_checked

theorem cover_4066202 : CoveredBy scale carrier boxes root_4066202 := by
  apply coveredBy_split_literal root_4066202 small_4066202_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066208 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4066202_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066208
#print axioms cover_4066202

def root_4066201 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066201_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066201_right_fuel : Nat := 7
def small_4066201_right_count : Nat := 21
def small_4066201_right_encoded : String := "120700FE05000102135D44F905000106135D44FD04548A010000000900000007000000030000000900000001135D80F9000000010500010600000007135D80FD0000000304548A01000000060000000700000004"
theorem small_4066201_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066201_right_root small_4066201_right_fuel small_4066201_right_count small_4066201_right_encoded = true := by
  decide +kernel
theorem small_4066201_right_covered : CoveredBy scale carrier boxes small_4066201_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066201_right_root small_4066201_right_fuel small_4066201_right_count small_4066201_right_encoded small_4066201_right_checked

theorem cover_4066201 : CoveredBy scale carrier boxes root_4066201 := by
  apply coveredBy_split_literal root_4066201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066202 small_4066201_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066202
  · exact small_4066201_right_covered
#print axioms cover_4066201

def root_4066196 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066196_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066196_right_fuel : Nat := 1
def small_4066196_right_count : Nat := 1
def small_4066196_right_encoded : String := "00000002"
theorem small_4066196_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066196_right_root small_4066196_right_fuel small_4066196_right_count small_4066196_right_encoded = true := by
  decide +kernel
theorem small_4066196_right_covered : CoveredBy scale carrier boxes small_4066196_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066196_right_root small_4066196_right_fuel small_4066196_right_count small_4066196_right_encoded small_4066196_right_checked

theorem cover_4066196 : CoveredBy scale carrier boxes root_4066196 := by
  apply coveredBy_split_literal root_4066196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066201 small_4066196_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066201
  · exact small_4066196_right_covered
#print axioms cover_4066196

def root_4066195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066195 : CoveredBy scale carrier boxes root_4066195 := by
  apply coveredBy_split_literal root_4066195 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066196 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1534.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066196
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1534.covered
#print axioms cover_4066195

def root_4066190 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066190_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066190_right_fuel : Nat := 1
def small_4066190_right_count : Nat := 1
def small_4066190_right_encoded : String := "00000000"
theorem small_4066190_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066190_right_root small_4066190_right_fuel small_4066190_right_count small_4066190_right_encoded = true := by
  decide +kernel
theorem small_4066190_right_covered : CoveredBy scale carrier boxes small_4066190_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066190_right_root small_4066190_right_fuel small_4066190_right_count small_4066190_right_encoded small_4066190_right_checked

theorem cover_4066190 : CoveredBy scale carrier boxes root_4066190 := by
  apply coveredBy_split_literal root_4066190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066195 small_4066190_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066195
  · exact small_4066190_right_covered
#print axioms cover_4066190

def root_4066189 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066189 : CoveredBy scale carrier boxes root_4066189 := by
  apply coveredBy_split_literal root_4066189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066190 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1535.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066190
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1535.covered
#print axioms cover_4066189

def root_4066183 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066183_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4066183_left_fuel : Nat := 1
def small_4066183_left_count : Nat := 1
def small_4066183_left_encoded : String := "00000004"
theorem small_4066183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4066183_left_root small_4066183_left_fuel small_4066183_left_count small_4066183_left_encoded = true := by
  decide +kernel
theorem small_4066183_left_covered : CoveredBy scale carrier boxes small_4066183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4066183_left_root small_4066183_left_fuel small_4066183_left_count small_4066183_left_encoded small_4066183_left_checked

theorem cover_4066183 : CoveredBy scale carrier boxes root_4066183 := by
  apply coveredBy_split_literal root_4066183 small_4066183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4066189 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4066183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4066189
#print axioms cover_4066183

def root_4091828 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091828_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091828_left_fuel : Nat := 30
def small_4091828_left_count : Nat := 257
def small_4091828_left_encoded : String := "138670F604548A05138670FA0280010213D7B0F907800106128A40FD0000000500000003128A7CFD00000003078000FE128A7CFF00000004022A45810000000513E200F600000000022A45850000000500000007128A40FF00000007000000040000000113D7ECF90000000107800106128A40FD078000FE128A7CFF00000004022A45810000000513E200F600000000022A45850000000513E200FA0000000203C001020000000513A54CF900000001064001060000000512FFACFD0000000308C000FE0000000511FBE8FF0000000500000004128A40FF000000050000000400000003128A7CFD00000003078000FE128A7CFF00000004022A458113E1C4F6022A458500000005000000090000000013E200F600000000022A458513E1C4FA03C001020000000513A54CF90000000108C0010600000005000000080000000213E200FA0000000203C0010213A510F908C0010611FBE8FD08C000FE11FC24FF00000004000000090000000700000003000000090000000113A54CF90000000108C0010611FBE8FD08C000FE11FC24FF00000004033F67C1000000050000000811FBE8FF033F67C10000000513BC30F600000000033F67C50000000500000007000000040000000311FC24FD0000000308C000FE0000000811FBE8FF0000000700000004128A40FF022A45810000000513E200F600000000022A4585000000050000000700000004000000021386ACFA000000020280010213D7B0F90780010600000007000000070000000113D7ECF90000000107800106128A40FD078000FE128A7CFF00000004022A458113E1C4F6067ECE8512EA58FA03C001020000000713A54CF90000000106400106000000070000000700000002000000070000000013E200F600000000067ECE8512EA58FA03C0010213A510F90640010600000007000000070000000113A54CF9000000010640010612FF70FD08C000FE11FC24FF00000004033F67C113BBF4F60569AC4500000005000000070000000013BC30F6000000000569AC451340D4FA046001021383DCF90000000500000001138418F90000000105A00106133134FD0000000500000003133170FD00000003096000FE11AABCFF000000040000000911AA80FF0000000500000004000000020000000711FBE8FF00000007000000040000000312FFACFD0000000308C000FE11FC24FF00000004033F67C10000000713BC30F6000000000569AC451340D4FA0460010200000007000000090000000200000007000000070000000200000007128A40FF000000070000000400000003128A7CFD00000003078000FE128A7CFF00000004022A45810000000713E200F600000000067ECE8512EA58FA03C001020000000713A54CF90000000108C00106000000070000000700000002000000070000000700000000"
theorem small_4091828_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4091828_left_root small_4091828_left_fuel small_4091828_left_count small_4091828_left_encoded = true := by
  decide +kernel
theorem small_4091828_left_covered : CoveredBy scale carrier boxes small_4091828_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4091828_left_root small_4091828_left_fuel small_4091828_left_count small_4091828_left_encoded small_4091828_left_checked

theorem cover_4091828 : CoveredBy scale carrier boxes root_4091828 := by
  apply coveredBy_split_literal root_4091828 small_4091828_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1537.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4091828_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1537.covered
#print axioms cover_4091828

def root_4091822 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091822_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091822_left_fuel : Nat := 1
def small_4091822_left_count : Nat := 1
def small_4091822_left_encoded : String := "00000004"
theorem small_4091822_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4091822_left_root small_4091822_left_fuel small_4091822_left_count small_4091822_left_encoded = true := by
  decide +kernel
theorem small_4091822_left_covered : CoveredBy scale carrier boxes small_4091822_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4091822_left_root small_4091822_left_fuel small_4091822_left_count small_4091822_left_encoded small_4091822_left_checked

theorem cover_4091822 : CoveredBy scale carrier boxes root_4091822 := by
  apply coveredBy_split_literal root_4091822 small_4091822_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4091828 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4091822_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4091828
#print axioms cover_4091822

def root_4091821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091821_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091821_right_fuel : Nat := 17
def small_4091821_right_count : Nat := 73
def small_4091821_right_encoded : String := "135D44FF04548A01138670F604548A05138670FA028001020000000713D7ECF90000000107800106128A40FD0000000500000003128A7CFD00000003000000070000000200000007000000001386ACF60000000004548A05138670FA0280010213D7B0F90780010600000006000000060000000113D7ECF90000000107800106128A40FD028000FE13D7ECFF00000004067ECE8112EA58F6022A45850000000513E200FA0000000203C00102000000060000000900000000000000060000000600000003128A7CFD00000003028000FE13D7ECFF00000004067ECE8112EA58F6022A45850000000600000006000000000000000600000006000000021386ACFA00000002028001020000000713D7ECF90000000107800106000000070000000700000004"
theorem small_4091821_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4091821_right_root small_4091821_right_fuel small_4091821_right_count small_4091821_right_encoded = true := by
  decide +kernel
theorem small_4091821_right_covered : CoveredBy scale carrier boxes small_4091821_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4091821_right_root small_4091821_right_fuel small_4091821_right_count small_4091821_right_encoded small_4091821_right_checked

theorem cover_4091821 : CoveredBy scale carrier boxes root_4091821 := by
  apply coveredBy_split_literal root_4091821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4091822 small_4091821_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4091822
  · exact small_4091821_right_covered
#print axioms cover_4091821

def root_4091815 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091815_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4091815_left_fuel : Nat := 1
def small_4091815_left_count : Nat := 1
def small_4091815_left_encoded : String := "00000003"
theorem small_4091815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4091815_left_root small_4091815_left_fuel small_4091815_left_count small_4091815_left_encoded = true := by
  decide +kernel
theorem small_4091815_left_covered : CoveredBy scale carrier boxes small_4091815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4091815_left_root small_4091815_left_fuel small_4091815_left_count small_4091815_left_encoded small_4091815_left_checked

theorem cover_4091815 : CoveredBy scale carrier boxes root_4091815 := by
  apply coveredBy_split_literal root_4091815 small_4091815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4091821 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4091815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4091821
#print axioms cover_4091815

def root_4089653 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4089653 : CoveredBy scale carrier boxes root_4089653 := by
  apply coveredBy_split_literal root_4089653 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1536.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4091815 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1536.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4091815
#print axioms cover_4089653

def root_4089648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089648_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4089648_right_fuel : Nat := 1
def small_4089648_right_count : Nat := 1
def small_4089648_right_encoded : String := "00000001"
theorem small_4089648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4089648_right_root small_4089648_right_fuel small_4089648_right_count small_4089648_right_encoded = true := by
  decide +kernel
theorem small_4089648_right_covered : CoveredBy scale carrier boxes small_4089648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4089648_right_root small_4089648_right_fuel small_4089648_right_count small_4089648_right_encoded small_4089648_right_checked

theorem cover_4089648 : CoveredBy scale carrier boxes root_4089648 := by
  apply coveredBy_split_literal root_4089648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4089653 small_4089648_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4089653
  · exact small_4089648_right_covered
#print axioms cover_4089648

def root_4095632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4095632 : CoveredBy scale carrier boxes root_4095632 := by
  apply coveredBy_split_literal root_4095632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1538.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1539.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1538.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1539.covered
#print axioms cover_4095632

def root_4095626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095626_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095626_left_fuel : Nat := 1
def small_4095626_left_count : Nat := 1
def small_4095626_left_encoded : String := "00000004"
theorem small_4095626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4095626_left_root small_4095626_left_fuel small_4095626_left_count small_4095626_left_encoded = true := by
  decide +kernel
theorem small_4095626_left_covered : CoveredBy scale carrier boxes small_4095626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4095626_left_root small_4095626_left_fuel small_4095626_left_count small_4095626_left_encoded small_4095626_left_checked

theorem cover_4095626 : CoveredBy scale carrier boxes root_4095626 := by
  apply coveredBy_split_literal root_4095626 small_4095626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4095632 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4095626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4095632
#print axioms cover_4095626

def root_4095625 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095625_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095625_right_fuel : Nat := 17
def small_4095625_right_count : Nat := 61
def small_4095625_right_encoded : String := "135D44FF04548A01138670F604548A05138670FA07800102128A40F90000000500000001128A7CF90000000100000009000000021386ACFA0000000207800102128A40F9028001060000000813D7ECFD00000003028000FE13D7ECFF00000004022A45810000000713E200F600000000067ECE8512EA58FA06400102000000070000000800000002000000070000000700000001128A7CF900000001028001060000000813D7ECFD00000003028000FE13D7ECFF00000004022A4581000000080000000800000008000000001386ACF60000000004548A05000000091386ACFA0000000207800102000000090000000900000004"
theorem small_4095625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4095625_right_root small_4095625_right_fuel small_4095625_right_count small_4095625_right_encoded = true := by
  decide +kernel
theorem small_4095625_right_covered : CoveredBy scale carrier boxes small_4095625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4095625_right_root small_4095625_right_fuel small_4095625_right_count small_4095625_right_encoded small_4095625_right_checked

theorem cover_4095625 : CoveredBy scale carrier boxes root_4095625 := by
  apply coveredBy_split_literal root_4095625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4095626 small_4095625_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4095626
  · exact small_4095625_right_covered
#print axioms cover_4095625

def root_4095620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095620_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4095620_right_fuel : Nat := 1
def small_4095620_right_count : Nat := 1
def small_4095620_right_encoded : String := "00000003"
theorem small_4095620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4095620_right_root small_4095620_right_fuel small_4095620_right_count small_4095620_right_encoded = true := by
  decide +kernel
theorem small_4095620_right_covered : CoveredBy scale carrier boxes small_4095620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4095620_right_root small_4095620_right_fuel small_4095620_right_count small_4095620_right_encoded small_4095620_right_checked

theorem cover_4095620 : CoveredBy scale carrier boxes root_4095620 := by
  apply coveredBy_split_literal root_4095620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4095625 small_4095620_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4095625
  · exact small_4095620_right_covered
#print axioms cover_4095620

def root_4099346 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4099346 : CoveredBy scale carrier boxes root_4099346 := by
  apply coveredBy_split_literal root_4099346 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1540.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1541.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1540.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1541.covered
#print axioms cover_4099346

def root_4099341 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099341_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099341_right_fuel : Nat := 1
def small_4099341_right_count : Nat := 1
def small_4099341_right_encoded : String := "00000000"
theorem small_4099341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4099341_right_root small_4099341_right_fuel small_4099341_right_count small_4099341_right_encoded = true := by
  decide +kernel
theorem small_4099341_right_covered : CoveredBy scale carrier boxes small_4099341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4099341_right_root small_4099341_right_fuel small_4099341_right_count small_4099341_right_encoded small_4099341_right_checked

theorem cover_4099341 : CoveredBy scale carrier boxes root_4099341 := by
  apply coveredBy_split_literal root_4099341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4099346 small_4099341_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4099346
  · exact small_4099341_right_covered
#print axioms cover_4099341

def root_4104348 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4104348 : CoveredBy scale carrier boxes root_4104348 := by
  apply coveredBy_split_literal root_4104348 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1542.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1543.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1542.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1543.covered
#print axioms cover_4104348

def root_4104342 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4104342_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4104342_left_fuel : Nat := 1
def small_4104342_left_count : Nat := 1
def small_4104342_left_encoded : String := "00000000"
theorem small_4104342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4104342_left_root small_4104342_left_fuel small_4104342_left_count small_4104342_left_encoded = true := by
  decide +kernel
theorem small_4104342_left_covered : CoveredBy scale carrier boxes small_4104342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4104342_left_root small_4104342_left_fuel small_4104342_left_count small_4104342_left_encoded small_4104342_left_checked

theorem cover_4104342 : CoveredBy scale carrier boxes root_4104342 := by
  apply coveredBy_split_literal root_4104342 small_4104342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4104348 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4104342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4104348
#print axioms cover_4104342

def root_4099340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4099340 : CoveredBy scale carrier boxes root_4099340 := by
  apply coveredBy_split_literal root_4099340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4099341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4104342 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4099341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4104342
#print axioms cover_4099340

def root_4099334 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099334_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4099334_left_fuel : Nat := 1
def small_4099334_left_count : Nat := 1
def small_4099334_left_encoded : String := "00000004"
theorem small_4099334_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4099334_left_root small_4099334_left_fuel small_4099334_left_count small_4099334_left_encoded = true := by
  decide +kernel
theorem small_4099334_left_covered : CoveredBy scale carrier boxes small_4099334_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4099334_left_root small_4099334_left_fuel small_4099334_left_count small_4099334_left_encoded small_4099334_left_checked

theorem cover_4099334 : CoveredBy scale carrier boxes root_4099334 := by
  apply coveredBy_split_literal root_4099334 small_4099334_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.root_4099340 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4099334_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294.cover_4099340
#print axioms cover_4099334

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0294
