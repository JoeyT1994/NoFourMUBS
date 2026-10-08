import TaoBundleAssembly0572
import TaoBundleChunkBatch0782
import TaoBundleChunkBatch0783
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573
def root_8337121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337121_right_fuel : Nat := 30
def small_8337121_right_count : Nat := 249
def small_8337121_right_encoded : String := "138670F8045489FD1386ACFC0000000307800100128A410100000000028001040000000813D7ED05078000FE128A7D09022A457913E200F800000001067ECE7D0000000812EA58FC0640010012FF71010000000003C0010413A51105000000020000000813A54D0508C000FE11FC2509033F67B913BC30F8000000010569AC3D000000081340D4FC05A0010013313501000000000000000513317101046001040000000813841905096000FE11AABD09000000060000000411AA8109000000040000000500000002000000000000000313BBF4F80569AC3D0000000600000005000000010000000411FBE90900000004000000080000000212FFAD0103C001040000000813A54D0508C000FE11FC2509033F67B913BC30F8000000010569AC3D000000061340D4FC06E0010012C7E50100000000046001040000000600000006000000060000000300000006000000040000000800000002000000000000000313E1C4F8067ECE7D0000000612EA58FC064001000000000800000006000000030000000100000004128A4109000000040000000800000002128A7D01028001040000000813D7ED05078000FE128A7D09022A457913E200F800000001067ECE7D0000000612EA58FC08C001000000000800000006000000030000000600000004000000080000000200000000138670FC07800100128A4101000000000280010413D7B105000000020000000513D7ED05078000FE128A7D09022A457913E200F800000001022A457D13E200FC00000003064001000000000512FFAD0103C001040000000513A54D0508C000FE0000000511FBE90900000004000000050000000200000000000000050000000500000004128A4109000000040000000500000002128A7D010280010413D7B10500000002078000FE128A7D09022A457913E200F800000001022A457D00000008000000050000000500000004128A4109000000040000000813D7ED05078000FE128A7D09022A457913E200F800000001022A457D13E200FC0000000308C0010011FBE9010000000003C0010413A511050000000208C000FE11FC250900000006000000040000000813A54D0508C000FE11FC2509033F67B900000009000000050000000411FBE90900000004033F67B913BC30F800000001033F67BD0000000800000005000000050000000211FC250103C001040000000613A54D0508C000FE0000000611FBE9090000000400000008000000020000000013E1C4FC08C0010000000005000000090000000313E1C4F8022A457D00000006000000050000000100000004128A410900000004022A457913E200F800000001022A457D00000008000000050000000500000002000000000000000300000001"
theorem small_8337121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337121_right_root small_8337121_right_fuel small_8337121_right_count small_8337121_right_encoded = true := by
  decide +kernel
theorem small_8337121_right_covered : CoveredBy scale carrier boxes small_8337121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337121_right_root small_8337121_right_fuel small_8337121_right_count small_8337121_right_encoded small_8337121_right_checked

theorem cover_8337121 : CoveredBy scale carrier boxes root_8337121 := by
  apply coveredBy_split_literal root_8337121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8337122 small_8337121_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8337122
  · exact small_8337121_right_covered
#print axioms cover_8337121

def root_8337116 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337116_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337116_right_fuel : Nat := 1
def small_8337116_right_count : Nat := 1
def small_8337116_right_encoded : String := "00000004"
theorem small_8337116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337116_right_root small_8337116_right_fuel small_8337116_right_count small_8337116_right_encoded = true := by
  decide +kernel
theorem small_8337116_right_covered : CoveredBy scale carrier boxes small_8337116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337116_right_root small_8337116_right_fuel small_8337116_right_count small_8337116_right_encoded small_8337116_right_checked

theorem cover_8337116 : CoveredBy scale carrier boxes root_8337116 := by
  apply coveredBy_split_literal root_8337116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337121 small_8337116_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337121
  · exact small_8337116_right_covered
#print axioms cover_8337116

def root_8337115 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337115_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337115_right_fuel : Nat := 17
def small_8337115_right_count : Nat := 65
def small_8337115_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC00000003078001000000000800000008138670FC07800100128A410100000000028001040000000713D7ED05028000FE13D7ED09067ECE790000000612EA58F8022A457D13E200FC000000030640010000000006000000070000000500000001000000040000000600000002128A7D01028001040000000713D7ED05028000FE13D7ED09067ECE790000000712EA58F8022A457D0000000700000007000000010000000400000007000000020000000000000003138670F8045489FD00000008138670FC07800100128A41010000000000000005128A7D0100000008000000000000000300000001"
theorem small_8337115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337115_right_root small_8337115_right_fuel small_8337115_right_count small_8337115_right_encoded = true := by
  decide +kernel
theorem small_8337115_right_covered : CoveredBy scale carrier boxes small_8337115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337115_right_root small_8337115_right_fuel small_8337115_right_count small_8337115_right_encoded small_8337115_right_checked

theorem cover_8337115 : CoveredBy scale carrier boxes root_8337115 := by
  apply coveredBy_split_literal root_8337115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337116 small_8337115_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337116
  · exact small_8337115_right_covered
#print axioms cover_8337115

def root_8337109 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337109_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337109_left_fuel : Nat := 1
def small_8337109_left_count : Nat := 1
def small_8337109_left_encoded : String := "00000002"
theorem small_8337109_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337109_left_root small_8337109_left_fuel small_8337109_left_count small_8337109_left_encoded = true := by
  decide +kernel
theorem small_8337109_left_covered : CoveredBy scale carrier boxes small_8337109_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337109_left_root small_8337109_left_fuel small_8337109_left_count small_8337109_left_encoded small_8337109_left_checked

theorem cover_8337109 : CoveredBy scale carrier boxes root_8337109 := by
  apply coveredBy_split_literal root_8337109 small_8337109_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337115 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8337109_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337115
#print axioms cover_8337109

def root_8340948 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8340948 : CoveredBy scale carrier boxes root_8340948 := by
  apply coveredBy_split_literal root_8340948 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3125.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3126.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3125.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3126.covered
#print axioms cover_8340948

def root_8340942 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340942_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340942_left_fuel : Nat := 1
def small_8340942_left_count : Nat := 1
def small_8340942_left_encoded : String := "00000001"
theorem small_8340942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340942_left_root small_8340942_left_fuel small_8340942_left_count small_8340942_left_encoded = true := by
  decide +kernel
theorem small_8340942_left_covered : CoveredBy scale carrier boxes small_8340942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340942_left_root small_8340942_left_fuel small_8340942_left_count small_8340942_left_encoded small_8340942_left_checked

theorem cover_8340942 : CoveredBy scale carrier boxes root_8340942 := by
  apply coveredBy_split_literal root_8340942 small_8340942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340948 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8340942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340948
#print axioms cover_8340942

def root_8346118 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8346118 : CoveredBy scale carrier boxes root_8346118 := by
  apply coveredBy_split_literal root_8346118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3127.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3128.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3127.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3128.covered
#print axioms cover_8346118

def root_8346113 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8346113_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8346113_right_fuel : Nat := 1
def small_8346113_right_count : Nat := 1
def small_8346113_right_encoded : String := "00000001"
theorem small_8346113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8346113_right_root small_8346113_right_fuel small_8346113_right_count small_8346113_right_encoded = true := by
  decide +kernel
theorem small_8346113_right_covered : CoveredBy scale carrier boxes small_8346113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8346113_right_root small_8346113_right_fuel small_8346113_right_count small_8346113_right_encoded small_8346113_right_checked

theorem cover_8346113 : CoveredBy scale carrier boxes root_8346113 := by
  apply coveredBy_split_literal root_8346113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8346118 small_8346113_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8346118
  · exact small_8346113_right_covered
#print axioms cover_8346113

def root_8340941 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8340941 : CoveredBy scale carrier boxes root_8340941 := by
  apply coveredBy_split_literal root_8340941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8346113 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340942
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8346113
#print axioms cover_8340941

def root_8340936 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340936_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340936_right_fuel : Nat := 1
def small_8340936_right_count : Nat := 1
def small_8340936_right_encoded : String := "00000004"
theorem small_8340936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340936_right_root small_8340936_right_fuel small_8340936_right_count small_8340936_right_encoded = true := by
  decide +kernel
theorem small_8340936_right_covered : CoveredBy scale carrier boxes small_8340936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340936_right_root small_8340936_right_fuel small_8340936_right_count small_8340936_right_encoded small_8340936_right_checked

theorem cover_8340936 : CoveredBy scale carrier boxes root_8340936 := by
  apply coveredBy_split_literal root_8340936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340941 small_8340936_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340941
  · exact small_8340936_right_covered
#print axioms cover_8340936

def root_8340935 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340935_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340935_right_fuel : Nat := 23
def small_8340935_right_count : Nat := 315
def small_8340935_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC0000000307800100128A41010000000007800104128A410500000002028000FE13D7ED09067ECE7912EA94F800000001067ECE7D000000050000000612EA58F8067ECE7D0000000812EA58FC06400100000000060000000800000003000000010000000413D7B10900000004067ECE790000000600000008128A7D05028000FE13D7ED09067ECE790000000512EA58F8067ECE7D000000050000000600000001000000040000000600000002128A7D0107800104128A410500000002028000FE13D7ED09067ECE79000000050000000800000004000000080000000A00000000138670FC07800100128A410100000000078001040000000600000006128A7D0107800104128A410500000002028000FE13D7ED09067ECE7912EA94F8000000010000000612EA58F8022A457D13E200FC0000000308C0010011FBE901000000000640010400000008000000060000000A13E1C4FC08C001000000000611FC25010640010400000007000000060000000000000003000000010000000413D7B10900000004067ECE790000000612EA58F8022A457D000000060000000600000001128A7D05028000FE13D7ED09067ECE790000000612EA58F80000000A000000010000000400000006000000020000000000000003138670F8045489FD1386ACFC0000000307800100128A4101000000000780010400000008128A7D05028000FE13D7ED09022A457913E200F800000001067ECE7D0000000812EA58FC06400100000000060000000A0000000313E1C4F8067ECE7D0000000812EA58FC0640010012FF71010000000008C0010400000008000000090000000800000003000000010000000413D7B10900000004022A457913E200F800000001000000080000000800000002128A7D010780010400000008128A7D05028000FE13D7ED09022A45790000000A0000000800000004000000080000000200000000138670FC07800100128A41010000000007800104128A410500000002028000FE13D7ED09022A457913E200F800000001022A457D13E200FC000000030640010012FF7101000000000000000612FFAD01064001040000000812FFAD0503C000FE13A54D09033F67B900000006000000050000000400000006000000020000000000000005000000050000000413D7B10900000004022A45790000000600000005128A7D05028000FE13D7ED09022A457913E200F800000001022A457D000000060000000613E1C4F8022A457D13E200FC00000003064001000000000512FFAD0108C001040000000511FC25050000000A000000020000000000000005000000010000000413D7B10900000004022A4579000000060000000500000002128A7D0107800104128A410500000002028000FE13D7ED09022A457913E200F800000001022A457D0000000813E1C4FC08C001000000000511FC2501064001040000000512FFAD050000000A00000002000000000000000313E1C4F8022A457D0000000800000005000000010000000413D7B10900000004022A45790000000800000005128A7D05028000FE13D7ED09022A457913E200F800000001022A457D0000000A13E1C4FC0000000A0000000313E1C4F8022A457D0000000A00000005000000010000000413D7B10900000004022A45790000000A13E1C4F8022A457D00000008000000050000000100000002000000000000000300000001"
theorem small_8340935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340935_right_root small_8340935_right_fuel small_8340935_right_count small_8340935_right_encoded = true := by
  decide +kernel
theorem small_8340935_right_covered : CoveredBy scale carrier boxes small_8340935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340935_right_root small_8340935_right_fuel small_8340935_right_count small_8340935_right_encoded small_8340935_right_checked

theorem cover_8340935 : CoveredBy scale carrier boxes root_8340935 := by
  apply coveredBy_split_literal root_8340935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340936 small_8340935_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340936
  · exact small_8340935_right_covered
#print axioms cover_8340935

def root_8340930 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340930_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340930_right_fuel : Nat := 1
def small_8340930_right_count : Nat := 1
def small_8340930_right_encoded : String := "00000002"
theorem small_8340930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340930_right_root small_8340930_right_fuel small_8340930_right_count small_8340930_right_encoded = true := by
  decide +kernel
theorem small_8340930_right_covered : CoveredBy scale carrier boxes small_8340930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340930_right_root small_8340930_right_fuel small_8340930_right_count small_8340930_right_encoded small_8340930_right_checked

theorem cover_8340930 : CoveredBy scale carrier boxes root_8340930 := by
  apply coveredBy_split_literal root_8340930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340935 small_8340930_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340935
  · exact small_8340930_right_covered
#print axioms cover_8340930

def root_8337108 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8337108 : CoveredBy scale carrier boxes root_8337108 := by
  apply coveredBy_split_literal root_8337108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8340930 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337109
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8340930
#print axioms cover_8337108

def root_8337103 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337103_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337103_right_fuel : Nat := 1
def small_8337103_right_count : Nat := 1
def small_8337103_right_encoded : String := "00000000"
theorem small_8337103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337103_right_root small_8337103_right_fuel small_8337103_right_count small_8337103_right_encoded = true := by
  decide +kernel
theorem small_8337103_right_covered : CoveredBy scale carrier boxes small_8337103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337103_right_root small_8337103_right_fuel small_8337103_right_count small_8337103_right_encoded small_8337103_right_checked

theorem cover_8337103 : CoveredBy scale carrier boxes root_8337103 := by
  apply coveredBy_split_literal root_8337103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337108 small_8337103_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337108
  · exact small_8337103_right_covered
#print axioms cover_8337103

def root_8330873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8330873 : CoveredBy scale carrier boxes root_8330873 := by
  apply coveredBy_split_literal root_8330873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8330874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8337103 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8330874
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8337103
#print axioms cover_8330873

def root_8330868 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330868_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330868_right_fuel : Nat := 1
def small_8330868_right_count : Nat := 1
def small_8330868_right_encoded : String := "00000003"
theorem small_8330868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330868_right_root small_8330868_right_fuel small_8330868_right_count small_8330868_right_encoded = true := by
  decide +kernel
theorem small_8330868_right_covered : CoveredBy scale carrier boxes small_8330868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330868_right_root small_8330868_right_fuel small_8330868_right_count small_8330868_right_encoded small_8330868_right_checked

theorem cover_8330868 : CoveredBy scale carrier boxes root_8330868 := by
  apply coveredBy_split_literal root_8330868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8330873 small_8330868_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8330873
  · exact small_8330868_right_covered
#print axioms cover_8330868

def root_8330286 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330286_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330286_left_fuel : Nat := 24
def small_8330286_left_count : Nat := 281
def small_8330286_left_encoded : String := "12073CFC0000000305000100135D45010000000005000104135D450500000002050000FE135D8109045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000050F34D0FC0280010013D7B101000000000280010413D7B10500000002078000FE128A7D09067ECE790000000900000008000000040000000813D7ED05078000FE00000009000000090000000213D7ED01028001040000000813D7ED05078000FE128A7D09067ECE79000000050000000800000004128A41090000000400000008000000020000000000000003138670F80CFD9BFD000000080F34D0FC028001000000000800000008000000030000000100000004135D450900000004045489F91386ACF8000000010000000800000008135D8105050000FE135D8109045489F91386ACF8000000010CFD9BFD000000050F34D0FC0280010013D7B1010000000007800104128A410500000002078000FE0000000900000009128A7D05078000FE00000009000000050000000213D7ED0107800104128A410500000002078000FE128A7D09067ECE790000000512EA58F80AD3577D0000000510D100FC03C00100000000090000000500000003000000010000000400000005000000050000000000000003138670F80CFD9BFD000000090F34D0FC0280010013D7B1010000000007800104000000090000000913D7ED0107800104128A410500000002078000FE128A7D09022A457900000009000000080000000400000008128A7D05078000FE128A7D09022A4579000000090000000900000004000000090000000200000000000000030000000100000004135D450900000004045489F91386ACF8000000010CFD9BFD000000050F34D0FC028001000000000900000005000000030000000900000002135D810105000104135D450500000002050000FE135D8109045489F91386ACF8000000010CFD9BFD000000050F34D0FC07800100128A410100000000028001040000000813D7ED05078000FE128A7D09067ECE790000000500000008000000040000000500000002128A7D01000000080000000000000003138670F80CFD9BFD000000080F34D0FC00000008000000030000000100000004135D45090000000400000008135D8105050000FE135D8109045489F900000005138670F80CFD9BFD000000050F34D0FC07800100128A41010000000007800104128A410500000002078000FE128A7D09022A457913E200F8000000010AD3577D0000000510D100FC0000000800000003000000080000000400000008128A7D05078000FE128A7D09022A45790000000513E1C4F80AD3577D0000000510D100FC064001000000000712FFAD010000000700000000000000030000000100000004128A410900000004022A4579000000050000000800000002128A7D010780010400000008128A7D05078000FE128A7D090000000500000004000000050000000200000000000000030000000100000004135D450900000004045489F900000005138670F80CFD9BFD000000050F34D0FC0000000800000003000000010000000200000000"
theorem small_8330286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330286_left_root small_8330286_left_fuel small_8330286_left_count small_8330286_left_encoded = true := by
  decide +kernel
theorem small_8330286_left_covered : CoveredBy scale carrier boxes small_8330286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330286_left_root small_8330286_left_fuel small_8330286_left_count small_8330286_left_encoded small_8330286_left_checked

theorem cover_8330286 : CoveredBy scale carrier boxes root_8330286 := by
  apply coveredBy_split_literal root_8330286 small_8330286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8330868 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8330286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8330868
#print axioms cover_8330286

def root_8330281 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330281_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330281_right_fuel : Nat := 1
def small_8330281_right_count : Nat := 1
def small_8330281_right_encoded : String := "00000001"
theorem small_8330281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330281_right_root small_8330281_right_fuel small_8330281_right_count small_8330281_right_encoded = true := by
  decide +kernel
theorem small_8330281_right_covered : CoveredBy scale carrier boxes small_8330281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330281_right_root small_8330281_right_fuel small_8330281_right_count small_8330281_right_encoded small_8330281_right_checked

theorem cover_8330281 : CoveredBy scale carrier boxes root_8330281 := by
  apply coveredBy_split_literal root_8330281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8330286 small_8330281_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8330286
  · exact small_8330281_right_covered
#print axioms cover_8330281

def root_8329601 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329601_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329601_left_fuel : Nat := 26
def small_8329601_left_count : Nat := 331
def small_8329601_left_encoded : String := "12073CF80000000108A912FD12073CFC0000000305000100135D45010000000005000104135D450500000002050000FE135D81090CFD9BF9000000050F34D0F80CFD9BFD000000050F34D0FC0280010013D7B101000000000280010413D7B10500000002078000FE128A7D090000000500000004000000050000000500000005000000030000000100000004000000050000000500000005120700FC05000100135D45010000000005000104135D450500000002050000FE135D81090CFD9BF90F350CF800000001000000060F34D0F8045489FD1386ACFC000000030280010013D7B101000000000280010413D7B10500000002078000FE128A7D090AD357790000000610D100F8000000060000000100000004000000060000000613D7ED010280010413D7B10500000002078000FE000000070000000713D7ED05078000FE128A7D090AD357790000000510D100F8067ECE7D00000005000000060000000100000004128A410900000004000000060000000200000000138670FC028001000000000613D7ED0102800104000000060000000600000000000000030000000100000004135D4509000000040CFD9BF9000000060F34D0F80000000600000001135D8105050000FE135D81090CFD9BF9000000060F34D0F8045489FD1386ACFC00000003028001000000000613D7ED0107800104128A410500000002078000FE128A7D090AD357790000000510D100F8067ECE7D00000005000000060000000100000004000000050000000500000000000000060000000100000004135D4509000000040000000600000002135D810105000104135D450500000002050000FE135D81090CFD9BF90F350CF800000001045489FD00000005000000070F34D0F8045489FD1386ACFC0000000307800100128A4101000000000280010413D7B10500000002078000FE000000070000000713D7ED05078000FE128A7D090AD357790000000510D100F8067ECE7D0000000512EA58FC0640010012FF71010000000000000007000000050000000300000001000000040000000500000002128A7D010280010413D7B10500000002078000FE00000007000000050000000500000000138670FC07800100128A410100000000028001040000000713D7ED05078000FE128A7D090AD357790000000610D100F8022A457D000000070000000600000001000000040000000600000002128A7D01028001040000000713D7ED05078000FE128A7D090AD357790000000710D100F8022A457D00000007000000070000000100000004000000070000000200000000000000030000000100000004135D4509000000040CFD9BF9000000070F34D0F8045489FD1386ACFC000000030780010000000007000000050000000700000001135D8105050000FE135D81090CFD9BF9000000050F34D0F8045489FD00000005138670FC07800100128A41010000000007800104128A410500000002078000FE128A7D090AD357790000000610D100F8022A457D0000000600000006000000010000000400000006128A7D050000000600000002128A7D0107800104128A410500000002078000FE128A7D090AD357790000000510D100F8022A457D0000000513E1C4FC08C001000000000600000009000000030000000100000004128A4109000000040AD357790000000510D100F8022A457D000000050000000600000001128A7D05078000FE128A7D090000000500000004000000050000000200000000000000030000000100000004135D4509000000040CFD9BF9000000050F34D0F8045489FD000000050000000600000001000000020000000000000003"
theorem small_8329601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8329601_left_root small_8329601_left_fuel small_8329601_left_count small_8329601_left_encoded = true := by
  decide +kernel
theorem small_8329601_left_covered : CoveredBy scale carrier boxes small_8329601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8329601_left_root small_8329601_left_fuel small_8329601_left_count small_8329601_left_encoded small_8329601_left_checked

theorem cover_8329601 : CoveredBy scale carrier boxes root_8329601 := by
  apply coveredBy_split_literal root_8329601 small_8329601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8330281 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8329601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8330281
#print axioms cover_8329601

def root_8329595 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329595_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329595_left_fuel : Nat := 1
def small_8329595_left_count : Nat := 1
def small_8329595_left_encoded : String := "00000004"
theorem small_8329595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8329595_left_root small_8329595_left_fuel small_8329595_left_count small_8329595_left_encoded = true := by
  decide +kernel
theorem small_8329595_left_covered : CoveredBy scale carrier boxes small_8329595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8329595_left_root small_8329595_left_fuel small_8329595_left_count small_8329595_left_encoded small_8329595_left_checked

theorem cover_8329595 : CoveredBy scale carrier boxes root_8329595 := by
  apply coveredBy_split_literal root_8329595 small_8329595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8329601 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8329595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8329601
#print axioms cover_8329595

def root_8303461 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303461 : CoveredBy scale carrier boxes root_8303461 := by
  apply coveredBy_split_literal root_8303461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.root_8303462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8329595 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0572.cover_8303462
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8329595
#print axioms cover_8303461

def root_8303455 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303455_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303455_left_fuel : Nat := 1
def small_8303455_left_count : Nat := 1
def small_8303455_left_encoded : String := "00000003"
theorem small_8303455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303455_left_root small_8303455_left_fuel small_8303455_left_count small_8303455_left_encoded = true := by
  decide +kernel
theorem small_8303455_left_covered : CoveredBy scale carrier boxes small_8303455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303455_left_root small_8303455_left_fuel small_8303455_left_count small_8303455_left_encoded small_8303455_left_checked

theorem cover_8303455 : CoveredBy scale carrier boxes root_8303455 := by
  apply coveredBy_split_literal root_8303455 small_8303455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303461 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8303455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303461
#print axioms cover_8303455

def root_8303454 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303454_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303454_right_fuel : Nat := 8
def small_8303454_right_count : Nat := 21
def small_8303454_right_encoded : String := "1151E8FD0A0000FE1152250908A912F900000005120700F808A913090000000512073CFE000000040000000500000001000000041151E9090000000408A912F900000005120700F8000000050000000100000003"
theorem small_8303454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303454_right_root small_8303454_right_fuel small_8303454_right_count small_8303454_right_encoded = true := by
  decide +kernel
theorem small_8303454_right_covered : CoveredBy scale carrier boxes small_8303454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303454_right_root small_8303454_right_fuel small_8303454_right_count small_8303454_right_encoded small_8303454_right_checked

theorem cover_8303454 : CoveredBy scale carrier boxes root_8303454 := by
  apply coveredBy_split_literal root_8303454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303455 small_8303454_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303455
  · exact small_8303454_right_covered
#print axioms cover_8303454

def root_8303448 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303448_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303448_left_fuel : Nat := 1
def small_8303448_left_count : Nat := 1
def small_8303448_left_encoded : String := "00000002"
theorem small_8303448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303448_left_root small_8303448_left_fuel small_8303448_left_count small_8303448_left_encoded = true := by
  decide +kernel
theorem small_8303448_left_covered : CoveredBy scale carrier boxes small_8303448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303448_left_root small_8303448_left_fuel small_8303448_left_count small_8303448_left_encoded small_8303448_left_checked

theorem cover_8303448 : CoveredBy scale carrier boxes root_8303448 := by
  apply coveredBy_split_literal root_8303448 small_8303448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303454 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8303448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303454
#print axioms cover_8303448

def root_8303447 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303447 : CoveredBy scale carrier boxes root_8303447 := by
  apply coveredBy_split_literal root_8303447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303448 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3129.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3129.covered
#print axioms cover_8303447

def root_8303441 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303441_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303441_left_fuel : Nat := 1
def small_8303441_left_count : Nat := 1
def small_8303441_left_encoded : String := "00000001"
theorem small_8303441_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303441_left_root small_8303441_left_fuel small_8303441_left_count small_8303441_left_encoded = true := by
  decide +kernel
theorem small_8303441_left_covered : CoveredBy scale carrier boxes small_8303441_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303441_left_root small_8303441_left_fuel small_8303441_left_count small_8303441_left_encoded small_8303441_left_checked

theorem cover_8303441 : CoveredBy scale carrier boxes root_8303441 := by
  apply coveredBy_split_literal root_8303441 small_8303441_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303447 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8303441_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303447
#print axioms cover_8303441

def root_8303440 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303440_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303440_right_fuel : Nat := 15
def small_8303440_right_count : Nat := 81
def small_8303440_right_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC08A913090000000512073CFE000000040000000500000003000000041151E9090000000408A912FD00000005120700FC00000005000000031151E8FD0000000500000003115225050A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A9130512070104000000020000000612073D0408A912FD12073CFC000000030500010000000005135D81010000000500000000120700FC0500010000000005135D8101050000F800000005000000060000000000000003000000021151E8FD0A0000FE000000051151E9090000000408A913050000000612073D040500010000000005135D8101050000F800000005000000060000000000000002000000030000000200000001"
theorem small_8303440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303440_right_root small_8303440_right_fuel small_8303440_right_count small_8303440_right_encoded = true := by
  decide +kernel
theorem small_8303440_right_covered : CoveredBy scale carrier boxes small_8303440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303440_right_root small_8303440_right_fuel small_8303440_right_count small_8303440_right_encoded small_8303440_right_checked

theorem cover_8303440 : CoveredBy scale carrier boxes root_8303440 := by
  apply coveredBy_split_literal root_8303440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303441 small_8303440_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303441
  · exact small_8303440_right_covered
#print axioms cover_8303440

def root_8303434 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303434_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303434_left_fuel : Nat := 1
def small_8303434_left_count : Nat := 1
def small_8303434_left_encoded : String := "00000000"
theorem small_8303434_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303434_left_root small_8303434_left_fuel small_8303434_left_count small_8303434_left_encoded = true := by
  decide +kernel
theorem small_8303434_left_covered : CoveredBy scale carrier boxes small_8303434_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303434_left_root small_8303434_left_fuel small_8303434_left_count small_8303434_left_encoded small_8303434_left_checked

theorem cover_8303434 : CoveredBy scale carrier boxes root_8303434 := by
  apply coveredBy_split_literal root_8303434 small_8303434_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.root_8303440 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8303434_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573.cover_8303440
#print axioms cover_8303434

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0573
