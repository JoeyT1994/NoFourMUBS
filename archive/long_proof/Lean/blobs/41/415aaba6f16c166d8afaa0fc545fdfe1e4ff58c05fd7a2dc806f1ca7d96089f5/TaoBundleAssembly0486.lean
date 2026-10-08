import TaoBundleAssembly0485
import TaoBundleChunkBatch0668
import TaoBundleChunkBatch0669
import TaoBundleChunkBatch0670
import TaoBundleChunkBatch0671
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486
def root_7101930 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7101930_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7101930_right_fuel : Nat := 1
def small_7101930_right_count : Nat := 1
def small_7101930_right_encoded : String := "00000002"
theorem small_7101930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7101930_right_root small_7101930_right_fuel small_7101930_right_count small_7101930_right_encoded = true := by
  decide +kernel
theorem small_7101930_right_covered : CoveredBy scale carrier boxes small_7101930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7101930_right_root small_7101930_right_fuel small_7101930_right_count small_7101930_right_encoded small_7101930_right_checked

theorem cover_7101930 : CoveredBy scale carrier boxes root_7101930 := by
  apply coveredBy_split_literal root_7101930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7101935 small_7101930_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7101935
  · exact small_7101930_right_covered
#print axioms cover_7101930

def root_7099614 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7099614 : CoveredBy scale carrier boxes root_7099614 := by
  apply coveredBy_split_literal root_7099614 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2672.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7101930 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2672.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7101930
#print axioms cover_7099614

def root_7099608 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099608_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099608_left_fuel : Nat := 1
def small_7099608_left_count : Nat := 1
def small_7099608_left_encoded : String := "00000001"
theorem small_7099608_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099608_left_root small_7099608_left_fuel small_7099608_left_count small_7099608_left_encoded = true := by
  decide +kernel
theorem small_7099608_left_covered : CoveredBy scale carrier boxes small_7099608_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099608_left_root small_7099608_left_fuel small_7099608_left_count small_7099608_left_encoded small_7099608_left_checked

theorem cover_7099608 : CoveredBy scale carrier boxes root_7099608 := by
  apply coveredBy_split_literal root_7099608 small_7099608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099614 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7099608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099614
#print axioms cover_7099608

def root_7099607 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7099607 : CoveredBy scale carrier boxes root_7099607 := by
  apply coveredBy_split_literal root_7099607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2675.root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2675.covered
#print axioms cover_7099607

def root_7099601 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099601_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099601_left_fuel : Nat := 1
def small_7099601_left_count : Nat := 1
def small_7099601_left_encoded : String := "00000004"
theorem small_7099601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099601_left_root small_7099601_left_fuel small_7099601_left_count small_7099601_left_encoded = true := by
  decide +kernel
theorem small_7099601_left_covered : CoveredBy scale carrier boxes small_7099601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099601_left_root small_7099601_left_fuel small_7099601_left_count small_7099601_left_encoded small_7099601_left_checked

theorem cover_7099601 : CoveredBy scale carrier boxes root_7099601 := by
  apply coveredBy_split_literal root_7099601 small_7099601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099607 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7099601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099607
#print axioms cover_7099601

def root_7099131 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099131_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099131_left_fuel : Nat := 20
def small_7099131_left_count : Nat := 225
def small_7099131_left_encoded : String := "0F8750FF022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF00000004011523430000000513F895020793F0BB000000050000000700000001000000000E6014F7000000000B4D4408108010FF0115234313F85902000000010793F0BB0000000500000006000000060000000410804CFF000000040115234313F85902000000010793F0BB00000005128220FA0793F0BD00000005128220FC0DAED877000000050E9625000000000000000005000000030000000213F895020793F0BB12825CFA000000020793F0BD0000000500000008000000060000000112EA58FC0DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF000000040115234313F85902000000010793F0BB12825CFA000000020569AC3D0000000500000007128220FA0569AC3D00000007000000070000000213F895020000000700000001000000000E6014F7000000000B4D44080000000810804CFF000000040115234313F85902000000010793F0BB00000008128220FA0569AC3D134110FC00000003000000080000000800000002000000080000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70B4D44080000000610804CFF000000040115234313F85902000000010569AC3B134110FA000000020793F0BD00000005000000070000000600000006000000000000000612EA58FC0DE7CA000E5FD8F70B4D4408108010FF000000070000000410804CFF000000040115234313F85902000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000006000000070000000213F895020569AC3B000000070000000600000001000000000E6014F7000000000B4D4408108010FF000000060000000410804CFF000000040115234313F85902000000010569AC3B134110FA000000020569AC3D00000006000000090000000600000006000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F700000007000000000000000612EA58FC0DE7CA000E5FD8F700000007000000000E6014F7000000000B4D44080000000810804CFF00000004033F67C300000008000000080000000312EA58FA067ECE7D0000000612EA58FC0DE7CA000E5FD8F700000006000000000000000600000003000000020000000100000004"
theorem small_7099131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099131_left_root small_7099131_left_fuel small_7099131_left_count small_7099131_left_encoded = true := by
  decide +kernel
theorem small_7099131_left_covered : CoveredBy scale carrier boxes small_7099131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099131_left_root small_7099131_left_fuel small_7099131_left_count small_7099131_left_encoded small_7099131_left_checked

theorem cover_7099131 : CoveredBy scale carrier boxes root_7099131 := by
  apply coveredBy_split_literal root_7099131 small_7099131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099601 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7099131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099601
#print axioms cover_7099131

def root_7099125 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099125_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7099125_left_fuel : Nat := 1
def small_7099125_left_count : Nat := 1
def small_7099125_left_encoded : String := "00000000"
theorem small_7099125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7099125_left_root small_7099125_left_fuel small_7099125_left_count small_7099125_left_encoded = true := by
  decide +kernel
theorem small_7099125_left_covered : CoveredBy scale carrier boxes small_7099125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7099125_left_root small_7099125_left_fuel small_7099125_left_count small_7099125_left_encoded small_7099125_left_checked

theorem cover_7099125 : CoveredBy scale carrier boxes root_7099125 := by
  apply coveredBy_split_literal root_7099125 small_7099125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099131 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7099125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099131
#print axioms cover_7099125

def root_7098531 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098531_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098531_left_fuel : Nat := 22
def small_7098531_left_count : Nat := 285
def small_7098531_left_encoded : String := "0F8750F70C9A87080F8750FF022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400000000070000000712EA58FC0B4D440000000007000000070000000312EA58FA067ECE7D12EA94FC000000030B4D4400000000070000000712EA58FC0B4D44000000000700000007000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D000000070000000712EA58FA067ECE7D00000007000000070000000200000001000000040F878CFF00000004022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400108010F70DE7CA080E5FD8FF00000007000000040E6014FF000000040115234313F85902000000010793F0BB00000005000000090000000A0000000010804CF7000000000DE7CA080E5FD8FF011523430000000513F895020793F0BB000000050000000700000001000000040E6014FF000000040115234313F85902000000010793F0BB00000005128220FA0793F0BD00000005128220FC0DAED87F000000050E9625080000000400000005000000030000000213F895020793F0BB0000000A128220FA0793F0BD000000090000000A000000020000000112EA58FC0B4D4400108010F70000000A0000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010793F0BB0000000A128220FA0569AC3D0000000700000007000000020000000A000000040000000A0000000312EA58FA067ECE7D12EA94FC000000030B4D4400108010F70DE7CA080E5FD8FF00000007000000040E6014FF00000004000000080000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010569AC3B134110FA000000020793F0BD00000005000000071340D4FA0793F0BD00000007000000070000000213F895020000000700000001000000040E6014FF000000040115234313F85902000000010569AC3B134110FA0000000200000009000000080000000912EA58FC0B4D4400108010F70DE7CA080E5FD8FF00000007000000040000000A0000000010804CF7000000000DE7CA080E5FD8FF0115234313F85902000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000007000000070000000213F895020569AC3B000000070000000700000001000000040E6014FF000000040115234313F85902000000010569AC3B0000000A1340D4FA0569AC3D000000080000000A000000020000000A000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030B4D4400108010F70000000A0000000010804CF7000000000DE7CA080E5FD8FF00000007000000040000000A0000000A12EA58FA067ECE7D12EA94FC000000030B4D4400108010F70DE7CA0800000007000000070000000010804CF7000000000DE7CA080E5FD8FF00000007000000040E6014FF00000004033F67C3000000090000000912EA58FC0B4D44000000000A10804CF7000000000DE7CA080E5FD8FF00000007000000040000000A00000003000000020000000100000000"
theorem small_7098531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098531_left_root small_7098531_left_fuel small_7098531_left_count small_7098531_left_encoded = true := by
  decide +kernel
theorem small_7098531_left_covered : CoveredBy scale carrier boxes small_7098531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098531_left_root small_7098531_left_fuel small_7098531_left_count small_7098531_left_encoded small_7098531_left_checked

theorem cover_7098531 : CoveredBy scale carrier boxes root_7098531 := by
  apply coveredBy_split_literal root_7098531 small_7098531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7099125 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7098531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7099125
#print axioms cover_7098531

def root_7098526 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098526_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098526_right_fuel : Nat := 1
def small_7098526_right_count : Nat := 1
def small_7098526_right_encoded : String := "00000004"
theorem small_7098526_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098526_right_root small_7098526_right_fuel small_7098526_right_count small_7098526_right_encoded = true := by
  decide +kernel
theorem small_7098526_right_covered : CoveredBy scale carrier boxes small_7098526_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098526_right_root small_7098526_right_fuel small_7098526_right_count small_7098526_right_encoded small_7098526_right_checked

theorem cover_7098526 : CoveredBy scale carrier boxes root_7098526 := by
  apply coveredBy_split_literal root_7098526 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098531 small_7098526_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098531
  · exact small_7098526_right_covered
#print axioms cover_7098526

def root_7098525 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098525 : CoveredBy scale carrier boxes root_7098525 := by
  apply coveredBy_split_literal root_7098525 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098526 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2676.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098526
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2676.covered
#print axioms cover_7098525

def root_7098519 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098519_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098519_left_fuel : Nat := 1
def small_7098519_left_count : Nat := 1
def small_7098519_left_encoded : String := "00000003"
theorem small_7098519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098519_left_root small_7098519_left_fuel small_7098519_left_count small_7098519_left_encoded = true := by
  decide +kernel
theorem small_7098519_left_covered : CoveredBy scale carrier boxes small_7098519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098519_left_root small_7098519_left_fuel small_7098519_left_count small_7098519_left_encoded small_7098519_left_checked

theorem cover_7098519 : CoveredBy scale carrier boxes root_7098519 := by
  apply coveredBy_split_literal root_7098519 small_7098519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098525 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7098519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098525
#print axioms cover_7098519

def root_7098518 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098518 : CoveredBy scale carrier boxes root_7098518 := by
  apply coveredBy_split_literal root_7098518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098519 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2677.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098519
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2677.covered
#print axioms cover_7098518

def root_7098512 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098512_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098512_left_fuel : Nat := 1
def small_7098512_left_count : Nat := 1
def small_7098512_left_encoded : String := "00000002"
theorem small_7098512_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098512_left_root small_7098512_left_fuel small_7098512_left_count small_7098512_left_encoded = true := by
  decide +kernel
theorem small_7098512_left_covered : CoveredBy scale carrier boxes small_7098512_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098512_left_root small_7098512_left_fuel small_7098512_left_count small_7098512_left_encoded small_7098512_left_checked

theorem cover_7098512 : CoveredBy scale carrier boxes root_7098512 := by
  apply coveredBy_split_literal root_7098512 small_7098512_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098518 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7098512_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098518
#print axioms cover_7098512

def root_7098511 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098511 : CoveredBy scale carrier boxes root_7098511 := by
  apply coveredBy_split_literal root_7098511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098512 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2678.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098512
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2678.covered
#print axioms cover_7098511

def root_7098505 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098505_left_fuel : Nat := 1
def small_7098505_left_count : Nat := 1
def small_7098505_left_encoded : String := "00000001"
theorem small_7098505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098505_left_root small_7098505_left_fuel small_7098505_left_count small_7098505_left_encoded = true := by
  decide +kernel
theorem small_7098505_left_covered : CoveredBy scale carrier boxes small_7098505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098505_left_root small_7098505_left_fuel small_7098505_left_count small_7098505_left_encoded small_7098505_left_checked

theorem cover_7098505 : CoveredBy scale carrier boxes root_7098505 := by
  apply coveredBy_split_literal root_7098505 small_7098505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098511 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7098505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098511
#print axioms cover_7098505

def root_7098504 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098504_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098504_right_fuel : Nat := 30
def small_7098504_right_count : Nat := 343
def small_7098504_right_encoded : String := "1386AD02045489FB1386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000007000000040F878CFF00000004067ECE8312EA590200000001067ECE7B0000000A12EA58FA067ECE7D12EA94FC000000030B4D440000000007000000070000000A000000020000000A000000000F878CF7000000000C9A87080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D0000000612EA58FC0DE7CA000000000700000006000000030000000600000006000000040F878CFF00000004067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA080E5FD8FF00000007000000040000000A000000000E6014F7000000000DE7CA080E5FD8FF00000006000000040E6014FF000000040569AC431340D502000000010793F0BB12825CFA000000020793F0BD12825CFC000000030DAED877000000070E96250000000000000000060000000A128220FA0793F0BD000000060000000A00000002134111020793F0BB0000000A000000060000000112EA58FC0DE7CA000000000A0E6014F7000000000DE7CA080E5FD8FF0569AC431340D502000000010793F0BB000000080000000600000006000000040000000A0000000312EA58FA067ECE7D12EA94FC000000030DE7CA000E5FD8F70DE7CA08000000060E6014FF000000040569AC431340D502000000010569AC3B0000000A0000000600000006000000000000000612EA58FC0DE7CA000E5FD8F70000000A000000000E6014F7000000000DE7CA08000000060E6014FF000000040569AC431340D502000000010569AC3B0000000A0000000500000005000000030000000212EA9502067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030DE7CA000000000A000000060000000A12EA58FA000000060000000200000001000000040F34D108000000040C9A87000F8750F70000000A000000000F878CF700000000067ECE8312EA590200000001067ECE7B0000000A12EA58FA067ECE7D12EA94FC000000030AD3577F10D13D080DE7CA00000000090E6014F7000000000569AC431340D502000000010569AC3B134110FA000000020793F0BD000000090000000A00000009134111020569AC3B0000000A000000060000000100000004000000090000000A000000020000000A138670FC0CFD9BFF0F350D080C9A87000F8750F70000000A000000000F878CF7000000000C9A87080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002022A457D000000070000000712EA58FA000000050000000212EA95020000000500000001000000040000000A000000040F34D108000000040000000A00000003138670FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000006000000040F878CFF00000004067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D12EA94FC00000003000000070000000713E1C4FA067ECE7D00000006000000050000000212EA950200000005000000010000000000000006000000040F34D108000000040C9A87000F8750F7067ECE830000000900000009000000000F878CF700000000067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030000000912EA58FC0AD3577F10D13D080000000500000004000000050000000313E1C4FA067ECE7D00000009000000050000000212EA9502022A457B13E200FA00000002067ECE7D00000009000000050000000500000001138670FC0CFD9BFF0F350D080C9A8700000000050F878CF700000000000000050000000400000005000000030000000200000001"
theorem small_7098504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098504_right_root small_7098504_right_fuel small_7098504_right_count small_7098504_right_encoded = true := by
  decide +kernel
theorem small_7098504_right_covered : CoveredBy scale carrier boxes small_7098504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098504_right_root small_7098504_right_fuel small_7098504_right_count small_7098504_right_encoded small_7098504_right_checked

theorem cover_7098504 : CoveredBy scale carrier boxes root_7098504 := by
  apply coveredBy_split_literal root_7098504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098505 small_7098504_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098505
  · exact small_7098504_right_covered
#print axioms cover_7098504

def root_7098499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098499_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098499_right_fuel : Nat := 1
def small_7098499_right_count : Nat := 1
def small_7098499_right_encoded : String := "00000000"
theorem small_7098499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098499_right_root small_7098499_right_fuel small_7098499_right_count small_7098499_right_encoded = true := by
  decide +kernel
theorem small_7098499_right_covered : CoveredBy scale carrier boxes small_7098499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098499_right_root small_7098499_right_fuel small_7098499_right_count small_7098499_right_encoded small_7098499_right_checked

theorem cover_7098499 : CoveredBy scale carrier boxes root_7098499 := by
  apply coveredBy_split_literal root_7098499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098504 small_7098499_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098504
  · exact small_7098499_right_covered
#print axioms cover_7098499

def root_7117307 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7117307 : CoveredBy scale carrier boxes root_7117307 := by
  apply coveredBy_split_literal root_7117307 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2680.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2681.root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2680.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2681.covered
#print axioms cover_7117307

def root_7117302 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117302_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(-10897344), (-9081120)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117302_right_fuel : Nat := 1
def small_7117302_right_count : Nat := 1
def small_7117302_right_encoded : String := "00000000"
theorem small_7117302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117302_right_root small_7117302_right_fuel small_7117302_right_count small_7117302_right_encoded = true := by
  decide +kernel
theorem small_7117302_right_covered : CoveredBy scale carrier boxes small_7117302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117302_right_root small_7117302_right_fuel small_7117302_right_count small_7117302_right_encoded small_7117302_right_checked

theorem cover_7117302 : CoveredBy scale carrier boxes root_7117302 := by
  apply coveredBy_split_literal root_7117302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7117307 small_7117302_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7117307
  · exact small_7117302_right_covered
#print axioms cover_7117302

def root_7117301 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117301_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-9081120), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117301_right_fuel : Nat := 20
def small_7117301_right_count : Nat := 267
def small_7117301_right_encoded : String := "10D1010000000000022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D000115234313F85902000000010793F0BB000000070000000713F895020793F0BB12825CFA000000020793F0BD0000000700000008128220FA0793F0BD0000000700000007000000020000000100000000117741000000000000000007000000040000000712EA58FC0AD3577F10D13D0809BE353711777D00011523430000000700000008000000000000000700000004000000070000000312EA58FA067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00011523430000000713F895020569AC3B000000070000000A000000010000000000000007000000040000000712EA58FC0AD3577F10D13D0809BE353711777D000000000700000000000000070000000400000007000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010793F0BB12825CFA000000020793F0BD12825CFC000000030000000800000008128220FA0793F0BD12825CFC000000030BE879BF1011AD08000000060000000400000007128220FC0BE879BF0000000800000007000000030000000213BC31020793F0BB12825CFA000000020793F0BD12825CFC000000030000000800000008128220FA0793F0BD00000006128220FC0BE879BF0000000600000008000000030000000200000001000000001177410000000000033F67C313BBF502000000010793F0BB00000008128220FA000000070000000213BC310200000008000000010000000410D101080000000409BE353711777D00033F67C30000000713BC31020793F0BB000000070000000700000001000000000000000712EA58FC0AD3577F10D13D0809BE353711777D00033F67C3000000080000000800000000000000080000000410D1010800000004000000070000000312EA58FA067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010569AC3B134110FA000000020793F0BD00000006128220FC00000007000000030000000600000006000000001177410000000000033F67C313BBF502000000010569AC3B0000000700000006000000060000000410D10108000000040000000712EA58FC0AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000007000000050000000213BC31020569AC3B134110FA000000020569AC3D134110FC000000030BE879BF0000000600000005000000050000000500000001000000001177410000000000033F67C30000000713BC31020569AC3B0000000800000005000000010000000410D101080000000400000007000000030000000200000001"
theorem small_7117301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117301_right_root small_7117301_right_fuel small_7117301_right_count small_7117301_right_encoded = true := by
  decide +kernel
theorem small_7117301_right_covered : CoveredBy scale carrier boxes small_7117301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117301_right_root small_7117301_right_fuel small_7117301_right_count small_7117301_right_encoded small_7117301_right_checked

theorem cover_7117301 : CoveredBy scale carrier boxes root_7117301 := by
  apply coveredBy_split_literal root_7117301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7117302 small_7117301_right_root coord0 true (-9081120)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7117302
  · exact small_7117301_right_covered
#print axioms cover_7117301

def root_7117295 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117295_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117295_left_fuel : Nat := 1
def small_7117295_left_count : Nat := 1
def small_7117295_left_encoded : String := "00000004"
theorem small_7117295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117295_left_root small_7117295_left_fuel small_7117295_left_count small_7117295_left_encoded = true := by
  decide +kernel
theorem small_7117295_left_covered : CoveredBy scale carrier boxes small_7117295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117295_left_root small_7117295_left_fuel small_7117295_left_count small_7117295_left_encoded small_7117295_left_checked

theorem cover_7117295 : CoveredBy scale carrier boxes root_7117295 := by
  apply coveredBy_split_literal root_7117295 small_7117295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7117301 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7117295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7117301
#print axioms cover_7117295

def root_7114771 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7114771 : CoveredBy scale carrier boxes root_7114771 := by
  apply coveredBy_split_literal root_7114771 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2679.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7117295 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2679.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7117295
#print axioms cover_7114771

def root_7114765 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114765_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114765_left_fuel : Nat := 1
def small_7114765_left_count : Nat := 1
def small_7114765_left_encoded : String := "00000003"
theorem small_7114765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114765_left_root small_7114765_left_fuel small_7114765_left_count small_7114765_left_encoded = true := by
  decide +kernel
theorem small_7114765_left_covered : CoveredBy scale carrier boxes small_7114765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114765_left_root small_7114765_left_fuel small_7114765_left_count small_7114765_left_encoded small_7114765_left_checked

theorem cover_7114765 : CoveredBy scale carrier boxes root_7114765 := by
  apply coveredBy_split_literal root_7114765 small_7114765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7114771 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7114765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7114771
#print axioms cover_7114765

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486
