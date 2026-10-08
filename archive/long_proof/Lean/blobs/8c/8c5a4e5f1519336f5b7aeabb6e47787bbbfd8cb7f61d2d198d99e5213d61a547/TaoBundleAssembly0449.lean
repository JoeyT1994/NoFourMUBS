import TaoBundleAssembly0446
import TaoBundleAssembly0447
import TaoBundleAssembly0448
import TaoBundleChunkBatch0609
import TaoBundleChunkBatch0610
import TaoBundleChunkBatch0611
import TaoBundleChunkBatch0612
import TaoBundleChunkBatch0613
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449
def root_6493737 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493737_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493737_left_fuel : Nat := 27
def small_6493737_left_count : Nat := 271
def small_6493737_left_encoded : String := "0F8750FF022A457913E20102022A457B13E200FA00000002022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF000000090000000410804CFF00000004033F67B913BC3102033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000900000000000000090000000913BBF4FA033F67BD0000000A00000009000000020000000113BBF50200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000900000000000000090000000913BBF4FA033F67BD13BC30FC000000030D4128800EFA10F70BF3E5880000000A100928FF0000000402B4D6990000000813D0D1020000000100000008000000000000000A0000000900000002000000000E6014F7000000000B4D44080000000910804CFF00000004033F67B90000000A13BBF50200000001033F67BB000000090000000A13E1C4FC0DE7CA000E5FD8F70000000900000000000000090000000313E1C4FA022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF033F67B90000000A13BBF502000000010000000A0000000410804CFF00000004033F67B90000000A13BBF502000000010115233B13F894FA00000002033F67BD0000000A0000000500000005000000000E6014F7000000000000000A13E1C4FC0DE7CA000E5FD8F70B4D44080000000510804CFF0000000400000005000000000000000900000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030DE7CA000E5FD8F70B4D4408108010FF0115233900000009000000090000000410804CFF000000040115233913F89502033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70BF3E58800000009100928FF00000004019FB459000000090000000700000000000000090000000913BBF4FA033F67BD13BC30FC000000030D4128800EFA10F70BF3E5881008ECFF0000000600000004100928FF00000004019FB45913EF350202B4D69B13D10CFA0000000203C9F8DD0000000700000005000000050000000100000005000000000EFA4CF7000000000BF3E58800000006100928FF00000004019FB459000000090000000500000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030D4128800EFA10F70000000700000000000000090000000913BBF4FA0000000500000002000000000E6014F7000000000B4D44080000000910804CFF000000040115233913F89502033F67BB0000000913BBF4FA033F67BD0000000600000005000000020000000113F8590200000001033F67BB000000090000000513E1C4FC0DE7CA000E5FD8F70000000900000000000000090000000313E1C4FA022A457D13E200FC000000030DE7CA000E5FD8F70B4D44080000000510804CFF00000004000000050000000000000006000000050000000200000004"
theorem small_6493737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6493737_left_root small_6493737_left_fuel small_6493737_left_count small_6493737_left_encoded = true := by
  decide +kernel
theorem small_6493737_left_covered : CoveredBy scale carrier boxes small_6493737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6493737_left_root small_6493737_left_fuel small_6493737_left_count small_6493737_left_encoded small_6493737_left_checked

theorem cover_6493737 : CoveredBy scale carrier boxes root_6493737 := by
  apply coveredBy_split_literal root_6493737 small_6493737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2444.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6493737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2444.covered
#print axioms cover_6493737

def root_6493731 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493731_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6493731_left_fuel : Nat := 1
def small_6493731_left_count : Nat := 1
def small_6493731_left_encoded : String := "00000000"
theorem small_6493731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6493731_left_root small_6493731_left_fuel small_6493731_left_count small_6493731_left_encoded = true := by
  decide +kernel
theorem small_6493731_left_covered : CoveredBy scale carrier boxes small_6493731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6493731_left_root small_6493731_left_fuel small_6493731_left_count small_6493731_left_encoded small_6493731_left_checked

theorem cover_6493731 : CoveredBy scale carrier boxes root_6493731 := by
  apply coveredBy_split_literal root_6493731 small_6493731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6493737 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6493731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6493737
#print axioms cover_6493731

def root_6492501 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6492501 : CoveredBy scale carrier boxes root_6492501 := by
  apply coveredBy_split_literal root_6492501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2443.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6493731 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2443.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6493731
#print axioms cover_6492501

def root_6492496 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492496_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492496_right_fuel : Nat := 1
def small_6492496_right_count : Nat := 1
def small_6492496_right_encoded : String := "00000004"
theorem small_6492496_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492496_right_root small_6492496_right_fuel small_6492496_right_count small_6492496_right_encoded = true := by
  decide +kernel
theorem small_6492496_right_covered : CoveredBy scale carrier boxes small_6492496_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492496_right_root small_6492496_right_fuel small_6492496_right_count small_6492496_right_encoded small_6492496_right_checked

theorem cover_6492496 : CoveredBy scale carrier boxes root_6492496 := by
  apply coveredBy_split_literal root_6492496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6492501 small_6492496_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6492501
  · exact small_6492496_right_covered
#print axioms cover_6492496

def root_6492495 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492495_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492495_right_fuel : Nat := 24
def small_6492495_right_count : Nat := 207
def small_6492495_right_encoded : String := "0F34D108000000040C9A87000F8750F7022A457913E20102022A457B0000000613E1C4FA022A457D0000000813E1C4FC0AD3577F000000060000000500000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080B4D44000000000610804CF70000000001152339000000060000000A00000004000000060000000A13E1C4FA022A457D000000080000000500000002000000000F878CF700000000022A457913E20102022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080DE7CA00000000060E6014F700000000033F67B90000000613BBF5020000000100000007000000040000000613E1C4FC0AD3577F00000006000000060000000313E1C4FA022A457D13E200FC000000030AD3577F10D13D080DE7CA000E5FD8F700000008000000000E6014F70000000000000007000000040000000713E1C4FC0AD3577F10D13D080DE7CA000000000500000007000000040000000500000003000000020000000113E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080DE7CA000E5FD8F70115233913F89502033F67BB0000000613BBF4FA033F67BD0000000800000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030BE879BF1011AD080D412880000000050EFA4CF7000000000000000500000004000000050000000500000005000000000E6014F7000000000115233913F89502033F67BB13BC30FA00000002033F67BD000000070000000613BBF4FA033F67BD0000000700000005000000020000000113F8590200000001033F67BB13BC30FA00000002033F67BD13BC30FC000000030BE879BF1011AD080DAED8770E966100000000050000000000000005000000040000000500000005000000050000000410D10108000000040DE7CA00000000060000000713E1C4FC0AD3577F10D13D080DE7CA00000000050E6014F7000000000000000500000004000000050000000313E1C4FA022A457D13E200FC000000030AD3577F10D13D080DE7CA00000000050E6014F7000000000000000500000004000000050000000500000002"
theorem small_6492495_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492495_right_root small_6492495_right_fuel small_6492495_right_count small_6492495_right_encoded = true := by
  decide +kernel
theorem small_6492495_right_covered : CoveredBy scale carrier boxes small_6492495_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492495_right_root small_6492495_right_fuel small_6492495_right_count small_6492495_right_encoded small_6492495_right_checked

theorem cover_6492495 : CoveredBy scale carrier boxes root_6492495 := by
  apply coveredBy_split_literal root_6492495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6492496 small_6492495_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6492496
  · exact small_6492495_right_covered
#print axioms cover_6492495

def root_6492490 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492490_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6492490_right_fuel : Nat := 1
def small_6492490_right_count : Nat := 1
def small_6492490_right_encoded : String := "00000003"
theorem small_6492490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6492490_right_root small_6492490_right_fuel small_6492490_right_count small_6492490_right_encoded = true := by
  decide +kernel
theorem small_6492490_right_covered : CoveredBy scale carrier boxes small_6492490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6492490_right_root small_6492490_right_fuel small_6492490_right_count small_6492490_right_encoded small_6492490_right_checked

theorem cover_6492490 : CoveredBy scale carrier boxes root_6492490 := by
  apply coveredBy_split_literal root_6492490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6492495 small_6492490_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6492495
  · exact small_6492490_right_covered
#print axioms cover_6492490

def root_6488702 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6488702 : CoveredBy scale carrier boxes root_6488702 := by
  apply coveredBy_split_literal root_6488702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0448.root_6488703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6492490 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0448.cover_6488703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6492490
#print axioms cover_6488702

def root_6488697 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488697_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6488697_right_fuel : Nat := 1
def small_6488697_right_count : Nat := 1
def small_6488697_right_encoded : String := "00000002"
theorem small_6488697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6488697_right_root small_6488697_right_fuel small_6488697_right_count small_6488697_right_encoded = true := by
  decide +kernel
theorem small_6488697_right_covered : CoveredBy scale carrier boxes small_6488697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6488697_right_root small_6488697_right_fuel small_6488697_right_count small_6488697_right_encoded small_6488697_right_checked

theorem cover_6488697 : CoveredBy scale carrier boxes root_6488697 := by
  apply coveredBy_split_literal root_6488697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6488702 small_6488697_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6488702
  · exact small_6488697_right_covered
#print axioms cover_6488697

def root_6476981 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6476981 : CoveredBy scale carrier boxes root_6476981 := by
  apply coveredBy_split_literal root_6476981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0448.root_6476982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6488697 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0448.cover_6476982
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6488697
#print axioms cover_6476981

def root_6476975 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476975_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6476975_left_fuel : Nat := 1
def small_6476975_left_count : Nat := 1
def small_6476975_left_encoded : String := "00000001"
theorem small_6476975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6476975_left_root small_6476975_left_fuel small_6476975_left_count small_6476975_left_encoded = true := by
  decide +kernel
theorem small_6476975_left_covered : CoveredBy scale carrier boxes small_6476975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6476975_left_root small_6476975_left_fuel small_6476975_left_count small_6476975_left_encoded small_6476975_left_checked

theorem cover_6476975 : CoveredBy scale carrier boxes root_6476975 := by
  apply coveredBy_split_literal root_6476975 small_6476975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6476981 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6476975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6476981
#print axioms cover_6476975

def root_6474449 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6474449 : CoveredBy scale carrier boxes root_6474449 := by
  apply coveredBy_split_literal root_6474449 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2437.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6476975 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2437.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6476975
#print axioms cover_6474449

def root_6474444 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474444_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474444_right_fuel : Nat := 1
def small_6474444_right_count : Nat := 1
def small_6474444_right_encoded : String := "00000000"
theorem small_6474444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474444_right_root small_6474444_right_fuel small_6474444_right_count small_6474444_right_encoded = true := by
  decide +kernel
theorem small_6474444_right_covered : CoveredBy scale carrier boxes small_6474444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474444_right_root small_6474444_right_fuel small_6474444_right_count small_6474444_right_encoded small_6474444_right_checked

theorem cover_6474444 : CoveredBy scale carrier boxes root_6474444 := by
  apply coveredBy_split_literal root_6474444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474449 small_6474444_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474449
  · exact small_6474444_right_covered
#print axioms cover_6474444

def root_6474443 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6474443 : CoveredBy scale carrier boxes root_6474443 := by
  apply coveredBy_split_literal root_6474443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2445.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2445.covered
#print axioms cover_6474443

def root_6474438 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474438_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474438_right_fuel : Nat := 1
def small_6474438_right_count : Nat := 1
def small_6474438_right_encoded : String := "00000004"
theorem small_6474438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474438_right_root small_6474438_right_fuel small_6474438_right_count small_6474438_right_encoded = true := by
  decide +kernel
theorem small_6474438_right_covered : CoveredBy scale carrier boxes small_6474438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474438_right_root small_6474438_right_fuel small_6474438_right_count small_6474438_right_encoded small_6474438_right_checked

theorem cover_6474438 : CoveredBy scale carrier boxes root_6474438 := by
  apply coveredBy_split_literal root_6474438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474443 small_6474438_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474443
  · exact small_6474438_right_covered
#print axioms cover_6474438

def root_6474437 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474437_right_fuel : Nat := 17
def small_6474437_right_count : Nat := 85
def small_6474437_right_encoded : String := "12070108000000040CFD9BF70F350D00045489F91386AD02045489FB00000006138670FA045489FD000000090000000600000002000000011386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080C9A8700000000060F878CF70000000000000006000000040000000600000006138670FA045489FD00000009138670FC045489FF1386AD080C9A8700000000060F878CF700000000022A45790000000613E1C50200000001022A457B000000060000000500000004000000060000000300000002000000000F34D10000000000045489F91386AD02045489FB0000000700000007000000011386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D00000000070000000000000007000000040000000600000006138670FA045489FD000000070000000700000002"
theorem small_6474437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474437_right_root small_6474437_right_fuel small_6474437_right_count small_6474437_right_encoded = true := by
  decide +kernel
theorem small_6474437_right_covered : CoveredBy scale carrier boxes small_6474437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474437_right_root small_6474437_right_fuel small_6474437_right_count small_6474437_right_encoded small_6474437_right_checked

theorem cover_6474437 : CoveredBy scale carrier boxes root_6474437 := by
  apply coveredBy_split_literal root_6474437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474438 small_6474437_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474438
  · exact small_6474437_right_covered
#print axioms cover_6474437

def root_6474432 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474432_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6474432_right_fuel : Nat := 1
def small_6474432_right_count : Nat := 1
def small_6474432_right_encoded : String := "00000003"
theorem small_6474432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6474432_right_root small_6474432_right_fuel small_6474432_right_count small_6474432_right_encoded = true := by
  decide +kernel
theorem small_6474432_right_covered : CoveredBy scale carrier boxes small_6474432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6474432_right_root small_6474432_right_fuel small_6474432_right_count small_6474432_right_encoded small_6474432_right_checked

theorem cover_6474432 : CoveredBy scale carrier boxes root_6474432 := by
  apply coveredBy_split_literal root_6474432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474437 small_6474432_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474437
  · exact small_6474432_right_covered
#print axioms cover_6474432

def root_6473532 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473532_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473532_left_fuel : Nat := 28
def small_6473532_left_count : Nat := 427
def small_6473532_left_encoded : String := "12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0F350D080C9A87000F8750F7000000050000000000000005000000040F34D108000000040C9A87000F8750F7067ECE790000000500000009000000000F878CF700000000067ECE790000000512EA590200000001067ECE7B0000000512EA58FA000000090000000200000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A0F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080000000A0F878CFF00000004067ECE790000000500000009000000000000000A000000040F34D108000000040C9A8700000000090F878CF700000000000000090000000300000002000000011386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000050F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000005000000040F878CFF00000004022A45790000000513E1C50200000001067ECE7B0000000512EA58FA0AD3577D0000000510D100FC0B4D440000000009000000050000000300000002000000000F878CF7000000000C9A87080F8750FF022A45790000000513E1C50200000001067ECE7B000000050000000A000000040F878CFF00000004022A45790000000513E1C50200000001067ECE7B0000000512EA58FA0AD3577D0000000510D100FC0DE7CA000E5FD8F70DE7CA080E5FD8FF000000050000000400000005000000000E6014F7000000000000000A0000000300000002000000040F34D108000000040C9A87000F8750F7022A45790000000900000009000000000F878CF700000000022A457913E20102067ECE7B0000000512EA58FA00000009000000020000000113E1C50200000001067ECE7B12EA94FA000000020AD3577D0000000510D100FC0AD3577F00000005000000090000000312EA58FA000000090000000200000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A8700000000090000000A00000004000000090F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF022A457913E20102022A457B000000050000000A0000000113E1C50200000001022A457B13E200FA000000020AD3577D0000000510D100FC0B4D4400108010F7000000070000000010804CF7000000000000000A0000000313E1C4FA0AD3577D0000000610D100FC000000060000000300000002000000040F878CFF00000004022A45790000000900000009000000000F878CF7000000000C9A87080000000A0F878CFF00000004022A45790000000A13E1C50200000001022A457B13E200FA000000020AD3577D0000000910D100FC0DE7CA000E5FD8F70DE7CA080000000900000008000000000000000A000000030000000A000000040F34D108000000040C9A8700000000090F878CF700000000000000090000000300000002000000000F34D10000000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD0000000A0F34D0FC0CFD9BFF0F350D080000000A000000040F34D108000000040AD3577710D13D00067ECE79000000050000000A000000000000000A000000030000000A000000011386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030000000A0F34D0FC0CFD9BFF0F350D080C9A87080000000A0F878CFF000000040AD3577710D13D00022A45790000000513E1C50200000001067ECE7B000000050000000A000000000000000A000000040F34D108000000040AD3577710D13D00022A457913E20102067ECE7B000000050000000A0000000113E1C50200000001067ECE7B12EA94FA000000020AD3577D0000000510D100FC0AD3577F0000000510D1010800000004000000050000000312EA58FA0AD3577D0000000910D100FC0AD3577F10D13D080000000A000000040000000900000003000000020000000010D10100000000000000000A00000003138670FA0CFD9BFD0000000A0F34D0FC0CFD9BFF0F350D080000000A000000040000000A00000003000000020000000412070108000000040CFD9BF70F350D00045489F91386AD02000000090000000100000009000000000F34D10000000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD000000090F34D0FC000000070000000300000009000000011386710200000001045489FB1386ACFA000000020CFD9BFD000000090F34D0FC045489FF1386AD080AD35777000000090000000900000004000000070000000300000009"
theorem small_6473532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6473532_left_root small_6473532_left_fuel small_6473532_left_count small_6473532_left_encoded = true := by
  decide +kernel
theorem small_6473532_left_covered : CoveredBy scale carrier boxes small_6473532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6473532_left_root small_6473532_left_fuel small_6473532_left_count small_6473532_left_encoded small_6473532_left_checked

theorem cover_6473532 : CoveredBy scale carrier boxes root_6473532 := by
  apply coveredBy_split_literal root_6473532 small_6473532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6474432 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6473532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6474432
#print axioms cover_6473532

def root_6473527 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473527_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473527_right_fuel : Nat := 1
def small_6473527_right_count : Nat := 1
def small_6473527_right_encoded : String := "00000002"
theorem small_6473527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6473527_right_root small_6473527_right_fuel small_6473527_right_count small_6473527_right_encoded = true := by
  decide +kernel
theorem small_6473527_right_covered : CoveredBy scale carrier boxes small_6473527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6473527_right_root small_6473527_right_fuel small_6473527_right_count small_6473527_right_encoded small_6473527_right_checked

theorem cover_6473527 : CoveredBy scale carrier boxes root_6473527 := by
  apply coveredBy_split_literal root_6473527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6473532 small_6473527_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6473532
  · exact small_6473527_right_covered
#print axioms cover_6473527

def root_6472253 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6472253 : CoveredBy scale carrier boxes root_6472253 := by
  apply coveredBy_split_literal root_6472253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2436.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6473527 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2436.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6473527
#print axioms cover_6472253

def root_6472247 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6472247_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6472247_left_fuel : Nat := 1
def small_6472247_left_count : Nat := 1
def small_6472247_left_encoded : String := "00000001"
theorem small_6472247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6472247_left_root small_6472247_left_fuel small_6472247_left_count small_6472247_left_encoded = true := by
  decide +kernel
theorem small_6472247_left_covered : CoveredBy scale carrier boxes small_6472247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6472247_left_root small_6472247_left_fuel small_6472247_left_count small_6472247_left_encoded small_6472247_left_checked

theorem cover_6472247 : CoveredBy scale carrier boxes root_6472247 := by
  apply coveredBy_split_literal root_6472247 small_6472247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6472253 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6472247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6472253
#print axioms cover_6472247

def root_6470545 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6470545 : CoveredBy scale carrier boxes root_6470545 := by
  apply coveredBy_split_literal root_6470545 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2435.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6472247 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2435.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6472247
#print axioms cover_6470545

def root_6470540 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470540_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470540_right_fuel : Nat := 1
def small_6470540_right_count : Nat := 1
def small_6470540_right_encoded : String := "00000000"
theorem small_6470540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6470540_right_root small_6470540_right_fuel small_6470540_right_count small_6470540_right_encoded = true := by
  decide +kernel
theorem small_6470540_right_covered : CoveredBy scale carrier boxes small_6470540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6470540_right_root small_6470540_right_fuel small_6470540_right_count small_6470540_right_encoded small_6470540_right_checked

theorem cover_6470540 : CoveredBy scale carrier boxes root_6470540 := by
  apply coveredBy_split_literal root_6470540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6470545 small_6470540_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6470545
  · exact small_6470540_right_covered
#print axioms cover_6470540

def root_6470539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6470539 : CoveredBy scale carrier boxes root_6470539 := by
  apply coveredBy_split_literal root_6470539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6470540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2446.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6470540
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2446.covered
#print axioms cover_6470539

def root_6470533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470533_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470533_left_fuel : Nat := 1
def small_6470533_left_count : Nat := 1
def small_6470533_left_encoded : String := "00000004"
theorem small_6470533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6470533_left_root small_6470533_left_fuel small_6470533_left_count small_6470533_left_encoded = true := by
  decide +kernel
theorem small_6470533_left_covered : CoveredBy scale carrier boxes small_6470533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6470533_left_root small_6470533_left_fuel small_6470533_left_count small_6470533_left_encoded small_6470533_left_checked

theorem cover_6470533 : CoveredBy scale carrier boxes root_6470533 := by
  apply coveredBy_split_literal root_6470533 small_6470533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6470539 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6470533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6470539
#print axioms cover_6470533

def root_6468257 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6468257 : CoveredBy scale carrier boxes root_6468257 := by
  apply coveredBy_split_literal root_6468257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2434.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6470533 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2434.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6470533
#print axioms cover_6468257

def root_6468251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468251_left_fuel : Nat := 1
def small_6468251_left_count : Nat := 1
def small_6468251_left_encoded : String := "00000003"
theorem small_6468251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468251_left_root small_6468251_left_fuel small_6468251_left_count small_6468251_left_encoded = true := by
  decide +kernel
theorem small_6468251_left_covered : CoveredBy scale carrier boxes small_6468251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468251_left_root small_6468251_left_fuel small_6468251_left_count small_6468251_left_encoded small_6468251_left_checked

theorem cover_6468251 : CoveredBy scale carrier boxes root_6468251 := by
  apply coveredBy_split_literal root_6468251 small_6468251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468257 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468257
#print axioms cover_6468251

def root_6468250 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468250_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468250_right_fuel : Nat := 19
def small_6468250_right_count : Nat := 133
def small_6468250_right_encoded : String := "1151E8FD0A0001081151E8FF08A912F712073D0008A912F900000005120701020000000108A912FB00000005120700FA050000FC0000000A000000050000000200000000120701000000000008A912F90000000A12070102000000010000000A00000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D08050000FC0000000A00000005000000041207010800000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF9000000050F34D1020000000100000005000000000F34D100000000000000000A135D44FD00000005000000030000000200000001120701020000000108A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D08050000FC135D80FD000000030CFD9BF70F350D00045489F9000000051386710200000001045489FB0000000500000009000000000F34D100000000000000000A135D44FD0000000500000003000000041207010800000004000000090000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA0000000A0000000200000001120701020000000108A912FB12073CFA0000000208A912FF000000051207010800000004000000050000000A00000003"
theorem small_6468250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468250_right_root small_6468250_right_fuel small_6468250_right_count small_6468250_right_encoded = true := by
  decide +kernel
theorem small_6468250_right_covered : CoveredBy scale carrier boxes small_6468250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468250_right_root small_6468250_right_fuel small_6468250_right_count small_6468250_right_encoded small_6468250_right_checked

theorem cover_6468250 : CoveredBy scale carrier boxes root_6468250 := by
  apply coveredBy_split_literal root_6468250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468251 small_6468250_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468251
  · exact small_6468250_right_covered
#print axioms cover_6468250

def root_6468244 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468244_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468244_left_fuel : Nat := 1
def small_6468244_left_count : Nat := 1
def small_6468244_left_encoded : String := "00000002"
theorem small_6468244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468244_left_root small_6468244_left_fuel small_6468244_left_count small_6468244_left_encoded = true := by
  decide +kernel
theorem small_6468244_left_covered : CoveredBy scale carrier boxes small_6468244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468244_left_root small_6468244_left_fuel small_6468244_left_count small_6468244_left_encoded small_6468244_left_checked

theorem cover_6468244 : CoveredBy scale carrier boxes root_6468244 := by
  apply coveredBy_split_literal root_6468244 small_6468244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468250 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468250
#print axioms cover_6468244

def root_6468243 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468243_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468243_right_fuel : Nat := 21
def small_6468243_right_count : Nat := 193
def small_6468243_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912F712073D0008A912F900000005120701020000000108A912FD00000005120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF700000005000000080000000400000005000000050000000300000000120701000000000008A912F912073D0208A912FD00000005120700FC050000FA135D80FB0000000205000108135D44FF045489F7000000050000000A0000000400000005000000050000000300000001120701020000000108A912FD00000005120700FC050000FA00000008135D44FB00000008000000020000000300000004115224FF0000000408A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA000000060000000500000004000000060000000300000001120701020000000108A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA135D80FB000000020CFD9BF70F350D00045489F9000000051386710200000001045489FD0000000500000006000000000F34D1000000000000000008135D44FB0000000500000002000000041207010800000004000000060000000300000000120701000000000008A912F912073D0208A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF900000005000000080000000013867100000000000CFD9BF90F350D02045489FD00000005000000060000000100000008135D44FB000000050000000200000004000000060000000300000001120701020000000108A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08000000080000000400000006000000031151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F7000000051207010000000000000000050000000300000002"
theorem small_6468243_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468243_right_root small_6468243_right_fuel small_6468243_right_count small_6468243_right_encoded = true := by
  decide +kernel
theorem small_6468243_right_covered : CoveredBy scale carrier boxes small_6468243_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468243_right_root small_6468243_right_fuel small_6468243_right_count small_6468243_right_encoded small_6468243_right_checked

theorem cover_6468243 : CoveredBy scale carrier boxes root_6468243 := by
  apply coveredBy_split_literal root_6468243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468244 small_6468243_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468244
  · exact small_6468243_right_covered
#print axioms cover_6468243

def root_6468237 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468237_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468237_left_fuel : Nat := 1
def small_6468237_left_count : Nat := 1
def small_6468237_left_encoded : String := "00000001"
theorem small_6468237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468237_left_root small_6468237_left_fuel small_6468237_left_count small_6468237_left_encoded = true := by
  decide +kernel
theorem small_6468237_left_covered : CoveredBy scale carrier boxes small_6468237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468237_left_root small_6468237_left_fuel small_6468237_left_count small_6468237_left_encoded small_6468237_left_checked

theorem cover_6468237 : CoveredBy scale carrier boxes root_6468237 := by
  apply coveredBy_split_literal root_6468237 small_6468237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468243 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468243
#print axioms cover_6468237

def root_6466637 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6466637 : CoveredBy scale carrier boxes root_6466637 := by
  apply coveredBy_split_literal root_6466637 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2433.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6468237 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2433.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6468237
#print axioms cover_6466637

def root_6466631 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6466631_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6466631_left_fuel : Nat := 1
def small_6466631_left_count : Nat := 1
def small_6466631_left_encoded : String := "00000000"
theorem small_6466631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6466631_left_root small_6466631_left_fuel small_6466631_left_count small_6466631_left_encoded = true := by
  decide +kernel
theorem small_6466631_left_covered : CoveredBy scale carrier boxes small_6466631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6466631_left_root small_6466631_left_fuel small_6466631_left_count small_6466631_left_encoded small_6466631_left_checked

theorem cover_6466631 : CoveredBy scale carrier boxes root_6466631 := by
  apply coveredBy_split_literal root_6466631 small_6466631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6466637 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6466631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6466637
#print axioms cover_6466631

def root_6461973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6461973 : CoveredBy scale carrier boxes root_6461973 := by
  apply coveredBy_split_literal root_6461973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0447.root_6461974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6466631 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0447.cover_6461974
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6466631
#print axioms cover_6461973

def root_6503110 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6503110 : CoveredBy scale carrier boxes root_6503110 := by
  apply coveredBy_split_literal root_6503110 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2447.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2448.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2447.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2448.covered
#print axioms cover_6503110

def root_6461972 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6461972 : CoveredBy scale carrier boxes root_6461972 := by
  apply coveredBy_split_literal root_6461972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6461973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6503110 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6461973
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6503110
#print axioms cover_6461972

def root_6455934 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455934 : CoveredBy scale carrier boxes root_6455934 := by
  apply coveredBy_split_literal root_6455934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6455935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6461972 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6455935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6461972
#print axioms cover_6455934

def root_6507108 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6507108 : CoveredBy scale carrier boxes root_6507108 := by
  apply coveredBy_split_literal root_6507108 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2449.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2450.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2449.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2450.covered
#print axioms cover_6507108

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449
