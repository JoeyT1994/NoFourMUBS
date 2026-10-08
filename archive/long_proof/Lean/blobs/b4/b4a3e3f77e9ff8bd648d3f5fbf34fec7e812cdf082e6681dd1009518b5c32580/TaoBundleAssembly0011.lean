import TaoBundleAssembly0008
import TaoBundleAssembly0010
import TaoBundleChunkBatch0033
import TaoBundleChunkBatch0035
import TaoBundleChunkBatch0036
import TaoBundleChunkBatch0037
import TaoBundleChunkBatch0038
import TaoBundleChunkBatch0039
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011
def root_375955 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375955_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375955_left_fuel : Nat := 20
def small_375955_left_count : Nat := 199
def small_375955_left_encoded : String := "0F8750FF067ECE7712EA94F600000000067ECE7912EA94F800000001022A458713E1C506000000030DE7CA040E5FD8FB0B4D4408108010FF000000090000000410804CFF000000040793F0B700000005128220F60793F0B9000000050000000900000000000000020E6014FB000000020B4D4408108010FF0793F0B700000006000000080000000410804CFF000000040793F0B712825CF6000000000793F0B90000000500000006128220F60793F0B900000008128220F80115234713F85906000000030DAED87B000000050E962504000000020000000500000008000000010000000013E201060DE7CA040E5FD8FB0000000900000002000000080000000312EA58F8022A458713E1C506000000030DE7CA040E5FD8FB0B4D4408108010FF000000090000000410804CFF000000040793F0B712825CF6000000000569AC390000000900000009128220F60569AC39000000090000000900000000000000020E6014FB000000020B4D44080000000610804CFF000000040793F0B700000006128220F60569AC39134110F800000001011523470000000600000006000000060000000013E201060DE7CA040E5FD8FB00000009000000020E6014FB000000020B4D44080000000610804CFF000000040793F0B700000006128220F60000000800000000000000030000000112EA58F6067ECE7912EA94F800000001022A458713E1C506000000030DE7CA040E5FD8FB0B4D44080000000810804CFF000000040569AC37134110F6000000000793F0B900000008000000090000000800000002000000080000000812EA58F8022A458713E1C506000000030DE7CA040E5FD8FB0B4D4408108010FF000000090000000410804CFF000000040569AC37134110F6000000000569AC3900000009000000091340D4F60569AC39000000080000000900000000000000020E6014FB000000020B4D4408108010FF000000080000000410804CFF000000040569AC37134110F6000000000569AC39000000081340D4F8011523470000000700000008000000010000000813E201060DE7CA040E5FD8FB00000008000000020000000800000003000000010000000000000004"
theorem small_375955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375955_left_root small_375955_left_fuel small_375955_left_count small_375955_left_encoded = true := by
  decide +kernel
theorem small_375955_left_covered : CoveredBy scale carrier boxes small_375955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375955_left_root small_375955_left_fuel small_375955_left_count small_375955_left_encoded small_375955_left_checked

theorem cover_375955 : CoveredBy scale carrier boxes root_375955 := by
  apply coveredBy_split_literal root_375955 small_375955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_376371 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_375955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_376371
#print axioms cover_375955

def root_375949 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375949_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375949_left_fuel : Nat := 1
def small_375949_left_count : Nat := 1
def small_375949_left_encoded : String := "00000002"
theorem small_375949_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375949_left_root small_375949_left_fuel small_375949_left_count small_375949_left_encoded = true := by
  decide +kernel
theorem small_375949_left_covered : CoveredBy scale carrier boxes small_375949_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375949_left_root small_375949_left_fuel small_375949_left_count small_375949_left_encoded small_375949_left_checked

theorem cover_375949 : CoveredBy scale carrier boxes root_375949 := by
  apply coveredBy_split_literal root_375949 small_375949_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375955 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_375949_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375955
#print axioms cover_375949

def root_375401 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375401_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375401_left_fuel : Nat := 22
def small_375401_left_count : Nat := 263
def small_375401_left_encoded : String := "0F8750FB0C9A87080F8750FF067ECE7712EA94F600000000067ECE7912EA94F800000001022A458713E1C506000000030B4D440400000009000000090000000912EA58F8022A458713E1C506000000030B4D44040000000900000009000000090000000112EA58F6067ECE7912EA94F800000001022A458713E1C506000000030B4D440400000009000000090000000912EA58F8022A458713E1C506000000030B4D44040000000900000009000000090000000100000000000000040F878CFF00000004067ECE7712EA94F600000000067ECE7912EA94F800000001022A458713E1C506000000030B4D4404108010FB0DE7CA080E5FD8FF00000009000000040E6014FF000000040793F0B70000000A000000070000000210804CFB000000020DE7CA080E5FD8FF0793F0B700000005128220F60793F0B9000000050000000900000000000000040E6014FF000000040793F0B712825CF6000000000793F0B9000000050000000A128220F60793F0B900000007128220F80115234713F85906000000030DAED87F000000050E96250800000004000000050000000A000000010000000013E201060B4D4404108010FB0000000A0000000210804CFB000000020DE7CA080E5FD8FF00000009000000040000000A0000000312EA58F8022A458713E1C506000000030B4D4404108010FB0000000A0000000210804CFB000000020DE7CA080E5FD8FF0793F0B70000000A128220F60569AC39000000090000000900000000000000040000000A0000000A0000000112EA58F6067ECE7912EA94F800000001022A458713E1C506000000030B4D4404108010FB0DE7CA080E5FD8FF00000009000000040E6014FF00000004000000060000000210804CFB000000020DE7CA080E5FD8FF0569AC37134110F6000000000793F0B900000009000000091340D4F60793F0B9000000090000000900000000000000040E6014FF000000040569AC37134110F6000000000793F0B900000007128220F8011523470000000700000007000000010000000713E201060B4D4404108010FB0DE7CA0800000009000000070000000210804CFB000000020DE7CA080E5FD8FF00000009000000040E6014FF000000040569AC37134110F60000000000000007000000070000000312EA58F8022A458713E1C506000000030B4D4404108010FB0DE7CA080E5FD8FF00000009000000040000000A0000000210804CFB000000020DE7CA080E5FD8FF0569AC37134110F6000000000569AC3900000009000000091340D4F60569AC39000000090000000900000000000000040E6014FF000000040569AC370000000A1340D4F60569AC39134110F80000000101152347000000060000000A0000000A0000000013E201060B4D44040000000A10804CFB000000020DE7CA080E5FD8FF00000009000000040000000A00000003000000010000000000000002"
theorem small_375401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375401_left_root small_375401_left_fuel small_375401_left_count small_375401_left_encoded = true := by
  decide +kernel
theorem small_375401_left_covered : CoveredBy scale carrier boxes small_375401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375401_left_root small_375401_left_fuel small_375401_left_count small_375401_left_encoded small_375401_left_checked

theorem cover_375401 : CoveredBy scale carrier boxes root_375401 := by
  apply coveredBy_split_literal root_375401 small_375401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375949 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_375401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375949
#print axioms cover_375401

def root_375396 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375396_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375396_right_fuel : Nat := 1
def small_375396_right_count : Nat := 1
def small_375396_right_encoded : String := "00000004"
theorem small_375396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375396_right_root small_375396_right_fuel small_375396_right_count small_375396_right_encoded = true := by
  decide +kernel
theorem small_375396_right_covered : CoveredBy scale carrier boxes small_375396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375396_right_root small_375396_right_fuel small_375396_right_count small_375396_right_encoded small_375396_right_checked

theorem cover_375396 : CoveredBy scale carrier boxes root_375396 := by
  apply coveredBy_split_literal root_375396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375401 small_375396_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375401
  · exact small_375396_right_covered
#print axioms cover_375396

def root_375395 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_375395 : CoveredBy scale carrier boxes root_375395 := by
  apply coveredBy_split_literal root_375395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375396 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0140.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375396
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0140.covered
#print axioms cover_375395

def root_375389 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375389_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375389_left_fuel : Nat := 1
def small_375389_left_count : Nat := 1
def small_375389_left_encoded : String := "00000003"
theorem small_375389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375389_left_root small_375389_left_fuel small_375389_left_count small_375389_left_encoded = true := by
  decide +kernel
theorem small_375389_left_covered : CoveredBy scale carrier boxes small_375389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375389_left_root small_375389_left_fuel small_375389_left_count small_375389_left_encoded small_375389_left_checked

theorem cover_375389 : CoveredBy scale carrier boxes root_375389 := by
  apply coveredBy_split_literal root_375389 small_375389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375395 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_375389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375395
#print axioms cover_375389

def root_375388 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375388_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375388_right_fuel : Nat := 26
def small_375388_right_count : Nat := 195
def small_375388_right_encoded : String := "1386AD060CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF00000009000000040F878CFF00000004067ECE770000000A12EA58F6067ECE7912EA94F800000001067ECE8712EA5906000000030B4D44040000000900000009000000090000000A00000000000000020F878CFB000000020C9A87080F8750FF067ECE7712EA94F600000000067ECE790000000812EA58F8067ECE8712EA5906000000030DE7CA040000000900000008000000080000000100000008000000040F878CFF00000004067ECE7712EA94F600000000067ECE7912EA94F800000001067ECE8712EA5906000000030DE7CA040E5FD8FB0DE7CA080E5FD8FF00000009000000040000000A000000020E6014FB000000020DE7CA080E5FD8FF00000008000000040E6014FF000000040793F0B712825CF6000000000793F0B912825CF8000000010569AC471340D506000000030DAED87B000000090E9625040000000200000008000000080000000A128220F60793F0B900000008128220F800000008000000010000000012EA95060DE7CA040000000A000000080000000312EA58F8067ECE8712EA5906000000030DE7CA040000000A0E6014FB000000020DE7CA080E5FD8FF0793F0B70000000A00000008000000040000000A0000000A0000000112EA58F6067ECE7912EA94F800000001067ECE8712EA5906000000030DE7CA040E5FD8FB0DE7CA08000000080E6014FF000000040569AC370000000A0000000800000002000000080000000812EA58F8067ECE8712EA5906000000030DE7CA040E5FD8FB0000000A000000020E6014FB000000020DE7CA08000000080E6014FF000000040569AC370000000A00000005000000080000000100000000000000040F34D108000000040C9A87040F8750FB0000000A000000020F878CFB00000002067ECE770000000A12EA58F6067ECE7912EA94F800000001067ECE8712EA5906000000030AD3577F10D13D080DE7CA04000000070E6014FB000000020569AC37134110F6000000000793F0B9000000070000000A0000000700000004000000070000000A0000000A0000000000000003"
theorem small_375388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375388_right_root small_375388_right_fuel small_375388_right_count small_375388_right_encoded = true := by
  decide +kernel
theorem small_375388_right_covered : CoveredBy scale carrier boxes small_375388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375388_right_root small_375388_right_fuel small_375388_right_count small_375388_right_encoded small_375388_right_checked

theorem cover_375388 : CoveredBy scale carrier boxes root_375388 := by
  apply coveredBy_split_literal root_375388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375389 small_375388_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375389
  · exact small_375388_right_covered
#print axioms cover_375388

def root_375383 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375383_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375383_right_fuel : Nat := 1
def small_375383_right_count : Nat := 1
def small_375383_right_encoded : String := "00000002"
theorem small_375383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375383_right_root small_375383_right_fuel small_375383_right_count small_375383_right_encoded = true := by
  decide +kernel
theorem small_375383_right_covered : CoveredBy scale carrier boxes small_375383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375383_right_root small_375383_right_fuel small_375383_right_count small_375383_right_encoded small_375383_right_checked

theorem cover_375383 : CoveredBy scale carrier boxes root_375383 := by
  apply coveredBy_split_literal root_375383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375388 small_375383_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375388
  · exact small_375383_right_covered
#print axioms cover_375383

def root_389709 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_389709 : CoveredBy scale carrier boxes root_389709 := by
  apply coveredBy_split_literal root_389709 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0142.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0143.root coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0142.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0143.covered
#print axioms cover_389709

def root_389703 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_389703_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_389703_left_fuel : Nat := 1
def small_389703_left_count : Nat := 1
def small_389703_left_encoded : String := "00000004"
theorem small_389703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_389703_left_root small_389703_left_fuel small_389703_left_count small_389703_left_encoded = true := by
  decide +kernel
theorem small_389703_left_covered : CoveredBy scale carrier boxes small_389703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_389703_left_root small_389703_left_fuel small_389703_left_count small_389703_left_encoded small_389703_left_checked

theorem cover_389703 : CoveredBy scale carrier boxes root_389703 := by
  apply coveredBy_split_literal root_389703 small_389703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_389709 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_389703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_389709
#print axioms cover_389703

def root_387187 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_387187 : CoveredBy scale carrier boxes root_387187 := by
  apply coveredBy_split_literal root_387187 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0141.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_389703 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0141.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_389703
#print axioms cover_387187

def root_387181 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387181_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387181_left_fuel : Nat := 1
def small_387181_left_count : Nat := 1
def small_387181_left_encoded : String := "00000003"
theorem small_387181_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_387181_left_root small_387181_left_fuel small_387181_left_count small_387181_left_encoded = true := by
  decide +kernel
theorem small_387181_left_covered : CoveredBy scale carrier boxes small_387181_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_387181_left_root small_387181_left_fuel small_387181_left_count small_387181_left_encoded small_387181_left_checked

theorem cover_387181 : CoveredBy scale carrier boxes root_387181 := by
  apply coveredBy_split_literal root_387181 small_387181_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_387187 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_387181_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_387187
#print axioms cover_387181

def root_387180 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387180_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387180_right_fuel : Nat := 29
def small_387180_right_count : Nat := 487
def small_387180_right_encoded : String := "1386AD060CFD9BFF0F350D080C9A87080F8750FF00000008000000040F878CFF00000004067ECE7712EA94F600000000067ECE790000000812EA58F80AD3577B10D13D04067ECE8712EA5906000000030DE7CA08000000060E6014FF000000040793F0B700000006128220F60569AC39000000080000000600000000000000080000000210D1010400000002000000060000000100000008000000040F34D10800000004067ECE7712EA94F600000000067ECE7912EA94F8000000010AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080793F0B712825CF6000000000793F0B912825CF8000000010BE879BB1011AD040569AC471340D506000000030BE879BF1011AD08081E81D70000000A00000008000000041011710800000004000000070000000A0000000210117104000000020569AC471340D506000000030BE879BF000000081011710800000004081E81D7124738F600000000081E81D9124738F80000000100000006000000061246FCF6081E81D9000000071246FCF80B5DE89B0000000700000006000000010000000000000008128220F80BE879BB0000000A10117104000000020569AC471340D506000000030BE879BF00000006000000060000000A00000001128220F60793F0B912825CF8000000010BE879BB1011AD040569AC471340D506000000030BE879BF00000008000000070000000800000002101171040000000200000008128220F80BE879BB1011AD040000000A0000000210117104000000020569AC471340D506000000030BE879BF00000008101171080000000407095F970000000A000000080000000800000001000000000000000410D10108000000040793F0B712825CF6000000000793F0B912825CF8000000010BE879BB0000000710117104000000020569AC4700000007000000070000000A128220F60793F0B9000000070000000A0000000012EA95060AD3577F10D13D080793F0B70000000A000000080000000410D10108000000040000000A000000030000000210D1010400000002067ECE8712EA5906000000030AD3577F10D13D080793F0B712825CF6000000000793F0B912825CF80000000109BE353B11777D040569AC470000000600000006000000020000000600000006128220F600000008000000000000000410D10108000000040793F0B712825CF6000000000793F0B912825CF80000000109BE353B11777D040569AC471340D50600000003000000091341110609BE353F11777D080000000600000004000000070000000300000002117741040000000200000009128220F809BE353B11777D040569AC47000000090000000A000000020000000900000001128220F60793F0B912825CF80000000109BE353B11777D04000000070000000200000009128220F809BE353B11777D040569AC47000000090000000A0000000200000009000000010000000012EA95060AD3577F0000000810D10108000000040793F0B712825CF6000000000793F0B912825CF80000000109BE353B0000000A1177410400000002000000080000000A128220F60793F0B90000000800000005000000000000000312EA58F80AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080793F0B70000000A128220F60569AC39134110F8000000010BE879BB0000000A10117104000000020569AC471340D506000000030BE879BF0000000610117108000000040000000A0000000A0000000A000000000000000410D10108000000040000000A0000000A0000000210D1010400000002067ECE8712EA5906000000030AD3577F10D13D080793F0B700000006128220F60569AC39134110F8000000010000000600000006000000000000000410D10108000000040793F0B712825CF6000000000569AC39134110F80000000109BE353B0000000A0000000600000006128220F60569AC39134110F80000000109BE353B11777D04000000050000000200000005000000050000000012EA95060AD3577F10D13D08000000060000000400000005000000030000000112EA58F6067ECE7912EA94F8000000010AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080569AC37134110F6000000000793F0B900000008128220F80BE879BB1011AD040569AC471340D506000000030BE879BF0000000800000007000000080000000210117104000000020000000800000001000000080000000410D10108000000040569AC37134110F600000000000000070000000712EA95060AD3577F0000000810D101080000000400000007000000030000000210D1010400000002067ECE8712EA5906000000030AD3577F0000000810D10108000000040569AC37134110F6000000000793F0B912825CF80000000109BE353B0000000700000007128220F809BE353B11777D04000000050000000200000005000000011340D4F60793F0B90000000700000005000000000000000812EA58F80AD3577B10D13D04067ECE8712EA5906000000030AD3577F10D13D080569AC37134110F6000000000569AC39134110F8000000010BE879BB0000000A0000000500000005000000050000000400000005000000050000000210D1010400000002067ECE8712EA5906000000030AD3577F10D13D0800000005000000040000000500000005000000010000000000000003"
theorem small_387180_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_387180_right_root small_387180_right_fuel small_387180_right_count small_387180_right_encoded = true := by
  decide +kernel
theorem small_387180_right_covered : CoveredBy scale carrier boxes small_387180_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_387180_right_root small_387180_right_fuel small_387180_right_count small_387180_right_encoded small_387180_right_checked

theorem cover_387180 : CoveredBy scale carrier boxes root_387180 := by
  apply coveredBy_split_literal root_387180 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_387181 small_387180_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_387181
  · exact small_387180_right_covered
#print axioms cover_387180

def root_387174 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387174_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_387174_left_fuel : Nat := 1
def small_387174_left_count : Nat := 1
def small_387174_left_encoded : String := "00000002"
theorem small_387174_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_387174_left_root small_387174_left_fuel small_387174_left_count small_387174_left_encoded = true := by
  decide +kernel
theorem small_387174_left_covered : CoveredBy scale carrier boxes small_387174_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_387174_left_root small_387174_left_fuel small_387174_left_count small_387174_left_encoded small_387174_left_checked

theorem cover_387174 : CoveredBy scale carrier boxes root_387174 := by
  apply coveredBy_split_literal root_387174 small_387174_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_387180 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_387174_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_387180
#print axioms cover_387174

def root_375382 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_375382 : CoveredBy scale carrier boxes root_375382 := by
  apply coveredBy_split_literal root_375382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_387174 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375383
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_387174
#print axioms cover_375382

def root_375376 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375376_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375376_left_fuel : Nat := 1
def small_375376_left_count : Nat := 1
def small_375376_left_encoded : String := "00000001"
theorem small_375376_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375376_left_root small_375376_left_fuel small_375376_left_count small_375376_left_encoded = true := by
  decide +kernel
theorem small_375376_left_covered : CoveredBy scale carrier boxes small_375376_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375376_left_root small_375376_left_fuel small_375376_left_count small_375376_left_encoded small_375376_left_checked

theorem cover_375376 : CoveredBy scale carrier boxes root_375376 := by
  apply coveredBy_split_literal root_375376 small_375376_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375382 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_375376_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375382
#print axioms cover_375376

def root_375375 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_375375 : CoveredBy scale carrier boxes root_375375 := by
  apply coveredBy_split_literal root_375375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375376 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0144.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375376
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0144.covered
#print axioms cover_375375

def root_375369 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375369_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375369_left_fuel : Nat := 1
def small_375369_left_count : Nat := 1
def small_375369_left_encoded : String := "00000000"
theorem small_375369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375369_left_root small_375369_left_fuel small_375369_left_count small_375369_left_encoded = true := by
  decide +kernel
theorem small_375369_left_covered : CoveredBy scale carrier boxes small_375369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375369_left_root small_375369_left_fuel small_375369_left_count small_375369_left_encoded small_375369_left_checked

theorem cover_375369 : CoveredBy scale carrier boxes root_375369 := by
  apply coveredBy_split_literal root_375369 small_375369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375375 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_375369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375375
#print axioms cover_375369

def root_375368 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_375368 : CoveredBy scale carrier boxes root_375368 := by
  apply coveredBy_split_literal root_375368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375369 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0145.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0145.covered
#print axioms cover_375368

def root_375363 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375363_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375363_right_fuel : Nat := 1
def small_375363_right_count : Nat := 1
def small_375363_right_encoded : String := "00000004"
theorem small_375363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375363_right_root small_375363_right_fuel small_375363_right_count small_375363_right_encoded = true := by
  decide +kernel
theorem small_375363_right_covered : CoveredBy scale carrier boxes small_375363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375363_right_root small_375363_right_fuel small_375363_right_count small_375363_right_encoded small_375363_right_checked

theorem cover_375363 : CoveredBy scale carrier boxes root_375363 := by
  apply coveredBy_split_literal root_375363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375368 small_375363_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375368
  · exact small_375363_right_covered
#print axioms cover_375363

def root_375362 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375362_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375362_right_fuel : Nat := 23
def small_375362_right_count : Nat := 251
def small_375362_right_encoded : String := "1207010800000004045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A8704000000070F878CFB00000002067ECE7712EA94F600000000067ECE7900000007000000080000000700000004000000070000000A000000020F34D1040000000204548A071386710600000003045489FF1386AD08067ECE7712EA94F600000000067ECE7912EA94F8000000010AD3577B10D13D04022A45870000000700000007000000020000000912EA58F80AD3577B10D13D04022A4587000000080000000A00000002000000090000000112EA58F6067ECE7912EA94F8000000010AD3577B10D13D0400000007000000020000000912EA58F80AD3577B10D13D04000000090000000200000009000000010000000000000004000000091386AD06045489FF1386AD08067ECE7712EA94F600000000067ECE7912EA94F8000000010AD3577B10D13D040000000A0000000210D1010400000002067ECE8712EA590600000003067ECE7F12EA950800000009000000040000000712EA9506067ECE7F12EA95080793F0B70000000A0000000700000004000000070000000312EA58F80AD3577B0000000A10D1010400000002067ECE8712EA590600000003000000090000000A0000000112EA58F6067ECE7912EA94F8000000010AD3577B0000000710D1010400000002067ECE87000000070000000712EA58F80AD3577B0000000A000000050000000100000000000000041386710800000004067ECE7712EA94F600000000067ECE79000000070000000A0000000700000003138670F80CFD9BFB0000000A0F34D1040000000204548A071386710600000003045489FF1386AD08067ECE7712EA94F600000000022A457913E200F8000000010AD3577B0000000A000000090000000812EA58F6022A457900000009000000090000000000000004000000090000000A00000001138670F6045489F91386ACF8000000010CFD9BFB0F350D0404548A070000000700000007000000020F34D1040000000204548A071386710600000003045489FF1386AD08022A457713E200F600000000067ECE790000000712EA58F800000009000000010000000700000004000000071386AD06045489FF1386AD08022A457713E200F600000000067ECE79000000070000000500000005000000040000000500000003138670F80CFD9BFB0F350D0404548A071386710600000003045489FF1386AD080C9A8704000000050F878CFB0000000200000005000000040000000500000005000000020F34D1040000000204548A071386710600000003045489FF1386AD08022A457700000009000000050000000400000005000000050000000100000000"
theorem small_375362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375362_right_root small_375362_right_fuel small_375362_right_count small_375362_right_encoded = true := by
  decide +kernel
theorem small_375362_right_covered : CoveredBy scale carrier boxes small_375362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375362_right_root small_375362_right_fuel small_375362_right_count small_375362_right_encoded small_375362_right_checked

theorem cover_375362 : CoveredBy scale carrier boxes root_375362 := by
  apply coveredBy_split_literal root_375362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375363 small_375362_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375363
  · exact small_375362_right_covered
#print axioms cover_375362

def root_375356 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375356_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375356_left_fuel : Nat := 1
def small_375356_left_count : Nat := 1
def small_375356_left_encoded : String := "00000003"
theorem small_375356_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375356_left_root small_375356_left_fuel small_375356_left_count small_375356_left_encoded = true := by
  decide +kernel
theorem small_375356_left_covered : CoveredBy scale carrier boxes small_375356_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375356_left_root small_375356_left_fuel small_375356_left_count small_375356_left_encoded small_375356_left_checked

theorem cover_375356 : CoveredBy scale carrier boxes root_375356 := by
  apply coveredBy_split_literal root_375356 small_375356_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375362 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_375356_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375362
#print axioms cover_375356

def root_375355 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375355_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375355_right_fuel : Nat := 20
def small_375355_right_count : Nat := 109
def small_375355_right_encoded : String := "12073D0608A912FF12073D08045489F71386ACF600000000045489F91386ACF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A87040F8750FB000000090000000200000008000000040F34D108000000040000000A0000000A000000020F34D104000000020CFD9C070F34D106000000030CFD9BFF000000080F34D10800000004067ECE7712EA94F600000000067ECE7912EA94F8000000010AD3577B0000000A10D1010400000002000000080000000A12EA58F6067ECE7900000008000000050000000000000008138670F80CFD9BFB0000000A0F34D104000000020CFD9C070F34D106000000030CFD9BFF0F350D080000000500000004000000050000000500000001138670F6045489F91386ACF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF000000080000000500000005000000020F34D1040000000200000008138670F80CFD9BFB0F350D040000000500000002000000050000000100000000000000041207010800000004045489F70000000A138670F6045489F91386ACF8000000010CFD9BFB0000000A00000005000000050000000000000003"
theorem small_375355_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375355_right_root small_375355_right_fuel small_375355_right_count small_375355_right_encoded = true := by
  decide +kernel
theorem small_375355_right_covered : CoveredBy scale carrier boxes small_375355_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375355_right_root small_375355_right_fuel small_375355_right_count small_375355_right_encoded small_375355_right_checked

theorem cover_375355 : CoveredBy scale carrier boxes root_375355 := by
  apply coveredBy_split_literal root_375355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375356 small_375355_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375356
  · exact small_375355_right_covered
#print axioms cover_375355

def root_375350 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375350_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375350_right_fuel : Nat := 1
def small_375350_right_count : Nat := 1
def small_375350_right_encoded : String := "00000002"
theorem small_375350_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375350_right_root small_375350_right_fuel small_375350_right_count small_375350_right_encoded = true := by
  decide +kernel
theorem small_375350_right_covered : CoveredBy scale carrier boxes small_375350_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375350_right_root small_375350_right_fuel small_375350_right_count small_375350_right_encoded small_375350_right_checked

theorem cover_375350 : CoveredBy scale carrier boxes root_375350 := by
  apply coveredBy_split_literal root_375350 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375355 small_375350_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375355
  · exact small_375350_right_covered
#print axioms cover_375350

def root_375349 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375349_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375349_right_fuel : Nat := 27
def small_375349_right_count : Nat := 415
def small_375349_right_encoded : String := "120701040000000208A91307120701060000000308A912FF12073D08045489F71386ACF600000000045489F91386ACF800000001045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D080C9A8708000000060F878CFF00000004067ECE770000000612EA58F6067ECE79000000080000000600000000000000040F34D10800000004067ECE7712EA94F600000000067ECE7912EA94F800000001067ECE7B12EA9504022A45870000000913E201060AD3577F10D13D0800000006000000040000000900000003000000020000000912EA58F8067ECE7B12EA9504022A45870000000613E20106000000060000000300000002000000060000000112EA58F6067ECE7912EA94F800000001067ECE7B12EA9504022A45870000000913E201060AD3577F10D13D0800000008000000040000000900000003000000020000000912EA58F8067ECE7B12EA950400000009000000020000000900000001000000001386AD060CFD9BFF0F350D0800000008000000040F34D10800000004067ECE7712EA94F600000000067ECE7912EA94F800000001067ECE7B12EA9504067ECE8712EA5906000000030AD3577F10D13D08000000060000000410D10108000000040000000912EA95060AD3577F0000000810D10108000000040793F0B70000000600000008000000030000000212EA590400000002067ECE87000000060000000612EA58F8067ECE7B12EA9504067ECE870000000612EA9506000000060000000300000002000000060000000112EA58F6067ECE7912EA94F800000001067ECE7B12EA9504067ECE8712EA5906000000030AD3577F0000000810D101080000000400000009000000080000000212EA5904000000020000000812EA58F8067ECE7B12EA9504067ECE8712EA5906000000030AD3577F000000080000000500000005000000020000000500000001000000000000000300000002138671040000000204548A0713867106000000030CFD9BFF0F350D0800000006000000040F34D10800000004000000091386AD060CFD9BFF000000080F34D10800000004067ECE770000000612EA58F6067ECE7900000008000000050000000000000003138670F8045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D0800000006000000040F34D10800000004067ECE770000000612EA58F6022A45790000000900000006000000001386AD060CFD9BFF0F350D0800000006000000040F34D10800000004067ECE7700000006000000050000000300000002138671040000000204548A07000000060000000600000001138670F6045489F91386ACF800000001045489FB1386AD0404548A0713867106000000030CFD9BFF000000080F34D10800000004022A457713E200F600000000067ECE7912EA94F800000001067ECE7B12EA9504022A45870000000900000008000000020000000912EA58F8000000090000000113E1C4F6067ECE790000000812EA58F80000000900000001000000000000000800000002138671040000000204548A0713867106000000030CFD9BFF000000080000000A00000008138670F8045489FB1386AD0404548A0713867106000000030CFD9BFF0F350D080C9A8708000000050F878CFF0000000400000005000000040F34D10800000004022A457700000009000000051386AD06000000050000000300000002138671040000000204548A0713867106000000030CFD9BFF0F350D08000000050000000400000005000000050000000100000000000000041207010800000004045489F71386ACF600000000045489F91386ACF800000001045489FB1386AD0404548A07000000091386AD06045489FF1386AD08067ECE7712EA94F600000000067ECE790000000912EA58F8000000090000000112EA58F6067ECE790000000900000009000000000000000400000009000000030000000200000009138670F8045489FB1386AD0404548A07000000091386AD060000000500000003000000020000000900000001138670F6045489F91386ACF800000001045489FB1386AD0404548A07000000091386AD0600000005000000030000000200000009138670F800000005000000010000000012073D0608A912FF12073D08045489F71386ACF600000000045489F900000008138670F8045489FB1386AD040000000500000002000000050000000100000008000000041207010800000004045489F71386ACF600000000045489F91386ACF800000001045489FB1386AD04000000050000000200000005000000050000000500000003"
theorem small_375349_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375349_right_root small_375349_right_fuel small_375349_right_count small_375349_right_encoded = true := by
  decide +kernel
theorem small_375349_right_covered : CoveredBy scale carrier boxes small_375349_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375349_right_root small_375349_right_fuel small_375349_right_count small_375349_right_encoded small_375349_right_checked

theorem cover_375349 : CoveredBy scale carrier boxes root_375349 := by
  apply coveredBy_split_literal root_375349 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375350 small_375349_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375350
  · exact small_375349_right_covered
#print axioms cover_375349

def root_375344 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375344_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_375344_right_fuel : Nat := 1
def small_375344_right_count : Nat := 1
def small_375344_right_encoded : String := "00000001"
theorem small_375344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_375344_right_root small_375344_right_fuel small_375344_right_count small_375344_right_encoded = true := by
  decide +kernel
theorem small_375344_right_covered : CoveredBy scale carrier boxes small_375344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_375344_right_root small_375344_right_fuel small_375344_right_count small_375344_right_encoded small_375344_right_checked

theorem cover_375344 : CoveredBy scale carrier boxes root_375344 := by
  apply coveredBy_split_literal root_375344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375349 small_375344_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375349
  · exact small_375344_right_covered
#print axioms cover_375344

def root_371162 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_371162 : CoveredBy scale carrier boxes root_371162 := by
  apply coveredBy_split_literal root_371162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_371163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_375344 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_371163
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_375344
#print axioms cover_371162

def root_371157 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371157_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_371157_right_fuel : Nat := 1
def small_371157_right_count : Nat := 1
def small_371157_right_encoded : String := "00000000"
theorem small_371157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_371157_right_root small_371157_right_fuel small_371157_right_count small_371157_right_encoded = true := by
  decide +kernel
theorem small_371157_right_covered : CoveredBy scale carrier boxes small_371157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_371157_right_root small_371157_right_fuel small_371157_right_count small_371157_right_encoded small_371157_right_checked

theorem cover_371157 : CoveredBy scale carrier boxes root_371157 := by
  apply coveredBy_split_literal root_371157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_371162 small_371157_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_371162
  · exact small_371157_right_covered
#print axioms cover_371157

def root_357745 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_357745 : CoveredBy scale carrier boxes root_357745 := by
  apply coveredBy_split_literal root_357745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_357746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_371157 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_357746
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_371157
#print axioms cover_357745

def root_357739 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357739_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_357739_left_fuel : Nat := 1
def small_357739_left_count : Nat := 1
def small_357739_left_encoded : String := "00000004"
theorem small_357739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_357739_left_root small_357739_left_fuel small_357739_left_count small_357739_left_encoded = true := by
  decide +kernel
theorem small_357739_left_covered : CoveredBy scale carrier boxes small_357739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_357739_left_root small_357739_left_fuel small_357739_left_count small_357739_left_encoded small_357739_left_checked

theorem cover_357739 : CoveredBy scale carrier boxes root_357739 := by
  apply coveredBy_split_literal root_357739 small_357739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_357745 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_357739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_357745
#print axioms cover_357739

def root_356117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_356117 : CoveredBy scale carrier boxes root_356117 := by
  apply coveredBy_split_literal root_356117 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0130.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_357739 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0130.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_357739
#print axioms cover_356117

def root_356112 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_356112_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_356112_right_fuel : Nat := 1
def small_356112_right_count : Nat := 1
def small_356112_right_encoded : String := "00000003"
theorem small_356112_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_356112_right_root small_356112_right_fuel small_356112_right_count small_356112_right_encoded = true := by
  decide +kernel
theorem small_356112_right_covered : CoveredBy scale carrier boxes small_356112_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_356112_right_root small_356112_right_fuel small_356112_right_count small_356112_right_encoded small_356112_right_checked

theorem cover_356112 : CoveredBy scale carrier boxes root_356112 := by
  apply coveredBy_split_literal root_356112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_356117 small_356112_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_356117
  · exact small_356112_right_covered
#print axioms cover_356112

def root_355744 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_355744_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_355744_left_fuel : Nat := 25
def small_355744_left_count : Nat := 167
def small_355744_left_encoded : String := "1151E907000000030A0001081151E8FF08A912F712073CF60000000008A912F900000008120700F800000006000000010000000800000004115224FF0000000408A912F712073CF60000000008A912F912073CF80000000108A912FB12073D0408A912FF12073D0805000106135D4507000000030CFD9BF70000000A00000008135D81070CFD9BF70F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040000000A000000020F34D10400000002000000080F34D0F80000000A000000010F34D0F60CFD9BF9000000080F34D0F8000000080000000100000000000000030000000412070108000000040000000A00000002120701040000000208A912FF12073D080000000800000004120701080000000405000106135D4507000000030CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB0000000A1386710400000002000000080000000A0F34D0F60000000500000000135D81070CFD9BF70F350CF6000000000CFD9BF90F350CF800000001045489FB1386AD04045489FF1386AD080C9A86F6000000080F8750F70000000A000000000000000413867108000000040000000A000000021386710400000002045489FF0000000813867108000000040C9A86F60F878CF7000000000C9A86F800000008000000070F8750F70C9A86F80000000600000006000000000F34D0F80000000A000000010F34D0F60CFD9BF9000000080F34D0F800000005000000010000000000000003120700F808A912FB0000000A120701040000000208A912FF0000000612070108000000040000000A00000001120700F608A912F912073CF80000000108A912FB12073D0408A912FF0000000812070108000000040000000700000002120701040000000200000008120700F8000000050000000100000000"
theorem small_355744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_355744_left_root small_355744_left_fuel small_355744_left_count small_355744_left_encoded = true := by
  decide +kernel
theorem small_355744_left_covered : CoveredBy scale carrier boxes small_355744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_355744_left_root small_355744_left_fuel small_355744_left_count small_355744_left_encoded small_355744_left_checked

theorem cover_355744 : CoveredBy scale carrier boxes root_355744 := by
  apply coveredBy_split_literal root_355744 small_355744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_356112 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_355744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_356112
#print axioms cover_355744

def root_355738 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_355738_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_355738_left_fuel : Nat := 1
def small_355738_left_count : Nat := 1
def small_355738_left_encoded : String := "00000002"
theorem small_355738_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_355738_left_root small_355738_left_fuel small_355738_left_count small_355738_left_encoded = true := by
  decide +kernel
theorem small_355738_left_covered : CoveredBy scale carrier boxes small_355738_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_355738_left_root small_355738_left_fuel small_355738_left_count small_355738_left_encoded small_355738_left_checked

theorem cover_355738 : CoveredBy scale carrier boxes root_355738 := by
  apply coveredBy_split_literal root_355738 small_355738_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_355744 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_355738_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_355744
#print axioms cover_355738

def root_352874 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_352874 : CoveredBy scale carrier boxes root_352874 := by
  apply coveredBy_split_literal root_352874 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0129.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_355738 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0129.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_355738
#print axioms cover_352874

def root_352868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_352868_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_352868_left_fuel : Nat := 1
def small_352868_left_count : Nat := 1
def small_352868_left_encoded : String := "00000001"
theorem small_352868_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_352868_left_root small_352868_left_fuel small_352868_left_count small_352868_left_encoded = true := by
  decide +kernel
theorem small_352868_left_covered : CoveredBy scale carrier boxes small_352868_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_352868_left_root small_352868_left_fuel small_352868_left_count small_352868_left_encoded small_352868_left_checked

theorem cover_352868 : CoveredBy scale carrier boxes root_352868 := by
  apply coveredBy_split_literal root_352868 small_352868_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352874 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_352868_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352874
#print axioms cover_352868

def root_352867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_352867 : CoveredBy scale carrier boxes root_352867 := by
  apply coveredBy_split_literal root_352867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352868 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0146.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0146.covered
#print axioms cover_352867

def root_352861 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_352861_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_352861_left_fuel : Nat := 1
def small_352861_left_count : Nat := 1
def small_352861_left_encoded : String := "00000000"
theorem small_352861_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_352861_left_root small_352861_left_fuel small_352861_left_count small_352861_left_encoded = true := by
  decide +kernel
theorem small_352861_left_covered : CoveredBy scale carrier boxes small_352861_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_352861_left_root small_352861_left_fuel small_352861_left_count small_352861_left_encoded small_352861_left_checked

theorem cover_352861 : CoveredBy scale carrier boxes root_352861 := by
  apply coveredBy_split_literal root_352861 small_352861_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352867 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_352861_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352867
#print axioms cover_352861

def root_352860 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_352860 : CoveredBy scale carrier boxes root_352860 := by
  apply coveredBy_split_literal root_352860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352861 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0147.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352861
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0147.covered
#print axioms cover_352860

def root_407473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_407473 : CoveredBy scale carrier boxes root_407473 := by
  apply coveredBy_split_literal root_407473 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0148.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0149.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0148.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0149.covered
#print axioms cover_407473

def root_352859 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_352859 : CoveredBy scale carrier boxes root_352859 := by
  apply coveredBy_split_literal root_352859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352860 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_407473 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352860
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_407473
#print axioms cover_352859

def root_347539 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_347539 : CoveredBy scale carrier boxes root_347539 := by
  apply coveredBy_split_literal root_347539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_347540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_352859 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_347540
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_352859
#print axioms cover_347539

def root_297155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_297155 : CoveredBy scale carrier boxes root_297155 := by
  apply coveredBy_split_literal root_297155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.root_297156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_347539 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0010.cover_297156
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_347539
#print axioms cover_297155

def root_222355 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_222355 : CoveredBy scale carrier boxes root_222355 := by
  apply coveredBy_split_literal root_222355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0008.root_222356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_297155 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0008.cover_222356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_297155
#print axioms cover_222355

def root_414133 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_414133 : CoveredBy scale carrier boxes root_414133 := by
  apply coveredBy_split_literal root_414133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0150.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0151.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0150.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0151.covered
#print axioms cover_414133

def root_414127 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414127_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414127_left_fuel : Nat := 1
def small_414127_left_count : Nat := 1
def small_414127_left_encoded : String := "00000000"
theorem small_414127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_414127_left_root small_414127_left_fuel small_414127_left_count small_414127_left_encoded = true := by
  decide +kernel
theorem small_414127_left_covered : CoveredBy scale carrier boxes small_414127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_414127_left_root small_414127_left_fuel small_414127_left_count small_414127_left_encoded small_414127_left_checked

theorem cover_414127 : CoveredBy scale carrier boxes root_414127 := by
  apply coveredBy_split_literal root_414127 small_414127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_414133 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_414127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_414133
#print axioms cover_414127

def root_414126 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414126_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414126_right_fuel : Nat := 18
def small_414126_right_count : Nat := 117
def small_414126_right_encoded : String := "0F34D0F6045489F91386ACF80000000104548A0513867104000000020CFD9BFD0F350CFC00000003045489FF00000008138670FE0C9A86FC000000080F8750FD0AD3577710D13CF600000000067ECE790000000812EA58F8022A458513E1C50400000002000000080000000500000001000000080000000300000004000000081386AD040CFD9BFD0F350CFC00000003045489FF00000008138670FE0C9A86FC0F878CFD00000003000000080F8750FD0AD3577710D13CF600000000067ECE7900000008000000050000000500000003000000040000000800000002138670F804548A0513867104000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86FC000000080000000A138670FE0C9A86FC0F878CFD000000030AD3577710D13CF600000000022A45790000000800000005000000050F8750FD0AD3577710D13CF600000000022A457913E200F800000001022A458513E1C504000000020000000500000005000000050000000500000003000000040F34D0FC00000008000000031386AD040CFD9BFD0F350CFC00000003045489FF0000000A138670FE0C9A86FC0F878CFD000000030000000500000005000000040F34D0FC0000000800000003000000020000000100000000"
theorem small_414126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_414126_right_root small_414126_right_fuel small_414126_right_count small_414126_right_encoded = true := by
  decide +kernel
theorem small_414126_right_covered : CoveredBy scale carrier boxes small_414126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_414126_right_root small_414126_right_fuel small_414126_right_count small_414126_right_encoded small_414126_right_checked

theorem cover_414126 : CoveredBy scale carrier boxes root_414126 := by
  apply coveredBy_split_literal root_414126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_414127 small_414126_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_414127
  · exact small_414126_right_covered
#print axioms cover_414126

def root_414121 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414121_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_414121_right_fuel : Nat := 1
def small_414121_right_count : Nat := 1
def small_414121_right_encoded : String := "00000004"
theorem small_414121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_414121_right_root small_414121_right_fuel small_414121_right_count small_414121_right_encoded = true := by
  decide +kernel
theorem small_414121_right_covered : CoveredBy scale carrier boxes small_414121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_414121_right_root small_414121_right_fuel small_414121_right_count small_414121_right_encoded small_414121_right_checked

theorem cover_414121 : CoveredBy scale carrier boxes root_414121 := by
  apply coveredBy_split_literal root_414121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_414126 small_414121_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_414126
  · exact small_414121_right_covered
#print axioms cover_414121

def root_413517 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413517_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413517_left_fuel : Nat := 26
def small_413517_left_count : Nat := 275
def small_413517_left_encoded : String := "12073CFE000000040CFD9BF70F350CF600000000045489F91386ACF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE00000004000000080F34D0FE0C9A86F6000000080F8750F70C9A86FC000000080F8750FD067ECE790000000812EA58F8022A458513E1C504000000020AD3577F0000000810D100FE000000080000000413E201040AD3577F0000000810D100FE000000080000000400000002000000010000000300000000000000040F34D0FC00000008000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F6000000080F8750F700000008000000000F34D0FE0C9A86F60F878CF700000000000000080F8750F70C9A86FC0F878CFD00000003000000080F8750FD0000000A0000000300000000000000040F34D0FC000000080000000300000002138670F804548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000080F8750F70C9A86FC0F878CFD00000003000000080F8750FD0C9A86FE0000000A0F8750FF000000080000000400000003000000000F34D0FE0C9A86F60F878CF7000000000C9A86FC0F878CFD00000003000000080F8750FD0000000A000000030F8750F70C9A86FC0F878CFD00000003022A45790000000813E1C4F8022A458513E1C504000000020AD3577F0000000810D100FE0B4D43F600000008000000090000000413E201040AD3577F0000000810D100FE000000060000000400000002000000010F8750FD022A457913E200F800000001022A458513E1C504000000020AD3577F0000000A10D100FE0B4D43F610804CF70000000000000008108010F70B4D43FC10804CFD00000003000000080000000A000000000000000413E201040000000A0000000213E1C4F8022A458513E1C504000000020AD3577F0000000A10D100FE0B4D43F60000000A108010F70B4D43FC10804CFD00000003000000060000000A00000000000000040000000A000000010000000300000000000000040F34D0FC0CFD9BFF000000080F34D0FE0000000800000004000000031386AD040CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60000000A0F8750F70C9A86FC0F878CFD000000030000000A0000000A000000000F34D0FE0C9A86F60F878CF7000000000000000A0F8750F70C9A86FC0F878CFD00000003022A457913E200F800000001067ECE8512EA590400000002000000080000000813E1C4F8067ECE8512EA5904000000020000000600000006000000010000000A00000000000000040F34D0FC0CFD9BFF000000080F34D0FE00000008000000040000000300000002000000010F34D0F6045489F900000008138670F804548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D0FE0000000800000004000000081386AD040CFD9BFD0F350CFC000000030000000A00000008000000020000000100000000"
theorem small_413517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413517_left_root small_413517_left_fuel small_413517_left_count small_413517_left_encoded = true := by
  decide +kernel
theorem small_413517_left_covered : CoveredBy scale carrier boxes small_413517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413517_left_root small_413517_left_fuel small_413517_left_count small_413517_left_encoded small_413517_left_checked

theorem cover_413517 : CoveredBy scale carrier boxes root_413517 := by
  apply coveredBy_split_literal root_413517 small_413517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_414121 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_413517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_414121
#print axioms cover_413517

def root_413511 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413511_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413511_left_fuel : Nat := 1
def small_413511_left_count : Nat := 1
def small_413511_left_encoded : String := "00000003"
theorem small_413511_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413511_left_root small_413511_left_fuel small_413511_left_count small_413511_left_encoded = true := by
  decide +kernel
theorem small_413511_left_covered : CoveredBy scale carrier boxes small_413511_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413511_left_root small_413511_left_fuel small_413511_left_count small_413511_left_encoded small_413511_left_checked

theorem cover_413511 : CoveredBy scale carrier boxes root_413511 := by
  apply coveredBy_split_literal root_413511 small_413511_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413517 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_413511_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413517
#print axioms cover_413511

def root_413510 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413510_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413510_right_fuel : Nat := 11
def small_413510_right_count : Nat := 23
def small_413510_right_encoded : String := "120700FC08A912FF00000008120700FE0CFD9BF70F350CF600000000045489F900000007138670F804548A051386710400000002000000081386AD04045489FD00000007000000050000000200000001000000080000000400000003"
theorem small_413510_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413510_right_root small_413510_right_fuel small_413510_right_count small_413510_right_encoded = true := by
  decide +kernel
theorem small_413510_right_covered : CoveredBy scale carrier boxes small_413510_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413510_right_root small_413510_right_fuel small_413510_right_count small_413510_right_encoded small_413510_right_checked

theorem cover_413510 : CoveredBy scale carrier boxes root_413510 := by
  apply coveredBy_split_literal root_413510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413511 small_413510_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413511
  · exact small_413510_right_covered
#print axioms cover_413510

def root_413504 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413504_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413504_left_fuel : Nat := 1
def small_413504_left_count : Nat := 1
def small_413504_left_encoded : String := "00000002"
theorem small_413504_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413504_left_root small_413504_left_fuel small_413504_left_count small_413504_left_encoded = true := by
  decide +kernel
theorem small_413504_left_covered : CoveredBy scale carrier boxes small_413504_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413504_left_root small_413504_left_fuel small_413504_left_count small_413504_left_encoded small_413504_left_checked

theorem cover_413504 : CoveredBy scale carrier boxes root_413504 := by
  apply coveredBy_split_literal root_413504 small_413504_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413510 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_413504_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413510
#print axioms cover_413504

def root_413503 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413503_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413503_right_fuel : Nat := 19
def small_413503_right_count : Nat := 259
def small_413503_right_encoded : String := "12073D0408A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0000000A0F34D0FE0000000A000000040F34D0FC00000008000000030F350D040CFD9BFD0000000A0000000A00000002138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0000000A0F34D0FE0000000A000000040F34D0FC0CFD9BFF000000080F34D0FE0C9A86F6000000080F8750F7000000060000000000000004000000030F350D040CFD9BFD0000000A0000000A00000002000000010F34D0F6045489F91386ACF8000000010000000A138670F80CFD9C050F34D104000000020000000A0000000A0000000100000000120700FE0CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F60F878CF7000000000000000A0F8750F70C9A86FC000000070000000A00000000138670FE0C9A86F60F878CF7000000000C9A86FC000000070000000900000007000000040F34D0FC00000007000000030F350D040CFD9BFD000000070000000700000002138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F60000000A0F8750F70C9A86FC000000060000000500000000138670FE0C9A86F60F878CF7000000000000000500000005000000040F34D0FC045489FF1386ACFE000000040C9A86F60F878CF700000000000000070000000600000005000000030F350D040CFD9BFD0F350CFC00000003045489FF0000000A138670FE0C9A86F60000000900000005000000040F34D0FC000000070000000300000002000000010F34D0F6045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF0000000A138670FE0C9A86FC0F878CFD000000030000000A00000009000000040F34D0FC00000007000000030F350D040000000A00000002138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030000000A0F34D0FC045489FF0000000800000005000000030F350D040000000A00000002000000010000000000000004120700FC08A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9C050F34D104000000020000000800000008138670F80CFD9C050F34D10400000002000000080F350D04045489FD1386ACFC000000030CFD9BFF00000008000000070000000800000002000000010F34D0F60000000800000000120700FE0CFD9BF70F350CF600000000045489F900000007138670F80CFD9C0500000007000000070000000100000007000000040000000300000002"
theorem small_413503_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413503_right_root small_413503_right_fuel small_413503_right_count small_413503_right_encoded = true := by
  decide +kernel
theorem small_413503_right_covered : CoveredBy scale carrier boxes small_413503_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413503_right_root small_413503_right_fuel small_413503_right_count small_413503_right_encoded small_413503_right_checked

theorem cover_413503 : CoveredBy scale carrier boxes root_413503 := by
  apply coveredBy_split_literal root_413503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413504 small_413503_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413504
  · exact small_413503_right_covered
#print axioms cover_413503

def root_413498 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413498_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_413498_right_fuel : Nat := 1
def small_413498_right_count : Nat := 1
def small_413498_right_encoded : String := "00000001"
theorem small_413498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_413498_right_root small_413498_right_fuel small_413498_right_count small_413498_right_encoded = true := by
  decide +kernel
theorem small_413498_right_covered : CoveredBy scale carrier boxes small_413498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_413498_right_root small_413498_right_fuel small_413498_right_count small_413498_right_encoded small_413498_right_checked

theorem cover_413498 : CoveredBy scale carrier boxes root_413498 := by
  apply coveredBy_split_literal root_413498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413503 small_413498_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413503
  · exact small_413498_right_covered
#print axioms cover_413498

def root_412626 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412626_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412626_left_fuel : Nat := 32
def small_412626_left_count : Nat := 407
def small_412626_left_encoded : String := "12073CF80000000108A91305120701040000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9BF90F350CF80000000104548A051386710400000002000000081386AD040CFD9BFD0000000800000008000000020F34D0F804548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D0FE0000000800000004000000081386AD040CFD9BFD0F350CFC000000030CFD9BFF000000080F34D0FE00000008000000040000000800000002000000010F34D0F60000000800000000120700FE0CFD9BF70F350CF6000000000CFD9BF90F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC00000003045489FF00000008138670FE0C9A86F60F878CF700000000000000080F8750F70C9A86F80F878CF9000000010C9A86FC00000007000000070F8750F9000000070000000100000000000000040F34D0FC00000008000000031386AD040CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F60000000800000007138670FE0C9A86F60F878CF7000000000C9A86F8000000070000000800000007000000040F34D0FC0000000700000003000000020F34D0F804548A0513867104000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F6000000080F8750F70C9A86FC000000080F8750FD0AD357790000000810D100F8022A458513E1C504000000020000000800000008000000010000000300000000138670FE0C9A86F60F878CF7000000000C9A86FC0F878CFD00000003000000080F8750FD0AD357790000000810D100F8022A458513E1C50400000002022A457F0000000813E1C4FE0DE7C9F6000000060E5FD8F70B4D43FC0000000800000006000000000000000413E20104022A457F00000008000000090000000200000001000000030F8750F70C9A86FC0F878CFD00000003000000070F8750FD0AD3577910D13CF800000001022A458513E1C50400000002022A457F00000007000000070000000710D100F8022A458513E1C50400000002022A457F13E200FE000000040B4D43F610804CF700000000000000080000000713E1C4FE0B4D43F610804CF7000000000B4D43FC00000007108010FD0000000900000003000000070000000413E20104022A457F000000070000000700000002000000010000000300000000000000040F34D0FC00000008000000031386AD040CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F60F878CF700000000000000080F8750F70000000700000000138670FE0C9A86F60F878CF7000000000C9A86FC000000070F8750FD0AD357790000000710D100F8067ECE8512EA590400000002022A457F00000008000000070000000700000001000000030F8750F70000000700000000000000040F34D0FC000000070000000300000002000000010F34D0F60CFD9BF9000000080F34D0F804548A051386710400000002000000081386AD040CFD9BFD000000080000000800000002000000010000000000000004120700FC08A912FF00000008120700FE00000008000000040000000312073D0408A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD00000007000000070F350D0400000007000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D0FE0C9A86F60000000700000007000000040F34D0FC00000007000000030F350D040000000A00000002000000010F34D0F60CFD9BF90F350CF800000001000000080000000A00000000120700FE0CFD9BF70F350CF6000000000CFD9BF90F350CF8000000010CFD9C050F34D1040000000200000007000000070F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF00000007000000070000000700000007000000010F34D0F60CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000080F350D0400000007000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF00000008138670FE0C9A86FC000000070F8750FD000000090000000300000004000000080F350D040000000700000002000000010000000000000004120700FC08A912FF12073CFE000000040CFD9BF70000000800000007000000070000000300000002"
theorem small_412626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412626_left_root small_412626_left_fuel small_412626_left_count small_412626_left_encoded = true := by
  decide +kernel
theorem small_412626_left_covered : CoveredBy scale carrier boxes small_412626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412626_left_root small_412626_left_fuel small_412626_left_count small_412626_left_encoded small_412626_left_checked

theorem cover_412626 : CoveredBy scale carrier boxes root_412626 := by
  apply coveredBy_split_literal root_412626 small_412626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_413498 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_412626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_413498
#print axioms cover_412626

def root_412620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412620_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412620_left_fuel : Nat := 1
def small_412620_left_count : Nat := 1
def small_412620_left_encoded : String := "00000000"
theorem small_412620_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412620_left_root small_412620_left_fuel small_412620_left_count small_412620_left_encoded = true := by
  decide +kernel
theorem small_412620_left_covered : CoveredBy scale carrier boxes small_412620_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412620_left_root small_412620_left_fuel small_412620_left_count small_412620_left_encoded small_412620_left_checked

theorem cover_412620 : CoveredBy scale carrier boxes root_412620 := by
  apply coveredBy_split_literal root_412620 small_412620_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412626 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_412620_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412626
#print axioms cover_412620

def root_412619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412619_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412619_right_fuel : Nat := 18
def small_412619_right_count : Nat := 117
def small_412619_right_encoded : String := "120700F608A912F912073CF80000000108A91305120701040000000208A912FD12073CFC0000000308A912FF00000008120700FE00000008000000040000000812073D0408A912FD12073CFC0000000308A912FF12073CFE00000004045489F70000000800000008120700FE045489F71386ACF6000000000CFD9BF90F350CF800000001000000080F34D0F80CFD9C050F34D10400000002000000080F350D040000000A0000000200000001138670F60CFD9BF9000000080F34D0F800000008000000010000000000000004120700FC000000080000000300000002120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF00000008120700FE045489F71386ACF600000000045489F900000008138670F804548A051386710400000002000000081386AD040CFD9BFD0F350CFC000000030000000A00000008000000020000000100000008000000040000000812073D0408A912FD12073CFC0000000308A912FF0000000A120700FE045489F71386ACF600000000045489F91386ACF8000000010CFD9C050000000A0000000A0000000A138670F60000000A0000000000000004120700FC08A912FF00000008120700FE000000080000000400000003000000020000000100000000"
theorem small_412619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412619_right_root small_412619_right_fuel small_412619_right_count small_412619_right_encoded = true := by
  decide +kernel
theorem small_412619_right_covered : CoveredBy scale carrier boxes small_412619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412619_right_root small_412619_right_fuel small_412619_right_count small_412619_right_encoded small_412619_right_checked

theorem cover_412619 : CoveredBy scale carrier boxes root_412619 := by
  apply coveredBy_split_literal root_412619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412620 small_412619_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412620
  · exact small_412619_right_covered
#print axioms cover_412619

def root_412613 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412613_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412613_left_fuel : Nat := 1
def small_412613_left_count : Nat := 1
def small_412613_left_encoded : String := "00000004"
theorem small_412613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412613_left_root small_412613_left_fuel small_412613_left_count small_412613_left_encoded = true := by
  decide +kernel
theorem small_412613_left_covered : CoveredBy scale carrier boxes small_412613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412613_left_root small_412613_left_fuel small_412613_left_count small_412613_left_encoded small_412613_left_checked

theorem cover_412613 : CoveredBy scale carrier boxes root_412613 := by
  apply coveredBy_split_literal root_412613 small_412613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412619 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_412613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412619
#print axioms cover_412613

def root_412612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412612_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412612_right_fuel : Nat := 24
def small_412612_right_count : Nat := 181
def small_412612_right_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073CF80000000108A91305120701040000000208A912FD12073CFC00000003050000FE00000008000000080000000812073D0408A912FD12073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BF9000000080F34D0F8000000080000000100000008135D44FF0CFD9BF7000000080000000800000004120700FC000000080000000300000002120700F808A91305120701040000000208A912FD12073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F900000008138670F804548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F6000000080F8750F70C9A86FC000000080F8750FD000000080000000300000000000000081386AD040CFD9BFD0F350CFC000000030C9A86F6000000080000000A00000008000000020000000100000008135D44FF0CFD9BF70F350CF600000000045489F900000008138670F804548A0513867104000000020CFD9BFD0000000800000008000000080000000100000008000000040000000812073D0408A912FD12073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9C050F34D10400000002000000080000000A138670F80CFD9C050F34D104000000020CFD9BFD0000000A000000080000000A000000010F34D0F60000000A00000000135D44FF0CFD9BF70F350CF600000000045489F91386ACF8000000010CFD9C050F34D104000000020000000800000008138670F80CFD9C050F34D104000000020CFD9BFD00000008000000080F350D040000000A00000002000000010F34D0F6000000080000000000000004120700FC00000008000000030000000200000001120700F608A912F900000008120700F808A9130512070104000000020000000812073D0408A912FD000000080000000800000002000000010000000000000004"
theorem small_412612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412612_right_root small_412612_right_fuel small_412612_right_count small_412612_right_encoded = true := by
  decide +kernel
theorem small_412612_right_covered : CoveredBy scale carrier boxes small_412612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412612_right_root small_412612_right_fuel small_412612_right_count small_412612_right_encoded small_412612_right_checked

theorem cover_412612 : CoveredBy scale carrier boxes root_412612 := by
  apply coveredBy_split_literal root_412612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412613 small_412612_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412613
  · exact small_412612_right_covered
#print axioms cover_412612

def root_412606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412606_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412606_left_fuel : Nat := 1
def small_412606_left_count : Nat := 1
def small_412606_left_encoded : String := "00000003"
theorem small_412606_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412606_left_root small_412606_left_fuel small_412606_left_count small_412606_left_encoded = true := by
  decide +kernel
theorem small_412606_left_covered : CoveredBy scale carrier boxes small_412606_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412606_left_root small_412606_left_fuel small_412606_left_count small_412606_left_encoded small_412606_left_checked

theorem cover_412606 : CoveredBy scale carrier boxes root_412606 := by
  apply coveredBy_split_literal root_412606 small_412606_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412612 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_412606_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412612
#print axioms cover_412606

def root_420434 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_420434 : CoveredBy scale carrier boxes root_420434 := by
  apply coveredBy_split_literal root_420434 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0152.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0153.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0152.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0153.covered
#print axioms cover_420434

def root_420428 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420428_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420428_left_fuel : Nat := 1
def small_420428_left_count : Nat := 1
def small_420428_left_encoded : String := "00000000"
theorem small_420428_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_420428_left_root small_420428_left_fuel small_420428_left_count small_420428_left_encoded = true := by
  decide +kernel
theorem small_420428_left_covered : CoveredBy scale carrier boxes small_420428_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_420428_left_root small_420428_left_fuel small_420428_left_count small_420428_left_encoded small_420428_left_checked

theorem cover_420428 : CoveredBy scale carrier boxes root_420428 := by
  apply coveredBy_split_literal root_420428 small_420428_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420434 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_420428_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420434
#print axioms cover_420428

def root_420427 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420427_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420427_right_fuel : Nat := 16
def small_420427_right_count : Nat := 149
def small_420427_right_encoded : String := "120700F608A912F912073CF80000000108A91305120701040000000208A912FF12073CFE00000004050000FC00000008135D44FD045489F70000000A0000000800000003120700FE050000FC135D80FD00000003045489F71386ACF6000000000CFD9BF9000000080F34D0F8000000080000000100000008135D44FD045489F71386ACF6000000000CFD9BF9000000060F34D0F8000000060000000100000006000000030000000412073D0408A912FF12073CFE00000004050000FC135D80FD00000003045489F70000000A138670F60000000800000000135D44FD045489F70000000A0000000A00000003120700FE050000FC135D80FD00000003045489F71386ACF6000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000080F350D0400000009000000020F34D0F80CFD9C050000000A0000000900000001138670F60CFD9BF90F350CF800000001000000080F34D0F80CFD9C050000000A000000090000000100000000135D44FD045489F71386ACF6000000000CFD9BF9000000090F34D0F80000000900000001138670F60CFD9BF90F350CF8000000010CFD9C0500000006000000050F34D0F8000000090000000100000000000000030000000400000002120700F808A91305120701040000000208A912FF0000000A120700FE050000FC135D80FD00000003045489F71386ACF600000000045489F91386ACF8000000010000000A0000000A0000000A0000000A0000000412073D0408A912FF0000000A120700FE050000FC135D80FD000000030000000A0000000A00000004000000020000000100000000"
theorem small_420427_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_420427_right_root small_420427_right_fuel small_420427_right_count small_420427_right_encoded = true := by
  decide +kernel
theorem small_420427_right_covered : CoveredBy scale carrier boxes small_420427_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_420427_right_root small_420427_right_fuel small_420427_right_count small_420427_right_encoded small_420427_right_checked

theorem cover_420427 : CoveredBy scale carrier boxes root_420427 := by
  apply coveredBy_split_literal root_420427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420428 small_420427_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420428
  · exact small_420427_right_covered
#print axioms cover_420427

def root_420421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420421_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420421_left_fuel : Nat := 1
def small_420421_left_count : Nat := 1
def small_420421_left_encoded : String := "00000004"
theorem small_420421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_420421_left_root small_420421_left_fuel small_420421_left_count small_420421_left_encoded = true := by
  decide +kernel
theorem small_420421_left_covered : CoveredBy scale carrier boxes small_420421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_420421_left_root small_420421_left_fuel small_420421_left_count small_420421_left_encoded small_420421_left_checked

theorem cover_420421 : CoveredBy scale carrier boxes root_420421 := by
  apply coveredBy_split_literal root_420421 small_420421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420427 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_420421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420427
#print axioms cover_420421

def root_420420 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420420_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420420_right_fuel : Nat := 18
def small_420420_right_count : Nat := 59
def small_420420_right_encoded : String := "1151E8FF08A912F712073CF60000000008A912F912073CF80000000108A913051207010400000002050000FC135D80FD00000003050000FE0000000A135D44FF0000000A000000040000000A0000000A120700F808A913051207010400000002050000FC135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF600000000045489F90000000A0000000A0000000A135D44FF0CFD9BF70F350CF600000000045489F90000000A138670F804548A0513867104000000020000000A0000000A000000010000000A000000040000000A0000000A00000001120700F60000000A0000000000000004"
theorem small_420420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_420420_right_root small_420420_right_fuel small_420420_right_count small_420420_right_encoded = true := by
  decide +kernel
theorem small_420420_right_covered : CoveredBy scale carrier boxes small_420420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_420420_right_root small_420420_right_fuel small_420420_right_count small_420420_right_encoded small_420420_right_checked

theorem cover_420420 : CoveredBy scale carrier boxes root_420420 := by
  apply coveredBy_split_literal root_420420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420421 small_420420_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420421
  · exact small_420420_right_covered
#print axioms cover_420420

def root_420415 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420415_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_420415_right_fuel : Nat := 1
def small_420415_right_count : Nat := 1
def small_420415_right_encoded : String := "00000003"
theorem small_420415_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_420415_right_root small_420415_right_fuel small_420415_right_count small_420415_right_encoded = true := by
  decide +kernel
theorem small_420415_right_covered : CoveredBy scale carrier boxes small_420415_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_420415_right_root small_420415_right_fuel small_420415_right_count small_420415_right_encoded small_420415_right_checked

theorem cover_420415 : CoveredBy scale carrier boxes root_420415 := by
  apply coveredBy_split_literal root_420415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420420 small_420415_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420420
  · exact small_420415_right_covered
#print axioms cover_420415

def root_412605 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_412605 : CoveredBy scale carrier boxes root_412605 := by
  apply coveredBy_split_literal root_412605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_420415 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412606
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_420415
#print axioms cover_412605

def root_412600 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412600_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412600_right_fuel : Nat := 1
def small_412600_right_count : Nat := 1
def small_412600_right_encoded : String := "00000002"
theorem small_412600_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412600_right_root small_412600_right_fuel small_412600_right_count small_412600_right_encoded = true := by
  decide +kernel
theorem small_412600_right_covered : CoveredBy scale carrier boxes small_412600_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412600_right_root small_412600_right_fuel small_412600_right_count small_412600_right_encoded small_412600_right_checked

theorem cover_412600 : CoveredBy scale carrier boxes root_412600 := by
  apply coveredBy_split_literal root_412600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412605 small_412600_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412605
  · exact small_412600_right_covered
#print axioms cover_412600

def root_412242 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412242_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412242_left_fuel : Nat := 18
def small_412242_left_count : Nat := 169
def small_412242_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073CFE000000040000000700000007120700FC0000000700000003120700F808A912FD12073CFC0000000308A912FF0000000A120700FE0500010400000007135D81050CFD9BF70F350CF60000000000000007000000070000000200000004120700FC08A912FF12073CFE000000040500010400000007135D81050CFD9BF70F350CF600000000000000070000000700000002000000070000000300000001120700F608A912F912073CF80000000108A912FD12073CFC0000000308A912FF0000000A120700FE050001040000000A135D8105045489F700000007000000070000000200000004000000070000000A000000001151E8FF08A912F712073CF60000000008A912F912073CF80000000108A912FD0000000A120700FC0000000700000003120700F808A912FD12073CFC00000003050001040000000A0000000A120700FC0500010400000007000000080000000300000001120700F608A912F900000007120700F80000000A0000000100000000000000041151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912F912073CF80000000108A912FF12073CFE00000004050001040000000A135D81050000000A00000002120700FE0500010400000009135D8105050000FC135D80FD000000030CFD9BF70000000700000007000000090000000200000004120700F80000000A00000001120700F608A912F912073CF80000000108A912FF0000000A120700FE050001040000000A135D8105050000FC135D80FD000000030000000A0000000900000002000000040000000A000000001151E8FF0000000A0000000400000003"
theorem small_412242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412242_left_root small_412242_left_fuel small_412242_left_count small_412242_left_encoded = true := by
  decide +kernel
theorem small_412242_left_covered : CoveredBy scale carrier boxes small_412242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412242_left_root small_412242_left_fuel small_412242_left_count small_412242_left_encoded small_412242_left_checked

theorem cover_412242 : CoveredBy scale carrier boxes root_412242 := by
  apply coveredBy_split_literal root_412242 small_412242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412600 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_412242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412600
#print axioms cover_412242

def root_412236 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412236_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412236_left_fuel : Nat := 1
def small_412236_left_count : Nat := 1
def small_412236_left_encoded : String := "00000001"
theorem small_412236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412236_left_root small_412236_left_fuel small_412236_left_count small_412236_left_encoded = true := by
  decide +kernel
theorem small_412236_left_covered : CoveredBy scale carrier boxes small_412236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412236_left_root small_412236_left_fuel small_412236_left_count small_412236_left_encoded small_412236_left_checked

theorem cover_412236 : CoveredBy scale carrier boxes root_412236 := by
  apply coveredBy_split_literal root_412236 small_412236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412242 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_412236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412242
#print axioms cover_412236

def root_412235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_412235 : CoveredBy scale carrier boxes root_412235 := by
  apply coveredBy_split_literal root_412235 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0154.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412236
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0154.covered
#print axioms cover_412235

def root_412229 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412229_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_412229_left_fuel : Nat := 1
def small_412229_left_count : Nat := 1
def small_412229_left_encoded : String := "00000000"
theorem small_412229_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_412229_left_root small_412229_left_fuel small_412229_left_count small_412229_left_encoded = true := by
  decide +kernel
theorem small_412229_left_covered : CoveredBy scale carrier boxes small_412229_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_412229_left_root small_412229_left_fuel small_412229_left_count small_412229_left_encoded small_412229_left_checked

theorem cover_412229 : CoveredBy scale carrier boxes root_412229 := by
  apply coveredBy_split_literal root_412229 small_412229_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_412235 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_412229_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_412235
#print axioms cover_412229

def root_428042 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_428042 : CoveredBy scale carrier boxes root_428042 := by
  apply coveredBy_split_literal root_428042 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0155.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0156.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0155.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0156.covered
#print axioms cover_428042

def root_428036 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428036_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428036_left_fuel : Nat := 1
def small_428036_left_count : Nat := 1
def small_428036_left_encoded : String := "00000003"
theorem small_428036_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_428036_left_root small_428036_left_fuel small_428036_left_count small_428036_left_encoded = true := by
  decide +kernel
theorem small_428036_left_covered : CoveredBy scale carrier boxes small_428036_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_428036_left_root small_428036_left_fuel small_428036_left_count small_428036_left_encoded small_428036_left_checked

theorem cover_428036 : CoveredBy scale carrier boxes root_428036 := by
  apply coveredBy_split_literal root_428036 small_428036_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_428042 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_428036_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_428042
#print axioms cover_428036

def root_428035 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428035_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428035_right_fuel : Nat := 14
def small_428035_right_count : Nat := 47
def small_428035_right_encoded : String := "120700FC08A912FF12073CFE00000004050000F6135D80F700000000045489F900000008138670F804548A05000000091386AD04045489FD1386ACFC000000030CFD9BFF000000080F34D0FE0000000600000004000000080000000200000001135D44F7045489F9000000090000000900000000120700FE050000F6135D80F700000000045489F900000007138670F804548A051386710400000002045489FD00000007000000050000000500000001000000070000000400000003"
theorem small_428035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_428035_right_root small_428035_right_fuel small_428035_right_count small_428035_right_encoded = true := by
  decide +kernel
theorem small_428035_right_covered : CoveredBy scale carrier boxes small_428035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_428035_right_root small_428035_right_fuel small_428035_right_count small_428035_right_encoded small_428035_right_checked

theorem cover_428035 : CoveredBy scale carrier boxes root_428035 := by
  apply coveredBy_split_literal root_428035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_428036 small_428035_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_428036
  · exact small_428035_right_covered
#print axioms cover_428035

def root_428029 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428029_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_428029_left_fuel : Nat := 1
def small_428029_left_count : Nat := 1
def small_428029_left_encoded : String := "00000002"
theorem small_428029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_428029_left_root small_428029_left_fuel small_428029_left_count small_428029_left_encoded = true := by
  decide +kernel
theorem small_428029_left_covered : CoveredBy scale carrier boxes small_428029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_428029_left_root small_428029_left_fuel small_428029_left_count small_428029_left_encoded small_428029_left_checked

theorem cover_428029 : CoveredBy scale carrier boxes root_428029 := by
  apply coveredBy_split_literal root_428029 small_428029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.root_428035 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_428029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011.cover_428035
#print axioms cover_428029

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0011
