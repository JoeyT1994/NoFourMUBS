import TaoBundleAssembly0116
import TaoBundleChunkBatch0436
import TaoBundleChunkBatch0437
import TaoBundleChunkBatch0438
import TaoBundleChunkBatch0439
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117
def root_4659838 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659838_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659838_right_fuel : Nat := 18
def small_4659838_right_count : Nat := 163
def small_4659838_right_encoded : String := "128A410100000000078000FA128A7D050280010613D7B0FD022A457F13E201080DE7CA02000000060E601503064000F612FFAD0108C000FA0000000611FBE90500000002000000060000000000000006000000010000000413E1C508000000040DE7CA020000000A0E601503064000F612FFAD0108C000FA11FC25050000000A000000020000000A000000000000000A000000010000000313D7ECFD00000003022A457F13E201080DE7CA02000000060E601503064000F612FFAD0108C000FA0000000611FBE9050000000203C0010600000006000000060000000000000006000000010000000413E1C508000000040DE7CA020E5FD90300000001064000F612FFAD0108C000FA0000000611FBE9050000000203C00106000000060000000500000000000000060E601503064000F612FFAD0108C000FA11FC250503C0010613A510FD0115233F000000060000000A0000000313A54CFD000000030115233F0000000613F8590800000004000000050000000211FBE9050000000203C0010613A510FD0000000A00000003000000050000000012FF71010000000008C000FA11FC250503C00106000000060000000500000002000000050000000100000002128A4105000000020280010613D7B0FD022A457F13E201080DE7CA020E5FD90300000001000000060E601503064000F612FFAD01064000FA12FFAD05014001060000000613F614FD00000003033F67BF000000060000000A000000020000000A000000000000000A00000001000000040000000A0000000313D7ECFD00000003022A457F13E201080DE7CA02000000070E601503064000F612FFAD01000000070000000000000005000000010000000413E1C508000000040DE7CA020E5FD903000000010000000500000005"
theorem small_4659838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659838_right_root small_4659838_right_fuel small_4659838_right_count small_4659838_right_encoded = true := by
  decide +kernel
theorem small_4659838_right_covered : CoveredBy scale carrier boxes small_4659838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659838_right_root small_4659838_right_fuel small_4659838_right_count small_4659838_right_encoded small_4659838_right_checked

theorem cover_4659838 : CoveredBy scale carrier boxes root_4659838 := by
  apply coveredBy_split_literal root_4659838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4659839 small_4659838_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4659839
  · exact small_4659838_right_covered
#print axioms cover_4659838

def root_4659833 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659833_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659833_right_fuel : Nat := 1
def small_4659833_right_count : Nat := 1
def small_4659833_right_encoded : String := "00000001"
theorem small_4659833_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659833_right_root small_4659833_right_fuel small_4659833_right_count small_4659833_right_encoded = true := by
  decide +kernel
theorem small_4659833_right_covered : CoveredBy scale carrier boxes small_4659833_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659833_right_root small_4659833_right_fuel small_4659833_right_count small_4659833_right_encoded small_4659833_right_checked

theorem cover_4659833 : CoveredBy scale carrier boxes root_4659833 := by
  apply coveredBy_split_literal root_4659833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659838 small_4659833_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659838
  · exact small_4659833_right_covered
#print axioms cover_4659833

def root_4659655 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659655_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659655_left_fuel : Nat := 19
def small_4659655_left_count : Nat := 85
def small_4659655_left_encoded : String := "0F87510300000001078000F6128A7D01078000FA128A7D050280010613D7B0FD022A457F0000000613E1C508000000040B4D44020000000910804D0308C000F60000000911FBE9010000000008C000FA0000000600000009000000010000000313D7ECFD00000003022A457F0000000713E1C508000000040B4D440210801103000000010000000910804D0308C000F611FC250108C000FA11FC250503C0010613A510FD000000060000000313A54CFD000000030115233F000000060000000900000002000000090000000011FBE9010000000008C000FA0000000611FBE90500000002000000070000000100000002128A4105000000020280010613D7B0FD00000009000000030000000700000000128A410100000000078000FA128A7D0502800106000000060000000600000002128A4105000000020280010613D7B0FD022A457F000000060000000A0000000300000007"
theorem small_4659655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659655_left_root small_4659655_left_fuel small_4659655_left_count small_4659655_left_encoded = true := by
  decide +kernel
theorem small_4659655_left_covered : CoveredBy scale carrier boxes small_4659655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659655_left_root small_4659655_left_fuel small_4659655_left_count small_4659655_left_encoded small_4659655_left_checked

theorem cover_4659655 : CoveredBy scale carrier boxes root_4659655 := by
  apply coveredBy_split_literal root_4659655 small_4659655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659833 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4659655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659833
#print axioms cover_4659655

def root_4659649 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659649_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659649_left_fuel : Nat := 1
def small_4659649_left_count : Nat := 1
def small_4659649_left_encoded : String := "00000004"
theorem small_4659649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659649_left_root small_4659649_left_fuel small_4659649_left_count small_4659649_left_encoded = true := by
  decide +kernel
theorem small_4659649_left_covered : CoveredBy scale carrier boxes small_4659649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659649_left_root small_4659649_left_fuel small_4659649_left_count small_4659649_left_encoded small_4659649_left_checked

theorem cover_4659649 : CoveredBy scale carrier boxes root_4659649 := by
  apply coveredBy_split_literal root_4659649 small_4659649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659655 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4659649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659655
#print axioms cover_4659649

def root_4659439 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659439_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659439_left_fuel : Nat := 19
def small_4659439_left_count : Nat := 101
def small_4659439_left_encoded : String := "1386AD080C9A87020F87510300000001078000F6128A7D01078000FA000000060000000700000000000000060F878D03078000F6128A7D01078000FA128A7D050280010613D7B0FD067ECE7F0000000612EA5908000000040DE7CA020E5FD90300000001000000060E60150308C000F611FC2501000000050000000000000006000000010000000313D7ECFD00000003067ECE7F0000000712EA5908000000040DE7CA02000000070E60150308C000F611FC250108C000FA11FC250503C00106000000050000000600000002000000070000000011FBE9010000000008C000FA00000006000000070000000100000002128A4105000000020280010613D7B0FD067ECE7F0000000712EA5908000000040DE7CA02000000070E60150308C000F611FC250100000007000000000000000700000001000000030000000700000000128A410100000000078000FA128A7D0502800106000000060000000600000002128A4105000000020280010613D7B0FD067ECE7F0000000612EA5908000000040000000600000003000000070000000100000004"
theorem small_4659439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659439_left_root small_4659439_left_fuel small_4659439_left_count small_4659439_left_encoded = true := by
  decide +kernel
theorem small_4659439_left_covered : CoveredBy scale carrier boxes small_4659439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659439_left_root small_4659439_left_fuel small_4659439_left_count small_4659439_left_encoded small_4659439_left_checked

theorem cover_4659439 : CoveredBy scale carrier boxes root_4659439 := by
  apply coveredBy_split_literal root_4659439 small_4659439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659649 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4659439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659649
#print axioms cover_4659439

def root_4659434 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659434_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4659434_right_fuel : Nat := 1
def small_4659434_right_count : Nat := 1
def small_4659434_right_encoded : String := "00000001"
theorem small_4659434_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4659434_right_root small_4659434_right_fuel small_4659434_right_count small_4659434_right_encoded = true := by
  decide +kernel
theorem small_4659434_right_covered : CoveredBy scale carrier boxes small_4659434_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4659434_right_root small_4659434_right_fuel small_4659434_right_count small_4659434_right_encoded small_4659434_right_checked

theorem cover_4659434 : CoveredBy scale carrier boxes root_4659434 := by
  apply coveredBy_split_literal root_4659434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659439 small_4659434_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659439
  · exact small_4659434_right_covered
#print axioms cover_4659434

def root_4657022 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4657022 : CoveredBy scale carrier boxes root_4657022 := by
  apply coveredBy_split_literal root_4657022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1743.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4659434 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1743.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4659434
#print axioms cover_4657022

def root_4657017 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657017_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657017_right_fuel : Nat := 1
def small_4657017_right_count : Nat := 1
def small_4657017_right_encoded : String := "00000003"
theorem small_4657017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4657017_right_root small_4657017_right_fuel small_4657017_right_count small_4657017_right_encoded = true := by
  decide +kernel
theorem small_4657017_right_covered : CoveredBy scale carrier boxes small_4657017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4657017_right_root small_4657017_right_fuel small_4657017_right_count small_4657017_right_encoded small_4657017_right_checked

theorem cover_4657017 : CoveredBy scale carrier boxes root_4657017 := by
  apply coveredBy_split_literal root_4657017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657022 small_4657017_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657022
  · exact small_4657017_right_covered
#print axioms cover_4657017

def root_4657016 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4657016 : CoveredBy scale carrier boxes root_4657016 := by
  apply coveredBy_split_literal root_4657016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1745.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657017
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1745.covered
#print axioms cover_4657016

def root_4657011 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657011_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657011_right_fuel : Nat := 1
def small_4657011_right_count : Nat := 1
def small_4657011_right_encoded : String := "00000002"
theorem small_4657011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4657011_right_root small_4657011_right_fuel small_4657011_right_count small_4657011_right_encoded = true := by
  decide +kernel
theorem small_4657011_right_covered : CoveredBy scale carrier boxes small_4657011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4657011_right_root small_4657011_right_fuel small_4657011_right_count small_4657011_right_encoded small_4657011_right_checked

theorem cover_4657011 : CoveredBy scale carrier boxes root_4657011 := by
  apply coveredBy_split_literal root_4657011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657016 small_4657011_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657016
  · exact small_4657011_right_covered
#print axioms cover_4657011

def root_4657010 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657010_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657010_right_fuel : Nat := 19
def small_4657010_right_count : Nat := 209
def small_4657010_right_encoded : String := "135D45050000000205000106135D44FD0CFD9C030F34D10200000001045489FF1386AD08078000F6128A7D01028000FA13D7ED050280010613D7B0FD0AD357830000000810D13D02067ECE7F0000000712EA59080000000400000007000000010000000313D7ECFD000000030AD3578310D1010200000001067ECE7F0000000712EA59080000000400000007000000070000000213D7B1050000000202800106000000080000000700000000128A410100000000028000FA13D7ED050280010613D7B0FD0AD3578310D1010200000001067ECE7F0000000812EA5908000000040000000810D13D02067ECE7F0000000712EA590800000004064000F60000000700000007000000010000000313D7ECFD000000030AD3578310D1010200000001067ECE7F0000000700000005000000070000000213D7B105000000020280010613D7B0FD0AD3578310D101020000000100000008000000070000000300000005000000041386710800000004078000F6128A7D01028000FA13D7ED050280010613D7B0FD0AD357830000000810D13D02022A457F000000080000000A000000010000000313D7ECFD000000030AD3578310D1010200000001022A457F000000080000000510D13D02022A457F13E2010808C000F600000007000000050000000400000005000000010000000213D7B105000000020280010613D7B0FD0AD357830000000810D13D020000000A00000001000000030000000500000000128A410100000000028000FA13D7ED050280010613D7B0FD0AD3578310D10102000000010000000510D13D020000000A00000001000000030000000500000002000000050F350D02045489FF0000000713867108000000040C9A87020F87510300000001000000090F878D03078000F6128A7D01028000FA13D7ED050280010613D7B0FD022A457F00000007000000090000000313D7ECFD00000003022A457F0000000700000009000000020000000900000000128A410100000000028000FA13D7ED05028001060000000A000000050000000200000005000000010000000100000003135D80FD000000030CFD9C030F34D10200000001045489FF000000071386710800000004000000050F350D02045489FF0000000713867108000000040000000700000001"
theorem small_4657010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4657010_right_root small_4657010_right_fuel small_4657010_right_count small_4657010_right_encoded = true := by
  decide +kernel
theorem small_4657010_right_covered : CoveredBy scale carrier boxes small_4657010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4657010_right_root small_4657010_right_fuel small_4657010_right_count small_4657010_right_encoded small_4657010_right_checked

theorem cover_4657010 : CoveredBy scale carrier boxes root_4657010 := by
  apply coveredBy_split_literal root_4657010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657011 small_4657010_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657011
  · exact small_4657010_right_covered
#print axioms cover_4657010

def root_4657005 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657005_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657005_right_fuel : Nat := 1
def small_4657005_right_count : Nat := 1
def small_4657005_right_encoded : String := "00000000"
theorem small_4657005_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4657005_right_root small_4657005_right_fuel small_4657005_right_count small_4657005_right_encoded = true := by
  decide +kernel
theorem small_4657005_right_covered : CoveredBy scale carrier boxes small_4657005_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4657005_right_root small_4657005_right_fuel small_4657005_right_count small_4657005_right_encoded small_4657005_right_checked

theorem cover_4657005 : CoveredBy scale carrier boxes root_4657005 := by
  apply coveredBy_split_literal root_4657005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657010 small_4657005_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657010
  · exact small_4657005_right_covered
#print axioms cover_4657005

def root_4657004 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657004_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4657004_right_fuel : Nat := 21
def small_4657004_right_count : Nat := 213
def small_4657004_right_encoded : String := "135D450100000000050000FA135D810505000106135D44FD0CFD9C030F34D10200000001045489FF1386AD08028000F613D7ED01078000FA00000009128A4105000000020280010613D7B0FD0AD357830000000910D13D0200000006000000010000000313D7ECFD000000030AD357830000000910D13D0200000009000000010000000000000009000000041386710800000004028000F613D7ED01078000FA128A7D050000000900000002128A4105000000020280010613D7B0FD0AD3578310D10102000000010000000510D13D020000000A0000000100000003000000050000000013D7B10100000000078000FA00000009000000050F350D02045489FF1386AD080C9A8702000000060F878D03028000F613D7ED01078000FA00000006128A410500000002000000060000000000000006000000010000000413867108000000040C9A87020F87510300000001028000F613D7ED01078000FA00000006128A4105000000020000000600000000000000060F878D03028000F613D7ED01078000FA128A7D050280010613D7B0FD022A457F000000060000000A0000000313D7ECFD00000003022A457F0000000613E1C508000000040DE7CA02000000060000000500000002128A410500000002028001060000000A000000050000000013D7B10100000000078000FA0000000600000005000000010000000100000003135D80FD000000030CFD9C030F34D10200000001045489FF1386AD0800000009000000041386710800000004000000050F350D02045489FF1386AD080C9A8702000000070F878D03028000F60000000700000007000000010000000413867108000000040C9A87020F87510300000001028000F60000000800000005000000050000000100000002135D45050000000205000106135D44FD0CFD9C030F34D10200000001045489FF1386AD08028000F613D7ED01028000FA13D7ED050280010613D7B0FD0AD3578310D1010200000001067ECE7F000000090000000510D13D02067ECE7F00000006000000050000000100000003000000050000000200000005000000000000000500000004000000050F350D02045489FF0000000713867108000000040C9A87020000000A000000050000000100000003135D80FD000000030CFD9C030F34D102000000010000000500000005"
theorem small_4657004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4657004_right_root small_4657004_right_fuel small_4657004_right_count small_4657004_right_encoded = true := by
  decide +kernel
theorem small_4657004_right_covered : CoveredBy scale carrier boxes small_4657004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4657004_right_root small_4657004_right_fuel small_4657004_right_count small_4657004_right_encoded small_4657004_right_checked

theorem cover_4657004 : CoveredBy scale carrier boxes root_4657004 := by
  apply coveredBy_split_literal root_4657004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657005 small_4657004_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657005
  · exact small_4657004_right_covered
#print axioms cover_4657004

def root_4656998 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656998_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656998_left_fuel : Nat := 1
def small_4656998_left_count : Nat := 1
def small_4656998_left_encoded : String := "00000004"
theorem small_4656998_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4656998_left_root small_4656998_left_fuel small_4656998_left_count small_4656998_left_encoded = true := by
  decide +kernel
theorem small_4656998_left_covered : CoveredBy scale carrier boxes small_4656998_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4656998_left_root small_4656998_left_fuel small_4656998_left_count small_4656998_left_encoded small_4656998_left_checked

theorem cover_4656998 : CoveredBy scale carrier boxes root_4656998 := by
  apply coveredBy_split_literal root_4656998 small_4656998_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4657004 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4656998_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4657004
#print axioms cover_4656998

def root_4656608 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656608_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656608_left_fuel : Nat := 20
def small_4656608_left_count : Nat := 181
def small_4656608_left_encoded : String := "12073D08050000F6135D8101050000FA135D810505000106135D44FD0CFD9C030F34D102000000010CFD9BFF0F350D0800000009000000040F34D10800000004078000F6128A7D01078000FA00000009128A4105000000020280010613D7B0FD0AD357830000000910D13D020000000700000001000000030000000700000000128A410100000000078000FA00000009128A410500000002000000090F350D020CFD9BFF000000060F34D108000000040C9A8702000000060F878D03078000F6128A7D01078000FA00000006000000070000000000000006000000010000000100000003135D80FD000000030CFD9C030F34D102000000010CFD9BFF000000090F34D10800000004078000F6128A7D010000000900000000000000090F350D020CFD9BFF0F350D080C9A8702000000060000000A000000040F34D10800000004000000070000000100000002135D45050000000205000106135D44FD0CFD9C030F34D102000000010CFD9BFF0F350D080C9A87080F8750FF000000070000000400000007000000040F34D10800000004078000F600000007000000070F350D020CFD9BFF000000070F34D10800000004000000070000000100000003135D80FD000000030CFD9C030F34D102000000010CFD9BFF000000070F34D10800000004000000070F350D020CFD9BFF000000070F34D10800000004000000070000000100000000135D450100000000050000FA135D810505000106135D44FD0CFD9C030F34D102000000010CFD9BFF00000006000000090000000600000003135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9BFF000000060F34D10800000004000000060000000100000002135D45050000000205000106135D44FD0CFD9C030F34D102000000010CFD9BFF000000070F34D10800000004000000070F350D02000000060000000100000003135D80FD000000030CFD9C03000000070F350D02000000070000000100000004"
theorem small_4656608_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4656608_left_root small_4656608_left_fuel small_4656608_left_count small_4656608_left_encoded = true := by
  decide +kernel
theorem small_4656608_left_covered : CoveredBy scale carrier boxes small_4656608_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4656608_left_root small_4656608_left_fuel small_4656608_left_count small_4656608_left_encoded small_4656608_left_checked

theorem cover_4656608 : CoveredBy scale carrier boxes root_4656608 := by
  apply coveredBy_split_literal root_4656608 small_4656608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4656998 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4656608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4656998
#print axioms cover_4656608

def root_4656603 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656603_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656603_right_fuel : Nat := 1
def small_4656603_right_count : Nat := 1
def small_4656603_right_encoded : String := "00000001"
theorem small_4656603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4656603_right_root small_4656603_right_fuel small_4656603_right_count small_4656603_right_encoded = true := by
  decide +kernel
theorem small_4656603_right_covered : CoveredBy scale carrier boxes small_4656603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4656603_right_root small_4656603_right_fuel small_4656603_right_count small_4656603_right_encoded small_4656603_right_checked

theorem cover_4656603 : CoveredBy scale carrier boxes root_4656603 := by
  apply coveredBy_split_literal root_4656603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4656608 small_4656603_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4656608
  · exact small_4656603_right_covered
#print axioms cover_4656603

def root_4656025 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656025_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656025_left_fuel : Nat := 24
def small_4656025_left_count : Nat := 277
def small_4656025_left_encoded : String := "120701020000000108A912FF12073D08050000F6135D8101050000FA00000009135D45050000000205000106135D44FD04548A03000000091386AD020CFD9BFF0F350D0800000009000000040F34D10800000004078000F600000008000000090000000100000003135D80FD0000000304548A031386710200000001000000091386AD020CFD9BFF000000070F34D10800000004000000070000000100000000135D450100000000050000FA00000009135D45050000000205000106135D44FD04548A03000000091386AD020CFD9BFF0000000900000009000000010000000300000009000000041207010800000004050000F6135D8101050000FA135D810505000106135D44FD04548A031386710200000001045489FF000000081386710800000004078000F600000008000000091386AD02045489FF000000091386710800000004078000F6128A7D01078000FA128A7D050000000900000002128A4105000000020000000800000000128A410100000000078000FA00000009000000090000000100000003135D80FD0000000304548A031386710200000001045489FF000000091386710800000004078000F6128A7D01078000FA00000009128A41050000000207800106000000080000000500000000000000091386AD02045489FF1386AD08078000F6128A7D01000000090000000000000009000000041386710800000004078000F6128A7D01078000FA128A7D050780010600000009128A7CFD000000030000000900000002128A41050000000207800106128A40FD067ECE8312EA590200000001022A457F000000080000000512EA9502022A457F13E2010800000009000000040000000500000001000000030000000500000000128A410100000000078000FA00000009000000050000000100000002135D45050000000205000106135D44FD04548A031386710200000001000000081386AD02045489FF1386AD08078000F600000008128A410100000000028000FA0000000913D7B10500000002028001060000000800000005000000041386710800000004078000F600000008128A410100000000028000FA13D7ED0502800106000000080000000500000002000000050000000100000003135D80FD0000000304548A031386710200000001045489FF1386AD08078000F6128A7D0100000008000000000000000500000004000000051386AD02045489FF1386AD08078000F6128A7D01028000FA13D7ED0507800106128A40FD067ECE830000000812EA9502000000070000000100000003000000050000000200000005000000000000000500000004000000050000000100000000135D450100000000050000FA135D81050500010600000009135D80FD0000000304548A03000000090000000900000002135D45050000000205000106135D44FD04548A031386710200000001000000091386AD02045489FF1386AD08028000F613D7ED01028000FA000000090000000500000000000000050000000400000005000000010000000300000005"
theorem small_4656025_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4656025_left_root small_4656025_left_fuel small_4656025_left_count small_4656025_left_encoded = true := by
  decide +kernel
theorem small_4656025_left_covered : CoveredBy scale carrier boxes small_4656025_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4656025_left_root small_4656025_left_fuel small_4656025_left_count small_4656025_left_encoded small_4656025_left_checked

theorem cover_4656025 : CoveredBy scale carrier boxes root_4656025 := by
  apply coveredBy_split_literal root_4656025 small_4656025_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4656603 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4656025_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4656603
#print axioms cover_4656025

def root_4656019 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656019_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4656019_left_fuel : Nat := 1
def small_4656019_left_count : Nat := 1
def small_4656019_left_encoded : String := "00000004"
theorem small_4656019_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4656019_left_root small_4656019_left_fuel small_4656019_left_count small_4656019_left_encoded = true := by
  decide +kernel
theorem small_4656019_left_covered : CoveredBy scale carrier boxes small_4656019_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4656019_left_root small_4656019_left_fuel small_4656019_left_count small_4656019_left_encoded small_4656019_left_checked

theorem cover_4656019 : CoveredBy scale carrier boxes root_4656019 := by
  apply coveredBy_split_literal root_4656019 small_4656019_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4656025 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4656019_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4656025
#print axioms cover_4656019

def root_4655935 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655935_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655935_left_fuel : Nat := 13
def small_4655935_left_count : Nat := 39
def small_4655935_left_encoded : String := "1151E8FF08A9130312070102000000010000000912073D02050000F6135D8101050000FA135D810505000106000000050000000900000002135D45050000000205000106135D44FD0000000600000003135D80FD000000030500010800000009135D80FF000000040CFD9C03000000090000000600000000135D450100000000050000FA00000006135D450500000002000000060000000100000004"
theorem small_4655935_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4655935_left_root small_4655935_left_fuel small_4655935_left_count small_4655935_left_encoded = true := by
  decide +kernel
theorem small_4655935_left_covered : CoveredBy scale carrier boxes small_4655935_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4655935_left_root small_4655935_left_fuel small_4655935_left_count small_4655935_left_encoded small_4655935_left_checked

theorem cover_4655935 : CoveredBy scale carrier boxes root_4655935 := by
  apply coveredBy_split_literal root_4655935 small_4655935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4656019 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4655935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4656019
#print axioms cover_4655935

def root_4655930 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655930_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655930_right_fuel : Nat := 1
def small_4655930_right_count : Nat := 1
def small_4655930_right_encoded : String := "00000003"
theorem small_4655930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4655930_right_root small_4655930_right_fuel small_4655930_right_count small_4655930_right_encoded = true := by
  decide +kernel
theorem small_4655930_right_covered : CoveredBy scale carrier boxes small_4655930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4655930_right_root small_4655930_right_fuel small_4655930_right_count small_4655930_right_encoded small_4655930_right_checked

theorem cover_4655930 : CoveredBy scale carrier boxes root_4655930 := by
  apply coveredBy_split_literal root_4655930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4655935 small_4655930_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4655935
  · exact small_4655930_right_covered
#print axioms cover_4655930

def root_4655929 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655929_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655929_right_fuel : Nat := 22
def small_4655929_right_count : Nat := 199
def small_4655929_right_encoded : String := "115224FD000000030A0001081151E8FF08A9130312070102000000010000000912073D0208A912FD12073D06050000F60000000A0000000900000003000000090000000100000004115224FF0000000408A91303120701020000000108A912FD12073D0608A912FF12073D08050000F6135D8101050000FA0000000A135D45050000000204548A03000000070000000A00000000135D45010000000000000009000000041207010800000004050000F6135D8101050000FA135D810504548A0313867102000000010CFD9BFD0F350D06045489FF000000090000000500000003000000051386AD020CFD9BFD0F350D06045489FF1386AD080C9A8706000000090000000500000004000000050000000300000005000000010000000200000005000000000000000500000003120701060000000308A912FF000000070000000512073D0208A912FD12073D0608A912FF12073D08050000F6135D8101050000FA135D81050CFD9C030F34D102000000010000000A0000000A00000002135D4505000000020CFD9C030F34D102000000010CFD9BFD0F350D060CFD9BFF000000070000000700000003000000070F350D020CFD9BFD0F350D060CFD9BFF000000070000000700000003000000070000000100000000135D450100000000050000FA135D81050CFD9C030F34D10200000001000000090F350D02000000070000000100000002135D45050000000200000007000000041207010800000004050000F6135D8101050000FA135D81050CFD9C030F34D102000000010CFD9BFD0F350D06045489FF1386AD080C9A87060F8750FD00000007000000030000000500000004138671080000000400000005000000030F34D10600000003000000050F350D020CFD9BFD0F350D06045489FF0000000713867108000000040000000700000003000000070000000100000002135D4505000000020CFD9C030F34D10200000001000000050000000500000000135D450100000000050000FA135D81050CFD9C030F34D102000000010000000500000005000000020000000500000003120701060000000308A912FF0000000712070108000000040000000500000001"
theorem small_4655929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4655929_right_root small_4655929_right_fuel small_4655929_right_count small_4655929_right_encoded = true := by
  decide +kernel
theorem small_4655929_right_covered : CoveredBy scale carrier boxes small_4655929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4655929_right_root small_4655929_right_fuel small_4655929_right_count small_4655929_right_encoded small_4655929_right_checked

theorem cover_4655929 : CoveredBy scale carrier boxes root_4655929 := by
  apply coveredBy_split_literal root_4655929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4655930 small_4655929_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4655930
  · exact small_4655929_right_covered
#print axioms cover_4655929

def root_4655923 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655923_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4655923_left_fuel : Nat := 1
def small_4655923_left_count : Nat := 1
def small_4655923_left_encoded : String := "00000002"
theorem small_4655923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4655923_left_root small_4655923_left_fuel small_4655923_left_count small_4655923_left_encoded = true := by
  decide +kernel
theorem small_4655923_left_covered : CoveredBy scale carrier boxes small_4655923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4655923_left_root small_4655923_left_fuel small_4655923_left_count small_4655923_left_encoded small_4655923_left_checked

theorem cover_4655923 : CoveredBy scale carrier boxes root_4655923 := by
  apply coveredBy_split_literal root_4655923 small_4655923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4655929 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4655923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4655929
#print axioms cover_4655923

def root_4651967 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4651967 : CoveredBy scale carrier boxes root_4651967 := by
  apply coveredBy_split_literal root_4651967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4651968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4655923 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4651968
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4655923
#print axioms cover_4651967

def root_4651962 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651962_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651962_right_fuel : Nat := 1
def small_4651962_right_count : Nat := 1
def small_4651962_right_encoded : String := "00000001"
theorem small_4651962_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651962_right_root small_4651962_right_fuel small_4651962_right_count small_4651962_right_encoded = true := by
  decide +kernel
theorem small_4651962_right_covered : CoveredBy scale carrier boxes small_4651962_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651962_right_root small_4651962_right_fuel small_4651962_right_count small_4651962_right_encoded small_4651962_right_checked

theorem cover_4651962 : CoveredBy scale carrier boxes root_4651962 := by
  apply coveredBy_split_literal root_4651962 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4651967 small_4651962_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4651967
  · exact small_4651962_right_covered
#print axioms cover_4651962

def root_4651226 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651226_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651226_left_fuel : Nat := 29
def small_4651226_left_count : Nat := 347
def small_4651226_left_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA08A912FF000000051207010800000004050000F600000005135D450100000000000000060000000212073CFA0000000208A912FF12073D08050000F6135D81010500010200000005135D81030500010600000005135D80FD000000030CFD9C050000000600000006000000010000000000000006000000041207010800000004050000F6135D810105000102135D45030000000105000106135D44FD0000000600000003135D80FD000000030CFD9C050000000600000006135D810305000106135D44FD0CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF0000000613867108000000040C9A86FA000000060F875105000000020000000600000003135D80FD000000030CFD9C050F34D0FA00000006000000020F350CFA00000002045489FF0000000613867108000000040C9A86FA0F878D0500000006000000020F87510500000002078000F6128A7D010780010200000006128A7D030780010600000006000000060000000100000000000000060000000100000000135D4501000000000500010200000006135D810305000106135D44FD0000000600000003135D80FD000000030CFD9C0500000006000000060000000100000003115224FD000000030A0001081151E8FF0000000800000004115224FF0000000408A91305120700FA08A912FD12073D0608A912FF000000081207010800000004050000F6135D81010500010200000008135D81030000000800000001000000000000000800000003000000080000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D81010500010200000008135D81030CFD9C05000000080000000A000000010000000000000008000000041207010800000004050000F6135D81010500010200000008135D81030CFD9C050F34D0FA0CFD9BFD0F350D06045489FF00000006000000080000000300000008000000020F350CFA000000020CFD9BFD0F350D06045489FF000000070000000800000003000000070000000100000000135D4501000000000500010200000008135D81030CFD9C05000000080F350CFA00000002000000080000000100000003120701060000000300000008000000021151E905000000020A0001061151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912FF12073D08050000F6135D810105000102135D45030000000100000006135D8103050000FA135D810505000106000000060000000600000002135D450500000002050001060000000700000007000000010000000000000006000000041207010800000004050000F6135D81010500010200000007135D8103050000FA135D810505000106135D44FD045489FF000000061386710800000004078000F600000009128A4101000000000000000600000003135D80FD000000030000000700000002135D450500000002000000070000000100000000135D4501000000000500010200000007135D8103050000FA135D810505000106000000060000000700000002000000070000000100000003115224FD000000030A0001081151E8FF08A912FD12073D06050000F6135D810105000102000000080000000800000000000000060000000312070106000000030000000800000004115224FF0000000408A912FD12073D0608A912FF12073D08050000F6135D81010500010200000008135D8103050000FA00000008135D45050000000200000007000000010000000000000007000000041207010800000004050000F6135D81010500010200000007135D81030000000700000001000000000000000700000003120701060000000300000007"
theorem small_4651226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651226_left_root small_4651226_left_fuel small_4651226_left_count small_4651226_left_encoded = true := by
  decide +kernel
theorem small_4651226_left_covered : CoveredBy scale carrier boxes small_4651226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651226_left_root small_4651226_left_fuel small_4651226_left_count small_4651226_left_encoded small_4651226_left_checked

theorem cover_4651226 : CoveredBy scale carrier boxes root_4651226 := by
  apply coveredBy_split_literal root_4651226 small_4651226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4651962 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4651226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4651962
#print axioms cover_4651226

def root_4651220 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651220_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4651220_left_fuel : Nat := 1
def small_4651220_left_count : Nat := 1
def small_4651220_left_encoded : String := "00000000"
theorem small_4651220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4651220_left_root small_4651220_left_fuel small_4651220_left_count small_4651220_left_encoded = true := by
  decide +kernel
theorem small_4651220_left_covered : CoveredBy scale carrier boxes small_4651220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4651220_left_root small_4651220_left_fuel small_4651220_left_count small_4651220_left_encoded small_4651220_left_checked

theorem cover_4651220 : CoveredBy scale carrier boxes root_4651220 := by
  apply coveredBy_split_literal root_4651220 small_4651220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4651226 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4651220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4651226
#print axioms cover_4651220

def root_4636554 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4636554 : CoveredBy scale carrier boxes root_4636554 := by
  apply coveredBy_split_literal root_4636554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4636555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4651220 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4636555
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4651220
#print axioms cover_4636554

def root_4670989 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4670989 : CoveredBy scale carrier boxes root_4670989 := by
  apply coveredBy_split_literal root_4670989 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1747.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1748.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1747.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1748.covered
#print axioms cover_4670989

def root_4670983 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670983_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670983_left_fuel : Nat := 1
def small_4670983_left_count : Nat := 1
def small_4670983_left_encoded : String := "00000000"
theorem small_4670983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4670983_left_root small_4670983_left_fuel small_4670983_left_count small_4670983_left_encoded = true := by
  decide +kernel
theorem small_4670983_left_covered : CoveredBy scale carrier boxes small_4670983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4670983_left_root small_4670983_left_fuel small_4670983_left_count small_4670983_left_encoded small_4670983_left_checked

theorem cover_4670983 : CoveredBy scale carrier boxes root_4670983 := by
  apply coveredBy_split_literal root_4670983 small_4670983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4670989 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4670983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4670989
#print axioms cover_4670983

def root_4670191 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670191_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670191_left_fuel : Nat := 23
def small_4670191_left_count : Nat := 371
def small_4670191_left_encoded : String := "120700F608A91305120700FA08A912FD12073D0608A9130912070108000000040500010200000005135D8103000000050000000112073D0805000102135D45030000000104548A01000000051386ACF60000000004548A05000000051386ACFA000000020CFD9BFD000000050F34D106000000030CFD9C09000000050F350D080000000600000004135D810304548A01138670F604548A05000000051386ACFA000000020CFD9BFD0000000500000006000000001386ACF60000000004548A05138670FA0CFD9BFD000000050F34D106000000030CFD9C090000000500000006000000021386ACFA000000020CFD9BFD0F350D060CFD9C09000000050F350D080000000500000004000000030F34D106000000030CFD9C090F34D108000000040000000A00000006000000010000000400000003120701060000000308A913090000000A12073D0805000102135D45030000000104548A01138670F60000000A000000001386ACF60000000004548A050000000A0000000A135D810304548A01000000061386ACF60000000004548A05000000060000000600000001000000040000000212073CFA0000000208A912FD12073D0608A91309120701080000000405000102135D45030000000104548A01138670F60CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD000000090F34D1060000000300000007000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD000000050F34D106000000030000000A000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040000000900000009000000030F34D1060000000300000007135D810304548A01138670F60CFD9C050F34D0FA0CFD9BFD000000050000000A000000020F350CFA000000020CFD9BFD0F350D0604548A09000000051386AD080000000600000004000000030F34D106000000030000000A000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350D0600000005000000030000000A000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A86FA0F878D050C9A8706000000050000000A000000020F875105000000020C9A870600000007000000071386AD080C9A86FA0F878D050C9A87060F8750FD00000005000000030F878CFD00000003078001020000000900000006000000020F875105000000020000000900000004000000030F34D1060000000304548A090000000A1386AD080C9A86FA0000000A00000006000000040000000112073D0805000102135D45030000000104548A01138670F60CFD9C050F34D0FA0CFD9BFD0F350D0600000005000000030F34D1060000000300000006000000020F350CFA000000020CFD9BFD0000000900000006000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350D060CFD9C090000000500000009000000030F34D106000000030CFD9C090F34D10800000004028001020000000913D7ED03067ECE8100000006000000090000000100000009000000020F350CFA000000020CFD9BFD000000090F34D1060000000300000009135D810304548A01138670F60CFD9C050F34D0FA0CFD9BFD0F350D06000000060000000300000006000000020F350CFA0000000200000006000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350D060CFD9C090F34D108000000040C9A87060F8750FD00000005000000030F878CFD000000030000000600000006000000030F34D1060000000300000006000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D1080000000400000006000000060000000300000006000000010000000400000003120701060000000308A91309120701080000000405000102135D45030000000104548A01000000070000000A0000000A12073D0805000102135D45030000000104548A01000000061386ACF6000000000CFD9C050F34D0FA045489FD1386AD060CFD9C0900000008000000060000000300000006000000020F350CFA0000000200000006000000060000000400000000"
theorem small_4670191_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4670191_left_root small_4670191_left_fuel small_4670191_left_count small_4670191_left_encoded = true := by
  decide +kernel
theorem small_4670191_left_covered : CoveredBy scale carrier boxes small_4670191_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4670191_left_root small_4670191_left_fuel small_4670191_left_count small_4670191_left_encoded small_4670191_left_checked

theorem cover_4670191 : CoveredBy scale carrier boxes root_4670191 := by
  apply coveredBy_split_literal root_4670191 small_4670191_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4670983 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4670191_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4670983
#print axioms cover_4670191

def root_4670186 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670186_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4670186_right_fuel : Nat := 1
def small_4670186_right_count : Nat := 1
def small_4670186_right_encoded : String := "00000004"
theorem small_4670186_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4670186_right_root small_4670186_right_fuel small_4670186_right_count small_4670186_right_encoded = true := by
  decide +kernel
theorem small_4670186_right_covered : CoveredBy scale carrier boxes small_4670186_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4670186_right_root small_4670186_right_fuel small_4670186_right_count small_4670186_right_encoded small_4670186_right_checked

theorem cover_4670186 : CoveredBy scale carrier boxes root_4670186 := by
  apply coveredBy_split_literal root_4670186 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4670191 small_4670186_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4670191
  · exact small_4670186_right_covered
#print axioms cover_4670186

def root_4669580 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4669580_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4669580_left_fuel : Nat := 23
def small_4669580_left_count : Nat := 285
def small_4669580_left_encoded : String := "1151E9090000000408A91301120700F608A91305120700FA08A912FD12073D0605000102135D4503000000010500010800000006135D810904548A01000000051386ACF60000000004548A050000000500000006000000040000000600000003000000060000000212073CFA0000000208A912FD12073D0605000102135D4503000000010500010800000006135D810904548A01000000061386ACF6000000000CFD9C050000000600000006000000040000000600000003000000060000000012073CF60000000008A91305120700FA08A912FD12073D0605000102135D45030000000105000108135D4509000000040CFD9C010F34D0F6000000070000000000000007135D81090CFD9C010F34D0F604548A05138670FA00000007000000021386ACFA000000020CFD9BFD0F350D06000000070000000300000008000000000F350CF60000000004548A05000000071386ACFA000000020CFD9BFD000000070F34D106000000030C9A86F6000000080F875101000000000000000800000004135D81030500010800000007135D81090CFD9C010F34D0F6000000070000000000000007000000040000000100000003120701060000000305000102135D45030000000105000108135D4509000000040CFD9C01000000060F350CF60000000004548A050000000600000006135D81090CFD9C010F34D0F600000006000000000F350CF60000000004548A05138670FA045489FD1386AD060C9A86F60F878D0100000006000000000F875101000000000280010213D7B10300000001078001080000000700000008000000060000000300000006000000021386ACFA00000002045489FD1386AD060C9A86F6000000080F8751010000000000000005000000030000000500000004135D8103050001080000000600000006000000010000000212073CFA0000000208A912FD12073D0605000102135D45030000000105000108135D4509000000040CFD9C010F34D0F60CFD9C050000000600000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9BFD00000007000000080000000200000008135D81090CFD9C010F34D0F60CFD9C050F34D0FA0CFD9BFD0000000900000006000000020F350CFA0000000200000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9BFD0F350D06000000080000000300000008000000020F350CFA000000020000000800000004135D810305000108135D4509000000040CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C050F34D0FA00000007000000020F350CFA0000000200000008135D81090CFD9C010F34D0F60CFD9C050000000600000006000000000F350CF6000000000CFD9C050F34D0FA0CFD9BFD0000000700000008000000020F350CFA000000020CFD9BFD0F350D060C9A86F60F878D0100000006000000000F87510100000000000000080000000300000006000000040000000100000003120701060000000305000102135D45030000000105000108135D45090000000400000006135D81090CFD9C01000000060000000500000004135D81030000000600000001"
theorem small_4669580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4669580_left_root small_4669580_left_fuel small_4669580_left_count small_4669580_left_encoded = true := by
  decide +kernel
theorem small_4669580_left_covered : CoveredBy scale carrier boxes small_4669580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4669580_left_root small_4669580_left_fuel small_4669580_left_count small_4669580_left_encoded small_4669580_left_checked

theorem cover_4669580 : CoveredBy scale carrier boxes root_4669580 := by
  apply coveredBy_split_literal root_4669580 small_4669580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4670186 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4669580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4670186
#print axioms cover_4669580

def root_4669574 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4669574_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4669574_left_fuel : Nat := 1
def small_4669574_left_count : Nat := 1
def small_4669574_left_encoded : String := "00000003"
theorem small_4669574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4669574_left_root small_4669574_left_fuel small_4669574_left_count small_4669574_left_encoded = true := by
  decide +kernel
theorem small_4669574_left_covered : CoveredBy scale carrier boxes small_4669574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4669574_left_root small_4669574_left_fuel small_4669574_left_count small_4669574_left_encoded small_4669574_left_checked

theorem cover_4669574 : CoveredBy scale carrier boxes root_4669574 := by
  apply coveredBy_split_literal root_4669574 small_4669574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4669580 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4669574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4669580
#print axioms cover_4669574

def root_4667006 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4667006 : CoveredBy scale carrier boxes root_4667006 := by
  apply coveredBy_split_literal root_4667006 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1746.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4669574 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1746.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4669574
#print axioms cover_4667006

def root_4667001 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4667001_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4667001_right_fuel : Nat := 1
def small_4667001_right_count : Nat := 1
def small_4667001_right_encoded : String := "00000002"
theorem small_4667001_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4667001_right_root small_4667001_right_fuel small_4667001_right_count small_4667001_right_encoded = true := by
  decide +kernel
theorem small_4667001_right_covered : CoveredBy scale carrier boxes small_4667001_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4667001_right_root small_4667001_right_fuel small_4667001_right_count small_4667001_right_encoded small_4667001_right_checked

theorem cover_4667001 : CoveredBy scale carrier boxes root_4667001 := by
  apply coveredBy_split_literal root_4667001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4667006 small_4667001_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4667006
  · exact small_4667001_right_covered
#print axioms cover_4667001

def root_4667000 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4667000_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4667000_right_fuel : Nat := 26
def small_4667000_right_count : Nat := 411
def small_4667000_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E9090000000408A91301120700F60500010200000009135D8103050000FA0000000600000006000000010000000012073CF600000000050001020000000A135D81030000000A000000011152250908A91301120700F608A9130912070108000000040500010200000009135D8103050000FA00000009000000090000000112073D080500010200000009135D8103050000FA135D8105050001060000000600000006000000020000000600000001000000040000000012073CF60000000008A9130912070108000000040500010200000009135D8103050000FA135D810505000106135D44FD0CFD9C010F34D0F600000009000000000000000900000003135D80FD000000030CFD9C010F34D0F600000009000000000F350CF60000000004548A091386710800000004000000090000000900000002000000090000000112073D0805000102135D450300000001050000FA0000000900000009135D8103050000FA135D810505000106135D44FD0CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C090F34D10800000004000000090000000900000003135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C090F34D10800000004000000090000000900000002135D45050000000205000106135D44FD00000009000000030000000900000001000000040000000400000003115224FD000000030A0001081151E9090000000408A91301120700F6000000060000000012073CF60000000008A912FD12073D0605000102135D450300000001050000FA135D81050500010800000008135D81090CFD9C010000000900000005000000040000000200000008135D8103050000FA135D810505000108000000060000000600000002000000060000000100000003000000051152250908A91301120700F608A912FD12073D0608A91309120701080000000405000102135D450300000001050000FA0000000900000009135D8103050000FA135D810504548A01138670F60CFD9BFD0000000900000006000000001386ACF6000000000CFD9BFD000000090F34D106000000030000000600000002135D450500000002000000060000000112073D0805000102135D45030000000100000009000000060000000400000003120701060000000308A91309120701080000000400000007000000060000000012073CF60000000008A912FD12073D0608A91309120701080000000405000102135D450300000001050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BFD000000090000000700000002135D4505000000020CFD9C010000000900000009135D8103050000FA135D81050CFD9C010F34D0F60CFD9BFD0F350D0604548A0913867108000000040C9A8706000000070000000700000009000000030F34D1060000000300000007000000000F350CF6000000000CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010000000700000000000000071386AD080C9A86F6000000090F875101000000000C9A87060F8750FD00000009000000030000000500000004000000030F34D106000000030000000700000002135D4505000000020CFD9C010F34D0F60CFD9BFD000000090F34D1060000000300000006000000000F350CF6000000000CFD9BFD00000009000000050000000112073D0805000102135D450300000001050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BFD000000090000000800000002135D4505000000020CFD9C010000000900000009135D8103050000FA135D81050CFD9C010F34D0F60CFD9BFD0F350D060CFD9C090F34D1080000000400000006000000060000000300000006000000000F350CF6000000000CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F6000000090F87510100000000000000050F350D080C9A86F6000000090F875101000000000000000500000004000000030F34D106000000030000000500000002135D4505000000020CFD9C010F34D0F600000006000000000F350CF6000000000CFD9BFD0F350D060CFD9C090F34D1080000000400000005000000050000000300000005000000010000000400000003120701060000000308A9130912070108000000040500010200000007135D8103050000FA00000007000000050000000112073D080500010200000008000000050000000400000004"
theorem small_4667000_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4667000_right_root small_4667000_right_fuel small_4667000_right_count small_4667000_right_encoded = true := by
  decide +kernel
theorem small_4667000_right_covered : CoveredBy scale carrier boxes small_4667000_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4667000_right_root small_4667000_right_fuel small_4667000_right_count small_4667000_right_encoded small_4667000_right_checked

theorem cover_4667000 : CoveredBy scale carrier boxes root_4667000 := by
  apply coveredBy_split_literal root_4667000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4667001 small_4667000_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4667001
  · exact small_4667000_right_covered
#print axioms cover_4667000

def root_4666994 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666994_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666994_left_fuel : Nat := 1
def small_4666994_left_count : Nat := 1
def small_4666994_left_encoded : String := "00000001"
theorem small_4666994_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4666994_left_root small_4666994_left_fuel small_4666994_left_count small_4666994_left_encoded = true := by
  decide +kernel
theorem small_4666994_left_covered : CoveredBy scale carrier boxes small_4666994_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4666994_left_root small_4666994_left_fuel small_4666994_left_count small_4666994_left_encoded small_4666994_left_checked

theorem cover_4666994 : CoveredBy scale carrier boxes root_4666994 := by
  apply coveredBy_split_literal root_4666994 small_4666994_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4667000 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4666994_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4667000
#print axioms cover_4666994

def root_4684531 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4684531 : CoveredBy scale carrier boxes root_4684531 := by
  apply coveredBy_split_literal root_4684531 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1751.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1752.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1751.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1752.covered
#print axioms cover_4684531

def root_4684525 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4684525_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4684525_left_fuel : Nat := 1
def small_4684525_left_count : Nat := 1
def small_4684525_left_encoded : String := "00000000"
theorem small_4684525_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4684525_left_root small_4684525_left_fuel small_4684525_left_count small_4684525_left_encoded = true := by
  decide +kernel
theorem small_4684525_left_covered : CoveredBy scale carrier boxes small_4684525_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4684525_left_root small_4684525_left_fuel small_4684525_left_count small_4684525_left_encoded small_4684525_left_checked

theorem cover_4684525 : CoveredBy scale carrier boxes root_4684525 := by
  apply coveredBy_split_literal root_4684525 small_4684525_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4684531 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4684525_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4684531
#print axioms cover_4684525

def root_4683603 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683603_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683603_left_fuel : Nat := 24
def small_4683603_left_count : Nat := 441
def small_4683603_left_encoded : String := "10804D010DE7CA020E5FD903000000010B4D43FA10804D050640010612FF70FD011523490000000513F895080BF3E576000000051008ED01000000000D412882000000050EFA4D030000000500000001000000040000000312FFACFD000000030115234913F85908000000040BF3E5760000000A1008ED01000000000D4128820000000A0000000A13F895080BF3E576100929010D4128820EFA1103000000010BF3E57A000000051008ED05000000020000000A0EFA4D030BF3E57A000000051008ED05000000020000000A00000001000000001008ED01000000000D4128820EFA1103000000010BF3E57A100929050000000A000000021008ED050000000206E0010612C7E4FD019FB4690000000500000009000000030000000A0EFA4D030BF3E57A0000000A1008ED050000000206E0010612C7E4FD019FB4690000000A13EF35080BA094B6000000061045C901000000000D9479420EAEAD03000000010000000A0000000600000004000000030000000A00000001000000040000000210801105000000020640010612FF70FD0115234913F85908000000040BF3E576100929010D412882000000050EFA4D030000000500000001000000001008ED01000000000D4128820EFA1103000000010AA6A27A00000005000000090EFA4D030AA6A27A10EDAD05000000050000000210ED71050000000205A00106133134FD0000000900000003133170FD00000003008A922913FDF908000000040BA094B6000000091045C9010000000000000009000000090000000113F895080BF3E576100929010D412882000000090EFA4D030000000900000001000000001008ED01000000000D412882000000090EFA4D030AA6A27A10EDAD0505A00106133134FD0000000500000003133170FD00000003019FB46913EEF908000000040BA094B6000000051045C901000000000D947942000000050EAEE903000000060000000100000006000000020000000900000001000000040000000312FFACFD000000030115234913F85908000000040BF3E576100929010D4128820EFA110300000001000000090000000A000000001008ED01000000000D4128820EFA1103000000010AA6A27A0000000A000000090EFA4D030AA6A27A0000000A10ED71050000000206E0010612C7E4FD008A92290000000700000009000000030000000A0000000113F895080BF3E576100929010D412882000000090EFA4D030AA6A27A10EDAD0500000006000000020000000600000001000000001008ED01000000000D4128820EFA110300000001000000090EFA4D030AA6A27A10EDAD0506E0010612C7E4FD019FB46913EEF908000000040BA094B6000000061045C901000000000D9479420000000900000006000000060000000312C820FD00000003019FB4690000000A000000060000000210ED7105000000020000000900000001000000040E6015030B4D43FA10804D050640010612FF70FD011523490000000513F895080DAED883000000050E9661020000000500000001000000040000000312FFACFD000000030115234913F85908000000040DAED8830E962502000000010000000A0000000A13F895080DAED8830E962502000000010BF3E576000000061008ED01000000000BF3E57A00000007000000060E9661020BF3E576100929010BF3E57A0000000500000006000000001008ED01000000000BF3E57A0000000A1008ED050000000206E00106000000060000000A00000001000000040000000210801105000000020640010612FF70FD0115234913F85908000000040DAED8830E962502000000010BF3E576000000061008ED01000000000AA6A27A10EDAD0505A00106000000050000000600000002000000060E9661020BF3E576100929010AA6A27A0000000500000006000000001008ED01000000000AA6A27A10EDAD0505A0010600000005133170FD00000003008A92290000000513FE35080E0776C30000000500000006000000040000000210ED71050000000205A00106133134FD008A9229000000050000000600000003133170FD00000003008A922913FDF908000000040E0776C3000000060000000A000000060000000113F895080DAED883000000060E9661020BF3E576000000061008ED01000000000AA6A27A10EDAD0500000006000000020000000600000001000000040000000312FFACFD000000030115234913F85908000000040DAED8830E962502000000010BF3E576000000061008ED01000000000AA6A27A0000000A000000060E9661020BF3E5760000000A1008ED01000000000AA6A27A0000000A10ED71050000000206E001060000000A0000000A0000000113F895080DAED883000000060E9661020BF3E576000000061008ED01000000000AA6A27A10EDAD0500000006000000020000000600000001000000040000000100000000"
theorem small_4683603_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4683603_left_root small_4683603_left_fuel small_4683603_left_count small_4683603_left_encoded = true := by
  decide +kernel
theorem small_4683603_left_covered : CoveredBy scale carrier boxes small_4683603_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4683603_left_root small_4683603_left_fuel small_4683603_left_count small_4683603_left_encoded small_4683603_left_checked

theorem cover_4683603 : CoveredBy scale carrier boxes root_4683603 := by
  apply coveredBy_split_literal root_4683603 small_4683603_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4684525 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_4683603_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4684525
#print axioms cover_4683603

def root_4683597 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683597_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683597_left_fuel : Nat := 1
def small_4683597_left_count : Nat := 1
def small_4683597_left_encoded : String := "00000004"
theorem small_4683597_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4683597_left_root small_4683597_left_fuel small_4683597_left_count small_4683597_left_encoded = true := by
  decide +kernel
theorem small_4683597_left_covered : CoveredBy scale carrier boxes small_4683597_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4683597_left_root small_4683597_left_fuel small_4683597_left_count small_4683597_left_encoded small_4683597_left_checked

theorem cover_4683597 : CoveredBy scale carrier boxes root_4683597 := by
  apply coveredBy_split_literal root_4683597 small_4683597_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4683603 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4683597_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4683603
#print axioms cover_4683597

def root_4683596 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683596_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683596_right_fuel : Nat := 23
def small_4683596_right_count : Nat := 447
def small_4683596_right_encoded : String := "13E201080B4D43F610804D010DE7CA020E5FD903000000010B4D43FA10804D050640010612FF70FD033F67C913BBF508000000040BF3E5761009290100000005000000001008ED01000000000D4128820EFA1103000000010BF3E57A000000051008ED05000000020000000900000007000000070000000312FFACFD00000003033F67C913BBF508000000040BF3E576100929010D4128820EFA1103000000010BF3E57A100929050000000500000002000000090EFA4D030BF3E57A1009290500000006000000020000000600000001000000001008ED01000000000D4128820EFA1103000000010BF3E57A1009290506E0010612C7E4FD000000070000000312C820FD0000000302B4D6A90000000A00000007000000021008ED0500000002000000090EFA4D030BF3E57A1009290500000007000000021008ED050000000206E0010600000006000000060000000113BC31080BF3E5761009290100000006000000001008ED01000000000D4128820EFA1103000000010BF3E57A000000070000000600000007000000040000000210801105000000020640010612FF70FD033F67C913BBF508000000040BF3E576000000091008ED010000000000000009000000060000000312FFACFD00000003033F67C913BBF508000000040BF3E576000000091008ED01000000000D412882000000090EFA4D030000000600000001000000060E6015030B4D43FA10804D05064001060000000712FFACFD00000003033F67C913BBF508000000040DAED883000000060E9661020BF3E576000000061008ED0100000000000000070000000100000006000000021080110500000002064001060000000600000006000000010000000010801101000000000DE7CA020E5FD903000000010B4D43FA10804D050640010612FF70FD033F67C913BBF508000000040AA6A27610EDAD010D4128820EFA1103000000010BF3E57A000000071008ED050000000205A0010600000007133170FD0000000300000007000000070000000010ED71010000000000000007000000070000000312FFACFD00000003033F67C913BBF508000000040AA6A27610EDAD010D4128820EFA1103000000010BF3E57A1009290506E001060000000700000008000000021008ED050000000206E0010612C7E4FD02B4D6A9000000080000000800000003000000080EFA4D030BF3E57A1009290500000007000000021008ED050000000206E0010612C7E4FD000000070000000312C820FD0000000302B4D6A913D0D108000000040AF9F336000000080000000800000006000000010000000010ED7101000000000D4128820EFA110300000001000000080EFA4D030BF3E57A000000071008ED050000000206E0010600000007000000080000000113BC31080AA6A27610EDAD010D4128820EFA1103000000010BF3E57A000000071008ED050000000200000009000000070000000010ED71010000000000000007000000040000000210801105000000020640010612FF70FD033F67C913BBF508000000040AA6A27610EDAD010D412882000000090EFA4D030AA6A27A10EDAD0505A0010600000007133170FD0000000302B4D6A913D0D108000000040AF9F3360000000600000007000000060000000200000009000000010000000010ED7101000000000D4128820EFA110300000001000000090EFA4D030AA6A27A10EDAD05000000070000000210ED710500000002000000090000000113BC31080AA6A2760000000910ED7101000000000D4128820000000900000007000000040000000312FFACFD00000003033F67C913BBF508000000040AA6A27610EDAD010D412882000000090EFA4D030AA6A27A10EDAD0506E001060000000612C820FD00000003000000060000000200000006000000010000000010ED7101000000000D4128820EFA110300000001000000080EFA4D030AA6A27A10EDAD0506E0010612C7E4FD02B4D6A9000000080000000700000003000000080000000210ED710500000002000000050000000113BC31080AA6A27610EDAD010D41288200000009000000060000000010ED7101000000000D4128820000000900000005000000040E6015030B4D43FA10804D05064001060000000712FFACFD00000003033F67C913BBF508000000040DAED883000000070E9661020AA6A276000000070000000700000001000000070000000210801105000000020640010612FF70FD033F67C913BBF508000000040DAED8830E96250200000001000000060E9661020AA6A27610EDAD01000000060000000010ED7101000000000000000700000001000000060000000312FFACFD00000003033F67C913BBF508000000040DAED8830E96250200000001000000060E9661020AA6A27610EDAD01000000060000000010ED7101000000000AA6A27A10EDAD0506E001060000000600000005000000020000000500000001000000060000000100000004"
theorem small_4683596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4683596_right_root small_4683596_right_fuel small_4683596_right_count small_4683596_right_encoded = true := by
  decide +kernel
theorem small_4683596_right_covered : CoveredBy scale carrier boxes small_4683596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4683596_right_root small_4683596_right_fuel small_4683596_right_count small_4683596_right_encoded small_4683596_right_checked

theorem cover_4683596 : CoveredBy scale carrier boxes root_4683596 := by
  apply coveredBy_split_literal root_4683596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4683597 small_4683596_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4683597
  · exact small_4683596_right_covered
#print axioms cover_4683596

def root_4683591 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683591_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683591_right_fuel : Nat := 1
def small_4683591_right_count : Nat := 1
def small_4683591_right_encoded : String := "00000003"
theorem small_4683591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4683591_right_root small_4683591_right_fuel small_4683591_right_count small_4683591_right_encoded = true := by
  decide +kernel
theorem small_4683591_right_covered : CoveredBy scale carrier boxes small_4683591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4683591_right_root small_4683591_right_fuel small_4683591_right_count small_4683591_right_encoded small_4683591_right_checked

theorem cover_4683591 : CoveredBy scale carrier boxes root_4683591 := by
  apply coveredBy_split_literal root_4683591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4683596 small_4683591_right_root coord3 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4683596
  · exact small_4683591_right_covered
#print axioms cover_4683591

def root_4683590 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4683590 : CoveredBy scale carrier boxes root_4683590 := by
  apply coveredBy_split_literal root_4683590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4683591 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1753.root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4683591
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1753.covered
#print axioms cover_4683590

def root_4683584 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683584_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4683584_left_fuel : Nat := 1
def small_4683584_left_count : Nat := 1
def small_4683584_left_encoded : String := "00000002"
theorem small_4683584_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4683584_left_root small_4683584_left_fuel small_4683584_left_count small_4683584_left_encoded = true := by
  decide +kernel
theorem small_4683584_left_covered : CoveredBy scale carrier boxes small_4683584_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4683584_left_root small_4683584_left_fuel small_4683584_left_count small_4683584_left_encoded small_4683584_left_checked

theorem cover_4683584 : CoveredBy scale carrier boxes root_4683584 := by
  apply coveredBy_split_literal root_4683584 small_4683584_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4683590 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4683584_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4683590
#print axioms cover_4683584

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117
