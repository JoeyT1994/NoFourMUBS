import TaoBundleAssembly0279
import TaoBundleChunkBatch0363
import TaoBundleChunkBatch0364
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280
def root_3867899 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867899_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867899_left_fuel : Nat := 23
def small_3867899_left_count : Nat := 313
def small_3867899_left_encoded : String := "0F878D030C9A87040F87510500000002078000F6128A7D0107800108128A40FF022A458713E1C506000000030DE7C9F80E6015030B4D44040000000610804D0508C000F611FC2501064001080000000500000006000000000000000600000002000000010E5FD903000000010B4D440410801105000000020000000610804D0508C000F611FC25010640010812FF70FF01152347000000060000000700000004000000070000000011FBE90100000000000000060000000213E201060DE7C9F80E6015030B4D440410801105000000020000000710804D0508C000F6000000080000000800000002000000010E5FD903000000010B4D440410801105000000020000000710804D0508C000F611FC25010640010812FF70FF0000000800000004000000070000000011FBE9010000000000000007000000020000000300000004128A7CFF00000004022A458713E1C506000000030DE7C9F80E60150300000007000000010000000713E201060DE7C9F80E6015030000000700000001000000070000000300000000128A41010000000007800108128A40FF022A45870000000613E201060DE7C9F80E6015030000000700000001000000070000000300000004128A7CFF00000004000000070F878D05078000F6128A7D0107800108128A40FF022A458713E1C506000000030DE7C9F80E6015030DE7CA040E5FD905000000020000000A00000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC25010640010812FF70FF0115234713F85906000000030D4128780000000A0EFA1103000000010D4128840000000600000008000000080000000412FFACFF000000040115234713F85906000000030D4128780000000A0000000713F895060D4128780EFA4D03000000070000000100000007000000030000000011FBE901000000000640010812FF70FF01152347000000060000000800000004000000070E60150508C000F611FC25010000000A000000000000000A0000000213E201060DE7C9F8000000080E5FD903000000010DE7CA040E5FD9050000000208C000F60000000811FBE9010000000000000008000000080000000300000004128A7CFF00000004022A458713E1C506000000030DE7C9F80E6015030DE7CA040E5FD905000000020000000A0000000A000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C00108000000070000000700000000000000070E6015050000000A0000000213E201060DE7C9F80E6015030DE7CA040E5FD9050000000208C000F611FC250108C001080000000700000007000000000000000700000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C00108000000070000000700000000000000070E60150508C000F611FC250108C0010811FBE8FF000000080000000411FC24FF00000004033F67C700000007000000070000000011FBE9010000000008C001080000000800000005000000020000000300000000128A41010000000007800108128A40FF022A45870000000A13E201060DE7C9F8000000080E5FD903000000010DE7CA040E5FD90500000002064000F60000000700000007000000080000000300000004128A7CFF00000004022A45870000000A13E201060DE7C9F80E6015030000000A000000010E5FD903000000010DE7CA040000000700000005000000030000000200000001"
theorem small_3867899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867899_left_root small_3867899_left_fuel small_3867899_left_count small_3867899_left_encoded = true := by
  decide +kernel
theorem small_3867899_left_covered : CoveredBy scale carrier boxes small_3867899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867899_left_root small_3867899_left_fuel small_3867899_left_count small_3867899_left_encoded small_3867899_left_checked

theorem cover_3867899 : CoveredBy scale carrier boxes root_3867899 := by
  apply coveredBy_split_literal root_3867899 small_3867899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1452.root coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_3867899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1452.covered
#print axioms cover_3867899

def root_3867893 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867893_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867893_left_fuel : Nat := 1
def small_3867893_left_count : Nat := 1
def small_3867893_left_encoded : String := "00000003"
theorem small_3867893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867893_left_root small_3867893_left_fuel small_3867893_left_count small_3867893_left_encoded = true := by
  decide +kernel
theorem small_3867893_left_covered : CoveredBy scale carrier boxes small_3867893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867893_left_root small_3867893_left_fuel small_3867893_left_count small_3867893_left_encoded small_3867893_left_checked

theorem cover_3867893 : CoveredBy scale carrier boxes root_3867893 := by
  apply coveredBy_split_literal root_3867893 small_3867893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867899 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3867893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867899
#print axioms cover_3867893

def root_3867892 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867892_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867892_right_fuel : Nat := 19
def small_3867892_right_count : Nat := 247
def small_3867892_right_encoded : String := "1386AD060C9A86F80F878D030C9A87040F87510500000002078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030DE7C9F80E60150300000008000000010E5FD903000000010B4D4404108011050000000200000007000000080000000800000004128A7CFF00000004067ECE8712EA5906000000030DE7C9F80E60150300000007000000010000000712EA95060DE7C9F80E6015030000000700000001000000070000000300000000128A41010000000007800108128A40FF067ECE8712EA5906000000030DE7C9F80E6015030000000700000001000000070000000800000004128A7CFF00000004067ECE8700000007000000070F878D05078000F6128A7D010780010800000008128A7CFF00000004067ECE8712EA5906000000030DE7C9F80E60150300000008000000010E5FD903000000010DE7CA040E5FD9050000000208C000F611FC250108C0010800000007000000070000000000000007000000080000000800000000128A4101000000000780010800000008128A7CFF00000004067ECE8712EA5906000000030DE7C9F8000000080E5FD90300000001000000050000000800000002000000010F875103000000010C9A87040F87510500000002078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030B4D43F810804D030B4D440410801105000000020000000710804D0508C000F611FC25010640010800000008000000070000000011FBE9010000000000000007000000020000000110801103000000010B4D440410801105000000020000000710804D0508C000F60000000A000000050000000212EA95060B4D43F810804D030B4D4404000000070000000800000001000000090000000300000004128A7CFF00000004067ECE8712EA5906000000030B4D43F810804D030000000700000001000000050000000500000000128A41010000000007800108128A40FF067ECE8712EA5906000000030B4D43F810804D030000000700000001000000050000000500000004000000050F878D05078000F6128A7D0107800108128A40FF067ECE8712EA5906000000030B4D43F810804D03000000080000000110801103000000010DE7CA040E5FD9050000000208C000F611FC25010640010800000008000000050000000000000005000000080000000800000004128A7CFF00000004067ECE8712EA5906000000030B4D43F810804D030DE7CA040E5FD90500000002000000050000000500000001000000050000000500000000128A41010000000007800108128A40FF067ECE8712EA5906000000030B4D43F810804D030000000800000001000000050000000500000004000000050000000200000003"
theorem small_3867892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867892_right_root small_3867892_right_fuel small_3867892_right_count small_3867892_right_encoded = true := by
  decide +kernel
theorem small_3867892_right_covered : CoveredBy scale carrier boxes small_3867892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867892_right_root small_3867892_right_fuel small_3867892_right_count small_3867892_right_encoded small_3867892_right_checked

theorem cover_3867892 : CoveredBy scale carrier boxes root_3867892 := by
  apply coveredBy_split_literal root_3867892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867893 small_3867892_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867893
  · exact small_3867892_right_covered
#print axioms cover_3867892

def root_3867887 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867887_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867887_right_fuel : Nat := 1
def small_3867887_right_count : Nat := 1
def small_3867887_right_encoded : String := "00000002"
theorem small_3867887_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867887_right_root small_3867887_right_fuel small_3867887_right_count small_3867887_right_encoded = true := by
  decide +kernel
theorem small_3867887_right_covered : CoveredBy scale carrier boxes small_3867887_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867887_right_root small_3867887_right_fuel small_3867887_right_count small_3867887_right_encoded small_3867887_right_checked

theorem cover_3867887 : CoveredBy scale carrier boxes root_3867887 := by
  apply coveredBy_split_literal root_3867887 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867892 small_3867887_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867892
  · exact small_3867887_right_covered
#print axioms cover_3867887

def root_3867337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867337_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867337_left_fuel : Nat := 30
def small_3867337_left_count : Nat := 257
def small_3867337_left_encoded : String := "0F34D1040000000204548A0713867106000000030C9A86F80F878D03078000F6128A7D0107800108128A40FF0000000800000004128A7CFF000000040AD3578510D10104000000020000000A10D13D04022A45870000000A13E201060DE7C9F8000000080E5FD90300000001000000080000000300000002000000000000000A000000010F87510300000001078000F6128A7D0107800108128A40FF0AD3578510D1010400000002022A45870000000A0000000810D13D04022A458713E1C506000000030B4D43F810804D0308C000F611FC25010000000A000000000000000A00000001108011030000000108C000F611FC25010640010812FF70FF0BE879C51011710400000002000000081011AD040115234713F85906000000030AA6A2780000000A10ED710300000001096000F611AABD0105A0010800000008133170FF000000040000000A000000000000000A00000008000000020000000412FFACFF000000040BE879C510117104000000020000000A1011AD040115234713F85906000000030AA6A2780000000A10ED7103000000010000000513F895060AA6A27810EDAD03096000F60000000800000005000000010000000500000003000000020000000011FBE901000000000640010812FF70FF0BE879C50000000A0000000A0000000412FFACFF000000040BE879C50000000A0000000513E201060B4D43F800000008108011030000000108C000F60000000811FBE9010000000000000008000000030000000200000004128A7CFF000000040AD3578510D1010400000002022A45870000000A13E201060B4D43F810804D030000000800000001000000050000000310D13D04022A458713E1C506000000030B4D43F810804D0308C000F611FC25010000000A000000000000000A00000001108011030000000108C000F611FC250108C0010811FBE8FF0BE879C5101171040000000200000005000000050000000400000005000000000000000513E201060B4D43F810804D0308C000F611FC250108C0010811FBE8FF00000008000000040000000500000000000000050000000100000005000000030000000200000000128A41010000000007800108128A40FF0AD3578510D10104000000020000000A10D13D04022A45870000000A13E201060B4D43F80000000800000005000000030000000200000004128A7CFF000000040AD3578510D101040000000200000005000000051386AD060C9A86F80F878D0300000008000000010F87510300000001078000F6128A7D010780010800000008128A7CFF000000040AD3578510D10104000000020000000810D13D04067ECE8712EA5906000000030B4D43F810804D03000000080000000100000005000000050000000200000000128A41010000000007800108000000080000000500000003"
theorem small_3867337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867337_left_root small_3867337_left_fuel small_3867337_left_count small_3867337_left_encoded = true := by
  decide +kernel
theorem small_3867337_left_covered : CoveredBy scale carrier boxes small_3867337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867337_left_root small_3867337_left_fuel small_3867337_left_count small_3867337_left_encoded small_3867337_left_checked

theorem cover_3867337 : CoveredBy scale carrier boxes root_3867337 := by
  apply coveredBy_split_literal root_3867337 small_3867337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867887 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3867337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867887
#print axioms cover_3867337

def root_3867331 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867331_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867331_left_fuel : Nat := 1
def small_3867331_left_count : Nat := 1
def small_3867331_left_encoded : String := "00000001"
theorem small_3867331_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867331_left_root small_3867331_left_fuel small_3867331_left_count small_3867331_left_encoded = true := by
  decide +kernel
theorem small_3867331_left_covered : CoveredBy scale carrier boxes small_3867331_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867331_left_root small_3867331_left_fuel small_3867331_left_count small_3867331_left_encoded small_3867331_left_checked

theorem cover_3867331 : CoveredBy scale carrier boxes root_3867331 := by
  apply coveredBy_split_literal root_3867331 small_3867331_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867337 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3867331_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867337
#print axioms cover_3867331

def root_3867139 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867139_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867139_left_fuel : Nat := 17
def small_3867139_left_count : Nat := 91
def small_3867139_left_encoded : String := "0F34D0F80CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A87040F87510500000002078000F6128A7D0107800108128A40FF0AD357830000000810D13CF800000001022A458713E1C506000000030B4D4404000000050000000A0000000800000004128A7CFF000000040AD3578310D100F80000000A0000000110D13CF800000001022A45870000000713E20106000000070000000300000000128A41010000000007800108128A40FF0AD357830000000710D13CF800000001022A4587000000060000000700000004128A7CFF00000004000000070F878D05078000F6128A7D010780010800000008128A7CFF000000040AD357830000000810D13CF8000000010000000A000000000000000A000000021386AD060C9A87040F87510500000002078000F600000008128A4101000000000780010800000008128A7CFF000000040AD35783000000070000000800000008000000030000000200000001"
theorem small_3867139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867139_left_root small_3867139_left_fuel small_3867139_left_count small_3867139_left_encoded = true := by
  decide +kernel
theorem small_3867139_left_covered : CoveredBy scale carrier boxes small_3867139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867139_left_root small_3867139_left_fuel small_3867139_left_count small_3867139_left_encoded small_3867139_left_checked

theorem cover_3867139 : CoveredBy scale carrier boxes root_3867139 := by
  apply coveredBy_split_literal root_3867139 small_3867139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867331 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3867139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867331
#print axioms cover_3867139

def root_3867133 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867133_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3867133_left_fuel : Nat := 1
def small_3867133_left_count : Nat := 1
def small_3867133_left_encoded : String := "00000004"
theorem small_3867133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3867133_left_root small_3867133_left_fuel small_3867133_left_count small_3867133_left_encoded = true := by
  decide +kernel
theorem small_3867133_left_covered : CoveredBy scale carrier boxes small_3867133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3867133_left_root small_3867133_left_fuel small_3867133_left_count small_3867133_left_encoded small_3867133_left_checked

theorem cover_3867133 : CoveredBy scale carrier boxes root_3867133 := by
  apply coveredBy_split_literal root_3867133 small_3867133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867139 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3867133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867139
#print axioms cover_3867133

def root_3864689 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3864689 : CoveredBy scale carrier boxes root_3864689 := by
  apply coveredBy_split_literal root_3864689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1451.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3867133 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1451.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3867133
#print axioms cover_3864689

def root_3864684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864684_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864684_right_fuel : Nat := 1
def small_3864684_right_count : Nat := 1
def small_3864684_right_encoded : String := "00000000"
theorem small_3864684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864684_right_root small_3864684_right_fuel small_3864684_right_count small_3864684_right_encoded = true := by
  decide +kernel
theorem small_3864684_right_covered : CoveredBy scale carrier boxes small_3864684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864684_right_root small_3864684_right_fuel small_3864684_right_count small_3864684_right_encoded small_3864684_right_checked

theorem cover_3864684 : CoveredBy scale carrier boxes root_3864684 := by
  apply coveredBy_split_literal root_3864684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864689 small_3864684_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864689
  · exact small_3864684_right_covered
#print axioms cover_3864684

def root_3864683 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864683_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864683_right_fuel : Nat := 21
def small_3864683_right_count : Nat := 245
def small_3864683_right_encoded : String := "135D45010000000005000108135D44FF0CFD9C030F34D0F80CFD9C050F34D10400000002000000080F350D0404548A0713867106000000030C9A87040F87510500000002028000F60000000800000006000000080000000800000002000000010F350CF8000000010CFD9C050F34D1040000000204548A070000000A000000080F350D0404548A0713867106000000030C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0102800108000000060000000600000000000000060F878D050000000A00000002000000010F875103000000010C9A87040F87510500000002028000F613D7ED01028001080000000913D7ECFF00000004022A4587000000060000000700000000000000060F878D05028000F613D7ED01028001080000000913D7ECFF00000004022A458713E1C506000000030B4D43F80000000A00000009000000090000000000000009000000021386AD060C9A86F80F878D030C9A870400000009000000080000000100000009000000030000000200000004135D80FF000000040CFD9C030F34D0F80CFD9C050F34D104000000020000000A0F350D0404548A070000000A1386AD060C9A87040F87510500000002028000F613D7ED010780010800000008128A7CFF0000000400000007000000000000000A000000080000000300000002000000010F350CF8000000010CFD9C050F34D1040000000204548A0713867106000000030C9A86F80000000A0F87510300000001028000F613D7ED01078001080000000A0000000500000000000000051386AD060C9A86F80F878D0300000008000000010F8751030000000100000005000000030F350D0404548A0713867106000000030C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0107800108000000070000000700000000000000060F878D050000000A00000002000000010F875103000000010C9A87040F87510500000002028000F613D7ED0107800108000000070000000500000000000000050F878D05028000F613D7ED0107800108128A40FF022A458713E1C50600000003000000050000000500000004000000050000000000000005000000021386AD060C9A86F80F878D030C9A87040F87510500000002028000F613D7ED0107800108128A40FF067ECE87000000070000000700000004000000070000000013D7B101000000000780010800000007000000050F878D05028000F613D7ED010780010800000008128A7CFF00000004000000050000000013D7B1010000000007800108000000080000000500000002000000010F875103000000010C9A87040F8751050000000200000005000000050000000300000002"
theorem small_3864683_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864683_right_root small_3864683_right_fuel small_3864683_right_count small_3864683_right_encoded = true := by
  decide +kernel
theorem small_3864683_right_covered : CoveredBy scale carrier boxes small_3864683_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864683_right_root small_3864683_right_fuel small_3864683_right_count small_3864683_right_encoded small_3864683_right_checked

theorem cover_3864683 : CoveredBy scale carrier boxes root_3864683 := by
  apply coveredBy_split_literal root_3864683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864684 small_3864683_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864684
  · exact small_3864683_right_covered
#print axioms cover_3864683

def root_3864677 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864677_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864677_left_fuel : Nat := 1
def small_3864677_left_count : Nat := 1
def small_3864677_left_encoded : String := "00000003"
theorem small_3864677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864677_left_root small_3864677_left_fuel small_3864677_left_count small_3864677_left_encoded = true := by
  decide +kernel
theorem small_3864677_left_covered : CoveredBy scale carrier boxes small_3864677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864677_left_root small_3864677_left_fuel small_3864677_left_count small_3864677_left_encoded small_3864677_left_checked

theorem cover_3864677 : CoveredBy scale carrier boxes root_3864677 := by
  apply coveredBy_split_literal root_3864677 small_3864677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864683 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3864677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864683
#print axioms cover_3864677

def root_3864676 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864676_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864676_right_fuel : Nat := 21
def small_3864676_right_count : Nat := 87
def small_3864676_right_encoded : String := "12073D06050000F6135D810105000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080F350D040CFD9C070F34D106000000030C9A86F80F878D030C9A87040F87510500000002078000F600000008128A4101000000000000000800000008000000010F875103000000010C9A87040F87510500000002078000F6128A7D010780010800000009128A7CFF000000040AD35787000000070000000500000000000000090F878D05078000F6000000080000000900000002000000080000000200000000135D45010000000005000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080F350D040CFD9C070F34D106000000030C9A86F80F878D030C9A870400000009000000080000000100000009000000080000000200000003"
theorem small_3864676_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864676_right_root small_3864676_right_fuel small_3864676_right_count small_3864676_right_encoded = true := by
  decide +kernel
theorem small_3864676_right_covered : CoveredBy scale carrier boxes small_3864676_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864676_right_root small_3864676_right_fuel small_3864676_right_count small_3864676_right_encoded small_3864676_right_checked

theorem cover_3864676 : CoveredBy scale carrier boxes root_3864676 := by
  apply coveredBy_split_literal root_3864676 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864677 small_3864676_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864677
  · exact small_3864676_right_covered
#print axioms cover_3864676

def root_3864671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864671_right_fuel : Nat := 1
def small_3864671_right_count : Nat := 1
def small_3864671_right_encoded : String := "00000002"
theorem small_3864671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864671_right_root small_3864671_right_fuel small_3864671_right_count small_3864671_right_encoded = true := by
  decide +kernel
theorem small_3864671_right_covered : CoveredBy scale carrier boxes small_3864671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864671_right_root small_3864671_right_fuel small_3864671_right_count small_3864671_right_encoded small_3864671_right_checked

theorem cover_3864671 : CoveredBy scale carrier boxes root_3864671 := by
  apply coveredBy_split_literal root_3864671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864676 small_3864671_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864676
  · exact small_3864671_right_covered
#print axioms cover_3864671

def root_3864489 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864489_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864489_left_fuel : Nat := 23
def small_3864489_left_count : Nat := 85
def small_3864489_left_encoded : String := "120701040000000208A913071207010600000003050000F6135D810105000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF80000000104548A05138671040000000204548A0713867106000000030C9A86F8000000080F87510300000001078000F6000000080000000A000000081386AD0404548A0713867106000000030C9A86F80F878D030000000A000000010F87510300000001078000F6128A7D0107800108128A40FF0000000800000004128A7CFF00000004067ECE8512EA5904000000020000000A12EA9504022A45870000000A0000000800000002000000000000000A000000080000000200000000135D45010000000005000108135D44FF0000000800000004135D80FF000000040CFD9C03000000080F350CF80000000104548A0513867104000000020000000A1386AD0404548A070000000A000000080000000200000008"
theorem small_3864489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864489_left_root small_3864489_left_fuel small_3864489_left_count small_3864489_left_encoded = true := by
  decide +kernel
theorem small_3864489_left_covered : CoveredBy scale carrier boxes small_3864489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864489_left_root small_3864489_left_fuel small_3864489_left_count small_3864489_left_encoded small_3864489_left_checked

theorem cover_3864489 : CoveredBy scale carrier boxes root_3864489 := by
  apply coveredBy_split_literal root_3864489 small_3864489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864671 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3864489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864671
#print axioms cover_3864489

def root_3864483 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864483_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864483_left_fuel : Nat := 1
def small_3864483_left_count : Nat := 1
def small_3864483_left_encoded : String := "00000001"
theorem small_3864483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864483_left_root small_3864483_left_fuel small_3864483_left_count small_3864483_left_encoded = true := by
  decide +kernel
theorem small_3864483_left_covered : CoveredBy scale carrier boxes small_3864483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864483_left_root small_3864483_left_fuel small_3864483_left_count small_3864483_left_encoded small_3864483_left_checked

theorem cover_3864483 : CoveredBy scale carrier boxes root_3864483 := by
  apply coveredBy_split_literal root_3864483 small_3864483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864489 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3864483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864489
#print axioms cover_3864483

def root_3864443 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864443_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864443_left_fuel : Nat := 9
def small_3864443_left_count : Nat := 19
def small_3864443_left_encoded : String := "120700F808A9130512070104000000020000000812073D0408A913071207010600000003050000F600000008135D45010000000005000108000000080000000A000000080000000200000001"
theorem small_3864443_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864443_left_root small_3864443_left_fuel small_3864443_left_count small_3864443_left_encoded = true := by
  decide +kernel
theorem small_3864443_left_covered : CoveredBy scale carrier boxes small_3864443_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864443_left_root small_3864443_left_fuel small_3864443_left_count small_3864443_left_encoded small_3864443_left_checked

theorem cover_3864443 : CoveredBy scale carrier boxes root_3864443 := by
  apply coveredBy_split_literal root_3864443 small_3864443_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864483 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3864443_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864483
#print axioms cover_3864443

def root_3864438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864438_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864438_right_fuel : Nat := 1
def small_3864438_right_count : Nat := 1
def small_3864438_right_encoded : String := "00000004"
theorem small_3864438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864438_right_root small_3864438_right_fuel small_3864438_right_count small_3864438_right_encoded = true := by
  decide +kernel
theorem small_3864438_right_covered : CoveredBy scale carrier boxes small_3864438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864438_right_root small_3864438_right_fuel small_3864438_right_count small_3864438_right_encoded small_3864438_right_checked

theorem cover_3864438 : CoveredBy scale carrier boxes root_3864438 := by
  apply coveredBy_split_literal root_3864438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864443 small_3864438_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864443
  · exact small_3864438_right_covered
#print axioms cover_3864438

def root_3864437 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3864437 : CoveredBy scale carrier boxes root_3864437 := by
  apply coveredBy_split_literal root_3864437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864438 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1453.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864438
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1453.covered
#print axioms cover_3864437

def root_3864432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864432_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864432_right_fuel : Nat := 1
def small_3864432_right_count : Nat := 1
def small_3864432_right_encoded : String := "00000003"
theorem small_3864432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864432_right_root small_3864432_right_fuel small_3864432_right_count small_3864432_right_encoded = true := by
  decide +kernel
theorem small_3864432_right_covered : CoveredBy scale carrier boxes small_3864432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864432_right_root small_3864432_right_fuel small_3864432_right_count small_3864432_right_encoded small_3864432_right_checked

theorem cover_3864432 : CoveredBy scale carrier boxes root_3864432 := by
  apply coveredBy_split_literal root_3864432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864437 small_3864432_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864437
  · exact small_3864432_right_covered
#print axioms cover_3864432

def root_3864234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864234_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864234_left_fuel : Nat := 19
def small_3864234_left_count : Nat := 93
def small_3864234_left_encoded : String := "1151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A91303120700F808A9130512070104000000020000000812073D0408A912FF000000081207010800000004050000F600000008135D4501000000000500010600000008135D810704548A03000000080000000500000003000000020000000112073CF80000000108A91305120701040000000208A912FF000000080000000612073D0408A912FF12073D08050000F6135D810105000106135D45070000000300000008135D81070CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000060F350D040CFD9BFF0000000800000005000000020000000300000000135D45010000000005000106135D45070000000300000008135D81070CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000050000000500000003000000041207010800000004050000F6135D8101050001060000000600000005000000000000000500000002"
theorem small_3864234_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864234_left_root small_3864234_left_fuel small_3864234_left_count small_3864234_left_encoded = true := by
  decide +kernel
theorem small_3864234_left_covered : CoveredBy scale carrier boxes small_3864234_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864234_left_root small_3864234_left_fuel small_3864234_left_count small_3864234_left_encoded small_3864234_left_checked

theorem cover_3864234 : CoveredBy scale carrier boxes root_3864234 := by
  apply coveredBy_split_literal root_3864234 small_3864234_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864432 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3864234_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864432
#print axioms cover_3864234

def root_3864229 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864229_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3864229_right_fuel : Nat := 1
def small_3864229_right_count : Nat := 1
def small_3864229_right_encoded : String := "00000002"
theorem small_3864229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3864229_right_root small_3864229_right_fuel small_3864229_right_count small_3864229_right_encoded = true := by
  decide +kernel
theorem small_3864229_right_covered : CoveredBy scale carrier boxes small_3864229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3864229_right_root small_3864229_right_fuel small_3864229_right_count small_3864229_right_encoded small_3864229_right_checked

theorem cover_3864229 : CoveredBy scale carrier boxes root_3864229 := by
  apply coveredBy_split_literal root_3864229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864234 small_3864229_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864234
  · exact small_3864229_right_covered
#print axioms cover_3864229

def root_3860555 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3860555 : CoveredBy scale carrier boxes root_3860555 := by
  apply coveredBy_split_literal root_3860555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3860556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3864229 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3860556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3864229
#print axioms cover_3860555

def root_3860550 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860550_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860550_right_fuel : Nat := 1
def small_3860550_right_count : Nat := 1
def small_3860550_right_encoded : String := "00000001"
theorem small_3860550_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860550_right_root small_3860550_right_fuel small_3860550_right_count small_3860550_right_encoded = true := by
  decide +kernel
theorem small_3860550_right_covered : CoveredBy scale carrier boxes small_3860550_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860550_right_root small_3860550_right_fuel small_3860550_right_count small_3860550_right_encoded small_3860550_right_checked

theorem cover_3860550 : CoveredBy scale carrier boxes root_3860550 := by
  apply coveredBy_split_literal root_3860550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.root_3860555 small_3860550_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280.cover_3860555
  · exact small_3860550_right_covered
#print axioms cover_3860550

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0280
