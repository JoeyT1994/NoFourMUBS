import TaoBundleAssembly0571
import TaoBundleChunkBatch0778
import TaoBundleChunkBatch0779
import TaoBundleChunkBatch0780
import TaoBundleChunkBatch0781
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572
def root_8308042 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308042_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308042_right_fuel : Nat := 33
def small_8308042_right_count : Nat := 273
def small_8308042_right_encoded : String := "138670FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0F878D090280010013D7B10100000000028001040000000A0000000813D7ED010280010413D7B10500000002067ECE7912EA94F800000001022A457D13E200FC000000030DE7C9FE0E60150900000008000000040E5FD9090000000403C001000000000A13A54D0101400104000000090000000800000000000000080000000A13D7ED05067ECE790000000812EA58F8022A457D13E200FC000000030DE7C9FE000000080E5FD909000000040000000800000008000000010000000200000000000000040F875109000000040280010013D7B10100000000028001040000000A13D7ED05067ECE79000000080000000A0000000213D7ED010280010413D7B10500000002067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE10804D0903C001000000000A13A54D01014001040000000A13F615050793F0B912825CF8000000010000000A0000000A000000020000000000000004108011090000000403C001000000000A13A54D01014001040000000713F615050000000700000002000000000000000A0000000A13D7ED05067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE10804D0903C001000000000813A54D0103C0010413A51105000000020793F0B900000008128220F80000000800000001000000080000000000000004108011090000000403C0010013A511010000000003C0010413A51105000000020793F0B9000000060000000A0000000813A54D0103C0010413A51105000000020793F0B912825CF800000001033F67BD0000000700000006128220F8033F67BD13BC30FC000000030AA6A27E10EDAD09046001000000000A13841901032001040000000700000008000000000000000410ED710900000004000000070000000A0000000113A54D050793F0B900000008128220F8000000080000000100000002000000000000000812EA58F8022A457D13E200FC000000030B4D43FE10804D0903C0010013A511010000000003C00104000000050000000813A54D0103C0010413A51105000000020569AC39134110F8000000010000000A0000000513A54D050569AC39000000081340D4F80000000800000001000000020000000000000004108011090000000403C0010013A511010000000003C001040000000513A54D050569AC3900000008000000050000000213A54D0103C0010413A51105000000020569AC39134110F8000000010000000A0000000513A54D050569AC39134110F800000001033F67BD13BC30FC000000030AA6A27E10EDAD09000000080000000410ED710900000004046001001383DD010000000004600104000000050000000813841901046001041383DD050000000205F43D591317F8F80000000103C9F8DD000000AF00000005000000050000000800000000000000050000000500000002000000000000000500000001000000020000000000000003"
theorem small_8308042_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308042_right_root small_8308042_right_fuel small_8308042_right_count small_8308042_right_encoded = true := by
  decide +kernel
theorem small_8308042_right_covered : CoveredBy scale carrier boxes small_8308042_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308042_right_root small_8308042_right_fuel small_8308042_right_count small_8308042_right_encoded small_8308042_right_checked

theorem cover_8308042 : CoveredBy scale carrier boxes root_8308042 := by
  apply coveredBy_split_literal root_8308042 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.root_8308043 small_8308042_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0571.cover_8308043
  · exact small_8308042_right_covered
#print axioms cover_8308042

def root_8308036 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308036_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308036_left_fuel : Nat := 1
def small_8308036_left_count : Nat := 1
def small_8308036_left_encoded : String := "00000001"
theorem small_8308036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308036_left_root small_8308036_left_fuel small_8308036_left_count small_8308036_left_encoded = true := by
  decide +kernel
theorem small_8308036_left_covered : CoveredBy scale carrier boxes small_8308036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308036_left_root small_8308036_left_fuel small_8308036_left_count small_8308036_left_encoded small_8308036_left_checked

theorem cover_8308036 : CoveredBy scale carrier boxes root_8308036 := by
  apply coveredBy_split_literal root_8308036 small_8308036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308042 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8308036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308042
#print axioms cover_8308036

def root_8308035 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308035_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308035_right_fuel : Nat := 33
def small_8308035_right_count : Nat := 323
def small_8308035_right_encoded : String := "138670F8045489FD1386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D090280010013D7B10100000000028001040000000A13D7ED05022A457913E200F800000001067ECE7D12EA94FC000000030DE7C9FE0E60150900000006000000040E5FD90900000004014001000000000A000000060000000A0000000A0000000213D7ED01028001040000000613D7ED05022A457913E200F800000001067ECE7D0000000612EA58FC0DE7C9FE000000060E5FD909000000040000000600000003000000060000000200000000000000040F875109000000040280010013D7B10100000000028001040000000A13D7ED05022A457913E200F800000001067ECE7D12EA94FC000000030B4D43FE10804D09014001000000000A13F6150103C001040000000A13A54D05033F67B913BC30F8000000010793F0BD000000090000000A0000000A0000000200000000000000041080110900000004014001000000000913F6150103C001040000000A00000009000000000000000A0000000A0000000213D7ED010280010413D7B10500000002022A457913E200F800000001067ECE7D000000060000000A0000000613D7ED05022A457913E200F800000001067ECE7D12EA94FC000000030B4D43FE10804D0903C0010013A511010000000003C001040000000613A54D05033F67B913BC30F8000000010793F0BD00000006128220FC000000060000000300000006000000020000000600000004108011090000000403C0010013A511010000000003C0010413A5110500000002033F67B913BC30F8000000010793F0BD000000060000000A0000000613A54D05033F67B913BC30F8000000010793F0BD00000009128220FC0AA6A27E10EDAD090320010000000009000000060000000410ED710900000004000000090000000313BBF4F80793F0BD000000060000000A000000010000000213A54D0103C001040000000613A54D05033F67B913BC30F8000000010793F0BD00000006128220FC000000060000000300000006000000020000000012EA58FC0B4D43FE10804D0903C0010013A511010000000003C001040000000513A54D05033F67B913BC30F8000000010000000A000000050000000213A54D0103C001040000000613A54D05033F67B913BC30F8000000010569AC3D000000061340D4FC000000060000000300000006000000020000000000000004108011090000000403C0010013A511010000000003C001040000000513A54D05033F67B913BC30F8000000010569AC3D134110FC000000030000000A00000005000000050000000213A54D0103C0010413A5110500000002033F67B913BC30F8000000010569AC3D00000006000000050000000513A54D05033F67B913BC30F8000000010569AC3D134110FC000000030AA6A27E10EDAD09000000060000000410ED710900000004046001001383DD010000000004600104000000051384190503C9F8D9000000AF000000050000000200000006000000050000000500000002000000000000000313E1C4F8067ECE7D0000000612EA58FC0000000500000003000000010000000200000000138670FC0CFD9C090000000A0F350CFE000000040C9A86FE0F878D09028001000000000513D7ED01028001040000000513D7ED05022A457913E200F800000001022A457D13E200FC000000030DE7C9FE0E60150900000006000000040000000A00000005000000050000000200000000000000040F87510900000004000000050000000300000001"
theorem small_8308035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308035_right_root small_8308035_right_fuel small_8308035_right_count small_8308035_right_encoded = true := by
  decide +kernel
theorem small_8308035_right_covered : CoveredBy scale carrier boxes small_8308035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308035_right_root small_8308035_right_fuel small_8308035_right_count small_8308035_right_encoded small_8308035_right_checked

theorem cover_8308035 : CoveredBy scale carrier boxes root_8308035 := by
  apply coveredBy_split_literal root_8308035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308036 small_8308035_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308036
  · exact small_8308035_right_covered
#print axioms cover_8308035

def root_8308029 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308029_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308029_left_fuel : Nat := 1
def small_8308029_left_count : Nat := 1
def small_8308029_left_encoded : String := "00000002"
theorem small_8308029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308029_left_root small_8308029_left_fuel small_8308029_left_count small_8308029_left_encoded = true := by
  decide +kernel
theorem small_8308029_left_covered : CoveredBy scale carrier boxes small_8308029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308029_left_root small_8308029_left_fuel small_8308029_left_count small_8308029_left_encoded small_8308029_left_checked

theorem cover_8308029 : CoveredBy scale carrier boxes root_8308029 := by
  apply coveredBy_split_literal root_8308029 small_8308029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308035 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8308029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308035
#print axioms cover_8308029

def root_8318751 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8318751 : CoveredBy scale carrier boxes root_8318751 := by
  apply coveredBy_split_literal root_8318751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3116.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3117.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3116.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3117.covered
#print axioms cover_8318751

def root_8318746 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8318746_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8318746_right_fuel : Nat := 1
def small_8318746_right_count : Nat := 1
def small_8318746_right_encoded : String := "00000002"
theorem small_8318746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8318746_right_root small_8318746_right_fuel small_8318746_right_count small_8318746_right_encoded = true := by
  decide +kernel
theorem small_8318746_right_covered : CoveredBy scale carrier boxes small_8318746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8318746_right_root small_8318746_right_fuel small_8318746_right_count small_8318746_right_encoded small_8318746_right_checked

theorem cover_8318746 : CoveredBy scale carrier boxes root_8318746 := by
  apply coveredBy_split_literal root_8318746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8318751 small_8318746_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8318751
  · exact small_8318746_right_covered
#print axioms cover_8318746

def root_8308028 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8308028 : CoveredBy scale carrier boxes root_8308028 := by
  apply coveredBy_split_literal root_8308028 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8318746 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308029
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8318746
#print axioms cover_8308028

def root_8308022 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308022_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308022_left_fuel : Nat := 1
def small_8308022_left_count : Nat := 1
def small_8308022_left_encoded : String := "00000000"
theorem small_8308022_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308022_left_root small_8308022_left_fuel small_8308022_left_count small_8308022_left_encoded = true := by
  decide +kernel
theorem small_8308022_left_covered : CoveredBy scale carrier boxes small_8308022_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308022_left_root small_8308022_left_fuel small_8308022_left_count small_8308022_left_encoded small_8308022_left_checked

theorem cover_8308022 : CoveredBy scale carrier boxes root_8308022 := by
  apply coveredBy_split_literal root_8308022 small_8308022_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308028 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8308022_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308028
#print axioms cover_8308022

def root_8322716 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322716_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322716_right_fuel : Nat := 31
def small_8322716_right_count : Nat := 461
def small_8322716_right_encoded : String := "138670FC0CFD9C090F34D0FE07800100128A4101000000000000000900000006000000040F350CFE000000040C9A86FE0F878D0907800100128A4101000000000280010413D7B10500000002067ECE7912EA94F800000001022A457D13E200FC000000030DE7C9FE0000000900000009000000090000000913D7ED05067ECE7912EA94F800000001022A457D13E200FC000000030DE7C9FE00000008000000090000000812EA58F8022A457D13E200FC000000030DE7C9FE0000000900000009000000080000000100000002128A7D0102800104000000090000000900000000000000040F8751090000000407800100128A4101000000000280010413D7B10500000002067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE10804D090640010012FF710100000000014001040000000700000009000000090000000410801109000000040640010012FF710100000000000000070000000713E1C4FC0B4D43FE0000000910801109000000040640010000000007000000070000000312EA58F8022A457D13E200FC000000030B4D43FE10804D090640010012FF710100000000014001040000000900000009000000060000000410801109000000040640010012FF710100000000014001040000000513F615050569AC39134110F800000001033F67BD13BC30FC000000030000000A00000005000000050000000212FFAD01014001040000000913F615050569AC390000000900000009000000020000000013E1C4FC00000005000000030000000113D7ED05067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE10804D090640010012FF71010000000003C0010413A51105000000020793F0B9000000090000000900000008000000090000000410801109000000040640010012FF71010000000003C0010413A51105000000020793F0B912825CF80000000100000007128220F8033F67BD13BC30FC000000030AA6A27E10EDAD09000000090000000410ED71090000000400000007000000090000000113A54D050793F0B912825CF800000001033F67BD13BC30FC000000030AA6A27E0000000810ED7109000000040000000700000008128220F8033F67BD13BC30FC000000030AA6A27E10EDAD09000000090000000410ED71090000000405A0010013313501000000000460010400000007000000080000000900000008000000010000000212FFAD0103C0010413A51105000000020793F0B9000000070000000913A54D050793F0B90000000900000009000000020000000013E1C4FC0B4D43FE10804D09000000080000000410801109000000040640010012FF71010000000003C001040000000900000008000000090000000312EA58F8022A457D13E200FC000000030B4D43FE10804D090640010012FF71010000000003C0010413A51105000000020569AC39000000090000000913A54D050569AC3900000009000000090000000212FFAD0100000009000000000000000410801109000000040640010012FF71010000000003C0010413A51105000000020569AC39134110F800000001033F67BD13BC30FC000000030AA6A27E10EDAD09000000090000000410ED71090000000405A001001331350100000000032001040000000513C1450505F43D5900000007000000050000000200000009000000050000000513A54D050569AC39134110F800000001033F67BD13BC30FC000000030AA6A27E10EDAD0905A00100133135010000000000000009000000090000000410ED71090000000405A001001331350100000000046001041383DD050000000205F43D5900000009000000091384190505F43D59000000080000000900000002133171010460010400000009000000090000000013BBF4FC00000009000000031340D4F8033F67BD13BC30FC000000030AA6A27E10EDAD0905A00100133135010000000000000005000000090000000410ED71090000000405A0010000000005133171010460010400000005000000090000000000000005000000010000000212FFAD0103C0010413A51105000000020569AC39000000090000000913A54D050569AC39134110F8000000010000000900000009000000020000000013E1C4FC0B4D43FE10804D0900000009000000041080110900000004064001000000000500000009000000030000000100000002128A7D010280010413D7B10500000002067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE00000009000000090000000912EA58F8022A457D13E200FC000000030B4D43FE0000000600000009000000090000000113D7ED05067ECE7912EA94F800000001022A457D13E200FC000000030B4D43FE10804D090000000900000004108011090000000408C0010011FBE9010000000000000009000000090000000912EA58F8022A457D13E200FC000000030B4D43FE10804D090000000900000004108011090000000408C0010011FBE9010000000003C001040000000900000009000000090000000900000001000000020000000000000003"
theorem small_8322716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322716_right_root small_8322716_right_fuel small_8322716_right_count small_8322716_right_encoded = true := by
  decide +kernel
theorem small_8322716_right_covered : CoveredBy scale carrier boxes small_8322716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322716_right_root small_8322716_right_fuel small_8322716_right_count small_8322716_right_encoded small_8322716_right_checked

theorem cover_8322716 : CoveredBy scale carrier boxes root_8322716 := by
  apply coveredBy_split_literal root_8322716 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3118.root small_8322716_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3118.covered
  · exact small_8322716_right_covered
#print axioms cover_8322716

def root_8322710 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322710_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322710_left_fuel : Nat := 1
def small_8322710_left_count : Nat := 1
def small_8322710_left_encoded : String := "00000001"
theorem small_8322710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322710_left_root small_8322710_left_fuel small_8322710_left_count small_8322710_left_encoded = true := by
  decide +kernel
theorem small_8322710_left_covered : CoveredBy scale carrier boxes small_8322710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322710_left_root small_8322710_left_fuel small_8322710_left_count small_8322710_left_encoded small_8322710_left_checked

theorem cover_8322710 : CoveredBy scale carrier boxes root_8322710 := by
  apply coveredBy_split_literal root_8322710 small_8322710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322716 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8322710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322716
#print axioms cover_8322710

def root_8322709 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322709_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322709_right_fuel : Nat := 29
def small_8322709_right_count : Nat := 139
def small_8322709_right_encoded : String := "138670F8045489FD1386ACFC000000030CFD9C09000000060F350CFE000000040C9A86FE000000060F8751090000000407800100128A410100000000028001040000000613D7ED05022A457913E200F800000001067ECE7D0000000612EA58FC0B4D43FE0000000610801109000000040640010012FF71010000000003C001040000000613A54D05033F67B913BC30F8000000010569AC3D000000061340D4FC0AA6A27E0000000610ED71090000000405A0010000000005000000060000000300000006000000020000000600000003000000060000000200000006138670FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D0907800100128A410100000000028001040000000613D7ED05022A457913E200F800000001022A457D0000000600000009000000060000000200000006000000040F8751090000000407800100128A4101000000000280010413D7B105000000020000000513D7ED05022A457913E200F800000001022A457D13E200FC000000030B4D43FE10804D090640010012FF7101000000000000000500000006000000041080110900000004064001000000000512FFAD0103C001040000000513A54D05033F67B913BC30F80000000100000009000000050000000200000000000000050000000500000002128A7D010280010413D7B105000000020000000613D7ED05022A457913E200F800000001022A457D00000006000000090000000600000002000000000000000300000001"
theorem small_8322709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322709_right_root small_8322709_right_fuel small_8322709_right_count small_8322709_right_encoded = true := by
  decide +kernel
theorem small_8322709_right_covered : CoveredBy scale carrier boxes small_8322709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322709_right_root small_8322709_right_fuel small_8322709_right_count small_8322709_right_encoded small_8322709_right_checked

theorem cover_8322709 : CoveredBy scale carrier boxes root_8322709 := by
  apply coveredBy_split_literal root_8322709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322710 small_8322709_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322710
  · exact small_8322709_right_covered
#print axioms cover_8322709

def root_8322703 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322703_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322703_left_fuel : Nat := 1
def small_8322703_left_count : Nat := 1
def small_8322703_left_encoded : String := "00000002"
theorem small_8322703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322703_left_root small_8322703_left_fuel small_8322703_left_count small_8322703_left_encoded = true := by
  decide +kernel
theorem small_8322703_left_covered : CoveredBy scale carrier boxes small_8322703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322703_left_root small_8322703_left_fuel small_8322703_left_count small_8322703_left_encoded small_8322703_left_checked

theorem cover_8322703 : CoveredBy scale carrier boxes root_8322703 := by
  apply coveredBy_split_literal root_8322703 small_8322703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322709 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8322703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322709
#print axioms cover_8322703

def root_8322702 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8322702 : CoveredBy scale carrier boxes root_8322702 := by
  apply coveredBy_split_literal root_8322702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3119.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3119.covered
#print axioms cover_8322702

def root_8322697 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322697_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322697_right_fuel : Nat := 1
def small_8322697_right_count : Nat := 1
def small_8322697_right_encoded : String := "00000000"
theorem small_8322697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322697_right_root small_8322697_right_fuel small_8322697_right_count small_8322697_right_encoded = true := by
  decide +kernel
theorem small_8322697_right_covered : CoveredBy scale carrier boxes small_8322697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322697_right_root small_8322697_right_fuel small_8322697_right_count small_8322697_right_encoded small_8322697_right_checked

theorem cover_8322697 : CoveredBy scale carrier boxes root_8322697 := by
  apply coveredBy_split_literal root_8322697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322702 small_8322697_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322702
  · exact small_8322697_right_covered
#print axioms cover_8322697

def root_8308021 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8308021 : CoveredBy scale carrier boxes root_8308021 := by
  apply coveredBy_split_literal root_8308021 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8322697 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308022
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8322697
#print axioms cover_8308021

def root_8308015 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308015_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308015_left_fuel : Nat := 1
def small_8308015_left_count : Nat := 1
def small_8308015_left_encoded : String := "00000004"
theorem small_8308015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308015_left_root small_8308015_left_fuel small_8308015_left_count small_8308015_left_encoded = true := by
  decide +kernel
theorem small_8308015_left_covered : CoveredBy scale carrier boxes small_8308015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308015_left_root small_8308015_left_fuel small_8308015_left_count small_8308015_left_encoded small_8308015_left_checked

theorem cover_8308015 : CoveredBy scale carrier boxes root_8308015 := by
  apply coveredBy_split_literal root_8308015 small_8308015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308021 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8308015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308021
#print axioms cover_8308015

def root_8307973 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307973_left_fuel : Nat := 7
def small_8307973_left_count : Nat := 21
def small_8307973_left_encoded : String := "120700FE05000100135D45010000000005000104135D450500000002045489F9000000080000000600000008135D81010500010400000006135D8105045489F90000000800000006000000020000000000000004"
theorem small_8307973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8307973_left_root small_8307973_left_fuel small_8307973_left_count small_8307973_left_encoded = true := by
  decide +kernel
theorem small_8307973_left_covered : CoveredBy scale carrier boxes small_8307973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8307973_left_root small_8307973_left_fuel small_8307973_left_count small_8307973_left_encoded small_8307973_left_checked

theorem cover_8307973 : CoveredBy scale carrier boxes root_8307973 := by
  apply coveredBy_split_literal root_8307973 small_8307973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8308015 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8307973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8308015
#print axioms cover_8307973

def root_8307968 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307968_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307968_right_fuel : Nat := 1
def small_8307968_right_count : Nat := 1
def small_8307968_right_encoded : String := "00000003"
theorem small_8307968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8307968_right_root small_8307968_right_fuel small_8307968_right_count small_8307968_right_encoded = true := by
  decide +kernel
theorem small_8307968_right_covered : CoveredBy scale carrier boxes small_8307968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8307968_right_root small_8307968_right_fuel small_8307968_right_count small_8307968_right_encoded small_8307968_right_checked

theorem cover_8307968 : CoveredBy scale carrier boxes root_8307968 := by
  apply coveredBy_split_literal root_8307968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8307973 small_8307968_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8307973
  · exact small_8307968_right_covered
#print axioms cover_8307968

def root_8305778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8305778 : CoveredBy scale carrier boxes root_8305778 := by
  apply coveredBy_split_literal root_8305778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3111.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8307968 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3111.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8307968
#print axioms cover_8305778

def root_8305773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8305773_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8305773_right_fuel : Nat := 1
def small_8305773_right_count : Nat := 1
def small_8305773_right_encoded : String := "00000001"
theorem small_8305773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8305773_right_root small_8305773_right_fuel small_8305773_right_count small_8305773_right_encoded = true := by
  decide +kernel
theorem small_8305773_right_covered : CoveredBy scale carrier boxes small_8305773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8305773_right_root small_8305773_right_fuel small_8305773_right_count small_8305773_right_encoded small_8305773_right_checked

theorem cover_8305773 : CoveredBy scale carrier boxes root_8305773 := by
  apply coveredBy_split_literal root_8305773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8305778 small_8305773_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8305778
  · exact small_8305773_right_covered
#print axioms cover_8305773

def root_8303467 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303467 : CoveredBy scale carrier boxes root_8303467 := by
  apply coveredBy_split_literal root_8303467 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3110.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8305773 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3110.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8305773
#print axioms cover_8303467

def root_8303462 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303462_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303462_right_fuel : Nat := 1
def small_8303462_right_count : Nat := 1
def small_8303462_right_encoded : String := "00000004"
theorem small_8303462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303462_right_root small_8303462_right_fuel small_8303462_right_count small_8303462_right_encoded = true := by
  decide +kernel
theorem small_8303462_right_covered : CoveredBy scale carrier boxes small_8303462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303462_right_root small_8303462_right_fuel small_8303462_right_count small_8303462_right_encoded small_8303462_right_checked

theorem cover_8303462 : CoveredBy scale carrier boxes root_8303462 := by
  apply coveredBy_split_literal root_8303462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8303467 small_8303462_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8303467
  · exact small_8303462_right_covered
#print axioms cover_8303462

def root_8333181 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8333181 : CoveredBy scale carrier boxes root_8333181 := by
  apply coveredBy_split_literal root_8333181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3121.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3122.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3121.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3122.covered
#print axioms cover_8333181

def root_8333176 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333176_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333176_right_fuel : Nat := 1
def small_8333176_right_count : Nat := 1
def small_8333176_right_encoded : String := "00000004"
theorem small_8333176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333176_right_root small_8333176_right_fuel small_8333176_right_count small_8333176_right_encoded = true := by
  decide +kernel
theorem small_8333176_right_covered : CoveredBy scale carrier boxes small_8333176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333176_right_root small_8333176_right_fuel small_8333176_right_count small_8333176_right_encoded small_8333176_right_checked

theorem cover_8333176 : CoveredBy scale carrier boxes root_8333176 := by
  apply coveredBy_split_literal root_8333176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8333181 small_8333176_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8333181
  · exact small_8333176_right_covered
#print axioms cover_8333176

def root_8333175 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333175_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333175_right_fuel : Nat := 17
def small_8333175_right_count : Nat := 69
def small_8333175_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC00000003028001000000000613D7ED010780010400000006000000060000000000000006138670F8045489FD1386ACFC000000030280010013D7B1010000000007800104000000090000000913D7ED0107800104128A410500000002028000FE13D7ED09022A457913E200F800000001067ECE7D0000000812EA58FC03C00100000000060000000800000003000000080000000400000008128A7D05028000FE13D7ED09022A4579000000090000000900000004000000090000000200000000138670FC028001000000000613D7ED0107800104128A41050000000200000005128A7D050000000600000002000000000000000300000001"
theorem small_8333175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333175_right_root small_8333175_right_fuel small_8333175_right_count small_8333175_right_encoded = true := by
  decide +kernel
theorem small_8333175_right_covered : CoveredBy scale carrier boxes small_8333175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333175_right_root small_8333175_right_fuel small_8333175_right_count small_8333175_right_encoded small_8333175_right_checked

theorem cover_8333175 : CoveredBy scale carrier boxes root_8333175 := by
  apply coveredBy_split_literal root_8333175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8333176 small_8333175_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8333176
  · exact small_8333175_right_covered
#print axioms cover_8333175

def root_8333170 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333170_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333170_right_fuel : Nat := 1
def small_8333170_right_count : Nat := 1
def small_8333170_right_encoded : String := "00000002"
theorem small_8333170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333170_right_root small_8333170_right_fuel small_8333170_right_count small_8333170_right_encoded = true := by
  decide +kernel
theorem small_8333170_right_covered : CoveredBy scale carrier boxes small_8333170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333170_right_root small_8333170_right_fuel small_8333170_right_count small_8333170_right_encoded small_8333170_right_checked

theorem cover_8333170 : CoveredBy scale carrier boxes root_8333170 := by
  apply coveredBy_split_literal root_8333170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8333175 small_8333170_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8333175
  · exact small_8333170_right_covered
#print axioms cover_8333170

def root_8330880 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8330880 : CoveredBy scale carrier boxes root_8330880 := by
  apply coveredBy_split_literal root_8330880 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3120.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8333170 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3120.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8333170
#print axioms cover_8330880

def root_8330874 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330874_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330874_left_fuel : Nat := 1
def small_8330874_left_count : Nat := 1
def small_8330874_left_encoded : String := "00000000"
theorem small_8330874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330874_left_root small_8330874_left_fuel small_8330874_left_count small_8330874_left_encoded = true := by
  decide +kernel
theorem small_8330874_left_covered : CoveredBy scale carrier boxes small_8330874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330874_left_root small_8330874_left_fuel small_8330874_left_count small_8330874_left_encoded small_8330874_left_checked

theorem cover_8330874 : CoveredBy scale carrier boxes root_8330874 := by
  apply coveredBy_split_literal root_8330874 small_8330874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8330880 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8330874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8330880
#print axioms cover_8330874

def root_8337128 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8337128 : CoveredBy scale carrier boxes root_8337128 := by
  apply coveredBy_split_literal root_8337128 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3123.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3124.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3123.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3124.covered
#print axioms cover_8337128

def root_8337122 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337122_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337122_left_fuel : Nat := 1
def small_8337122_left_count : Nat := 1
def small_8337122_left_encoded : String := "00000001"
theorem small_8337122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337122_left_root small_8337122_left_fuel small_8337122_left_count small_8337122_left_encoded = true := by
  decide +kernel
theorem small_8337122_left_covered : CoveredBy scale carrier boxes small_8337122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337122_left_root small_8337122_left_fuel small_8337122_left_count small_8337122_left_encoded small_8337122_left_checked

theorem cover_8337122 : CoveredBy scale carrier boxes root_8337122 := by
  apply coveredBy_split_literal root_8337122 small_8337122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8337128 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8337122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8337128
#print axioms cover_8337122

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572
