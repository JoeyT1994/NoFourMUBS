import TaoBundleAssembly0074
import TaoBundleChunkBatch0306
import TaoBundleChunkBatch0307
import TaoBundleChunkBatch0308
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075
def root_3174963 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174963_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174963_right_fuel : Nat := 25
def small_3174963_right_count : Nat := 353
def small_3174963_right_encoded : String := "128A410100000000078000FA128A7D05067ECE8312EA58F8067ECE8712EA58FC022A457F13E20108064000F612FFAD0108C000FA000000060000000A00000000000000060000000413E1C50800000004064000F612FFAD0108C000FA11FC25050569AC430000000A134110F8000000010569AC4700000006134110FC000000030115233F000000060000000A000000020000000A000000000000000A0000000312EA94FC00000003022A457F13E20108064000F612FFAD010000000900000000000000090000000413E1C50800000004064000F612FFAD0108C000FA11FC2505000000090000000211FBE905000000020569AC430000000A134110F8000000010793F0C70000000A000000090000000012FF71010000000008C000FA0000000911FBE905000000020000000A0000000112EA94F800000001067ECE8712EA58FC022A457F13E20108064000F612FFAD0108C000FA0000000611FBE905000000020000000600000000000000060000000413E1C50800000004064000F612FFAD0108C000FA11FC25050793F0C3128220F80569AC4700000006134110FC000000030115233F0000000613F859080000000406E000F612C82101096000FA0000000611AA81050000000207095FA3000000060000000500000000000000060000000112825CF8000000010569AC4700000006134110FC000000030115233F00000006000000050000000211FBE905000000020793F0C30000000A12825CF8000000010569AC470000000A134110FC000000030115233F13F8950806E000F612C82101082000FA0000000612465D050000000200000006000000000000000600000004000000050000000012FF71010000000008C000FA11FC2505000000060000000211FBE905000000020000000A0000000312EA94FC00000003022A457F13E20108064000F612FFAD0108C000FA0000000911FBE905000000020793F0C30000000912825CF8000000010793F0C7128220FC033F67BF0000000600000009000000030000000900000000000000090000000413E1C50800000004064000F612FFAD0108C000FA11FC25050793F0C300000009000000050000000211FBE905000000020793F0C3128220F80793F0C7128220FC0115233F13F8950806E000F612C82101082000FA0000000912465D05000000020000000500000000000000090000000400000005000000030000000500000001000000050000000012FF71010000000008C000FA0000000911FBE905000000020793F0C3000000090000000500000002128A410500000002067ECE8312EA58F8067ECE870000000A12EA94FC00000003022A457F13E20108064000F612FFAD01064000FA12FFAD050569AC4300000008134110F8000000010000000A0000000200000008000000000000000A000000040000000A0000000112EA94F800000001067ECE8712EA58FC022A457F13E20108064000F612FFAD01064000FA12FFAD050793F0C30000000A00000006000000020000000A000000000000000A000000040000000A0000000312EA94FC00000003022A457F13E20108064000F612FFAD01064000FA12FFAD050793F0C3128220F80793F0C70000000A000000090000000112825CF8000000010793F0C70000000712825CFC00000003033F67BF00000007000000050000000212FF7105000000020793F0C30000000A000000070000000012FF710100000000064000FA12FFAD050793F0C30000000A12825CF8000000010793F0C700000006000000090000000212FF7105000000020000000A0000000413E1C50800000004064000F612FFAD01064000FA12FFAD050793F0C3128220F80793F0C70000000A0000000500000001000000050000000212FF7105000000020793F0C30000000A000000050000000012FF710100000000064000FA12FFAD050793F0C30000000A00000005000000020000000A"
theorem small_3174963_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174963_right_root small_3174963_right_fuel small_3174963_right_count small_3174963_right_encoded = true := by
  decide +kernel
theorem small_3174963_right_covered : CoveredBy scale carrier boxes small_3174963_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174963_right_root small_3174963_right_fuel small_3174963_right_count small_3174963_right_encoded small_3174963_right_checked

theorem cover_3174963 : CoveredBy scale carrier boxes root_3174963 := by
  apply coveredBy_split_literal root_3174963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3174964 small_3174963_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3174964
  · exact small_3174963_right_covered
#print axioms cover_3174963

def root_3174957 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174957_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174957_left_fuel : Nat := 1
def small_3174957_left_count : Nat := 1
def small_3174957_left_encoded : String := "00000004"
theorem small_3174957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174957_left_root small_3174957_left_fuel small_3174957_left_count small_3174957_left_encoded = true := by
  decide +kernel
theorem small_3174957_left_covered : CoveredBy scale carrier boxes small_3174957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174957_left_root small_3174957_left_fuel small_3174957_left_count small_3174957_left_encoded small_3174957_left_checked

theorem cover_3174957 : CoveredBy scale carrier boxes root_3174957 := by
  apply coveredBy_split_literal root_3174957 small_3174957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174963 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3174957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174963
#print axioms cover_3174957

def root_3174629 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174629_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174629_left_fuel : Nat := 17
def small_3174629_left_count : Nat := 155
def small_3174629_left_encoded : String := "1386AD08078000F6128A7D01078000FA128A7D05067ECE8312EA58F8067ECE8712EA58FC067ECE7F0000000512EA59080000000408C000F611FC250108C000FA11FC25050000000500000002000000050000000011FBE9010000000008C000FA00000006000000080000000312EA94FC00000003067ECE7F0000000812EA59080000000408C000F611FC25010000000800000000000000090000000112EA94F800000001067ECE8712EA58FC067ECE7F0000000612EA59080000000408C000F60000000711FBE90100000000000000060000000312EA94FC00000003067ECE7F12EA9508000000070000000412EA59080000000408C000F60000000711FBE9010000000008C000FA000000090000000700000002128A410500000002067ECE8312EA58F8067ECE8700000008000000080000000112EA94F800000001067ECE870000000712EA94FC000000030000000700000000128A410100000000078000FA128A7D05067ECE8312EA58F8067ECE8700000006000000090000000112EA94F800000001067ECE870000000612EA94FC000000030000000900000002128A410500000002067ECE8312EA58F8067ECE870000000A12EA94FC00000003067ECE7F0000000812EA590800000004000000080000000112EA94F800000001067ECE8712EA58FC067ECE7F0000000612EA590800000004000000060000000312EA94FC00000003067ECE7F12EA9508064000F600000007000000060000000412EA590800000004064000F612FFAD01064000FA12FFAD050793F0C3000000080000000700000002000000070000000012FF710100000000064000FA0000000612FF7105000000020000000A00000004"
theorem small_3174629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174629_left_root small_3174629_left_fuel small_3174629_left_count small_3174629_left_encoded = true := by
  decide +kernel
theorem small_3174629_left_covered : CoveredBy scale carrier boxes small_3174629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174629_left_root small_3174629_left_fuel small_3174629_left_count small_3174629_left_encoded small_3174629_left_checked

theorem cover_3174629 : CoveredBy scale carrier boxes root_3174629 := by
  apply coveredBy_split_literal root_3174629 small_3174629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174957 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3174629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174957
#print axioms cover_3174629

def root_3174623 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174623_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174623_left_fuel : Nat := 1
def small_3174623_left_count : Nat := 1
def small_3174623_left_encoded : String := "00000003"
theorem small_3174623_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174623_left_root small_3174623_left_fuel small_3174623_left_count small_3174623_left_encoded = true := by
  decide +kernel
theorem small_3174623_left_covered : CoveredBy scale carrier boxes small_3174623_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174623_left_root small_3174623_left_fuel small_3174623_left_count small_3174623_left_encoded small_3174623_left_checked

theorem cover_3174623 : CoveredBy scale carrier boxes root_3174623 := by
  apply coveredBy_split_literal root_3174623 small_3174623_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174629 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3174623_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174629
#print axioms cover_3174623

def root_3174075 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174075_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174075_left_fuel : Nat := 31
def small_3174075_left_count : Nat := 263
def small_3174075_left_encoded : String := "138670FC045489FF1386AD08078000F6128A7D01078000FA128A7D05067ECE83000000050000000600000002128A410500000002067ECE83000000050000000700000000128A410100000000078000FA00000006128A41050000000200000006000000041386710800000004078000F6128A7D01078000FA128A7D05067ECE8312EA58F8022A45870000000A13E200FC00000003022A457F13E2010808C000F611FC250108C000FA11FC25050000000500000002000000050000000011FBE90100000000000000060000000413E1C5080000000408C000F611FC250108C000FA11FC25050569AC430000000A134110F800000001033F67C70000000A13BC30FC000000030115233F13F89508096000F611AABD01096000FA000000060000000700000000000000060000000413F8590800000004096000F611AABD01096000FA11AABD0505F43D631317BCF803C9F8E7000000050000009B000000011317F8F80000000103C9F8E7000000060000009B0000000211AA810500000002000000090000000011AA8101000000000000000A0000000211FBE905000000020000000A0000000011FBE901000000000000000A0000000112EA94F800000001022A458713E1C4FC022A457F0000000613E1C5080000000408C000F600000009000000060000000313E200FC00000003022A457F13E2010808C000F611FC250108C000FA000000060000000700000000000000060000000413E1C5080000000408C000F611FC250108C000FA11FC25050793F0C3128220F8033F67C70000000613BC30FC000000030115233F0000000613F8590800000004096000F611AABD01096000FA11AABD0507095FA312B880F800000006000000010000000600000002000000070000000011AA810100000000096000FA0000000611AA810500000002000000060000000112825CF800000001033F67C70000000613BC30FC000000030115233F0000000613F8590800000004096000F600000007000000070000000211FBE905000000020793F0C3128220F8033F67C70000000713BC30FC000000030115233F000000070000000900000001000000070000000011FBE9010000000008C000FA11FC25050793F0C3128220F80000000600000001000000060000000211FBE905000000020793F0C30000000A12825CF800000001033F67C70000000613BC30FC000000030000000A00000002128A410500000002067ECE830000000A12EA94F800000001022A45870000000913E200FC00000003022A457F0000000713E1C5080000000408C000F6000000070000000A00000000128A410100000000078000FA128A7D05067ECE830000000A12EA94F800000001022A45870000000613E200FC00000003022A457F0000000613E1C50800000004064000F612FFAD0108C000FA000000060000000A0000000000000006000000020000000A00000003"
theorem small_3174075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174075_left_root small_3174075_left_fuel small_3174075_left_count small_3174075_left_encoded = true := by
  decide +kernel
theorem small_3174075_left_covered : CoveredBy scale carrier boxes small_3174075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174075_left_root small_3174075_left_fuel small_3174075_left_count small_3174075_left_encoded small_3174075_left_checked

theorem cover_3174075 : CoveredBy scale carrier boxes root_3174075 := by
  apply coveredBy_split_literal root_3174075 small_3174075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174623 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3174075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174623
#print axioms cover_3174075

def root_3174069 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174069_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174069_left_fuel : Nat := 1
def small_3174069_left_count : Nat := 1
def small_3174069_left_encoded : String := "00000001"
theorem small_3174069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174069_left_root small_3174069_left_fuel small_3174069_left_count small_3174069_left_encoded = true := by
  decide +kernel
theorem small_3174069_left_covered : CoveredBy scale carrier boxes small_3174069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174069_left_root small_3174069_left_fuel small_3174069_left_count small_3174069_left_encoded small_3174069_left_checked

theorem cover_3174069 : CoveredBy scale carrier boxes root_3174069 := by
  apply coveredBy_split_literal root_3174069 small_3174069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174075 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3174069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174075
#print axioms cover_3174069

def root_3173493 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173493_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173493_left_fuel : Nat := 32
def small_3173493_left_count : Nat := 275
def small_3173493_left_encoded : String := "138670F804548A07138670FC045489FF000000050000000A000000031386ACFC00000003045489FF1386AD08078000F6128A7D01078000FA128A7D05022A45830000000513E200F800000001067ECE870000000500000008000000020000000800000000128A410100000000078000FA128A7D05022A45830000000513E200F800000001067ECE87000000050000000900000002128A41050000000200000008000000041386710800000004078000F6128A7D01078000FA128A7D05022A458313E1C4F8067ECE870000000A12EA94FC00000003022A457F0000000813E1C5080000000408C000F600000008000000070000000113E200F800000001067ECE8712EA58FC022A457F13E2010808C000F611FC2501000000080000000011FBE9010000000008C000FA11FC25050000000500000002000000050000000413E1C5080000000408C000F611FC250108C000FA11FC2505033F67C30000000A13BC30F8000000010569AC470000000A134110FC000000030115233F13F89508096000F60000000811AA810100000000000000080000000413F8590800000004096000F611AABD01096000FA11AABD0503C9F8E3000000080000009B00000002000000080000000011AA8101000000000000000A0000000211FBE905000000020000000A0000000011FBE901000000000000000A0000000312EA94FC00000003022A457F13E2010808C000F60000000811FBE9010000000008C000FA00000009000000080000000413E1C5080000000408C000F611FC250108C000FA11FC2505033F67C313BBF4F80793F0C7128220FC0000000800000003000000080000000113BC30F8000000010793F0C7128220FC0115233F0000000813F8590800000004096000F611AABD01096000FA11AABD0503C9F8E30000000713A36CF8000000010000000900000002000000080000000011AA810100000000096000FA0000000711AA810500000002000000080000000312825CFC000000030115233F0000000813F8590800000004096000F611AABD010000000900000000000000090000000211FBE90500000002033F67C30000000813BC30F8000000010793F0C7128220FC0000000800000003000000080000000011FBE9010000000008C000FA11FC2505033F67C30000000713BC30F8000000010793F0C7128220FC0115233F000000090000000700000003000000090000000211FBE90500000002033F67C30000000A13BC30F8000000010793F0C70000000A12825CFC000000030000000A00000002128A410500000002022A45830000000813E200F800000001067ECE870000000A12EA94FC00000003022A457F0000000813E1C5080000000408C000F6000000080000000A00000000128A410100000000078000FA128A7D05022A45830000000A13E200F800000001067ECE870000000A12EA94FC00000003022A457F0000000913E1C50800000004064000F612FFAD0108C000FA000000070000000A0000000000000007000000020000000A00000001"
theorem small_3173493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173493_left_root small_3173493_left_fuel small_3173493_left_count small_3173493_left_encoded = true := by
  decide +kernel
theorem small_3173493_left_covered : CoveredBy scale carrier boxes small_3173493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173493_left_root small_3173493_left_fuel small_3173493_left_count small_3173493_left_encoded small_3173493_left_checked

theorem cover_3173493 : CoveredBy scale carrier boxes root_3173493 := by
  apply coveredBy_split_literal root_3173493 small_3173493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3174069 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3173493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3174069
#print axioms cover_3173493

def root_3173488 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173488_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173488_right_fuel : Nat := 1
def small_3173488_right_count : Nat := 1
def small_3173488_right_encoded : String := "00000002"
theorem small_3173488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173488_right_root small_3173488_right_fuel small_3173488_right_count small_3173488_right_encoded = true := by
  decide +kernel
theorem small_3173488_right_covered : CoveredBy scale carrier boxes small_3173488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173488_right_root small_3173488_right_fuel small_3173488_right_count small_3173488_right_encoded small_3173488_right_checked

theorem cover_3173488 : CoveredBy scale carrier boxes root_3173488 := by
  apply coveredBy_split_literal root_3173488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173493 small_3173488_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173493
  · exact small_3173488_right_covered
#print axioms cover_3173488

def root_3173487 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173487_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173487_right_fuel : Nat := 20
def small_3173487_right_count : Nat := 105
def small_3173487_right_encoded : String := "135D45050000000204548A03138670F804548A070000000A1386ACFC00000003045489FF000000080000000A000000011386ACF80000000104548A07138670FC045489FF1386AD080000000A000000040000000A000000031386ACFC00000003045489FF1386AD08078000F6128A7D01028000FA13D7ED05067ECE830000000800000007000000020000000700000000128A410100000000028000FA13D7ED05067ECE830000000812EA94F800000001067ECE870000000A000000080000000200000008000000041386710800000004078000F6128A7D01028000FA13D7ED05067ECE8312EA58F8067ECE870000000A12EA94FC00000003022A457F0000000813E1C50800000004000000080000000112EA94F800000001067ECE870000000712EA94FC00000003022A457F0000000713E1C5080000000408C000F60000000711FBE90100000000000000070000000213D7B10500000002067ECE83000000080000000700000000128A410100000000028000FA13D7ED05067ECE830000000A12EA94F800000001067ECE870000000A12EA94FC000000030000000A000000020000000A"
theorem small_3173487_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173487_right_root small_3173487_right_fuel small_3173487_right_count small_3173487_right_encoded = true := by
  decide +kernel
theorem small_3173487_right_covered : CoveredBy scale carrier boxes small_3173487_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173487_right_root small_3173487_right_fuel small_3173487_right_count small_3173487_right_encoded small_3173487_right_checked

theorem cover_3173487 : CoveredBy scale carrier boxes root_3173487 := by
  apply coveredBy_split_literal root_3173487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173488 small_3173487_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173488
  · exact small_3173487_right_covered
#print axioms cover_3173487

def root_3173482 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173482_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173482_right_fuel : Nat := 1
def small_3173482_right_count : Nat := 1
def small_3173482_right_encoded : String := "00000000"
theorem small_3173482_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173482_right_root small_3173482_right_fuel small_3173482_right_count small_3173482_right_encoded = true := by
  decide +kernel
theorem small_3173482_right_covered : CoveredBy scale carrier boxes small_3173482_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173482_right_root small_3173482_right_fuel small_3173482_right_count small_3173482_right_encoded small_3173482_right_checked

theorem cover_3173482 : CoveredBy scale carrier boxes root_3173482 := by
  apply coveredBy_split_literal root_3173482 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173487 small_3173482_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173487
  · exact small_3173482_right_covered
#print axioms cover_3173482

def root_3173481 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173481_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173481_right_fuel : Nat := 21
def small_3173481_right_count : Nat := 117
def small_3173481_right_encoded : String := "135D450100000000050000FA135D810504548A03138670F804548A070000000A1386ACFC00000003045489FF1386AD080000000A000000040000000A000000011386ACF80000000104548A07138670FC045489FF000000060000000A000000031386ACFC00000003045489FF1386AD08028000F613D7ED01078000FA128A7D05067ECE83000000060000000600000002128A410500000002067ECE830000000A12EA94F800000001067ECE870000000612EA94FC00000003000000060000000013D7B10100000000078000FA00000006128A41050000000200000006000000041386710800000004028000F613D7ED01078000FA128A7D05067ECE8312EA58F8067ECE870000000A000000090000000112EA94F800000001067ECE8712EA58FC022A457F0000000613E1C50800000004000000060000000312EA94FC00000003022A457F0000000913E1C5080000000403C000F6000000090000000900000002128A410500000002067ECE830000000A12EA94F800000001067ECE870000000A12EA94FC000000030000000A0000000013D7B10100000000078000FA128A7D05067ECE830000000912EA94F800000001067ECE870000000600000009000000020000000A00000002135D4505000000020000000A"
theorem small_3173481_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173481_right_root small_3173481_right_fuel small_3173481_right_count small_3173481_right_encoded = true := by
  decide +kernel
theorem small_3173481_right_covered : CoveredBy scale carrier boxes small_3173481_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173481_right_root small_3173481_right_fuel small_3173481_right_count small_3173481_right_encoded small_3173481_right_checked

theorem cover_3173481 : CoveredBy scale carrier boxes root_3173481 := by
  apply coveredBy_split_literal root_3173481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173482 small_3173481_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173482
  · exact small_3173481_right_covered
#print axioms cover_3173481

def root_3173475 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173475_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173475_left_fuel : Nat := 1
def small_3173475_left_count : Nat := 1
def small_3173475_left_encoded : String := "00000004"
theorem small_3173475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173475_left_root small_3173475_left_fuel small_3173475_left_count small_3173475_left_encoded = true := by
  decide +kernel
theorem small_3173475_left_covered : CoveredBy scale carrier boxes small_3173475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173475_left_root small_3173475_left_fuel small_3173475_left_count small_3173475_left_encoded small_3173475_left_checked

theorem cover_3173475 : CoveredBy scale carrier boxes root_3173475 := by
  apply coveredBy_split_literal root_3173475 small_3173475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173481 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3173475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173481
#print axioms cover_3173475

def root_3173219 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173219_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173219_left_fuel : Nat := 17
def small_3173219_left_count : Nat := 123
def small_3173219_left_encoded : String := "12073D08050000F6135D8101050000FA135D810504548A03138670F804548A07138670FC0CFD9BFF000000050F34D1080000000400000005000000031386ACFC000000030CFD9BFF000000050F34D1080000000400000008000000011386ACF80000000104548A07138670FC0CFD9BFF000000050F34D1080000000400000006000000031386ACFC000000030CFD9BFF0F350D080C9A87080000000600000006000000040F34D10800000004078000F6128A7D01078000FA128A7D05067ECE830000000800000007000000020000000800000000128A410100000000078000FA00000006128A410500000002067ECE83000000080000000600000002135D45050000000204548A03000000081386ACF80000000104548A07138670FC0CFD9BFF0000000500000007000000031386ACFC000000030CFD9BFF000000080F34D108000000040000000800000000135D450100000000050000FA135D810504548A03138670F804548A07000000051386ACFC000000030CFD9BFF0000000500000009000000011386ACF80000000104548A07000000061386ACFC000000030CFD9BFF000000060F34D108000000040000000600000002135D45050000000204548A03000000051386ACF80000000104548A07000000051386ACFC000000030CFD9BFF000000050000000A00000004"
theorem small_3173219_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173219_left_root small_3173219_left_fuel small_3173219_left_count small_3173219_left_encoded = true := by
  decide +kernel
theorem small_3173219_left_covered : CoveredBy scale carrier boxes small_3173219_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173219_left_root small_3173219_left_fuel small_3173219_left_count small_3173219_left_encoded small_3173219_left_checked

theorem cover_3173219 : CoveredBy scale carrier boxes root_3173219 := by
  apply coveredBy_split_literal root_3173219 small_3173219_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173475 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3173219_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173475
#print axioms cover_3173219

def root_3173214 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173214_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173214_right_fuel : Nat := 1
def small_3173214_right_count : Nat := 1
def small_3173214_right_encoded : String := "00000003"
theorem small_3173214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173214_right_root small_3173214_right_fuel small_3173214_right_count small_3173214_right_encoded = true := by
  decide +kernel
theorem small_3173214_right_covered : CoveredBy scale carrier boxes small_3173214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173214_right_root small_3173214_right_fuel small_3173214_right_count small_3173214_right_encoded small_3173214_right_checked

theorem cover_3173214 : CoveredBy scale carrier boxes root_3173214 := by
  apply coveredBy_split_literal root_3173214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173219 small_3173214_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173219
  · exact small_3173214_right_covered
#print axioms cover_3173214

def root_3173213 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3173213 : CoveredBy scale carrier boxes root_3173213 := by
  apply coveredBy_split_literal root_3173213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1221.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1221.covered
#print axioms cover_3173213

def root_3173208 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173208_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173208_right_fuel : Nat := 1
def small_3173208_right_count : Nat := 1
def small_3173208_right_encoded : String := "00000001"
theorem small_3173208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173208_right_root small_3173208_right_fuel small_3173208_right_count small_3173208_right_encoded = true := by
  decide +kernel
theorem small_3173208_right_covered : CoveredBy scale carrier boxes small_3173208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173208_right_root small_3173208_right_fuel small_3173208_right_count small_3173208_right_encoded small_3173208_right_checked

theorem cover_3173208 : CoveredBy scale carrier boxes root_3173208 := by
  apply coveredBy_split_literal root_3173208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173213 small_3173208_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173213
  · exact small_3173208_right_covered
#print axioms cover_3173208

def root_3182769 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3182769 : CoveredBy scale carrier boxes root_3182769 := by
  apply coveredBy_split_literal root_3182769 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1222.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1223.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1222.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1223.covered
#print axioms cover_3182769

def root_3182763 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3182763_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3182763_left_fuel : Nat := 1
def small_3182763_left_count : Nat := 1
def small_3182763_left_encoded : String := "00000001"
theorem small_3182763_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3182763_left_root small_3182763_left_fuel small_3182763_left_count small_3182763_left_encoded = true := by
  decide +kernel
theorem small_3182763_left_covered : CoveredBy scale carrier boxes small_3182763_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3182763_left_root small_3182763_left_fuel small_3182763_left_count small_3182763_left_encoded small_3182763_left_checked

theorem cover_3182763 : CoveredBy scale carrier boxes root_3182763 := by
  apply coveredBy_split_literal root_3182763 small_3182763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3182769 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3182763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3182769
#print axioms cover_3182763

def root_3173207 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3173207 : CoveredBy scale carrier boxes root_3173207 := by
  apply coveredBy_split_literal root_3173207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3182763 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173208
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3182763
#print axioms cover_3173207

def root_3173201 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173201_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173201_left_fuel : Nat := 1
def small_3173201_left_count : Nat := 1
def small_3173201_left_encoded : String := "00000004"
theorem small_3173201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173201_left_root small_3173201_left_fuel small_3173201_left_count small_3173201_left_encoded = true := by
  decide +kernel
theorem small_3173201_left_covered : CoveredBy scale carrier boxes small_3173201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173201_left_root small_3173201_left_fuel small_3173201_left_count small_3173201_left_encoded small_3173201_left_checked

theorem cover_3173201 : CoveredBy scale carrier boxes root_3173201 := by
  apply coveredBy_split_literal root_3173201 small_3173201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173207 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3173201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173207
#print axioms cover_3173201

def root_3173127 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173127_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173127_left_fuel : Nat := 13
def small_3173127_left_count : Nat := 37
def small_3173127_left_encoded : String := "1151E8FF08A91303120700F808A91307120700FC050000F6000000080000000600000003000000080000000112073CF80000000108A913070000000712073CFC00000003050000F6135D8101050000FA000000070000000700000000135D450100000000050000FA00000009135D4505000000020500010800000007135D80FF000000040CFD9C03000000090000000700000004"
theorem small_3173127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173127_left_root small_3173127_left_fuel small_3173127_left_count small_3173127_left_encoded = true := by
  decide +kernel
theorem small_3173127_left_covered : CoveredBy scale carrier boxes small_3173127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173127_left_root small_3173127_left_fuel small_3173127_left_count small_3173127_left_encoded small_3173127_left_checked

theorem cover_3173127 : CoveredBy scale carrier boxes root_3173127 := by
  apply coveredBy_split_literal root_3173127 small_3173127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173201 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3173127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173201
#print axioms cover_3173127

def root_3173122 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173122_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173122_right_fuel : Nat := 1
def small_3173122_right_count : Nat := 1
def small_3173122_right_encoded : String := "00000003"
theorem small_3173122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173122_right_root small_3173122_right_fuel small_3173122_right_count small_3173122_right_encoded = true := by
  decide +kernel
theorem small_3173122_right_covered : CoveredBy scale carrier boxes small_3173122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173122_right_root small_3173122_right_fuel small_3173122_right_count small_3173122_right_encoded small_3173122_right_checked

theorem cover_3173122 : CoveredBy scale carrier boxes root_3173122 := by
  apply coveredBy_split_literal root_3173122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173127 small_3173122_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173127
  · exact small_3173122_right_covered
#print axioms cover_3173122

def root_3173121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173121_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173121_right_fuel : Nat := 24
def small_3173121_right_count : Nat := 155
def small_3173121_right_encoded : String := "1151E907000000030A0001081151E8FF0000000900000004115224FF0000000408A91303120700F808A912FF12073D08050000F6135D8101050000FA135D8105050000FC00000009135D4507000000030000000900000002135D450500000002050000FC00000008135D450700000003000000080000000000000009000000041207010800000004050000F6135D8101050000FA135D8105050000FC135D810704548A03138670F8045489FF000000091386710800000004078000F6128A7D01078000FA00000009128A410500000002078000FC00000006128A410700000003000000050000000000000009000000011386ACF800000001045489FF000000090000000500000003135D45070000000304548A03138670F8045489FF0000000900000005000000010000000500000002135D450500000002050000FC135D810704548A03138670F8045489FF0000000800000005000000010000000500000003135D45070000000304548A03138670F8045489FF0000000800000005000000010000000500000000135D450100000000050000FA135D8105050000FC00000009135D4507000000030000000900000002135D450500000002050000FC135D810704548A03000000090000000500000003135D450700000003000000050000000112073CF80000000108A912FF12073D08050000F6135D8101050000FA00000009135D450500000002050000FC135D81070CFD9C03000000090000000500000003135D4507000000030000000900000000135D450100000000050000FA00000009135D450500000002050000FC135D81070CFD9C03000000090000000500000003000000090000000400000005"
theorem small_3173121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173121_right_root small_3173121_right_fuel small_3173121_right_count small_3173121_right_encoded = true := by
  decide +kernel
theorem small_3173121_right_covered : CoveredBy scale carrier boxes small_3173121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173121_right_root small_3173121_right_fuel small_3173121_right_count small_3173121_right_encoded small_3173121_right_checked

theorem cover_3173121 : CoveredBy scale carrier boxes root_3173121 := by
  apply coveredBy_split_literal root_3173121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173122 small_3173121_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173122
  · exact small_3173121_right_covered
#print axioms cover_3173121

def root_3173115 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173115_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3173115_left_fuel : Nat := 1
def small_3173115_left_count : Nat := 1
def small_3173115_left_encoded : String := "00000002"
theorem small_3173115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3173115_left_root small_3173115_left_fuel small_3173115_left_count small_3173115_left_encoded = true := by
  decide +kernel
theorem small_3173115_left_covered : CoveredBy scale carrier boxes small_3173115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3173115_left_root small_3173115_left_fuel small_3173115_left_count small_3173115_left_encoded small_3173115_left_checked

theorem cover_3173115 : CoveredBy scale carrier boxes root_3173115 := by
  apply coveredBy_split_literal root_3173115 small_3173115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173121 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3173115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173121
#print axioms cover_3173115

def root_3167789 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3167789 : CoveredBy scale carrier boxes root_3167789 := by
  apply coveredBy_split_literal root_3167789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3173115 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167790
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3173115
#print axioms cover_3167789

def root_3167784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167784_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167784_right_fuel : Nat := 1
def small_3167784_right_count : Nat := 1
def small_3167784_right_encoded : String := "00000001"
theorem small_3167784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167784_right_root small_3167784_right_fuel small_3167784_right_count small_3167784_right_encoded = true := by
  decide +kernel
theorem small_3167784_right_covered : CoveredBy scale carrier boxes small_3167784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167784_right_root small_3167784_right_fuel small_3167784_right_count small_3167784_right_encoded small_3167784_right_checked

theorem cover_3167784 : CoveredBy scale carrier boxes root_3167784 := by
  apply coveredBy_split_literal root_3167784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3167789 small_3167784_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3167789
  · exact small_3167784_right_covered
#print axioms cover_3167784

def root_3167783 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3167783 : CoveredBy scale carrier boxes root_3167783 := by
  apply coveredBy_split_literal root_3167783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3167784 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1224.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3167784
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1224.covered
#print axioms cover_3167783

def root_3167777 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167777_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167777_left_fuel : Nat := 1
def small_3167777_left_count : Nat := 1
def small_3167777_left_encoded : String := "00000000"
theorem small_3167777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167777_left_root small_3167777_left_fuel small_3167777_left_count small_3167777_left_encoded = true := by
  decide +kernel
theorem small_3167777_left_covered : CoveredBy scale carrier boxes small_3167777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167777_left_root small_3167777_left_fuel small_3167777_left_count small_3167777_left_encoded small_3167777_left_checked

theorem cover_3167777 : CoveredBy scale carrier boxes root_3167777 := by
  apply coveredBy_split_literal root_3167777 small_3167777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3167783 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3167777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3167783
#print axioms cover_3167777

def root_3152431 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3152431 : CoveredBy scale carrier boxes root_3152431 := by
  apply coveredBy_split_literal root_3152431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3167777 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3167777
#print axioms cover_3152431

def root_3189018 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3189018 : CoveredBy scale carrier boxes root_3189018 := by
  apply coveredBy_split_literal root_3189018 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1225.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1226.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1225.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1226.covered
#print axioms cover_3189018

def root_3189012 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3189012_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3189012_left_fuel : Nat := 1
def small_3189012_left_count : Nat := 1
def small_3189012_left_encoded : String := "00000002"
theorem small_3189012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3189012_left_root small_3189012_left_fuel small_3189012_left_count small_3189012_left_encoded = true := by
  decide +kernel
theorem small_3189012_left_covered : CoveredBy scale carrier boxes small_3189012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3189012_left_root small_3189012_left_fuel small_3189012_left_count small_3189012_left_encoded small_3189012_left_checked

theorem cover_3189012 : CoveredBy scale carrier boxes root_3189012 := by
  apply coveredBy_split_literal root_3189012 small_3189012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3189018 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3189012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3189018
#print axioms cover_3189012

def root_3188746 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188746_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188746_left_fuel : Nat := 17
def small_3188746_left_count : Nat := 125
def small_3188746_left_encoded : String := "0F34D0FA04548A07138670FC04548A0913867108000000040C9A86F60F878D01022A458313E1C4F80AD357850000000A10D13CFA00000002022A458713E1C4FC022A45890000000513E201080DE7C9F60000000A0000000500000004000000030000000A000000010000000A000000000F87510100000000022A458313E1C4F80AD3578510D100FA000000070000000210D13CFA00000002022A458713E1C4FC0000000700000003000000070000000113E200F8000000010AD357850000000810D13CFA00000002022A4587000000080000000A1386AD080C9A86F60F878D01022A458313E1C4F80AD3578510D100FA000000080000000210D13CFA00000002022A458713E1C4FC067ECE8912EA59080000000400000008000000070000000313E200FC00000003067ECE8912EA5908000000040000000A000000070000000100000008000000000F875101000000000000000800000004000000031386ACFC0000000304548A0913867108000000040C9A86F60000000A0F87510100000000022A458313E1C4F80AD357850000000910D13CFA00000002067ECE8712EA58FC000000070000000300000007000000010000000A1386AD080C9A86F60F878D010000000A000000000F87510100000000022A458313E1C4F80AD35785000000070000000700000001000000080000000400000002"
theorem small_3188746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188746_left_root small_3188746_left_fuel small_3188746_left_count small_3188746_left_encoded = true := by
  decide +kernel
theorem small_3188746_left_covered : CoveredBy scale carrier boxes small_3188746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188746_left_root small_3188746_left_fuel small_3188746_left_count small_3188746_left_encoded small_3188746_left_checked

theorem cover_3188746 : CoveredBy scale carrier boxes root_3188746 := by
  apply coveredBy_split_literal root_3188746 small_3188746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3189012 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3188746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3189012
#print axioms cover_3188746

def root_3188741 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188741_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188741_right_fuel : Nat := 1
def small_3188741_right_count : Nat := 1
def small_3188741_right_encoded : String := "00000001"
theorem small_3188741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188741_right_root small_3188741_right_fuel small_3188741_right_count small_3188741_right_encoded = true := by
  decide +kernel
theorem small_3188741_right_covered : CoveredBy scale carrier boxes small_3188741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188741_right_root small_3188741_right_fuel small_3188741_right_count small_3188741_right_encoded small_3188741_right_checked

theorem cover_3188741 : CoveredBy scale carrier boxes root_3188741 := by
  apply coveredBy_split_literal root_3188741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188746 small_3188741_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188746
  · exact small_3188741_right_covered
#print axioms cover_3188741

def root_3195082 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3195082 : CoveredBy scale carrier boxes root_3195082 := by
  apply coveredBy_split_literal root_3195082 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1227.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1228.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1227.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1228.covered
#print axioms cover_3195082

def root_3195076 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195076_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195076_left_fuel : Nat := 1
def small_3195076_left_count : Nat := 1
def small_3195076_left_encoded : String := "00000002"
theorem small_3195076_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3195076_left_root small_3195076_left_fuel small_3195076_left_count small_3195076_left_encoded = true := by
  decide +kernel
theorem small_3195076_left_covered : CoveredBy scale carrier boxes small_3195076_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3195076_left_root small_3195076_left_fuel small_3195076_left_count small_3195076_left_encoded small_3195076_left_checked

theorem cover_3195076 : CoveredBy scale carrier boxes root_3195076 := by
  apply coveredBy_split_literal root_3195076 small_3195076_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3195082 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3195076_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3195082
#print axioms cover_3195076

def root_3195044 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195044_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195044_left_fuel : Nat := 8
def small_3195044_left_count : Nat := 15
def small_3195044_left_encoded : String := "0F34D0FA04548A07138670FC04548A0913867108000000040C9A86F60000000A0F875101000000000000000800000008000000030000000A00000002"
theorem small_3195044_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3195044_left_root small_3195044_left_fuel small_3195044_left_count small_3195044_left_encoded = true := by
  decide +kernel
theorem small_3195044_left_covered : CoveredBy scale carrier boxes small_3195044_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3195044_left_root small_3195044_left_fuel small_3195044_left_count small_3195044_left_encoded small_3195044_left_checked

theorem cover_3195044 : CoveredBy scale carrier boxes root_3195044 := by
  apply coveredBy_split_literal root_3195044 small_3195044_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3195076 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3195044_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3195076
#print axioms cover_3195044

def root_3195038 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195038_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3195038_left_fuel : Nat := 1
def small_3195038_left_count : Nat := 1
def small_3195038_left_encoded : String := "00000001"
theorem small_3195038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3195038_left_root small_3195038_left_fuel small_3195038_left_count small_3195038_left_encoded = true := by
  decide +kernel
theorem small_3195038_left_covered : CoveredBy scale carrier boxes small_3195038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3195038_left_root small_3195038_left_fuel small_3195038_left_count small_3195038_left_encoded small_3195038_left_checked

theorem cover_3195038 : CoveredBy scale carrier boxes root_3195038 := by
  apply coveredBy_split_literal root_3195038 small_3195038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3195044 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3195038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3195044
#print axioms cover_3195038

def root_3188740 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3188740 : CoveredBy scale carrier boxes root_3188740 := by
  apply coveredBy_split_literal root_3188740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3195038 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188741
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3195038
#print axioms cover_3188740

def root_3188734 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188734_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188734_left_fuel : Nat := 1
def small_3188734_left_count : Nat := 1
def small_3188734_left_encoded : String := "00000000"
theorem small_3188734_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188734_left_root small_3188734_left_fuel small_3188734_left_count small_3188734_left_encoded = true := by
  decide +kernel
theorem small_3188734_left_covered : CoveredBy scale carrier boxes small_3188734_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188734_left_root small_3188734_left_fuel small_3188734_left_count small_3188734_left_encoded small_3188734_left_checked

theorem cover_3188734 : CoveredBy scale carrier boxes root_3188734 := by
  apply coveredBy_split_literal root_3188734 small_3188734_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188740 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3188734_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188740
#print axioms cover_3188734

def root_3188412 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188412_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188412_left_fuel : Nat := 21
def small_3188412_left_count : Nat := 153
def small_3188412_left_encoded : String := "0F34D0F604548A03138670F80CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA0F878D050AD357810000000A10D13CF600000000022A458313E1C4F8022A458713E1C4FC022A45890000000513E201080DE7C9FA0000000A0000000500000004000000030000000A000000010000000A000000020F875105000000020AD3578110D100F6022A4583000000060000000A0000000010D13CF600000000022A458313E1C4F8022A458700000009000000060000000113E200F800000001022A4587000000090000000A1386AD080C9A86FA0F878D050AD3578110D100F6000000060000000010D13CF600000000022A458313E1C4F8022A458713E1C4FC067ECE8912EA590800000004000000060000000600000003000000060000000113E200F800000001022A458713E1C4FC067ECE8912EA5908000000040000000A000000060000000300000006000000020F875105000000020000000600000004000000031386ACFC0000000304548A0913867108000000040C9A86FA0000000A0F875105000000020000000600000006000000011386ACF8000000010CFD9C050000000A0F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA0000000A0F875105000000020AD357810000000A10D13CF600000000067ECE8312EA58F8022A4587000000090000000A000000010000000A1386AD080C9A86FA0F878D050000000A000000020F875105000000020AD357810000000610D13CF600000000067ECE830000000612EA94F8000000010000000600000004000000030000000A00000000"
theorem small_3188412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188412_left_root small_3188412_left_fuel small_3188412_left_count small_3188412_left_encoded = true := by
  decide +kernel
theorem small_3188412_left_covered : CoveredBy scale carrier boxes small_3188412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188412_left_root small_3188412_left_fuel small_3188412_left_count small_3188412_left_encoded small_3188412_left_checked

theorem cover_3188412 : CoveredBy scale carrier boxes root_3188412 := by
  apply coveredBy_split_literal root_3188412 small_3188412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188734 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3188412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188734
#print axioms cover_3188412

def root_3188406 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188406_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188406_left_fuel : Nat := 1
def small_3188406_left_count : Nat := 1
def small_3188406_left_encoded : String := "00000004"
theorem small_3188406_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188406_left_root small_3188406_left_fuel small_3188406_left_count small_3188406_left_encoded = true := by
  decide +kernel
theorem small_3188406_left_covered : CoveredBy scale carrier boxes small_3188406_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188406_left_root small_3188406_left_fuel small_3188406_left_count small_3188406_left_encoded small_3188406_left_checked

theorem cover_3188406 : CoveredBy scale carrier boxes root_3188406 := by
  apply coveredBy_split_literal root_3188406 small_3188406_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188412 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3188406_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188412
#print axioms cover_3188406

def root_3188405 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188405_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188405_right_fuel : Nat := 22
def small_3188405_right_count : Nat := 183
def small_3188405_right_encoded : String := "12073D080CFD9C010F34D0F604548A03138670F80CFD9C050F34D0FA04548A07138670FC0CFD9C090F34D108000000040AD357810000000600000008000000060000000300000006000000020F350CFA0000000204548A07138670FC0CFD9C090F34D1080000000400000006000000060000000300000006000000011386ACF8000000010CFD9C050F34D0FA04548A070000000800000006000000020F350CFA0000000204548A07138670FC0CFD9C090F34D1080000000400000006000000060000000300000006000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA04548A07138670FC0CFD9C090F34D108000000040000000800000008000000031386ACFC000000030CFD9C090F34D108000000040000000800000008000000020F350CFA0000000204548A07138670FC0CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D05022A458300000006000000080000000200000006000000000F875101000000000C9A86FA0F878D0500000008000000020F87510500000002022A458313E1C4F8022A458713E1C4FC0AD3578910D1010800000004000000070000000600000003000000060000000113E200F800000001022A458700000008000000060F350D080C9A86F6000000060000000800000004000000031386ACFC000000030CFD9C090F34D108000000040C9A86F60F878D0100000006000000000F875101000000000C9A86FA0F878D05022A45830000000600000008000000020000000600000006000000011386ACF8000000010CFD9C050F34D0FA04548A070000000800000008000000020F350CFA0000000204548A07138670FC0CFD9C090F34D108000000040C9A86F60F878D010C9A86FA000000080F87510500000002067ECE830000000600000006000000000000000800000008000000031386ACFC000000030CFD9C090F34D108000000040C9A86F60F878D0100000006000000000F87510100000000000000050000000500000004"
theorem small_3188405_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188405_right_root small_3188405_right_fuel small_3188405_right_count small_3188405_right_encoded = true := by
  decide +kernel
theorem small_3188405_right_covered : CoveredBy scale carrier boxes small_3188405_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188405_right_root small_3188405_right_fuel small_3188405_right_count small_3188405_right_encoded small_3188405_right_checked

theorem cover_3188405 : CoveredBy scale carrier boxes root_3188405 := by
  apply coveredBy_split_literal root_3188405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188406 small_3188405_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188406
  · exact small_3188405_right_covered
#print axioms cover_3188405

def root_3188400 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188400_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188400_right_fuel : Nat := 1
def small_3188400_right_count : Nat := 1
def small_3188400_right_encoded : String := "00000003"
theorem small_3188400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188400_right_root small_3188400_right_fuel small_3188400_right_count small_3188400_right_encoded = true := by
  decide +kernel
theorem small_3188400_right_covered : CoveredBy scale carrier boxes small_3188400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188400_right_root small_3188400_right_fuel small_3188400_right_count small_3188400_right_encoded small_3188400_right_checked

theorem cover_3188400 : CoveredBy scale carrier boxes root_3188400 := by
  apply coveredBy_split_literal root_3188400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188405 small_3188400_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188405
  · exact small_3188400_right_covered
#print axioms cover_3188400

def root_3188399 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188399_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188399_right_fuel : Nat := 29
def small_3188399_right_count : Nat := 369
def small_3188399_right_encoded : String := "12073CFC0000000308A9130912070108000000040CFD9C010F34D0F604548A03138670F80CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC0000000A000000030000000A000000010000000A000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC0000000A000000030000000A000000020F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040C9A86F60F878D010C9A86FA0F878D050000000A000000020F87510500000002022A45830000000600000006000000000F875101000000000C9A86FA0F878D05022A458313E1C4F80AD3578710D100FC022A45890000000900000007000000030000000A000000010000000A000000020F87510500000002022A458313E1C4F80AD3578710D100FC022A458913E1C508000000040B4D43F610804D01000000060000000010801101000000000B4D43FA0000000700000006000000060000000310D13CFC00000003000000060000000113E200F8000000010AD3578710D100FC022A458913E1C508000000040B4D43F610804D010B4D43FA0000000A000000060000000010801101000000000B4D43FA10804D0500000009000000021080110500000002033F67C30000000600000006000000060000000310D13CFC00000003022A458913E1C508000000040B4D43F60000000600000009000000061386AD080C9A86F60F878D010C9A86FA0F878D05000000060000000200000006000000000F875101000000000C9A86FA0F878D05022A458313E1C4F80AD3578710D100FC0000000600000003000000060000000113E200F8000000010AD3578710D100FC067ECE8912EA59080000000400000006000000050000000300000005000000020F875105000000020000000600000004000000030F350CFC0000000304548A0913867108000000040C9A86F60F878D010C9A86FA0000000A00000006000000000F875101000000000C9A86FA0F878D050C9A86FC0000000A0000000A000000020F875105000000020C9A86FC0F878D07022A45830000000600000006000000030F87510700000003000000061386AD080C9A86F60F878D0100000006000000000F875101000000000C9A86FA0F878D050C9A86FC000000060F8751070000000300000005000000020000000600000004000000011386ACF8000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040C9A86F60F878D010000000A000000000F875101000000000C9A86FA0F878D050000000A000000020F87510500000002067ECE8312EA58F80AD3578710D100FC022A458913E1C508000000040000000A00000006000000030000000A000000010000000A1386AD080C9A86F60F878D010C9A86FA0000000A00000006000000000F875101000000000C9A86FA0F878D05067ECE8312EA58F80000000A0000000100000005000000020F875105000000020000000500000004000000030F350CFC0000000304548A0913867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F87510500000002000000051386AD080C9A86F60F878D0100000006000000000F87510100000000000000050000000412073D080CFD9C010F34D0F604548A03138670F80CFD9C05000000060F350CFA0000000200000006000000011386ACF8000000010CFD9C05000000060F350CFA0000000200000006000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC0CFD9C090F34D108000000040C9A86F6000000060000000800000006000000030F350CFC000000030CFD9C090F34D108000000040C9A86F6000000060000000800000005000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D1080000000400000006000000050000000300000005000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070000000800000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030000000500000004"
theorem small_3188399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188399_right_root small_3188399_right_fuel small_3188399_right_count small_3188399_right_encoded = true := by
  decide +kernel
theorem small_3188399_right_covered : CoveredBy scale carrier boxes small_3188399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188399_right_root small_3188399_right_fuel small_3188399_right_count small_3188399_right_encoded small_3188399_right_checked

theorem cover_3188399 : CoveredBy scale carrier boxes root_3188399 := by
  apply coveredBy_split_literal root_3188399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188400 small_3188399_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188400
  · exact small_3188399_right_covered
#print axioms cover_3188399

def root_3188393 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188393_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188393_left_fuel : Nat := 1
def small_3188393_left_count : Nat := 1
def small_3188393_left_encoded : String := "00000002"
theorem small_3188393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188393_left_root small_3188393_left_fuel small_3188393_left_count small_3188393_left_encoded = true := by
  decide +kernel
theorem small_3188393_left_covered : CoveredBy scale carrier boxes small_3188393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188393_left_root small_3188393_left_fuel small_3188393_left_count small_3188393_left_encoded small_3188393_left_checked

theorem cover_3188393 : CoveredBy scale carrier boxes root_3188393 := by
  apply coveredBy_split_literal root_3188393 small_3188393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188399 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3188393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188399
#print axioms cover_3188393

def root_3188245 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188245_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188245_left_fuel : Nat := 14
def small_3188245_left_count : Nat := 67
def small_3188245_left_encoded : String := "120700FA08A91307120700FC08A9130912070108000000040CFD9C010000000A0F350CF60000000004548A03138670F804548A050000000A1386ACFA0000000204548A07138670FC0000000A000000030000000A000000010000000A12073D080CFD9C010F34D0F604548A03138670F8000000080000000100000008000000000F350CF60000000000000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D080CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F804548A05138670FA00000008000000021386ACFA000000020CFD9C07000000080F350CFC000000030000000800000001000000080000000400000002"
theorem small_3188245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188245_left_root small_3188245_left_fuel small_3188245_left_count small_3188245_left_encoded = true := by
  decide +kernel
theorem small_3188245_left_covered : CoveredBy scale carrier boxes small_3188245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188245_left_root small_3188245_left_fuel small_3188245_left_count small_3188245_left_encoded small_3188245_left_checked

theorem cover_3188245 : CoveredBy scale carrier boxes root_3188245 := by
  apply coveredBy_split_literal root_3188245 small_3188245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188393 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3188245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188393
#print axioms cover_3188245

def root_3188240 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188240_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188240_right_fuel : Nat := 1
def small_3188240_right_count : Nat := 1
def small_3188240_right_encoded : String := "00000001"
theorem small_3188240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188240_right_root small_3188240_right_fuel small_3188240_right_count small_3188240_right_encoded = true := by
  decide +kernel
theorem small_3188240_right_covered : CoveredBy scale carrier boxes small_3188240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188240_right_root small_3188240_right_fuel small_3188240_right_count small_3188240_right_encoded small_3188240_right_checked

theorem cover_3188240 : CoveredBy scale carrier boxes root_3188240 := by
  apply coveredBy_split_literal root_3188240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188245 small_3188240_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188245
  · exact small_3188240_right_covered
#print axioms cover_3188240

def root_3188239 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188239_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188239_right_fuel : Nat := 34
def small_3188239_right_count : Nat := 443
def small_3188239_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC08A9130912070108000000040000000A12073D0800000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0800000008000000040000000212073CFA0000000208A91307120700FC08A9130912070108000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050000000A0F350CFA0000000204548A07138670FC0000000A000000030000000A000000010000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA04548A07138670FC0000000A000000030000000A000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86F60F878D010C9A86FA0F878D050000000A000000020F875105000000020AD3578310D100F8022A458713E1C4FC022A45890000000700000009000000030000000A000000010000000A000000000F875101000000000C9A86FA0F878D050AD3578310D100F8000000080000000100000008000000020F875105000000020AD3578310D100F8022A458713E1C4FC022A458913E1C508000000040B4D43F610804D010B4D43FA00000008000000070000000000000008000000080000000313E200FC00000003022A458913E1C508000000040B4D43F610804D010B4D43FA0000000A000000070000000010801101000000000B4D43FA00000008108011050000000209BE3543117740F8000000080000000100000007000000080000000110D13CF800000001022A45870000000813E200FC00000003022A458913E1C508000000040B4D43F60000000A00000008000000081386AD080C9A86F60F878D010C9A86FA0F878D0500000008000000020F875105000000020AD3578310D100F8022A45870000000813E200FC00000003067ECE8912EA59080000000400000008000000050000000110D13CF80000000100000008000000000F875101000000000000000800000004000000031386ACFC0000000304548A0913867108000000040C9A86F60F878D010000000A000000000F875101000000000C9A86FA0F878D050000000A000000020F875105000000020AD3578310D100F8067ECE8712EA58FC022A458913E1C508000000040000000A00000008000000030000000A000000010000000A1386AD080C9A86F60F878D010C9A86FA0000000A0F875105000000020AD357830000000600000005000000000F875101000000000C9A86FA000000080F875105000000020000000500000004000000010F350CF8000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86F60F878D010C9A86F80000000A0F875103000000010000000A000000000F875101000000000C9A86F80F878D030C9A86FA000000080F87510500000002022A45870000000800000008000000010F87510300000001000000081386AD080C9A86F60F878D010C9A86F8000000080F8751030000000100000008000000000000000800000004000000031386ACFC0000000304548A0913867108000000040C9A86F60000000A0F875101000000000C9A86F80000000A0000000A1386AD080C9A86F60F878D010000000A00000000000000080000000412073D080CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC0CFD9C090F34D108000000040C9A86FA0000000800000006000000060000000300000006000000010F350CF8000000010CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC0CFD9C090F34D108000000040C9A86F80000000800000006000000050000000300000005000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA00000008000000020F350CFA0000000204548A07138670FC0CFD9C090F34D1080000000400000008000000050000000300000005000000010F350CF8000000010CFD9C05000000080F350CFA0000000204548A070000000800000005000000040000000312073CFC0000000308A9130912070108000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC04548A0913867108000000040000000A1386AD080C9A86F6000000050F875101000000000000000500000004000000030000000A000000010F350CF8000000010CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC0000000A000000030000000512073D080CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050000000600000005000000010F350CF8000000010CFD9C050000000600000005000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA000000050000000200000005000000010000000500000004"
theorem small_3188239_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188239_right_root small_3188239_right_fuel small_3188239_right_count small_3188239_right_encoded = true := by
  decide +kernel
theorem small_3188239_right_covered : CoveredBy scale carrier boxes small_3188239_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188239_right_root small_3188239_right_fuel small_3188239_right_count small_3188239_right_encoded small_3188239_right_checked

theorem cover_3188239 : CoveredBy scale carrier boxes root_3188239 := by
  apply coveredBy_split_literal root_3188239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188240 small_3188239_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188240
  · exact small_3188239_right_covered
#print axioms cover_3188239

def root_3188233 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188233_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3188233_left_fuel : Nat := 1
def small_3188233_left_count : Nat := 1
def small_3188233_left_encoded : String := "00000000"
theorem small_3188233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3188233_left_root small_3188233_left_fuel small_3188233_left_count small_3188233_left_encoded = true := by
  decide +kernel
theorem small_3188233_left_covered : CoveredBy scale carrier boxes small_3188233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3188233_left_root small_3188233_left_fuel small_3188233_left_count small_3188233_left_encoded small_3188233_left_checked

theorem cover_3188233 : CoveredBy scale carrier boxes root_3188233 := by
  apply coveredBy_split_literal root_3188233 small_3188233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188239 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3188233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188239
#print axioms cover_3188233

def root_3187975 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187975_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187975_left_fuel : Nat := 18
def small_3187975_left_count : Nat := 117
def small_3187975_left_encoded : String := "120700F608A91303120700F808A91305120700FA08A91307120700FC0000000A000000030000000A0000000212073CFA0000000208A91307120700FC08A91309120701080000000404548A010000000A1386ACF60000000004548A03138670F80CFD9C050000000A0F350CFA0000000204548A07138670FC0000000A0000000300000006000000010000000A12073D0804548A01138670F600000006000000001386ACF60000000004548A03138670F80CFD9C050000000600000006000000011386ACF8000000010CFD9C05000000060F350CFA0000000200000006000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0800000006000000040000000112073CF80000000108A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC08A9130912070108000000040000000A12073D0804548A01138670F60CFD9C03000000060000000A000000001386ACF6000000000CFD9C030F34D0F80CFD9C05000000060F350CFA0000000200000006000000010F350CF8000000010CFD9C05000000060F350CFA0000000200000006000000040000000312073CFC0000000308A9130912070108000000040000000A12073D08000000060000000400000000"
theorem small_3187975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187975_left_root small_3187975_left_fuel small_3187975_left_count small_3187975_left_encoded = true := by
  decide +kernel
theorem small_3187975_left_covered : CoveredBy scale carrier boxes small_3187975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187975_left_root small_3187975_left_fuel small_3187975_left_count small_3187975_left_encoded small_3187975_left_checked

theorem cover_3187975 : CoveredBy scale carrier boxes root_3187975 := by
  apply coveredBy_split_literal root_3187975 small_3187975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3188233 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3187975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3188233
#print axioms cover_3187975

def root_3187970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187970_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187970_right_fuel : Nat := 1
def small_3187970_right_count : Nat := 1
def small_3187970_right_encoded : String := "00000004"
theorem small_3187970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187970_right_root small_3187970_right_fuel small_3187970_right_count small_3187970_right_encoded = true := by
  decide +kernel
theorem small_3187970_right_covered : CoveredBy scale carrier boxes small_3187970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187970_right_root small_3187970_right_fuel small_3187970_right_count small_3187970_right_encoded small_3187970_right_checked

theorem cover_3187970 : CoveredBy scale carrier boxes root_3187970 := by
  apply coveredBy_split_literal root_3187970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187975 small_3187970_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187975
  · exact small_3187970_right_covered
#print axioms cover_3187970

def root_3187766 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187766_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187766_left_fuel : Nat := 17
def small_3187766_left_count : Nat := 99
def small_3187766_left_encoded : String := "1151E9090000000408A91301120700F608A91303120700F808A913050000000612073CFA00000002000000060000000112073CF80000000108A91305120700FA000000060000000212073CFA0000000208A91307120700FC0500010800000008000000080000000312073CFC000000030500010800000005000000060000000012073CF60000000008A91303120700F808A91305120700FA08A913070000000812073CFC000000030500010800000006000000060000000212073CFA0000000208A91307120700FC05000108135D4509000000040CFD9C010000000800000005135D81090CFD9C010F34D0F600000006000000000F350CF60000000004548A03138670F80CFD9C0500000006000000050000000100000005000000040000000312073CFC000000030500010800000005000000060000000112073CF80000000108A91305120700FA08A913070000000812073CFC000000030500010800000005000000060000000212073CFA0000000208A91307120700FC0500010800000005000000080000000300000005"
theorem small_3187766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187766_left_root small_3187766_left_fuel small_3187766_left_count small_3187766_left_encoded = true := by
  decide +kernel
theorem small_3187766_left_covered : CoveredBy scale carrier boxes small_3187766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187766_left_root small_3187766_left_fuel small_3187766_left_count small_3187766_left_encoded small_3187766_left_checked

theorem cover_3187766 : CoveredBy scale carrier boxes root_3187766 := by
  apply coveredBy_split_literal root_3187766 small_3187766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187970 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3187766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187970
#print axioms cover_3187766

def root_3187761 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187761_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187761_right_fuel : Nat := 1
def small_3187761_right_count : Nat := 1
def small_3187761_right_encoded : String := "00000003"
theorem small_3187761_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187761_right_root small_3187761_right_fuel small_3187761_right_count small_3187761_right_encoded = true := by
  decide +kernel
theorem small_3187761_right_covered : CoveredBy scale carrier boxes small_3187761_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187761_right_root small_3187761_right_fuel small_3187761_right_count small_3187761_right_encoded small_3187761_right_checked

theorem cover_3187761 : CoveredBy scale carrier boxes root_3187761 := by
  apply coveredBy_split_literal root_3187761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187766 small_3187761_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187766
  · exact small_3187761_right_covered
#print axioms cover_3187761

def root_3187760 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187760_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187760_right_fuel : Nat := 27
def small_3187760_right_count : Nat := 221
def small_3187760_right_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F6000000060000000012073CF60000000008A91303120700F808A91305120700FA00000006000000020000000500000001000000051152250908A91301120700F608A91303120700F808A913050000000A12073CFA0000000208A9130912070108000000040000000A00000006000000010000000A0000000012073CF60000000008A91303120700F808A91305120700FA08A9130912070108000000040000000A12073D08050000FC135D81070CFD9C01000000080F350CF60000000004548A03138670F804548A050000000A00000008000000010000000800000003135D4507000000030CFD9C010000000A0F350CF60000000004548A03138670F804548A050000000A00000008000000010000000A000000040000000212073CFA0000000208A913091207010800000004050000FC135D81070CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F80CFD9C050000000A0F350CFA0000000204548A0913867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F87510500000002078000FC00000006000000061386AD080C9A86F6000000060F875101000000000000000500000004000000011386ACF8000000010CFD9C050000000A0F350CFA0000000204548A090000000A0000000500000003135D4507000000030CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A0913867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F875105000000020000000500000005000000011386ACF8000000010CFD9C050000000A0000000512073D08050000FC135D81070CFD9C010F34D0F600000006000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA000000050000000200000005000000010000000500000003135D4507000000030CFD9C010F34D0F6000000060000000000000005000000040000000112073CF80000000108A91305120700FA0000000A0000000212073CFA0000000208A913091207010800000004050000FC135D81070CFD9C010000000A0F350CF6000000000CFD9C030F34D0F80000000A000000010000000500000003135D4507000000030CFD9C010000000A000000050000000500000004"
theorem small_3187760_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187760_right_root small_3187760_right_fuel small_3187760_right_count small_3187760_right_encoded = true := by
  decide +kernel
theorem small_3187760_right_covered : CoveredBy scale carrier boxes small_3187760_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187760_right_root small_3187760_right_fuel small_3187760_right_count small_3187760_right_encoded small_3187760_right_checked

theorem cover_3187760 : CoveredBy scale carrier boxes root_3187760 := by
  apply coveredBy_split_literal root_3187760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187761 small_3187760_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187761
  · exact small_3187760_right_covered
#print axioms cover_3187760

def root_3187755 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187755_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3187755_right_fuel : Nat := 1
def small_3187755_right_count : Nat := 1
def small_3187755_right_encoded : String := "00000002"
theorem small_3187755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3187755_right_root small_3187755_right_fuel small_3187755_right_count small_3187755_right_encoded = true := by
  decide +kernel
theorem small_3187755_right_covered : CoveredBy scale carrier boxes small_3187755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3187755_right_root small_3187755_right_fuel small_3187755_right_count small_3187755_right_encoded small_3187755_right_checked

theorem cover_3187755 : CoveredBy scale carrier boxes root_3187755 := by
  apply coveredBy_split_literal root_3187755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3187760 small_3187755_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3187760
  · exact small_3187755_right_covered
#print axioms cover_3187755

def root_3203837 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203837_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203837_right_fuel : Nat := 22
def small_3203837_right_count : Nat := 129
def small_3203837_right_encoded : String := "12073CFC0000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F604548A030000000600000006000000000F350CF60000000004548A03138670F80CFD9C070F34D0FC04548A0913867108000000040C9A86F6000000060F87510100000000078000FA128A7D05022A45830000000613E200F8000000010AD3578710D100FC000000060000000300000006000000020000000600000006000000030F350CFC0000000304548A0913867108000000040000000600000006000000011386ACF8000000010CFD9C070F34D0FC04548A0913867108000000040C9A86F60F878D0100000006000000000F87510100000000078000FA128A7D05067ECE8312EA58F80AD3578710D100FC000000060000000300000005000000010000000500000002128A410500000002067ECE83000000060000000500000006000000030F350CFC0000000304548A0913867108000000040C9A86F6000000060F87510100000000000000050000000500000002135D4505000000020CFD9C010F34D0F600000006000000000F350CF60000000004548A03138670F80CFD9C070F34D0FC000000060000000300000006000000011386ACF8000000010CFD9C070F34D0FC00000006000000030000000512073D08050000FA135D81050CFD9C01000000060F350CF60000000004548A030000000600000005000000020000000600000004"
theorem small_3203837_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203837_right_root small_3203837_right_fuel small_3203837_right_count small_3203837_right_encoded = true := by
  decide +kernel
theorem small_3203837_right_covered : CoveredBy scale carrier boxes small_3203837_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203837_right_root small_3203837_right_fuel small_3203837_right_count small_3203837_right_encoded small_3203837_right_checked

theorem cover_3203837 : CoveredBy scale carrier boxes root_3203837 := by
  apply coveredBy_split_literal root_3203837 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1229.root small_3203837_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1229.covered
  · exact small_3203837_right_covered
#print axioms cover_3203837

def root_3203832 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203832_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203832_right_fuel : Nat := 1
def small_3203832_right_count : Nat := 1
def small_3203832_right_encoded : String := "00000001"
theorem small_3203832_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203832_right_root small_3203832_right_fuel small_3203832_right_count small_3203832_right_encoded = true := by
  decide +kernel
theorem small_3203832_right_covered : CoveredBy scale carrier boxes small_3203832_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203832_right_root small_3203832_right_fuel small_3203832_right_count small_3203832_right_encoded small_3203832_right_checked

theorem cover_3203832 : CoveredBy scale carrier boxes root_3203832 := by
  apply coveredBy_split_literal root_3203832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3203837 small_3203832_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3203837
  · exact small_3203832_right_covered
#print axioms cover_3203832

def root_3203831 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203831_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203831_right_fuel : Nat := 30
def small_3203831_right_count : Nat := 365
def small_3203831_right_encoded : String := "12073CF80000000108A91307120700FC08A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9C030F34D0F804548A07138670FC04548A09000000071386AD08078000FA128A7D0500000006000000020000000600000004000000031386ACFC0000000304548A090000000700000006000000010F350CF80000000104548A07138670FC04548A09000000071386AD0800000007000000040000000300000007000000000F350CF6000000000CFD9C030F34D0F804548A07138670FC04548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3578310D100F80000000700000001000000070000000200000007000000000F87510100000000078000FA128A7D050AD3578310D100F8022A45870000000913E200FC00000003022A458913E1C508000000040B4D43F600000007108011010000000008C000FA11FC250500000007000000020000000713E201080B4D43F600000009108011010000000000000009000000040000000110D13CF800000001022A45870000000913E200FC00000003022A4589000000070000000500000002128A410500000002000000091386AD080C9A86F60F878D01078000FA128A7D050AD3578310D100F80000000900000001000000090000000200000009000000000F87510100000000078000FA128A7D050AD3578310D100F8022A458700000009000000050000000100000005000000020000000900000004000000031386ACFC0000000304548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3578310D100F80000000700000001000000070000000200000007000000000F87510100000000078000FA128A7D050AD3578310D100F8067ECE8712EA58FC022A458913E1C508000000040B4D43F600000007108011010000000008C000FA0000000500000007000000050000000300000005000000010000000500000002128A4105000000020AD3578310D100F8067ECE87000000070000000500000001000000051386AD080C9A86F60F878D0100000006000000000F875101000000000000000500000004000000010F350CF80000000104548A07138670FC04548A0913867108000000040C9A86F60F878D0100000007000000000F875101000000000C9A86F80F878D03078000FA128A7D05022A458700000007000000070000000200000007000000010F87510300000001000000071386AD080C9A86F60F878D010C9A86F80F878D03078000FA0000000500000007000000010F8751030000000100000005000000000F875101000000000000000500000004000000031386ACFC0000000304548A0913867108000000040C9A86F60F878D0100000007000000000F87510100000000000000050000000500000002135D4505000000020CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C030F34D0F804548A07000000091386ACFC0000000304548A090000000700000005000000010F350CF80000000104548A07138670FC04548A090000000700000005000000030000000512073D08050000FA135D81050CFD9C010F34D0F60CFD9C03000000060F350CF80000000104548A07138670FC000000050000000300000005000000000F350CF6000000000CFD9C030F34D0F804548A07138670FC000000050000000300000005000000010000000500000002135D4505000000020CFD9C010F34D0F60CFD9C0300000006000000050000000000000005000000040000000312073CFC0000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9C03000000060F350CF80000000100000006000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D0FC04548A0913867108000000040C9A86F60F878D01078000FA0000000A00000006000000000F8751010000000000000005000000050000000300000005000000010000000500000002135D4505000000020CFD9C010F34D0F600000006000000000000000500000005"
theorem small_3203831_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203831_right_root small_3203831_right_fuel small_3203831_right_count small_3203831_right_encoded = true := by
  decide +kernel
theorem small_3203831_right_covered : CoveredBy scale carrier boxes small_3203831_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203831_right_root small_3203831_right_fuel small_3203831_right_count small_3203831_right_encoded small_3203831_right_checked

theorem cover_3203831 : CoveredBy scale carrier boxes root_3203831 := by
  apply coveredBy_split_literal root_3203831 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3203832 small_3203831_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3203832
  · exact small_3203831_right_covered
#print axioms cover_3203831

def root_3203825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203825_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3203825_left_fuel : Nat := 1
def small_3203825_left_count : Nat := 1
def small_3203825_left_encoded : String := "00000000"
theorem small_3203825_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3203825_left_root small_3203825_left_fuel small_3203825_left_count small_3203825_left_encoded = true := by
  decide +kernel
theorem small_3203825_left_covered : CoveredBy scale carrier boxes small_3203825_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3203825_left_root small_3203825_left_fuel small_3203825_left_count small_3203825_left_encoded small_3203825_left_checked

theorem cover_3203825 : CoveredBy scale carrier boxes root_3203825 := by
  apply coveredBy_split_literal root_3203825 small_3203825_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.root_3203831 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3203825_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075.cover_3203831
#print axioms cover_3203825

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0075
