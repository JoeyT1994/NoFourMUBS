import TaoBundleAssembly0684
import TaoBundleAssembly0685
import TaoBundleAssembly0686
import TaoBundleChunkBatch0953
import TaoBundleChunkBatch0954
import TaoBundleChunkBatch0955
import TaoBundleChunkBatch0956
import TaoBundleChunkBatch0957
import TaoBundleChunkBatch0958
import TaoBundleChunkBatch0959
import TaoBundleChunkBatch0960
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687
def root_10204963 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10204963_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10204963_left_fuel : Nat := 22
def small_10204963_left_count : Nat := 289
def small_10204963_left_encoded : String := "0F875101000000000C9A87020F87510300000001067ECE8512EA58FA022A457D13E20106067ECE8900000009000000090000000313E1C50600000003067ECE8912EA58FE0B4D440000000009000000090000000412EA94FE000000040B4D440000000009000000090000000212EA94FA00000002022A457D13E20106067ECE8900000009000000090000000313E1C50600000003067ECE8912EA58FE0B4D440000000009000000090000000412EA94FE000000040B4D440000000009000000090F878D03067ECE8512EA58FA022A457D13E20106067ECE8912EA58FE0B4D44000000000710804D010DE7CA020E5FD9030000000100000007000000070000000000000004000000070000000313E1C50600000003067ECE8912EA58FE0B4D440010801101000000000DE7CA020E5FD90300000001000000090000000710804D010DE7CA020E5FD903000000010569AC451340D4FA0115233D0000000713F85906000000030569AC49000000090000000700000002134110FA000000020115233D0000000913F85906000000030569AC4900000009000000090E6015030569AC4500000007134110FA000000020115233D0000000713F85906000000030569AC490000000A0000000700000001000000000000000412EA94FE000000040B4D440010801101000000000000000710804D010DE7CA020E5FD903000000010569AC4500000007134110FA000000020115233D0000000713F85906000000030793F0C9000000090000000500000007000000000000000212EA94FA00000002022A457D13E20106067ECE8912EA58FE0B4D440010801101000000000DE7CA02000000090000000710804D010DE7CA020E5FD90300000001000000090E6015030793F0C5128220FA00000007000000020000000800000001000000000000000412EA94FE000000040B4D440010801101000000000000000710804D010DE7CA020E5FD903000000010000000900000007000000000000000313E1C50600000003067ECE8912EA58FE0B4D440010801101000000000DE7CA020E5FD90300000001000000090E601503000000080000000110804D010DE7CA020E5FD903000000010793F0C5128220FA0115233D0000000913F85906000000030569AC4900000009000000090000000212825CFA000000020115233D0000000913F85906000000030569AC4900000008000000050E6015030793F0C5128220FA0115233D0000000813F85906000000030569AC4900000008134110FE0000000400000008000000020000000800000001000000000000000412EA94FE000000040B4D440010801101000000000DE7CA020E5FD90300000001000000090E6015030793F0C500000007000000080000000110804D010DE7CA020E5FD903000000010793F0C5128220FA0115233D000000090000000500000002000000050E6015030793F0C5128220FA0115233D0000000713F85906000000030793F0C9128220FE0DAED8830E96250200000001000000050000000500000004000000050000000212825CFA000000020115233D13F895060793F0C900000008000000050000000300000005000000010000000000000001"
theorem small_10204963_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10204963_left_root small_10204963_left_fuel small_10204963_left_count small_10204963_left_encoded = true := by
  decide +kernel
theorem small_10204963_left_covered : CoveredBy scale carrier boxes small_10204963_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10204963_left_root small_10204963_left_fuel small_10204963_left_count small_10204963_left_encoded small_10204963_left_checked

theorem cover_10204963 : CoveredBy scale carrier boxes root_10204963 := by
  apply coveredBy_split_literal root_10204963 small_10204963_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.root_10205565 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10204963_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.cover_10205565
#print axioms cover_10204963

def root_10204957 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10204957_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10204957_left_fuel : Nat := 1
def small_10204957_left_count : Nat := 1
def small_10204957_left_encoded : String := "00000004"
theorem small_10204957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10204957_left_root small_10204957_left_fuel small_10204957_left_count small_10204957_left_encoded = true := by
  decide +kernel
theorem small_10204957_left_covered : CoveredBy scale carrier boxes small_10204957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10204957_left_root small_10204957_left_fuel small_10204957_left_count small_10204957_left_encoded small_10204957_left_checked

theorem cover_10204957 : CoveredBy scale carrier boxes root_10204957 := by
  apply coveredBy_split_literal root_10204957 small_10204957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10204963 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_10204957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10204963
#print axioms cover_10204957

def root_10203765 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10203765 : CoveredBy scale carrier boxes root_10203765 := by
  apply coveredBy_split_literal root_10203765 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3824.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10204957 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3824.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10204957
#print axioms cover_10203765

def root_10203759 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203759_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203759_left_fuel : Nat := 1
def small_10203759_left_count : Nat := 1
def small_10203759_left_encoded : String := "00000003"
theorem small_10203759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10203759_left_root small_10203759_left_fuel small_10203759_left_count small_10203759_left_encoded = true := by
  decide +kernel
theorem small_10203759_left_covered : CoveredBy scale carrier boxes small_10203759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10203759_left_root small_10203759_left_fuel small_10203759_left_count small_10203759_left_encoded small_10203759_left_checked

theorem cover_10203759 : CoveredBy scale carrier boxes root_10203759 := by
  apply coveredBy_split_literal root_10203759 small_10203759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10203765 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10203759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10203765
#print axioms cover_10203759

def root_10203373 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203373_left_fuel : Nat := 26
def small_10203373_left_count : Nat := 185
def small_10203373_left_encoded : String := "1386AD0604548A09138670FE0C9A87000F875101000000000C9A87020F87510300000001000000060F878D03067ECE8512EA58FA000000050000000212EA94FA00000002067ECE7D0000000612EA590600000003022A458900000006000000090000000100000006000000041386ACFE000000040C9A87000F875101000000000C9A87020F87510300000001000000090F878D03067ECE850000000712EA94FA00000002067ECE7D0000000712EA590600000003067ECE8912EA58FE0B4D440000000007000000090000000400000007000000010F878D010C9A87020F87510300000001067ECE8512EA58FA067ECE7D0000000612EA590600000003067ECE890000000612EA94FE000000040DE7CA00000000090000000600000002000000060F878D03067ECE8512EA58FA067ECE7D12EA9506000000070000000312EA590600000003067ECE8912EA58FE0DE7CA000E5FD90100000000000000070E6015010DE7CA02000000060E6015030569AC45000000050000000600000001000000000000000412EA94FE000000040DE7CA00000000070E6015010DE7CA020E5FD903000000010569AC45000000070000000600000007000000000000000212EA94FA00000002067ECE7D12EA9506067ECE890000000612EA94FE000000040DE7CA0000000007000000060000000312EA590600000003067ECE8912EA58FE0DE7CA000E5FD901000000000DE7CA02000000060E6015030793F0C5000000070000000600000001000000060000000412EA94FE000000040DE7CA000E5FD901000000000DE7CA020E5FD9030000000100000009000000070E6015010DE7CA020E5FD90300000001000000060E6015030793F0C5128220FA0569AC3D000000071340D506000000030793F0C900000006000000070000000212825CFA000000020569AC3D000000061340D506000000030793F0C90000000612825CFE000000040DAED8810E9625000000000000000006000000070000000100000000000000010000000000000003"
theorem small_10203373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10203373_left_root small_10203373_left_fuel small_10203373_left_count small_10203373_left_encoded = true := by
  decide +kernel
theorem small_10203373_left_covered : CoveredBy scale carrier boxes small_10203373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10203373_left_root small_10203373_left_fuel small_10203373_left_count small_10203373_left_encoded small_10203373_left_checked

theorem cover_10203373 : CoveredBy scale carrier boxes root_10203373 := by
  apply coveredBy_split_literal root_10203373 small_10203373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10203759 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_10203373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10203759
#print axioms cover_10203373

def root_10203367 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203367_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10203367_left_fuel : Nat := 1
def small_10203367_left_count : Nat := 1
def small_10203367_left_encoded : String := "00000002"
theorem small_10203367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10203367_left_root small_10203367_left_fuel small_10203367_left_count small_10203367_left_encoded = true := by
  decide +kernel
theorem small_10203367_left_covered : CoveredBy scale carrier boxes small_10203367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10203367_left_root small_10203367_left_fuel small_10203367_left_count small_10203367_left_encoded small_10203367_left_checked

theorem cover_10203367 : CoveredBy scale carrier boxes root_10203367 := by
  apply coveredBy_split_literal root_10203367 small_10203367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10203373 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_10203367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10203373
#print axioms cover_10203367

def root_10201805 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10201805 : CoveredBy scale carrier boxes root_10201805 := by
  apply coveredBy_split_literal root_10201805 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3823.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10203367 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3823.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10203367
#print axioms cover_10201805

def root_10201800 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10201800_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10201800_right_fuel : Nat := 1
def small_10201800_right_count : Nat := 1
def small_10201800_right_encoded : String := "00000001"
theorem small_10201800_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10201800_right_root small_10201800_right_fuel small_10201800_right_count small_10201800_right_encoded = true := by
  decide +kernel
theorem small_10201800_right_covered : CoveredBy scale carrier boxes small_10201800_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10201800_right_root small_10201800_right_fuel small_10201800_right_count small_10201800_right_encoded small_10201800_right_checked

theorem cover_10201800 : CoveredBy scale carrier boxes root_10201800 := by
  apply coveredBy_split_literal root_10201800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10201805 small_10201800_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10201805
  · exact small_10201800_right_covered
#print axioms cover_10201800

def root_10198598 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10198598 : CoveredBy scale carrier boxes root_10198598 := by
  apply coveredBy_split_literal root_10198598 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.root_10198599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10201800 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.cover_10198599
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10201800
#print axioms cover_10198598

def root_10198593 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10198593_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10198593_right_fuel : Nat := 1
def small_10198593_right_count : Nat := 1
def small_10198593_right_encoded : String := "00000000"
theorem small_10198593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10198593_right_root small_10198593_right_fuel small_10198593_right_count small_10198593_right_encoded = true := by
  decide +kernel
theorem small_10198593_right_covered : CoveredBy scale carrier boxes small_10198593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10198593_right_root small_10198593_right_fuel small_10198593_right_count small_10198593_right_encoded small_10198593_right_checked

theorem cover_10198593 : CoveredBy scale carrier boxes root_10198593 := by
  apply coveredBy_split_literal root_10198593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10198598 small_10198593_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10198598
  · exact small_10198593_right_covered
#print axioms cover_10198593

def root_10189117 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10189117 : CoveredBy scale carrier boxes root_10189117 := by
  apply coveredBy_split_literal root_10189117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.root_10189118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10198593 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0686.cover_10189118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10198593
#print axioms cover_10189117

def root_10189112 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10189112_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10189112_right_fuel : Nat := 1
def small_10189112_right_count : Nat := 1
def small_10189112_right_encoded : String := "00000004"
theorem small_10189112_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10189112_right_root small_10189112_right_fuel small_10189112_right_count small_10189112_right_encoded = true := by
  decide +kernel
theorem small_10189112_right_covered : CoveredBy scale carrier boxes small_10189112_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10189112_right_root small_10189112_right_fuel small_10189112_right_count small_10189112_right_encoded small_10189112_right_checked

theorem cover_10189112 : CoveredBy scale carrier boxes root_10189112 := by
  apply coveredBy_split_literal root_10189112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10189117 small_10189112_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10189117
  · exact small_10189112_right_covered
#print axioms cover_10189112

def root_10189111 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10189111 : CoveredBy scale carrier boxes root_10189111 := by
  apply coveredBy_split_literal root_10189111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10189112 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3828.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10189112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3828.covered
#print axioms cover_10189111

def root_10189105 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10189105_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10189105_left_fuel : Nat := 1
def small_10189105_left_count : Nat := 1
def small_10189105_left_encoded : String := "00000003"
theorem small_10189105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10189105_left_root small_10189105_left_fuel small_10189105_left_count small_10189105_left_encoded = true := by
  decide +kernel
theorem small_10189105_left_covered : CoveredBy scale carrier boxes small_10189105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10189105_left_root small_10189105_left_fuel small_10189105_left_count small_10189105_left_encoded small_10189105_left_checked

theorem cover_10189105 : CoveredBy scale carrier boxes root_10189105 := by
  apply coveredBy_split_literal root_10189105 small_10189105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10189111 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10189105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10189111
#print axioms cover_10189105

def root_10188701 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188701_left_fuel : Nat := 21
def small_10188701_left_count : Nat := 195
def small_10188701_left_encoded : String := "12073D0608A91309120700FE0CFD9C010F34D100000000000CFD9C030F34D1020000000104548A05000000051386ACFA000000020CFD9BFD000000050F34D1060000000304548A09000000051386ACFE000000040AD3578110D10100000000000AD35783000000050000000610D13D000AD3578310D10102000000010000000710D13D02067ECE85000000050000000600000001000000000F350D0204548A05138670FA000000050000000200000006000000010F350D000CFD9C030F34D1020000000104548A05000000071386ACFA000000020CFD9BFD000000070F34D1060000000304548A09138670FE0000000500000004000000070F350D0204548A05138670FA0CFD9BFD000000050F34D1060000000304548A090000000500000007000000021386ACFA000000020CFD9BFD000000060F34D1060000000304548A09000000061386ACFE000000040C9A87000F87510100000000000000070000000600000001000000000000000412073CFE000000040CFD9C010F34D100000000000CFD9C030F34D1020000000104548A05000000071386ACFA000000020CFD9BFD000000070F34D106000000030CFD9C090F34D0FE0AD3578110D10100000000000AD3578310D10102000000010000000710D13D02067ECE850000000712EA94FA000000020AD3577D000000060000000A000000010000000700000004000000070F350D0204548A05138670FA0CFD9BFD000000070000000A000000021386ACFA000000020CFD9BFD0F350D060CFD9C090000000600000007000000030F34D106000000030CFD9C090F34D0FE0C9A87020000000A0F878D030AD357810000000A10D13D00067ECE850000000712EA94FA000000020AD3577D000000060000000A0000000000000001000000040000000A000000010F350D000CFD9C030F34D10200000001000000070F350D0204548A05000000071386ACFA000000020CFD9BFD000000070F34D106000000030CFD9C090F34D0FE0C9A8700000000070F878D010C9A87020F875103000000010000000900000007000000000000000400000007000000010000000000000003"
theorem small_10188701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10188701_left_root small_10188701_left_fuel small_10188701_left_count small_10188701_left_encoded = true := by
  decide +kernel
theorem small_10188701_left_covered : CoveredBy scale carrier boxes small_10188701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10188701_left_root small_10188701_left_fuel small_10188701_left_count small_10188701_left_encoded small_10188701_left_checked

theorem cover_10188701 : CoveredBy scale carrier boxes root_10188701 := by
  apply coveredBy_split_literal root_10188701 small_10188701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10189105 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10188701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10189105
#print axioms cover_10188701

def root_10188696 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188696_right_fuel : Nat := 1
def small_10188696_right_count : Nat := 1
def small_10188696_right_encoded : String := "00000002"
theorem small_10188696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10188696_right_root small_10188696_right_fuel small_10188696_right_count small_10188696_right_encoded = true := by
  decide +kernel
theorem small_10188696_right_covered : CoveredBy scale carrier boxes small_10188696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10188696_right_root small_10188696_right_fuel small_10188696_right_count small_10188696_right_encoded small_10188696_right_checked

theorem cover_10188696 : CoveredBy scale carrier boxes root_10188696 := by
  apply coveredBy_split_literal root_10188696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10188701 small_10188696_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10188701
  · exact small_10188696_right_covered
#print axioms cover_10188696

def root_10218453 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10218453 : CoveredBy scale carrier boxes root_10218453 := by
  apply coveredBy_split_literal root_10218453 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3830.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3831.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3830.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3831.covered
#print axioms cover_10218453

def root_10218447 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10218447_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10218447_left_fuel : Nat := 1
def small_10218447_left_count : Nat := 1
def small_10218447_left_encoded : String := "00000003"
theorem small_10218447_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10218447_left_root small_10218447_left_fuel small_10218447_left_count small_10218447_left_encoded = true := by
  decide +kernel
theorem small_10218447_left_covered : CoveredBy scale carrier boxes small_10218447_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10218447_left_root small_10218447_left_fuel small_10218447_left_count small_10218447_left_encoded small_10218447_left_checked

theorem cover_10218447 : CoveredBy scale carrier boxes root_10218447 := by
  apply coveredBy_split_literal root_10218447 small_10218447_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10218453 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10218447_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10218453
#print axioms cover_10218447

def root_10216747 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10216747 : CoveredBy scale carrier boxes root_10216747 := by
  apply coveredBy_split_literal root_10216747 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3829.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10218447 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3829.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10218447
#print axioms cover_10216747

def root_10216741 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10216741_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10216741_left_fuel : Nat := 1
def small_10216741_left_count : Nat := 1
def small_10216741_left_encoded : String := "00000002"
theorem small_10216741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10216741_left_root small_10216741_left_fuel small_10216741_left_count small_10216741_left_encoded = true := by
  decide +kernel
theorem small_10216741_left_covered : CoveredBy scale carrier boxes small_10216741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10216741_left_root small_10216741_left_fuel small_10216741_left_count small_10216741_left_encoded small_10216741_left_checked

theorem cover_10216741 : CoveredBy scale carrier boxes root_10216741 := by
  apply coveredBy_split_literal root_10216741 small_10216741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10216747 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10216741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10216747
#print axioms cover_10216741

def root_10188695 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10188695 : CoveredBy scale carrier boxes root_10188695 := by
  apply coveredBy_split_literal root_10188695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10188696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10216741 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10188696
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10216741
#print axioms cover_10188695

def root_10188690 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188690_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10188690_right_fuel : Nat := 1
def small_10188690_right_count : Nat := 1
def small_10188690_right_encoded : String := "00000001"
theorem small_10188690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10188690_right_root small_10188690_right_fuel small_10188690_right_count small_10188690_right_encoded = true := by
  decide +kernel
theorem small_10188690_right_covered : CoveredBy scale carrier boxes small_10188690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10188690_right_root small_10188690_right_fuel small_10188690_right_count small_10188690_right_encoded small_10188690_right_checked

theorem cover_10188690 : CoveredBy scale carrier boxes root_10188690 := by
  apply coveredBy_split_literal root_10188690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10188695 small_10188690_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10188695
  · exact small_10188690_right_covered
#print axioms cover_10188690

def root_10186168 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10186168 : CoveredBy scale carrier boxes root_10186168 := by
  apply coveredBy_split_literal root_10186168 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3818.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10188690 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3818.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10188690
#print axioms cover_10186168

def root_10186163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10186163_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10186163_right_fuel : Nat := 1
def small_10186163_right_count : Nat := 1
def small_10186163_right_encoded : String := "00000000"
theorem small_10186163_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10186163_right_root small_10186163_right_fuel small_10186163_right_count small_10186163_right_encoded = true := by
  decide +kernel
theorem small_10186163_right_covered : CoveredBy scale carrier boxes small_10186163_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10186163_right_root small_10186163_right_fuel small_10186163_right_count small_10186163_right_encoded small_10186163_right_checked

theorem cover_10186163 : CoveredBy scale carrier boxes root_10186163 := by
  apply coveredBy_split_literal root_10186163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10186168 small_10186163_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10186168
  · exact small_10186163_right_covered
#print axioms cover_10186163

def root_10179601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10179601 : CoveredBy scale carrier boxes root_10179601 := by
  apply coveredBy_split_literal root_10179601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0685.root_10179602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10186163 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0685.cover_10179602
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10186163
#print axioms cover_10179601

def root_10179596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179596_right_fuel : Nat := 1
def small_10179596_right_count : Nat := 1
def small_10179596_right_encoded : String := "00000004"
theorem small_10179596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179596_right_root small_10179596_right_fuel small_10179596_right_count small_10179596_right_encoded = true := by
  decide +kernel
theorem small_10179596_right_covered : CoveredBy scale carrier boxes small_10179596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179596_right_root small_10179596_right_fuel small_10179596_right_count small_10179596_right_encoded small_10179596_right_checked

theorem cover_10179596 : CoveredBy scale carrier boxes root_10179596 := by
  apply coveredBy_split_literal root_10179596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179601 small_10179596_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179601
  · exact small_10179596_right_covered
#print axioms cover_10179596

def root_10179595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10179595 : CoveredBy scale carrier boxes root_10179595 := by
  apply coveredBy_split_literal root_10179595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3832.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3832.covered
#print axioms cover_10179595

def root_10179589 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179589_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179589_left_fuel : Nat := 1
def small_10179589_left_count : Nat := 1
def small_10179589_left_encoded : String := "00000003"
theorem small_10179589_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179589_left_root small_10179589_left_fuel small_10179589_left_count small_10179589_left_encoded = true := by
  decide +kernel
theorem small_10179589_left_covered : CoveredBy scale carrier boxes small_10179589_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179589_left_root small_10179589_left_fuel small_10179589_left_count small_10179589_left_encoded small_10179589_left_checked

theorem cover_10179589 : CoveredBy scale carrier boxes root_10179589 := by
  apply coveredBy_split_literal root_10179589 small_10179589_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179595 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10179589_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179595
#print axioms cover_10179589

def root_10179059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179059_left_fuel : Nat := 25
def small_10179059_left_count : Nat := 253
def small_10179059_left_encoded : String := "1151E8FD0A0000FE1152250908A91301120701000000000008A91303120701020000000108A91305120700FA08A9130900000005000000070000000212073CFA0000000208A91309120700FE000000060000000412073CFE0000000405000106135D44FD04548A01138671000000000004548A0313867102000000010CFD9C050000000700000006000000061386AD0004548A031386710200000001000000071386AD020CFD9C050000000700000006000000010000000000000003135D80FD0000000304548A01138671000000000004548A0313867102000000010CFD9C050F34D0FA0CFD9C090000000500000007000000020F350CFA000000020CFD9C09000000060F350CFE000000040C9A86FA0F878D050C9A86FE0000000700000007000000020F875105000000020C9A86FE00000006000000081386AD020CFD9C050F34D0FA0000000A0000000200000006000000011386AD0004548A0313867102000000010CFD9C05000000070F350CFA000000020CFD9C0900000008000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C09000000060F350CFE000000040C9A86FA000000060F8751050000000200000006000000010000000012073D0208A91305120700FA08A91309000000050000000A00000002000000060000000112073D0008A91303120701020000000108A913050000000712073CFA0000000208A91309120700FE00000008000000040000000712073D0208A91305120700FA08A91309120700FE0000000500000004000000070000000212073CFA0000000208A91309120700FE000000060000000412073CFE0000000405000106135D44FD0CFD9C010F34D10000000000000000060000000700000003135D80FD000000030CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9C050000000700000006000000060F350D000CFD9C030F34D10200000001000000070F350D020CFD9C05000000070000000600000001000000000000000100000000000000041151E9090000000408A91301120701000000000008A91303120701020000000108A913050000000712073CFA0000000205000106135D44FD050000FE000000070000000A00000003135D80FD00000003050000FE135D810904548A010000000A00000007000000040000000A12073D020000000A0000000112073D0008A9130312070102000000010000000712073D0208A913050000000712073CFA0000000205000106135D44FD050000FE000000070000000A00000003135D80FD00000003050000FE135D81090CFD9C010F34D100000000000CFD9C030000000A000000090000000700000004135D4509000000040CFD9C010000000A00000007000000010000000000000003"
theorem small_10179059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179059_left_root small_10179059_left_fuel small_10179059_left_count small_10179059_left_encoded = true := by
  decide +kernel
theorem small_10179059_left_covered : CoveredBy scale carrier boxes small_10179059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179059_left_root small_10179059_left_fuel small_10179059_left_count small_10179059_left_encoded small_10179059_left_checked

theorem cover_10179059 : CoveredBy scale carrier boxes root_10179059 := by
  apply coveredBy_split_literal root_10179059 small_10179059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179589 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10179059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179589
#print axioms cover_10179059

def root_10179054 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179054_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179054_right_fuel : Nat := 1
def small_10179054_right_count : Nat := 1
def small_10179054_right_encoded : String := "00000002"
theorem small_10179054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179054_right_root small_10179054_right_fuel small_10179054_right_count small_10179054_right_encoded = true := by
  decide +kernel
theorem small_10179054_right_covered : CoveredBy scale carrier boxes small_10179054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179054_right_root small_10179054_right_fuel small_10179054_right_count small_10179054_right_encoded small_10179054_right_checked

theorem cover_10179054 : CoveredBy scale carrier boxes root_10179054 := by
  apply coveredBy_split_literal root_10179054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179059 small_10179054_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179059
  · exact small_10179054_right_covered
#print axioms cover_10179054

def root_10179053 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10179053 : CoveredBy scale carrier boxes root_10179053 := by
  apply coveredBy_split_literal root_10179053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179054 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3833.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179054
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3833.covered
#print axioms cover_10179053

def root_10179048 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179048_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10179048_right_fuel : Nat := 1
def small_10179048_right_count : Nat := 1
def small_10179048_right_encoded : String := "00000001"
theorem small_10179048_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10179048_right_root small_10179048_right_fuel small_10179048_right_count small_10179048_right_encoded = true := by
  decide +kernel
theorem small_10179048_right_covered : CoveredBy scale carrier boxes small_10179048_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10179048_right_root small_10179048_right_fuel small_10179048_right_count small_10179048_right_encoded small_10179048_right_checked

theorem cover_10179048 : CoveredBy scale carrier boxes root_10179048 := by
  apply coveredBy_split_literal root_10179048 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179053 small_10179048_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179053
  · exact small_10179048_right_covered
#print axioms cover_10179048

def root_10177076 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10177076 : CoveredBy scale carrier boxes root_10177076 := by
  apply coveredBy_split_literal root_10177076 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3815.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10179048 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3815.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10179048
#print axioms cover_10177076

def root_10177071 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10177071_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10177071_right_fuel : Nat := 1
def small_10177071_right_count : Nat := 1
def small_10177071_right_encoded : String := "00000000"
theorem small_10177071_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10177071_right_root small_10177071_right_fuel small_10177071_right_count small_10177071_right_encoded = true := by
  decide +kernel
theorem small_10177071_right_covered : CoveredBy scale carrier boxes small_10177071_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10177071_right_root small_10177071_right_fuel small_10177071_right_count small_10177071_right_encoded small_10177071_right_checked

theorem cover_10177071 : CoveredBy scale carrier boxes root_10177071 := by
  apply coveredBy_split_literal root_10177071 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10177076 small_10177071_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10177076
  · exact small_10177071_right_covered
#print axioms cover_10177071

def root_10173247 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10173247 : CoveredBy scale carrier boxes root_10173247 := by
  apply coveredBy_split_literal root_10173247 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.root_10173248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10177071 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0684.cover_10173248
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10177071
#print axioms cover_10173247

def root_10170819 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10170819 : CoveredBy scale carrier boxes root_10170819 := by
  apply coveredBy_split_literal root_10170819 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3812.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10173247 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3812.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10173247
#print axioms cover_10170819

def root_10228768 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10228768 : CoveredBy scale carrier boxes root_10228768 := by
  apply coveredBy_split_literal root_10228768 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3835.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3836.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3835.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3836.covered
#print axioms cover_10228768

def root_10227004 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10227004 : CoveredBy scale carrier boxes root_10227004 := by
  apply coveredBy_split_literal root_10227004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3834.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10228768 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3834.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10228768
#print axioms cover_10227004

def root_10170818 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10170818 : CoveredBy scale carrier boxes root_10170818 := by
  apply coveredBy_split_literal root_10170818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10170819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10227004 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10170819
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10227004
#print axioms cover_10170818

def root_10236851 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236851_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236851_left_fuel : Nat := 25
def small_10236851_left_count : Nat := 387
def small_10236851_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A91303120701020000000108A913050000000912073CFA0000000208A912FF00000009120700FE000000090000000412073D0208A91305120700FA08A912FF00000007120700FE00000009000000040000000212073CFA0000000208A912FF00000007120700FE00000007000000040000000112073D0008A91303120701020000000108A91305120700FA08A912FF00000009120700FE00000009000000040000000212073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D10000000000000000090F350D0004548A0313867102000000010CFD9C05000000090F350CFA000000020CFD9BFF000000070F34D0FE00000007000000041386AD020CFD9C050F34D0FA00000009000000020F350CFA00000002000000070000000100000000135D81070CFD9C010F34D10000000000000000070F350D0004548A0313867102000000010CFD9C050F34D0FA00000009000000020F350CFA00000002000000071386AD0200000007000000010000000000000003120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D0004548A031386710200000001000000091386AD020CFD9C050F34D0FA00000009000000020F350CFA00000002045489FF00000007000000080000000100000000135D81070CFD9C010F34D10000000000000000090F350D0004548A0313867102000000010CFD9C05000000090F350CFA00000002045489FF00000007000000081386AD020CFD9C050F34D0FA00000009000000020F350CFA00000002000000070000000100000000000000030000000412073D0208A91305120700FA08A912FF12073CFE0000000405000106135D4507000000030CFD9C010F34D10000000000000000070F350D000CFD9C030F34D10200000001000000090F350D02000000070000000100000000135D81070CFD9C01000000070F350D000CFD9C030F34D1020000000104548A050000000700000007000000070000000000000003120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D0204548A05138670FA00000009000000021386ACFA00000002045489FF00000007138670FE0C9A87000F875101000000000C9A8702000000070000000900000007000000040000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D0204548A05138670FA045489FF00000007138670FE0C9A87000F875101000000000C9A8702000000070000000900000009000000040000000200000007000000010000000000000003000000040000000212073CFA0000000208A912FF12073CFE0000000405000106135D4507000000030CFD9C01000000070F350D00000000070000000000000007120700FE05000106135D4507000000030CFD9C010F34D10000000000000000070F350D000CFD9C030F34D102000000010CFD9C050F34D0FA045489FF00000007138670FE0000000900000004000000020F350CFA00000002000000070F350D02000000070000000100000000135D81070CFD9C01000000070F350D000CFD9C030F34D102000000010CFD9C0500000007000000070000000700000000000000030000000400000001000000001151E8FF08A91301120701000000000008A9130312070102000000010000000812073D0208A9130500000007000000080000000112073D0008A91303120701020000000108A91305120700FA05000106135D450700000003000000090000000A0000000212073CFA0000000205000106135D450700000003050000FE135D80FF000000040CFD9C01000000070F350D0004548A0313867102000000010000000A0000000700000000135D44FF0CFD9C010F34D10000000000000000070F350D000000000A0000000000000004135D8107050000FE00000007000000080000000312073D0208A91305120700FA05000106135D450700000003050000FE0000000700000007000000070000000212073CFA0000000200000007000000010000000000000004"
theorem small_10236851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236851_left_root small_10236851_left_fuel small_10236851_left_count small_10236851_left_encoded = true := by
  decide +kernel
theorem small_10236851_left_covered : CoveredBy scale carrier boxes small_10236851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236851_left_root small_10236851_left_fuel small_10236851_left_count small_10236851_left_encoded small_10236851_left_checked

theorem cover_10236851 : CoveredBy scale carrier boxes root_10236851 := by
  apply coveredBy_split_literal root_10236851 small_10236851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3838.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10236851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3838.covered
#print axioms cover_10236851

def root_10236846 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236846_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236846_right_fuel : Nat := 1
def small_10236846_right_count : Nat := 1
def small_10236846_right_encoded : String := "00000002"
theorem small_10236846_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236846_right_root small_10236846_right_fuel small_10236846_right_count small_10236846_right_encoded = true := by
  decide +kernel
theorem small_10236846_right_covered : CoveredBy scale carrier boxes small_10236846_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236846_right_root small_10236846_right_fuel small_10236846_right_count small_10236846_right_encoded small_10236846_right_checked

theorem cover_10236846 : CoveredBy scale carrier boxes root_10236846 := by
  apply coveredBy_split_literal root_10236846 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10236851 small_10236846_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10236851
  · exact small_10236846_right_covered
#print axioms cover_10236846

def root_10236845 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236845_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10236845_right_fuel : Nat := 18
def small_10236845_right_count : Nat := 131
def small_10236845_right_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A91301120701000000000008A913031207010200000001000000070000000712073D0008A91303120701020000000108A912FF00000007120700FE050000FA135D810505000106135D4507000000030CFD9C01000000070F350D0000000007000000000000000700000002000000070000000412073D020000000700000001000000001151E8FF08A91301120701000000000008A913031207010200000001050000FA135D810500000007000000020000000712073D02050000FA00000007000000070000000112073D0008A91303120701020000000100000007000000070000000000000004115225070A0000FE115224FF0000000408A91301120701000000000008A913030000000712073D02000000070000000112073D0008A91303120701020000000108A91307120701060000000308A912FF000000070000000712073D0608A912FF00000007120700FE00000007000000040000000312073D0208A91307120701060000000308A912FF12073CFE0000000400000007120700FE050000FA135D81050CFD9C01000000070000000700000002135D450500000002000000070000000412073D06000000070000000300000001000000001151E8FF08A91301120701000000000008A9130312070102000000010000000700000008000000070000000400000003"
theorem small_10236845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10236845_right_root small_10236845_right_fuel small_10236845_right_count small_10236845_right_encoded = true := by
  decide +kernel
theorem small_10236845_right_covered : CoveredBy scale carrier boxes small_10236845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10236845_right_root small_10236845_right_fuel small_10236845_right_count small_10236845_right_encoded small_10236845_right_checked

theorem cover_10236845 : CoveredBy scale carrier boxes root_10236845 := by
  apply coveredBy_split_literal root_10236845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.root_10236846 small_10236845_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687.cover_10236846
  · exact small_10236845_right_covered
#print axioms cover_10236845

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0687
