import TaoBundleAssembly0027
import TaoBundleAssembly0028
import TaoBundleChunkBatch0117
import TaoBundleChunkBatch0118
import TaoBundleChunkBatch0119
import TaoBundleChunkBatch0120
import TaoBundleChunkBatch0121
import TaoBundleChunkBatch0122
import TaoBundleChunkBatch0123
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029
def root_1215344 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215344_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215344_left_fuel : Nat := 30
def small_1215344_left_count : Nat := 233
def small_1215344_left_encoded : String := "138670FA0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF0280010613D7B0FD022A457913E20102022A45850000000613E200FA000000020DE7C9F6000000060E5FD8F70B4D43FE00000007000000060000000000000001000000070000000313D7ECFD00000003022A45790000000613E1C5020000000100000007000000040F8750F70C9A86FE0F878CFF000000040280010613D7B0FD022A45790000000A000000070000000313D7ECFD00000003022A457913E20102022A45850000000613E200FA000000020B4D43F6000000070000000A0000000113E1C50200000001000000070F8750FF0280010613D7B0FD022A457913E20102022A45850000000513E200FA000000020B4D43F610804CF7000000000B4D43FE0000000A108010FF00000005000000040000000A0000000113E1C50200000001022A45850000000713E200FA000000020B4D43F610804CF7000000000B4D43FE00000007108010FF01400106000000070000000700000004108010F70B4D43FE0000000A108010FF014001060000000A13F614FD00000003011523390000000513F8590200000001033F67C5000000050000000A00000004000000000000000313D7ECFD00000003022A457913E20102022A45850000000513E200FA000000020B4D43F610804CF70000000000000006108010F700000005000000000000000113E1C50200000001022A458513E1C4FA0B4D43F600000006108010F700000005000000000000000213E200FA000000020B4D43F610804CF7000000000B4D43FE00000007108010FF03C0010613A510FD000000070000000313A54CFD000000030000000600000004108010F70B4D43FE10804CFF0000000403C0010613A510FD000000070000000313A54CFD000000030115233913F89502033F67C50000000513BC30FA000000020AA6A276000000060000000A0000000100000007108010FF03C0010613A510FD011523390000000513F8590200000001033F67C50000000513BC30FA000000020AA6A27610EDACF7000000000000000710ED70F70000000A000000000000000313A54CFD00000003011523390000000513F8590200000001033F67C50000000513BC30FA000000020AA6A27610EDACF7000000000000000710ED70F70AA6A27E10EDACFF000000040000000710ED70FF046001061383DCFD0000000500000003000000050000000400000000000000040000000000000004000000000F34D0FE000000070000000400000002"
theorem small_1215344_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215344_left_root small_1215344_left_fuel small_1215344_left_count small_1215344_left_encoded = true := by
  decide +kernel
theorem small_1215344_left_covered : CoveredBy scale carrier boxes small_1215344_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215344_left_root small_1215344_left_fuel small_1215344_left_count small_1215344_left_encoded small_1215344_left_checked

theorem cover_1215344 : CoveredBy scale carrier boxes root_1215344 := by
  apply coveredBy_split_literal root_1215344 small_1215344_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1215842 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1215344_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1215842
#print axioms cover_1215344

def root_1215338 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215338_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215338_left_fuel : Nat := 1
def small_1215338_left_count : Nat := 1
def small_1215338_left_encoded : String := "00000001"
theorem small_1215338_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215338_left_root small_1215338_left_fuel small_1215338_left_count small_1215338_left_encoded = true := by
  decide +kernel
theorem small_1215338_left_covered : CoveredBy scale carrier boxes small_1215338_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215338_left_root small_1215338_left_fuel small_1215338_left_count small_1215338_left_encoded small_1215338_left_checked

theorem cover_1215338 : CoveredBy scale carrier boxes root_1215338 := by
  apply coveredBy_split_literal root_1215338 small_1215338_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1215344 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1215338_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1215344
#print axioms cover_1215338

def root_1214630 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214630_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214630_left_fuel : Nat := 25
def small_1214630_left_count : Nat := 335
def small_1214630_left_encoded : String := "1386AD0204548A05138670FA0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF0000000400000006000000060F8750F70C9A86FE0F878CFF000000040000000A0F8750FF0000000500000004000000000F34D0FE0C9A86F60F878CF700000000000000070000000A00000004000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF000000040280010613D7B0FD067ECE7912EA9502067ECE850000000612EA94FA000000020DE7C9F6000000060000000A0000000112EA590200000001067ECE8512EA58FA0DE7C9F6000000060000000A0000000212EA94FA000000020DE7C9F60E6014F7000000000DE7C9FE0E6014FF00000004000000070E5FD8FF0140010613F5D8FD0569AC39000000061340D50200000001000000070000000300000006000000040E5FD8F70000000A000000000000000313D7ECFD00000003067ECE790000000612EA590200000001067ECE850000000612EA94FA000000020DE7C9F6000000060E5FD8F70DE7C9FE000000090E5FD8FF0000000600000004000000000F8750FF0280010613D7B0FD067ECE7912EA9502067ECE850000000612EA94FA000000020DE7C9F6000000060E5FD8F70000000A000000000000000112EA590200000001067ECE8512EA58FA0DE7C9F6000000060E5FD8F70B4D43FE10804CFF000000040000000600000006000000000000000212EA94FA000000020DE7C9F60E6014F7000000000B4D43FE10804CFF00000004014001060000000800000006000000060E5FD8F70B4D43FE10804CFF00000004014001060000000813F614FD000000030569AC39000000061340D502000000010793F0C5000000060000000800000008000000000000000313D7ECFD00000003067ECE790000000612EA590200000001067ECE850000000612EA94FA000000020DE7C9F6000000060E5FD8F70B4D43FE10804CFF00000004000000060000000600000000000000040F8750F70C9A86FE0F878CFF00000004028001060000000A13D7ECFD00000003067ECE790000000912EA590200000001067ECE850000000A12EA94FA000000020B4D43F600000009000000090F8750FF0280010613D7B0FD067ECE790000000A12EA590200000001067ECE850000000A12EA94FA000000020000000A0000000313D7ECFD00000003067ECE7912EA9502067ECE850000000512EA94FA000000020B4D43F610804CF7000000000B4D43FE00000009000000060000000A0000000112EA590200000001067ECE8512EA58FA0B4D43F610804CF7000000000B4D43FE10804CFF000000040000000600000006108010F700000005000000000000000212EA94FA000000020B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010613A510FD0000000A0000000300000009108010FF03C0010613A510FD0569AC39000000061340D502000000010793F0C500000006000000080000000313A54CFD000000030569AC39000000061340D502000000010000000600000004108010F70B4D43FE10804CFF0000000400000009108010FF03C001060000000A13A54CFD000000030569AC39000000051340D5020000000100000009000000040000000000000004000000000F34D0FE0C9A86F60F878CF7000000000280010613D7B0FD067ECE7912EA95020000000A0000000112EA590200000001067ECE850000000712EA94FA000000020AD3577F00000007000000050000000313D7ECFD00000003067ECE790000000912EA590200000001067ECE8500000006000000090F8750F7028001060000000A00000009000000000000000400000001"
theorem small_1214630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214630_left_root small_1214630_left_fuel small_1214630_left_count small_1214630_left_encoded = true := by
  decide +kernel
theorem small_1214630_left_covered : CoveredBy scale carrier boxes small_1214630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214630_left_root small_1214630_left_fuel small_1214630_left_count small_1214630_left_encoded small_1214630_left_checked

theorem cover_1214630 : CoveredBy scale carrier boxes root_1214630 := by
  apply coveredBy_split_literal root_1214630 small_1214630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1215338 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1214630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1215338
#print axioms cover_1214630

def root_1214624 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214624_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214624_left_fuel : Nat := 1
def small_1214624_left_count : Nat := 1
def small_1214624_left_encoded : String := "00000000"
theorem small_1214624_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214624_left_root small_1214624_left_fuel small_1214624_left_count small_1214624_left_encoded = true := by
  decide +kernel
theorem small_1214624_left_covered : CoveredBy scale carrier boxes small_1214624_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214624_left_root small_1214624_left_fuel small_1214624_left_count small_1214624_left_encoded small_1214624_left_checked

theorem cover_1214624 : CoveredBy scale carrier boxes root_1214624 := by
  apply coveredBy_split_literal root_1214624 small_1214624_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214630 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1214624_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214630
#print axioms cover_1214624

def root_1214623 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214623_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214623_right_fuel : Nat := 18
def small_1214623_right_count : Nat := 93
def small_1214623_right_encoded : String := "0F34D0F6045489F91386AD0204548A05138670FA0CFD9BFF0000000600000006000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010613D7B0FD0AD3577710D13CF600000000067ECE790000000612EA590200000001000000070000000600000003000000060F8750FF00000006000000040F34D0FE0280010600000007000000060000000400000001138671020000000104548A05138670FA0CFD9BFF0000000700000007000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010600000007000000070F8750FF0280010613D7B0FD0AD3577710D13CF600000000022A457913E20102067ECE850000000612EA94FA00000002000000050000000113E1C50200000001067ECE85000000070000000510D100F600000007000000000000000313D7ECFD000000030AD3577710D13CF600000000022A4579000000060000000500000005000000040000000500000000"
theorem small_1214623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214623_right_root small_1214623_right_fuel small_1214623_right_count small_1214623_right_encoded = true := by
  decide +kernel
theorem small_1214623_right_covered : CoveredBy scale carrier boxes small_1214623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214623_right_root small_1214623_right_fuel small_1214623_right_count small_1214623_right_encoded small_1214623_right_checked

theorem cover_1214623 : CoveredBy scale carrier boxes root_1214623 := by
  apply coveredBy_split_literal root_1214623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214624 small_1214623_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214624
  · exact small_1214623_right_covered
#print axioms cover_1214623

def root_1214618 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214618_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214618_right_fuel : Nat := 1
def small_1214618_right_count : Nat := 1
def small_1214618_right_encoded : String := "00000003"
theorem small_1214618_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214618_right_root small_1214618_right_fuel small_1214618_right_count small_1214618_right_encoded = true := by
  decide +kernel
theorem small_1214618_right_covered : CoveredBy scale carrier boxes small_1214618_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214618_right_root small_1214618_right_fuel small_1214618_right_count small_1214618_right_encoded small_1214618_right_checked

theorem cover_1214618 : CoveredBy scale carrier boxes root_1214618 := by
  apply coveredBy_split_literal root_1214618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214623 small_1214618_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214623
  · exact small_1214618_right_covered
#print axioms cover_1214618

def root_1214617 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1214617 : CoveredBy scale carrier boxes root_1214617 := by
  apply coveredBy_split_literal root_1214617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214618 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0468.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214618
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0468.covered
#print axioms cover_1214617

def root_1214611 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214611_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214611_left_fuel : Nat := 1
def small_1214611_left_count : Nat := 1
def small_1214611_left_encoded : String := "00000004"
theorem small_1214611_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214611_left_root small_1214611_left_fuel small_1214611_left_count small_1214611_left_encoded = true := by
  decide +kernel
theorem small_1214611_left_covered : CoveredBy scale carrier boxes small_1214611_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214611_left_root small_1214611_left_fuel small_1214611_left_count small_1214611_left_encoded small_1214611_left_checked

theorem cover_1214611 : CoveredBy scale carrier boxes root_1214611 := by
  apply coveredBy_split_literal root_1214611 small_1214611_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214617 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1214611_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214617
#print axioms cover_1214611

def root_1214610 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214610_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214610_right_fuel : Nat := 13
def small_1214610_right_count : Nat := 41
def small_1214610_right_encoded : String := "120700FE05000106135D44FD0CFD9BF70F350CF600000000045489F91386AD0204548A05000000071386ACFA00000002045489FF1386ACFE000000040C9A86F6000000090000000900000005000000011386710200000001000000070000000700000003135D80FD000000030CFD9BF70F350CF600000000045489F900000009138671020000000104548A0500000007000000050F34D0F6000000070000000000000004"
theorem small_1214610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214610_right_root small_1214610_right_fuel small_1214610_right_count small_1214610_right_encoded = true := by
  decide +kernel
theorem small_1214610_right_covered : CoveredBy scale carrier boxes small_1214610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214610_right_root small_1214610_right_fuel small_1214610_right_count small_1214610_right_encoded small_1214610_right_checked

theorem cover_1214610 : CoveredBy scale carrier boxes root_1214610 := by
  apply coveredBy_split_literal root_1214610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214611 small_1214610_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214611
  · exact small_1214610_right_covered
#print axioms cover_1214610

def root_1214605 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214605_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214605_right_fuel : Nat := 1
def small_1214605_right_count : Nat := 1
def small_1214605_right_encoded : String := "00000002"
theorem small_1214605_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214605_right_root small_1214605_right_fuel small_1214605_right_count small_1214605_right_encoded = true := by
  decide +kernel
theorem small_1214605_right_covered : CoveredBy scale carrier boxes small_1214605_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214605_right_root small_1214605_right_fuel small_1214605_right_count small_1214605_right_encoded small_1214605_right_checked

theorem cover_1214605 : CoveredBy scale carrier boxes root_1214605 := by
  apply coveredBy_split_literal root_1214605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214610 small_1214605_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214610
  · exact small_1214605_right_covered
#print axioms cover_1214605

def root_1214604 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1214604 : CoveredBy scale carrier boxes root_1214604 := by
  apply coveredBy_split_literal root_1214604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214605 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0469.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214605
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0469.covered
#print axioms cover_1214604

def root_1214598 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214598_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1214598_left_fuel : Nat := 1
def small_1214598_left_count : Nat := 1
def small_1214598_left_encoded : String := "00000001"
theorem small_1214598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1214598_left_root small_1214598_left_fuel small_1214598_left_count small_1214598_left_encoded = true := by
  decide +kernel
theorem small_1214598_left_covered : CoveredBy scale carrier boxes small_1214598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1214598_left_root small_1214598_left_fuel small_1214598_left_count small_1214598_left_encoded small_1214598_left_checked

theorem cover_1214598 : CoveredBy scale carrier boxes root_1214598 := by
  apply coveredBy_split_literal root_1214598 small_1214598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214604 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1214598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214604
#print axioms cover_1214598

def root_1213206 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1213206 : CoveredBy scale carrier boxes root_1213206 := by
  apply coveredBy_split_literal root_1213206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0466.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1214598 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0466.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1214598
#print axioms cover_1213206

def root_1213200 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213200_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213200_left_fuel : Nat := 1
def small_1213200_left_count : Nat := 1
def small_1213200_left_encoded : String := "00000000"
theorem small_1213200_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213200_left_root small_1213200_left_fuel small_1213200_left_count small_1213200_left_encoded = true := by
  decide +kernel
theorem small_1213200_left_covered : CoveredBy scale carrier boxes small_1213200_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213200_left_root small_1213200_left_fuel small_1213200_left_count small_1213200_left_encoded small_1213200_left_checked

theorem cover_1213200 : CoveredBy scale carrier boxes root_1213200 := by
  apply coveredBy_split_literal root_1213200 small_1213200_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213206 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1213200_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213206
#print axioms cover_1213200

def root_1213199 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213199_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213199_right_fuel : Nat := 22
def small_1213199_right_count : Nat := 441
def small_1213199_right_encoded : String := "120700F608A912F912073D0208A91305120700FA08A912FF12073CFE0000000405000106135D44FD045489F71386ACF6000000000CFD9BF90F350D0204548A05138670FA0CFD9BFF0F350CFE000000040000000600000006000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000010F34D1020000000104548A05000000061386ACFA0000000200000006138670F60CFD9BF90F350D0204548A05138670FA0CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000010F34D1020000000104548A05000000061386ACFA000000020CFD9BFF0F350CFE0000000400000006000000060000000000000003135D80FD00000003045489F71386ACF6000000000CFD9BF90F350D0204548A05138670FA0CFD9BFF0F350CFE000000040000000600000006000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000010F34D1020000000104548A050000000600000006138670F60CFD9BF90F350D0204548A05138670FA0CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000021386ACFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0000000600000006000000010000000600000006000000010F34D1020000000104548A05000000061386ACFA000000020000000600000000120700FE00000006000000040000000212073CFA0000000208A912FF12073CFE0000000405000106135D44FD045489F71386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000020F350CFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010F878CF9000000010000000600000006000000010F34D102000000010CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A86FE000000060000000600000006000000020F350CFA000000020CFD9BFF0F350CFE000000040000000500000005138670F60CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0000000600000006000000010F878CF9000000010000000600000006000000020F350CFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FA0F878D05000000060000000200000006000000010F878CF9000000010000000500000005000000010F34D102000000010CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A86FE00000006000000050000000500000002000000050000000000000003135D80FD00000003045489F71386ACF6000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000006000000020F350CFA000000020CFD9BFF0F350CFE000000040C9A87020F8750F900000006000000010000000600000005000000010F34D102000000010CFD9C050F34D0FA0CFD9BFF0F350CFE0000000400000006000000050000000200000005138670F60CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A87020F8750F90C9A86FE0000000600000006000000010000000600000006000000020F350CFA0000000200000005000000010F34D102000000010000000500000000120700FE05000106135D44FD045489F71386ACF6000000000CFD9BF9000000090F34D1020000000100000005138670F60CFD9BF900000006000000050000000000000003135D80FD00000003045489F700000009000000050000000400000001120701020000000108A91305120700FA08A912FF12073CFE0000000405000106135D44FD045489F71386ACF600000000045489F91386AD0204548A05000000061386ACFA000000020CFD9BFF0F350CFE000000040000000600000006000000011386710200000001000000070000000700000003135D80FD00000003045489F71386ACF600000000045489F91386AD0204548A05000000060000000600000001138671020000000104548A050000000600000005138670F6045489F91386AD0204548A050000000600000005000000010000000500000000120700FE00000007000000040000000212073CFA0000000208A912FF12073CFE0000000405000106135D44FD045489F71386ACF600000000045489F91386AD020CFD9C050F34D0FA0CFD9BFF0F350CFE000000040000000500000005000000020000000500000001000000050000000500000003000000050000000500000000"
theorem small_1213199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213199_right_root small_1213199_right_fuel small_1213199_right_count small_1213199_right_encoded = true := by
  decide +kernel
theorem small_1213199_right_covered : CoveredBy scale carrier boxes small_1213199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213199_right_root small_1213199_right_fuel small_1213199_right_count small_1213199_right_encoded small_1213199_right_checked

theorem cover_1213199 : CoveredBy scale carrier boxes root_1213199 := by
  apply coveredBy_split_literal root_1213199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213200 small_1213199_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213200
  · exact small_1213199_right_covered
#print axioms cover_1213199

def root_1213193 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213193_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213193_left_fuel : Nat := 1
def small_1213193_left_count : Nat := 1
def small_1213193_left_encoded : String := "00000004"
theorem small_1213193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213193_left_root small_1213193_left_fuel small_1213193_left_count small_1213193_left_encoded = true := by
  decide +kernel
theorem small_1213193_left_covered : CoveredBy scale carrier boxes small_1213193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213193_left_root small_1213193_left_fuel small_1213193_left_count small_1213193_left_encoded small_1213193_left_checked

theorem cover_1213193 : CoveredBy scale carrier boxes root_1213193 := by
  apply coveredBy_split_literal root_1213193 small_1213193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213199 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1213193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213199
#print axioms cover_1213193

def root_1226728 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1226728 : CoveredBy scale carrier boxes root_1226728 := by
  apply coveredBy_split_literal root_1226728 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0470.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0471.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0470.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0471.covered
#print axioms cover_1226728

def root_1226723 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226723_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226723_right_fuel : Nat := 1
def small_1226723_right_count : Nat := 1
def small_1226723_right_encoded : String := "00000002"
theorem small_1226723_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226723_right_root small_1226723_right_fuel small_1226723_right_count small_1226723_right_encoded = true := by
  decide +kernel
theorem small_1226723_right_covered : CoveredBy scale carrier boxes small_1226723_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226723_right_root small_1226723_right_fuel small_1226723_right_count small_1226723_right_encoded small_1226723_right_checked

theorem cover_1226723 : CoveredBy scale carrier boxes root_1226723 := by
  apply coveredBy_split_literal root_1226723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226728 small_1226723_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226728
  · exact small_1226723_right_covered
#print axioms cover_1226723

def root_1226722 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226722_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226722_right_fuel : Nat := 30
def small_1226722_right_count : Nat := 487
def small_1226722_right_encoded : String := "12073CFA0000000205000106135D44FD050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD020CFD9C050F34D0FA0C9A86F6000000080F8750F7028001060000000813D7ECFD00000003078000FE128A7CFF00000004067ECE790000000712EA59020000000100000008000000070000000000000002000000080000000113867102000000010CFD9C050F34D0FA0C9A86F60F878CF700000000028001060000000813D7ECFD00000003078000FE128A7CFF00000004022A45790000000800000005000000080F8750F7028001060000000813D7ECFD00000003078000FE128A7CFF00000004022A457913E201020AD3578510D100FA0B4D43F6000000080000000800000002000000080000000113E1C502000000010AD3578510D100FA0B4D43F600000008108010F700000008000000000000000200000005000000080000000000000002000000080F34D0F6045489F90000000813867102000000010CFD9C050F34D0FA00000005000000020000000500000000135D44FF0CFD9BF7000000080F34D0F600000008000000000000000400000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386AD020CFD9C050F34D0FA0C9A86F60F878CF70000000007800106128A40FD078000FE128A7CFF00000004067ECE7912EA95020AD3578500000006000000080000000112EA5902000000010AD357850000000600000008128A40FF000000080000000400000003128A7CFD00000003078000FE128A7CFF00000004067ECE790000000612EA59020000000100000006000000060F8750F707800106128A40FD078000FE128A7CFF00000004067ECE790000000712EA5902000000010AD3578510D100FA0000000700000002000000070000000700000003128A7CFD00000003078000FE128A7CFF00000004067ECE790000000712EA5902000000010AD3578510D100FA0000000700000002000000070000000700000000000000020F350CFA000000020C9A86F60F878CF7000000000C9A86FA0F878D050780010600000008128A7CFD00000003078000FE128A7CFF00000004067ECE790000000612EA5902000000010DE7C9F6000000050000000700000007000000020F87510500000002000000080F8750F70C9A86FA0000000700000007000000000000000113867102000000010CFD9C050F34D0FA0C9A86F60F878CF70000000007800106128A40FD078000FE128A7CFF00000004022A457913E201020AD3578510D100FA0DE7C9F60000000A0E5FD8F70640010612FF70FD00000008000000030000000A0000000000000002000000050000000100000005128A40FF022A4579000000080000000A00000004000000030000000A0F8750F707800106128A40FD078000FE128A7CFF00000004022A457913E201020AD3578510D100FA0B4D43F610804CF7000000000640010612FF70FD08C000FE11FC24FF0000000400000008000000070000000312FFACFD0000000308C000FE11FC24FF00000004033F67B90000000713BBF502000000010000000A00000007108010F700000007000000000000000210D13CFA00000002000000070000000113E1C502000000010AD3578510D100FA0B4D43F610804CF7000000000640010612FF70FD08C000FE0000000500000008000000030000000A108010F70640010612FF70FD08C000FE11FC24FF00000004011523390000000700000005000000070000000312FFACFD0000000308C000FE11FC24FF0000000401152339000000070000000500000007000000000000000200000005128A40FF022A45790000000713E1C502000000010AD3578510D100FA0B4D43F6000000080000000700000002000000070000000400000003128A7CFD00000003078000FE128A7CFF00000004022A457913E201020AD3578510D100FA0B4D43F60000000A000000070000000210D13CFA00000002000000070000000113E1C502000000010AD3578510D100FA0000000A0000000200000005128A40FF022A4579000000070000000A0000000400000000000000020F350CFA000000020C9A86F60F878CF7000000000C9A86FA0F878D0507800106000000050000000A000000020F87510500000002000000050F8750F70C9A86FA0F878D0507800106128A40FD0000000800000003128A7CFD00000003078000FE128A7CFF00000004022A4579000000070000000500000007000000020F875105000000020780010600000007128A7CFD0000000300000007000000000F34D0F6045489F91386AD020CFD9C050F34D0FA07800106128A40FD078000FE128A7CFF000000040000000600000006000000030000000A000000020F350CFA000000020C9A86FA0F878D0507800106000000080000000A000000020F87510500000002000000050000000113867102000000010CFD9C050F34D0FA0000000A000000020000000500000000135D44FF0CFD9BF70F350CF600000000045489F91386AD020CFD9C050F34D0FA0C9A86F6000000080000000700000002000000070000000113867102000000010CFD9C050F34D0FA0C9A86F60F878CF7000000000000000A0F8750F7000000070000000000000002000000080F34D0F6045489F90000000813867102000000010CFD9C050F34D0FA0000000A00000002000000080000000000000004"
theorem small_1226722_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226722_right_root small_1226722_right_fuel small_1226722_right_count small_1226722_right_encoded = true := by
  decide +kernel
theorem small_1226722_right_covered : CoveredBy scale carrier boxes small_1226722_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226722_right_root small_1226722_right_fuel small_1226722_right_count small_1226722_right_encoded small_1226722_right_checked

theorem cover_1226722 : CoveredBy scale carrier boxes root_1226722 := by
  apply coveredBy_split_literal root_1226722 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226723 small_1226722_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226723
  · exact small_1226722_right_covered
#print axioms cover_1226722

def root_1226716 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226716_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226716_left_fuel : Nat := 1
def small_1226716_left_count : Nat := 1
def small_1226716_left_encoded : String := "00000001"
theorem small_1226716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226716_left_root small_1226716_left_fuel small_1226716_left_count small_1226716_left_encoded = true := by
  decide +kernel
theorem small_1226716_left_covered : CoveredBy scale carrier boxes small_1226716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226716_left_root small_1226716_left_fuel small_1226716_left_count small_1226716_left_encoded small_1226716_left_checked

theorem cover_1226716 : CoveredBy scale carrier boxes root_1226716 := by
  apply coveredBy_split_literal root_1226716 small_1226716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226722 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1226716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226722
#print axioms cover_1226716

def root_1226110 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226110_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226110_left_fuel : Nat := 22
def small_1226110_left_count : Nat := 285
def small_1226110_left_encoded : String := "12073D0208A91305120700FA05000106135D44FD050000FE135D80FF000000040CFD9BF7000000050F34D0F60CFD9BF9000000050F34D1020000000104548A05000000051386ACFA000000020280010613D7B0FD078000FE0000000600000006000000030000000600000000135D44FF0CFD9BF7000000050F34D0F60CFD9BF9000000050F34D1020000000104548A050000000500000008000000000000000400000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000050F34D1020000000104548A05000000051386ACFA000000020C9A86F60F878CF7000000000780010600000006000000060F8750F700000005000000000F34D0F60CFD9BF90F350D0204548A05000000051386ACFA000000020C9A87020F8750F900000005000000010F878CF90000000100000006000000010F34D1020000000104548A05000000061386ACFA000000020000000600000000135D44FF0CFD9BF7000000050F34D0F60CFD9BF9000000050F34D1020000000104548A05000000051386ACFA0000000207800106000000060000000600000000000000040000000212073CFA0000000205000106135D44FD050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9C050000000500000007000000010F34D102000000010CFD9C050F34D0FA0C9A86F60F878CF700000000028001060000000813D7ECFD00000003078000FE128A7CFF000000040AD357790000000610D101020000000100000008000000070F8750F7000000070000000000000002000000080F34D0F60CFD9BF90F350D020CFD9C050F34D0FA0C9A87020F8750F900000007000000010F878CF900000001028001060000000813D7ECFD00000003078000FE00000006000000060000000200000008000000010F34D102000000010000000800000000135D44FF0CFD9BF70F350CF600000000000000070F34D0F600000008000000000000000400000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9C050F34D0FA000000070000000200000007000000010F34D102000000010CFD9C050F34D0FA0C9A86F60F878CF70000000007800106128A40FD078000FE128A7CFF000000040AD3577900000006000000060000000700000003128A7CFD00000003000000060F8750F70000000700000000000000020F350CFA000000020C9A86F60F878CF70000000000000007000000070F34D0F60CFD9BF90F350D020CFD9C050F34D0FA0C9A8702000000070F878CF900000001078001060000000600000006000000020F350CFA0000000200000007000000010F34D102000000010CFD9C050F34D0FA07800106128A40FD078000FE00000006000000060000000300000006000000020F350CFA000000020C9A86FA0F878D05078001060000000600000006000000020000000600000000135D44FF0CFD9BF70F350CF600000000000000070F34D0F60CFD9BF90F350D0200000007000000010F34D1020000000100000008000000000000000400000001"
theorem small_1226110_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226110_left_root small_1226110_left_fuel small_1226110_left_count small_1226110_left_encoded = true := by
  decide +kernel
theorem small_1226110_left_covered : CoveredBy scale carrier boxes small_1226110_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226110_left_root small_1226110_left_fuel small_1226110_left_count small_1226110_left_encoded small_1226110_left_checked

theorem cover_1226110 : CoveredBy scale carrier boxes root_1226110 := by
  apply coveredBy_split_literal root_1226110 small_1226110_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226716 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1226110_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226716
#print axioms cover_1226110

def root_1226104 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226104_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226104_left_fuel : Nat := 1
def small_1226104_left_count : Nat := 1
def small_1226104_left_encoded : String := "00000000"
theorem small_1226104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226104_left_root small_1226104_left_fuel small_1226104_left_count small_1226104_left_encoded = true := by
  decide +kernel
theorem small_1226104_left_covered : CoveredBy scale carrier boxes small_1226104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226104_left_root small_1226104_left_fuel small_1226104_left_count small_1226104_left_encoded small_1226104_left_checked

theorem cover_1226104 : CoveredBy scale carrier boxes root_1226104 := by
  apply coveredBy_split_literal root_1226104 small_1226104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226110 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1226104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226110
#print axioms cover_1226104

def root_1226103 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1226103 : CoveredBy scale carrier boxes root_1226103 := by
  apply coveredBy_split_literal root_1226103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226104 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0472.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0472.covered
#print axioms cover_1226103

def root_1226098 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226098_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1226098_right_fuel : Nat := 1
def small_1226098_right_count : Nat := 1
def small_1226098_right_encoded : String := "00000004"
theorem small_1226098_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1226098_right_root small_1226098_right_fuel small_1226098_right_count small_1226098_right_encoded = true := by
  decide +kernel
theorem small_1226098_right_covered : CoveredBy scale carrier boxes small_1226098_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1226098_right_root small_1226098_right_fuel small_1226098_right_count small_1226098_right_encoded small_1226098_right_checked

theorem cover_1226098 : CoveredBy scale carrier boxes root_1226098 := by
  apply coveredBy_split_literal root_1226098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226103 small_1226098_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226103
  · exact small_1226098_right_covered
#print axioms cover_1226098

def root_1213192 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1213192 : CoveredBy scale carrier boxes root_1213192 := by
  apply coveredBy_split_literal root_1213192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1226098 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213193
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1226098
#print axioms cover_1213192

def root_1213187 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213187_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213187_right_fuel : Nat := 1
def small_1213187_right_count : Nat := 1
def small_1213187_right_encoded : String := "00000003"
theorem small_1213187_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213187_right_root small_1213187_right_fuel small_1213187_right_count small_1213187_right_encoded = true := by
  decide +kernel
theorem small_1213187_right_covered : CoveredBy scale carrier boxes small_1213187_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213187_right_root small_1213187_right_fuel small_1213187_right_count small_1213187_right_encoded small_1213187_right_checked

theorem cover_1213187 : CoveredBy scale carrier boxes root_1213187 := by
  apply coveredBy_split_literal root_1213187 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213192 small_1213187_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213192
  · exact small_1213187_right_covered
#print axioms cover_1213187

def root_1213186 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1213186 : CoveredBy scale carrier boxes root_1213186 := by
  apply coveredBy_split_literal root_1213186 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213187 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0473.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213187
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0473.covered
#print axioms cover_1213186

def root_1213181 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213181_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213181_right_fuel : Nat := 1
def small_1213181_right_count : Nat := 1
def small_1213181_right_encoded : String := "00000002"
theorem small_1213181_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213181_right_root small_1213181_right_fuel small_1213181_right_count small_1213181_right_encoded = true := by
  decide +kernel
theorem small_1213181_right_covered : CoveredBy scale carrier boxes small_1213181_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213181_right_root small_1213181_right_fuel small_1213181_right_count small_1213181_right_encoded small_1213181_right_checked

theorem cover_1213181 : CoveredBy scale carrier boxes root_1213181 := by
  apply coveredBy_split_literal root_1213181 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213186 small_1213181_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213186
  · exact small_1213181_right_covered
#print axioms cover_1213181

def root_1213180 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1213180 : CoveredBy scale carrier boxes root_1213180 := by
  apply coveredBy_split_literal root_1213180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0474.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213181
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0474.covered
#print axioms cover_1213180

def root_1213174 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213174_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1213174_left_fuel : Nat := 1
def small_1213174_left_count : Nat := 1
def small_1213174_left_encoded : String := "00000001"
theorem small_1213174_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1213174_left_root small_1213174_left_fuel small_1213174_left_count small_1213174_left_encoded = true := by
  decide +kernel
theorem small_1213174_left_covered : CoveredBy scale carrier boxes small_1213174_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1213174_left_root small_1213174_left_fuel small_1213174_left_count small_1213174_left_encoded small_1213174_left_checked

theorem cover_1213174 : CoveredBy scale carrier boxes root_1213174 := by
  apply coveredBy_split_literal root_1213174 small_1213174_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213180 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1213174_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213180
#print axioms cover_1213174

def root_1210646 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1210646 : CoveredBy scale carrier boxes root_1210646 := by
  apply coveredBy_split_literal root_1210646 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0465.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1213174 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0465.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1213174
#print axioms cover_1210646

def root_1210640 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1210640_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1210640_left_fuel : Nat := 1
def small_1210640_left_count : Nat := 1
def small_1210640_left_encoded : String := "00000000"
theorem small_1210640_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1210640_left_root small_1210640_left_fuel small_1210640_left_count small_1210640_left_encoded = true := by
  decide +kernel
theorem small_1210640_left_covered : CoveredBy scale carrier boxes small_1210640_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1210640_left_root small_1210640_left_fuel small_1210640_left_count small_1210640_left_encoded small_1210640_left_checked

theorem cover_1210640 : CoveredBy scale carrier boxes root_1210640 := by
  apply coveredBy_split_literal root_1210640 small_1210640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210646 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1210640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210646
#print axioms cover_1210640

def root_1238749 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1238749 : CoveredBy scale carrier boxes root_1238749 := by
  apply coveredBy_split_literal root_1238749 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0475.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0476.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0475.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0476.covered
#print axioms cover_1238749

def root_1238743 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238743_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238743_left_fuel : Nat := 1
def small_1238743_left_count : Nat := 1
def small_1238743_left_encoded : String := "00000001"
theorem small_1238743_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238743_left_root small_1238743_left_fuel small_1238743_left_count small_1238743_left_encoded = true := by
  decide +kernel
theorem small_1238743_left_covered : CoveredBy scale carrier boxes small_1238743_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238743_left_root small_1238743_left_fuel small_1238743_left_count small_1238743_left_encoded small_1238743_left_checked

theorem cover_1238743 : CoveredBy scale carrier boxes root_1238743 := by
  apply coveredBy_split_literal root_1238743 small_1238743_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238749 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1238743_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238749
#print axioms cover_1238743

def root_1238419 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238419_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238419_left_fuel : Nat := 18
def small_1238419_left_count : Nat := 151
def small_1238419_left_encoded : String := "12073D0208A91305120700FA08A912FF12073CFE00000004050000F6135D80F70000000005000106135D44FD0CFD9BF9000000050000000A00000003135D80FD000000030CFD9BF90F350D0200000009000000010F34D1020000000104548A05138670FA0CFD9BFF00000005000000090000000200000009135D44F7050001060000000A135D80FD000000030CFD9BF9000000050F34D1020000000104548A05000000050000000900000000120700FE050000F60000000900000009000000040000000212073CFA0000000208A912FF12073CFE00000004050000F6135D80F70000000005000106135D44FD0CFD9BF90F350D020CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9BFF0000000700000007000000010F34D102000000010CFD9C050F34D0FA0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000A0F8750FF00000007000000040000000A000000020F350CFA000000020CFD9BFF0F350CFE00000004000000070F34D0FE000000090000000400000003135D80FD000000030CFD9BF90F350D0200000009000000010F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9BFF0000000900000009135D44F705000106135D44FD0CFD9BF90F350D020CFD9C050000000A00000007000000010F34D102000000010CFD9C050000000A0F350CFA000000020000000700000003135D80FD000000030CFD9BF90F350D0200000009000000010F34D102000000010CFD9C050F34D0FA00000009000000020000000900000000120700FE050000F600000009000000090000000400000001"
theorem small_1238419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238419_left_root small_1238419_left_fuel small_1238419_left_count small_1238419_left_encoded = true := by
  decide +kernel
theorem small_1238419_left_covered : CoveredBy scale carrier boxes small_1238419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238419_left_root small_1238419_left_fuel small_1238419_left_count small_1238419_left_encoded small_1238419_left_checked

theorem cover_1238419 : CoveredBy scale carrier boxes root_1238419 := by
  apply coveredBy_split_literal root_1238419 small_1238419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238743 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1238419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238743
#print axioms cover_1238419

def root_1238413 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238413_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238413_left_fuel : Nat := 1
def small_1238413_left_count : Nat := 1
def small_1238413_left_encoded : String := "00000004"
theorem small_1238413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238413_left_root small_1238413_left_fuel small_1238413_left_count small_1238413_left_encoded = true := by
  decide +kernel
theorem small_1238413_left_covered : CoveredBy scale carrier boxes small_1238413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238413_left_root small_1238413_left_fuel small_1238413_left_count small_1238413_left_encoded small_1238413_left_checked

theorem cover_1238413 : CoveredBy scale carrier boxes root_1238413 := by
  apply coveredBy_split_literal root_1238413 small_1238413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238419 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1238413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238419
#print axioms cover_1238413

def root_1238412 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1238412 : CoveredBy scale carrier boxes root_1238412 := by
  apply coveredBy_split_literal root_1238412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238413 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0477.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238413
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0477.covered
#print axioms cover_1238412

def root_1238407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238407_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238407_right_fuel : Nat := 1
def small_1238407_right_count : Nat := 1
def small_1238407_right_encoded : String := "00000003"
theorem small_1238407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238407_right_root small_1238407_right_fuel small_1238407_right_count small_1238407_right_encoded = true := by
  decide +kernel
theorem small_1238407_right_covered : CoveredBy scale carrier boxes small_1238407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238407_right_root small_1238407_right_fuel small_1238407_right_count small_1238407_right_encoded small_1238407_right_checked

theorem cover_1238407 : CoveredBy scale carrier boxes root_1238407 := by
  apply coveredBy_split_literal root_1238407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238412 small_1238407_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238412
  · exact small_1238407_right_covered
#print axioms cover_1238407

def root_1238406 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1238406 : CoveredBy scale carrier boxes root_1238406 := by
  apply coveredBy_split_literal root_1238406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0478.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238407
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0478.covered
#print axioms cover_1238406

def root_1238401 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238401_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238401_right_fuel : Nat := 1
def small_1238401_right_count : Nat := 1
def small_1238401_right_encoded : String := "00000002"
theorem small_1238401_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238401_right_root small_1238401_right_fuel small_1238401_right_count small_1238401_right_encoded = true := by
  decide +kernel
theorem small_1238401_right_covered : CoveredBy scale carrier boxes small_1238401_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238401_right_root small_1238401_right_fuel small_1238401_right_count small_1238401_right_encoded small_1238401_right_checked

theorem cover_1238401 : CoveredBy scale carrier boxes root_1238401 := by
  apply coveredBy_split_literal root_1238401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238406 small_1238401_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238406
  · exact small_1238401_right_covered
#print axioms cover_1238401

def root_1238400 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1238400 : CoveredBy scale carrier boxes root_1238400 := by
  apply coveredBy_split_literal root_1238400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238401 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0479.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238401
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0479.covered
#print axioms cover_1238400

def root_1238394 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238394_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238394_left_fuel : Nat := 1
def small_1238394_left_count : Nat := 1
def small_1238394_left_encoded : String := "00000001"
theorem small_1238394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238394_left_root small_1238394_left_fuel small_1238394_left_count small_1238394_left_encoded = true := by
  decide +kernel
theorem small_1238394_left_covered : CoveredBy scale carrier boxes small_1238394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238394_left_root small_1238394_left_fuel small_1238394_left_count small_1238394_left_encoded small_1238394_left_checked

theorem cover_1238394 : CoveredBy scale carrier boxes root_1238394 := by
  apply coveredBy_split_literal root_1238394 small_1238394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238400 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1238394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238400
#print axioms cover_1238394

def root_1238288 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238288_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238288_left_fuel : Nat := 13
def small_1238288_left_count : Nat := 49
def small_1238288_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120700FA0000000A0000000212073CFA0000000208A912FF12073CFE00000004050000F60000000900000007000000091151E8FF000000050000000400000003115224FD000000030A0000FE115224FF00000004000000091151E8FF08A91305000000070000000700000004000000021151E905000000020A0001061151E8FD0A0000FE115224FF000000040000000900000007000000030000000900000001"
theorem small_1238288_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238288_left_root small_1238288_left_fuel small_1238288_left_count small_1238288_left_encoded = true := by
  decide +kernel
theorem small_1238288_left_covered : CoveredBy scale carrier boxes small_1238288_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238288_left_root small_1238288_left_fuel small_1238288_left_count small_1238288_left_encoded small_1238288_left_checked

theorem cover_1238288 : CoveredBy scale carrier boxes root_1238288 := by
  apply coveredBy_split_literal root_1238288 small_1238288_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238394 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1238288_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238394
#print axioms cover_1238288

def root_1238283 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238283_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1238283_right_fuel : Nat := 1
def small_1238283_right_count : Nat := 1
def small_1238283_right_encoded : String := "00000000"
theorem small_1238283_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1238283_right_root small_1238283_right_fuel small_1238283_right_count small_1238283_right_encoded = true := by
  decide +kernel
theorem small_1238283_right_covered : CoveredBy scale carrier boxes small_1238283_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1238283_right_root small_1238283_right_fuel small_1238283_right_count small_1238283_right_encoded small_1238283_right_checked

theorem cover_1238283 : CoveredBy scale carrier boxes root_1238283 := by
  apply coveredBy_split_literal root_1238283 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238288 small_1238283_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238288
  · exact small_1238283_right_covered
#print axioms cover_1238283

def root_1210639 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1210639 : CoveredBy scale carrier boxes root_1210639 := by
  apply coveredBy_split_literal root_1210639 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1238283 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210640
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1238283
#print axioms cover_1210639

def root_1210638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1210638_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1210638_right_fuel : Nat := 20
def small_1210638_right_count : Nat := 213
def small_1210638_right_encoded : String := "0A0000F6115224F7000000000A0001021151E8F90A0000FA115225050A0001061151E8FD0A0000FE1152250908A912F700000009120700F60000000900000000000000041151E90900000004000000060000000300000009000000021151E905000000020000000900000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE1152250908A912F712073CF60000000008A912F912073D0208A91305120700FA08A91309120700FE0000000900000004000000090000000212073CFA0000000208A91309120700FE00000009000000040000000500000001120701020000000108A91305120700FA08A91309120700FE05000106000000070000000500000004000000050000000200000005120700F608A912F912073D0208A913050000000600000005000000010000000500000000000000041151E909000000040000000500000003115224FD000000030A0000FE1152250908A912F712073CF60000000008A912F900000009120701020000000108A91305120700FA000000050000000200000005120700F60000000500000000000000041151E9090000000408A912F700000009120700F60000000900000000000000021151E905000000020A0001061151E8FD0A0000FE000000051151E909000000040000000500000003115224FD000000030A0000FE1152250908A912F700000009120700F60000000900000000000000041151E90900000004000000091151E8F70A0001021151E8F90A0000FA000000091151E905000000020000000900000001115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE1152250908A912F912073D0208A913050000000A0000000900000001120701020000000108A913050000000A12073CFA0000000208A91309120700FE000000050000000400000005000000041151E909000000040000000A00000003115224FD000000030A0000FE1152250908A912F900000009120701020000000108A91305120700FA000000090000000200000009000000041151E9090000000400000009000000021151E905000000020A0001061151E8FD0A0000FE1152250908A912F900000009120701020000000108A91309120700FE000000050000000400000005000000041151E9090000000400000009000000030000000900000000"
theorem small_1210638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1210638_right_root small_1210638_right_fuel small_1210638_right_count small_1210638_right_encoded = true := by
  decide +kernel
theorem small_1210638_right_covered : CoveredBy scale carrier boxes small_1210638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1210638_right_root small_1210638_right_fuel small_1210638_right_count small_1210638_right_encoded small_1210638_right_checked

theorem cover_1210638 : CoveredBy scale carrier boxes root_1210638 := by
  apply coveredBy_split_literal root_1210638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210639 small_1210638_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210639
  · exact small_1210638_right_covered
#print axioms cover_1210638

def root_1251379 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1251379_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1251379_left_fuel : Nat := 21
def small_1251379_left_count : Nat := 307
def small_1251379_left_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073D0208A91305120700FA08A912FD12073D0605000108135D44FF0CFD9BF70F350CF6000000000CFD9BF9000000070F34D1020000000104548A05138670FA0000000700000002000000070F34D0F60CFD9BF90F350D0200000007000000010F34D1020000000104548A05138670FA0000000A000000020000000A0000000000000004135D80FF000000040CFD9BF7000000070F34D0F60CFD9BF9000000070F34D1020000000104548A05138670FA0CFD9BFD0F350D0600000007000000030000000600000002000000070000000000000003000000070000000212073CFA0000000208A912FD12073D0605000108135D44FF0CFD9BF700000007000000070000000400000007000000030000000700000001120701020000000108A91305120700FA08A912FD12073D0605000108135D44FF0CFD9BF70F350CF600000000045489F91386AD0204548A05138670FA0CFD9BFD0F350D06000000060000000300000006000000021386ACFA00000002000000070000000113867102000000010000000A0F34D0F60000000A0000000000000004135D80FF000000040CFD9BF70F350CF600000000045489F91386AD0204548A05138670FA00000007000000020000000700000001138671020000000104548A05138670FA0000000A00000002000000070F34D0F60000000A000000000000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0605000108135D44FF0CFD9BF70F350CF600000000045489F91386AD020CFD9C050F34D0FA0000000700000002000000070000000113867102000000010CFD9C050F34D0FA0000000A000000020000000A0F34D0F60000000A0000000000000004135D80FF000000040CFD9BF70F350CF600000000045489F90000000713867102000000010CFD9C050F34D0FA0000000700000002000000070F34D0F6045489F91386AD020CFD9C050F34D0FA000000070000000200000007000000010000000A000000000000000312070106000000030000000A120700F608A912F912073D0208A91305120700FA08A912FD12073D0605000108135D44FF045489F71386ACF6000000000CFD9BF90F350D0204548A05138670FA0CFD9BFD0F350D060C9A8702000000070000000A00000003000000070000000200000007000000010F34D102000000010000000A138670F60000000A0000000000000004135D80FF00000004045489F71386ACF6000000000CFD9BF90F350D0204548A05138670FA000000070000000200000007000000010F34D102000000010000000A138670F60CFD9BF90F350D0204548A05138670FA0CFD9BFD0F350D060C9A8702000000070000000A00000003000000070000000200000007000000010000000A000000000000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D0605000108135D44FF045489F71386ACF6000000000CFD9BF9000000070F34D102000000010000000A138670F60CFD9BF90F350D0200000007000000010000000A0000000000000004135D80FF00000004045489F700000007138670F60CFD9BF9000000070F34D102000000010000000A00000000000000030000000700000001120701020000000108A91305120700FA0000000A000000020000000A0000000000000004"
theorem small_1251379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1251379_left_root small_1251379_left_fuel small_1251379_left_count small_1251379_left_encoded = true := by
  decide +kernel
theorem small_1251379_left_covered : CoveredBy scale carrier boxes small_1251379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1251379_left_root small_1251379_left_fuel small_1251379_left_count small_1251379_left_encoded small_1251379_left_checked

theorem cover_1251379 : CoveredBy scale carrier boxes root_1251379 := by
  apply coveredBy_split_literal root_1251379 small_1251379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0482.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1251379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0482.covered
#print axioms cover_1251379

def root_1251373 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1251373_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1251373_left_fuel : Nat := 1
def small_1251373_left_count : Nat := 1
def small_1251373_left_encoded : String := "00000003"
theorem small_1251373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1251373_left_root small_1251373_left_fuel small_1251373_left_count small_1251373_left_encoded = true := by
  decide +kernel
theorem small_1251373_left_covered : CoveredBy scale carrier boxes small_1251373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1251373_left_root small_1251373_left_fuel small_1251373_left_count small_1251373_left_encoded small_1251373_left_checked

theorem cover_1251373 : CoveredBy scale carrier boxes root_1251373 := by
  apply coveredBy_split_literal root_1251373 small_1251373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1251379 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1251373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1251379
#print axioms cover_1251373

def root_1249649 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1249649 : CoveredBy scale carrier boxes root_1249649 := by
  apply coveredBy_split_literal root_1249649 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0481.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1251373 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0481.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1251373
#print axioms cover_1249649

def root_1249644 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249644_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249644_right_fuel : Nat := 1
def small_1249644_right_count : Nat := 1
def small_1249644_right_encoded : String := "00000002"
theorem small_1249644_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1249644_right_root small_1249644_right_fuel small_1249644_right_count small_1249644_right_encoded = true := by
  decide +kernel
theorem small_1249644_right_covered : CoveredBy scale carrier boxes small_1249644_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1249644_right_root small_1249644_right_fuel small_1249644_right_count small_1249644_right_encoded small_1249644_right_checked

theorem cover_1249644 : CoveredBy scale carrier boxes root_1249644 := by
  apply coveredBy_split_literal root_1249644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1249649 small_1249644_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1249649
  · exact small_1249644_right_covered
#print axioms cover_1249644

def root_1249643 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249643_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249643_right_fuel : Nat := 18
def small_1249643_right_count : Nat := 151
def small_1249643_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E8FF08A912F712073CF60000000008A912F900000008120701020000000100000008120700F6000000080000000000000004115224FF0000000408A912F712073CF60000000008A912F900000008120701020000000100000008120700F6000000080000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F912073D0208A912FD12073D0600000007000000030000000700000001120701020000000108A912FD12073D06050000FA135D810505000108135D44FF0CFD9BF70F350CF600000000000000070F34D0F60000000600000000000000040000000700000002135D45050000000205000108135D44FF0CFD9BF70F350CF600000000000000070F34D0F60000000600000000000000040000000700000003120701060000000300000006120700F608A912F912073D0208A912FD12073D06050000FA00000007135D45050000000200000007000000030000000700000001120701020000000108A912FD12073D06050000FA0000000A0000000600000003000000060000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D020000000700000001120701020000000108A912FD12073D0608A912FF12073D08050000FA000000070000000600000004000000060000000300000006120700F608A912F912073D0208A912FD12073D0608A912FF00000007120701080000000400000007000000030000000700000001120701020000000108A912FD12073D0608A912FF0000000800000006000000030000000600000000"
theorem small_1249643_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1249643_right_root small_1249643_right_fuel small_1249643_right_count small_1249643_right_encoded = true := by
  decide +kernel
theorem small_1249643_right_covered : CoveredBy scale carrier boxes small_1249643_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1249643_right_root small_1249643_right_fuel small_1249643_right_count small_1249643_right_encoded small_1249643_right_checked

theorem cover_1249643 : CoveredBy scale carrier boxes root_1249643 := by
  apply coveredBy_split_literal root_1249643 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1249644 small_1249643_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1249644
  · exact small_1249643_right_covered
#print axioms cover_1249643

def root_1249637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249637_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1249637_left_fuel : Nat := 1
def small_1249637_left_count : Nat := 1
def small_1249637_left_encoded : String := "00000001"
theorem small_1249637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1249637_left_root small_1249637_left_fuel small_1249637_left_count small_1249637_left_encoded = true := by
  decide +kernel
theorem small_1249637_left_covered : CoveredBy scale carrier boxes small_1249637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1249637_left_root small_1249637_left_fuel small_1249637_left_count small_1249637_left_encoded small_1249637_left_checked

theorem cover_1249637 : CoveredBy scale carrier boxes root_1249637 := by
  apply coveredBy_split_literal root_1249637 small_1249637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1249643 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1249637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1249643
#print axioms cover_1249637

def root_1247909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1247909 : CoveredBy scale carrier boxes root_1247909 := by
  apply coveredBy_split_literal root_1247909 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0480.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1249637 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0480.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1249637
#print axioms cover_1247909

def root_1247903 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1247903_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1247903_left_fuel : Nat := 1
def small_1247903_left_count : Nat := 1
def small_1247903_left_encoded : String := "00000000"
theorem small_1247903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1247903_left_root small_1247903_left_fuel small_1247903_left_count small_1247903_left_encoded = true := by
  decide +kernel
theorem small_1247903_left_covered : CoveredBy scale carrier boxes small_1247903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1247903_left_root small_1247903_left_fuel small_1247903_left_count small_1247903_left_encoded small_1247903_left_checked

theorem cover_1247903 : CoveredBy scale carrier boxes root_1247903 := by
  apply coveredBy_split_literal root_1247903 small_1247903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1247909 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1247903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1247909
#print axioms cover_1247903

def root_1247902 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1247902_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1247902_right_fuel : Nat := 24
def small_1247902_right_count : Nat := 415
def small_1247902_right_encoded : String := "1151E8F70A0001021151E8F90A0000FA115225050A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA08A912FF000000051207010800000004050000F6135D80F70000000005000102135D44F90000000A00000001135D80F900000001050001060000000A000000070000000A0000000212073CFA0000000208A912FF000000070000000A00000003115224FD000000030A0001081151E8FF0000000700000004115224FF0000000408A91305120700FA08A912FD12073D0608A912FF00000007120701080000000400000007000000031207010600000003000000070000000212073CFA0000000208A912FD12073D0608A912FF12073D0800000007000000040000000700000003120701060000000300000009000000021151E905000000020A0001061151E8FD0000000A00000003115224FD000000030A0001081151E8FF08A912FD0000000712070106000000030000000900000004115224FF0000000408A912FD12073D0608A912FF12073D08050000F6000000070000000A00000004000000070000000312070106000000030000000900000001115224F9000000010A0000FA115225050A0001061151E8FD0A0001081151E8FF08A912F912073D0208A91305000000050000000700000001120701020000000108A91305120700FA050000F6135D80F70000000005000106135D44FD05000108135D44FF00000007000000040000000700000003135D80FD0000000305000108135D44FF00000007000000040000000700000007000000020000000700000004115224FF0000000408A912F912073D0208A91305120700FA08A912FF12073D08050000F6135D80F70000000005000106135D44FD0CFD9BF900000005000000070000000300000007135D44F705000106135D44FD00000005000000030000000500000000000000041207010800000004050000F6135D80F70000000005000106135D44FD0000000800000003135D80FD000000030CFD9BF90F350D0204548A050000000500000006000000010F34D1020000000100000006135D44F705000106135D44FD0CFD9BF9000000080000000800000003135D80FD000000030CFD9BF90000000500000007000000000000000212073CFA0000000208A912FF12073D08050000F60000000700000007000000041207010800000004050000F600000008135D44F70500010600000008000000070000000000000001120701020000000108A91305120700FA08A912FF12073D08050000F6135D80F70000000005000106135D44FD00000007000000030000000700000007000000041207010800000004050000F600000006000000080000000212073CFA0000000208A912FF0000000712070108000000040000000800000003115224FD000000030A0001081151E8FF08A912F912073D0208A91305120700FA00000007000000020000000700000001120701020000000108A91305120700FA08A912FD12073D06050000F6135D80F70000000005000108135D44FF045489F900000007138671020000000104548A05138670FA00000007000000020000000700000004000000070000000700000003000000070000000212073CFA0000000208A912FD12073D0600000007000000030000000700000004115224FF0000000408A912F912073D0208A91305120700FA08A912FD12073D0608A912FF000000071207010800000004050000F6135D80F7000000000CFD9BF90F350D02000000070000000100000007135D44F70000000700000000000000031207010600000003000000070000000212073CFA0000000208A912FD12073D0608A912FF000000071207010800000004000000070000000312070106000000030000000700000001120701020000000108A91305120700FA08A912FD12073D0608A912FF0000000712070108000000040000000700000003000000070000000212073CFA0000000208A912FD0000000700000007000000021151E905000000020A0001061151E8FD0A0001081151E8FF00000007000000040000000700000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FD000000071207010600000003050000F6000000060000000700000001120701020000000108A912FD12073D0600000007000000031207010600000003050000F6135D80F700000000000000070000000700000004115224FF0000000408A912F912073D0208A912FD000000071207010600000003000000060000000112070102000000010000000700000000"
theorem small_1247902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1247902_right_root small_1247902_right_fuel small_1247902_right_count small_1247902_right_encoded = true := by
  decide +kernel
theorem small_1247902_right_covered : CoveredBy scale carrier boxes small_1247902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1247902_right_root small_1247902_right_fuel small_1247902_right_count small_1247902_right_encoded small_1247902_right_checked

theorem cover_1247902 : CoveredBy scale carrier boxes root_1247902 := by
  apply coveredBy_split_literal root_1247902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1247903 small_1247902_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1247903
  · exact small_1247902_right_covered
#print axioms cover_1247902

def root_1247901 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1247901 : CoveredBy scale carrier boxes root_1247901 := by
  apply coveredBy_split_literal root_1247901 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1247902 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0483.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1247902
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0483.covered
#print axioms cover_1247901

def root_1210637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1210637 : CoveredBy scale carrier boxes root_1210637 := by
  apply coveredBy_split_literal root_1210637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1247901 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210638
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1247901
#print axioms cover_1210637

def root_1262265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1262265 : CoveredBy scale carrier boxes root_1262265 := by
  apply coveredBy_split_literal root_1262265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0486.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0487.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0486.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0487.covered
#print axioms cover_1262265

def root_1262259 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262259_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262259_left_fuel : Nat := 1
def small_1262259_left_count : Nat := 1
def small_1262259_left_encoded : String := "00000001"
theorem small_1262259_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1262259_left_root small_1262259_left_fuel small_1262259_left_count small_1262259_left_encoded = true := by
  decide +kernel
theorem small_1262259_left_covered : CoveredBy scale carrier boxes small_1262259_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1262259_left_root small_1262259_left_fuel small_1262259_left_count small_1262259_left_encoded small_1262259_left_checked

theorem cover_1262259 : CoveredBy scale carrier boxes root_1262259 := by
  apply coveredBy_split_literal root_1262259 small_1262259_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1262265 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1262259_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1262265
#print axioms cover_1262259

def root_1262047 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262047_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262047_left_fuel : Nat := 16
def small_1262047_left_count : Nat := 99
def small_1262047_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E907000000030A0001081151E90900000004000000091152250908A912F712073CF60000000008A913050000000512073CFA0000000208A913090000000500000009120700F608A913050000000512073CFA0000000208A9130900000005000000090000000000000004115225070A0001081151E90900000004000000091152250908A912F712073CF60000000008A91305120700FA000000090000000200000009120700F608A91305120700FA000000050000000200000009000000000000000400000003000000021151E905000000020A0001061151E907000000030A0001081151E90900000004000000091152250908A912F712073CF60000000008A9130912070108000000040500010200000006135D80F900000001050000FA00000006135D4505000000020000000900000009120700F608A9130912070108000000040500010200000005135D80F900000001050000FA00000005135D450500000002000000060000000900000000000000040000000900000001"
theorem small_1262047_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1262047_left_root small_1262047_left_fuel small_1262047_left_count small_1262047_left_encoded = true := by
  decide +kernel
theorem small_1262047_left_covered : CoveredBy scale carrier boxes small_1262047_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1262047_left_root small_1262047_left_fuel small_1262047_left_count small_1262047_left_encoded small_1262047_left_checked

theorem cover_1262047 : CoveredBy scale carrier boxes root_1262047 := by
  apply coveredBy_split_literal root_1262047 small_1262047_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1262259 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1262047_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1262259
#print axioms cover_1262047

def root_1262041 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262041_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1262041_left_fuel : Nat := 1
def small_1262041_left_count : Nat := 1
def small_1262041_left_encoded : String := "00000000"
theorem small_1262041_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1262041_left_root small_1262041_left_fuel small_1262041_left_count small_1262041_left_encoded = true := by
  decide +kernel
theorem small_1262041_left_covered : CoveredBy scale carrier boxes small_1262041_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1262041_left_root small_1262041_left_fuel small_1262041_left_count small_1262041_left_encoded small_1262041_left_checked

theorem cover_1262041 : CoveredBy scale carrier boxes root_1262041 := by
  apply coveredBy_split_literal root_1262041 small_1262041_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1262047 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1262041_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1262047
#print axioms cover_1262041

def root_1262040 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1262040 : CoveredBy scale carrier boxes root_1262040 := by
  apply coveredBy_split_literal root_1262040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1262041 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0488.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1262041
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0488.covered
#print axioms cover_1262040

def root_1259894 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1259894 : CoveredBy scale carrier boxes root_1259894 := by
  apply coveredBy_split_literal root_1259894 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0485.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1262040 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0485.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1262040
#print axioms cover_1259894

def root_1258296 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1258296 : CoveredBy scale carrier boxes root_1258296 := by
  apply coveredBy_split_literal root_1258296 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0484.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1259894 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0484.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1259894
#print axioms cover_1258296

def root_1210636 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1210636 : CoveredBy scale carrier boxes root_1210636 := by
  apply coveredBy_split_literal root_1210636 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1258296 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210637
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1258296
#print axioms cover_1210636

def root_1138228 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1138228 : CoveredBy scale carrier boxes root_1138228 := by
  apply coveredBy_split_literal root_1138228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1138229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1210636 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1138229
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1210636
#print axioms cover_1138228

def root_948356 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948356 : CoveredBy scale carrier boxes root_948356 := by
  apply coveredBy_split_literal root_948356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.root_948357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1138228 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.cover_948357
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1138228
#print axioms cover_948356

def root_1267590 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267590 : CoveredBy scale carrier boxes root_1267590 := by
  apply coveredBy_split_literal root_1267590 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0489.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0490.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0489.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0490.covered
#print axioms cover_1267590

def root_1277553 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277553_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277553_left_fuel : Nat := 23
def small_1277553_left_count : Nat := 429
def small_1277553_left_encoded : String := "13E20104067ECE8912EA58FE0B4D43F610804CF7000000000B4D43FC10804CFD0000000303C0010213A510F9033F67BB13BC3104000000060000000213BBF504000000020569AC491340D4FE0000000900000004134110FE000000040BF3E576100928F700000000000000061008ECF70BF3E57C0000000900000006000000000000000113A54CF900000001033F67BB0000000913BBF504000000020569AC4900000009134110FE0000000400000009108010FD03C001020000000613A54CF900000001033F67BB0000000613BBF504000000020569AC49000000060000000700000003108010F70B4D43FC10804CFD0000000303C0010213A510F9033F67BB0000000913BBF504000000020569AC4900000009134110FE000000040AA6A27610EDACF7000000000BF3E57C000000091008ECFD000000060000000310ED70F70BF3E57C000000091008ECFD03200102000000060000000900000003000000000000000113A54CF90000000100000009108010FD03C0010213A510F9033F67BB0000000513BBF504000000020569AC4900000005000000060000000113A54CF900000001033F67BB0000000513BBF504000000020569AC4900000005134110FE000000040AA6A27610EDACF7000000000AA6A27C10EDACFD000000030460010200000006000000070000000610ED70F70AA6A27C10EDACFD000000030000000910ED70FD046001020000000600000005000000030000000000000003000000000000000412EA94FE000000040B4D43F610804CF7000000000B4D43FC10804CFD0000000303C0010213A510F9033F67BB13BC31040793F0C90000000612825CFE000000040BF3E576100928F700000000000000061008ECF70BF3E57C0000000A00000006000000000000000213BBF504000000020793F0C9128220FE0BF3E576100928F700000000000000061008ECF70BF3E57C100928FD00000003032001020000000613C144F90000000102B4D69B0000000900000005000000060000000000000004000000050000000113A54CF900000001033F67BB13BC31040793F0C900000009000000070000000213BBF504000000020793F0C9128220FE0BF3E576100928F700000000000000071008ECF70BF3E57C000000091008ECFD0000000700000003000000000000000400000005108010FD03C001020000000613A54CF900000001033F67BB0000000713BBF504000000020793F0C9128220FE00000007000000040000000700000003108010F70B4D43FC10804CFD0000000303C0010213A510F9033F67BB13BC31040793F0C9128220FE0AA6A27610EDACF7000000000BF3E57C00000009000000060000000A000000040000000A0000000213BBF504000000020793F0C9128220FE0AA6A27610EDACF7000000000BF3E57C0000000A1008ECFD032001020000000613C144F90000000102B4D69B000000060000000A000000030000000A000000040000000A0000000113A54CF900000001033F67BB13BC31040793F0C90000000912825CFE000000040AA6A27610EDACF7000000000BF3E57C000000091008ECFD000000070000000310ED70F70000000A000000000000000213BBF504000000020793F0C9128220FE0AA6A27610EDACF7000000000BF3E57C000000091008ECFD046001021383DCF902B4D69B0000000913D0D1040000000207095FA9000000090000000500000001000000090000000310ED70F70BF3E57C000000091008ECFD046001020000000A0000000900000003000000000000000412825CFE000000040AA6A27610EDACF7000000000BF3E57C000000051008ECFD0460010200000005138418F900000001000000050000000310ED70F70000000A00000000108010FD03C0010213A510F9033F67BB0000000613BBF504000000020793F0C9000000060000000A0000000113A54CF900000001033F67BB13BC31040793F0C9128220FE0AA6A2760000000710ED70F70AA6A27C0000000700000006000000000000000412825CFE000000040AA6A27600000007000000080000000213BBF504000000020793F0C9128220FE0AA6A27610EDACF7000000000AA6A27C10EDACFD000000030460010200000006000000070000000610ED70F70AA6A27C10EDACFD00000003046001021383DCF90000000A00000001138418F90000000102B4D69B0000000713D0D1040000000207095FA9000000090000000710ED70FD04600102000000060000000700000003000000000000000412825CFE000000040AA6A27610EDACF7000000000AA6A27C10EDACFD00000003046001020000000A0000000710ED70FD000000060000000310ED70F70AA6A27C0000000A0000000800000000000000030000000000000002"
theorem small_1277553_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1277553_left_root small_1277553_left_fuel small_1277553_left_count small_1277553_left_encoded = true := by
  decide +kernel
theorem small_1277553_left_covered : CoveredBy scale carrier boxes small_1277553_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1277553_left_root small_1277553_left_fuel small_1277553_left_count small_1277553_left_encoded small_1277553_left_checked

theorem cover_1277553 : CoveredBy scale carrier boxes root_1277553 := by
  apply coveredBy_split_literal root_1277553 small_1277553_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0492.root coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1277553_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0492.covered
#print axioms cover_1277553

def root_1277547 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277547_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1277547_left_fuel : Nat := 1
def small_1277547_left_count : Nat := 1
def small_1277547_left_encoded : String := "00000001"
theorem small_1277547_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1277547_left_root small_1277547_left_fuel small_1277547_left_count small_1277547_left_encoded = true := by
  decide +kernel
theorem small_1277547_left_covered : CoveredBy scale carrier boxes small_1277547_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1277547_left_root small_1277547_left_fuel small_1277547_left_count small_1277547_left_encoded small_1277547_left_checked

theorem cover_1277547 : CoveredBy scale carrier boxes root_1277547 := by
  apply coveredBy_split_literal root_1277547 small_1277547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1277553 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_1277547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1277553
#print axioms cover_1277547

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029
