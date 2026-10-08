import TaoBundleAssembly0206
import TaoBundleAssembly0207
import TaoBundleAssembly0208
import TaoBundleChunkBatch0812
import TaoBundleChunkBatch0813
import TaoBundleChunkBatch0814
import TaoBundleChunkBatch0815
import TaoBundleChunkBatch0816
import TaoBundleChunkBatch0817
import TaoBundleChunkBatch0818
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209
def root_8694152 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8694152_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8694152_left_fuel : Nat := 29
def small_8694152_left_count : Nat := 419
def small_8694152_left_encoded : String := "0F34D108000000040C9A87060F87510700000003022A458113E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0AD357890000000910D13D080B4D44060000000910804D070115234113F85900000000000569AC43000000070000000900000009000000030000000400000002000000080000000112EA94F800000001067ECE85000000090000000913E20100067ECE8312EA58F8067ECE8500000009000000080000000100000009000000000F878D07022A458113E1C50000000000067ECE8312EA58F8067ECE8512EA58FA0AD3578910D10108000000040000000910D13D080DE7CA060E5FD907000000030115234113F85900000000000569AC431340D4F80569AC451340D4FA0BE879C90000000900000009000000020000000800000001134110F8000000010000000913F895000569AC431340D4F80569AC4500000009000000090000000100000009000000000E6015070115234113F85900000000000569AC431340D4F80569AC451340D4FA0BE879C91011710800000004000000061011AD080DAED8870E96250600000003000000060E966106008A922113FDF9000000000004DF1B231365B4F804DF1B250000000900000008000000010000000900000009000000030000000400000002134110FA000000020BE879C91011710800000004000000061011AD080DAED8870E96250600000003008A922113FDF9000000000004DF1B230000000600000006000000060E966106008A92210000000800000008000000030000000400000001134110F8000000010569AC451340D4FA0BE879C9000000090000000900000002134110FA000000020BE879C9000000091011AD080DAED8870E96250600000003008A922113FDF9000000000005F43D631317BCF8000000060000000100000006000000060E966106008A922113FDF9000000000005F43D631317BCF800000009000000010000000900000009000000030000000413F895000569AC431340D4F80569AC451340D4FA0BE879C9000000061011AD080DAED887000000060E96610600000006000000030000000400000002134110FA000000020BE879C9000000061011AD080DAED887000000060E966106019FB4610000000800000006000000030000000400000001134110F8000000010569AC4500000009000000090000000000000003000000040000000212EA94FA000000020AD3578910D10108000000040000000810D13D080DE7CA060E5FD907000000030115234100000008000000080E6015070115234113F85900000000000569AC431340D4F80000000800000001134110F8000000010793F0C5128220FA0BE879C9000000081011AD080DAED8870E96250600000003008A92210000000813FE350005F43D630000000600000005000000000E966106000000080000000300000004000000020000000813F895000569AC431340D4F80793F0C5128220FA0BE879C9000000061011AD080000000800000004000000020000000800000001134110F8000000010793F0C5128220FA0BE879C9000000081011AD080DAED8870E9625060000000300000005000000050000000400000002000000080000000000000003000000040000000112EA94F800000001067ECE8512EA58FA0AD357890000000910D13D080DE7CA06000000090E6015070000000900000003000000040000000212EA94FA000000020AD357890000000910D13D080DE7CA060E5FD907000000030115234113F85900000000000793F0C3128220F80793F0C500000009000000050000000100000005000000050E6015070115234113F85900000000000793F0C3128220F80793F0C5128220FA0BE879C900000009000000050000000200000005000000010000000500000005000000030000000413E20100067ECE8312EA58F8067ECE8512EA58FA0AD357890000000910D13D080DE7CA06000000090E601507033F67C113BBF500000000000569AC431340D4F80569AC45000000060000000600000001000000090000000900000003000000040000000212EA94FA000000020AD3578910D10108000000040000000810D13D080DE7CA060E5FD90700000003033F67C100000008000000090E601507033F67C113BBF500000000000569AC431340D4F80793F0C5128220FA0BE879C9000000061011AD080000000600000004000000020000000800000001134110F8000000010793F0C5000000090000000513BC31000569AC430000000A000000050000000000000003000000040000000112EA94F800000001067ECE850000000912EA94FA00000002000000090000000000000003"
theorem small_8694152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8694152_left_root small_8694152_left_fuel small_8694152_left_count small_8694152_left_encoded = true := by
  decide +kernel
theorem small_8694152_left_covered : CoveredBy scale carrier boxes small_8694152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8694152_left_root small_8694152_left_fuel small_8694152_left_count small_8694152_left_encoded small_8694152_left_checked

theorem cover_8694152 : CoveredBy scale carrier boxes root_8694152 := by
  apply coveredBy_split_literal root_8694152 small_8694152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8695024 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8694152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8695024
#print axioms cover_8694152

def root_8694147 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8694147_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8694147_right_fuel : Nat := 1
def small_8694147_right_count : Nat := 1
def small_8694147_right_encoded : String := "00000003"
theorem small_8694147_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8694147_right_root small_8694147_right_fuel small_8694147_right_count small_8694147_right_encoded = true := by
  decide +kernel
theorem small_8694147_right_covered : CoveredBy scale carrier boxes small_8694147_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8694147_right_root small_8694147_right_fuel small_8694147_right_count small_8694147_right_encoded small_8694147_right_checked

theorem cover_8694147 : CoveredBy scale carrier boxes root_8694147 := by
  apply coveredBy_split_literal root_8694147 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8694152 small_8694147_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8694152
  · exact small_8694147_right_covered
#print axioms cover_8694147

def root_8692791 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8692791 : CoveredBy scale carrier boxes root_8692791 := by
  apply coveredBy_split_literal root_8692791 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3254.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8694147 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3254.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8694147
#print axioms cover_8692791

def root_8692785 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8692785_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8692785_left_fuel : Nat := 1
def small_8692785_left_count : Nat := 1
def small_8692785_left_encoded : String := "00000002"
theorem small_8692785_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8692785_left_root small_8692785_left_fuel small_8692785_left_count small_8692785_left_encoded = true := by
  decide +kernel
theorem small_8692785_left_covered : CoveredBy scale carrier boxes small_8692785_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8692785_left_root small_8692785_left_fuel small_8692785_left_count small_8692785_left_encoded small_8692785_left_checked

theorem cover_8692785 : CoveredBy scale carrier boxes root_8692785 := by
  apply coveredBy_split_literal root_8692785 small_8692785_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8692791 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8692785_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8692791
#print axioms cover_8692785

def root_8688587 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8688587 : CoveredBy scale carrier boxes root_8688587 := by
  apply coveredBy_split_literal root_8688587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8688588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8692785 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8688588
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8692785
#print axioms cover_8688587

def root_8688581 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8688581_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8688581_left_fuel : Nat := 1
def small_8688581_left_count : Nat := 1
def small_8688581_left_encoded : String := "00000001"
theorem small_8688581_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8688581_left_root small_8688581_left_fuel small_8688581_left_count small_8688581_left_encoded = true := by
  decide +kernel
theorem small_8688581_left_covered : CoveredBy scale carrier boxes small_8688581_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8688581_left_root small_8688581_left_fuel small_8688581_left_count small_8688581_left_encoded small_8688581_left_checked

theorem cover_8688581 : CoveredBy scale carrier boxes root_8688581 := by
  apply coveredBy_split_literal root_8688581 small_8688581_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8688587 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8688581_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8688587
#print axioms cover_8688581

def root_8678659 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678659 : CoveredBy scale carrier boxes root_8678659 := by
  apply coveredBy_split_literal root_8678659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8678660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8688581 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8678660
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8688581
#print axioms cover_8678659

def root_8678653 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678653_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678653_left_fuel : Nat := 1
def small_8678653_left_count : Nat := 1
def small_8678653_left_encoded : String := "00000000"
theorem small_8678653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678653_left_root small_8678653_left_fuel small_8678653_left_count small_8678653_left_encoded = true := by
  decide +kernel
theorem small_8678653_left_covered : CoveredBy scale carrier boxes small_8678653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678653_left_root small_8678653_left_fuel small_8678653_left_count small_8678653_left_encoded small_8678653_left_checked

theorem cover_8678653 : CoveredBy scale carrier boxes root_8678653 := by
  apply coveredBy_split_literal root_8678653 small_8678653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678659 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8678653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678659
#print axioms cover_8678653

def root_8678652 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678652 : CoveredBy scale carrier boxes root_8678652 := by
  apply coveredBy_split_literal root_8678652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678653 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3258.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3258.covered
#print axioms cover_8678652

def root_8678647 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678647_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678647_right_fuel : Nat := 1
def small_8678647_right_count : Nat := 1
def small_8678647_right_encoded : String := "00000004"
theorem small_8678647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678647_right_root small_8678647_right_fuel small_8678647_right_count small_8678647_right_encoded = true := by
  decide +kernel
theorem small_8678647_right_covered : CoveredBy scale carrier boxes small_8678647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678647_right_root small_8678647_right_fuel small_8678647_right_count small_8678647_right_encoded small_8678647_right_checked

theorem cover_8678647 : CoveredBy scale carrier boxes root_8678647 := by
  apply coveredBy_split_literal root_8678647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678652 small_8678647_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678652
  · exact small_8678647_right_covered
#print axioms cover_8678647

def root_8678423 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678423_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678423_left_fuel : Nat := 17
def small_8678423_left_count : Nat := 103
def small_8678423_left_encoded : String := "120701080000000404548A01138671000000000004548A03138670F804548A05138670FA0CFD9C070F34D10600000003000000060F350D0604548A09000000091386AD080C9A8706000000090F878D07022A458113E1C50000000000022A4583000000050000000600000006000000030000000400000003000000021386ACFA000000020CFD9C070F34D10600000003000000060F350D060000000800000003000000011386ACF80000000104548A05138670FA0CFD9C07000000090F350D060000000900000003000000021386ACFA000000020CFD9C070F34D1060000000304548A09000000061386AD08022A458113E1C500000000000000000600000006000000040F350D0604548A09000000081386AD080C9A8706000000090F878D07000000090000000300000004000000031386AD0004548A03138670F804548A05138670FA0CFD9C07000000060F350D060000000900000003000000021386ACFA000000020CFD9C07000000060F350D060000000800000003000000011386ACF80000000104548A05000000091386ACFA000000020000000900000000"
theorem small_8678423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678423_left_root small_8678423_left_fuel small_8678423_left_count small_8678423_left_encoded = true := by
  decide +kernel
theorem small_8678423_left_covered : CoveredBy scale carrier boxes small_8678423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678423_left_root small_8678423_left_fuel small_8678423_left_count small_8678423_left_encoded small_8678423_left_checked

theorem cover_8678423 : CoveredBy scale carrier boxes root_8678423 := by
  apply coveredBy_split_literal root_8678423 small_8678423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678647 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8678423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678647
#print axioms cover_8678423

def root_8678418 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678418_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678418_right_fuel : Nat := 1
def small_8678418_right_count : Nat := 1
def small_8678418_right_encoded : String := "00000003"
theorem small_8678418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678418_right_root small_8678418_right_fuel small_8678418_right_count small_8678418_right_encoded = true := by
  decide +kernel
theorem small_8678418_right_covered : CoveredBy scale carrier boxes small_8678418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678418_right_root small_8678418_right_fuel small_8678418_right_count small_8678418_right_encoded small_8678418_right_checked

theorem cover_8678418 : CoveredBy scale carrier boxes root_8678418 := by
  apply coveredBy_split_literal root_8678418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678423 small_8678418_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678423
  · exact small_8678418_right_covered
#print axioms cover_8678418

def root_8678144 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678144_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678144_left_fuel : Nat := 19
def small_8678144_left_count : Nat := 125
def small_8678144_left_encoded : String := "120701060000000308A9130912070108000000040000000612073D0804548A01138671000000000004548A03138670F804548A05138670FA04548A071386710600000003000000061386AD060CFD9C090F34D10800000004000000060F350D080C9A87080000000A0F878D09022A458113E1C50000000000022A4583000000050000000600000006000000040000000400000003000000021386ACFA0000000204548A070000000A1386AD060CFD9C090000000A0F350D080000000A0000000400000003000000011386ACF80000000104548A05138670FA04548A071386710600000003000000071386AD060CFD9C090F34D10800000004000000060F350D08000000070000000400000003000000021386ACFA0000000204548A070000000A1386AD060CFD9C090F34D10800000004022A458113E1C5000000000000000006000000060F350D080C9A87080000000A0F878D090000000A0000000400000004000000031386AD0004548A03138670F804548A05138670FA04548A07000000061386AD060CFD9C09000000060F350D080000000A0000000400000003000000020000000A000000011386ACF80000000104548A05138670FA04548A07000000061386AD060CFD9C09000000060F350D08000000070000000400000003000000021386ACFA000000020000000A0000000000000004"
theorem small_8678144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678144_left_root small_8678144_left_fuel small_8678144_left_count small_8678144_left_encoded = true := by
  decide +kernel
theorem small_8678144_left_covered : CoveredBy scale carrier boxes small_8678144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678144_left_root small_8678144_left_fuel small_8678144_left_count small_8678144_left_encoded small_8678144_left_checked

theorem cover_8678144 : CoveredBy scale carrier boxes root_8678144 := by
  apply coveredBy_split_literal root_8678144 small_8678144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678418 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8678144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678418
#print axioms cover_8678144

def root_8678139 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678139_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678139_right_fuel : Nat := 1
def small_8678139_right_count : Nat := 1
def small_8678139_right_encoded : String := "00000002"
theorem small_8678139_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678139_right_root small_8678139_right_fuel small_8678139_right_count small_8678139_right_encoded = true := by
  decide +kernel
theorem small_8678139_right_covered : CoveredBy scale carrier boxes small_8678139_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678139_right_root small_8678139_right_fuel small_8678139_right_count small_8678139_right_encoded small_8678139_right_checked

theorem cover_8678139 : CoveredBy scale carrier boxes root_8678139 := by
  apply coveredBy_split_literal root_8678139 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678144 small_8678139_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678144
  · exact small_8678139_right_covered
#print axioms cover_8678139

def root_8678138 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678138_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678138_right_fuel : Nat := 30
def small_8678138_right_count : Nat := 499
def small_8678138_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120701080000000404548A01138671000000000004548A030000000A1386ACF8000000010CFD9C050F34D0FA00000006000000020000000A1386AD0004548A030000000A1386ACF8000000010CFD9C0500000006000000060000000012073D0804548A01138671000000000004548A030000000A1386ACF8000000010CFD9C050F34D0FA0000000A000000020000000A0000000A0000000412073D0608A91309120701080000000404548A01138671000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000061386AD08022A45810000000800000008000000040F350D06000000080000000300000002000000081386AD0004548A03138670F80CFD9C050F34D0FA000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D10600000003000000060F350D06000000080000000300000002000000080000000012073D0804548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A8706000000080F878D0700000008000000030F350D080C9A87060F875107000000030C9A87080F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA0B4D440610801107000000030000000610804D070000000A00000003000000020000000513E20100022A45830000000A00000005000000000F878D09022A45810000000800000008000000040F878D070C9A87080000000A0F878D09022A458113E1C50000000000022A45830000000A13E200F8000000010AD3578510D100FA0DE7CA060E5FD907000000030DE7CA0800000008000000070000000A00000002000000080000000A00000004000000030000000400000003000000020F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C09000000080F350D080C9A86FA0F878D050C9A8706000000080000000A000000020F87510500000002000000050000000400000003000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0AD357870000000A10D13D060AD357890000000810D13D080000000A0000000400000003000000020000000A0000000112EA94F8000000010AD3578510D100FA0AD357870000000A10D13D060AD3578910D10108000000040000000500000005000000030000000210D13CFA000000020000000A13E20100067ECE830000000A12EA94F8000000010AD3578510D100FA0AD357870000000A000000050000000200000005000000000F350D080C9A87080000000A0F878D09022A458113E1C50000000000067ECE830000000A12EA94F8000000010000000A0000000A00000004000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003022A458100000008000000080F878D07022A458113E1C50000000000067ECE8312EA58F8000000080000000112EA94F8000000010AD3578510D100FA0AD357890000000800000005000000020000000513E20100067ECE8312EA58F800000008000000010000000500000000000000030F350D080C9A87060F875107000000030C9A87080F87510900000004000000050F878D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0B4D440600000008000000050000000200000005000000010000000500000005000000040F878D070C9A87080F87510900000004022A458113E1C50000000000067ECE830000000A00000005000000050F878D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0DE7CA060E5FD907000000030DE7CA080E5FD9090000000400000005000000050E6015070000000A00000003000000020000000500000001000000050000000500000004000000030000000400000003000000020F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040000000500000005000000031386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A8706000000080F878D0700000008000000030F350D080C9A87060F875107000000030C9A87080000000A0F878D09067ECE810000000800000005000000040000000A0000000400000003000000020F350CFA000000020CFD9C070000000A0F350D060CFD9C090000000A0F350D080000000A0000000400000003000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004067ECE8112EA5900000000000000000A0000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003067ECE8100000008000000050F878D07067ECE8112EA590000000000067ECE8312EA58F800000008000000010000000500000005000000030F350D080C9A87060F8751070000000300000005000000050000000400000003000000020F350CFA000000020CFD9C070000000A00000005000000000000000400000003"
theorem small_8678138_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678138_right_root small_8678138_right_fuel small_8678138_right_count small_8678138_right_encoded = true := by
  decide +kernel
theorem small_8678138_right_covered : CoveredBy scale carrier boxes small_8678138_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678138_right_root small_8678138_right_fuel small_8678138_right_count small_8678138_right_encoded small_8678138_right_checked

theorem cover_8678138 : CoveredBy scale carrier boxes root_8678138 := by
  apply coveredBy_split_literal root_8678138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678139 small_8678138_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678139
  · exact small_8678138_right_covered
#print axioms cover_8678138

def root_8678133 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678133_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678133_right_fuel : Nat := 1
def small_8678133_right_count : Nat := 1
def small_8678133_right_encoded : String := "00000001"
theorem small_8678133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678133_right_root small_8678133_right_fuel small_8678133_right_count small_8678133_right_encoded = true := by
  decide +kernel
theorem small_8678133_right_covered : CoveredBy scale carrier boxes small_8678133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678133_right_root small_8678133_right_fuel small_8678133_right_count small_8678133_right_encoded small_8678133_right_checked

theorem cover_8678133 : CoveredBy scale carrier boxes root_8678133 := by
  apply coveredBy_split_literal root_8678133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678138 small_8678133_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678138
  · exact small_8678133_right_covered
#print axioms cover_8678133

def root_8678132 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678132 : CoveredBy scale carrier boxes root_8678132 := by
  apply coveredBy_split_literal root_8678132 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3259.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678133
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3259.covered
#print axioms cover_8678132

def root_8678126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678126_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678126_left_fuel : Nat := 1
def small_8678126_left_count : Nat := 1
def small_8678126_left_encoded : String := "00000000"
theorem small_8678126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678126_left_root small_8678126_left_fuel small_8678126_left_count small_8678126_left_encoded = true := by
  decide +kernel
theorem small_8678126_left_covered : CoveredBy scale carrier boxes small_8678126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678126_left_root small_8678126_left_fuel small_8678126_left_count small_8678126_left_encoded small_8678126_left_checked

theorem cover_8678126 : CoveredBy scale carrier boxes root_8678126 := by
  apply coveredBy_split_literal root_8678126 small_8678126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678132 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8678126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678132
#print axioms cover_8678126

def root_8678125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678125 : CoveredBy scale carrier boxes root_8678125 := by
  apply coveredBy_split_literal root_8678125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3260.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3260.covered
#print axioms cover_8678125

def root_8678120 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678120_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678120_right_fuel : Nat := 1
def small_8678120_right_count : Nat := 1
def small_8678120_right_encoded : String := "00000004"
theorem small_8678120_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678120_right_root small_8678120_right_fuel small_8678120_right_count small_8678120_right_encoded = true := by
  decide +kernel
theorem small_8678120_right_covered : CoveredBy scale carrier boxes small_8678120_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678120_right_root small_8678120_right_fuel small_8678120_right_count small_8678120_right_encoded small_8678120_right_checked

theorem cover_8678120 : CoveredBy scale carrier boxes root_8678120 := by
  apply coveredBy_split_literal root_8678120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678125 small_8678120_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678125
  · exact small_8678120_right_covered
#print axioms cover_8678120

def root_8675620 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8675620 : CoveredBy scale carrier boxes root_8675620 := by
  apply coveredBy_split_literal root_8675620 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3249.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8678120 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3249.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8678120
#print axioms cover_8675620

def root_8675615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8675615_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8675615_right_fuel : Nat := 1
def small_8675615_right_count : Nat := 1
def small_8675615_right_encoded : String := "00000003"
theorem small_8675615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8675615_right_root small_8675615_right_fuel small_8675615_right_count small_8675615_right_encoded = true := by
  decide +kernel
theorem small_8675615_right_covered : CoveredBy scale carrier boxes small_8675615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8675615_right_root small_8675615_right_fuel small_8675615_right_count small_8675615_right_encoded small_8675615_right_checked

theorem cover_8675615 : CoveredBy scale carrier boxes root_8675615 := by
  apply coveredBy_split_literal root_8675615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8675620 small_8675615_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8675620
  · exact small_8675615_right_covered
#print axioms cover_8675615

def root_8671515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8671515 : CoveredBy scale carrier boxes root_8671515 := by
  apply coveredBy_split_literal root_8671515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8671516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8675615 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8671516
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8675615
#print axioms cover_8671515

def root_8671510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671510_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671510_right_fuel : Nat := 1
def small_8671510_right_count : Nat := 1
def small_8671510_right_encoded : String := "00000002"
theorem small_8671510_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671510_right_root small_8671510_right_fuel small_8671510_right_count small_8671510_right_encoded = true := by
  decide +kernel
theorem small_8671510_right_covered : CoveredBy scale carrier boxes small_8671510_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671510_right_root small_8671510_right_fuel small_8671510_right_count small_8671510_right_encoded small_8671510_right_checked

theorem cover_8671510 : CoveredBy scale carrier boxes root_8671510 := by
  apply coveredBy_split_literal root_8671510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671515 small_8671510_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671515
  · exact small_8671510_right_covered
#print axioms cover_8671510

def root_8671509 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671509_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671509_right_fuel : Nat := 21
def small_8671509_right_count : Nat := 203
def small_8671509_right_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000008A91303120700F808A913091207010800000004050000FA00000008135D4505000000020000000812073D08050000FA135D810505000106135D45070000000304548A010000000800000005000000050000000200000005000000040000000112073CF80000000108A913091207010800000004000000050000000512073D0008A91303120700F808A913091207010800000004050000FA135D810505000106135D4507000000030CFD9C010F34D1000000000000000005000000050000000500000002000000050000000500000001000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91303120700F808A913070000000A12073D06050000FA0000000A00000005000000030000000112073CF80000000108A913070000000A0000000512073D0008A913030000000A00000005000000001152250908A91301120701000000000008A91303120700F808A9130712070106000000030000000A12073D0608A9130912070108000000040000000812073D08050000FA135D810504548A01138671000000000004548A03138670F80CFD9C070000000800000008000000011386ACF800000001000000050000000A00000002135D4505000000020000000500000004000000030000000112073CF80000000108A91307120701060000000308A913091207010800000004000000050000000512073D0608A91309120701080000000400000005000000050000000312073D0008A91303120700F808A913070000000A12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D1000000000004548A0300000008000000050F350D0004548A030000000A000000050000000000000002135D4505000000020000000512073D08050000FA0000000A0000000500000004000000030000000112073CF80000000108A91307120701060000000308A913091207010800000004000000050000000512073D0608A913091207010800000004000000050000000500000003000000000000000400000003"
theorem small_8671509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671509_right_root small_8671509_right_fuel small_8671509_right_count small_8671509_right_encoded = true := by
  decide +kernel
theorem small_8671509_right_covered : CoveredBy scale carrier boxes small_8671509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671509_right_root small_8671509_right_fuel small_8671509_right_count small_8671509_right_encoded small_8671509_right_checked

theorem cover_8671509 : CoveredBy scale carrier boxes root_8671509 := by
  apply coveredBy_split_literal root_8671509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671510 small_8671509_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671510
  · exact small_8671509_right_covered
#print axioms cover_8671509

def root_8671504 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671504_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671504_right_fuel : Nat := 1
def small_8671504_right_count : Nat := 1
def small_8671504_right_encoded : String := "00000001"
theorem small_8671504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671504_right_root small_8671504_right_fuel small_8671504_right_count small_8671504_right_encoded = true := by
  decide +kernel
theorem small_8671504_right_covered : CoveredBy scale carrier boxes small_8671504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671504_right_root small_8671504_right_fuel small_8671504_right_count small_8671504_right_encoded small_8671504_right_checked

theorem cover_8671504 : CoveredBy scale carrier boxes root_8671504 := by
  apply coveredBy_split_literal root_8671504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671509 small_8671504_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671509
  · exact small_8671504_right_covered
#print axioms cover_8671504

def root_8671503 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671503_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671503_right_fuel : Nat := 24
def small_8671503_right_count : Nat := 235
def small_8671503_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000008A91305120700FA08A913090000000912073D08050000F80000000900000005000000040000000212073CFA0000000208A91309000000090000000512073D0008A9130500000009000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91305120700FA08A913071207010600000003050000F800000007135D4503000000010000000712073D06050000F8135D810305000108135D45090000000404548A010000000700000005000000050000000100000005000000030000000212073CFA0000000208A913071207010600000003000000050000000512073D0008A91305120700FA08A913071207010600000003050000F8135D810305000108135D4509000000040CFD9C010F34D100000000000000000500000005000000050000000100000005000000050000000200000005000000001152250908A91301120701000000000008A91305120700FA08A91307120701060000000308A913090000000712073D08000000070000000412073D0608A9130912070108000000040000000912073D08050000F8135D810304548A01138671000000000004548A05138670FA0CFD9C07000000070F350D060000000900000003000000021386ACFA00000002000000050000000900000001135D4503000000010000000500000004000000030000000212073CFA0000000208A91307120701060000000308A913091207010800000004000000050000000512073D0608A91309120701080000000400000005000000050000000312073D0008A91305120700FA08A91307120701060000000308A913090000000912073D08050000F8135D81030CFD9C010F34D1000000000004548A0500000007000000050F350D0004548A0500000009000000050000000000000001135D450300000001000000050000000412073D0608A913090000000912073D08050000F8000000090000000500000004000000030000000212073CFA0000000208A91307120701060000000308A913091207010800000004000000050000000512073D0608A913091207010800000004000000050000000500000003000000000000000400000003000000021151E905000000020A0001061151E9070000000300000005115225070A0001081151E90900000004000000051152250908A91301120701000000000000000005000000050000000400000003"
theorem small_8671503_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671503_right_root small_8671503_right_fuel small_8671503_right_count small_8671503_right_encoded = true := by
  decide +kernel
theorem small_8671503_right_covered : CoveredBy scale carrier boxes small_8671503_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671503_right_root small_8671503_right_fuel small_8671503_right_count small_8671503_right_encoded small_8671503_right_checked

theorem cover_8671503 : CoveredBy scale carrier boxes root_8671503 := by
  apply coveredBy_split_literal root_8671503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671504 small_8671503_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671504
  · exact small_8671503_right_covered
#print axioms cover_8671503

def root_8671498 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671498_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671498_right_fuel : Nat := 1
def small_8671498_right_count : Nat := 1
def small_8671498_right_encoded : String := "00000000"
theorem small_8671498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671498_right_root small_8671498_right_fuel small_8671498_right_count small_8671498_right_encoded = true := by
  decide +kernel
theorem small_8671498_right_covered : CoveredBy scale carrier boxes small_8671498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671498_right_root small_8671498_right_fuel small_8671498_right_count small_8671498_right_encoded small_8671498_right_checked

theorem cover_8671498 : CoveredBy scale carrier boxes root_8671498 := by
  apply coveredBy_split_literal root_8671498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671503 small_8671498_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671503
  · exact small_8671498_right_covered
#print axioms cover_8671498

def root_8669456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8669456 : CoveredBy scale carrier boxes root_8669456 := by
  apply coveredBy_split_literal root_8669456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3246.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8671498 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3246.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8671498
#print axioms cover_8669456

def root_8665446 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8665446 : CoveredBy scale carrier boxes root_8665446 := by
  apply coveredBy_split_literal root_8665446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8665447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8669456 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8665447
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8669456
#print axioms cover_8665446

def root_8659458 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8659458 : CoveredBy scale carrier boxes root_8659458 := by
  apply coveredBy_split_literal root_8659458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8659459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8665446 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8659459
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8665446
#print axioms cover_8659458

def root_8650260 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8650260 : CoveredBy scale carrier boxes root_8650260 := by
  apply coveredBy_split_literal root_8650260 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.root_8650261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8659458 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0208.cover_8650261
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8659458
#print axioms cover_8650260

def root_8603106 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8603106 : CoveredBy scale carrier boxes root_8603106 := by
  apply coveredBy_split_literal root_8603106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.root_8603107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8650260 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0207.cover_8603107
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8650260
#print axioms cover_8603106

def root_8529358 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529358 : CoveredBy scale carrier boxes root_8529358 := by
  apply coveredBy_split_literal root_8529358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.root_8529359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8603106 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0206.cover_8529359
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8603106
#print axioms cover_8529358

def root_8712879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712879 : CoveredBy scale carrier boxes root_8712879 := by
  apply coveredBy_split_literal root_8712879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3262.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3263.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3262.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3263.covered
#print axioms cover_8712879

def root_8712873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712873_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712873_left_fuel : Nat := 1
def small_8712873_left_count : Nat := 1
def small_8712873_left_encoded : String := "00000003"
theorem small_8712873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712873_left_root small_8712873_left_fuel small_8712873_left_count small_8712873_left_encoded = true := by
  decide +kernel
theorem small_8712873_left_covered : CoveredBy scale carrier boxes small_8712873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712873_left_root small_8712873_left_fuel small_8712873_left_count small_8712873_left_encoded small_8712873_left_checked

theorem cover_8712873 : CoveredBy scale carrier boxes root_8712873 := by
  apply coveredBy_split_literal root_8712873 small_8712873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712879 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8712873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712879
#print axioms cover_8712873

def root_8712872 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712872_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712872_right_fuel : Nat := 22
def small_8712872_right_count : Nat := 91
def small_8712872_right_encoded : String := "1151E8FD0A0000FE1152250900000005000000041151E9090000000408A91303120700F8000000050000000112073CF80000000108A912FB12073D040500010000000005135D8101000000050000000000000002120701040000000205000100135D450100000000050000FC135D80FD00000003050000FE0000000500000009135D44FD050000FE000000050000000900000003135D8101050000FC135D80FD00000003050000FE135D81090CFD9C03000000050F350CF800000001045489FB0000000513867104000000020C9A86F8000000050F875103000000010780010000000005128A7D01000000050000000000000004135D4509000000040CFD9C030F34D0F8000000050000000100000009135D44FD050000FE135D81090CFD9C03000000050F350CF800000001045489FB0000000513867104000000020000000900000004135D4509000000040CFD9C030F34D0F8000000050000000100000009000000030000000000000003"
theorem small_8712872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712872_right_root small_8712872_right_fuel small_8712872_right_count small_8712872_right_encoded = true := by
  decide +kernel
theorem small_8712872_right_covered : CoveredBy scale carrier boxes small_8712872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712872_right_root small_8712872_right_fuel small_8712872_right_count small_8712872_right_encoded small_8712872_right_checked

theorem cover_8712872 : CoveredBy scale carrier boxes root_8712872 := by
  apply coveredBy_split_literal root_8712872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712873 small_8712872_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712873
  · exact small_8712872_right_covered
#print axioms cover_8712872

def root_8712866 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712866_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712866_left_fuel : Nat := 1
def small_8712866_left_count : Nat := 1
def small_8712866_left_encoded : String := "00000002"
theorem small_8712866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712866_left_root small_8712866_left_fuel small_8712866_left_count small_8712866_left_encoded = true := by
  decide +kernel
theorem small_8712866_left_covered : CoveredBy scale carrier boxes small_8712866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712866_left_root small_8712866_left_fuel small_8712866_left_count small_8712866_left_encoded small_8712866_left_checked

theorem cover_8712866 : CoveredBy scale carrier boxes root_8712866 := by
  apply coveredBy_split_literal root_8712866 small_8712866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712872 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8712866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712872
#print axioms cover_8712866

def root_8712766 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712766_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712766_left_fuel : Nat := 15
def small_8712766_left_count : Nat := 47
def small_8712766_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A91303120700F808A912FD00000005120700FC08A913090000000512073CFE0000000400000005000000030000000112073CF80000000108A912FD00000005120700FC08A913090000000512073CFE0000000405000100135D4501000000000500010400000007000000050000000500000003000000041151E9090000000408A913030000000512073CF800000001000000051151E8FD000000050000000300000002"
theorem small_8712766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712766_left_root small_8712766_left_fuel small_8712766_left_count small_8712766_left_encoded = true := by
  decide +kernel
theorem small_8712766_left_covered : CoveredBy scale carrier boxes small_8712766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712766_left_root small_8712766_left_fuel small_8712766_left_count small_8712766_left_encoded small_8712766_left_checked

theorem cover_8712766 : CoveredBy scale carrier boxes root_8712766 := by
  apply coveredBy_split_literal root_8712766 small_8712766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712866 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8712766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712866
#print axioms cover_8712766

def root_8712761 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712761_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712761_right_fuel : Nat := 1
def small_8712761_right_count : Nat := 1
def small_8712761_right_encoded : String := "00000001"
theorem small_8712761_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712761_right_root small_8712761_right_fuel small_8712761_right_count small_8712761_right_encoded = true := by
  decide +kernel
theorem small_8712761_right_covered : CoveredBy scale carrier boxes small_8712761_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712761_right_root small_8712761_right_fuel small_8712761_right_count small_8712761_right_encoded small_8712761_right_checked

theorem cover_8712761 : CoveredBy scale carrier boxes root_8712761 := by
  apply coveredBy_split_literal root_8712761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712766 small_8712761_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712766
  · exact small_8712761_right_covered
#print axioms cover_8712761

def root_8721783 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8721783 : CoveredBy scale carrier boxes root_8721783 := by
  apply coveredBy_split_literal root_8721783 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3265.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3266.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3265.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3266.covered
#print axioms cover_8721783

def root_8721777 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721777_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721777_left_fuel : Nat := 1
def small_8721777_left_count : Nat := 1
def small_8721777_left_encoded : String := "00000002"
theorem small_8721777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721777_left_root small_8721777_left_fuel small_8721777_left_count small_8721777_left_encoded = true := by
  decide +kernel
theorem small_8721777_left_covered : CoveredBy scale carrier boxes small_8721777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721777_left_root small_8721777_left_fuel small_8721777_left_count small_8721777_left_encoded small_8721777_left_checked

theorem cover_8721777 : CoveredBy scale carrier boxes root_8721777 := by
  apply coveredBy_split_literal root_8721777 small_8721777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721783 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8721777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721783
#print axioms cover_8721777

def root_8721349 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721349_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721349_left_fuel : Nat := 23
def small_8721349_left_count : Nat := 207
def small_8721349_left_encoded : String := "1386AD04045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800100128A410100000000078000F80000000500000007128A7D01078000F800000005128A410300000001067ECE7B0000000512EA590400000002067ECE7D0000000512EA58FC0B4D43FE000000051080110900000004000000070000000300000000138670FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D0907800100128A410100000000078000F8128A7D03067ECE7B0000000512EA590400000002022A457D000000050000000800000001128A410300000001067ECE7B0000000512EA590400000002022A457D0000000500000009128A7D01078000F8128A7D03067ECE7B000000050000000900000001128A410300000001067ECE7B000000050000000900000000000000040F8751090000000407800100128A410100000000078000F8128A7D03067ECE7B12EA9504022A457D0000000513E1C4FC00000008000000030000000212EA590400000002022A457D13E200FC000000030B4D43FE10804D09000000050000000410801109000000040640010012FF71010000000008C000F811FC250300000005000000010000000712FFAD0108C000F811FC2503000000050000000111FBE903000000010569AC3B00000005000000090000000013E1C4FC0B4D43FE0000000810801109000000040640010000000008000000080000000300000001128A410300000001067ECE7B0000000712EA590400000002022A457D0000000713E1C4FC0B4D43FE00000009108011090000000406400100000000090000000900000003128A7D01078000F8128A7D03067ECE7B12EA9504022A457D00000005000000090000000212EA590400000002022A457D13E200FC000000030B4D43FE00000009108011090000000408C0010011FBE9010000000008C000F80000000500000009000000090000000900000001128A410300000001067ECE7B12EA9504022A457D00000005000000090000000212EA590400000002022A457D13E200FC000000030B4D43FE00000009108011090000000408C00100000000090000000900000009000000000000000300000002"
theorem small_8721349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721349_left_root small_8721349_left_fuel small_8721349_left_count small_8721349_left_encoded = true := by
  decide +kernel
theorem small_8721349_left_covered : CoveredBy scale carrier boxes small_8721349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721349_left_root small_8721349_left_fuel small_8721349_left_count small_8721349_left_encoded small_8721349_left_checked

theorem cover_8721349 : CoveredBy scale carrier boxes root_8721349 := by
  apply coveredBy_split_literal root_8721349 small_8721349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721777 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8721349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721777
#print axioms cover_8721349

def root_8721344 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721344_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721344_right_fuel : Nat := 1
def small_8721344_right_count : Nat := 1
def small_8721344_right_encoded : String := "00000001"
theorem small_8721344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721344_right_root small_8721344_right_fuel small_8721344_right_count small_8721344_right_encoded = true := by
  decide +kernel
theorem small_8721344_right_covered : CoveredBy scale carrier boxes small_8721344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721344_right_root small_8721344_right_fuel small_8721344_right_count small_8721344_right_encoded small_8721344_right_checked

theorem cover_8721344 : CoveredBy scale carrier boxes root_8721344 := by
  apply coveredBy_split_literal root_8721344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721349 small_8721344_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721349
  · exact small_8721344_right_covered
#print axioms cover_8721344

def root_8721343 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721343_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721343_right_fuel : Nat := 20
def small_8721343_right_count : Nat := 217
def small_8721343_right_encoded : String := "135D450300000001045489FB1386AD04045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE000000070F8751090000000400000007138670FC0CFD9C090F34D0FE078001000000000A128A7D01028000F8000000050000000900000000000000040F350CFE000000040C9A86FE0F878D0907800100128A41010000000000000007128A7D01028000F813D7ED03067ECE7B0000000900000009000000010000000700000000000000040F8751090000000407800100128A41010000000000000007128A7D01028000F813D7ED03067ECE7B0000000712EA590400000002022A457D000000070000000900000001000000070000000000000003000000021386710400000002045489FD1386ACFC000000030CFD9C090F34D0FE078001000000000A00000006000000040F350CFE000000040C9A86FE0F878D0907800100128A4101000000000000000A128A7D01028000F813D7ED03022A457B13E20104067ECE7D000000050000000900000002000000060000000113D7B103000000010000000600000000000000040F8751090000000407800100128A410100000000028000F813D7ED03022A457B0000000713E1C50400000002067ECE7D000000070000000A0000000100000007128A7D01028000F813D7ED03022A457B13E20104067ECE7D0000000712EA58FC0B4D43FE00000007108011090000000400000007000000030000000213E1C50400000002067ECE7D0000000612EA58FC00000006000000030000000113D7B10300000001022A457B0000000713E1C50400000002067ECE7D000000060000000600000000138670FC0CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0F878D09078001000000000A128A7D01028000F8000000090000000900000000000000040F8751090000000407800100128A410100000000028000F813D7ED03022A457B13E20104022A457D0000000713E1C4FC0B4D43FE0000000910801109000000040000000900000003000000020000000A000000010000000A128A7D01028000F813D7ED03022A457B13E20104022A457D13E200FC000000030B4D43FE00000009108011090000000400000009000000090000000213E1C50400000002022A457D00000006000000090000000113D7B10300000001022A457B00000009000000090000000000000003"
theorem small_8721343_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721343_right_root small_8721343_right_fuel small_8721343_right_count small_8721343_right_encoded = true := by
  decide +kernel
theorem small_8721343_right_covered : CoveredBy scale carrier boxes small_8721343_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721343_right_root small_8721343_right_fuel small_8721343_right_count small_8721343_right_encoded small_8721343_right_checked

theorem cover_8721343 : CoveredBy scale carrier boxes root_8721343 := by
  apply coveredBy_split_literal root_8721343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721344 small_8721343_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721344
  · exact small_8721343_right_covered
#print axioms cover_8721343

def root_8721338 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721338_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721338_right_fuel : Nat := 1
def small_8721338_right_count : Nat := 1
def small_8721338_right_encoded : String := "00000000"
theorem small_8721338_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721338_right_root small_8721338_right_fuel small_8721338_right_count small_8721338_right_encoded = true := by
  decide +kernel
theorem small_8721338_right_covered : CoveredBy scale carrier boxes small_8721338_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721338_right_root small_8721338_right_fuel small_8721338_right_count small_8721338_right_encoded small_8721338_right_checked

theorem cover_8721338 : CoveredBy scale carrier boxes root_8721338 := by
  apply coveredBy_split_literal root_8721338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721343 small_8721338_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721343
  · exact small_8721338_right_covered
#print axioms cover_8721338

def root_8719146 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8719146 : CoveredBy scale carrier boxes root_8719146 := by
  apply coveredBy_split_literal root_8719146 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3264.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8721338 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3264.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8721338
#print axioms cover_8719146

def root_8719140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719140_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719140_left_fuel : Nat := 1
def small_8719140_left_count : Nat := 1
def small_8719140_left_encoded : String := "00000004"
theorem small_8719140_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719140_left_root small_8719140_left_fuel small_8719140_left_count small_8719140_left_encoded = true := by
  decide +kernel
theorem small_8719140_left_covered : CoveredBy scale carrier boxes small_8719140_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719140_left_root small_8719140_left_fuel small_8719140_left_count small_8719140_left_encoded small_8719140_left_checked

theorem cover_8719140 : CoveredBy scale carrier boxes root_8719140 := by
  apply coveredBy_split_literal root_8719140 small_8719140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8719146 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8719140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8719146
#print axioms cover_8719140

def root_8719100 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719100_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719100_left_fuel : Nat := 7
def small_8719100_left_count : Nat := 19
def small_8719100_left_encoded : String := "120700FE05000100135D450100000000050000F8135D8103045489FB000000050000000A000000010000000A135D8101050000F800000005135D4503000000010000000A0000000000000004"
theorem small_8719100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719100_left_root small_8719100_left_fuel small_8719100_left_count small_8719100_left_encoded = true := by
  decide +kernel
theorem small_8719100_left_covered : CoveredBy scale carrier boxes small_8719100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719100_left_root small_8719100_left_fuel small_8719100_left_count small_8719100_left_encoded small_8719100_left_checked

theorem cover_8719100 : CoveredBy scale carrier boxes root_8719100 := by
  apply coveredBy_split_literal root_8719100 small_8719100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8719140 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8719100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8719140
#print axioms cover_8719100

def root_8719095 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719095_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719095_right_fuel : Nat := 1
def small_8719095_right_count : Nat := 1
def small_8719095_right_encoded : String := "00000003"
theorem small_8719095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719095_right_root small_8719095_right_fuel small_8719095_right_count small_8719095_right_encoded = true := by
  decide +kernel
theorem small_8719095_right_covered : CoveredBy scale carrier boxes small_8719095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719095_right_root small_8719095_right_fuel small_8719095_right_count small_8719095_right_encoded small_8719095_right_checked

theorem cover_8719095 : CoveredBy scale carrier boxes root_8719095 := by
  apply coveredBy_split_literal root_8719095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8719100 small_8719095_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8719100
  · exact small_8719095_right_covered
#print axioms cover_8719095

def root_8718707 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718707_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718707_left_fuel : Nat := 26
def small_8718707_left_count : Nat := 179
def small_8718707_left_encoded : String := "12073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050000F8135D8103045489FB0000000513867104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F87510900000004028001000000000713D7ED01078000F8128A7D03000000050000000100000007000000000000000300000001135D450300000001045489FB0000000713867104000000020CFD9BFD000000070F34D0FC0CFD9C09000000050000000700000003135D8101050000F8135D8103045489FB1386AD040CFD9BFD000000050F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000050F8750FD00000005000000030F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800100128A410100000000078000F8128A7D030000000500000001128A41030000000100000007128A7D01078000F8128A7D030000000500000001128A410300000001022A457B0000000513E1C504000000020AD3577D0000000510D100FC0B4D43FE10804D09000000050000000410801109000000040000000800000003000000000000000300000001135D450300000001045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9C090000000500000007000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC00000007000000070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010000000007128A7D01028000F813D7ED03022A457B0000000500000006000000010000000700000000000000040F87510900000004000000070000000300000000"
theorem small_8718707_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718707_left_root small_8718707_left_fuel small_8718707_left_count small_8718707_left_encoded = true := by
  decide +kernel
theorem small_8718707_left_covered : CoveredBy scale carrier boxes small_8718707_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718707_left_root small_8718707_left_fuel small_8718707_left_count small_8718707_left_encoded small_8718707_left_checked

theorem cover_8718707 : CoveredBy scale carrier boxes root_8718707 := by
  apply coveredBy_split_literal root_8718707 small_8718707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8719095 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8718707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8719095
#print axioms cover_8718707

def root_8718701 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718701_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718701_left_fuel : Nat := 1
def small_8718701_left_count : Nat := 1
def small_8718701_left_encoded : String := "00000002"
theorem small_8718701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718701_left_root small_8718701_left_fuel small_8718701_left_count small_8718701_left_encoded = true := by
  decide +kernel
theorem small_8718701_left_covered : CoveredBy scale carrier boxes small_8718701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718701_left_root small_8718701_left_fuel small_8718701_left_count small_8718701_left_encoded small_8718701_left_checked

theorem cover_8718701 : CoveredBy scale carrier boxes root_8718701 := by
  apply coveredBy_split_literal root_8718701 small_8718701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8718707 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8718701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8718707
#print axioms cover_8718701

def root_8718557 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718557_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718557_left_fuel : Nat := 20
def small_8718557_left_count : Nat := 71
def small_8718557_left_encoded : String := "12073D0408A912FD00000005120700FC08A913090000000512073CFE0000000405000100135D450100000000050000F8135D81030CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050F350CFE000000040C9A86FE0000000700000005000000030000000100000007135D8101050000F8135D81030CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010000000005128A7D0100000005000000000000000300000001135D4503000000010CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050000000700000003000000000000000300000002"
theorem small_8718557_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718557_left_root small_8718557_left_fuel small_8718557_left_count small_8718557_left_encoded = true := by
  decide +kernel
theorem small_8718557_left_covered : CoveredBy scale carrier boxes small_8718557_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718557_left_root small_8718557_left_fuel small_8718557_left_count small_8718557_left_encoded small_8718557_left_checked

theorem cover_8718557 : CoveredBy scale carrier boxes root_8718557 := by
  apply coveredBy_split_literal root_8718557 small_8718557_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8718701 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8718557_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8718701
#print axioms cover_8718557

def root_8718552 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718552_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718552_right_fuel : Nat := 1
def small_8718552_right_count : Nat := 1
def small_8718552_right_encoded : String := "00000004"
theorem small_8718552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718552_right_root small_8718552_right_fuel small_8718552_right_count small_8718552_right_encoded = true := by
  decide +kernel
theorem small_8718552_right_covered : CoveredBy scale carrier boxes small_8718552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718552_right_root small_8718552_right_fuel small_8718552_right_count small_8718552_right_encoded small_8718552_right_checked

theorem cover_8718552 : CoveredBy scale carrier boxes root_8718552 := by
  apply coveredBy_split_literal root_8718552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8718557 small_8718552_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8718557
  · exact small_8718552_right_covered
#print axioms cover_8718552

def root_8730051 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730051_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730051_right_fuel : Nat := 23
def small_8730051_right_count : Nat := 101
def small_8730051_right_encoded : String := "128A410300000001078000FE128A7D09022A457B13E20104067ECE7D0000000712EA58FC064001000000000712FFAD01064000F812FFAD0308C000FE0000000711FBE9090000000400000007000000010000000700000000000000030000000213E1C50400000002067ECE7D12EA94FC0000000306400100000000070000000812EA58FC0640010012FF710100000000064000F812FFAD0308C000FE11FC25090115233B0000000713F85904000000020569AC3D00000007000000050000000400000008000000010000000712FFAD01064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D000000071340D4FC06E001000000000712C8210106E000F812C82103096000FE0000000700000008000000010000000700000000000000030000000213F85904000000020569AC3D000000081340D4FC000000080000000300000004000000080000000100000008000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000712EA58FC064001000000000700000008000000030000000200000008"
theorem small_8730051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730051_right_root small_8730051_right_fuel small_8730051_right_count small_8730051_right_encoded = true := by
  decide +kernel
theorem small_8730051_right_covered : CoveredBy scale carrier boxes small_8730051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730051_right_root small_8730051_right_fuel small_8730051_right_count small_8730051_right_encoded small_8730051_right_checked

theorem cover_8730051 : CoveredBy scale carrier boxes root_8730051 := by
  apply coveredBy_split_literal root_8730051 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3268.root small_8730051_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3268.covered
  · exact small_8730051_right_covered
#print axioms cover_8730051

def root_8730045 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730045_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730045_left_fuel : Nat := 1
def small_8730045_left_count : Nat := 1
def small_8730045_left_encoded : String := "00000000"
theorem small_8730045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730045_left_root small_8730045_left_fuel small_8730045_left_count small_8730045_left_encoded = true := by
  decide +kernel
theorem small_8730045_left_covered : CoveredBy scale carrier boxes small_8730045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730045_left_root small_8730045_left_fuel small_8730045_left_count small_8730045_left_encoded small_8730045_left_checked

theorem cover_8730045 : CoveredBy scale carrier boxes root_8730045 := by
  apply coveredBy_split_literal root_8730045 small_8730045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730051 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_8730045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730051
#print axioms cover_8730045

def root_8730044 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730044_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730044_right_fuel : Nat := 26
def small_8730044_right_count : Nat := 363
def small_8730044_right_encoded : String := "128A7D01078000F8128A7D03078000FE128A7D09022A457B13E20104067ECE7D12EA94FC0000000308C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509000000050000000411FBE909000000040000000A0000000A12EA58FC08C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509033F67BB0000000A13BBF504000000020569AC3D0000000A1340D4FC0000000A000000030000000411FBE909000000040000000A0000000A000000030000000213E1C50400000002067ECE7D12EA94FC0000000308C0010011FBE9010000000008C000F811FC25030000000A0000000111FBE9030000000108C000FE11FC25090115233B13F895040793F0BD00000005128220FC00000008000000030000000200000008000000040000000811FC25010000000A0000000012EA58FC08C0010011FBE9010000000008C000F811FC250308C000FE11FC25090115233B0000000A13F85904000000020000000A000000040000000A0000000111FBE9030000000108C000FE11FC25090115233B13F895040569AC3D134110FC000000030820010012465D0100000000082000F80000000A000000080000000A1340D4FC0820010012465D0100000000082000F80000000A12465D0300000001096000FE0000000911AA810900000004000000080000000A000000030000000213F85904000000020569AC3D134110FC000000030820010000000008000000081340D4FC0820010012465D0100000000082000F812469903096000FE0000000611AA810900000004000000080000000112465D030000000100000008124699010000000600000000000000030000000411FBE909000000040115233B13F895040569AC3D000000080000000A000000020000000811FC250108C000F80000000A11FBE9030000000108C000FE11FC25090115233B0000000A00000006000000040000000A000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000A0000000A0000000213E1C50400000002067ECE7D0000000A12EA58FC08C0010011FBE9010000000008C000F80000000A000000080000000A0000000300000001128A410300000001078000FE128A7D09022A457B13E20104067ECE7D12EA94FC0000000308C0010011FBE901000000000000000711FC2501064000F812FFAD0308C000FE11FC2509033F67BB0000000500000008000000040000000800000001000000070000000012EA58FC08C0010011FBE90100000000064000F812FFAD0308C000FE11FC2509033F67BB0000000713BBF504000000020569AC3D000000071340D4FC0820010012465D010000000000000007124699010000000900000000000000030000000411FBE90900000004033F67BB00000007000000080000000112FF71030000000108C000FE000000070000000811FC2501064000F812FFAD0308C000FE11FC2509033F67BB0000000A13BBF504000000020569AC3D0000000A000000090000000411FBE909000000040000000A0000000112FF71030000000108C000FE11FC2509033F67BB0000000700000008000000040000000800000000000000030000000213E1C50400000002067ECE7D12EA94FC000000030000000812EA58FC08C0010011FBE90100000000064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D000000081340D4FC0820010012465D010000000006E000F812C821030000000800000001000000081246990100000008000000000000000300000002000000080000000400000008000000010000000811FC2501064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D0000000600000006000000020000000600000004000000080000000100000008000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000812EA58FC08C00100000000080000000800000003000000020000000800000000"
theorem small_8730044_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730044_right_root small_8730044_right_fuel small_8730044_right_count small_8730044_right_encoded = true := by
  decide +kernel
theorem small_8730044_right_covered : CoveredBy scale carrier boxes small_8730044_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730044_right_root small_8730044_right_fuel small_8730044_right_count small_8730044_right_encoded small_8730044_right_checked

theorem cover_8730044 : CoveredBy scale carrier boxes root_8730044 := by
  apply coveredBy_split_literal root_8730044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730045 small_8730044_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730045
  · exact small_8730044_right_covered
#print axioms cover_8730044

def root_8730038 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730038_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730038_left_fuel : Nat := 1
def small_8730038_left_count : Nat := 1
def small_8730038_left_encoded : String := "00000003"
theorem small_8730038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730038_left_root small_8730038_left_fuel small_8730038_left_count small_8730038_left_encoded = true := by
  decide +kernel
theorem small_8730038_left_covered : CoveredBy scale carrier boxes small_8730038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730038_left_root small_8730038_left_fuel small_8730038_left_count small_8730038_left_encoded small_8730038_left_checked

theorem cover_8730038 : CoveredBy scale carrier boxes root_8730038 := by
  apply coveredBy_split_literal root_8730038 small_8730038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730044 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8730038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730044
#print axioms cover_8730038

def root_8734126 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734126_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734126_right_fuel : Nat := 23
def small_8734126_right_count : Nat := 333
def small_8734126_right_encoded : String := "128A7D01078000F8128A7D03078000FE128A7D09022A457B13E20104022A457D13E200FC0000000308C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509033F67BB13BC31040000000900000002000000090000000411FBE909000000040000000A0000000A13E1C4FC08C0010011FBE9010000000008C000F811FC25030000000A0000000111FBE9030000000108C000FE0000000911FBE909000000040000000911FC25010000000A00000000000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE9010000000008C000F811FC250308C000FE11FC25090115233B0000000A13F8590400000002033F67BD0000000A000000070000000411FBE909000000040000000A0000000111FBE9030000000108C000FE11FC25090115233B13F89504033F67BD13BC30FC0000000300000009000000090000000213F8590400000002033F67BD13BC30FC00000003082001000000000900000009000000050000000411FBE909000000040115233B13F89504033F67BD0000000A00000005000000020000000511FC250108C000F80000000A11FBE9030000000108C000FE0000000911FBE909000000040000000A0000000013E1C4FC08C0010011FBE9010000000008C000F8000000070000000511FC250100000007000000000000000300000004128A410900000004022A457B13E20104022A457D0000000A13E1C4FC0000000A000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE9010000000008C000F80000000A11FBE90300000001000000050000000A0000000500000001128A410300000001078000FE128A7D09022A457B13E20104022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD0308C000FE11FC2509033F67BB00000009000000090000000411FBE90900000004033F67BB13BC3104033F67BD0000000A13BBF4FC082001000000000900000009000000030000000213BBF50400000002033F67BD13BC30FC000000030820010012465D010000000006E000F80000000A000000080000000A000000050000000112FF71030000000108C000FE11FC2509033F67BB00000009000000090000000411FBE90900000004033F67BB13BC3104033F67BD00000007000000090000000213BBF50400000002033F67BD000000080000000511FC2501064000F812FFAD0308C000FE0000000911FBE909000000040000000A0000000112FF71030000000108C000FE0000000911FBE90900000004033F67BB00000009000000090000000013E1C4FC08C0010011FBE90100000000064000F812FFAD0308C000FE0000000911FBE9090000000400000005000000010000000911FC25010000000900000000000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD0308C000FE11FC25090115233B00000009000000050000000411FBE90900000004000000050000000112FF7103000000010000000511FC2501064000F812FFAD0308C000FE0000000911FBE909000000040115233B00000009000000050000000112FF71030000000108C000FE0000000900000005000000000000000500000004128A410900000004022A457B13E20104022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD03064000FE12FFAD09033F67BB0000000A000000050000000412FF710900000004000000080000000112FF7103000000010000000811FC2501064000F80000000A000000080000000000000005000000020000000500000000"
theorem small_8734126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8734126_right_root small_8734126_right_fuel small_8734126_right_count small_8734126_right_encoded = true := by
  decide +kernel
theorem small_8734126_right_covered : CoveredBy scale carrier boxes small_8734126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8734126_right_root small_8734126_right_fuel small_8734126_right_count small_8734126_right_encoded small_8734126_right_checked

theorem cover_8734126 : CoveredBy scale carrier boxes root_8734126 := by
  apply coveredBy_split_literal root_8734126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3269.root small_8734126_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3269.covered
  · exact small_8734126_right_covered
#print axioms cover_8734126

def root_8734121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734121_right_fuel : Nat := 1
def small_8734121_right_count : Nat := 1
def small_8734121_right_encoded : String := "00000003"
theorem small_8734121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8734121_right_root small_8734121_right_fuel small_8734121_right_count small_8734121_right_encoded = true := by
  decide +kernel
theorem small_8734121_right_covered : CoveredBy scale carrier boxes small_8734121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8734121_right_root small_8734121_right_fuel small_8734121_right_count small_8734121_right_encoded small_8734121_right_checked

theorem cover_8734121 : CoveredBy scale carrier boxes root_8734121 := by
  apply coveredBy_split_literal root_8734121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8734126 small_8734121_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8734126
  · exact small_8734121_right_covered
#print axioms cover_8734121

def root_8730037 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8730037 : CoveredBy scale carrier boxes root_8730037 := by
  apply coveredBy_split_literal root_8730037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8734121 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8734121
#print axioms cover_8730037

def root_8730031 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730031_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730031_left_fuel : Nat := 1
def small_8730031_left_count : Nat := 1
def small_8730031_left_encoded : String := "00000002"
theorem small_8730031_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730031_left_root small_8730031_left_fuel small_8730031_left_count small_8730031_left_encoded = true := by
  decide +kernel
theorem small_8730031_left_covered : CoveredBy scale carrier boxes small_8730031_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730031_left_root small_8730031_left_fuel small_8730031_left_count small_8730031_left_encoded small_8730031_left_checked

theorem cover_8730031 : CoveredBy scale carrier boxes root_8730031 := by
  apply coveredBy_split_literal root_8730031 small_8730031_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730037 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8730031_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730037
#print axioms cover_8730031

def root_8729121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729121_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729121_left_fuel : Nat := 23
def small_8729121_left_count : Nat := 437
def small_8729121_left_encoded : String := "1386AD04045489FD1386ACFC0000000307800100128A410100000000078000F8128A7D03078000FE128A7D09067ECE7B0000000512EA590400000002067ECE7D0000000512EA58FC0640010012FF7101000000000000000712FFAD0108C000F80000000500000007000000000000000300000004128A410900000004067ECE7B0000000612EA590400000002067ECE7D00000007000000060000000100000007128A7D01078000F8128A7D03078000FE128A7D09067ECE7B0000000512EA590400000002067ECE7D0000000512EA58FC0000000A0000000300000004128A410900000004067ECE7B0000000A12EA5904000000020000000A00000001128A410300000001078000FE128A7D09067ECE7B0000000712EA590400000002067ECE7D0000000712EA58FC08C001000000000711FC2501064000F80000000A00000007000000000000000300000004128A410900000004067ECE7B0000000712EA590400000002067ECE7D0000000712EA58FC08C0010011FBE90100000000000000070000000A0000000300000000138670FC07800100128A410100000000078000F8128A7D03078000FE128A7D09067ECE7B12EA9504022A457D13E200FC00000003064001000000000512FFAD010000000500000000000000060000000212EA590400000002022A457D13E200FC000000030640010012FF71010000000008C000F811FC2503000000060000000111FBE903000000010000000712FFAD0108C000F811FC25030000000A0000000111FBE9030000000108C000FE11FC25090569AC3B000000071340D50400000002033F67BD00000007000000090000000411FBE909000000040569AC3B000000061340D50400000002000000060000000013E1C4FC0640010012FF71010000000008C000F8000000060000000612FFAD0108C000F811FC250308C000FE00000008000000060000000111FBE9030000000108C000FE0000000900000006000000000000000300000004128A410900000004067ECE7B0000000612EA590400000002022A457D000000060000000600000001128A410300000001078000FE128A7D09067ECE7B0000000712EA590400000002022A457D0000000713E1C4FC0640010012FF710100000000064000F812FFAD0308C000FE0000000700000006000000010000000712FFAD01064000F812FFAD0308C000FE0000000911FBE909000000040569AC3B000000061340D504000000020115233D00000006000000050000000112FF71030000000108C000FE0000000711FBE9090000000400000007000000000000000300000004128A410900000004067ECE7B0000000612EA590400000002022A457D13E200FC00000003064001000000000612FFAD01064000F800000006000000070000000013E1C4FC064001000000000612FFAD01064000F800000006000000060000000000000003128A7D01078000F8128A7D03078000FE128A7D09067ECE7B12EA9504022A457D0000000A13E1C4FC0000000A000000030000000212EA590400000002022A457D13E200FC0000000308C001000000000A0000000A13E1C4FC08C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE000000090000000A0000000A0000000300000004128A410900000004067ECE7B0000000A12EA5904000000020000000A00000001128A410300000001078000FE128A7D09067ECE7B12EA9504022A457D0000000713E1C4FC08C0010011FBE90100000000064000F812FFAD0300000009000000010000000711FC25010000000900000000000000030000000212EA590400000002022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD0308C000FE11FC25090569AC3B00000007000000090000000411FBE909000000040569AC3B000000071340D50400000002033F67BD0000000700000009000000010000000711FC2501064000F812FFAD030000000A0000000112FF71030000000108C000FE0000000911FBE909000000040569AC3B00000007000000090000000013E1C4FC08C0010011FBE90100000000064000F812FFAD0308C000FE0000000911FBE9090000000400000009000000010000000911FC250100000009000000000000000300000004128A410900000004067ECE7B12EA9504022A457D13E200FC0000000308C00100000000070000000A13E1C4FC08C00100000000060000000A000000030000000212EA590400000002022A457D13E200FC0000000308C0010011FBE90100000000064000F80000000A000000070000000A13E1C4FC08C0010011FBE90100000000064000F80000000A12FF710300000001064000FE12FFAD090569AC3B0000000600000005000000040000000611FC25010000000A0000000000000003000000000000000300000002"
theorem small_8729121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729121_left_root small_8729121_left_fuel small_8729121_left_count small_8729121_left_encoded = true := by
  decide +kernel
theorem small_8729121_left_covered : CoveredBy scale carrier boxes small_8729121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729121_left_root small_8729121_left_fuel small_8729121_left_count small_8729121_left_encoded small_8729121_left_checked

theorem cover_8729121 : CoveredBy scale carrier boxes root_8729121 := by
  apply coveredBy_split_literal root_8729121 small_8729121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8730031 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8729121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8730031
#print axioms cover_8729121

def root_8729116 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729116_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729116_right_fuel : Nat := 1
def small_8729116_right_count : Nat := 1
def small_8729116_right_encoded : String := "00000004"
theorem small_8729116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729116_right_root small_8729116_right_fuel small_8729116_right_count small_8729116_right_encoded = true := by
  decide +kernel
theorem small_8729116_right_covered : CoveredBy scale carrier boxes small_8729116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729116_right_root small_8729116_right_fuel small_8729116_right_count small_8729116_right_encoded small_8729116_right_checked

theorem cover_8729116 : CoveredBy scale carrier boxes root_8729116 := by
  apply coveredBy_split_literal root_8729116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8729121 small_8729116_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8729121
  · exact small_8729116_right_covered
#print axioms cover_8729116

def root_8729115 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729115_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729115_right_fuel : Nat := 15
def small_8729115_right_count : Nat := 135
def small_8729115_right_encoded : String := "135D450900000004045489FB1386AD04045489FD1386ACFC0000000307800100128A410100000000078000F800000006128A410300000001028000FE0000000700000006128A7D01078000F80000000A128A410300000001028000FE13D7ED09067ECE7B0000000700000008000000040000000800000000138670FC07800100128A41010000000000000006128A7D01078000F80000000A128A410300000001028000FE13D7ED09067ECE7B0000000612EA590400000002022A457D0000000A0000000600000004000000060000000000000003000000021386710400000002045489FD1386ACFC0000000307800100128A410100000000078000F8128A7D03028000FE13D7ED09022A457B13E20104067ECE7D0000000600000006000000020000000800000004000000080000000100000008128A7D01078000F8128A7D03028000FE13D7ED09022A457B0000000A000000080000000400000008000000010000000800000000138670FC07800100128A410100000000078000F8128A7D03028000FE13D7ED09022A457B0000000600000005000000040000000600000001128A41030000000100000005128A7D01078000F8128A7D03028000FE13D7ED09022A457B0000000A000000050000000413D7B109000000040000000A00000001128A410300000001028000FE13D7ED09022A457B13E20104022A457D0000000800000005000000020000000500000004000000050000000000000003"
theorem small_8729115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729115_right_root small_8729115_right_fuel small_8729115_right_count small_8729115_right_encoded = true := by
  decide +kernel
theorem small_8729115_right_covered : CoveredBy scale carrier boxes small_8729115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729115_right_root small_8729115_right_fuel small_8729115_right_count small_8729115_right_encoded small_8729115_right_checked

theorem cover_8729115 : CoveredBy scale carrier boxes root_8729115 := by
  apply coveredBy_split_literal root_8729115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8729116 small_8729115_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8729116
  · exact small_8729115_right_covered
#print axioms cover_8729115

def root_8729110 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729110_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729110_right_fuel : Nat := 1
def small_8729110_right_count : Nat := 1
def small_8729110_right_encoded : String := "00000001"
theorem small_8729110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729110_right_root small_8729110_right_fuel small_8729110_right_count small_8729110_right_encoded = true := by
  decide +kernel
theorem small_8729110_right_covered : CoveredBy scale carrier boxes small_8729110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729110_right_root small_8729110_right_fuel small_8729110_right_count small_8729110_right_encoded small_8729110_right_checked

theorem cover_8729110 : CoveredBy scale carrier boxes root_8729110 := by
  apply coveredBy_split_literal root_8729110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8729115 small_8729110_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8729115
  · exact small_8729110_right_covered
#print axioms cover_8729110

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209
