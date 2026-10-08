import TaoBundleAssembly0332
import TaoBundleChunkBatch0436
import TaoBundleChunkBatch0437
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333
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
  apply coveredBy_split_literal root_4659838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0332.root_4659839 small_4659838_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0332.cover_4659839
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
  apply coveredBy_split_literal root_4659833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659838 small_4659833_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659838
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
  apply coveredBy_split_literal root_4659655 small_4659655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659833 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4659655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659833
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
  apply coveredBy_split_literal root_4659649 small_4659649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659655 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4659649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659655
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
  apply coveredBy_split_literal root_4659439 small_4659439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659649 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4659439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659649
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
  apply coveredBy_split_literal root_4659434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659439 small_4659434_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659439
  · exact small_4659434_right_covered
#print axioms cover_4659434

def root_4657022 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4657022 : CoveredBy scale carrier boxes root_4657022 := by
  apply coveredBy_split_literal root_4657022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1743.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4659434 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1743.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4659434
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
  apply coveredBy_split_literal root_4657017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657022 small_4657017_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657022
  · exact small_4657017_right_covered
#print axioms cover_4657017

def root_4657016 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4657016 : CoveredBy scale carrier boxes root_4657016 := by
  apply coveredBy_split_literal root_4657016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1745.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657017
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
  apply coveredBy_split_literal root_4657011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657016 small_4657011_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657016
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
  apply coveredBy_split_literal root_4657010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657011 small_4657010_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657011
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
  apply coveredBy_split_literal root_4657005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657010 small_4657005_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657010
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
  apply coveredBy_split_literal root_4657004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657005 small_4657004_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657005
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
  apply coveredBy_split_literal root_4656998 small_4656998_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4657004 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4656998_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4657004
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
  apply coveredBy_split_literal root_4656608 small_4656608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4656998 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4656608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4656998
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
  apply coveredBy_split_literal root_4656603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4656608 small_4656603_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4656608
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
  apply coveredBy_split_literal root_4656025 small_4656025_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4656603 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4656025_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4656603
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
  apply coveredBy_split_literal root_4656019 small_4656019_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4656025 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4656019_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4656025
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
  apply coveredBy_split_literal root_4655935 small_4655935_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4656019 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4655935_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4656019
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
  apply coveredBy_split_literal root_4655930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4655935 small_4655930_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4655935
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
  apply coveredBy_split_literal root_4655929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4655930 small_4655929_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4655930
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
  apply coveredBy_split_literal root_4655923 small_4655923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.root_4655929 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4655923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333.cover_4655929
#print axioms cover_4655923

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0333
