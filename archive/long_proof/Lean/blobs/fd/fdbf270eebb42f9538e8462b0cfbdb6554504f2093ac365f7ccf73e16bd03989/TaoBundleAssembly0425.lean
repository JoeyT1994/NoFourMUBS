import TaoBundleAssembly0424
import TaoBundleChunkBatch0576
import TaoBundleChunkBatch0577
import TaoBundleChunkBatch0578
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425
def root_6135612 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135612_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135612_left_fuel : Nat := 20
def small_6135612_left_count : Nat := 225
def small_6135612_left_encoded : String := "0F87510900000004022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0DE7CA060E5FD90700000003000000060000000900000002000000090000000112EA94F800000001067ECE8512EA58FA0DE7CA060E5FD90700000003000000060E6015070B4D44080000000710804D09033F67B7000000070000000700000004000000030000000212EA94FA000000020DE7CA060E5FD9070000000300000006000000090000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F895000569AC4300000006000000060000000013F85900000000000569AC431340D4F80569AC45000000060000000600000001134110F8000000010569AC450000000600000006000000040E6015070B4D440810801109000000040000000910804D09011523370000000913F85900000000000569AC4300000009134110F8000000010569AC45000000080000000900000004000000030000000212EA94FA000000020DE7CA060E5FD907000000030B4D44080000000910804D09011523370000000913F85900000000000569AC4300000009134110F8000000010793F0C5000000060000000500000004000000090000000112EA94F800000001067ECE8512EA58FA0DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F89500000000060000000013F85900000000000793F0C3128220F80569AC4500000006000000060000000112825CF8000000010569AC450000000600000005000000040E6015070B4D44080000000710804D09011523370000000713F85900000000000793F0C3128220F80569AC4500000007134110FA0000000200000007000000010000000700000004000000030000000212EA94FA000000020DE7CA060E5FD907000000030B4D440810801109000000040000000610804D090115233713F895000793F0C300000006000000050000000000000005000000040E6015070B4D44081080110900000004011523370000000913F85900000000000793F0C3000000090000000510804D090115233713F895000793F0C30000000912825CF8000000010793F0C500000007000000050000000013F85900000000000793F0C3128220F80793F0C5128220FA0DAED8870E962506000000030000000500000005000000020000000500000001000000050000000400000003"
theorem small_6135612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135612_left_root small_6135612_left_fuel small_6135612_left_count small_6135612_left_encoded = true := by
  decide +kernel
theorem small_6135612_left_covered : CoveredBy scale carrier boxes small_6135612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135612_left_root small_6135612_left_fuel small_6135612_left_count small_6135612_left_encoded small_6135612_left_checked

theorem cover_6135612 : CoveredBy scale carrier boxes root_6135612 := by
  apply coveredBy_split_literal root_6135612 small_6135612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6136082 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6135612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6136082
#print axioms cover_6135612

def root_6135607 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135607_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135607_right_fuel : Nat := 1
def small_6135607_right_count : Nat := 1
def small_6135607_right_encoded : String := "00000003"
theorem small_6135607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135607_right_root small_6135607_right_fuel small_6135607_right_count small_6135607_right_encoded = true := by
  decide +kernel
theorem small_6135607_right_covered : CoveredBy scale carrier boxes small_6135607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135607_right_root small_6135607_right_fuel small_6135607_right_count small_6135607_right_encoded small_6135607_right_checked

theorem cover_6135607 : CoveredBy scale carrier boxes root_6135607 := by
  apply coveredBy_split_literal root_6135607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6135612 small_6135607_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6135612
  · exact small_6135607_right_covered
#print axioms cover_6135607

def root_6135013 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135013_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135013_left_fuel : Nat := 22
def small_6135013_left_count : Nat := 285
def small_6135013_left_encoded : String := "0F875107000000030C9A87080F87510900000004022A457713E20100067ECE8312EA58F8067ECE8500000006000000060000000112EA94F800000001067ECE8500000006000000060000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0B4D440600000006000000060000000212EA94FA000000020B4D440600000006000000060000000112EA94F800000001067ECE8512EA58FA0B4D440600000006000000060000000212EA94FA000000020B4D440600000006000000060F878D09022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0B4D44060000000A10804D070DE7CA080E5FD90900000004000000060000000A000000030000000212EA94FA000000020B4D440610801107000000030DE7CA08000000060000000610804D070DE7CA080E5FD90900000004000000060E601509033F67B7000000080000000800000004000000030000000112EA94F800000001067ECE850000000A12EA94FA000000020B4D440610801107000000030000000A10804D070DE7CA080E5FD90900000004000000060000000A000000030000000013E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0B4D440610801107000000030DE7CA080E5FD90900000004000000060000000A10804D070DE7CA080E5FD909000000040115233713F895000569AC4300000006000000060000000013F85900000000000569AC431340D4F80569AC45000000060000000600000001134110F8000000010569AC4500000006000000060E601509011523370000000A13F85900000000000569AC431340D4F80569AC450000000A00000007000000010000000A00000004000000030000000212EA94FA000000020B4D440610801107000000030DE7CA080E5FD90900000004000000060E601509000000070000000410804D070DE7CA080E5FD909000000040115233713F89500000000060000000013F85900000000000569AC431340D4F80793F0C5000000060000000600000001134110F8000000010793F0C500000006000000050E601509011523370000000813F85900000000000569AC4300000007134110F8000000010000000800000004000000030000000112EA94F800000001067ECE8512EA58FA0B4D440610801107000000030000000A10804D070DE7CA080E5FD90900000004011523370000000A13F85900000000000793F0C3128220F80569AC450000000600000006000000010000000A0000000A000000030000000212EA94FA000000020B4D440610801107000000030DE7CA080E5FD90900000004000000060E601509011523370000000A13F85900000000000793F0C300000008000000050000000410804D070DE7CA080E5FD909000000040115233713F895000793F0C3000000060000000500000000000000050E6015090115233713F895000793F0C3128220F80793F0C50000000A00000008000000010000000A0000000013F85900000000000793F0C3128220F80793F0C5128220FA0DAED8890E96250800000004000000050000000500000002000000050000000100000005000000040000000300000004"
theorem small_6135013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135013_left_root small_6135013_left_fuel small_6135013_left_count small_6135013_left_encoded = true := by
  decide +kernel
theorem small_6135013_left_covered : CoveredBy scale carrier boxes small_6135013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135013_left_root small_6135013_left_fuel small_6135013_left_count small_6135013_left_encoded small_6135013_left_checked

theorem cover_6135013 : CoveredBy scale carrier boxes root_6135013 := by
  apply coveredBy_split_literal root_6135013 small_6135013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6135607 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6135013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6135607
#print axioms cover_6135013

def root_6135008 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135008_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6135008_right_fuel : Nat := 1
def small_6135008_right_count : Nat := 1
def small_6135008_right_encoded : String := "00000004"
theorem small_6135008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6135008_right_root small_6135008_right_fuel small_6135008_right_count small_6135008_right_encoded = true := by
  decide +kernel
theorem small_6135008_right_covered : CoveredBy scale carrier boxes small_6135008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6135008_right_root small_6135008_right_fuel small_6135008_right_count small_6135008_right_encoded small_6135008_right_checked

theorem cover_6135008 : CoveredBy scale carrier boxes root_6135008 := by
  apply coveredBy_split_literal root_6135008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6135013 small_6135008_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6135013
  · exact small_6135008_right_covered
#print axioms cover_6135008

def root_6132370 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6132370 : CoveredBy scale carrier boxes root_6132370 := by
  apply coveredBy_split_literal root_6132370 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2307.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6135008 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2307.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6135008
#print axioms cover_6132370

def root_6132365 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6132365_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6132365_right_fuel : Nat := 1
def small_6132365_right_count : Nat := 1
def small_6132365_right_encoded : String := "00000003"
theorem small_6132365_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6132365_right_root small_6132365_right_fuel small_6132365_right_count small_6132365_right_encoded = true := by
  decide +kernel
theorem small_6132365_right_covered : CoveredBy scale carrier boxes small_6132365_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6132365_right_root small_6132365_right_fuel small_6132365_right_count small_6132365_right_encoded small_6132365_right_checked

theorem cover_6132365 : CoveredBy scale carrier boxes root_6132365 := by
  apply coveredBy_split_literal root_6132365 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6132370 small_6132365_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6132370
  · exact small_6132365_right_covered
#print axioms cover_6132365

def root_6123711 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6123711 : CoveredBy scale carrier boxes root_6123711 := by
  apply coveredBy_split_literal root_6123711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.root_6123712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6132365 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0424.cover_6123712
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6132365
#print axioms cover_6123711

def root_6123705 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123705_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6123705_left_fuel : Nat := 1
def small_6123705_left_count : Nat := 1
def small_6123705_left_encoded : String := "00000002"
theorem small_6123705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6123705_left_root small_6123705_left_fuel small_6123705_left_count small_6123705_left_encoded = true := by
  decide +kernel
theorem small_6123705_left_covered : CoveredBy scale carrier boxes small_6123705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6123705_left_root small_6123705_left_fuel small_6123705_left_count small_6123705_left_encoded small_6123705_left_checked

theorem cover_6123705 : CoveredBy scale carrier boxes root_6123705 := by
  apply coveredBy_split_literal root_6123705 small_6123705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6123711 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6123705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6123711
#print axioms cover_6123705

def root_6121373 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6121373 : CoveredBy scale carrier boxes root_6121373 := by
  apply coveredBy_split_literal root_6121373 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2303.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6123705 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2303.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6123705
#print axioms cover_6121373

def root_6121367 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6121367_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6121367_left_fuel : Nat := 1
def small_6121367_left_count : Nat := 1
def small_6121367_left_encoded : String := "00000001"
theorem small_6121367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6121367_left_root small_6121367_left_fuel small_6121367_left_count small_6121367_left_encoded = true := by
  decide +kernel
theorem small_6121367_left_covered : CoveredBy scale carrier boxes small_6121367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6121367_left_root small_6121367_left_fuel small_6121367_left_count small_6121367_left_encoded small_6121367_left_checked

theorem cover_6121367 : CoveredBy scale carrier boxes root_6121367 := by
  apply coveredBy_split_literal root_6121367 small_6121367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6121373 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6121367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6121373
#print axioms cover_6121367

def root_6118381 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6118381 : CoveredBy scale carrier boxes root_6118381 := by
  apply coveredBy_split_literal root_6118381 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2302.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6121367 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2302.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6121367
#print axioms cover_6118381

def root_6118375 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6118375_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6118375_left_fuel : Nat := 1
def small_6118375_left_count : Nat := 1
def small_6118375_left_encoded : String := "00000000"
theorem small_6118375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6118375_left_root small_6118375_left_fuel small_6118375_left_count small_6118375_left_encoded = true := by
  decide +kernel
theorem small_6118375_left_covered : CoveredBy scale carrier boxes small_6118375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6118375_left_root small_6118375_left_fuel small_6118375_left_count small_6118375_left_encoded small_6118375_left_checked

theorem cover_6118375 : CoveredBy scale carrier boxes root_6118375 := by
  apply coveredBy_split_literal root_6118375 small_6118375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6118381 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6118375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6118381
#print axioms cover_6118375

def root_6116275 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6116275 : CoveredBy scale carrier boxes root_6116275 := by
  apply coveredBy_split_literal root_6116275 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2301.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6118375 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2301.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6118375
#print axioms cover_6116275

def root_6116270 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6116270_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6116270_right_fuel : Nat := 1
def small_6116270_right_count : Nat := 1
def small_6116270_right_encoded : String := "00000004"
theorem small_6116270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6116270_right_root small_6116270_right_fuel small_6116270_right_count small_6116270_right_encoded = true := by
  decide +kernel
theorem small_6116270_right_covered : CoveredBy scale carrier boxes small_6116270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6116270_right_root small_6116270_right_fuel small_6116270_right_count small_6116270_right_encoded small_6116270_right_checked

theorem cover_6116270 : CoveredBy scale carrier boxes root_6116270 := by
  apply coveredBy_split_literal root_6116270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6116275 small_6116270_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6116275
  · exact small_6116270_right_covered
#print axioms cover_6116270

def root_6115666 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115666_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115666_left_fuel : Nat := 23
def small_6115666_left_count : Nat := 287
def small_6115666_left_encoded : String := "1207010800000004045489F71386AD0004548A03138670F804548A05138670FA0CFD9C07000000050000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000051386AD08067ECE770000000512EA590000000000022A45830000000513E200F800000001067ECE850000000500000008000000040F350D060000000800000003000000011386ACF80000000104548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A091386710800000004067ECE7700000008000000081386AD08067ECE7712EA9500067ECE8312EA58F8067ECE850000000512EA94FA00000002000000080000000112EA94F800000001067ECE850000000A12EA94FA000000020AD3578710D1010600000003067ECE890000000812EA95080793F0B70000000A00000008000000040000000A0000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA0AD35787000000050000000A0000000212EA94FA00000002000000080000000112EA94F800000001067ECE8512EA58FA0AD3578710D1010600000003000000060000000A0000000212EA94FA000000020AD3578710D1010600000003067ECE890000000612EA9508000000060000000410D13D060000000800000003000000040F350D060000000A0000000300000000138671000000000004548A03138670F804548A05138670FA0CFD9C070F34D1060000000304548A09000000051386AD08022A45770000000500000006000000040F350D0604548A09000000051386AD080C9A8706000000050F878D0700000005000000030000000400000003000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100022A45830000000813E200F800000001067ECE8512EA58FA0000000600000002000000080000000013E1C50000000000022A45830000000600000006000000040F350D060000000800000003000000011386ACF80000000104548A05138670FA0CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100067ECE8312EA58F8022A45850000000500000006000000010000000A0000000013E1C50000000000067ECE830000000600000006000000040000000A000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000061386AD08022A457713E20100067ECE8312EA58F8067ECE8512EA58FA0AD357870000000610D13D0600000006000000030000000212EA94FA000000020AD3578700000006000000080000000112EA94F800000001067ECE8512EA58FA0AD357870000000610D13D060000000A000000030000000212EA94FA000000020AD357870000000610D13D0600000008000000030000000013E1C50000000000067ECE8312EA58F8000000060000000112EA94F800000001067ECE850000000600000006000000040F350D0604548A09000000081386AD080C9A8706000000080F878D07022A457713E20100067ECE83000000080000000A0000000013E1C50000000000067ECE830000000800000009000000030000000400000003"
theorem small_6115666_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6115666_left_root small_6115666_left_fuel small_6115666_left_count small_6115666_left_encoded = true := by
  decide +kernel
theorem small_6115666_left_covered : CoveredBy scale carrier boxes small_6115666_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6115666_left_root small_6115666_left_fuel small_6115666_left_count small_6115666_left_encoded small_6115666_left_checked

theorem cover_6115666 : CoveredBy scale carrier boxes root_6115666 := by
  apply coveredBy_split_literal root_6115666 small_6115666_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6116270 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6115666_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6116270
#print axioms cover_6115666

def root_6115661 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115661_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6115661_right_fuel : Nat := 1
def small_6115661_right_count : Nat := 1
def small_6115661_right_encoded : String := "00000003"
theorem small_6115661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6115661_right_root small_6115661_right_fuel small_6115661_right_count small_6115661_right_encoded = true := by
  decide +kernel
theorem small_6115661_right_covered : CoveredBy scale carrier boxes small_6115661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6115661_right_root small_6115661_right_fuel small_6115661_right_count small_6115661_right_encoded small_6115661_right_checked

theorem cover_6115661 : CoveredBy scale carrier boxes root_6115661 := by
  apply coveredBy_split_literal root_6115661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6115666 small_6115661_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6115666
  · exact small_6115661_right_covered
#print axioms cover_6115661

def root_6114845 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114845_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114845_left_fuel : Nat := 25
def small_6114845_left_count : Nat := 383
def small_6114845_left_encoded : String := "120701060000000308A913091207010800000004045489F71386AD0004548A03138670F804548A05000000051386ACFA0000000204548A07000000051386AD060000000500000003000000011386ACF80000000104548A05138670FA04548A07000000051386AD060000000500000003000000021386ACFA0000000204548A07000000061386AD0604548A09000000061386AD08067ECE7712EA9500067ECE8312EA58F8000000050000000112EA94F800000001067ECE8512EA58FA0000000500000002000000060000000012EA590000000000067ECE830000000600000006000000040000000300000000138671000000000004548A03138670F800000006000000011386ACF80000000104548A05000000060000000612073D08045489F71386AD0004548A03138670F804548A05138670FA04548A07000000051386AD0600000005000000030000000200000009000000011386ACF80000000104548A05138670FA04548A07000000071386AD060CFD9C090F34D10800000004067ECE770000000512EA590000000000067ECE8300000005000000070F350D08000000070000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004067ECE770000000700000007000000091386AD060CFD9C090F34D10800000004067ECE7712EA9500067ECE8312EA58F8000000090000000112EA94F800000001067ECE850000000712EA94FA00000002067ECE870000000712EA95060AD3578910D10108000000040793F0B7000000090000000700000009000000030000000012EA590000000000067ECE8312EA58F8067ECE8512EA58FA067ECE870000000512EA95060AD357890000000500000009000000030000000212EA94FA00000002067ECE8712EA5906000000030000000912EA95060AD3578910D10108000000040000000600000009000000030000000112EA94F800000001067ECE8512EA58FA000000070000000212EA94FA00000002067ECE870000000712EA95060AD3578910D10108000000040000000610D13D080000000700000004000000030F350D0800000009000000040000000300000000138671000000000004548A03138670F804548A05138670FA04548A0713867106000000030CFD9C09000000050F350D0800000005000000041386AD060CFD9C090F34D10800000004022A457700000005000000060F350D080C9A8708000000050F878D0900000005000000040000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090000000A000000091386AD060CFD9C090F34D10800000004022A457713E20100022A45830000000913E200F800000001067ECE8512EA58FA0000000600000002000000090000000013E1C50000000000022A458300000006000000060000000900000003000000011386ACF80000000104548A05138670FA04548A07000000071386AD060CFD9C090F34D10800000004022A457713E20100067ECE8312EA58F8022A4585000000050000000600000001000000070000000013E1C50000000000067ECE8300000006000000060F350D08000000070000000400000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000060F350D0800000007000000041386AD060CFD9C090F34D10800000004022A457713E20100067ECE8312EA58F8067ECE8512EA58FA067ECE870000000612EA950600000006000000030000000212EA94FA00000002067ECE870000000612EA95060AD357890000000610D13D080000000900000004000000030000000112EA94F800000001067ECE8512EA58FA067ECE870000000612EA950600000007000000030000000212EA94FA00000002067ECE870000000612EA95060AD357890000000610D13D080000000700000004000000030000000013E1C50000000000067ECE8312EA58F8000000060000000112EA94F800000001067ECE8500000006000000060F350D080C9A8708000000070F878D09022A457713E20100067ECE8300000009000000070000000013E1C50000000000067ECE830000000A0000000700000004000000040000000300000004"
theorem small_6114845_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114845_left_root small_6114845_left_fuel small_6114845_left_count small_6114845_left_encoded = true := by
  decide +kernel
theorem small_6114845_left_covered : CoveredBy scale carrier boxes small_6114845_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114845_left_root small_6114845_left_fuel small_6114845_left_count small_6114845_left_encoded small_6114845_left_checked

theorem cover_6114845 : CoveredBy scale carrier boxes root_6114845 := by
  apply coveredBy_split_literal root_6114845 small_6114845_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6115661 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6114845_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6115661
#print axioms cover_6114845

def root_6114840 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114840_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6114840_right_fuel : Nat := 1
def small_6114840_right_count : Nat := 1
def small_6114840_right_encoded : String := "00000002"
theorem small_6114840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6114840_right_root small_6114840_right_fuel small_6114840_right_count small_6114840_right_encoded = true := by
  decide +kernel
theorem small_6114840_right_covered : CoveredBy scale carrier boxes small_6114840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6114840_right_root small_6114840_right_fuel small_6114840_right_count small_6114840_right_encoded small_6114840_right_checked

theorem cover_6114840 : CoveredBy scale carrier boxes root_6114840 := by
  apply coveredBy_split_literal root_6114840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6114845 small_6114840_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6114845
  · exact small_6114840_right_covered
#print axioms cover_6114840

def root_6145058 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145058_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145058_left_fuel : Nat := 16
def small_6145058_left_count : Nat := 57
def small_6145058_left_encoded : String := "1207010800000004045489F71386AD0004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD08067ECE7712EA9500000000080000000000000008000000040F350D060000000800000003000000020000000800000000138671000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000081386AD08022A457713E20100067ECE830000000812EA94F800000001000000080000000000000008000000040F350D0600000008000000030000000200000008"
theorem small_6145058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6145058_left_root small_6145058_left_fuel small_6145058_left_count small_6145058_left_encoded = true := by
  decide +kernel
theorem small_6145058_left_covered : CoveredBy scale carrier boxes small_6145058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6145058_left_root small_6145058_left_fuel small_6145058_left_count small_6145058_left_encoded small_6145058_left_checked

theorem cover_6145058 : CoveredBy scale carrier boxes root_6145058 := by
  apply coveredBy_split_literal root_6145058 small_6145058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2312.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6145058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2312.covered
#print axioms cover_6145058

def root_6145053 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145053_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6145053_right_fuel : Nat := 1
def small_6145053_right_count : Nat := 1
def small_6145053_right_encoded : String := "00000003"
theorem small_6145053_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6145053_right_root small_6145053_right_fuel small_6145053_right_count small_6145053_right_encoded = true := by
  decide +kernel
theorem small_6145053_right_covered : CoveredBy scale carrier boxes small_6145053_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6145053_right_root small_6145053_right_fuel small_6145053_right_count small_6145053_right_encoded small_6145053_right_checked

theorem cover_6145053 : CoveredBy scale carrier boxes root_6145053 := by
  apply coveredBy_split_literal root_6145053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.root_6145058 small_6145053_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425.cover_6145058
  · exact small_6145053_right_covered
#print axioms cover_6145053

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0425
