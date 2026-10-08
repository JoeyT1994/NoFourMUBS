import TaoBundleAssembly0071
import TaoBundleChunkBatch0290
import TaoBundleChunkBatch0292
import TaoBundleChunkBatch0293
import TaoBundleChunkBatch0294
import TaoBundleChunkBatch0295
import TaoBundleChunkBatch0296
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072
def root_3046720 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3046720_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3046720_left_fuel : Nat := 21
def small_3046720_left_count : Nat := 347
def small_3046720_left_encoded : String := "1386AD06078000F6128A7D01078000F8128A7D0307800108128A410900000004022A457B13E200FA00000002067ECE7D12EA950608C000F6000000050000000A0000000312EA59060000000308C000F611FC250108C000F811FC2503064001080000000A12FFAD0900000006000000040000000111FBE90300000001064001080000000712FFAD09033F67BB0000000713BBF4FA0569AC3D000000060000000800000002000000040000000011FBE9010000000008C000F80000000A11FBE90300000001064001080000000712FFAD09033F67BB000000060000000A0000000413E1C4FA067ECE7D0000000A12EA59060000000308C000F611FC250108C000F811FC25030640010800000009000000080000000111FBE903000000010640010812FF7109000000040000000A000000080000000011FBE901000000000000000A00000002128A7D09022A457B13E200FA00000002067ECE7D0000000612EA59060000000308C000F611FC250108C000F80000000611FBE9030000000100000006000000000000000613E1C4FA067ECE7D0000000612EA59060000000308C000F611FC2501000000080000000011FBE9010000000000000006000000020000000400000001128A41030000000107800108128A410900000004022A457B0000000713E1C4FA067ECE7D0000000712EA59060000000308C000F611FC2501064000F812FFAD030640010812FF710900000004000000070000000800000001000000070000000011FBE90100000000064000F812FFAD03064001080000000A12FFAD090115233B000000070000000800000004000000010000000700000002128A7D09022A457B13E200FA00000002067ECE7D12EA9506000000070000000312EA59060000000308C000F611FC2501064000F812FFAD0308C0010811FBE90900000004033F67BB0000000700000008000000080000000112FF71030000000108C0010800000007000000080000000011FBE90100000000064000F812FFAD0308C0010811FBE90900000004033F67BB0000000613BBF4FA0000000600000002000000060000000112FF71030000000108C001080000000711FC2509033F67BB00000006000000080000000413E1C4FA067ECE7D12EA950608C000F60000000811FBE90100000000064000F812FFAD030000000600000001000000070000000312EA59060000000308C000F60000000811FBE90100000000064000F812FFAD0308C0010800000008000000060000000100000008000000020000000400000000128A410100000000078000F8128A7D0307800108128A410900000004022A457B0000000A0000000A128A7D09022A457B00000006000000060000000400000001128A41030000000107800108128A410900000004022A457B13E200FA00000002067ECE7D0000000712EA590600000003064000F6000000070000000A13E1C4FA067ECE7D0000000712EA590600000003064000F612FFAD010000000A000000000000000A00000002128A7D09022A457B13E200FA00000002067ECE7D12EA9506064000F600000007000000060000000312EA590600000003064000F612FFAD01064000F80000000612FF71030000000108C0010800000007000000060000000012FF710100000000064000F80000000612FF71030000000108C00108000000090000000613E1C4FA067ECE7D12EA9506064000F612FFAD01064000F8000000060000000700000000000000060000000312EA590600000003064000F612FFAD01064000F812FFAD03000000060000000112FF71030000000108C0010811FBE909000000040115233B000000070000000511FC250900000006000000040000000012FF710100000000064000F80000000612FF71030000000108C001080000000A00000005000000020000000400000003"
theorem small_3046720_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3046720_left_root small_3046720_left_fuel small_3046720_left_count small_3046720_left_encoded = true := by
  decide +kernel
theorem small_3046720_left_covered : CoveredBy scale carrier boxes small_3046720_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3046720_left_root small_3046720_left_fuel small_3046720_left_count small_3046720_left_encoded small_3046720_left_checked

theorem cover_3046720 : CoveredBy scale carrier boxes root_3046720 := by
  apply coveredBy_split_literal root_3046720 small_3046720_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.root_3047440 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3046720_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.cover_3047440
#print axioms cover_3046720

def root_3046715 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3046715_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3046715_right_fuel : Nat := 1
def small_3046715_right_count : Nat := 1
def small_3046715_right_encoded : String := "00000002"
theorem small_3046715_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3046715_right_root small_3046715_right_fuel small_3046715_right_count small_3046715_right_encoded = true := by
  decide +kernel
theorem small_3046715_right_covered : CoveredBy scale carrier boxes small_3046715_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3046715_right_root small_3046715_right_fuel small_3046715_right_count small_3046715_right_encoded small_3046715_right_checked

theorem cover_3046715 : CoveredBy scale carrier boxes root_3046715 := by
  apply coveredBy_split_literal root_3046715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3046720 small_3046715_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3046720
  · exact small_3046715_right_covered
#print axioms cover_3046715

def root_3042629 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3042629 : CoveredBy scale carrier boxes root_3042629 := by
  apply coveredBy_split_literal root_3042629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.root_3042630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3046715 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.cover_3042630
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3046715
#print axioms cover_3042629

def root_3042624 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3042624_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3042624_right_fuel : Nat := 1
def small_3042624_right_count : Nat := 1
def small_3042624_right_encoded : String := "00000004"
theorem small_3042624_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3042624_right_root small_3042624_right_fuel small_3042624_right_count small_3042624_right_encoded = true := by
  decide +kernel
theorem small_3042624_right_covered : CoveredBy scale carrier boxes small_3042624_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3042624_right_root small_3042624_right_fuel small_3042624_right_count small_3042624_right_encoded small_3042624_right_checked

theorem cover_3042624 : CoveredBy scale carrier boxes root_3042624 := by
  apply coveredBy_split_literal root_3042624 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3042629 small_3042624_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3042629
  · exact small_3042624_right_covered
#print axioms cover_3042624

def root_3040934 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3040934 : CoveredBy scale carrier boxes root_3040934 := by
  apply coveredBy_split_literal root_3040934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1165.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3042624 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1165.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3042624
#print axioms cover_3040934

def root_3040929 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040929_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040929_right_fuel : Nat := 1
def small_3040929_right_count : Nat := 1
def small_3040929_right_encoded : String := "00000001"
theorem small_3040929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040929_right_root small_3040929_right_fuel small_3040929_right_count small_3040929_right_encoded = true := by
  decide +kernel
theorem small_3040929_right_covered : CoveredBy scale carrier boxes small_3040929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040929_right_root small_3040929_right_fuel small_3040929_right_count small_3040929_right_encoded small_3040929_right_checked

theorem cover_3040929 : CoveredBy scale carrier boxes root_3040929 := by
  apply coveredBy_split_literal root_3040929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040934 small_3040929_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040934
  · exact small_3040929_right_covered
#print axioms cover_3040929

def root_3040928 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040928_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040928_right_fuel : Nat := 24
def small_3040928_right_count : Nat := 219
def small_3040928_right_encoded : String := "135D45030000000105000108135D450900000004045489FB00000007138670FA045489FD000000071386710600000003078000F6128A7D01028000F813D7ED03028001080000000613D7ED09022A457B000000070000000500000004000000010000000600000000128A4101000000000000000500000002135D8109045489FB1386ACFA00000002045489FD000000071386710600000003078000F6128A7D01028000F813D7ED0307800108128A410900000004067ECE7B0000000712EA58FA0000000700000002128A7D09067ECE7B0000000912EA58FA022A457D13E2010608C000F6000000070000000900000003000000090000000200000004000000010000000700000000128A41010000000000000009138670FA045489FD1386AD06078000F6128A7D01028000F813D7ED0307800108128A41090000000400000007128A7D09022A457B0000000713E1C4FA067ECE7D0000000712EA59060000000308C000F60000000811FBE9010000000003C000F800000008000000070000000200000004000000010000000700000000128A410100000000028000F813D7ED0307800108128A41090000000400000007128A7D09022A457B0000000713E1C4FA067ECE7D0000000712EA590600000003064000F612FFAD0103C000F813A54D0308C0010811FBE909000000040000000511FC2509000000080000000400000001000000070000000012FF7101000000000000000500000002000000040000000100000007000000031386710600000003078000F6128A7D01028000F813D7ED0307800108128A410900000004022A457B13E200FA00000002022A457D000000070000000500000005128A7D09022A457B13E200FA00000002022A457D13E2010608C000F611FC250103C000F813A54D0308C00108000000080000000800000001000000070000000011FBE9010000000003C000F813A54D0308C001080000000911FC250900000009000000040000000100000007000000030000000500000005000000040000000113D7B1030000000107800108128A410900000004022A457B0000000700000005128A7D09022A457B00000009000000050000000400000000128A410100000000028000F813D7ED0307800108128A41090000000400000005128A7D09022A457B0000000900000005000000040000000113D7B10300000001000000050000000200000004"
theorem small_3040928_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040928_right_root small_3040928_right_fuel small_3040928_right_count small_3040928_right_encoded = true := by
  decide +kernel
theorem small_3040928_right_covered : CoveredBy scale carrier boxes small_3040928_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040928_right_root small_3040928_right_fuel small_3040928_right_count small_3040928_right_encoded small_3040928_right_checked

theorem cover_3040928 : CoveredBy scale carrier boxes root_3040928 := by
  apply coveredBy_split_literal root_3040928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040929 small_3040928_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040929
  · exact small_3040928_right_covered
#print axioms cover_3040928

def root_3040923 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040923_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040923_right_fuel : Nat := 1
def small_3040923_right_count : Nat := 1
def small_3040923_right_encoded : String := "00000000"
theorem small_3040923_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040923_right_root small_3040923_right_fuel small_3040923_right_count small_3040923_right_encoded = true := by
  decide +kernel
theorem small_3040923_right_covered : CoveredBy scale carrier boxes small_3040923_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040923_right_root small_3040923_right_fuel small_3040923_right_count small_3040923_right_encoded small_3040923_right_checked

theorem cover_3040923 : CoveredBy scale carrier boxes root_3040923 := by
  apply coveredBy_split_literal root_3040923 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040928 small_3040923_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040928
  · exact small_3040923_right_covered
#print axioms cover_3040923

def root_3040922 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040922_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040922_right_fuel : Nat := 20
def small_3040922_right_count : Nat := 273
def small_3040922_right_encoded : String := "135D450100000000050000F8135D810305000108135D450900000004045489FB1386ACFA00000002045489FD0000000A1386710600000003028000F613D7ED01078000F8128A7D03028001080000000813D7ED09067ECE7B000000080000000A0000000400000001128A410300000001000000090000000013D7B1010000000000000009138670FA045489FD0000000A1386710600000003028000F613D7ED01078000F8128A7D030000000A00000001128A41030000000100000005000000000000000A00000002135D8109045489FB1386ACFA00000002045489FD1386AD06028000F613D7ED01078000F8128A7D03078001080000000A0000000600000001128A41030000000107800108128A41090000000400000007128A7D09067ECE7B0000000712EA58FA067ECE7D000000060000000900000002000000040000000013D7B10100000000078000F80000000A128A410300000001078001080000000900000009000000031386710600000003028000F613D7ED01078000F8128A7D0307800108128A410900000004067ECE7B0000000912EA58FA022A457D0000000A0000000900000002128A7D09067ECE7B0000000612EA58FA00000006000000020000000400000001128A410300000001000000090000000013D7B10100000000078000F8128A7D030780010800000009000000090000000100000009138670FA045489FD1386AD06028000F613D7ED01078000F8128A7D03078001080000000A0000000600000001128A410300000001078001080000000A128A7D09022A457B13E200FA00000002067ECE7D0000000612EA5906000000030000000613E1C4FA067ECE7D0000000612EA5906000000030000000600000002000000040000000013D7B101000000000000000A000000031386710600000003028000F613D7ED01078000F8128A7D0307800108128A410900000004022A457B13E200FA00000002022A457D0000000A0000000500000005128A7D09022A457B00000006000000050000000400000001128A41030000000107800108128A41090000000400000005128A7D09022A457B0000000900000005000000040000000013D7B10100000000078000F8128A7D03078001080000000A128A7D09000000060000000400000001128A41030000000100000005000000020000000400000001135D45030000000105000108135D450900000004045489FB00000009138670FA045489FD000000070000000500000002135D8109045489FB1386ACFA00000002045489FD1386AD06028000F600000007000000090000000300000009138670FA045489FD1386AD06028000F613D7ED01028000F813D7ED0307800108128A41090000000400000007128A7D09022A457B0000000913E1C4FA067ECE7D0000000A00000005000000020000000400000001000000070000000013D7B10100000000028000F813D7ED03078001080000000900000009000000010000000900000003000000050000000200000004"
theorem small_3040922_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040922_right_root small_3040922_right_fuel small_3040922_right_count small_3040922_right_encoded = true := by
  decide +kernel
theorem small_3040922_right_covered : CoveredBy scale carrier boxes small_3040922_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040922_right_root small_3040922_right_fuel small_3040922_right_count small_3040922_right_encoded small_3040922_right_checked

theorem cover_3040922 : CoveredBy scale carrier boxes root_3040922 := by
  apply coveredBy_split_literal root_3040922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040923 small_3040922_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040923
  · exact small_3040922_right_covered
#print axioms cover_3040922

def root_3040916 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040916_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040916_left_fuel : Nat := 1
def small_3040916_left_count : Nat := 1
def small_3040916_left_encoded : String := "00000003"
theorem small_3040916_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040916_left_root small_3040916_left_fuel small_3040916_left_count small_3040916_left_encoded = true := by
  decide +kernel
theorem small_3040916_left_covered : CoveredBy scale carrier boxes small_3040916_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040916_left_root small_3040916_left_fuel small_3040916_left_count small_3040916_left_encoded small_3040916_left_checked

theorem cover_3040916 : CoveredBy scale carrier boxes root_3040916 := by
  apply coveredBy_split_literal root_3040916 small_3040916_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040922 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3040916_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040922
#print axioms cover_3040916

def root_3040750 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040750_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040750_left_fuel : Nat := 18
def small_3040750_left_count : Nat := 77
def small_3040750_left_encoded : String := "12073D06050000F6135D8101050000F8135D810305000108135D45090000000400000007135D8109045489FB1386ACFA000000020CFD9BFD000000050F34D10600000003078000F600000005128A41010000000000000007138670FA0CFD9BFD000000050F34D10600000003078000F6128A7D01078000F8128A7D0307800108128A41090000000400000007128A7D090000000500000004000000010000000700000000128A410100000000078000F80000000A000000070000000200000004000000010000000700000000135D450100000000050000F8135D8103050001080000000A135D8109045489FB1386ACFA000000020CFD9BFD000000050F34D106000000030000000A138670FA0CFD9BFD0000000A0F34D106000000030000000A0000000200000004000000010000000700000003"
theorem small_3040750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040750_left_root small_3040750_left_fuel small_3040750_left_count small_3040750_left_encoded = true := by
  decide +kernel
theorem small_3040750_left_covered : CoveredBy scale carrier boxes small_3040750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040750_left_root small_3040750_left_fuel small_3040750_left_count small_3040750_left_encoded small_3040750_left_checked

theorem cover_3040750 : CoveredBy scale carrier boxes root_3040750 := by
  apply coveredBy_split_literal root_3040750 small_3040750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040916 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3040750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040916
#print axioms cover_3040750

def root_3040745 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040745_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3040745_right_fuel : Nat := 1
def small_3040745_right_count : Nat := 1
def small_3040745_right_encoded : String := "00000002"
theorem small_3040745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3040745_right_root small_3040745_right_fuel small_3040745_right_count small_3040745_right_encoded = true := by
  decide +kernel
theorem small_3040745_right_covered : CoveredBy scale carrier boxes small_3040745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3040745_right_root small_3040745_right_fuel small_3040745_right_count small_3040745_right_encoded small_3040745_right_checked

theorem cover_3040745 : CoveredBy scale carrier boxes root_3040745 := by
  apply coveredBy_split_literal root_3040745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040750 small_3040745_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040750
  · exact small_3040745_right_covered
#print axioms cover_3040745

def root_3039983 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039983_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039983_left_fuel : Nat := 28
def small_3039983_left_count : Nat := 357
def small_3039983_left_encoded : String := "12073CFA0000000208A912FD12073D06050000F6135D8101050000F8135D81030500010800000005135D81090CFD9BFB000000050F34D0FA000000050000000200000004000000010000000700000000135D450100000000050000F8135D81030500010800000007135D81090CFD9BFB000000070F34D0FA0000000700000002000000040000000100000007000000031207010600000003050000F6135D8101050000F8135D810305000108135D4509000000040CFD9BFB0F350CFA00000002045489FD0000000513867106000000030C9A86FA00000007000000070F34D0FA045489FD000000071386710600000003078000F6128A7D01078000F8128A7D03028001080000000713D7ED090AD3577B0000000510D100FA000000070000000200000004000000010000000700000000128A410100000000078000F8128A7D03028001080000000713D7ED090AD3577B0000000710D100FA000000090000000200000004000000010000000700000002135D81090CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA000000050F8750FB00000005000000020000000313867106000000030C9A86FA0F878CFB00000002078000F6128A7D01078000F8128A7D0300000005000000010000000700000000128A410100000000000000090F8750FB078000F6128A7D01078000F800000005000000070000000000000009000000020F34D0FA045489FD1386AD06078000F6128A7D01078000F8000000050000000700000000128A410100000000078000F8128A7D030780010800000005128A7D0900000005000000040000000100000007000000031386710600000003078000F6128A7D01078000F8128A7D0307800108128A4109000000040AD3577B0000000510D100FA022A457D0000000513E1C5060000000308C000F611FC250108C000F811FC25030000000500000001000000070000000011FBE901000000000000000900000002128A7D090AD3577B0000000510D100FA022A457D0000000513E1C5060000000308C000F611FC250108C000F800000005000000090000000000000009000000020000000400000001128A41030000000107800108128A4109000000040AD3577B0000000710D100FA0000000700000002128A7D090AD3577B0000000910D100FA00000009000000020000000400000000128A410100000000078000F8128A7D0307800108128A4109000000040AD3577B0000000910D100FA0000000900000002128A7D090AD3577B0000000910D100FA00000009000000020000000400000001128A41030000000100000009000000020000000400000001135D45030000000105000108135D45090000000400000007135D81090CFD9BFB0F350CFA00000002045489FD00000007000000090F34D0FA045489FD000000071386710600000003078000F6128A7D01000000070000000000000009000000020000000400000000135D450100000000050000F8135D810305000108135D4509000000040CFD9BFB0F350CFA00000002045489FD00000007000000080F34D0FA045489FD000000070000000900000002135D81090CFD9BFB0F350CFA00000002045489FD1386AD060C9A86FA0F878CFB00000002028000F600000007000000090F8750FB000000070000000200000003000000090F34D0FA045489FD1386AD06028000F613D7ED01078000F8128A7D0307800108128A41090000000400000007128A7D09000000060000000400000001000000070000000013D7B10100000000078000F8128A7D030000000A0000000100000009000000031386710600000003028000F613D7ED01078000F8128A7D030000000900000001000000090000000000000009000000020000000400000001135D45030000000105000108135D4509000000040CFD9BFB000000070F34D0FA0000000700000002135D81090CFD9BFB000000090F34D0FA000000090000000200000004"
theorem small_3039983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039983_left_root small_3039983_left_fuel small_3039983_left_count small_3039983_left_encoded = true := by
  decide +kernel
theorem small_3039983_left_covered : CoveredBy scale carrier boxes small_3039983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039983_left_root small_3039983_left_fuel small_3039983_left_count small_3039983_left_encoded small_3039983_left_checked

theorem cover_3039983 : CoveredBy scale carrier boxes root_3039983 := by
  apply coveredBy_split_literal root_3039983 small_3039983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3040745 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3039983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3040745
#print axioms cover_3039983

def root_3039977 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039977_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039977_left_fuel : Nat := 1
def small_3039977_left_count : Nat := 1
def small_3039977_left_encoded : String := "00000004"
theorem small_3039977_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039977_left_root small_3039977_left_fuel small_3039977_left_count small_3039977_left_encoded = true := by
  decide +kernel
theorem small_3039977_left_covered : CoveredBy scale carrier boxes small_3039977_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039977_left_root small_3039977_left_fuel small_3039977_left_count small_3039977_left_encoded small_3039977_left_checked

theorem cover_3039977 : CoveredBy scale carrier boxes root_3039977 := by
  apply coveredBy_split_literal root_3039977 small_3039977_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039983 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3039977_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039983
#print axioms cover_3039977

def root_3039976 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3039976 : CoveredBy scale carrier boxes root_3039976 := by
  apply coveredBy_split_literal root_3039976 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039977 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1168.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039977
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1168.covered
#print axioms cover_3039976

def root_3039970 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039970_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039970_left_fuel : Nat := 1
def small_3039970_left_count : Nat := 1
def small_3039970_left_encoded : String := "00000003"
theorem small_3039970_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039970_left_root small_3039970_left_fuel small_3039970_left_count small_3039970_left_encoded = true := by
  decide +kernel
theorem small_3039970_left_covered : CoveredBy scale carrier boxes small_3039970_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039970_left_root small_3039970_left_fuel small_3039970_left_count small_3039970_left_encoded small_3039970_left_checked

theorem cover_3039970 : CoveredBy scale carrier boxes root_3039970 := by
  apply coveredBy_split_literal root_3039970 small_3039970_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039976 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3039970_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039976
#print axioms cover_3039970

def root_3039898 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039898_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039898_left_fuel : Nat := 11
def small_3039898_left_count : Nat := 35
def small_3039898_left_encoded : String := "1151E8FD0A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A913090000000512073D08050000F600000005135D450100000000050000F8000000050000000700000004120700FA08A913090000000512073D08050000F600000005135D450100000000050000F8000000050000000700000004000000020000000400000003"
theorem small_3039898_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039898_left_root small_3039898_left_fuel small_3039898_left_count small_3039898_left_encoded = true := by
  decide +kernel
theorem small_3039898_left_covered : CoveredBy scale carrier boxes small_3039898_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039898_left_root small_3039898_left_fuel small_3039898_left_count small_3039898_left_encoded small_3039898_left_checked

theorem cover_3039898 : CoveredBy scale carrier boxes root_3039898 := by
  apply coveredBy_split_literal root_3039898 small_3039898_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039970 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3039898_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039970
#print axioms cover_3039898

def root_3039892 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039892_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039892_left_fuel : Nat := 1
def small_3039892_left_count : Nat := 1
def small_3039892_left_encoded : String := "00000002"
theorem small_3039892_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039892_left_root small_3039892_left_fuel small_3039892_left_count small_3039892_left_encoded = true := by
  decide +kernel
theorem small_3039892_left_covered : CoveredBy scale carrier boxes small_3039892_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039892_left_root small_3039892_left_fuel small_3039892_left_count small_3039892_left_encoded small_3039892_left_checked

theorem cover_3039892 : CoveredBy scale carrier boxes root_3039892 := by
  apply coveredBy_split_literal root_3039892 small_3039892_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039898 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3039892_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039898
#print axioms cover_3039892

def root_3039891 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3039891 : CoveredBy scale carrier boxes root_3039891 := by
  apply coveredBy_split_literal root_3039891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1169.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039892
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1169.covered
#print axioms cover_3039891

def root_3039885 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039885_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3039885_left_fuel : Nat := 1
def small_3039885_left_count : Nat := 1
def small_3039885_left_encoded : String := "00000001"
theorem small_3039885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3039885_left_root small_3039885_left_fuel small_3039885_left_count small_3039885_left_encoded = true := by
  decide +kernel
theorem small_3039885_left_covered : CoveredBy scale carrier boxes small_3039885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3039885_left_root small_3039885_left_fuel small_3039885_left_count small_3039885_left_encoded small_3039885_left_checked

theorem cover_3039885 : CoveredBy scale carrier boxes root_3039885 := by
  apply coveredBy_split_literal root_3039885 small_3039885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039891 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3039885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039891
#print axioms cover_3039885

def root_3035927 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3035927 : CoveredBy scale carrier boxes root_3035927 := by
  apply coveredBy_split_literal root_3035927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.root_3035928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3039885 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.cover_3035928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3039885
#print axioms cover_3035927

def root_3035921 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3035921_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3035921_left_fuel : Nat := 1
def small_3035921_left_count : Nat := 1
def small_3035921_left_encoded : String := "00000000"
theorem small_3035921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3035921_left_root small_3035921_left_fuel small_3035921_left_count small_3035921_left_encoded = true := by
  decide +kernel
theorem small_3035921_left_covered : CoveredBy scale carrier boxes small_3035921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3035921_left_root small_3035921_left_fuel small_3035921_left_count small_3035921_left_encoded small_3035921_left_checked

theorem cover_3035921 : CoveredBy scale carrier boxes root_3035921 := by
  apply coveredBy_split_literal root_3035921 small_3035921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3035927 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3035921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3035927
#print axioms cover_3035921

def root_3023079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3023079 : CoveredBy scale carrier boxes root_3023079 := by
  apply coveredBy_split_literal root_3023079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.root_3023080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3035921 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.cover_3023080
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3035921
#print axioms cover_3023079

def root_3021265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3021265 : CoveredBy scale carrier boxes root_3021265 := by
  apply coveredBy_split_literal root_3021265 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1157.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3023079 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1157.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3023079
#print axioms cover_3021265

def root_3006967 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3006967 : CoveredBy scale carrier boxes root_3006967 := by
  apply coveredBy_split_literal root_3006967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.root_3006968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3021265 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0071.cover_3006968
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3021265
#print axioms cover_3006967

def root_3058416 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3058416_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3058416_right_fuel : Nat := 13
def small_3058416_right_count : Nat := 47
def small_3058416_right_encoded : String := "1151E8FF08A91301120700F608A91303120700F808A912FB12073CFA0000000208A9130712070106000000030000000500000005120700FA08A9130712070106000000030000000500000005000000020000000112073CF800000001000000050000000012073CF60000000008A913030000000512073CF80000000108A912FB00000005120700FA08A913070000000512073D06050000FE135D80FF000000040CFD9C01000000050000000900000005000000030000000200000004"
theorem small_3058416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3058416_right_root small_3058416_right_fuel small_3058416_right_count small_3058416_right_encoded = true := by
  decide +kernel
theorem small_3058416_right_covered : CoveredBy scale carrier boxes small_3058416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3058416_right_root small_3058416_right_fuel small_3058416_right_count small_3058416_right_encoded small_3058416_right_checked

theorem cover_3058416 : CoveredBy scale carrier boxes root_3058416 := by
  apply coveredBy_split_literal root_3058416 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1170.root small_3058416_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1170.covered
  · exact small_3058416_right_covered
#print axioms cover_3058416

def root_3058411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3058411_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3058411_right_fuel : Nat := 1
def small_3058411_right_count : Nat := 1
def small_3058411_right_encoded : String := "00000003"
theorem small_3058411_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3058411_right_root small_3058411_right_fuel small_3058411_right_count small_3058411_right_encoded = true := by
  decide +kernel
theorem small_3058411_right_covered : CoveredBy scale carrier boxes small_3058411_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3058411_right_root small_3058411_right_fuel small_3058411_right_count small_3058411_right_encoded small_3058411_right_checked

theorem cover_3058411 : CoveredBy scale carrier boxes root_3058411 := by
  apply coveredBy_split_literal root_3058411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3058416 small_3058411_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3058416
  · exact small_3058411_right_covered
#print axioms cover_3058411

def root_3057737 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057737_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057737_left_fuel : Nat := 21
def small_3057737_left_count : Nat := 317
def small_3057737_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D45070000000304548A01138670F600000006000000001386ACF60000000004548A03000000071386ACF8000000010CFD9BFB0000000600000006135D810704548A01138670F604548A03138670F80CFD9BFB0F350CFA000000020000000600000007000000010000000A000000001386ACF60000000004548A03138670F800000008000000011386ACF8000000010CFD9BFB0000000A0F34D0FA000000070000000200000003120700FE0000000600000004120700FA08A912FF0000000700000007000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D45070000000304548A01000000060000000A135D810704548A010000000A1386ACF6000000000CFD9C030F34D0F80000000A000000010000000A00000003120700FE0000000600000004120700FA08A912FF12073CFE00000004050001060000000A0000000A120700FE05000106000000060000000600000004000000020000000012073CF60000000008A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D0F6000000080000000000000008135D81070CFD9C010F34D0F604548A030000000800000008000000000000000800000003120700FE05000106000000080000000800000004120700FA08A912FF00000007120700FE05000106000000070000000700000004000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D0F60CFD9C030F34D0F80000000900000001000000090000000000000009135D81070CFD9C010F34D0F60CFD9C030F34D0F8000000090000000100000009000000000F350CF6000000000CFD9C030F34D0F800000008000000010000000900000003120700FE05000106135D4507000000030CFD9C01000000060F350CF6000000000CFD9C030000000600000008135D81070CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C0300000008000000080000000300000004120700FA08A912FF12073CFE0000000405000106135D4507000000030CFD9C01000000070F350CF60000000000000007135D81070CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C03000000070F350CF8000000010000000900000003120700FE05000106135D4507000000030CFD9C010F34D0F60CFD9C030000000600000006000000000F350CF6000000000CFD9C030F34D0F800000007000000010F350CF800000001045489FB0000000900000007135D81070CFD9C010F34D0F60CFD9C030F34D0F8045489FB0000000600000006000000010F350CF80000000100000006000000000F350CF6000000000CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386ACFA00000002045489FF0000000900000006138670FA045489FF0000000700000007000000020000000300000004000000021151E8FF08A91301120700F608A91303120700F808A912FB00000007000000070000000112073CF8000000010000000A0000000012073CF60000000008A91303120700F8000000070000000112073CF80000000108A912FB000000090000000900000004"
theorem small_3057737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057737_left_root small_3057737_left_fuel small_3057737_left_count small_3057737_left_encoded = true := by
  decide +kernel
theorem small_3057737_left_covered : CoveredBy scale carrier boxes small_3057737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057737_left_root small_3057737_left_fuel small_3057737_left_count small_3057737_left_encoded small_3057737_left_checked

theorem cover_3057737 : CoveredBy scale carrier boxes root_3057737 := by
  apply coveredBy_split_literal root_3057737 small_3057737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3058411 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3057737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3058411
#print axioms cover_3057737

def root_3057731 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057731_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057731_left_fuel : Nat := 1
def small_3057731_left_count : Nat := 1
def small_3057731_left_encoded : String := "00000002"
theorem small_3057731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057731_left_root small_3057731_left_fuel small_3057731_left_count small_3057731_left_encoded = true := by
  decide +kernel
theorem small_3057731_left_covered : CoveredBy scale carrier boxes small_3057731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057731_left_root small_3057731_left_fuel small_3057731_left_count small_3057731_left_encoded small_3057731_left_checked

theorem cover_3057731 : CoveredBy scale carrier boxes root_3057731 := by
  apply coveredBy_split_literal root_3057731 small_3057731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057737 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3057731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057737
#print axioms cover_3057731

def root_3057730 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057730_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057730_right_fuel : Nat := 17
def small_3057730_right_count : Nat := 93
def small_3057730_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE115224FF0000000408A91301120700F608A91303120700F808A912FF000000060000000600000001000000060000000012073CF60000000008A91303120700F8000000080000000112073CF80000000108A912FF00000009000000091151E8FF0000000500000004115225070A0000FE115224FF0000000408A91301120700F608A91303120700F808A91307120701060000000308A912FF12073CFE00000004000000050000000512073D0608A912FF12073CFE000000040000000500000005000000030000000112073CF800000001000000050000000012073CF60000000008A913030000000512073CF80000000108A913070000000512073D0608A912FF00000005120700FE050000FA135D80FB000000020CFD9C0100000005000000080000000500000004000000031151E8FF08A91301120700F608A91303120700F80000000900000001000000050000000000000005000000040000000300000002"
theorem small_3057730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057730_right_root small_3057730_right_fuel small_3057730_right_count small_3057730_right_encoded = true := by
  decide +kernel
theorem small_3057730_right_covered : CoveredBy scale carrier boxes small_3057730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057730_right_root small_3057730_right_fuel small_3057730_right_count small_3057730_right_encoded small_3057730_right_checked

theorem cover_3057730 : CoveredBy scale carrier boxes root_3057730 := by
  apply coveredBy_split_literal root_3057730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057731 small_3057730_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057731
  · exact small_3057730_right_covered
#print axioms cover_3057730

def root_3057725 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057725_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057725_right_fuel : Nat := 1
def small_3057725_right_count : Nat := 1
def small_3057725_right_encoded : String := "00000001"
theorem small_3057725_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057725_right_root small_3057725_right_fuel small_3057725_right_count small_3057725_right_encoded = true := by
  decide +kernel
theorem small_3057725_right_covered : CoveredBy scale carrier boxes small_3057725_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057725_right_root small_3057725_right_fuel small_3057725_right_count small_3057725_right_encoded small_3057725_right_checked

theorem cover_3057725 : CoveredBy scale carrier boxes root_3057725 := by
  apply coveredBy_split_literal root_3057725 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057730 small_3057725_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057730
  · exact small_3057725_right_covered
#print axioms cover_3057725

def root_3057724 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057724_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057724_right_fuel : Nat := 27
def small_3057724_right_count : Nat := 307
def small_3057724_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A91301120700F608A912FB12073CFA0000000200000006120700FA0000000A000000020000000012073CF60000000008A912FB12073CFA0000000208A912FF12073CFE00000004050000F8135D810305000106135D4507000000030CFD9C010000000900000009135D8107000000090000000300000001135D450300000001050001060000000A0000000A120700FE0000000600000004120700FA08A912FF12073CFE000000040000000A120700FE050000F8135D810305000106135D45070000000300000006135D81070CFD9C01000000060F350CF600000000045489FB000000060000000600000003000000010000000600000004000000021151E8FF08A913010000000A0000000A00000004115225070A0000FE115224FF0000000408A91301120700F608A912FB12073CFA0000000208A913070000000512073D0608A912FF00000005120700FE000000060000000400000003120700FA08A91307120701060000000308A912FF00000005120700FE050000F8135D81030000000500000001000000050000000412073D0608A912FF0000000A120700FE050000F8135D810304548A01000000060000000A00000001000000060000000400000003000000020000000012073CF60000000008A912FB12073CFA0000000208A9130712070106000000030000000512073D0608A912FF12073CFE00000004050000F8135D81030CFD9C0100000005000000090000000100000005120700FE050000F8135D81030CFD9C010F34D0F60CFD9BFB0000000600000006000000000F350CF6000000000CFD9BFB000000090000000900000001135D4503000000010CFD9C01000000060F350CF6000000000CFD9BFB00000006000000090000000400000003120700FA08A91307120701060000000308A912FF00000005120700FE050000F8135D81030CFD9C010F34D0F6045489FB00000005138670FA0000000A00000002000000000F350CF600000000045489FB00000009138670FA04548A071386710600000003000000051386AD06045489FF00000009138670FE0C9A86F60000000A0000000900000004000000030000000200000001135D4503000000010CFD9C01000000050F350CF600000000045489FB00000005000000090000000412073D0608A912FF12073CFE00000004050000F8135D81030CFD9C010000000A0000000A000000010000000A120700FE050000F8135D81030CFD9C010F34D0F6045489FB1386ACFA000000020CFD9C070F34D106000000030000000600000006138670FA0000000A00000002000000000F350CF600000000045489FB1386ACFA000000020CFD9C070F34D10600000003045489FF00000009000000090F350D06045489FF000000090000000600000003138670FA0CFD9C070F34D106000000030000000A0000000A0000000200000001135D4503000000010CFD9C010F34D0F60000000A000000000F350CF600000000045489FB1386ACFA000000020CFD9C0700000009000000060000000A0000000400000003000000021151E8FF0000000500000004000000031151E8FB0A0001061151E907000000030A0000FE115224FF00000004000000061151E8FF000000050000000411522507000000050000000300000002"
theorem small_3057724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057724_right_root small_3057724_right_fuel small_3057724_right_count small_3057724_right_encoded = true := by
  decide +kernel
theorem small_3057724_right_covered : CoveredBy scale carrier boxes small_3057724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057724_right_root small_3057724_right_fuel small_3057724_right_count small_3057724_right_encoded small_3057724_right_checked

theorem cover_3057724 : CoveredBy scale carrier boxes root_3057724 := by
  apply coveredBy_split_literal root_3057724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057725 small_3057724_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057725
  · exact small_3057724_right_covered
#print axioms cover_3057724

def root_3057719 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057719_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3057719_right_fuel : Nat := 1
def small_3057719_right_count : Nat := 1
def small_3057719_right_encoded : String := "00000000"
theorem small_3057719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3057719_right_root small_3057719_right_fuel small_3057719_right_count small_3057719_right_encoded = true := by
  decide +kernel
theorem small_3057719_right_covered : CoveredBy scale carrier boxes small_3057719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3057719_right_root small_3057719_right_fuel small_3057719_right_count small_3057719_right_encoded small_3057719_right_checked

theorem cover_3057719 : CoveredBy scale carrier boxes root_3057719 := by
  apply coveredBy_split_literal root_3057719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057724 small_3057719_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057724
  · exact small_3057719_right_covered
#print axioms cover_3057719

def root_3057718 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3057718 : CoveredBy scale carrier boxes root_3057718 := by
  apply coveredBy_split_literal root_3057718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057719 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1171.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057719
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1171.covered
#print axioms cover_3057718

def root_3065493 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3065493 : CoveredBy scale carrier boxes root_3065493 := by
  apply coveredBy_split_literal root_3065493 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1172.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1173.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1172.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1173.covered
#print axioms cover_3065493

def root_3065487 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3065487_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3065487_left_fuel : Nat := 1
def small_3065487_left_count : Nat := 1
def small_3065487_left_encoded : String := "00000000"
theorem small_3065487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3065487_left_root small_3065487_left_fuel small_3065487_left_count small_3065487_left_encoded = true := by
  decide +kernel
theorem small_3065487_left_covered : CoveredBy scale carrier boxes small_3065487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3065487_left_root small_3065487_left_fuel small_3065487_left_count small_3065487_left_encoded small_3065487_left_checked

theorem cover_3065487 : CoveredBy scale carrier boxes root_3065487 := by
  apply coveredBy_split_literal root_3065487 small_3065487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3065493 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3065487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3065493
#print axioms cover_3065487

def root_3064759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064759_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064759_left_fuel : Nat := 22
def small_3064759_left_count : Nat := 343
def small_3064759_left_encoded : String := "120700F608A91303120700F808A912FB12073CFA0000000208A91307120701060000000308A913090000000512073CFE0000000404548A01000000051386ACF60000000004548A03000000051386ACF8000000010CFD9BFB000000050F34D0FA000000090000000212073D0608A91309120700FE04548A01000000061386ACF60000000004548A03138670F80CFD9BFB0F350CFA00000002000000060000000600000001000000060000000412073CFE0000000404548A01138670F604548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000050F350D060CFD9C090000000600000006000000030F34D0FA0000000900000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9C07000000060000000600000006000000001386ACF60000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000050F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FA0F878CFB000000020000000600000008000000030F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C0900000006000000060000000300000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C0900000005000000080F350D0600000006000000030F34D0FA0CFD9C0700000006000000060000000200000003120700FA08A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE04548A01000000061386ACF60000000004548A03138670F8045489FB0000000600000006000000011386ACF800000001000000060000000412073CFE0000000404548A01000000061386ACF60000000004548A03000000090000000600000003000000020000000112073CF80000000108A912FB12073CFA0000000208A91307120701060000000308A91309120700FE04548A01000000051386ACF6000000000CFD9C03000000050F350CF8000000010CFD9BFB00000005000000060000000412073CFE0000000404548A01138670F60CFD9C030F34D0F80CFD9BFB00000005000000060000000100000006000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350CFA00000002000000050F34D0FA04548A071386710600000003000000050000000600000002000000010F350CF8000000010000000612073D0608A91309120700FE000000060000000412073CFE0000000404548A01138670F60CFD9C030F34D0F8000000060000000100000006000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9C07000000060000000600000006000000010000000600000003120700FA08A91307120701060000000308A91309120700FE04548A01138670F60CFD9C030F34D0F800000009000000010F350CF80000000100000006000000001386ACF6000000000CFD9C030F34D0F8045489FB1386ACFA0000000204548A071386710600000003000000050000000600000009000000010F350CF800000001045489FB1386ACFA0000000204548A07138671060000000304548A09000000050000000600000006138670FA04548A07138671060000000304548A09138670FE0C9A86F80F878D03000000050000000100000005000000040000000600000006000000020000000412073CFE0000000404548A01138670F60CFD9C030000000600000006000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF800000001045489FB000000060000000612073D0608A91309120700FE04548A01000000061386ACF6000000000CFD9C0300000006000000060000000400000006000000030000000200000000"
theorem small_3064759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3064759_left_root small_3064759_left_fuel small_3064759_left_count small_3064759_left_encoded = true := by
  decide +kernel
theorem small_3064759_left_covered : CoveredBy scale carrier boxes small_3064759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3064759_left_root small_3064759_left_fuel small_3064759_left_count small_3064759_left_encoded small_3064759_left_checked

theorem cover_3064759 : CoveredBy scale carrier boxes root_3064759 := by
  apply coveredBy_split_literal root_3064759 small_3064759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3065487 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3064759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3065487
#print axioms cover_3064759

def root_3064754 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064754_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064754_right_fuel : Nat := 1
def small_3064754_right_count : Nat := 1
def small_3064754_right_encoded : String := "00000004"
theorem small_3064754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3064754_right_root small_3064754_right_fuel small_3064754_right_count small_3064754_right_encoded = true := by
  decide +kernel
theorem small_3064754_right_covered : CoveredBy scale carrier boxes small_3064754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3064754_right_root small_3064754_right_fuel small_3064754_right_count small_3064754_right_encoded small_3064754_right_checked

theorem cover_3064754 : CoveredBy scale carrier boxes root_3064754 := by
  apply coveredBy_split_literal root_3064754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3064759 small_3064754_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3064759
  · exact small_3064754_right_covered
#print axioms cover_3064754

def root_3070625 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3070625 : CoveredBy scale carrier boxes root_3070625 := by
  apply coveredBy_split_literal root_3070625 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1174.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1175.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1174.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1175.covered
#print axioms cover_3070625

def root_3070619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3070619_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3070619_left_fuel : Nat := 1
def small_3070619_left_count : Nat := 1
def small_3070619_left_encoded : String := "00000000"
theorem small_3070619_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3070619_left_root small_3070619_left_fuel small_3070619_left_count small_3070619_left_encoded = true := by
  decide +kernel
theorem small_3070619_left_covered : CoveredBy scale carrier boxes small_3070619_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3070619_left_root small_3070619_left_fuel small_3070619_left_count small_3070619_left_encoded small_3070619_left_checked

theorem cover_3070619 : CoveredBy scale carrier boxes root_3070619 := by
  apply coveredBy_split_literal root_3070619 small_3070619_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3070625 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3070619_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3070625
#print axioms cover_3070619

def root_3069885 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3069885_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3069885_left_fuel : Nat := 21
def small_3069885_left_count : Nat := 341
def small_3069885_left_encoded : String := "120700F608A91303120700F808A912FB12073CFA0000000208A9130712070106000000030000000512073D06050000FE135D810904548A01138670F604548A03138670F800000009000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9C07000000050F350D0600000006000000030F34D0FA0000000900000002000000001386ACF60000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9C07000000050F350D060C9A86FA0F878CFB000000020C9A8706000000070000000500000005000000030F34D0FA0000000900000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000050F350D060C9A86FA0F878CFB00000002000000060F8750FB0C9A8706000000060000000500000002000000030F34D0FA0CFD9C070F34D10600000003000000090F350D0600000006000000030000000200000004135D45090000000404548A01138670F604548A03138670F80CFD9BFB0000000500000007000000011386ACF8000000010CFD9BFB0F350CFA00000002000000050F34D0FA0000000900000002000000001386ACF60000000004548A03138670F80CFD9BFB0F350CFA00000002000000050F34D0FA0000000700000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9C07000000050F350D060000000A000000030F34D0FA0CFD9C070F34D1060000000300000009000000070000000200000003120700FA00000009000000020000000112073CF80000000108A912FB12073CFA0000000208A913071207010600000003050000FE135D810904548A01138670F60CFD9C03000000050F350CF80000000100000005000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB000000050F34D0FA0000000900000002000000010F350CF8000000010CFD9BFB000000050000000600000004135D45090000000404548A01000000051386ACF6000000000CFD9C03000000050F350CF8000000010CFD9BFB000000050F34D0FA04548A0700000005000000060000000212073D06050000FE135D810904548A01138670F60CFD9C030F34D0F80CFD9BFB0F350CFA0000000200000006000000060000000100000006000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA00000006000000050F350D0600000006000000030F34D0FA0000000600000002000000010F350CF8000000010CFD9BFB0F350CFA00000002000000060000000600000004135D45090000000404548A01138670F60CFD9C030F34D0F80CFD9BFB0000000A0F34D0FA0000000A00000002000000010F350CF8000000010CFD9BFB0000000A00000006000000001386ACF6000000000CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000050000000A0F34D0FA0CFD9C070F34D10600000003028000FE0000000613D7B10900000004067ECE81000000060000000A0000000A00000002000000010F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86F800000006000000060000000A0F34D0FA000000060000000200000003120700FA08A913071207010600000003050000FE135D810904548A01000000061386ACF6000000000CFD9C03000000090000000600000004135D45090000000404548A01000000091386ACF6000000000CFD9C03000000090F350CF8000000010000000612073D06050000FE00000006135D45090000000404548A01000000061386ACF6000000000CFD9C030F34D0F8045489FB1386ACFA000000020CFD9C070000000600000006000000060000000100000006000000030000000200000000"
theorem small_3069885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3069885_left_root small_3069885_left_fuel small_3069885_left_count small_3069885_left_encoded = true := by
  decide +kernel
theorem small_3069885_left_covered : CoveredBy scale carrier boxes small_3069885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3069885_left_root small_3069885_left_fuel small_3069885_left_count small_3069885_left_encoded small_3069885_left_checked

theorem cover_3069885 : CoveredBy scale carrier boxes root_3069885 := by
  apply coveredBy_split_literal root_3069885 small_3069885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3070619 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3069885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3070619
#print axioms cover_3069885

def root_3069879 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3069879_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3069879_left_fuel : Nat := 1
def small_3069879_left_count : Nat := 1
def small_3069879_left_encoded : String := "00000004"
theorem small_3069879_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3069879_left_root small_3069879_left_fuel small_3069879_left_count small_3069879_left_encoded = true := by
  decide +kernel
theorem small_3069879_left_covered : CoveredBy scale carrier boxes small_3069879_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3069879_left_root small_3069879_left_fuel small_3069879_left_count small_3069879_left_encoded small_3069879_left_checked

theorem cover_3069879 : CoveredBy scale carrier boxes root_3069879 := by
  apply coveredBy_split_literal root_3069879 small_3069879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3069885 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3069879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3069885
#print axioms cover_3069879

def root_3064753 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3064753 : CoveredBy scale carrier boxes root_3064753 := by
  apply coveredBy_split_literal root_3064753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3064754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3069879 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3064754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3069879
#print axioms cover_3064753

def root_3064748 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064748_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3064748_right_fuel : Nat := 1
def small_3064748_right_count : Nat := 1
def small_3064748_right_encoded : String := "00000003"
theorem small_3064748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3064748_right_root small_3064748_right_fuel small_3064748_right_count small_3064748_right_encoded = true := by
  decide +kernel
theorem small_3064748_right_covered : CoveredBy scale carrier boxes small_3064748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3064748_right_root small_3064748_right_fuel small_3064748_right_count small_3064748_right_encoded small_3064748_right_checked

theorem cover_3064748 : CoveredBy scale carrier boxes root_3064748 := by
  apply coveredBy_split_literal root_3064748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3064753 small_3064748_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3064753
  · exact small_3064748_right_covered
#print axioms cover_3064748

def root_3063772 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063772_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063772_left_fuel : Nat := 25
def small_3063772_left_count : Nat := 463
def small_3063772_left_encoded : String := "1151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A912FB12073CFA0000000208A913090000000612073CFE000000040500010600000006135D810704548A01000000061386ACF60000000004548A03138670F800000006000000010000000600000003000000060000000112073CF800000001000000060000000012073CF60000000008A91303120700F808A912FB12073CFA0000000208A91309120700FE0500010600000006000000060000000412073CFE0000000405000106135D4507000000030CFD9C01000000060F350CF60000000000000006135D81070CFD9C010F34D0F604548A03138670F80CFD9BFB00000008000000060000000100000006000000000F350CF60000000004548A03000000080000000800000003120700FA08A91309120700FE0500010600000006135D81070CFD9C01000000060F350CF60000000000000007000000030000000412073CFE00000004050001060000000600000006000000020000000112073CF80000000108A912FB12073CFA0000000208A91309120700FE000000060000000400000006120700FA08A91309120700FE05000106135D45070000000300000006135D81070CFD9C01000000060F350CF6000000000CFD9C03000000060000000600000003000000040000000600000002000000041151E9090000000408A91301120700F608A91303120700F808A912FB12073CFA0000000205000106135D450700000003050000FE000000060000000A135D8107050000FE135D810904548A01138670F604548A03138670F8000000070000000100000006000000001386ACF60000000004548A03138670F80CFD9BFB0F350CFA000000020000000700000006000000010000000600000004135D45090000000404548A01000000071386ACF60000000004548A03000000070000000A00000003120700FA00000006000000020000000112073CF80000000108A912FB12073CFA000000020500010600000006135D8107050000FE000000060000000A00000003000000060000000012073CF60000000008A91303120700F808A912FB12073CFA0000000205000106135D450700000003050000FE135D81090CFD9C010F34D0F604548A03138670F8000000060000000100000006000000000F350CF60000000004548A03138670F80CFD9BFB0000000800000006000000010000000600000004135D4509000000040CFD9C010F34D0F604548A03138670F80CFD9BFB0000000A00000006000000010000000A000000000F350CF60000000004548A03138670F80CFD9BFB0F350CFA000000020C9A86F600000008000000080F34D0FA0C9A86F60F878D0100000006000000000000000600000002000000011386ACF8000000010CFD9BFB0000000900000006135D8107050000FE135D81090CFD9C010F34D0F604548A03138670F80CFD9BFB0F350CFA000000020000000800000007000000011386ACF8000000010CFD9BFB0F350CFA000000020000000600000006000000000F350CF60000000004548A03138670F800000008000000011386ACF8000000010CFD9BFB000000080000000600000004135D4509000000040CFD9C010F34D0F604548A03138670F80CFD9BFB0F350CFA000000020000000700000007000000011386ACF8000000010CFD9BFB0000000A00000007000000000F350CF60000000004548A03138670F80CFD9BFB0F350CFA00000002000000080F34D0FA0C9A86F60F878D0107800106128A410700000003028000FE000000060000000700000007000000000F8751010000000007800106000000080000000800000002000000011386ACF8000000010CFD9BFB0F350CFA00000002000000080F34D0FA0C9A86F60F878D01078001060000000600000007000000000F875101000000000780010600000006000000070000000200000003120700FA05000106135D45070000000300000006135D8107050000FE135D81090CFD9C01000000060F350CF6000000000000000600000004135D4509000000040CFD9C010F34D0F604548A03138670F8000000070000000100000006000000000F350CF60000000004548A03138670F8045489FB1386ACFA000000020C9A86F60F878D01078001060000000600000007000000000F8751010000000007800106000000060000000700000006000000010000000600000003000000020000000112073CF80000000108A912FB12073CFA0000000205000106135D450700000003050000FE00000006135D4509000000040CFD9C01000000060F350CF60000000000000006135D8107050000FE135D81090CFD9C01000000060F350CF6000000000CFD9C030F34D0F800000006000000010000000600000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFB0000000A000000060000000100000006000000000F350CF6000000000CFD9C030F34D0F80CFD9BFB0F350CFA000000020C9A86F60F878D0100000006000000000000000600000006000000010F350CF8000000010000000600000003120700FA0000000600000002"
theorem small_3063772_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3063772_left_root small_3063772_left_fuel small_3063772_left_count small_3063772_left_encoded = true := by
  decide +kernel
theorem small_3063772_left_covered : CoveredBy scale carrier boxes small_3063772_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3063772_left_root small_3063772_left_fuel small_3063772_left_count small_3063772_left_encoded small_3063772_left_checked

theorem cover_3063772 : CoveredBy scale carrier boxes root_3063772 := by
  apply coveredBy_split_literal root_3063772 small_3063772_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3064748 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3063772_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3064748
#print axioms cover_3063772

def root_3063766 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063766_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063766_left_fuel : Nat := 1
def small_3063766_left_count : Nat := 1
def small_3063766_left_encoded : String := "00000002"
theorem small_3063766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3063766_left_root small_3063766_left_fuel small_3063766_left_count small_3063766_left_encoded = true := by
  decide +kernel
theorem small_3063766_left_covered : CoveredBy scale carrier boxes small_3063766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3063766_left_root small_3063766_left_fuel small_3063766_left_count small_3063766_left_encoded small_3063766_left_checked

theorem cover_3063766 : CoveredBy scale carrier boxes root_3063766 := by
  apply coveredBy_split_literal root_3063766 small_3063766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063772 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3063766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063772
#print axioms cover_3063766

def root_3063765 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063765_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063765_right_fuel : Nat := 23
def small_3063765_right_count : Nat := 495
def small_3063765_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A913090000000612073CFE00000004050000FA135D80FB00000002000000060000000600000001000000060000000012073CF60000000008A91303120700F808A9130900000008000000080000000112073CF80000000108A913090000000612073CFE00000004050000FA0000000600000006000000041151E9090000000408A91301120700F608A91303120700F8050000FA135D80FB00000002050001060000000A135D8107050000FE135D810904548A010000000A1386ACF60000000004548A030000000500000006000000040000000A00000003135D44FB050001060000000A0000000500000002000000010000000A0000000012073CF60000000008A91303120700F8050000FA135D80FB0000000205000106135D450700000003050000FE00000008135D4509000000040CFD9C010000000A00000008135D8107050000FE00000008135D4509000000040CFD9C010F34D0F604548A030000000500000008000000000000000800000003135D44FB05000106135D4507000000030000000800000008000000020000000112073CF800000001050000FA135D80FB0000000205000106135D45070000000300000009135D8107050000FE135D81090CFD9C01000000060000000900000004135D4509000000040CFD9C010F34D0F60000000A000000000000000900000003135D44FB0500010600000009135D8107050000FE135D81090000000900000004135D4509000000040CFD9C0100000009000000090000000300000002115225070A0000FE1152250908A91301120700F608A91303120700F808A913070000000512073D0608A913090000000512073CFE00000004050000FA135D80FB0000000204548A01000000051386ACF60000000004548A03000000051386ACF8000000010CFD9C07000000050000000800000005000000030000000112073CF80000000108A9130712070106000000030000000512073D0608A91309120700FE000000060000000412073CFE00000004050000FA135D80FB0000000204548A01000000061386ACF6000000000CFD9C030F34D0F80CFD9C0700000006000000060000000100000006135D44FB04548A01000000051386ACF6000000000CFD9C03000000050000000600000002000000030000000012073CF60000000008A91303120700F808A9130712070106000000030000000512073D0608A91309120700FE000000080000000400000008000000030000000112073CF80000000108A91307120701060000000308A913090000000512073CFE00000004050000FA135D80FB000000020CFD9C0100000005000000080000000512073D0608A91309120700FE000000080000000412073CFE00000004050000FA135D80FB000000020CFD9C010F34D0F60CFD9C030F34D0F800000008000000010F350CF80000000100000006000000000F350CF60000000000000008135D44FB0CFD9C010F34D0F60CFD9C030F34D0F800000008000000010000000600000000000000080000000200000003000000041151E9090000000408A91301120700F608A913030000000512073CF80000000108A913070000000512073D06050000FA135D80FB00000002050000FE135D810904548A01138670F60CFD9C030000000500000006000000001386ACF6000000000CFD9C030F34D0F80CFD9C07000000050F350D060000000600000003000000010F350CF8000000010000000600000004135D45090000000404548A01000000051386ACF6000000000CFD9C03000000050F350CF8000000010CFD9C07000000050000000A135D44FB050000FE135D810904548A01000000051386ACF60000000000000005000000040000000500000002000000030000000012073CF60000000008A91303120700F808A913070000000512073D06050000FA135D80FB00000002050000FE135D81090CFD9C010F34D0F604548A030000000500000008000000000000000800000004135D4509000000040CFD9C01000000050F350CF60000000000000008135D44FB050000FE000000080000000500000002000000030000000112073CF80000000108A913071207010600000003050000FA135D80FB00000002050000FE135D8109000000050000000400000005135D44FB000000050000000212073D06050000FA135D80FB00000002050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070000000600000006000000000F350CF6000000000000000800000004135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9C07000000050F350D060000000800000003000000010F350CF8000000010CFD9C070F34D10600000003000000050F350D060C9A86F80000000A0000000600000003000000000F350CF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D106000000030000000800000008135D44FB050000FE135D81090CFD9C010F34D0F60CFD9C030000000500000008000000000000000800000004135D4509000000040CFD9C010F34D0F60CFD9C03000000050F350CF8000000010CFD9C07000000050F350D060C9A86F8000000060000000600000003000000000F350CF6000000000CFD9C030F34D0F800000008000000010000000800000002000000030000000300000002"
theorem small_3063765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3063765_right_root small_3063765_right_fuel small_3063765_right_count small_3063765_right_encoded = true := by
  decide +kernel
theorem small_3063765_right_covered : CoveredBy scale carrier boxes small_3063765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3063765_right_root small_3063765_right_fuel small_3063765_right_count small_3063765_right_encoded small_3063765_right_checked

theorem cover_3063765 : CoveredBy scale carrier boxes root_3063765 := by
  apply coveredBy_split_literal root_3063765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063766 small_3063765_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063766
  · exact small_3063765_right_covered
#print axioms cover_3063765

def root_3063760 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063760_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063760_right_fuel : Nat := 1
def small_3063760_right_count : Nat := 1
def small_3063760_right_encoded : String := "00000001"
theorem small_3063760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3063760_right_root small_3063760_right_fuel small_3063760_right_count small_3063760_right_encoded = true := by
  decide +kernel
theorem small_3063760_right_covered : CoveredBy scale carrier boxes small_3063760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3063760_right_root small_3063760_right_fuel small_3063760_right_count small_3063760_right_encoded small_3063760_right_checked

theorem cover_3063760 : CoveredBy scale carrier boxes root_3063760 := by
  apply coveredBy_split_literal root_3063760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063765 small_3063760_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063765
  · exact small_3063760_right_covered
#print axioms cover_3063760

def root_3063759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3063759 : CoveredBy scale carrier boxes root_3063759 := by
  apply coveredBy_split_literal root_3063759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063760 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1176.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063760
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1176.covered
#print axioms cover_3063759

def root_3063754 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063754_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3063754_right_fuel : Nat := 1
def small_3063754_right_count : Nat := 1
def small_3063754_right_encoded : String := "00000000"
theorem small_3063754_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3063754_right_root small_3063754_right_fuel small_3063754_right_count small_3063754_right_encoded = true := by
  decide +kernel
theorem small_3063754_right_covered : CoveredBy scale carrier boxes small_3063754_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3063754_right_root small_3063754_right_fuel small_3063754_right_count small_3063754_right_encoded small_3063754_right_checked

theorem cover_3063754 : CoveredBy scale carrier boxes root_3063754 := by
  apply coveredBy_split_literal root_3063754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063759 small_3063754_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063759
  · exact small_3063754_right_covered
#print axioms cover_3063754

def root_3077253 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3077253 : CoveredBy scale carrier boxes root_3077253 := by
  apply coveredBy_split_literal root_3077253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1177.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1178.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1177.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1178.covered
#print axioms cover_3077253

def root_3077247 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3077247_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3077247_left_fuel : Nat := 1
def small_3077247_left_count : Nat := 1
def small_3077247_left_encoded : String := "00000000"
theorem small_3077247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3077247_left_root small_3077247_left_fuel small_3077247_left_count small_3077247_left_encoded = true := by
  decide +kernel
theorem small_3077247_left_covered : CoveredBy scale carrier boxes small_3077247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3077247_left_root small_3077247_left_fuel small_3077247_left_count small_3077247_left_encoded small_3077247_left_checked

theorem cover_3077247 : CoveredBy scale carrier boxes root_3077247 := by
  apply coveredBy_split_literal root_3077247 small_3077247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3077253 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3077247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3077253
#print axioms cover_3077247

def root_3063753 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3063753 : CoveredBy scale carrier boxes root_3063753 := by
  apply coveredBy_split_literal root_3063753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3077247 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3077247
#print axioms cover_3063753

def root_3057717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3057717 : CoveredBy scale carrier boxes root_3057717 := by
  apply coveredBy_split_literal root_3057717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3057718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3063753 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3057718
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3063753
#print axioms cover_3057717

def root_3089123 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3089123 : CoveredBy scale carrier boxes root_3089123 := by
  apply coveredBy_split_literal root_3089123 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1180.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1181.root coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1180.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1181.covered
#print axioms cover_3089123

def root_3089118 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3089118_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3089118_right_fuel : Nat := 1
def small_3089118_right_count : Nat := 1
def small_3089118_right_encoded : String := "00000004"
theorem small_3089118_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3089118_right_root small_3089118_right_fuel small_3089118_right_count small_3089118_right_encoded = true := by
  decide +kernel
theorem small_3089118_right_covered : CoveredBy scale carrier boxes small_3089118_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3089118_right_root small_3089118_right_fuel small_3089118_right_count small_3089118_right_encoded small_3089118_right_checked

theorem cover_3089118 : CoveredBy scale carrier boxes root_3089118 := by
  apply coveredBy_split_literal root_3089118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.root_3089123 small_3089118_right_root coord4 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072.cover_3089123
  · exact small_3089118_right_covered
#print axioms cover_3089118

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0072
