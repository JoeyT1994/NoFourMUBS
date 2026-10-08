import TaoBundleAssembly0617
import TaoBundleChunkBatch0847
import TaoBundleChunkBatch0848
import TaoBundleChunkBatch0849
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618
def root_9066745 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066745_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066745_right_fuel : Nat := 21
def small_9066745_right_count : Nat := 271
def small_9066745_right_encoded : String := "12EA94F800000001067ECE8712EA58FC022A458913E1C508000000040DE7CA000E5FD901000000000DE7CA040E5FD905000000020793F0C3128220F80569AC471340D4FC0115234913F85908000000040D4128800EFA1101000000000D4128840EFA1105000000020000000A0EFA4D0500000009000000020EFA4D010D412884000000080EFA4D0507095FA3000000D100000008000000020000000013F895080D4128800EFA11010000000000000005000000080000000400000003134110FC000000030115234913F85908000000040D4128800EFA1101000000000000000500000005000000050000000112825CF8000000010569AC471340D4FC0115234913F85908000000040D4128800EFA11010000000000000005000000050000000500000003000000050E6015050793F0C3128220F80569AC471340D4FC0115234913F85908000000040DAED8850E96250400000002000000070E9661040D412880000000070EFA4D0107095FA3000000D100000007000000000000000213F895080DAED8850E96250400000002000000070E9661040D4128800000000700000005000000020000000400000003134110FC000000030115234913F85908000000040DAED8850E962504000000020D41288000000007000000050E9661040D4128800EFA110100000000000000050000000500000002000000050000000112825CF8000000010569AC470000000700000005000000020E6015010DE7CA040E5FD905000000020793F0C3128220F80569AC4700000008134110FC000000030115234913F85908000000040DAED881000000080E9661000D4128840000000800000005000000000000000500000001000000080E6015050793F0C3128220F80569AC471340D4FC0115234913F85908000000040DAED8810E96250000000000000000080E9661000DAED8850E96250400000002000000070E96610407095FA3000000D10000000800000002000000000000000800000003134110FC000000030115234913F85908000000040DAED8810E962500000000000DAED8850E9625040000000207095FA3000000D100000005000000050E9661000DAED8850E9625040000000200000005000000050000000013F895080DAED8810000000800000005000000040000000112825CF8000000010569AC4700000008134110FC0000000300000005000000020000000013E201080DE7CA000E5FD901000000000DE7CA040E5FD90500000002000000050E6015050793F0C3128220F80569AC471340D4FC033F67C913BBF50800000004000000050000000500000003000000050000000100000005000000020E6015010DE7CA04000000080E601505000000080000000200000000000000040000000312EA94FC00000003022A458913E1C508000000040DE7CA000E5FD901000000000DE7CA040E5FD9050000000200000005000000050E6015010DE7CA040E5FD9050000000200000005000000050000000000000005"
theorem small_9066745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066745_right_root small_9066745_right_fuel small_9066745_right_count small_9066745_right_encoded = true := by
  decide +kernel
theorem small_9066745_right_covered : CoveredBy scale carrier boxes small_9066745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066745_right_root small_9066745_right_fuel small_9066745_right_count small_9066745_right_encoded small_9066745_right_checked

theorem cover_9066745 : CoveredBy scale carrier boxes root_9066745 := by
  apply coveredBy_split_literal root_9066745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.root_9066746 small_9066745_right_root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.cover_9066746
  · exact small_9066745_right_covered
#print axioms cover_9066745

def root_9066740 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066740_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066740_right_fuel : Nat := 1
def small_9066740_right_count : Nat := 1
def small_9066740_right_encoded : String := "00000002"
theorem small_9066740_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066740_right_root small_9066740_right_fuel small_9066740_right_count small_9066740_right_encoded = true := by
  decide +kernel
theorem small_9066740_right_covered : CoveredBy scale carrier boxes small_9066740_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066740_right_root small_9066740_right_fuel small_9066740_right_count small_9066740_right_encoded small_9066740_right_checked

theorem cover_9066740 : CoveredBy scale carrier boxes root_9066740 := by
  apply coveredBy_split_literal root_9066740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9066745 small_9066740_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9066745
  · exact small_9066740_right_covered
#print axioms cover_9066740

def root_9065900 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9065900_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9065900_left_fuel : Nat := 24
def small_9065900_left_count : Nat := 399
def small_9065900_left_encoded : String := "0F87510500000002067ECE8312EA58F8067ECE8712EA58FC022A458913E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020569AC431340D4F80569AC471340D4FC00000007000000030000000700000001134110F8000000010569AC470000000A134110FC000000030000000A10804D050569AC431340D4F80569AC471340D4FC0115234913F85908000000040D4128800EFA1101000000000000000A0EFA4D010BF3E584000000071009290504DF1B23000000070000000A000000020000000013F895080D4128800EFA1101000000000BF3E5840000000A1009290504DF1B230000000A0000000A000000020EFA4D010BF3E584000000071009290504DF1B23000000071365F0F8000000010000000800000002000000000000000400000003134110FC000000030115234913F85908000000040D4128800EFA1101000000000000000A0000000713F895080D4128800EFA1101000000000BF3E584000000071009290504DF1B23000000070000000500000002000000070000000400000001134110F8000000010569AC471340D4FC0115234913F85908000000040D4128800EFA1101000000000000000A0EFA4D010BF3E584000000061009290505F43D630000000A00000006000000020000000013F895080D4128800EFA1101000000000BF3E584000000081009290505F43D630000000A00000005000000020EFA4D0100000008000000000000000400000003134110FC000000030115234913F85908000000040D4128800000000A0EFA4D010BF3E5840000000A0000000A0000000013F895080D4128800EFA110100000000000000050000000500000004000000020E6015010B4D440410801105000000020569AC43000000070000000810804D050569AC431340D4F80569AC471340D4FC0115234913F85908000000040DAED8810E9625000000000000000006000000070000000800000003134110FC0000000301152349000000070000000700000001134110F8000000010569AC4700000008134110FC000000030115234913F85908000000040DAED881000000080E9661000BF3E584000000071009290505F43D630000000700000008000000020000000000000008000000020000000013E201080DE7CA000E5FD901000000000B4D440410801105000000020569AC431340D4F800000007000000010000000810804D050569AC431340D4F80569AC471340D4FC033F67C913BBF508000000040D4128800EFA1101000000000BF3E584000000081009290504DF1B230000000700000008000000020EFA4D0100000008000000000000000800000003134110FC00000003033F67C913BBF508000000040D4128800EFA11010000000000000005000000070000000500000001134110F8000000010569AC470000000800000005000000020E6015010B4D44040000000810804D05000000080000000200000000000000040000000312EA94FC00000003022A458913E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020569AC43000000070000000510804D050569AC431340D4F80793F0C7128220FC0115234913F85908000000040D4128800000000A00000007000000070000000312825CFC000000030000000500000001134110F80000000100000005000000020E6015010B4D44040000000910804D050569AC4300000007134110F8000000010793F0C7128220FC0115234913F85908000000040DAED8810000000700000005000000050000000300000005000000020000000013E201080DE7CA000E5FD90100000000000000050E6015010B4D44041080110500000002000000050000000500000000000000040000000112EA94F800000001067ECE8712EA58FC022A458913E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020793F0C3128220F80569AC470000000600000005000000010000000510804D050793F0C3128220F80569AC471340D4FC0115234913F85908000000040D4128800000000A000000060000000800000003134110FC00000003000000050000000112825CF80000000100000005000000020E6015010000000800000000000000080000000312EA94FC00000003022A458913E1C508000000040DE7CA000E5FD90100000000000000050E6015010B4D440400000008000000050000000000000005"
theorem small_9065900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9065900_left_root small_9065900_left_fuel small_9065900_left_count small_9065900_left_encoded = true := by
  decide +kernel
theorem small_9065900_left_covered : CoveredBy scale carrier boxes small_9065900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9065900_left_root small_9065900_left_fuel small_9065900_left_count small_9065900_left_encoded small_9065900_left_checked

theorem cover_9065900 : CoveredBy scale carrier boxes root_9065900 := by
  apply coveredBy_split_literal root_9065900 small_9065900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9066740 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9065900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9066740
#print axioms cover_9065900

def root_9065895 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9065895_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9065895_right_fuel : Nat := 1
def small_9065895_right_count : Nat := 1
def small_9065895_right_encoded : String := "00000000"
theorem small_9065895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9065895_right_root small_9065895_right_fuel small_9065895_right_count small_9065895_right_encoded = true := by
  decide +kernel
theorem small_9065895_right_covered : CoveredBy scale carrier boxes small_9065895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9065895_right_root small_9065895_right_fuel small_9065895_right_count small_9065895_right_encoded small_9065895_right_checked

theorem cover_9065895 : CoveredBy scale carrier boxes root_9065895 := by
  apply coveredBy_split_literal root_9065895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9065900 small_9065895_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9065900
  · exact small_9065895_right_covered
#print axioms cover_9065895

def root_9064581 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9064581 : CoveredBy scale carrier boxes root_9064581 := by
  apply coveredBy_split_literal root_9064581 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3394.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9065895 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3394.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9065895
#print axioms cover_9064581

def root_9064575 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064575_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064575_left_fuel : Nat := 1
def small_9064575_left_count : Nat := 1
def small_9064575_left_encoded : String := "00000004"
theorem small_9064575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9064575_left_root small_9064575_left_fuel small_9064575_left_count small_9064575_left_encoded = true := by
  decide +kernel
theorem small_9064575_left_covered : CoveredBy scale carrier boxes small_9064575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9064575_left_root small_9064575_left_fuel small_9064575_left_count small_9064575_left_encoded small_9064575_left_checked

theorem cover_9064575 : CoveredBy scale carrier boxes root_9064575 := by
  apply coveredBy_split_literal root_9064575 small_9064575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9064581 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9064575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9064581
#print axioms cover_9064575

def root_9064574 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064574_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064574_right_fuel : Nat := 19
def small_9064574_right_count : Nat := 159
def small_9064574_right_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F87510500000002067ECE8312EA58F8067ECE8712EA58FC067ECE8912EA5908000000040B4D440010801101000000000000000510804D010B4D4404108011050000000200000005000000050000000000000005000000030000000500000001000000050F878D05067ECE8312EA58F8067ECE8712EA58FC067ECE8912EA5908000000040B4D44000000000610804D0100000006000000000000000600000003000000060000000112EA94F800000001067ECE8712EA58FC067ECE8912EA59080000000400000005000000050000000300000005000000020F878D010C9A87040F87510500000002067ECE8312EA58F8067ECE8712EA58FC067ECE8912EA5908000000040DE7CA000E5FD901000000000B4D4404000000080000000500000008000000080000000312EA94FC00000003067ECE8912EA59080000000400000005000000050000000112EA94F800000001067ECE8700000008000000050F878D05067ECE8312EA58F8067ECE8712EA58FC067ECE8912EA5908000000040DE7CA000E5FD901000000000DE7CA040E5FD905000000020569AC431340D4F80569AC47000000080000000500000001000000050E60150500000006000000020E6015010DE7CA04000000080E6015050569AC430000000600000008000000020000000012EA95080DE7CA000000000600000008000000040000000312EA94FC00000003067ECE8912EA5908000000040DE7CA000000000600000005000000050000000112EA94F800000001067ECE8712EA58FC067ECE8912EA5908000000040DE7CA000E5FD901000000000000000500000005000000050000000300000005000000020000000000000004"
theorem small_9064574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9064574_right_root small_9064574_right_fuel small_9064574_right_count small_9064574_right_encoded = true := by
  decide +kernel
theorem small_9064574_right_covered : CoveredBy scale carrier boxes small_9064574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9064574_right_root small_9064574_right_fuel small_9064574_right_count small_9064574_right_encoded small_9064574_right_checked

theorem cover_9064574 : CoveredBy scale carrier boxes root_9064574 := by
  apply coveredBy_split_literal root_9064574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9064575 small_9064574_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9064575
  · exact small_9064574_right_covered
#print axioms cover_9064574

def root_9064568 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064568_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9064568_left_fuel : Nat := 1
def small_9064568_left_count : Nat := 1
def small_9064568_left_encoded : String := "00000003"
theorem small_9064568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9064568_left_root small_9064568_left_fuel small_9064568_left_count small_9064568_left_encoded = true := by
  decide +kernel
theorem small_9064568_left_covered : CoveredBy scale carrier boxes small_9064568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9064568_left_root small_9064568_left_fuel small_9064568_left_count small_9064568_left_encoded small_9064568_left_checked

theorem cover_9064568 : CoveredBy scale carrier boxes root_9064568 := by
  apply coveredBy_split_literal root_9064568 small_9064568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9064574 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9064568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9064574
#print axioms cover_9064568

def root_9061144 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9061144 : CoveredBy scale carrier boxes root_9061144 := by
  apply coveredBy_split_literal root_9061144 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.root_9061145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9064568 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.cover_9061145
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9064568
#print axioms cover_9061144

def root_9061139 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061139_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061139_right_fuel : Nat := 1
def small_9061139_right_count : Nat := 1
def small_9061139_right_encoded : String := "00000002"
theorem small_9061139_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9061139_right_root small_9061139_right_fuel small_9061139_right_count small_9061139_right_encoded = true := by
  decide +kernel
theorem small_9061139_right_covered : CoveredBy scale carrier boxes small_9061139_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9061139_right_root small_9061139_right_fuel small_9061139_right_count small_9061139_right_encoded small_9061139_right_checked

theorem cover_9061139 : CoveredBy scale carrier boxes root_9061139 := by
  apply coveredBy_split_literal root_9061139 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9061144 small_9061139_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9061144
  · exact small_9061139_right_covered
#print axioms cover_9061139

def root_9059715 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9059715 : CoveredBy scale carrier boxes root_9059715 := by
  apply coveredBy_split_literal root_9059715 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3392.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9061139 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3392.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9061139
#print axioms cover_9059715

def root_9059709 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9059709_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9059709_left_fuel : Nat := 1
def small_9059709_left_count : Nat := 1
def small_9059709_left_encoded : String := "00000001"
theorem small_9059709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9059709_left_root small_9059709_left_fuel small_9059709_left_count small_9059709_left_encoded = true := by
  decide +kernel
theorem small_9059709_left_covered : CoveredBy scale carrier boxes small_9059709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9059709_left_root small_9059709_left_fuel small_9059709_left_count small_9059709_left_encoded small_9059709_left_checked

theorem cover_9059709 : CoveredBy scale carrier boxes root_9059709 := by
  apply coveredBy_split_literal root_9059709 small_9059709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9059715 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9059709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9059715
#print axioms cover_9059709

def root_9049789 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9049789 : CoveredBy scale carrier boxes root_9049789 := by
  apply coveredBy_split_literal root_9049789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.root_9049790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9059709 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0617.cover_9049790
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9059709
#print axioms cover_9049789

def root_9049784 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049784_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049784_right_fuel : Nat := 1
def small_9049784_right_count : Nat := 1
def small_9049784_right_encoded : String := "00000000"
theorem small_9049784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9049784_right_root small_9049784_right_fuel small_9049784_right_count small_9049784_right_encoded = true := by
  decide +kernel
theorem small_9049784_right_covered : CoveredBy scale carrier boxes small_9049784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9049784_right_root small_9049784_right_fuel small_9049784_right_count small_9049784_right_encoded small_9049784_right_checked

theorem cover_9049784 : CoveredBy scale carrier boxes root_9049784 := by
  apply coveredBy_split_literal root_9049784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9049789 small_9049784_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9049789
  · exact small_9049784_right_covered
#print axioms cover_9049784

def root_9046904 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9046904 : CoveredBy scale carrier boxes root_9046904 := by
  apply coveredBy_split_literal root_9046904 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3387.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9049784 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3387.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9049784
#print axioms cover_9046904

def root_9046898 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046898_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046898_left_fuel : Nat := 1
def small_9046898_left_count : Nat := 1
def small_9046898_left_encoded : String := "00000004"
theorem small_9046898_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046898_left_root small_9046898_left_fuel small_9046898_left_count small_9046898_left_encoded = true := by
  decide +kernel
theorem small_9046898_left_covered : CoveredBy scale carrier boxes small_9046898_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046898_left_root small_9046898_left_fuel small_9046898_left_count small_9046898_left_encoded small_9046898_left_checked

theorem cover_9046898 : CoveredBy scale carrier boxes root_9046898 := by
  apply coveredBy_split_literal root_9046898 small_9046898_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9046904 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9046898_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9046904
#print axioms cover_9046898

def root_9046897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046897_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046897_right_fuel : Nat := 24
def small_9046897_right_count : Nat := 453
def small_9046897_right_encoded : String := "12073D080CFD9C010F34D1000000000004548A03138670F80CFD9C050F34D1040000000204548A070000000A0000000A0F350D0404548A07138670FC0CFD9C090F34D108000000040000000800000008000000031386ACFC000000030CFD9C090F34D108000000040C9A87040F875105000000020AD357810000000810D13D00022A458313E1C4F8067ECE8700000008000000060000000100000008000000000F878D050AD357810000000A10D13D00022A45830000000613E200F800000001067ECE87000000080000000600000000000000020F350D080C9A87040F875105000000020C9A87080F8751090000000400000008000000080F878D050000000A000000020000000400000002000000011386ACF8000000010CFD9C050F34D1040000000204548A07138670FC0000000A000000031386ACFC000000030CFD9C090F34D108000000040AD357810000000A10D13D000000000A000000000000000A0F350D0404548A07138670FC00000008000000031386ACFC000000030CFD9C090F34D10800000004000000080F350D080C9A8704000000080F878D050C9A87080F8751090000000400000005000000080000000200000004000000020F350D0004548A03138670F80CFD9C050F34D1040000000204548A07138670FC0CFD9C090F34D108000000040000000600000006000000031386ACFC00000003000000060F350D0404548A07138670FC0CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F87510500000002022A458313E1C4F8022A458713E1C4FC0AD3578910D10108000000040B4D44000000000610804D0100000008000000000000000600000003000000060000000113E200F800000001022A45870000000813E200FC000000030AD3578910D10108000000040B4D44000000000600000008000000060F878D05022A45830000000613E200F800000001022A458713E1C4FC0AD3578910D101080000000400000006000000060000000300000006000000020F878D010C9A87040F87510500000002022A458313E1C4F8022A45870000000813E200FC000000030AD3578910D1010800000004000000070000000600000001000000080F878D05022A458313E1C4F8022A458713E1C4FC0AD3578910D10108000000040000000A0000000600000003000000060000000113E200F800000001022A45870000000813E200FC000000030AD3578910D1010800000004000000060000000600000002000000000F350D080C9A87000F875101000000000C9A87040F875105000000020C9A87080F87510900000004000000060F878D09022A45830000000600000008000000040F878D0500000006000000020F878D010C9A8704000000080F878D050000000A000000020000000000000004000000031386ACFC000000030CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F8751050000000200000006000000060F878D010C9A87040F87510500000002022A458313E1C4F8067ECE8712EA58FC0000000600000003000000060000000113E200F800000001067ECE8700000008000000050F878D050000000600000002000000000F350D080C9A8700000000060F878D010C9A87040F875105000000020C9A87080F8751090000000400000005000000060F878D050000000600000002000000000000000400000002000000011386ACF8000000010CFD9C050F34D1040000000204548A07138670FC0CFD9C090F34D108000000040C9A87000F87510100000000067ECE830000000612EA94F800000001000000060F878D01067ECE8312EA58F80000000A0000000112EA94F8000000010AD357850000000A00000008000000000F350D080C9A87000F875101000000000C9A87080F8751090000000400000006000000060F878D010000000A0000000000000004000000031386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A8700000000060F878D010C9A87080F87510900000004000000050000000600000000000000040F350D0404548A07138670FC0CFD9C090F34D108000000040C9A87000F875101000000000C9A8704000000080F878D05067ECE8312EA58F8022A458700000008000000060000000100000008000000020F878D0100000008000000000F350D080C9A87000F875101000000000C9A8704000000080F878D050C9A87080F875109000000040000000500000008000000020F878D01000000080000000000000004000000031386ACFC000000030CFD9C090F34D108000000040C9A87000F875101000000000C9A87040F8751050000000200000005000000050F878D010C9A87040F87510500000002000000050F878D05067ECE8312EA58F8067ECE8712EA58FC0AD3578910D101080000000400000005000000050000000300000005000000010000000500000002000000000F350D080C9A87000F87510100000000000000050000000500000004000000020000000000000004"
theorem small_9046897_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046897_right_root small_9046897_right_fuel small_9046897_right_count small_9046897_right_encoded = true := by
  decide +kernel
theorem small_9046897_right_covered : CoveredBy scale carrier boxes small_9046897_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046897_right_root small_9046897_right_fuel small_9046897_right_count small_9046897_right_encoded small_9046897_right_checked

theorem cover_9046897 : CoveredBy scale carrier boxes root_9046897 := by
  apply coveredBy_split_literal root_9046897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9046898 small_9046897_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9046898
  · exact small_9046897_right_covered
#print axioms cover_9046897

def root_9046892 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046892_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9046892_right_fuel : Nat := 1
def small_9046892_right_count : Nat := 1
def small_9046892_right_encoded : String := "00000003"
theorem small_9046892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9046892_right_root small_9046892_right_fuel small_9046892_right_count small_9046892_right_encoded = true := by
  decide +kernel
theorem small_9046892_right_covered : CoveredBy scale carrier boxes small_9046892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9046892_right_root small_9046892_right_fuel small_9046892_right_count small_9046892_right_encoded small_9046892_right_checked

theorem cover_9046892 : CoveredBy scale carrier boxes root_9046892 := by
  apply coveredBy_split_literal root_9046892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.root_9046897 small_9046892_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618.cover_9046897
  · exact small_9046892_right_covered
#print axioms cover_9046892

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0618
