import TaoBundleAssembly0032
import TaoBundleChunkBatch0132
import TaoBundleChunkBatch0133
import TaoBundleChunkBatch0134
import TaoBundleChunkBatch0135
import TaoBundleChunkBatch0136
import TaoBundleChunkBatch0137
import TaoBundleChunkBatch0138
import TaoBundleChunkBatch0139
import TaoBundleChunkBatch0140
import TaoBundleChunkBatch0141
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033
def root_1367052 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367052_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367052_left_fuel : Nat := 25
def small_1367052_left_count : Nat := 323
def small_1367052_left_encoded : String := "1386AD0204548A07138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0000000A0F8750FF00000006000000040F8750F70C9A86FE0000000A0F8750FF0000000500000004000000000F34D0FE0000000A00000004000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF000000040280010413D7B0FB067ECE7912EA9502067ECE870000000612EA94FC000000030DE7C9F60E6014F700000000000000060E5FD8F70DE7C9FE0000000A00000006000000000000000112EA590200000001067ECE8712EA58FC0DE7C9F60E6014F700000000000000060E5FD8F70000000A000000000000000312EA94FC000000030DE7C9F60E6014F7000000000DE7C9FE0E6014FF0000000400000007000000060E5FD8F70DE7C9FE0E6014FF000000040140010413F5D8FB0569AC39000000061340D5020000000100000007000000020000000A0E5FD8FF0000000600000004000000000000000213D7ECFB00000002067ECE790000000A12EA590200000001067ECE870000000A12EA94FC000000030DE7C9F60E6014F7000000000DE7C9FE0000000A0E5FD8FF00000008000000040E5FD8F70000000A000000000F8750FF028001040000000613D7ECFB00000002067ECE790000000812EA590200000001067ECE870000000612EA94FC000000030DE7C9F6000000080E5FD8F70000000800000000000000040F8750F70C9A86FE0F878CFF000000040280010413D7B0FB067ECE7912EA9502067ECE870000000A12EA94FC000000030B4D43F610804CF7000000000000000A0000000A0000000112EA590200000001067ECE8712EA58FC0B4D43F610804CF7000000000000000A0000000A0000000312EA94FC000000030B4D43F610804CF7000000000DE7C9FE0E6014FF0000000401400104000000090000000A0E5FD8FF014001040000000613F614FB000000020569AC39000000061340D502000000010793F0C7000000060000000900000004108010F70DE7C9FE000000090E5FD8FF0000000900000004000000000000000213D7ECFB00000002067ECE790000000A12EA590200000001067ECE870000000A12EA94FC000000030B4D43F610804CF7000000000000000A0000000A0F8750FF0280010413D7B0FB067ECE790000000612EA590200000001067ECE870000000612EA94FC00000003000000060000000213D7ECFB00000002067ECE7912EA9502067ECE870000000512EA94FC000000030B4D43F600000008108010F700000005000000000000000112EA590200000001067ECE8712EA58FC0B4D43F610804CF7000000000B4D43FE0000000A00000006108010F700000005000000000000000312EA94FC000000030B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010413A510FB000000060000000200000008108010FF0000000600000004108010F70B4D43FE10804CFF0000000403C0010413A510FB0569AC390000000A1340D502000000010793F0C700000006000000090000000213A54CFB000000020569AC390000000A1340D502000000010000000A108010FF03C001040000000613A54CFB000000020569AC39000000051340D5020000000100000008000000040000000000000004000000000F34D0FE0C9A86F60F878CF7000000000280010413D7B0FB067ECE790000000A12EA590200000001067ECE870000000712EA94FC000000030000000A000000020000000A0F8750F70000000A000000000000000400000001"
theorem small_1367052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367052_left_root small_1367052_left_fuel small_1367052_left_count small_1367052_left_encoded = true := by
  decide +kernel
theorem small_1367052_left_covered : CoveredBy scale carrier boxes small_1367052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367052_left_root small_1367052_left_fuel small_1367052_left_count small_1367052_left_encoded small_1367052_left_checked

theorem cover_1367052 : CoveredBy scale carrier boxes root_1367052 := by
  apply coveredBy_split_literal root_1367052 small_1367052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1367748 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1367052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1367748
#print axioms cover_1367052

def root_1367046 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367046_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367046_left_fuel : Nat := 1
def small_1367046_left_count : Nat := 1
def small_1367046_left_encoded : String := "00000000"
theorem small_1367046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367046_left_root small_1367046_left_fuel small_1367046_left_count small_1367046_left_encoded = true := by
  decide +kernel
theorem small_1367046_left_covered : CoveredBy scale carrier boxes small_1367046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367046_left_root small_1367046_left_fuel small_1367046_left_count small_1367046_left_encoded small_1367046_left_checked

theorem cover_1367046 : CoveredBy scale carrier boxes root_1367046 := by
  apply coveredBy_split_literal root_1367046 small_1367046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367052 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1367046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367052
#print axioms cover_1367046

def root_1367045 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367045_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367045_right_fuel : Nat := 17
def small_1367045_right_count : Nat := 97
def small_1367045_right_encoded : String := "0F34D0F6045489F91386AD0204548A07138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070000000600000007000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010413D7B0FB0AD3577710D13CF600000000067ECE790000000612EA59020000000100000007000000060000000213D7ECFB000000020AD3577710D13CF600000000067ECE790000000812EA590200000001067ECE870000000700000008000000080F8750FF028001040000000600000008000000040F34D0FE0280010400000007000000070000000400000001138671020000000104548A07138670FC0CFD9BFF0000000700000007000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010400000007000000070F8750FF028001040000000613D7ECFB000000020AD3577710D13CF600000000022A457913E20102067ECE870000000600000005000000010000000500000005000000040000000500000000"
theorem small_1367045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367045_right_root small_1367045_right_fuel small_1367045_right_count small_1367045_right_encoded = true := by
  decide +kernel
theorem small_1367045_right_covered : CoveredBy scale carrier boxes small_1367045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367045_right_root small_1367045_right_fuel small_1367045_right_count small_1367045_right_encoded small_1367045_right_checked

theorem cover_1367045 : CoveredBy scale carrier boxes root_1367045 := by
  apply coveredBy_split_literal root_1367045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367046 small_1367045_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367046
  · exact small_1367045_right_covered
#print axioms cover_1367045

def root_1367040 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367040_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367040_right_fuel : Nat := 1
def small_1367040_right_count : Nat := 1
def small_1367040_right_encoded : String := "00000002"
theorem small_1367040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367040_right_root small_1367040_right_fuel small_1367040_right_count small_1367040_right_encoded = true := by
  decide +kernel
theorem small_1367040_right_covered : CoveredBy scale carrier boxes small_1367040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367040_right_root small_1367040_right_fuel small_1367040_right_count small_1367040_right_encoded small_1367040_right_checked

theorem cover_1367040 : CoveredBy scale carrier boxes root_1367040 := by
  apply coveredBy_split_literal root_1367040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367045 small_1367040_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367045
  · exact small_1367040_right_covered
#print axioms cover_1367040

def root_1367039 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1367039 : CoveredBy scale carrier boxes root_1367039 := by
  apply coveredBy_split_literal root_1367039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367040 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0530.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367040
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0530.covered
#print axioms cover_1367039

def root_1367033 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367033_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367033_left_fuel : Nat := 1
def small_1367033_left_count : Nat := 1
def small_1367033_left_encoded : String := "00000004"
theorem small_1367033_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367033_left_root small_1367033_left_fuel small_1367033_left_count small_1367033_left_encoded = true := by
  decide +kernel
theorem small_1367033_left_covered : CoveredBy scale carrier boxes small_1367033_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367033_left_root small_1367033_left_fuel small_1367033_left_count small_1367033_left_encoded small_1367033_left_checked

theorem cover_1367033 : CoveredBy scale carrier boxes root_1367033 := by
  apply coveredBy_split_literal root_1367033 small_1367033_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367039 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1367033_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367039
#print axioms cover_1367033

def root_1367032 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367032_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367032_right_fuel : Nat := 11
def small_1367032_right_count : Nat := 39
def small_1367032_right_encoded : String := "120700FE05000104135D44FB0CFD9BF70F350CF600000000045489F91386AD0204548A07000000071386ACFC00000003045489FF0000000A00000005000000011386710200000001000000070000000700000002135D80FB000000020CFD9BF70F350CF600000000045489F91386AD0204548A070000000A0000000A000000011386710200000001000000060F34D0F6000000070000000000000004"
theorem small_1367032_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367032_right_root small_1367032_right_fuel small_1367032_right_count small_1367032_right_encoded = true := by
  decide +kernel
theorem small_1367032_right_covered : CoveredBy scale carrier boxes small_1367032_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367032_right_root small_1367032_right_fuel small_1367032_right_count small_1367032_right_encoded small_1367032_right_checked

theorem cover_1367032 : CoveredBy scale carrier boxes root_1367032 := by
  apply coveredBy_split_literal root_1367032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367033 small_1367032_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367033
  · exact small_1367032_right_covered
#print axioms cover_1367032

def root_1367027 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367027_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367027_right_fuel : Nat := 1
def small_1367027_right_count : Nat := 1
def small_1367027_right_encoded : String := "00000003"
theorem small_1367027_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367027_right_root small_1367027_right_fuel small_1367027_right_count small_1367027_right_encoded = true := by
  decide +kernel
theorem small_1367027_right_covered : CoveredBy scale carrier boxes small_1367027_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367027_right_root small_1367027_right_fuel small_1367027_right_count small_1367027_right_encoded small_1367027_right_checked

theorem cover_1367027 : CoveredBy scale carrier boxes root_1367027 := by
  apply coveredBy_split_literal root_1367027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367032 small_1367027_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367032
  · exact small_1367027_right_covered
#print axioms cover_1367027

def root_1367026 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1367026 : CoveredBy scale carrier boxes root_1367026 := by
  apply coveredBy_split_literal root_1367026 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367027 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0531.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367027
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0531.covered
#print axioms cover_1367026

def root_1367020 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367020_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367020_left_fuel : Nat := 1
def small_1367020_left_count : Nat := 1
def small_1367020_left_encoded : String := "00000001"
theorem small_1367020_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367020_left_root small_1367020_left_fuel small_1367020_left_count small_1367020_left_encoded = true := by
  decide +kernel
theorem small_1367020_left_covered : CoveredBy scale carrier boxes small_1367020_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367020_left_root small_1367020_left_fuel small_1367020_left_count small_1367020_left_encoded small_1367020_left_checked

theorem cover_1367020 : CoveredBy scale carrier boxes root_1367020 := by
  apply coveredBy_split_literal root_1367020 small_1367020_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367026 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1367020_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367026
#print axioms cover_1367020

def root_1365092 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1365092 : CoveredBy scale carrier boxes root_1365092 := by
  apply coveredBy_split_literal root_1365092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0528.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1367020 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0528.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1367020
#print axioms cover_1365092

def root_1365086 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365086_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365086_left_fuel : Nat := 1
def small_1365086_left_count : Nat := 1
def small_1365086_left_encoded : String := "00000000"
theorem small_1365086_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365086_left_root small_1365086_left_fuel small_1365086_left_count small_1365086_left_encoded = true := by
  decide +kernel
theorem small_1365086_left_covered : CoveredBy scale carrier boxes small_1365086_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365086_left_root small_1365086_left_fuel small_1365086_left_count small_1365086_left_encoded small_1365086_left_checked

theorem cover_1365086 : CoveredBy scale carrier boxes root_1365086 := by
  apply coveredBy_split_literal root_1365086 small_1365086_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365092 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1365086_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365092
#print axioms cover_1365086

def root_1365085 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365085_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365085_right_fuel : Nat := 19
def small_1365085_right_count : Nat := 211
def small_1365085_right_encoded : String := "120700F608A912F912073D0208A91307120700FC08A912FF12073CFE0000000405000104135D44FB045489F71386ACF6000000000CFD9BF90F350D0204548A070000000600000008000000010F34D1020000000104548A070000000A1386ACFC000000030CFD9BFF000000080F34D0FE0000000700000004138670F60CFD9BF9000000080F34D1020000000104548A0700000006000000080000000000000002135D80FB00000002045489F71386ACF6000000000CFD9BF9000000080F34D102000000010000000800000008120700FE0000000A000000040000000312073CFC0000000308A912FF12073CFE0000000405000104135D44FB045489F71386ACF6000000000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C070F34D0FC0CFD9BFF000000080F34D0FE0000000800000004000000030F350CFC000000030CFD9BFF0000000800000005138670F600000008000000000000000200000008120700FE05000104135D44FB045489F71386ACF6000000000CFD9BF90F350D020000000A000000010F34D1020000000100000005138670F60CFD9BF900000008000000050000000000000002135D80FB00000002045489F71386ACF6000000000CFD9BF90000000800000005000000050000000400000001120701020000000108A91307120700FC08A912FF12073CFE0000000405000104135D44FB045489F71386ACF600000000045489F91386AD0204548A07000000071386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000080000000600000007000000011386710200000001000000070000000700000002135D80FB00000002045489F71386ACF600000000045489F91386AD0204548A070000000A1386ACFC000000030CFD9BFF000000080000000500000001138671020000000104548A070000000700000005138670F6045489F91386AD0204548A070000000700000005000000010000000500000000120700FE00000007000000040000000312073CFC0000000308A912FF12073CFE0000000405000104135D44FB045489F71386ACF600000000045489F91386AD020CFD9C070F34D0FC0CFD9BFF0F350CFE000000040000000500000005000000030000000500000001000000050000000500000002000000050000000500000000"
theorem small_1365085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365085_right_root small_1365085_right_fuel small_1365085_right_count small_1365085_right_encoded = true := by
  decide +kernel
theorem small_1365085_right_covered : CoveredBy scale carrier boxes small_1365085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365085_right_root small_1365085_right_fuel small_1365085_right_count small_1365085_right_encoded small_1365085_right_checked

theorem cover_1365085 : CoveredBy scale carrier boxes root_1365085 := by
  apply coveredBy_split_literal root_1365085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365086 small_1365085_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365086
  · exact small_1365085_right_covered
#print axioms cover_1365085

def root_1365079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365079_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365079_left_fuel : Nat := 1
def small_1365079_left_count : Nat := 1
def small_1365079_left_encoded : String := "00000004"
theorem small_1365079_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365079_left_root small_1365079_left_fuel small_1365079_left_count small_1365079_left_encoded = true := by
  decide +kernel
theorem small_1365079_left_covered : CoveredBy scale carrier boxes small_1365079_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365079_left_root small_1365079_left_fuel small_1365079_left_count small_1365079_left_encoded small_1365079_left_checked

theorem cover_1365079 : CoveredBy scale carrier boxes root_1365079 := by
  apply coveredBy_split_literal root_1365079 small_1365079_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365085 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1365079_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365085
#print axioms cover_1365079

def root_1378484 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1378484 : CoveredBy scale carrier boxes root_1378484 := by
  apply coveredBy_split_literal root_1378484 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0532.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0533.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0532.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0533.covered
#print axioms cover_1378484

def root_1378478 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378478_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378478_left_fuel : Nat := 1
def small_1378478_left_count : Nat := 1
def small_1378478_left_encoded : String := "00000001"
theorem small_1378478_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1378478_left_root small_1378478_left_fuel small_1378478_left_count small_1378478_left_encoded = true := by
  decide +kernel
theorem small_1378478_left_covered : CoveredBy scale carrier boxes small_1378478_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1378478_left_root small_1378478_left_fuel small_1378478_left_count small_1378478_left_encoded small_1378478_left_checked

theorem cover_1378478 : CoveredBy scale carrier boxes root_1378478 := by
  apply coveredBy_split_literal root_1378478 small_1378478_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378484 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1378478_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378484
#print axioms cover_1378478

def root_1378202 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378202_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378202_left_fuel : Nat := 16
def small_1378202_left_count : Nat := 127
def small_1378202_left_encoded : String := "12073D0208A91307120700FC05000104135D44FB050000FE135D80FF000000040CFD9BF700000005000000060000000600000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000050F34D1020000000104548A0700000005000000080F34D0F60000000800000000135D44FF0CFD9BF70000000500000006000000040000000312073CFC0000000305000104135D44FB050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9C070000000500000007000000010F34D102000000010CFD9C070F34D0FC0C9A86F60F878CF700000000000000060F8750F70000000700000000000000030F350CFC00000003000000070F34D0F60CFD9BF9000000080F34D102000000010CFD9C070F34D0FC00000006000000030000000800000000135D44FF0CFD9BF70F350CF600000000000000070F34D0F60CFD9BF9000000080F34D102000000010CFD9C070000000600000007000000000000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C070F34D0FC0000000800000003000000080F34D0F60000000800000000135D44FF0CFD9BF70F350CF600000000000000070F34D0F600000008000000000000000400000001"
theorem small_1378202_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1378202_left_root small_1378202_left_fuel small_1378202_left_count small_1378202_left_encoded = true := by
  decide +kernel
theorem small_1378202_left_covered : CoveredBy scale carrier boxes small_1378202_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1378202_left_root small_1378202_left_fuel small_1378202_left_count small_1378202_left_encoded small_1378202_left_checked

theorem cover_1378202 : CoveredBy scale carrier boxes root_1378202 := by
  apply coveredBy_split_literal root_1378202 small_1378202_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378478 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1378202_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378478
#print axioms cover_1378202

def root_1378196 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378196_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378196_left_fuel : Nat := 1
def small_1378196_left_count : Nat := 1
def small_1378196_left_encoded : String := "00000000"
theorem small_1378196_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1378196_left_root small_1378196_left_fuel small_1378196_left_count small_1378196_left_encoded = true := by
  decide +kernel
theorem small_1378196_left_covered : CoveredBy scale carrier boxes small_1378196_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1378196_left_root small_1378196_left_fuel small_1378196_left_count small_1378196_left_encoded small_1378196_left_checked

theorem cover_1378196 : CoveredBy scale carrier boxes root_1378196 := by
  apply coveredBy_split_literal root_1378196 small_1378196_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378202 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1378196_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378202
#print axioms cover_1378196

def root_1378195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378195_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378195_right_fuel : Nat := 15
def small_1378195_right_count : Nat := 81
def small_1378195_right_encoded : String := "120700F608A912F912073D0208A91307120700FC0500010400000006000000080000000312073CFC0000000305000104135D44FB050000FE0000000800000008000000020000000800000001120701020000000108A91307120700FC0500010400000006135D80FB00000002050000FE135D80FF00000004045489F70000000800000006000000060000000312073CFC0000000305000104135D44FB050000FE135D80FF00000004045489F71386ACF600000000045489F91386AD020CFD9C070000000600000005000000010000000500000005135D44FF045489F71386ACF600000000045489F90000000600000005000000050000000400000002135D80FB00000002050000FE135D80FF00000004045489F71386ACF600000000045489F9000000080000000500000005135D44FF045489F700000008000000050000000400000000"
theorem small_1378195_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1378195_right_root small_1378195_right_fuel small_1378195_right_count small_1378195_right_encoded = true := by
  decide +kernel
theorem small_1378195_right_covered : CoveredBy scale carrier boxes small_1378195_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1378195_right_root small_1378195_right_fuel small_1378195_right_count small_1378195_right_encoded small_1378195_right_checked

theorem cover_1378195 : CoveredBy scale carrier boxes root_1378195 := by
  apply coveredBy_split_literal root_1378195 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378196 small_1378195_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378196
  · exact small_1378195_right_covered
#print axioms cover_1378195

def root_1378190 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378190_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1378190_right_fuel : Nat := 1
def small_1378190_right_count : Nat := 1
def small_1378190_right_encoded : String := "00000004"
theorem small_1378190_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1378190_right_root small_1378190_right_fuel small_1378190_right_count small_1378190_right_encoded = true := by
  decide +kernel
theorem small_1378190_right_covered : CoveredBy scale carrier boxes small_1378190_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1378190_right_root small_1378190_right_fuel small_1378190_right_count small_1378190_right_encoded small_1378190_right_checked

theorem cover_1378190 : CoveredBy scale carrier boxes root_1378190 := by
  apply coveredBy_split_literal root_1378190 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378195 small_1378190_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378195
  · exact small_1378190_right_covered
#print axioms cover_1378190

def root_1365078 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1365078 : CoveredBy scale carrier boxes root_1365078 := by
  apply coveredBy_split_literal root_1365078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1378190 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365079
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1378190
#print axioms cover_1365078

def root_1365073 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365073_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365073_right_fuel : Nat := 1
def small_1365073_right_count : Nat := 1
def small_1365073_right_encoded : String := "00000003"
theorem small_1365073_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365073_right_root small_1365073_right_fuel small_1365073_right_count small_1365073_right_encoded = true := by
  decide +kernel
theorem small_1365073_right_covered : CoveredBy scale carrier boxes small_1365073_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365073_right_root small_1365073_right_fuel small_1365073_right_count small_1365073_right_encoded small_1365073_right_checked

theorem cover_1365073 : CoveredBy scale carrier boxes root_1365073 := by
  apply coveredBy_split_literal root_1365073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365078 small_1365073_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365078
  · exact small_1365073_right_covered
#print axioms cover_1365073

def root_1365072 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1365072 : CoveredBy scale carrier boxes root_1365072 := by
  apply coveredBy_split_literal root_1365072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365073 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0534.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365073
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0534.covered
#print axioms cover_1365072

def root_1365067 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365067_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365067_right_fuel : Nat := 1
def small_1365067_right_count : Nat := 1
def small_1365067_right_encoded : String := "00000002"
theorem small_1365067_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365067_right_root small_1365067_right_fuel small_1365067_right_count small_1365067_right_encoded = true := by
  decide +kernel
theorem small_1365067_right_covered : CoveredBy scale carrier boxes small_1365067_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365067_right_root small_1365067_right_fuel small_1365067_right_count small_1365067_right_encoded small_1365067_right_checked

theorem cover_1365067 : CoveredBy scale carrier boxes root_1365067 := by
  apply coveredBy_split_literal root_1365067 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365072 small_1365067_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365072
  · exact small_1365067_right_covered
#print axioms cover_1365067

def root_1365066 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1365066 : CoveredBy scale carrier boxes root_1365066 := by
  apply coveredBy_split_literal root_1365066 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365067 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0535.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365067
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0535.covered
#print axioms cover_1365066

def root_1365060 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365060_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1365060_left_fuel : Nat := 1
def small_1365060_left_count : Nat := 1
def small_1365060_left_encoded : String := "00000001"
theorem small_1365060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1365060_left_root small_1365060_left_fuel small_1365060_left_count small_1365060_left_encoded = true := by
  decide +kernel
theorem small_1365060_left_covered : CoveredBy scale carrier boxes small_1365060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1365060_left_root small_1365060_left_fuel small_1365060_left_count small_1365060_left_encoded small_1365060_left_checked

theorem cover_1365060 : CoveredBy scale carrier boxes root_1365060 := by
  apply coveredBy_split_literal root_1365060 small_1365060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365066 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1365060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365066
#print axioms cover_1365060

def root_1363944 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1363944 : CoveredBy scale carrier boxes root_1363944 := by
  apply coveredBy_split_literal root_1363944 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0527.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1365060 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0527.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1365060
#print axioms cover_1363944

def root_1363938 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1363938_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1363938_left_fuel : Nat := 1
def small_1363938_left_count : Nat := 1
def small_1363938_left_encoded : String := "00000000"
theorem small_1363938_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1363938_left_root small_1363938_left_fuel small_1363938_left_count small_1363938_left_encoded = true := by
  decide +kernel
theorem small_1363938_left_covered : CoveredBy scale carrier boxes small_1363938_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1363938_left_root small_1363938_left_fuel small_1363938_left_count small_1363938_left_encoded small_1363938_left_checked

theorem cover_1363938 : CoveredBy scale carrier boxes root_1363938 := by
  apply coveredBy_split_literal root_1363938 small_1363938_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1363944 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1363938_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1363944
#print axioms cover_1363938

def root_1389487 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1389487 : CoveredBy scale carrier boxes root_1389487 := by
  apply coveredBy_split_literal root_1389487 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0538.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0539.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0538.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0539.covered
#print axioms cover_1389487

def root_1389481 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389481_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389481_left_fuel : Nat := 1
def small_1389481_left_count : Nat := 1
def small_1389481_left_encoded : String := "00000000"
theorem small_1389481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389481_left_root small_1389481_left_fuel small_1389481_left_count small_1389481_left_encoded = true := by
  decide +kernel
theorem small_1389481_left_covered : CoveredBy scale carrier boxes small_1389481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389481_left_root small_1389481_left_fuel small_1389481_left_count small_1389481_left_encoded small_1389481_left_checked

theorem cover_1389481 : CoveredBy scale carrier boxes root_1389481 := by
  apply coveredBy_split_literal root_1389481 small_1389481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389487 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1389481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389487
#print axioms cover_1389481

def root_1389480 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389480_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389480_right_fuel : Nat := 21
def small_1389480_right_count : Nat := 157
def small_1389480_right_encoded : String := "135D44F705000104135D44FB045489F91386AD0204548A07138670FC0CFD9BFF000000050F34D0FE0000000A00000004000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000090F8750FF00000005000000040F34D0FE000000090000000400000001138671020000000104548A07138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000080F8750FF000000050000000400000008000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000090F8750FF00000009000000040F34D0FE000000080000000400000002135D80FB00000002045489F91386AD0204548A07138670FC0CFD9BFF000000050F34D0FE0000000A00000004000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F60000000A0000000A0F8750FF00000007000000040F34D0FE000000060000000400000001138671020000000104548A07138670FC0CFD9BFF0F350CFE000000040C9A86FE0000000A0F8750FF028000F613D7ECF70000000007800104128A40FB00000005000000020000000A13D7B0F70000000500000000000000040F34D0FE0000000600000004000000031386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF028000F613D7ECF70000000007800104128A40FB022A457913E20102067ECE8700000005000000070000000113E1C50200000001067ECE8712EA58FC0B4D43FE0000000600000007000000030000000600000002128A7CFB000000020000000613D7B0F707800104000000070000000600000000000000040F34D0FE000000060000000400000000"
theorem small_1389480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389480_right_root small_1389480_right_fuel small_1389480_right_count small_1389480_right_encoded = true := by
  decide +kernel
theorem small_1389480_right_covered : CoveredBy scale carrier boxes small_1389480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389480_right_root small_1389480_right_fuel small_1389480_right_count small_1389480_right_encoded small_1389480_right_checked

theorem cover_1389480 : CoveredBy scale carrier boxes root_1389480 := by
  apply coveredBy_split_literal root_1389480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389481 small_1389480_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389481
  · exact small_1389480_right_covered
#print axioms cover_1389480

def root_1389474 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389474_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389474_left_fuel : Nat := 1
def small_1389474_left_count : Nat := 1
def small_1389474_left_encoded : String := "00000004"
theorem small_1389474_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389474_left_root small_1389474_left_fuel small_1389474_left_count small_1389474_left_encoded = true := by
  decide +kernel
theorem small_1389474_left_covered : CoveredBy scale carrier boxes small_1389474_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389474_left_root small_1389474_left_fuel small_1389474_left_count small_1389474_left_encoded small_1389474_left_checked

theorem cover_1389474 : CoveredBy scale carrier boxes root_1389474 := by
  apply coveredBy_split_literal root_1389474 small_1389474_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389480 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1389474_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389480
#print axioms cover_1389474

def root_1389473 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389473_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389473_right_fuel : Nat := 13
def small_1389473_right_count : Nat := 45
def small_1389473_right_encoded : String := "120700FE050000F6135D80F70000000005000104135D44FB045489F91386AD0204548A07138670FC045489FF0000000A00000007000000031386ACFC00000003045489FF1386ACFE00000004078000F60000000A0000000A0000000600000001138671020000000104548A0700000008000000060000000200000006135D44F705000104135D44FB045489F91386AD0204548A070000000800000006000000010000000600000002000000060000000000000004"
theorem small_1389473_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389473_right_root small_1389473_right_fuel small_1389473_right_count small_1389473_right_encoded = true := by
  decide +kernel
theorem small_1389473_right_covered : CoveredBy scale carrier boxes small_1389473_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389473_right_root small_1389473_right_fuel small_1389473_right_count small_1389473_right_encoded small_1389473_right_checked

theorem cover_1389473 : CoveredBy scale carrier boxes root_1389473 := by
  apply coveredBy_split_literal root_1389473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389474 small_1389473_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389474
  · exact small_1389473_right_covered
#print axioms cover_1389473

def root_1389468 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389468_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389468_right_fuel : Nat := 1
def small_1389468_right_count : Nat := 1
def small_1389468_right_encoded : String := "00000003"
theorem small_1389468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389468_right_root small_1389468_right_fuel small_1389468_right_count small_1389468_right_encoded = true := by
  decide +kernel
theorem small_1389468_right_covered : CoveredBy scale carrier boxes small_1389468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389468_right_root small_1389468_right_fuel small_1389468_right_count small_1389468_right_encoded small_1389468_right_checked

theorem cover_1389468 : CoveredBy scale carrier boxes root_1389468 := by
  apply coveredBy_split_literal root_1389468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389473 small_1389468_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389473
  · exact small_1389468_right_covered
#print axioms cover_1389468

def root_1389467 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1389467 : CoveredBy scale carrier boxes root_1389467 := by
  apply coveredBy_split_literal root_1389467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389468 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0540.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389468
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0540.covered
#print axioms cover_1389467

def root_1389461 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389461_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1389461_left_fuel : Nat := 1
def small_1389461_left_count : Nat := 1
def small_1389461_left_encoded : String := "00000001"
theorem small_1389461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1389461_left_root small_1389461_left_fuel small_1389461_left_count small_1389461_left_encoded = true := by
  decide +kernel
theorem small_1389461_left_covered : CoveredBy scale carrier boxes small_1389461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1389461_left_root small_1389461_left_fuel small_1389461_left_count small_1389461_left_encoded small_1389461_left_checked

theorem cover_1389461 : CoveredBy scale carrier boxes root_1389461 := by
  apply coveredBy_split_literal root_1389461 small_1389461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389467 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1389461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389467
#print axioms cover_1389461

def root_1387609 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1387609 : CoveredBy scale carrier boxes root_1387609 := by
  apply coveredBy_split_literal root_1387609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0537.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1389461 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0537.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1389461
#print axioms cover_1387609

def root_1387603 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387603_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387603_left_fuel : Nat := 1
def small_1387603_left_count : Nat := 1
def small_1387603_left_encoded : String := "00000004"
theorem small_1387603_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1387603_left_root small_1387603_left_fuel small_1387603_left_count small_1387603_left_encoded = true := by
  decide +kernel
theorem small_1387603_left_covered : CoveredBy scale carrier boxes small_1387603_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1387603_left_root small_1387603_left_fuel small_1387603_left_count small_1387603_left_encoded small_1387603_left_checked

theorem cover_1387603 : CoveredBy scale carrier boxes root_1387603 := by
  apply coveredBy_split_literal root_1387603 small_1387603_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387609 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1387603_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387609
#print axioms cover_1387603

def root_1387602 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1387602 : CoveredBy scale carrier boxes root_1387602 := by
  apply coveredBy_split_literal root_1387602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387603 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0541.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387603
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0541.covered
#print axioms cover_1387602

def root_1387597 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387597_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387597_right_fuel : Nat := 1
def small_1387597_right_count : Nat := 1
def small_1387597_right_encoded : String := "00000003"
theorem small_1387597_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1387597_right_root small_1387597_right_fuel small_1387597_right_count small_1387597_right_encoded = true := by
  decide +kernel
theorem small_1387597_right_covered : CoveredBy scale carrier boxes small_1387597_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1387597_right_root small_1387597_right_fuel small_1387597_right_count small_1387597_right_encoded small_1387597_right_checked

theorem cover_1387597 : CoveredBy scale carrier boxes root_1387597 := by
  apply coveredBy_split_literal root_1387597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387602 small_1387597_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387602
  · exact small_1387597_right_covered
#print axioms cover_1387597

def root_1387596 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387596_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387596_right_fuel : Nat := 18
def small_1387596_right_count : Nat := 155
def small_1387596_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF12073CFE00000004050000F6135D80F70000000005000104135D44FB050000FC135D81070CFD9BF9000000070F34D102000000010000000900000003135D4507000000030000000900000002135D80FB00000002050000FC135D81070CFD9BF9000000070F34D102000000010CFD9BFF000000090F34D0FE000000090000000400000003135D4507000000030CFD9BF9000000070F34D1020000000100000009135D44F70500010400000007135D80FB00000002050000FC000000070000000700000000120700FE050000F6135D80F7000000000500010400000009135D80FB00000002050000FC135D81070CFD9BF9000000090000000500000003135D45070000000300000009000000090000000400000001120701020000000108A912FF12073CFE00000004050000F6135D80F7000000000500010400000009135D80FB00000002050000FC135D8107045489F91386AD020CFD9BFF000000090F34D0FE00000009000000040000000113867102000000010CFD9BFF000000090F34D0FE000000050000000400000003135D450700000003045489F90000000913867102000000010000000900000009120700FE050000F60000000500000009000000041151E8FF08A912F9000000071207010200000001050000F6135D80F70000000005000104135D44FB050000FC00000007135D4507000000030000000700000002135D80FB00000002050000FC00000007135D450700000003050000FE135D80FF00000004045489F90000000713867102000000010000000900000007135D44F7000000070000000000000004"
theorem small_1387596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1387596_right_root small_1387596_right_fuel small_1387596_right_count small_1387596_right_encoded = true := by
  decide +kernel
theorem small_1387596_right_covered : CoveredBy scale carrier boxes small_1387596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1387596_right_root small_1387596_right_fuel small_1387596_right_count small_1387596_right_encoded small_1387596_right_checked

theorem cover_1387596 : CoveredBy scale carrier boxes root_1387596 := by
  apply coveredBy_split_literal root_1387596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387597 small_1387596_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387597
  · exact small_1387596_right_covered
#print axioms cover_1387596

def root_1387591 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387591_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387591_right_fuel : Nat := 1
def small_1387591_right_count : Nat := 1
def small_1387591_right_encoded : String := "00000002"
theorem small_1387591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1387591_right_root small_1387591_right_fuel small_1387591_right_count small_1387591_right_encoded = true := by
  decide +kernel
theorem small_1387591_right_covered : CoveredBy scale carrier boxes small_1387591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1387591_right_root small_1387591_right_fuel small_1387591_right_count small_1387591_right_encoded small_1387591_right_checked

theorem cover_1387591 : CoveredBy scale carrier boxes root_1387591 := by
  apply coveredBy_split_literal root_1387591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387596 small_1387591_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387596
  · exact small_1387591_right_covered
#print axioms cover_1387591

def root_1397560 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1397560 : CoveredBy scale carrier boxes root_1397560 := by
  apply coveredBy_split_literal root_1397560 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0542.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0543.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0542.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0543.covered
#print axioms cover_1397560

def root_1397554 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1397554_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1397554_left_fuel : Nat := 1
def small_1397554_left_count : Nat := 1
def small_1397554_left_encoded : String := "00000002"
theorem small_1397554_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1397554_left_root small_1397554_left_fuel small_1397554_left_count small_1397554_left_encoded = true := by
  decide +kernel
theorem small_1397554_left_covered : CoveredBy scale carrier boxes small_1397554_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1397554_left_root small_1397554_left_fuel small_1397554_left_count small_1397554_left_encoded small_1397554_left_checked

theorem cover_1397554 : CoveredBy scale carrier boxes root_1397554 := by
  apply coveredBy_split_literal root_1397554 small_1397554_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1397560 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1397554_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1397560
#print axioms cover_1397554

def root_1387590 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1387590 : CoveredBy scale carrier boxes root_1387590 := by
  apply coveredBy_split_literal root_1387590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1397554 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387591
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1397554
#print axioms cover_1387590

def root_1387584 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387584_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1387584_left_fuel : Nat := 1
def small_1387584_left_count : Nat := 1
def small_1387584_left_encoded : String := "00000001"
theorem small_1387584_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1387584_left_root small_1387584_left_fuel small_1387584_left_count small_1387584_left_encoded = true := by
  decide +kernel
theorem small_1387584_left_covered : CoveredBy scale carrier boxes small_1387584_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1387584_left_root small_1387584_left_fuel small_1387584_left_count small_1387584_left_encoded small_1387584_left_checked

theorem cover_1387584 : CoveredBy scale carrier boxes root_1387584 := by
  apply coveredBy_split_literal root_1387584 small_1387584_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387590 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1387584_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387590
#print axioms cover_1387584

def root_1386202 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1386202 : CoveredBy scale carrier boxes root_1386202 := by
  apply coveredBy_split_literal root_1386202 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0536.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1387584 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0536.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1387584
#print axioms cover_1386202

def root_1386197 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1386197_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1386197_right_fuel : Nat := 1
def small_1386197_right_count : Nat := 1
def small_1386197_right_encoded : String := "00000000"
theorem small_1386197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1386197_right_root small_1386197_right_fuel small_1386197_right_count small_1386197_right_encoded = true := by
  decide +kernel
theorem small_1386197_right_covered : CoveredBy scale carrier boxes small_1386197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1386197_right_root small_1386197_right_fuel small_1386197_right_count small_1386197_right_encoded small_1386197_right_checked

theorem cover_1386197 : CoveredBy scale carrier boxes root_1386197 := by
  apply coveredBy_split_literal root_1386197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1386202 small_1386197_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1386202
  · exact small_1386197_right_covered
#print axioms cover_1386197

def root_1363937 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1363937 : CoveredBy scale carrier boxes root_1363937 := by
  apply coveredBy_split_literal root_1363937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1363938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1386197 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1363938
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1386197
#print axioms cover_1363937

def root_1405272 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1405272 : CoveredBy scale carrier boxes root_1405272 := by
  apply coveredBy_split_literal root_1405272 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0545.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0546.root coord3 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0545.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0546.covered
#print axioms cover_1405272

def root_1405266 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1405266_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1405266_left_fuel : Nat := 1
def small_1405266_left_count : Nat := 1
def small_1405266_left_encoded : String := "00000002"
theorem small_1405266_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1405266_left_root small_1405266_left_fuel small_1405266_left_count small_1405266_left_encoded = true := by
  decide +kernel
theorem small_1405266_left_covered : CoveredBy scale carrier boxes small_1405266_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1405266_left_root small_1405266_left_fuel small_1405266_left_count small_1405266_left_encoded small_1405266_left_checked

theorem cover_1405266 : CoveredBy scale carrier boxes root_1405266 := by
  apply coveredBy_split_literal root_1405266 small_1405266_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1405272 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_1405266_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1405272
#print axioms cover_1405266

def root_1404558 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1404558_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1404558_left_fuel : Nat := 23
def small_1404558_left_count : Nat := 339
def small_1404558_left_encoded : String := "13D7B0FB067ECE8712EA58FC067ECE8912EA58FE0B4D43F610804CF70000000003C001020000000613A54CF900000001014001040000000613F614FB000000020569AC4700000006134110FC000000030569AC490000000600000007108010F703C001020000000613A54CF900000001014001040000000613F614FB000000020569AC4700000006134110FC000000030569AC4900000006134110FE000000040AA6A27610EDACF7000000000000000600000006000000000000000412EA94FE000000040B4D43F610804CF70000000003C0010213A510F9014001040000000613F614FB000000020569AC4700000006134110FC000000030793F0C900000006000000070000000100000007108010F703C0010213A510F9014001040000000613F614FB000000020569AC4700000006134110FC000000030793F0C900000006000000080000000113A54CF90000000100000008000000000000000312EA94FC00000003067ECE8912EA58FE0B4D43F610804CF70000000003C0010213A510F9014001040000000613F614FB000000020793F0C70000000612825CFC000000030569AC4900000006134110FE000000040BF3E576100928F70000000000000006000000060000000113A54CF9000000010140010413F5D8FB0793F0C700000006000000090000000213F614FB000000020793F0C7128220FC0569AC491340D4FE0000000600000004134110FE000000040BF3E576100928F7000000000460010200000006000000071008ECF7046001020000000600000009000000000000000312825CFC000000030569AC491340D4FE0000000900000004134110FE000000040BF3E5760000000900000009108010F703C0010213A510F9014001040000000613F614FB000000020793F0C700000006000000090000000113A54CF900000001014001040000000913F614FB000000020793F0C7128220FC0569AC4900000009000000090000000300000009000000000000000412EA94FE000000040B4D43F610804CF70000000003C0010213A510F90140010413F5D8FB0793F0C7128220FC0793F0C90000000612825CFE00000004000000060000000312825CFC000000030793F0C900000006000000090000000213F614FB000000020793F0C7128220FC0793F0C9128220FE0BF3E576100928F70000000000000006000000060000000412825CFE000000040BF3E576100928F7000000000320010200000006000000071008ECF70320010213C108F9000000060000000113C144F90000000101E001040000000700000005000000000000000312825CFC000000030793F0C9128220FE0BF3E576100928F7000000000320010200000006000000091008ECF7000000090000000000000004000000050000000113A54CF9000000010140010413F5D8FB0793F0C7128220FC000000070000000312825CFC00000003000000090000000213F614FB000000020793F0C7128220FC0793F0C9128220FE0BF3E576100928F700000000000000071008ECF7046001021383DCF901E001040000000613E994FB0000000207095FA7000000070000000500000001000000070000000000000004000000070000000312825CFC0000000300000005108010F703C0010213A510F9014001040000000913F614FB000000020793F0C7128220FC0793F0C9128220FE0AA6A27600000009000000090000000412825CFE00000004000000080000000312825CFC000000030793F0C900000009000000050000000113A54CF900000001014001040000000913F614FB000000020793F0C7128220FC0793F0C9128220FE0AA6A276000000090000000800000004000000080000000312825CFC00000003000000050000000000000002"
theorem small_1404558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1404558_left_root small_1404558_left_fuel small_1404558_left_count small_1404558_left_encoded = true := by
  decide +kernel
theorem small_1404558_left_covered : CoveredBy scale carrier boxes small_1404558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1404558_left_root small_1404558_left_fuel small_1404558_left_count small_1404558_left_encoded small_1404558_left_checked

theorem cover_1404558 : CoveredBy scale carrier boxes root_1404558 := by
  apply coveredBy_split_literal root_1404558 small_1404558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1405266 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1404558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1405266
#print axioms cover_1404558

def root_1404552 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1404552_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1404552_left_fuel : Nat := 1
def small_1404552_left_count : Nat := 1
def small_1404552_left_encoded : String := "00000001"
theorem small_1404552_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1404552_left_root small_1404552_left_fuel small_1404552_left_count small_1404552_left_encoded = true := by
  decide +kernel
theorem small_1404552_left_covered : CoveredBy scale carrier boxes small_1404552_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1404552_left_root small_1404552_left_fuel small_1404552_left_count small_1404552_left_encoded small_1404552_left_checked

theorem cover_1404552 : CoveredBy scale carrier boxes root_1404552 := by
  apply coveredBy_split_literal root_1404552 small_1404552_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1404558 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_1404552_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1404558
#print axioms cover_1404552

def root_1403662 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1403662_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1403662_left_fuel : Nat := 25
def small_1403662_left_count : Nat := 425
def small_1403662_left_encoded : String := "13D7B0F90280010413D7B0FB067ECE8712EA58FC067ECE890000000612EA94FE000000040B4D43F610804CF70000000000000006000000060000000312EA94FC00000003067ECE8912EA58FE0B4D43F610804CF70000000000000006000000060000000412EA94FE000000040B4D43F610804CF700000000014001020000000613F614F900000001014001040000000613F614FB000000020793F0C7128220FC0793F0C90000000612825CFE00000004000000060000000312825CFC000000030793F0C90000000612825CFE000000040BF3E576100928F70000000001E0010200000006000000051008ECF70000000900000000108010F7014001020000000613F614F900000001014001040000000613F614FB000000020793F0C7128220FC0793F0C9000000060000000A0000000312825CFC000000030793F0C90000000600000009000000000000000213D7ECFB00000002067ECE8712EA58FC067ECE8912EA58FE0B4D43F610804CF700000000014001020000000613F614F90000000103C001040000000613A54CFB000000020569AC470000000600000008108010F7014001020000000613F614F90000000103C001040000000613A54CFB000000020569AC4700000006134110FC000000030569AC4900000006134110FE000000040AA6A27610EDACF7000000000000000600000006000000000000000412EA94FE000000040B4D43F610804CF7000000000140010213F5D8F903C001040000000613A54CFB000000020569AC47000000060000000A0000000113F614F90000000103C0010413A510FB0569AC4700000006134110FC000000030793F0C90000000612825CFE000000040BF3E576100928F70000000000000006000000060000000213A54CFB000000020569AC471340D4FC0793F0C9128220FE000000060000000412825CFE000000040000000A00000003134110FC000000030793F0C9128220FE0BF3E576100928F70000000001E001020000000613E994F9000000010460010400000006000000081008ECF701E001020000000613E994F90000000104600104000000060000000A000000000000000412825CFE000000040BF3E5760000000A0000000A108010F70140010213F5D8F90000000A0000000113F614F90000000103C0010413A510FB0569AC4700000006134110FC000000030793F0C9000000060000000A0000000213A54CFB000000020569AC470000000A0000000A000000000000000312EA94FC00000003067ECE8912EA58FE0B4D43F610804CF7000000000140010213F5D8F9000000080000000113F614F90000000103C0010413A510FB0793F0C700000006000000080000000200000008108010F7014001020000000713F614F90000000103C0010413A510FB0793F0C700000006000000070000000213A54CFB0000000200000007000000000000000412EA94FE000000040B4D43F610804CF7000000000140010213F5D8F903C0010413A510FB0793F0C7128220FC0793F0C9000000060000000A0000000312825CFC000000030793F0C9000000060000000A0000000213A54CFB000000020793F0C7128220FC0793F0C9000000080000000A0000000312825CFC000000030793F0C900000007000000050000000113F614F90000000103C0010413A510FB0793F0C7128220FC0793F0C9128220FE0BF3E576100928F70000000000000006000000060000000412825CFE000000040BF3E576100928F70000000001E001020000000613E994F900000001000000051008ECF70000000A000000000000000312825CFC000000030793F0C9128220FE0BF3E576100928F70000000001E001020000000613E994F900000001000000051008ECF701E001020000000713E994F9000000010320010400000009000000050000000000000004000000050000000213A54CFB000000020793F0C7128220FC0793F0C9128220FE0BF3E576100928F700000000000000081008ECF701E001020000000A13E994F900000001046001041383DCFB07095FA70000000A000000050000000200000008000000000000000412825CFE00000004000000050000000312825CFC0000000300000005108010F70140010213F5D8F903C0010413A510FB0000000A000000020000000A0000000113F614F90000000103C0010413A510FB0793F0C7128220FC0793F0C9128220FE0AA6A2760000000A0000000A000000040000000A0000000312825CFC000000030793F0C900000007000000050000000213A54CFB000000020793F0C7128220FC0793F0C9128220FE0AA6A2760000000A00000007000000040000000A0000000312825CFC00000003000000050000000000000001"
theorem small_1403662_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1403662_left_root small_1403662_left_fuel small_1403662_left_count small_1403662_left_encoded = true := by
  decide +kernel
theorem small_1403662_left_covered : CoveredBy scale carrier boxes small_1403662_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1403662_left_root small_1403662_left_fuel small_1403662_left_count small_1403662_left_encoded small_1403662_left_checked

theorem cover_1403662 : CoveredBy scale carrier boxes root_1403662 := by
  apply coveredBy_split_literal root_1403662 small_1403662_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1404552 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1403662_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1404552
#print axioms cover_1403662

def root_1403657 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1403657_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1403657_right_fuel : Nat := 1
def small_1403657_right_count : Nat := 1
def small_1403657_right_encoded : String := "00000000"
theorem small_1403657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1403657_right_root small_1403657_right_fuel small_1403657_right_count small_1403657_right_encoded = true := by
  decide +kernel
theorem small_1403657_right_covered : CoveredBy scale carrier boxes small_1403657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1403657_right_root small_1403657_right_fuel small_1403657_right_count small_1403657_right_encoded small_1403657_right_checked

theorem cover_1403657 : CoveredBy scale carrier boxes root_1403657 := by
  apply coveredBy_split_literal root_1403657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1403662 small_1403657_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1403662
  · exact small_1403657_right_covered
#print axioms cover_1403657

def root_1402311 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1402311 : CoveredBy scale carrier boxes root_1402311 := by
  apply coveredBy_split_literal root_1402311 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0544.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1403657 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0544.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1403657
#print axioms cover_1402311

def root_1402305 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1402305_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1402305_left_fuel : Nat := 1
def small_1402305_left_count : Nat := 1
def small_1402305_left_encoded : String := "00000004"
theorem small_1402305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1402305_left_root small_1402305_left_fuel small_1402305_left_count small_1402305_left_encoded = true := by
  decide +kernel
theorem small_1402305_left_covered : CoveredBy scale carrier boxes small_1402305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1402305_left_root small_1402305_left_fuel small_1402305_left_count small_1402305_left_encoded small_1402305_left_checked

theorem cover_1402305 : CoveredBy scale carrier boxes root_1402305 := by
  apply coveredBy_split_literal root_1402305 small_1402305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1402311 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1402305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1402311
#print axioms cover_1402305

def root_1401749 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401749_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401749_left_fuel : Nat := 31
def small_1401749_left_count : Nat := 267
def small_1401749_left_encoded : String := "138670FE0C9A86F60F878CF7000000000280010213D7B0F90280010400000006000000080000000113D7ECF9000000010280010413D7B0FB067ECE870000000612EA94FC00000003022A45890000000613E200FE000000040DE7C9F60E6014F700000000000000060E5FD8F703C001020000000613A54CF900000001014001040000000600000008000000000000000213D7ECFB00000002067ECE8712EA58FC022A45890000000813E200FE000000040DE7C9F6000000080E5FD8F7000000080000000000000003000000080F8750F70280010213D7B0F9028001040000000613D7ECFB00000002067ECE8700000006000000080000000113D7ECF9000000010280010413D7B0FB067ECE870000000612EA94FC00000003022A45890000000613E200FE000000040B4D43F610804CF70000000003C001020000000613A54CF900000001014001040000000613F614FB000000020793F0C70000000612825CFC0000000300000006108010F703C001020000000613A54CF900000001014001040000000613F614FB0000000200000009000000000000000213D7ECFB00000002067ECE8712EA58FC022A45890000000513E200FE000000040B4D43F610804CF70000000003C0010213A510F903C0010400000005000000080000000113A54CF90000000103C0010413A510FB0569AC4700000005134110FC00000003000000060000000213A54CFB000000020569AC471340D4FC000000080000000300000008108010F703C0010213A510F903C001040000000513A54CFB000000020569AC4700000005000000080000000113A54CF90000000103C0010413A510FB0569AC4700000005134110FC00000003000000060000000213A54CFB000000020569AC4700000005134110FC00000003033F67C90000000513BC30FE000000040AA6A27610EDACF7000000000000000810ED70F7046001021383DCF904600104000000050000000800000001138418F900000001046001041383DCFB05F43D67000000051317F8FC0000000303C9F8E900000005000000A7000000020000000800000000000000000000000312EA94FC00000003022A45890000000813E200FE000000040B4D43F610804CF70000000003C001020000000813A54CF90000000103C0010413A510FB0793F0C7128220FC0000000800000003000000080000000200000008108010F703C0010213A510F903C0010413A510FB0793F0C7000000060000000700000002000000080000000113A54CF90000000103C0010413A510FB0793F0C7128220FC033F67C90000000613BC30FE000000040AA6A27610EDACF7000000000460010200000006138418F90000000103200104000000060000000810ED70F700000009000000000000000312825CFC00000003033F67C900000007000000090000000213A54CFB000000020793F0C7128220FC000000080000000300000008000000000000000000000004"
theorem small_1401749_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401749_left_root small_1401749_left_fuel small_1401749_left_count small_1401749_left_encoded = true := by
  decide +kernel
theorem small_1401749_left_covered : CoveredBy scale carrier boxes small_1401749_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401749_left_root small_1401749_left_fuel small_1401749_left_count small_1401749_left_encoded small_1401749_left_checked

theorem cover_1401749 : CoveredBy scale carrier boxes root_1401749 := by
  apply coveredBy_split_literal root_1401749 small_1401749_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1402305 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1401749_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1402305
#print axioms cover_1401749

def root_1401743 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401743_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401743_left_fuel : Nat := 1
def small_1401743_left_count : Nat := 1
def small_1401743_left_encoded : String := "00000003"
theorem small_1401743_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401743_left_root small_1401743_left_fuel small_1401743_left_count small_1401743_left_encoded = true := by
  decide +kernel
theorem small_1401743_left_covered : CoveredBy scale carrier boxes small_1401743_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401743_left_root small_1401743_left_fuel small_1401743_left_count small_1401743_left_encoded small_1401743_left_checked

theorem cover_1401743 : CoveredBy scale carrier boxes root_1401743 := by
  apply coveredBy_split_literal root_1401743 small_1401743_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401749 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1401743_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401749
#print axioms cover_1401743

def root_1401093 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401093_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401093_left_fuel : Nat := 31
def small_1401093_left_count : Nat := 313
def small_1401093_left_encoded : String := "138670FC04548A09138670FE0C9A86F60F878CF700000000028001020000000513D7ECF900000001028001040000000513D7ECFB00000002022A45870000000513E200FC00000003022A45890000000513E200FE000000040DE7C9F60E6014F70000000000000006000000060F8750F70000000500000000000000041386ACFE000000040C9A86F60F878CF7000000000280010213D7B0F9028001040000000613D7ECFB00000002022A45870000000613E200FC00000003067ECE890000000612EA94FE000000040DE7C9F60E6014F700000000000000060E5FD8F7014001020000000600000007000000000000000113D7ECF900000001028001040000000713D7ECFB00000002022A45870000000713E200FC00000003067ECE8912EA58FE0DE7C9F6000000070E5FD8F7000000070000000000000004000000070F8750F70280010213D7B0F9028001040000000613D7ECFB00000002022A45870000000613E200FC00000003067ECE890000000612EA94FE000000040B4D43F610804CF700000000014001020000000613F614F90000000103C001040000000613A54CFB00000002033F67C70000000613BC30FC000000030793F0C9000000060000000A108010F7014001020000000613F614F90000000103C00104000000060000000A000000000000000113D7ECF9000000010280010413D7B0FB022A45870000000613E200FC00000003067ECE8900000006000000070000000213D7ECFB00000002022A458713E1C4FC067ECE8912EA58FE0000000500000004000000070000000313E200FC00000003067ECE8912EA58FE0B4D43F610804CF70000000003C0010213A510F903C001040000000513A54CFB00000002033F67C70000000513BC30FC00000003000000060000000113A54CF90000000103C001040000000713A54CFB00000002033F67C70000000713BC30FC000000030569AC491340D4FE000000070000000400000007108010F703C0010213A510F903C001040000000513A54CFB00000002033F67C70000000513BC30FC000000030569AC4900000005134110FE00000004000000060000000113A54CF90000000103C0010413A510FB033F67C70000000513BC30FC000000030569AC4900000005000000070000000213A54CFB00000002033F67C70000000513BC30FC000000030569AC4900000005134110FE000000040AA6A27610EDACF7000000000000000710ED70F7046001021383DCF90460010400000005138418FB0000000203C9F8E700000005000000A7000000010000000700000000000000000000000412EA94FE000000040B4D43F610804CF70000000003C0010213A510F903C001040000000713A54CFB00000002033F67C70000000713BC30FC000000030793F0C9128220FE0000000700000004000000070000000100000007108010F703C0010213A510F903C0010413A510FB033F67C70000000613BC30FC000000030793F0C900000006000000070000000213A54CFB00000002033F67C713BBF4FC0793F0C900000006000000070000000313BC30FC000000030793F0C9128220FE0AA6A27610EDACF70000000003200102000000060000000710ED70F70000000A00000000000000040000000A0000000113A54CF90000000103C001040000000713A54CFB00000002033F67C70000000713BC30FC000000030793F0C9128220FE000000070000000400000007000000000000000000000003"
theorem small_1401093_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401093_left_root small_1401093_left_fuel small_1401093_left_count small_1401093_left_encoded = true := by
  decide +kernel
theorem small_1401093_left_covered : CoveredBy scale carrier boxes small_1401093_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401093_left_root small_1401093_left_fuel small_1401093_left_count small_1401093_left_encoded small_1401093_left_checked

theorem cover_1401093 : CoveredBy scale carrier boxes root_1401093 := by
  apply coveredBy_split_literal root_1401093 small_1401093_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401743 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1401093_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401743
#print axioms cover_1401093

def root_1401087 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401087_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401087_left_fuel : Nat := 1
def small_1401087_left_count : Nat := 1
def small_1401087_left_encoded : String := "00000000"
theorem small_1401087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401087_left_root small_1401087_left_fuel small_1401087_left_count small_1401087_left_encoded = true := by
  decide +kernel
theorem small_1401087_left_covered : CoveredBy scale carrier boxes small_1401087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401087_left_root small_1401087_left_fuel small_1401087_left_count small_1401087_left_encoded small_1401087_left_checked

theorem cover_1401087 : CoveredBy scale carrier boxes root_1401087 := by
  apply coveredBy_split_literal root_1401087 small_1401087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401093 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1401087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401093
#print axioms cover_1401087

def root_1401086 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401086_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401086_right_fuel : Nat := 17
def small_1401086_right_count : Nat := 55
def small_1401086_right_encoded : String := "0F34D0F604548A07138670FC04548A090000000600000007000000031386ACFC0000000304548A09138670FE00000008000000041386ACFE000000040280010213D7B0F90280010413D7B0FB0AD3577710D13CF600000000067ECE870000000612EA94FC00000003067ECE890000000612EA94FE0000000401400102000000060000000710D100F6000000070000000000000002000000080000000113D7ECF9000000010280010413D7B0FB000000070000000213D7ECFB000000020AD3577710D13CF600000000067ECE8700000007000000080000000700000000"
theorem small_1401086_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401086_right_root small_1401086_right_fuel small_1401086_right_count small_1401086_right_encoded = true := by
  decide +kernel
theorem small_1401086_right_covered : CoveredBy scale carrier boxes small_1401086_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401086_right_root small_1401086_right_fuel small_1401086_right_count small_1401086_right_encoded small_1401086_right_checked

theorem cover_1401086 : CoveredBy scale carrier boxes root_1401086 := by
  apply coveredBy_split_literal root_1401086 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401087 small_1401086_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401087
  · exact small_1401086_right_covered
#print axioms cover_1401086

def root_1401081 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401081_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401081_right_fuel : Nat := 1
def small_1401081_right_count : Nat := 1
def small_1401081_right_encoded : String := "00000002"
theorem small_1401081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401081_right_root small_1401081_right_fuel small_1401081_right_count small_1401081_right_encoded = true := by
  decide +kernel
theorem small_1401081_right_covered : CoveredBy scale carrier boxes small_1401081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401081_right_root small_1401081_right_fuel small_1401081_right_count small_1401081_right_encoded small_1401081_right_checked

theorem cover_1401081 : CoveredBy scale carrier boxes root_1401081 := by
  apply coveredBy_split_literal root_1401081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401086 small_1401081_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401086
  · exact small_1401081_right_covered
#print axioms cover_1401081

def root_1410305 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1410305 : CoveredBy scale carrier boxes root_1410305 := by
  apply coveredBy_split_literal root_1410305 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0547.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0548.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0547.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0548.covered
#print axioms cover_1410305

def root_1410299 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410299_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410299_left_fuel : Nat := 1
def small_1410299_left_count : Nat := 1
def small_1410299_left_encoded : String := "00000000"
theorem small_1410299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1410299_left_root small_1410299_left_fuel small_1410299_left_count small_1410299_left_encoded = true := by
  decide +kernel
theorem small_1410299_left_covered : CoveredBy scale carrier boxes small_1410299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1410299_left_root small_1410299_left_fuel small_1410299_left_count small_1410299_left_encoded small_1410299_left_checked

theorem cover_1410299 : CoveredBy scale carrier boxes root_1410299 := by
  apply coveredBy_split_literal root_1410299 small_1410299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1410305 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1410299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1410305
#print axioms cover_1410299

def root_1410298 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410298_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410298_right_fuel : Nat := 7
def small_1410298_right_count : Nat := 13
def small_1410298_right_encoded : String := "0F34D0F604548A07138670FC04548A09000000081386ACFE00000004028001020000000900000009000000030000000800000000"
theorem small_1410298_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1410298_right_root small_1410298_right_fuel small_1410298_right_count small_1410298_right_encoded = true := by
  decide +kernel
theorem small_1410298_right_covered : CoveredBy scale carrier boxes small_1410298_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1410298_right_root small_1410298_right_fuel small_1410298_right_count small_1410298_right_encoded small_1410298_right_checked

theorem cover_1410298 : CoveredBy scale carrier boxes root_1410298 := by
  apply coveredBy_split_literal root_1410298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1410299 small_1410298_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1410299
  · exact small_1410298_right_covered
#print axioms cover_1410298

def root_1410292 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410292_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1410292_left_fuel : Nat := 1
def small_1410292_left_count : Nat := 1
def small_1410292_left_encoded : String := "00000002"
theorem small_1410292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1410292_left_root small_1410292_left_fuel small_1410292_left_count small_1410292_left_encoded = true := by
  decide +kernel
theorem small_1410292_left_covered : CoveredBy scale carrier boxes small_1410292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1410292_left_root small_1410292_left_fuel small_1410292_left_count small_1410292_left_encoded small_1410292_left_checked

theorem cover_1410292 : CoveredBy scale carrier boxes root_1410292 := by
  apply coveredBy_split_literal root_1410292 small_1410292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1410298 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1410292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1410298
#print axioms cover_1410292

def root_1401080 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401080 : CoveredBy scale carrier boxes root_1401080 := by
  apply coveredBy_split_literal root_1401080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1410292 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401081
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1410292
#print axioms cover_1401080

def root_1401075 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401075_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401075_right_fuel : Nat := 1
def small_1401075_right_count : Nat := 1
def small_1401075_right_encoded : String := "00000001"
theorem small_1401075_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401075_right_root small_1401075_right_fuel small_1401075_right_count small_1401075_right_encoded = true := by
  decide +kernel
theorem small_1401075_right_covered : CoveredBy scale carrier boxes small_1401075_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401075_right_root small_1401075_right_fuel small_1401075_right_count small_1401075_right_encoded small_1401075_right_checked

theorem cover_1401075 : CoveredBy scale carrier boxes root_1401075 := by
  apply coveredBy_split_literal root_1401075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401080 small_1401075_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401080
  · exact small_1401075_right_covered
#print axioms cover_1401075

def root_1413805 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413805_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413805_left_fuel : Nat := 27
def small_1413805_left_count : Nat := 129
def small_1413805_left_encoded : String := "138670FC04548A09138670FE0C9A86F60F878CF70000000007800102128A40F9028001040000000713D7ECFB00000002022A45870000000713E200FC00000003022A45890000000A0000000700000001000000070F8750F707800102128A40F90280010413D7B0FB000000050000000213D7ECFB00000002022A45870000000513E200FC00000003022A45890000000513E200FE000000040B4D43F610804CF7000000000640010212FF70F9000000050000000100000007108010F7064001020000000512FFACF90000000103C001040000000513A54CFB00000002033F67C70000000513BC30FC000000030000000A0000000000000001128A7CF9000000010280010413D7B0FB000000070000000213D7ECFB00000002022A45870000000713E200FC00000003022A45890000000A0000000700000000000000041386ACFE000000040C9A86F6000000070F8750F707800102128A40F9028001040000000713D7ECFB00000002022A45870000000713E200FC00000003067ECE8912EA58FE0B4D43F600000007108010F70640010212FF70F903C001040000000713A54CFB00000002033F67C70000000713BC30FC000000030569AC491340D4FE0AA6A2760000000710ED70F705A001020000000500000007000000000000000400000007000000010000000700000000000000040000000700000001000000070000000000000003"
theorem small_1413805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1413805_left_root small_1413805_left_fuel small_1413805_left_count small_1413805_left_encoded = true := by
  decide +kernel
theorem small_1413805_left_covered : CoveredBy scale carrier boxes small_1413805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1413805_left_root small_1413805_left_fuel small_1413805_left_count small_1413805_left_encoded small_1413805_left_checked

theorem cover_1413805 : CoveredBy scale carrier boxes root_1413805 := by
  apply coveredBy_split_literal root_1413805 small_1413805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0549.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1413805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0549.covered
#print axioms cover_1413805

def root_1413799 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413799_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413799_left_fuel : Nat := 1
def small_1413799_left_count : Nat := 1
def small_1413799_left_encoded : String := "00000000"
theorem small_1413799_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1413799_left_root small_1413799_left_fuel small_1413799_left_count small_1413799_left_encoded = true := by
  decide +kernel
theorem small_1413799_left_covered : CoveredBy scale carrier boxes small_1413799_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1413799_left_root small_1413799_left_fuel small_1413799_left_count small_1413799_left_encoded small_1413799_left_checked

theorem cover_1413799 : CoveredBy scale carrier boxes root_1413799 := by
  apply coveredBy_split_literal root_1413799 small_1413799_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413805 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1413799_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413805
#print axioms cover_1413799

def root_1413798 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413798_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413798_right_fuel : Nat := 8
def small_1413798_right_count : Nat := 15
def small_1413798_right_encoded : String := "0F34D0F604548A07000000071386ACFC0000000304548A09138670FE07800102128A40F90000000A0000000100000007000000040000000700000000"
theorem small_1413798_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1413798_right_root small_1413798_right_fuel small_1413798_right_count small_1413798_right_encoded = true := by
  decide +kernel
theorem small_1413798_right_covered : CoveredBy scale carrier boxes small_1413798_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1413798_right_root small_1413798_right_fuel small_1413798_right_count small_1413798_right_encoded small_1413798_right_checked

theorem cover_1413798 : CoveredBy scale carrier boxes root_1413798 := by
  apply coveredBy_split_literal root_1413798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413799 small_1413798_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413799
  · exact small_1413798_right_covered
#print axioms cover_1413798

def root_1413793 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413793_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413793_right_fuel : Nat := 1
def small_1413793_right_count : Nat := 1
def small_1413793_right_encoded : String := "00000002"
theorem small_1413793_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1413793_right_root small_1413793_right_fuel small_1413793_right_count small_1413793_right_encoded = true := by
  decide +kernel
theorem small_1413793_right_covered : CoveredBy scale carrier boxes small_1413793_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1413793_right_root small_1413793_right_fuel small_1413793_right_count small_1413793_right_encoded small_1413793_right_checked

theorem cover_1413793 : CoveredBy scale carrier boxes root_1413793 := by
  apply coveredBy_split_literal root_1413793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413798 small_1413793_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413798
  · exact small_1413793_right_covered
#print axioms cover_1413793

def root_1413792 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1413792 : CoveredBy scale carrier boxes root_1413792 := by
  apply coveredBy_split_literal root_1413792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413793 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0550.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413793
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0550.covered
#print axioms cover_1413792

def root_1413786 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413786_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1413786_left_fuel : Nat := 1
def small_1413786_left_count : Nat := 1
def small_1413786_left_encoded : String := "00000001"
theorem small_1413786_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1413786_left_root small_1413786_left_fuel small_1413786_left_count small_1413786_left_encoded = true := by
  decide +kernel
theorem small_1413786_left_covered : CoveredBy scale carrier boxes small_1413786_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1413786_left_root small_1413786_left_fuel small_1413786_left_count small_1413786_left_encoded small_1413786_left_checked

theorem cover_1413786 : CoveredBy scale carrier boxes root_1413786 := by
  apply coveredBy_split_literal root_1413786 small_1413786_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413792 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1413786_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413792
#print axioms cover_1413786

def root_1401074 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401074 : CoveredBy scale carrier boxes root_1401074 := by
  apply coveredBy_split_literal root_1401074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1413786 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401075
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1413786
#print axioms cover_1401074

def root_1401069 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401069_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401069_right_fuel : Nat := 1
def small_1401069_right_count : Nat := 1
def small_1401069_right_encoded : String := "00000004"
theorem small_1401069_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401069_right_root small_1401069_right_fuel small_1401069_right_count small_1401069_right_encoded = true := by
  decide +kernel
theorem small_1401069_right_covered : CoveredBy scale carrier boxes small_1401069_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401069_right_root small_1401069_right_fuel small_1401069_right_count small_1401069_right_encoded small_1401069_right_checked

theorem cover_1401069 : CoveredBy scale carrier boxes root_1401069 := by
  apply coveredBy_split_literal root_1401069 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401074 small_1401069_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401074
  · exact small_1401069_right_covered
#print axioms cover_1401069

def root_1401068 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401068 : CoveredBy scale carrier boxes root_1401068 := by
  apply coveredBy_split_literal root_1401068 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0551.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401069
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0551.covered
#print axioms cover_1401068

def root_1401063 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401063_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401063_right_fuel : Nat := 1
def small_1401063_right_count : Nat := 1
def small_1401063_right_encoded : String := "00000003"
theorem small_1401063_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401063_right_root small_1401063_right_fuel small_1401063_right_count small_1401063_right_encoded = true := by
  decide +kernel
theorem small_1401063_right_covered : CoveredBy scale carrier boxes small_1401063_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401063_right_root small_1401063_right_fuel small_1401063_right_count small_1401063_right_encoded small_1401063_right_checked

theorem cover_1401063 : CoveredBy scale carrier boxes root_1401063 := by
  apply coveredBy_split_literal root_1401063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401068 small_1401063_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401068
  · exact small_1401063_right_covered
#print axioms cover_1401063

def root_1401062 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401062 : CoveredBy scale carrier boxes root_1401062 := by
  apply coveredBy_split_literal root_1401062 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0552.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401063
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0552.covered
#print axioms cover_1401062

def root_1401056 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401056_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401056_left_fuel : Nat := 1
def small_1401056_left_count : Nat := 1
def small_1401056_left_encoded : String := "00000000"
theorem small_1401056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401056_left_root small_1401056_left_fuel small_1401056_left_count small_1401056_left_encoded = true := by
  decide +kernel
theorem small_1401056_left_covered : CoveredBy scale carrier boxes small_1401056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401056_left_root small_1401056_left_fuel small_1401056_left_count small_1401056_left_encoded small_1401056_left_checked

theorem cover_1401056 : CoveredBy scale carrier boxes root_1401056 := by
  apply coveredBy_split_literal root_1401056 small_1401056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401062 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1401056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401062
#print axioms cover_1401056

def root_1401055 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401055_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401055_right_fuel : Nat := 13
def small_1401055_right_count : Nat := 79
def small_1401055_right_encoded : String := "120700F608A91307120700FC08A91309120700FE05000102135D44F905000104135D44FB045489F71386ACF60000000004548A07000000070000000800000007000000020000000800000001135D80F9000000010500010400000007135D80FB00000002045489F71386ACF60000000004548A070000000700000008000000070000000412073CFE0000000405000102135D44F905000104135D44FB0000000700000002135D80FB00000002045489F71386ACF60000000004548A0700000007000000050000000500000001000000070000000312073CFC0000000308A91309120700FE05000102135D44F90000000800000001135D80F90000000105000104135D44FB045489F71386ACF6000000000CFD9C070000000A000000050000000500000002000000050000000412073CFE000000040000000500000000"
theorem small_1401055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401055_right_root small_1401055_right_fuel small_1401055_right_count small_1401055_right_encoded = true := by
  decide +kernel
theorem small_1401055_right_covered : CoveredBy scale carrier boxes small_1401055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401055_right_root small_1401055_right_fuel small_1401055_right_count small_1401055_right_encoded small_1401055_right_checked

theorem cover_1401055 : CoveredBy scale carrier boxes root_1401055 := by
  apply coveredBy_split_literal root_1401055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401056 small_1401055_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401056
  · exact small_1401055_right_covered
#print axioms cover_1401055

def root_1401050 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401050_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401050_right_fuel : Nat := 1
def small_1401050_right_count : Nat := 1
def small_1401050_right_encoded : String := "00000004"
theorem small_1401050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401050_right_root small_1401050_right_fuel small_1401050_right_count small_1401050_right_encoded = true := by
  decide +kernel
theorem small_1401050_right_covered : CoveredBy scale carrier boxes small_1401050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401050_right_root small_1401050_right_fuel small_1401050_right_count small_1401050_right_encoded small_1401050_right_checked

theorem cover_1401050 : CoveredBy scale carrier boxes root_1401050 := by
  apply coveredBy_split_literal root_1401050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401055 small_1401050_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401055
  · exact small_1401050_right_covered
#print axioms cover_1401050

def root_1401049 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401049_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401049_right_fuel : Nat := 4
def small_1401049_right_count : Nat := 7
def small_1401049_right_encoded : String := "1151E9090000000408A912F712073CF6000000000000000500000005"
theorem small_1401049_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401049_right_root small_1401049_right_fuel small_1401049_right_count small_1401049_right_encoded = true := by
  decide +kernel
theorem small_1401049_right_covered : CoveredBy scale carrier boxes small_1401049_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401049_right_root small_1401049_right_fuel small_1401049_right_count small_1401049_right_encoded small_1401049_right_checked

theorem cover_1401049 : CoveredBy scale carrier boxes root_1401049 := by
  apply coveredBy_split_literal root_1401049 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401050 small_1401049_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401050
  · exact small_1401049_right_covered
#print axioms cover_1401049

def root_1401044 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401044_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401044_right_fuel : Nat := 1
def small_1401044_right_count : Nat := 1
def small_1401044_right_encoded : String := "00000003"
theorem small_1401044_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401044_right_root small_1401044_right_fuel small_1401044_right_count small_1401044_right_encoded = true := by
  decide +kernel
theorem small_1401044_right_covered : CoveredBy scale carrier boxes small_1401044_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401044_right_root small_1401044_right_fuel small_1401044_right_count small_1401044_right_encoded small_1401044_right_checked

theorem cover_1401044 : CoveredBy scale carrier boxes root_1401044 := by
  apply coveredBy_split_literal root_1401044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401049 small_1401044_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401049
  · exact small_1401044_right_covered
#print axioms cover_1401044

def root_1401043 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401043_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401043_right_fuel : Nat := 6
def small_1401043_right_count : Nat := 13
def small_1401043_right_encoded : String := "1151E907000000030A0000FE1152250908A912F712073CF6000000000000000500000005000000041151E9090000000400000005"
theorem small_1401043_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401043_right_root small_1401043_right_fuel small_1401043_right_count small_1401043_right_encoded = true := by
  decide +kernel
theorem small_1401043_right_covered : CoveredBy scale carrier boxes small_1401043_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401043_right_root small_1401043_right_fuel small_1401043_right_count small_1401043_right_encoded small_1401043_right_checked

theorem cover_1401043 : CoveredBy scale carrier boxes root_1401043 := by
  apply coveredBy_split_literal root_1401043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401044 small_1401043_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401044
  · exact small_1401043_right_covered
#print axioms cover_1401043

def root_1401038 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401038_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401038_right_fuel : Nat := 1
def small_1401038_right_count : Nat := 1
def small_1401038_right_encoded : String := "00000002"
theorem small_1401038_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401038_right_root small_1401038_right_fuel small_1401038_right_count small_1401038_right_encoded = true := by
  decide +kernel
theorem small_1401038_right_covered : CoveredBy scale carrier boxes small_1401038_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401038_right_root small_1401038_right_fuel small_1401038_right_count small_1401038_right_encoded small_1401038_right_checked

theorem cover_1401038 : CoveredBy scale carrier boxes root_1401038 := by
  apply coveredBy_split_literal root_1401038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401043 small_1401038_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401043
  · exact small_1401038_right_covered
#print axioms cover_1401038

def root_1401037 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401037_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401037_right_fuel : Nat := 33
def small_1401037_right_count : Nat := 355
def small_1401037_right_encoded : String := "115224FB000000020A0000FC115225070A0000FE1152250908A912F712073CF60000000008A912FB12073D0408A91307120700FC08A91309120700FE05000102135D44F90CFD9BF70F350CF6000000000CFD9BFB0F350D0404548A07138670FC04548A09000000081386ACFE000000040C9A86F60F878CF7000000000C9A87040F8750FB0000000900000002000000080F8750F70C9A87040F8750FB0280010213D7B0F9022A458700000009000000080000000113D7ECF900000001022A45870000000913E200FC00000003067ECE890000000800000009000000020F878CFB0000000202800102000000080000000900000000000000031386ACFC0000000304548A09000000081386ACFE000000040C9A86F6000000080F8750F70C9A87040F8750FB028001020000000813D7ECF900000001067ECE8712EA58FC000000080000000300000005000000020000000800000000000000020F34D10400000002000000080F34D0F6000000080000000000000001135D80F9000000010CFD9BF70F350CF6000000000CFD9BFB0F350D0404548A07138670FC04548A09138670FE0C9A86F60F878CF700000000000000080F8750F70C9A87040F8750FB07800102128A40F9022A4587000000090000000800000001128A7CF900000001022A45870000000913E200FC00000003022A45890000000800000006000000020F878CFB000000020000000800000000000000041386ACFE000000040C9A86F60F878CF7000000000C9A87040F8750FB0000000900000002000000090F8750F70C9A87040F8750FB07800102128A40F9022A45870000000913E200FC00000003067ECE89000000090000000500000001128A7CF900000001022A45870000000900000005000000020F878CFB0000000207800102000000090000000600000000000000031386ACFC0000000304548A09138670FE0C9A86F6000000080F8750F70C9A87040F8750FB078001020000000800000008000000020000000800000000000000041386ACFE000000040C9A86F60F878CF7000000000000000500000005000000020F34D1040000000204548A07138670FC04548A09000000080000000500000003000000050F34D0F60CFD9BFB0F350D0404548A07138670FC04548A0900000008000000090000000300000008000000020F34D1040000000200000005000000000000000412073CFE0000000405000102135D44F90CFD9BF70F350CF6000000000CFD9BFB0F350D0404548A07138670FC0CFD9C090F34D0FE0C9A86F60F878CF7000000000C9A87040F8750FB0000000900000002000000050F8750F70C9A87040F8750FB0280010213D7B0F9022A458700000009000000050000000113D7ECF900000001022A45870000000900000005000000020F878CFB0000000200000005000000000000000400000005000000030000000500000002000000050F34D0F60CFD9BFB0F350D0404548A07138670FC0CFD9C090000000900000005000000030000000500000002000000050000000000000001135D80F9000000010CFD9BF70F350CF60000000000000005000000050000000312073CFC0000000308A91309120700FE05000102135D44F90CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030000000500000002000000050000000800000001135D80F9000000010CFD9BF70F350CF6000000000000000500000005000000040000000500000002120701040000000208A91307120700FC08A91309120700FE05000102000000080000000500000004000000050000000300000005120700F608A912FB12073D0408A91307120700FC08A91309120700FE0000000800000004000000050000000300000005000000020000000500000000000000041151E9090000000400000005000000031151E907000000030A0000FE000000051151E9090000000400000005"
theorem small_1401037_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401037_right_root small_1401037_right_fuel small_1401037_right_count small_1401037_right_encoded = true := by
  decide +kernel
theorem small_1401037_right_covered : CoveredBy scale carrier boxes small_1401037_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401037_right_root small_1401037_right_fuel small_1401037_right_count small_1401037_right_encoded small_1401037_right_checked

theorem cover_1401037 : CoveredBy scale carrier boxes root_1401037 := by
  apply coveredBy_split_literal root_1401037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401038 small_1401037_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401038
  · exact small_1401037_right_covered
#print axioms cover_1401037

def root_1401032 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401032_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401032_right_fuel : Nat := 1
def small_1401032_right_count : Nat := 1
def small_1401032_right_encoded : String := "00000001"
theorem small_1401032_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401032_right_root small_1401032_right_fuel small_1401032_right_count small_1401032_right_encoded = true := by
  decide +kernel
theorem small_1401032_right_covered : CoveredBy scale carrier boxes small_1401032_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401032_right_root small_1401032_right_fuel small_1401032_right_count small_1401032_right_encoded small_1401032_right_checked

theorem cover_1401032 : CoveredBy scale carrier boxes root_1401032 := by
  apply coveredBy_split_literal root_1401032 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401037 small_1401032_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401037
  · exact small_1401032_right_covered
#print axioms cover_1401032

def root_1401031 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401031 : CoveredBy scale carrier boxes root_1401031 := by
  apply coveredBy_split_literal root_1401031 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401032 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0553.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401032
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0553.covered
#print axioms cover_1401031

def root_1401025 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401025_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1401025_left_fuel : Nat := 1
def small_1401025_left_count : Nat := 1
def small_1401025_left_encoded : String := "00000000"
theorem small_1401025_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1401025_left_root small_1401025_left_fuel small_1401025_left_count small_1401025_left_encoded = true := by
  decide +kernel
theorem small_1401025_left_covered : CoveredBy scale carrier boxes small_1401025_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1401025_left_root small_1401025_left_fuel small_1401025_left_count small_1401025_left_encoded small_1401025_left_checked

theorem cover_1401025 : CoveredBy scale carrier boxes root_1401025 := by
  apply coveredBy_split_literal root_1401025 small_1401025_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401031 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1401025_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401031
#print axioms cover_1401025

def root_1428588 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1428588 : CoveredBy scale carrier boxes root_1428588 := by
  apply coveredBy_split_literal root_1428588 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0555.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0556.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0555.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0556.covered
#print axioms cover_1428588

def root_1428582 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1428582_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1428582_left_fuel : Nat := 1
def small_1428582_left_count : Nat := 1
def small_1428582_left_encoded : String := "00000002"
theorem small_1428582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1428582_left_root small_1428582_left_fuel small_1428582_left_count small_1428582_left_encoded = true := by
  decide +kernel
theorem small_1428582_left_covered : CoveredBy scale carrier boxes small_1428582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1428582_left_root small_1428582_left_fuel small_1428582_left_count small_1428582_left_encoded small_1428582_left_checked

theorem cover_1428582 : CoveredBy scale carrier boxes root_1428582 := by
  apply coveredBy_split_literal root_1428582 small_1428582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1428588 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1428582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1428588
#print axioms cover_1428582

def root_1426564 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1426564 : CoveredBy scale carrier boxes root_1426564 := by
  apply coveredBy_split_literal root_1426564 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0554.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1428582 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0554.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1428582
#print axioms cover_1426564

def root_1426559 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426559_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426559_right_fuel : Nat := 1
def small_1426559_right_count : Nat := 1
def small_1426559_right_encoded : String := "00000001"
theorem small_1426559_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426559_right_root small_1426559_right_fuel small_1426559_right_count small_1426559_right_encoded = true := by
  decide +kernel
theorem small_1426559_right_covered : CoveredBy scale carrier boxes small_1426559_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426559_right_root small_1426559_right_fuel small_1426559_right_count small_1426559_right_encoded small_1426559_right_checked

theorem cover_1426559 : CoveredBy scale carrier boxes root_1426559 := by
  apply coveredBy_split_literal root_1426559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426564 small_1426559_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426564
  · exact small_1426559_right_covered
#print axioms cover_1426559

def root_1432008 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1432008_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1432008_left_fuel : Nat := 29
def small_1432008_left_count : Nat := 219
def small_1432008_left_encoded : String := "138670FC04548A09138670FE078000F6128A7CF70000000007800102128A40F9028001040000000513D7ECFB00000002022A45870000000513E200FC00000003022A45890000000513E200FE0000000408C000F60000000511FBE8F7000000050000000000000001128A7CF9000000010280010413D7B0FB022A45870000000513E200FC00000003022A458900000005000000080000000213D7ECFB00000002022A458713E1C4FC022A458900000005000000070000000313E200FC00000003022A458913E1C4FE08C000F60000000511FBE8F700000005000000000000000413E200FE0000000408C000F611FC24F70000000008C0010211FBE8F903C001040000000713A54CFB00000002033F67C7000000050000000A000000010000000711FBE8F708C0010211FBE8F903C001040000000813A54CFB00000002033F67C70000000513BC30FC00000003033F67C900000005000000080000000111FC24F9000000010000000800000000128A40F707800102128A40F90000000500000001128A7CF900000001028001040000000813D7ECFB00000002022A45870000000513E200FC00000003022A4589000000050000000800000000000000041386ACFE00000004078000F6128A7CF70000000007800102128A40F9028001040000000813D7ECFB00000002022A458713E1C4FC067ECE8912EA58FE08C000F611FC24F700000000000000070000000800000004000000070000000313E200FC00000003067ECE8912EA58FE08C000F611FC24F7000000000640010212FF70F903C001040000000813A54CFB00000002033F67C713BBF4FC0569AC4900000005000000070000000313BC30FC000000030569AC491340D4FE096000F611AABCF70000000005A0010200000005133170F90000000104600104000000050000000711AA80F7000000050000000000000004000000080000000112FFACF90000000103C001040000000713A54CFB00000002033F67C70000000713BC30FC000000030569AC491340D4FE096000F60000000700000008000000040000000711FBE8F706400102000000080000000800000000000000040000000800000001128A7CF900000001028001040000000713D7ECFB00000002022A45870000000713E200FC00000003067ECE8912EA58FE08C000F600000007000000080000000400000007128A40F7000000080000000000000003"
theorem small_1432008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1432008_left_root small_1432008_left_fuel small_1432008_left_count small_1432008_left_encoded = true := by
  decide +kernel
theorem small_1432008_left_covered : CoveredBy scale carrier boxes small_1432008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1432008_left_root small_1432008_left_fuel small_1432008_left_count small_1432008_left_encoded small_1432008_left_checked

theorem cover_1432008 : CoveredBy scale carrier boxes root_1432008 := by
  apply coveredBy_split_literal root_1432008 small_1432008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0557.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1432008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0557.covered
#print axioms cover_1432008

def root_1432003 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1432003_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1432003_right_fuel : Nat := 1
def small_1432003_right_count : Nat := 1
def small_1432003_right_encoded : String := "00000002"
theorem small_1432003_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1432003_right_root small_1432003_right_fuel small_1432003_right_count small_1432003_right_encoded = true := by
  decide +kernel
theorem small_1432003_right_covered : CoveredBy scale carrier boxes small_1432003_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1432003_right_root small_1432003_right_fuel small_1432003_right_count small_1432003_right_encoded small_1432003_right_checked

theorem cover_1432003 : CoveredBy scale carrier boxes root_1432003 := by
  apply coveredBy_split_literal root_1432003 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1432008 small_1432003_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1432008
  · exact small_1432003_right_covered
#print axioms cover_1432003

def root_1435342 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1435342 : CoveredBy scale carrier boxes root_1435342 := by
  apply coveredBy_split_literal root_1435342 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0558.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0559.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0558.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0559.covered
#print axioms cover_1435342

def root_1435337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1435337_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1435337_right_fuel : Nat := 1
def small_1435337_right_count : Nat := 1
def small_1435337_right_encoded : String := "00000003"
theorem small_1435337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1435337_right_root small_1435337_right_fuel small_1435337_right_count small_1435337_right_encoded = true := by
  decide +kernel
theorem small_1435337_right_covered : CoveredBy scale carrier boxes small_1435337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1435337_right_root small_1435337_right_fuel small_1435337_right_count small_1435337_right_encoded small_1435337_right_checked

theorem cover_1435337 : CoveredBy scale carrier boxes root_1435337 := by
  apply coveredBy_split_literal root_1435337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1435342 small_1435337_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1435342
  · exact small_1435337_right_covered
#print axioms cover_1435337

def root_1440418 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1440418 : CoveredBy scale carrier boxes root_1440418 := by
  apply coveredBy_split_literal root_1440418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0560.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0561.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0560.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0561.covered
#print axioms cover_1440418

def root_1440412 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1440412_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1440412_left_fuel : Nat := 1
def small_1440412_left_count : Nat := 1
def small_1440412_left_encoded : String := "00000003"
theorem small_1440412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1440412_left_root small_1440412_left_fuel small_1440412_left_count small_1440412_left_encoded = true := by
  decide +kernel
theorem small_1440412_left_covered : CoveredBy scale carrier boxes small_1440412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1440412_left_root small_1440412_left_fuel small_1440412_left_count small_1440412_left_encoded small_1440412_left_checked

theorem cover_1440412 : CoveredBy scale carrier boxes root_1440412 := by
  apply coveredBy_split_literal root_1440412 small_1440412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1440418 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1440412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1440418
#print axioms cover_1440412

def root_1435336 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1435336 : CoveredBy scale carrier boxes root_1435336 := by
  apply coveredBy_split_literal root_1435336 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1435337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1440412 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1435337
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1440412
#print axioms cover_1435336

def root_1435330 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1435330_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1435330_left_fuel : Nat := 1
def small_1435330_left_count : Nat := 1
def small_1435330_left_encoded : String := "00000002"
theorem small_1435330_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1435330_left_root small_1435330_left_fuel small_1435330_left_count small_1435330_left_encoded = true := by
  decide +kernel
theorem small_1435330_left_covered : CoveredBy scale carrier boxes small_1435330_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1435330_left_root small_1435330_left_fuel small_1435330_left_count small_1435330_left_encoded small_1435330_left_checked

theorem cover_1435330 : CoveredBy scale carrier boxes root_1435330 := by
  apply coveredBy_split_literal root_1435330 small_1435330_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1435336 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1435330_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1435336
#print axioms cover_1435330

def root_1432002 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1432002 : CoveredBy scale carrier boxes root_1432002 := by
  apply coveredBy_split_literal root_1432002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1432003 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1435330 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1432003
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1435330
#print axioms cover_1432002

def root_1431996 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1431996_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1431996_left_fuel : Nat := 1
def small_1431996_left_count : Nat := 1
def small_1431996_left_encoded : String := "00000001"
theorem small_1431996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1431996_left_root small_1431996_left_fuel small_1431996_left_count small_1431996_left_encoded = true := by
  decide +kernel
theorem small_1431996_left_covered : CoveredBy scale carrier boxes small_1431996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1431996_left_root small_1431996_left_fuel small_1431996_left_count small_1431996_left_encoded small_1431996_left_checked

theorem cover_1431996 : CoveredBy scale carrier boxes root_1431996 := by
  apply coveredBy_split_literal root_1431996 small_1431996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1432002 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1431996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1432002
#print axioms cover_1431996

def root_1426558 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1426558 : CoveredBy scale carrier boxes root_1426558 := by
  apply coveredBy_split_literal root_1426558 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1431996 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426559
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1431996
#print axioms cover_1426558

def root_1426552 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426552_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426552_left_fuel : Nat := 1
def small_1426552_left_count : Nat := 1
def small_1426552_left_encoded : String := "00000000"
theorem small_1426552_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426552_left_root small_1426552_left_fuel small_1426552_left_count small_1426552_left_encoded = true := by
  decide +kernel
theorem small_1426552_left_covered : CoveredBy scale carrier boxes small_1426552_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426552_left_root small_1426552_left_fuel small_1426552_left_count small_1426552_left_encoded small_1426552_left_checked

theorem cover_1426552 : CoveredBy scale carrier boxes root_1426552 := by
  apply coveredBy_split_literal root_1426552 small_1426552_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426558 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1426552_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426558
#print axioms cover_1426552

def root_1426551 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1426551 : CoveredBy scale carrier boxes root_1426551 := by
  apply coveredBy_split_literal root_1426551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426552 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0562.root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426552
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0562.covered
#print axioms cover_1426551

def root_1426546 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426546_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426546_right_fuel : Nat := 1
def small_1426546_right_count : Nat := 1
def small_1426546_right_encoded : String := "00000004"
theorem small_1426546_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426546_right_root small_1426546_right_fuel small_1426546_right_count small_1426546_right_encoded = true := by
  decide +kernel
theorem small_1426546_right_covered : CoveredBy scale carrier boxes small_1426546_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426546_right_root small_1426546_right_fuel small_1426546_right_count small_1426546_right_encoded small_1426546_right_checked

theorem cover_1426546 : CoveredBy scale carrier boxes root_1426546 := by
  apply coveredBy_split_literal root_1426546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426551 small_1426546_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426551
  · exact small_1426546_right_covered
#print axioms cover_1426546

def root_1426545 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426545_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426545_right_fuel : Nat := 24
def small_1426545_right_count : Nat := 273
def small_1426545_right_encoded : String := "12073CFE00000004050000F6135D80F70000000005000102135D44F905000104135D44FB04548A07138670FC0CFD9C090F34D0FE078000F6128A7CF700000000028001020000000800000008000000080000000400000008000000031386ACFC000000030CFD9C090F34D0FE078000F6128A7CF7000000000280010213D7B0F90280010413D7B0FB067ECE87000000080000000A000000020000000A0000000113D7ECF900000001028001040000000813D7ECFB00000002067ECE870000000800000005128A40F7028001020000000A0000000800000000000000040F350CFE000000040000000500000002135D80FB0000000204548A07138670FC0CFD9C090F34D0FE078000F6128A7CF700000000028001020000000A13D7ECF90000000107800104128A40FB022A4587000000080000000A00000002128A7CFB00000002022A45870000000A0000000A128A40F70000000A00000000000000040000000A000000031386ACFC000000030CFD9C090F34D0FE078000F6128A7CF7000000000280010213D7B0F907800104128A40FB0000000A000000020000000A0000000113D7ECF90000000107800104128A40FB067ECE8712EA58FC0AD3578910D100FE08C000F611FC24F7000000000000000500000005000000040000000500000003000000050000000200000005128A40F7028001020000000A13D7ECF9000000010000000500000000000000040000000500000001135D80F90000000105000104135D44FB04548A07138670FC0CFD9C090F34D0FE000000080000000400000008000000031386ACFC000000030CFD9C090F34D0FE078000F6128A7CF70000000007800102128A40F9028001040000000813D7ECFB00000002067ECE870000000800000005000000010000000800000008000000040000000500000002135D80FB0000000204548A07138670FC0CFD9C090F34D0FE078000F6128A7CF70000000007800102128A40F907800104128A40FB022A45870000000813E200FC000000030AD3578910D100FE00000008000000040000000500000002128A7CFB00000002022A458713E1C4FC0AD3578910D100FE08C000F60000000911FBE8F700000008000000000000000400000005000000030000000500000001128A7CF9000000010780010400000008128A7CFB0000000200000005128A40F707800102128A40F90780010400000008128A7CFB00000002022A4587000000080000000500000001128A7CF900000001000000080000000000000004000000050000000300000005135D44F705000102135D44F905000104135D44FB04548A07000000081386ACFC000000030000000800000002135D80FB0000000204548A070000000A1386ACFC000000030CFD9C090F34D0FE028000F60000000A00000005000000040000000500000001135D80F9000000010500010400000008135D80FB0000000204548A07138670FC0CFD9C090F34D0FE000000080000000400000005000000030000000500000000"
theorem small_1426545_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426545_right_root small_1426545_right_fuel small_1426545_right_count small_1426545_right_encoded = true := by
  decide +kernel
theorem small_1426545_right_covered : CoveredBy scale carrier boxes small_1426545_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426545_right_root small_1426545_right_fuel small_1426545_right_count small_1426545_right_encoded small_1426545_right_checked

theorem cover_1426545 : CoveredBy scale carrier boxes root_1426545 := by
  apply coveredBy_split_literal root_1426545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426546 small_1426545_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426546
  · exact small_1426545_right_covered
#print axioms cover_1426545

def root_1426540 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426540_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426540_right_fuel : Nat := 1
def small_1426540_right_count : Nat := 1
def small_1426540_right_encoded : String := "00000003"
theorem small_1426540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426540_right_root small_1426540_right_fuel small_1426540_right_count small_1426540_right_encoded = true := by
  decide +kernel
theorem small_1426540_right_covered : CoveredBy scale carrier boxes small_1426540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426540_right_root small_1426540_right_fuel small_1426540_right_count small_1426540_right_encoded small_1426540_right_checked

theorem cover_1426540 : CoveredBy scale carrier boxes root_1426540 := by
  apply coveredBy_split_literal root_1426540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426545 small_1426540_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426545
  · exact small_1426540_right_covered
#print axioms cover_1426540

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033
