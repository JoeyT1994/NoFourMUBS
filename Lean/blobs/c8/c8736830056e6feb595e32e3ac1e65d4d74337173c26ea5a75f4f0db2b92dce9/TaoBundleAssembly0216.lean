import TaoBundleAssembly0215
import TaoBundleChunkBatch0841
import TaoBundleChunkBatch0843
import TaoBundleChunkBatch0844
import TaoBundleChunkBatch0845
import TaoBundleChunkBatch0846
import TaoBundleChunkBatch0847
import TaoBundleChunkBatch0848
import TaoBundleChunkBatch0849
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216
def root_8997660 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997660_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997660_left_fuel : Nat := 30
def small_8997660_left_count : Nat := 483
def small_8997660_left_encoded : String := "138670F80CFD9C050F34D1040000000204548A07138670FC045489FF0000000513867108000000040AD3578110D1010000000000022A45830000000513E200F8000000010AD357850000000510D13D04000000050000000210D13D00022A45830000000513E200F8000000010AD357850000000510D13D04000000050000000200000000000000031386ACFC00000003045489FF1386AD080AD3578110D1010000000000022A45830000000513E200F8000000010AD357850000000510D13D04067ECE8700000005000000090000000210D13D00022A45830000000813E200F8000000010AD3578510D10104000000020000000810D13D04067ECE87000000050000000800000002000000000000000413867108000000040AD3578110D1010000000000022A458313E1C4F80AD3578510D1010400000002067ECE87000000050000000910D13D0400000009000000020000000113E200F8000000010AD3578510D1010400000002067ECE870000000A0000000A10D13D04067ECE8712EA58FC022A457F000000050000000A00000003000000090000000210D13D00022A458313E1C4F80AD3578510D1010400000002067ECE8712EA58FC00000005000000030000000810D13D04067ECE8712EA58FC022A457F0000000513E1C508000000040BE879C1000000051011AD0000000005000000000000000312EA94FC00000003022A457F0000000800000009000000020000000113E200F8000000010AD3578510D1010400000002067ECE8712EA58FC022A457F000000050000000A0000000312EA94FC00000003022A457F000000080000000610D13D04067ECE8712EA58FC022A457F13E201080BE879C1000000051011AD0000000005000000000000000413E1C508000000040BE879C11011710000000000033F67C313BBF4F80BE879C5000000051011AD0400000005000000020000000113BC30F8000000010BE879C50000000A1011AD040569AC470000000500000009000000021011AD00033F67C313BBF4F80BE879C5000000051011AD0400000005000000020000000113BC30F8000000010BE879C510117104000000020569AC47000000050000000A1011AD040569AC471340D4FC0000000500000003134110FC000000030115233F13F895080C730AE100000005000000080000000413F85908000000040000000A00000002000000000000000312EA94FC00000003022A457F13E201080BE879C1101171000000000000000009000000080000000413E1C508000000040BE879C11011710000000000000000091011AD00033F67C30000000813BC30F8000000010BE879C51011710400000002000000061011AD0400000009000000020000000000000002000000000F350D0404548A07138670FC045489FF0000000513867108000000040C9A87040F875105000000020AD357810000000510D13D00022A45830000000500000006000000000F878D050AD357810000000510D13D00022A45830000000513E200F800000001022A45870000000513E200FC00000003022A457F0000000513E1C508000000040DE7CA04000000050E60150500000005000000020000000000000002000000031386ACFC00000003045489FF1386AD080C9A87040F875105000000020AD357810000000910D13D0000000009000000000F878D050AD3578110D10100000000000000000910D13D00022A45830000000513E200F800000001067ECE870000000512EA94FC00000003067ECE7F000000050000000900000000000000020000000413867108000000040C9A87040F875105000000020AD357810000000910D13D00022A45830000000713E200F800000001067ECE8712EA58FC022A457F00000006000000090000000300000009000000000F878D050AD3578110D1010000000000022A45830000000913E200F800000001067ECE8712EA58FC022A457F0000000900000009000000030000000910D13D00022A458313E1C4F8067ECE8712EA58FC022A457F0000000513E1C508000000040DE7CA04000000090E6015050BE879C1000000051011AD0000000005000000000000000200000003000000090000000113E200F800000001067ECE8712EA58FC022A457F13E201080DE7CA040E5FD905000000020BE879C1000000051011AD0000000005000000000E6015050BE879C1000000051011AD000000000500000000000000020000000413E1C508000000040DE7CA040E5FD905000000020BE879C1000000091011AD00033F67C30000000713BC30F8000000010569AC471340D4FC0115233F00000005000000070000000300000007000000000E6015050BE879C11011710000000000033F67C30000000913BC30F8000000010569AC471340D4FC0115233F000000050000000900000003000000091011AD00033F67C313BBF4F80569AC4700000005000000090000000113BC30F8000000010569AC471340D4FC0115233F0000000513F85908000000040DAED885000000050E966104000000050000000200000003134110FC000000030115233F0000000913F85908000000040DAED885000000090000000900000000000000020000000312EA94FC00000003022A457F0000000913E1C508000000040DE7CA04000000090E601505000000090000000200000000000000020000000200000001"
theorem small_8997660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997660_left_root small_8997660_left_fuel small_8997660_left_count small_8997660_left_encoded = true := by
  decide +kernel
theorem small_8997660_left_covered : CoveredBy scale carrier boxes small_8997660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997660_left_root small_8997660_left_fuel small_8997660_left_count small_8997660_left_encoded small_8997660_left_checked

theorem cover_8997660 : CoveredBy scale carrier boxes root_8997660 := by
  apply coveredBy_split_literal root_8997660 small_8997660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8998672 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8997660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8998672
#print axioms cover_8997660

def root_8997654 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997654_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997654_left_fuel : Nat := 1
def small_8997654_left_count : Nat := 1
def small_8997654_left_encoded : String := "00000000"
theorem small_8997654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997654_left_root small_8997654_left_fuel small_8997654_left_count small_8997654_left_encoded = true := by
  decide +kernel
theorem small_8997654_left_covered : CoveredBy scale carrier boxes small_8997654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997654_left_root small_8997654_left_fuel small_8997654_left_count small_8997654_left_encoded small_8997654_left_checked

theorem cover_8997654 : CoveredBy scale carrier boxes root_8997654 := by
  apply coveredBy_split_literal root_8997654 small_8997654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997660 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8997654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997660
#print axioms cover_8997654

def root_9014249 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014249_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014249_left_fuel : Nat := 24
def small_9014249_left_count : Nat := 181
def small_9014249_left_encoded : String := "13E201080DE7CA000E5FD901000000000DE7CA040E5FD905000000020569AC431340D4F80569AC470000000A0000000800000001134110F8000000010569AC47000000060000000A0E6015050569AC4300000008134110F8000000010569AC471340D4FC033F67BF0000000813BBF508000000040DAED8850E96250400000002000000080E9661040D4128800000000800000006000000020000000300000008000000020E6015010DE7CA040E5FD905000000020569AC431340D4F80569AC4700000006134110FC00000003033F67BF0000000613BBF508000000040DAED8810E96250000000000000000060E9661000D41288400000006000000080000000000000001000000060E6015050569AC431340D4F80569AC471340D4FC033F67BF0000000513BBF508000000040DAED881000000050E966100000000050000000000000003134110FC00000003033F67BF0000000813BBF508000000040DAED8810E962500000000000DAED8850E96250400000002000000080E96610404DF1B230000000500000006000000020000000800000001134110F8000000010569AC471340D4FC033F67BF0000000613BBF508000000040DAED8810E96250000000000000000060E9661000DAED8850E9625040000000205F43D630000000500000006000000060000000000000003134110FC00000003033F67BF13BC31080DAED8810E9625000000000000000006000000080000000413BBF508000000040DAED8810E962500000000000DAED8850E9625040000000205F43D631317BCF805F43D671317BCFC000000060000000300000008000000011317F8F80000000105F43D67000000061317F8FC0000000302B4D69F0000000613D0D108000000040D563A410EE751000000000000000006000000080E96610400000006000000020E9661000DAED8850E96250400000002000000080E96610405F43D6300000008000000060000000200000000000000020000000000000004"
theorem small_9014249_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9014249_left_root small_9014249_left_fuel small_9014249_left_count small_9014249_left_encoded = true := by
  decide +kernel
theorem small_9014249_left_covered : CoveredBy scale carrier boxes small_9014249_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9014249_left_root small_9014249_left_fuel small_9014249_left_count small_9014249_left_encoded small_9014249_left_checked

theorem cover_9014249 : CoveredBy scale carrier boxes root_9014249 := by
  apply coveredBy_split_literal root_9014249 small_9014249_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3372.root coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_9014249_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3372.covered
#print axioms cover_9014249

def root_9014244 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014244_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014244_right_fuel : Nat := 1
def small_9014244_right_count : Nat := 1
def small_9014244_right_encoded : String := "00000003"
theorem small_9014244_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9014244_right_root small_9014244_right_fuel small_9014244_right_count small_9014244_right_encoded = true := by
  decide +kernel
theorem small_9014244_right_covered : CoveredBy scale carrier boxes small_9014244_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9014244_right_root small_9014244_right_fuel small_9014244_right_count small_9014244_right_encoded small_9014244_right_checked

theorem cover_9014244 : CoveredBy scale carrier boxes root_9014244 := by
  apply coveredBy_split_literal root_9014244 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014249 small_9014244_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014249
  · exact small_9014244_right_covered
#print axioms cover_9014244

def root_9014243 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9014243 : CoveredBy scale carrier boxes root_9014243 := by
  apply coveredBy_split_literal root_9014243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014244 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3373.root coord3 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014244
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3373.covered
#print axioms cover_9014243

def root_9014238 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014238_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014238_right_fuel : Nat := 1
def small_9014238_right_count : Nat := 1
def small_9014238_right_encoded : String := "00000001"
theorem small_9014238_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9014238_right_root small_9014238_right_fuel small_9014238_right_count small_9014238_right_encoded = true := by
  decide +kernel
theorem small_9014238_right_covered : CoveredBy scale carrier boxes small_9014238_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9014238_right_root small_9014238_right_fuel small_9014238_right_count small_9014238_right_encoded small_9014238_right_checked

theorem cover_9014238 : CoveredBy scale carrier boxes root_9014238 := by
  apply coveredBy_split_literal root_9014238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014243 small_9014238_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014243
  · exact small_9014238_right_covered
#print axioms cover_9014238

def root_9014237 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9014237 : CoveredBy scale carrier boxes root_9014237 := by
  apply coveredBy_split_literal root_9014237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014238 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3374.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014238
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3374.covered
#print axioms cover_9014237

def root_9014232 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014232_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9014232_right_fuel : Nat := 1
def small_9014232_right_count : Nat := 1
def small_9014232_right_encoded : String := "00000002"
theorem small_9014232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9014232_right_root small_9014232_right_fuel small_9014232_right_count small_9014232_right_encoded = true := by
  decide +kernel
theorem small_9014232_right_covered : CoveredBy scale carrier boxes small_9014232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9014232_right_root small_9014232_right_fuel small_9014232_right_count small_9014232_right_encoded small_9014232_right_checked

theorem cover_9014232 : CoveredBy scale carrier boxes root_9014232 := by
  apply coveredBy_split_literal root_9014232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014237 small_9014232_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014237
  · exact small_9014232_right_covered
#print axioms cover_9014232

def root_9013816 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013816_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013816_left_fuel : Nat := 20
def small_9013816_left_count : Nat := 199
def small_9013816_left_encoded : String := "0F87510500000002067ECE8312EA58F8067ECE8712EA58FC022A457F13E201080DE7CA000E5FD9010000000000000006000000060000000413E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020000000A10804D050569AC431340D4F80569AC470000000A0000000A00000001134110F8000000010569AC47000000060000000A000000020E6015010B4D440410801105000000020000000610804D050569AC431340D4F80569AC4700000006134110FC000000030115233F0000000600000007000000010000000600000002000000000000000312EA94FC00000003022A457F13E201080DE7CA000E5FD901000000000000000A0E6015010B4D44040000000910804D050569AC4300000009134110F8000000010000000900000002000000000000000413E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020000000A10804D050569AC431340D4F80793F0C70000000A0000000A00000001134110F8000000010793F0C70000000A0000000A000000020E6015010B4D44040000000910804D050569AC4300000009134110F8000000010793F0C7128220FC0115233F0000000600000009000000030000000900000002000000000000000112EA94F800000001067ECE8712EA58FC022A457F0000000613E1C508000000040DE7CA000E5FD901000000000B4D44040000000610804D050793F0C3128220F80569AC47000000060000000A000000010000000600000002000000060000000312EA94FC00000003022A457F13E201080DE7CA000E5FD901000000000000000A000000060000000413E1C508000000040DE7CA000E5FD901000000000B4D440410801105000000020000000A10804D050793F0C3128220F80793F0C70000000A000000050000000100000005000000020E6015010B4D440410801105000000020793F0C3000000090000000610804D050793F0C3128220F80793F0C7128220FC0115233F0000000613F85908000000040DAED8810E96250000000000000000050000000500000003000000090000000112825CF8000000010793F0C700000006000000050000000200000000"
theorem small_9013816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9013816_left_root small_9013816_left_fuel small_9013816_left_count small_9013816_left_encoded = true := by
  decide +kernel
theorem small_9013816_left_covered : CoveredBy scale carrier boxes small_9013816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9013816_left_root small_9013816_left_fuel small_9013816_left_count small_9013816_left_encoded small_9013816_left_checked

theorem cover_9013816 : CoveredBy scale carrier boxes root_9013816 := by
  apply coveredBy_split_literal root_9013816 small_9013816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9014232 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9013816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9014232
#print axioms cover_9013816

def root_9013811 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013811_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013811_right_fuel : Nat := 1
def small_9013811_right_count : Nat := 1
def small_9013811_right_encoded : String := "00000000"
theorem small_9013811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9013811_right_root small_9013811_right_fuel small_9013811_right_count small_9013811_right_encoded = true := by
  decide +kernel
theorem small_9013811_right_covered : CoveredBy scale carrier boxes small_9013811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9013811_right_root small_9013811_right_fuel small_9013811_right_count small_9013811_right_encoded small_9013811_right_checked

theorem cover_9013811 : CoveredBy scale carrier boxes root_9013811 := by
  apply coveredBy_split_literal root_9013811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9013816 small_9013811_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9013816
  · exact small_9013811_right_covered
#print axioms cover_9013811

def root_9013263 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013263_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013263_left_fuel : Nat := 22
def small_9013263_left_count : Nat := 263
def small_9013263_left_encoded : String := "0F875101000000000C9A87040F87510500000002067ECE8312EA58F8067ECE8712EA58FC022A457F0000000A13E1C508000000040B4D44000000000A0000000A0000000312EA94FC00000003022A457F0000000A13E1C508000000040B4D44000000000A0000000A0000000112EA94F800000001067ECE8712EA58FC022A457F0000000A13E1C508000000040B4D44000000000A0000000A0000000312EA94FC00000003022A457F0000000A13E1C508000000040B4D44000000000A0000000A0F878D05067ECE8312EA58F8067ECE8712EA58FC022A457F13E201080B4D44000000000810804D010DE7CA040E5FD905000000020000000800000008000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD905000000020000000A0000000810804D010DE7CA040E5FD905000000020569AC431340D4F80569AC470000000A0000000800000001134110F8000000010569AC470000000A0000000A0E6015050569AC4300000008134110F8000000010569AC471340D4FC0115233F0000000800000009000000030000000800000002000000000000000312EA94FC00000003022A457F0000000813E1C508000000040B4D440010801101000000000000000810804D010DE7CA040E5FD905000000020569AC4300000008134110F8000000010793F0C70000000A0000000800000008000000000000000112EA94F800000001067ECE8712EA58FC022A457F13E201080B4D440010801101000000000DE7CA040000000A0000000710804D010DE7CA040E5FD905000000020000000A0E6015050793F0C3128220F800000008000000010000000700000002000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD905000000020000000A0E601505000000070000000210804D010DE7CA040E5FD905000000020793F0C3128220F80569AC470000000A0000000A0000000112825CF8000000010569AC470000000A0000000A0E6015050793F0C3128220F80569AC4700000007134110FC000000030115233F0000000700000007000000010000000700000002000000000000000312EA94FC00000003022A457F13E201080B4D440010801101000000000000000810804D010DE7CA040E5FD905000000020000000A00000008000000000000000413E1C508000000040B4D440010801101000000000DE7CA040E5FD905000000020000000A0E6015050793F0C300000008000000070000000210804D010DE7CA040E5FD905000000020793F0C3128220F80793F0C70000000A0000000500000001000000050E6015050793F0C3128220F80793F0C7128220FC0115233F0000000813F85908000000040DAED8850E96250400000002000000050000000500000003000000080000000112825CF8000000010793F0C70000000700000005000000020000000000000002"
theorem small_9013263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9013263_left_root small_9013263_left_fuel small_9013263_left_count small_9013263_left_encoded = true := by
  decide +kernel
theorem small_9013263_left_covered : CoveredBy scale carrier boxes small_9013263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9013263_left_root small_9013263_left_fuel small_9013263_left_count small_9013263_left_encoded small_9013263_left_checked

theorem cover_9013263 : CoveredBy scale carrier boxes root_9013263 := by
  apply coveredBy_split_literal root_9013263 small_9013263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9013811 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9013263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9013811
#print axioms cover_9013263

def root_9013257 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013257_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9013257_left_fuel : Nat := 1
def small_9013257_left_count : Nat := 1
def small_9013257_left_encoded : String := "00000004"
theorem small_9013257_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9013257_left_root small_9013257_left_fuel small_9013257_left_count small_9013257_left_encoded = true := by
  decide +kernel
theorem small_9013257_left_covered : CoveredBy scale carrier boxes small_9013257_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9013257_left_root small_9013257_left_fuel small_9013257_left_count small_9013257_left_encoded small_9013257_left_checked

theorem cover_9013257 : CoveredBy scale carrier boxes root_9013257 := by
  apply coveredBy_split_literal root_9013257 small_9013257_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9013263 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9013257_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9013263
#print axioms cover_9013257

def root_9012931 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9012931_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9012931_left_fuel : Nat := 24
def small_9012931_left_count : Nat := 157
def small_9012931_left_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F875105000000020000000A0F878D05067ECE830000000812EA94F800000001067ECE8712EA58FC067ECE7F0000000812EA5908000000040B4D4400000000080000000A0000000300000008000000020F878D010C9A87040F87510500000002067ECE8312EA58F8067ECE870000000612EA94FC00000003067ECE7F0000000612EA5908000000040DE7CA000000000A0000000600000001000000060F878D05067ECE8312EA58F8067ECE8712EA58FC067ECE7F0000000612EA5908000000040DE7CA000E5FD90100000000000000080E6015010DE7CA04000000060E6015050569AC43000000050000000600000002000000000000000312EA94FC00000003067ECE7F0000000812EA5908000000040DE7CA00000000080E6015010DE7CA040E5FD905000000020569AC43000000080000000600000008000000000000000112EA94F800000001067ECE8712EA58FC067ECE7F0000000612EA5908000000040DE7CA000E5FD901000000000DE7CA04000000060E6015050793F0C3000000080000000600000002000000060000000312EA94FC00000003067ECE7F12EA95080DE7CA0000000008000000060000000412EA5908000000040DE7CA000E5FD901000000000DE7CA040E5FD905000000020000000A000000080E6015010DE7CA040E5FD90500000002000000060E6015050793F0C3128220F80793F0C7128220FC0000000600000003000000080000000112825CF8000000010793F0C70000000612825CFC000000030569AC3F000000061340D508000000040DAED8810E9625000000000000000006000000080000000200000000000000020000000000000004"
theorem small_9012931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9012931_left_root small_9012931_left_fuel small_9012931_left_count small_9012931_left_encoded = true := by
  decide +kernel
theorem small_9012931_left_covered : CoveredBy scale carrier boxes small_9012931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9012931_left_root small_9012931_left_fuel small_9012931_left_count small_9012931_left_encoded small_9012931_left_checked

theorem cover_9012931 : CoveredBy scale carrier boxes root_9012931 := by
  apply coveredBy_split_literal root_9012931 small_9012931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9013257 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_9012931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9013257
#print axioms cover_9012931

def root_9012925 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9012925_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9012925_left_fuel : Nat := 1
def small_9012925_left_count : Nat := 1
def small_9012925_left_encoded : String := "00000003"
theorem small_9012925_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9012925_left_root small_9012925_left_fuel small_9012925_left_count small_9012925_left_encoded = true := by
  decide +kernel
theorem small_9012925_left_covered : CoveredBy scale carrier boxes small_9012925_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9012925_left_root small_9012925_left_fuel small_9012925_left_count small_9012925_left_encoded small_9012925_left_checked

theorem cover_9012925 : CoveredBy scale carrier boxes root_9012925 := by
  apply coveredBy_split_literal root_9012925 small_9012925_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9012931 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9012925_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9012931
#print axioms cover_9012925

def root_9011721 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9011721 : CoveredBy scale carrier boxes root_9011721 := by
  apply coveredBy_split_literal root_9011721 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3371.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9012925 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3371.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9012925
#print axioms cover_9011721

def root_9011716 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9011716_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9011716_right_fuel : Nat := 1
def small_9011716_right_count : Nat := 1
def small_9011716_right_encoded : String := "00000002"
theorem small_9011716_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9011716_right_root small_9011716_right_fuel small_9011716_right_count small_9011716_right_encoded = true := by
  decide +kernel
theorem small_9011716_right_covered : CoveredBy scale carrier boxes small_9011716_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9011716_right_root small_9011716_right_fuel small_9011716_right_count small_9011716_right_encoded small_9011716_right_checked

theorem cover_9011716 : CoveredBy scale carrier boxes root_9011716 := by
  apply coveredBy_split_literal root_9011716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9011721 small_9011716_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9011721
  · exact small_9011716_right_covered
#print axioms cover_9011716

def root_9008732 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9008732 : CoveredBy scale carrier boxes root_9008732 := by
  apply coveredBy_split_literal root_9008732 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3370.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9011716 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3370.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9011716
#print axioms cover_9008732

def root_9008726 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9008726_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9008726_left_fuel : Nat := 1
def small_9008726_left_count : Nat := 1
def small_9008726_left_encoded : String := "00000001"
theorem small_9008726_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9008726_left_root small_9008726_left_fuel small_9008726_left_count small_9008726_left_encoded = true := by
  decide +kernel
theorem small_9008726_left_covered : CoveredBy scale carrier boxes small_9008726_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9008726_left_root small_9008726_left_fuel small_9008726_left_count small_9008726_left_encoded small_9008726_left_checked

theorem cover_9008726 : CoveredBy scale carrier boxes root_9008726 := by
  apply coveredBy_split_literal root_9008726 small_9008726_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9008732 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9008726_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9008732
#print axioms cover_9008726

def root_9007008 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9007008 : CoveredBy scale carrier boxes root_9007008 := by
  apply coveredBy_split_literal root_9007008 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3369.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9008726 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3369.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9008726
#print axioms cover_9007008

def root_9007003 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9007003_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9007003_right_fuel : Nat := 1
def small_9007003_right_count : Nat := 1
def small_9007003_right_encoded : String := "00000000"
theorem small_9007003_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9007003_right_root small_9007003_right_fuel small_9007003_right_count small_9007003_right_encoded = true := by
  decide +kernel
theorem small_9007003_right_covered : CoveredBy scale carrier boxes small_9007003_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9007003_right_root small_9007003_right_fuel small_9007003_right_count small_9007003_right_encoded small_9007003_right_checked

theorem cover_9007003 : CoveredBy scale carrier boxes root_9007003 := by
  apply coveredBy_split_literal root_9007003 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9007008 small_9007003_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9007008
  · exact small_9007003_right_covered
#print axioms cover_9007003

def root_8997653 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8997653 : CoveredBy scale carrier boxes root_8997653 := by
  apply coveredBy_split_literal root_8997653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9007003 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997654
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9007003
#print axioms cover_8997653

def root_8997647 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997647_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997647_left_fuel : Nat := 1
def small_8997647_left_count : Nat := 1
def small_8997647_left_encoded : String := "00000004"
theorem small_8997647_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997647_left_root small_8997647_left_fuel small_8997647_left_count small_8997647_left_encoded = true := by
  decide +kernel
theorem small_8997647_left_covered : CoveredBy scale carrier boxes small_8997647_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997647_left_root small_8997647_left_fuel small_8997647_left_count small_8997647_left_encoded small_8997647_left_checked

theorem cover_8997647 : CoveredBy scale carrier boxes root_8997647 := by
  apply coveredBy_split_literal root_8997647 small_8997647_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997653 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8997647_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997653
#print axioms cover_8997647

def root_8997477 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997477_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997477_left_fuel : Nat := 18
def small_8997477_left_count : Nat := 81
def small_8997477_left_encoded : String := "12073D080CFD9C010F34D1000000000004548A03138670F80CFD9C05000000050F350D040000000500000002000000011386ACF8000000010CFD9C050F34D1040000000204548A07000000051386ACFC000000030CFD9BFF000000050F34D108000000040AD3578110D1010000000000067ECE83000000050000000610D13D00067ECE830000000812EA94F8000000010AD3578510D1010400000002000000080000000600000000000000060F350D0004548A03138670F80CFD9C05000000050F350D0404548A07000000050000000800000002000000011386ACF8000000010CFD9C050F34D1040000000204548A07138670FC0000000500000003000000080F350D0404548A07000000061386ACFC000000030CFD9BFF000000060F34D108000000040C9A87000F875101000000000000000800000006000000020000000000000004"
theorem small_8997477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997477_left_root small_8997477_left_fuel small_8997477_left_count small_8997477_left_encoded = true := by
  decide +kernel
theorem small_8997477_left_covered : CoveredBy scale carrier boxes small_8997477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997477_left_root small_8997477_left_fuel small_8997477_left_count small_8997477_left_encoded small_8997477_left_checked

theorem cover_8997477 : CoveredBy scale carrier boxes root_8997477 := by
  apply coveredBy_split_literal root_8997477 small_8997477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997647 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8997477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997647
#print axioms cover_8997477

def root_8997472 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997472_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997472_right_fuel : Nat := 1
def small_8997472_right_count : Nat := 1
def small_8997472_right_encoded : String := "00000003"
theorem small_8997472_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997472_right_root small_8997472_right_fuel small_8997472_right_count small_8997472_right_encoded = true := by
  decide +kernel
theorem small_8997472_right_covered : CoveredBy scale carrier boxes small_8997472_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997472_right_root small_8997472_right_fuel small_8997472_right_count small_8997472_right_encoded small_8997472_right_checked

theorem cover_8997472 : CoveredBy scale carrier boxes root_8997472 := by
  apply coveredBy_split_literal root_8997472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997477 small_8997472_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997477
  · exact small_8997472_right_covered
#print axioms cover_8997472

def root_8997471 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8997471 : CoveredBy scale carrier boxes root_8997471 := by
  apply coveredBy_split_literal root_8997471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997472 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3375.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997472
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3375.covered
#print axioms cover_8997471

def root_8997466 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997466_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8997466_right_fuel : Nat := 1
def small_8997466_right_count : Nat := 1
def small_8997466_right_encoded : String := "00000002"
theorem small_8997466_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8997466_right_root small_8997466_right_fuel small_8997466_right_count small_8997466_right_encoded = true := by
  decide +kernel
theorem small_8997466_right_covered : CoveredBy scale carrier boxes small_8997466_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8997466_right_root small_8997466_right_fuel small_8997466_right_count small_8997466_right_encoded small_8997466_right_checked

theorem cover_8997466 : CoveredBy scale carrier boxes root_8997466 := by
  apply coveredBy_split_literal root_8997466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997471 small_8997466_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997471
  · exact small_8997466_right_covered
#print axioms cover_8997466

def root_8996526 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996526_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996526_left_fuel : Nat := 29
def small_8996526_left_count : Nat := 451
def small_8996526_left_encoded : String := "120701040000000208A91307120700FC08A912FF12073D080CFD9C010F34D1000000000004548A03000000051386ACF80000000104548A05000000051386AD0404548A07000000050000000800000002000000080000000412070108000000040CFD9C010F34D1000000000004548A03138670F804548A05138671040000000204548A07000000051386ACFC00000003045489FF00000005000000061386AD0404548A07138670FC045489FF0000000513867108000000040AD357810000000510D13D000000000500000000000000031386ACFC00000003045489FF0000000813867108000000040AD3578110D10100000000000000000A10D13D00022A45830000000813E200F800000001067ECE850000000612EA9504067ECE870000000A00000006000000020000000000000002000000011386ACF80000000104548A05138671040000000204548A07000000071386ACFC00000003045489FF1386AD080AD357810000000700000007000000040000000A1386AD0404548A07138670FC045489FF1386AD080AD357810000000510D13D0000000005000000000000000413867108000000040AD3578110D10100000000000000000A10D13D000000000700000000000000031386ACFC00000003045489FF1386AD080AD3578110D1010000000000067ECE8312EA58F8067ECE8512EA590400000002067ECE87000000050000000812EA9504067ECE870000000512EA94FC00000003067ECE7F000000050000000A000000020000000112EA94F800000001067ECE8512EA5904000000020000000712EA9504067ECE8712EA58FC067ECE7F00000005000000070000000312EA94FC00000003067ECE7F12EA950809BE354111774100000000000793F0C30000000500000007000000070000000412EA5908000000040000000A0000000210D13D00067ECE830000000812EA94F800000001067ECE850000000712EA9504067ECE87000000070000000800000002000000000000000413867108000000040AD3578110D1010000000000067ECE830000000A0000000A10D13D00067ECE8312EA58F8067ECE850000000A12EA9504067ECE8712EA58FC0000000A0000000312EA94FC00000003022A457F0000000800000006000000020000000112EA94F800000001067ECE850000000712EA9504067ECE870000000712EA94FC00000003022A457F00000007000000060000000200000000000000020F350D0004548A03138670F804548A05138671040000000204548A0700000005000000081386AD0404548A07138670FC045489FF0000000513867108000000040C9A8700000000050F878D010000000500000000000000030000000800000002000000011386ACF80000000104548A051386710400000002000000071386AD0404548A07138670FC045489FF0000000700000007000000031386ACFC00000003045489FF0000000813867108000000040C9A8700000000070F878D01067ECE8312EA58F8067ECE850000000712EA9504067ECE8700000007000000060000000200000001000000070000000000000002000000000000000312073CFC0000000308A912FF12073D08000000080000000412070108000000040CFD9C010F34D1000000000004548A03138670F804548A0513867104000000020CFD9C070F34D0FC0000000800000003000000061386AD040CFD9C070F34D0FC045489FF0000000800000006000000030F350CFC000000030000000600000002000000011386ACF80000000104548A0513867104000000020CFD9C070F34D0FC045489FF1386AD080AD3578110D1010000000000067ECE830000000812EA94F800000001022A45850000000613E201040AD3578700000007000000060000000200000008000000040000000600000003000000061386AD040CFD9C070F34D0FC045489FF1386AD080AD3578110D1010000000000067ECE830000000812EA94F800000001067ECE8512EA5904000000020AD3578710D100FC067ECE7F000000080000000A000000030000000812EA95040AD3578710D100FC067ECE7F0000000812EA59080000000409BE35410000000A11777D000000000800000000000000030000000800000002000000080000000413867108000000040AD3578110D1010000000000067ECE830000000612EA94F800000001067ECE850000000612EA95040AD3578710D100FC0000000A00000003000000060000000210D13D00067ECE830000000612EA94F8000000010000000600000000000000030F350CFC00000003045489FF1386AD080C9A86FC000000080F87510700000003000000060000000400000006000000020F350D0004548A03000000081386ACF80000000104548A0513867104000000020CFD9C070F34D0FC0000000800000003000000061386AD040CFD9C070F34D0FC045489FF0000000813867108000000040C9A8700000000060F878D01000000060000000000000003000000080000000200000000"
theorem small_8996526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8996526_left_root small_8996526_left_fuel small_8996526_left_count small_8996526_left_encoded = true := by
  decide +kernel
theorem small_8996526_left_covered : CoveredBy scale carrier boxes small_8996526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8996526_left_root small_8996526_left_fuel small_8996526_left_count small_8996526_left_encoded small_8996526_left_checked

theorem cover_8996526 : CoveredBy scale carrier boxes root_8996526 := by
  apply coveredBy_split_literal root_8996526 small_8996526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8997466 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8996526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8997466
#print axioms cover_8996526

def root_8996521 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996521_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996521_right_fuel : Nat := 1
def small_8996521_right_count : Nat := 1
def small_8996521_right_encoded : String := "00000001"
theorem small_8996521_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8996521_right_root small_8996521_right_fuel small_8996521_right_count small_8996521_right_encoded = true := by
  decide +kernel
theorem small_8996521_right_covered : CoveredBy scale carrier boxes small_8996521_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8996521_right_root small_8996521_right_fuel small_8996521_right_count small_8996521_right_encoded small_8996521_right_checked

theorem cover_8996521 : CoveredBy scale carrier boxes root_8996521 := by
  apply coveredBy_split_literal root_8996521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8996526 small_8996521_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8996526
  · exact small_8996521_right_covered
#print axioms cover_8996521

def root_9029191 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9029191 : CoveredBy scale carrier boxes root_9029191 := by
  apply coveredBy_split_literal root_9029191 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3378.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3379.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3378.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3379.covered
#print axioms cover_9029191

def root_9029185 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9029185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9029185_left_fuel : Nat := 1
def small_9029185_left_count : Nat := 1
def small_9029185_left_encoded : String := "00000003"
theorem small_9029185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9029185_left_root small_9029185_left_fuel small_9029185_left_count small_9029185_left_encoded = true := by
  decide +kernel
theorem small_9029185_left_covered : CoveredBy scale carrier boxes small_9029185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9029185_left_root small_9029185_left_fuel small_9029185_left_count small_9029185_left_encoded small_9029185_left_checked

theorem cover_9029185 : CoveredBy scale carrier boxes root_9029185 := by
  apply coveredBy_split_literal root_9029185 small_9029185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9029191 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9029185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9029191
#print axioms cover_9029185

def root_9026287 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9026287 : CoveredBy scale carrier boxes root_9026287 := by
  apply coveredBy_split_literal root_9026287 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3377.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9029185 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3377.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9029185
#print axioms cover_9026287

def root_9026282 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9026282_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9026282_right_fuel : Nat := 1
def small_9026282_right_count : Nat := 1
def small_9026282_right_encoded : String := "00000002"
theorem small_9026282_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9026282_right_root small_9026282_right_fuel small_9026282_right_count small_9026282_right_encoded = true := by
  decide +kernel
theorem small_9026282_right_covered : CoveredBy scale carrier boxes small_9026282_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9026282_right_root small_9026282_right_fuel small_9026282_right_count small_9026282_right_encoded small_9026282_right_checked

theorem cover_9026282 : CoveredBy scale carrier boxes root_9026282 := by
  apply coveredBy_split_literal root_9026282 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9026287 small_9026282_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9026287
  · exact small_9026282_right_covered
#print axioms cover_9026282

def root_9024892 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9024892 : CoveredBy scale carrier boxes root_9024892 := by
  apply coveredBy_split_literal root_9024892 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3376.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9026282 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3376.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9026282
#print axioms cover_9024892

def root_9024886 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9024886_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9024886_left_fuel : Nat := 1
def small_9024886_left_count : Nat := 1
def small_9024886_left_encoded : String := "00000001"
theorem small_9024886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9024886_left_root small_9024886_left_fuel small_9024886_left_count small_9024886_left_encoded = true := by
  decide +kernel
theorem small_9024886_left_covered : CoveredBy scale carrier boxes small_9024886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9024886_left_root small_9024886_left_fuel small_9024886_left_count small_9024886_left_encoded small_9024886_left_checked

theorem cover_9024886 : CoveredBy scale carrier boxes root_9024886 := by
  apply coveredBy_split_literal root_9024886 small_9024886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9024892 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9024886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9024892
#print axioms cover_9024886

def root_8996520 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8996520 : CoveredBy scale carrier boxes root_8996520 := by
  apply coveredBy_split_literal root_8996520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8996521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9024886 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8996521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9024886
#print axioms cover_8996520

def root_8996515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996515_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8996515_right_fuel : Nat := 1
def small_8996515_right_count : Nat := 1
def small_8996515_right_encoded : String := "00000000"
theorem small_8996515_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8996515_right_root small_8996515_right_fuel small_8996515_right_count small_8996515_right_encoded = true := by
  decide +kernel
theorem small_8996515_right_covered : CoveredBy scale carrier boxes small_8996515_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8996515_right_root small_8996515_right_fuel small_8996515_right_count small_8996515_right_encoded small_8996515_right_checked

theorem cover_8996515 : CoveredBy scale carrier boxes root_8996515 := by
  apply coveredBy_split_literal root_8996515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8996520 small_8996515_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8996520
  · exact small_8996515_right_covered
#print axioms cover_8996515

def root_8990219 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8990219 : CoveredBy scale carrier boxes root_8990219 := by
  apply coveredBy_split_literal root_8990219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8990220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8996515 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8990220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8996515
#print axioms cover_8990219

def root_8990213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990213_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990213_left_fuel : Nat := 1
def small_8990213_left_count : Nat := 1
def small_8990213_left_encoded : String := "00000004"
theorem small_8990213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8990213_left_root small_8990213_left_fuel small_8990213_left_count small_8990213_left_encoded = true := by
  decide +kernel
theorem small_8990213_left_covered : CoveredBy scale carrier boxes small_8990213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8990213_left_root small_8990213_left_fuel small_8990213_left_count small_8990213_left_encoded small_8990213_left_checked

theorem cover_8990213 : CoveredBy scale carrier boxes root_8990213 := by
  apply coveredBy_split_literal root_8990213 small_8990213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8990219 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8990213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8990219
#print axioms cover_8990213

def root_8989827 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989827_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989827_left_fuel : Nat := 23
def small_8989827_left_count : Nat := 181
def small_8989827_left_encoded : String := "1151E8FF08A91301120701000000000008A91303120700F808A91305120701040000000208A91307000000050000000812073D0408A913070000000500000009000000020000000112073CF80000000108A91305120701040000000208A91307120700FC000000060000000312073CFC0000000305000108135D44FF04548A0113867100000000000CFD9C030F34D0F80000000500000001000000061386AD000CFD9C03000000080F350CF80000000104548A0500000007000000060000000000000004135D80FF0000000404548A0113867100000000000CFD9C030F34D0F804548A0513867104000000020CFD9C07000000050000000800000009000000010F350CF80000000104548A0513867104000000020CFD9C07000000060F350CFC000000030C9A86F80F878D030C9A86FC0000000800000008000000010F875103000000010C9A86FC0000000600000007000000061386AD000CFD9C030F34D0F800000008000000010F350CF80000000104548A0513867104000000020CFD9C0700000007000000081386AD040CFD9C07000000060F350CFC000000030C9A86F8000000060F8751030000000100000006000000020000000012073D04000000060000000212073D0008A91303120700F808A9130512070104000000020000000812073D0408A91307120700FC000000050000000300000008000000020000000112073CF80000000108A91305120701040000000208A91307120700FC00000007000000030000000812073D0408A91307120700FC000000060000000312073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000080000000600000001000000060F350D000CFD9C03000000080F350CF8000000010CFD9C050F34D10400000002000000080000000A00000000000000020000000000000004"
theorem small_8989827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8989827_left_root small_8989827_left_fuel small_8989827_left_count small_8989827_left_encoded = true := by
  decide +kernel
theorem small_8989827_left_covered : CoveredBy scale carrier boxes small_8989827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8989827_left_root small_8989827_left_fuel small_8989827_left_count small_8989827_left_encoded small_8989827_left_checked

theorem cover_8989827 : CoveredBy scale carrier boxes root_8989827 := by
  apply coveredBy_split_literal root_8989827 small_8989827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8990213 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8989827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8990213
#print axioms cover_8989827

def root_8989822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989822_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989822_right_fuel : Nat := 1
def small_8989822_right_count : Nat := 1
def small_8989822_right_encoded : String := "00000003"
theorem small_8989822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8989822_right_root small_8989822_right_fuel small_8989822_right_count small_8989822_right_encoded = true := by
  decide +kernel
theorem small_8989822_right_covered : CoveredBy scale carrier boxes small_8989822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8989822_right_root small_8989822_right_fuel small_8989822_right_count small_8989822_right_encoded small_8989822_right_checked

theorem cover_8989822 : CoveredBy scale carrier boxes root_8989822 := by
  apply coveredBy_split_literal root_8989822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8989827 small_8989822_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8989827
  · exact small_8989822_right_covered
#print axioms cover_8989822

def root_8989821 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8989821 : CoveredBy scale carrier boxes root_8989821 := by
  apply coveredBy_split_literal root_8989821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8989822 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3380.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8989822
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3380.covered
#print axioms cover_8989821

def root_8989816 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989816_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8989816_right_fuel : Nat := 1
def small_8989816_right_count : Nat := 1
def small_8989816_right_encoded : String := "00000002"
theorem small_8989816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8989816_right_root small_8989816_right_fuel small_8989816_right_count small_8989816_right_encoded = true := by
  decide +kernel
theorem small_8989816_right_covered : CoveredBy scale carrier boxes small_8989816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8989816_right_root small_8989816_right_fuel small_8989816_right_count small_8989816_right_encoded small_8989816_right_checked

theorem cover_8989816 : CoveredBy scale carrier boxes root_8989816 := by
  apply coveredBy_split_literal root_8989816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8989821 small_8989816_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8989821
  · exact small_8989816_right_covered
#print axioms cover_8989816

def root_8988174 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8988174 : CoveredBy scale carrier boxes root_8988174 := by
  apply coveredBy_split_literal root_8988174 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3362.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8989816 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3362.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8989816
#print axioms cover_8988174

def root_8988169 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8988169_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8988169_right_fuel : Nat := 1
def small_8988169_right_count : Nat := 1
def small_8988169_right_encoded : String := "00000001"
theorem small_8988169_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8988169_right_root small_8988169_right_fuel small_8988169_right_count small_8988169_right_encoded = true := by
  decide +kernel
theorem small_8988169_right_covered : CoveredBy scale carrier boxes small_8988169_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8988169_right_root small_8988169_right_fuel small_8988169_right_count small_8988169_right_encoded small_8988169_right_checked

theorem cover_8988169 : CoveredBy scale carrier boxes root_8988169 := by
  apply coveredBy_split_literal root_8988169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8988174 small_8988169_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8988174
  · exact small_8988169_right_covered
#print axioms cover_8988169

def root_8988168 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8988168 : CoveredBy scale carrier boxes root_8988168 := by
  apply coveredBy_split_literal root_8988168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8988169 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3381.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8988169
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3381.covered
#print axioms cover_8988168

def root_8988163 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8988163_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8988163_right_fuel : Nat := 1
def small_8988163_right_count : Nat := 1
def small_8988163_right_encoded : String := "00000000"
theorem small_8988163_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8988163_right_root small_8988163_right_fuel small_8988163_right_count small_8988163_right_encoded = true := by
  decide +kernel
theorem small_8988163_right_covered : CoveredBy scale carrier boxes small_8988163_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8988163_right_root small_8988163_right_fuel small_8988163_right_count small_8988163_right_encoded small_8988163_right_checked

theorem cover_8988163 : CoveredBy scale carrier boxes root_8988163 := by
  apply coveredBy_split_literal root_8988163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8988168 small_8988163_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8988168
  · exact small_8988163_right_covered
#print axioms cover_8988163

def root_8984469 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8984469 : CoveredBy scale carrier boxes root_8984469 := by
  apply coveredBy_split_literal root_8984469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.root_8984470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_8988163 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0215.cover_8984470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_8988163
#print axioms cover_8984469

def root_9037023 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9037023 : CoveredBy scale carrier boxes root_9037023 := by
  apply coveredBy_split_literal root_9037023 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3382.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3383.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3382.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3383.covered
#print axioms cover_9037023

def root_9037018 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037018_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037018_right_fuel : Nat := 1
def small_9037018_right_count : Nat := 1
def small_9037018_right_encoded : String := "00000001"
theorem small_9037018_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9037018_right_root small_9037018_right_fuel small_9037018_right_count small_9037018_right_encoded = true := by
  decide +kernel
theorem small_9037018_right_covered : CoveredBy scale carrier boxes small_9037018_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9037018_right_root small_9037018_right_fuel small_9037018_right_count small_9037018_right_encoded small_9037018_right_checked

theorem cover_9037018 : CoveredBy scale carrier boxes root_9037018 := by
  apply coveredBy_split_literal root_9037018 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9037023 small_9037018_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9037023
  · exact small_9037018_right_covered
#print axioms cover_9037018

def root_9037017 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037017_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037017_right_fuel : Nat := 19
def small_9037017_right_count : Nat := 71
def small_9037017_right_encoded : String := "1151E903000000010A0001041151E9050000000200000005115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120701040000000208A91307120700FC08A91309120701080000000405000100000000070000000712073D0805000100135D450100000000050000F8135D810304548A050000000600000005000000010000000500000005000000040000000312073CFC0000000308A91309000000070000000512073D0408A91307120700FC08A91309120701080000000405000100135D450100000000050000F8135D81030CFD9C0500000007000000050000000100000005000000050000000500000003000000050000000200000004000000031151E907000000030000000500000002"
theorem small_9037017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9037017_right_root small_9037017_right_fuel small_9037017_right_count small_9037017_right_encoded = true := by
  decide +kernel
theorem small_9037017_right_covered : CoveredBy scale carrier boxes small_9037017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9037017_right_root small_9037017_right_fuel small_9037017_right_count small_9037017_right_encoded small_9037017_right_checked

theorem cover_9037017 : CoveredBy scale carrier boxes root_9037017 := by
  apply coveredBy_split_literal root_9037017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9037018 small_9037017_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9037018
  · exact small_9037017_right_covered
#print axioms cover_9037017

def root_9037011 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037011_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9037011_left_fuel : Nat := 1
def small_9037011_left_count : Nat := 1
def small_9037011_left_encoded : String := "00000000"
theorem small_9037011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9037011_left_root small_9037011_left_fuel small_9037011_left_count small_9037011_left_encoded = true := by
  decide +kernel
theorem small_9037011_left_covered : CoveredBy scale carrier boxes small_9037011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9037011_left_root small_9037011_left_fuel small_9037011_left_count small_9037011_left_encoded small_9037011_left_checked

theorem cover_9037011 : CoveredBy scale carrier boxes root_9037011 := by
  apply coveredBy_split_literal root_9037011 small_9037011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9037017 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9037011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9037017
#print axioms cover_9037011

def root_9051684 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9051684_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9051684_left_fuel : Nat := 25
def small_9051684_left_count : Nat := 249
def small_9051684_left_encoded : String := "0F87510500000002022A458313E1C4F8022A458713E1C4FC022A45890000000513E201080DE7CA000E5FD901000000000B4D44040000000510804D05000000050000000200000007000000040000000313E200FC00000003022A458913E1C508000000040DE7CA000E5FD90100000000000000070000000713E201080DE7CA000E5FD901000000000000000700000007000000040000000113E200F800000001022A458713E1C4FC022A458913E1C508000000040DE7CA000E5FD901000000000B4D44040000000510804D0500000005000000020000000613E201080DE7CA000E5FD901000000000B4D44041080110500000002033F67C3000000070000000810804D05033F67C313BBF4F8011523470000000513F894FC00000003033F67C900000005000000080000000100000008000000020E6015010000000800000000000000040000000313E200FC00000003022A458913E1C508000000040DE7CA000E5FD901000000000B4D44041080110500000002033F67C30000000713BC30F800000001033F67C7000000060000000710804D05033F67C313BBF4F8033F67C700000005000000070000000113BC30F800000001033F67C713BBF4FC011523490000000513F895080D4128800EFA1101000000000BF3E5841008ED0500000002000000061009290503C9F8E30000000500000009000000020EFA4D010BF3E584000000061009290503C9F8E300000005000000060000000200000000000000040000000313BC30FC000000030115234913F85908000000040D4128800EFA1101000000000000000A0000000713F895080D4128800EFA1101000000000BF3E584000000071009290503C9F8E30000000713A36CF80000000103C9F8E70000000A00000007000000020000000700000004000000020E6015010B4D44040000000710804D05033F67C30000000713BC30F800000001033F67C70000000613BC30FC00000003011523490000000600000007000000020000000013E201080DE7CA000E5FD901000000000B4D440410801105000000020000000710804D05033F67C313BBF4F8033F67C713BBF4FC033F67C9000000070000000700000003000000070000000113BC30F800000001033F67C713BBF4FC033F67C913BBF508000000040D4128800EFA1101000000000BF3E584000000081009290503C9F8E300000007000000080000000200000008000000080000000313BC30FC00000003033F67C913BBF508000000040D4128800EFA110100000000000000070000000713BC31080D4128800EFA110100000000000000070000000700000004000000020E6015010B4D44040000000710804D05033F67C30000000700000008000000020000000000000004"
theorem small_9051684_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9051684_left_root small_9051684_left_fuel small_9051684_left_count small_9051684_left_encoded = true := by
  decide +kernel
theorem small_9051684_left_covered : CoveredBy scale carrier boxes small_9051684_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9051684_left_root small_9051684_left_fuel small_9051684_left_count small_9051684_left_encoded small_9051684_left_checked

theorem cover_9051684 : CoveredBy scale carrier boxes root_9051684 := by
  apply coveredBy_split_literal root_9051684 small_9051684_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3389.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9051684_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3389.covered
#print axioms cover_9051684

def root_9051679 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9051679_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9051679_right_fuel : Nat := 1
def small_9051679_right_count : Nat := 1
def small_9051679_right_encoded : String := "00000000"
theorem small_9051679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9051679_right_root small_9051679_right_fuel small_9051679_right_count small_9051679_right_encoded = true := by
  decide +kernel
theorem small_9051679_right_covered : CoveredBy scale carrier boxes small_9051679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9051679_right_root small_9051679_right_fuel small_9051679_right_count small_9051679_right_encoded small_9051679_right_checked

theorem cover_9051679 : CoveredBy scale carrier boxes root_9051679 := by
  apply coveredBy_split_literal root_9051679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9051684 small_9051679_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9051684
  · exact small_9051679_right_covered
#print axioms cover_9051679

def root_9050477 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9050477 : CoveredBy scale carrier boxes root_9050477 := by
  apply coveredBy_split_literal root_9050477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3388.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9051679 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3388.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9051679
#print axioms cover_9050477

def root_9050471 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050471_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050471_left_fuel : Nat := 1
def small_9050471_left_count : Nat := 1
def small_9050471_left_encoded : String := "00000004"
theorem small_9050471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9050471_left_root small_9050471_left_fuel small_9050471_left_count small_9050471_left_encoded = true := by
  decide +kernel
theorem small_9050471_left_covered : CoveredBy scale carrier boxes small_9050471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9050471_left_root small_9050471_left_fuel small_9050471_left_count small_9050471_left_encoded small_9050471_left_checked

theorem cover_9050471 : CoveredBy scale carrier boxes root_9050471 := by
  apply coveredBy_split_literal root_9050471 small_9050471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050477 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9050471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050477
#print axioms cover_9050471

def root_9050470 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9050470 : CoveredBy scale carrier boxes root_9050470 := by
  apply coveredBy_split_literal root_9050470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050471 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3390.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050471
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3390.covered
#print axioms cover_9050470

def root_9050465 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050465_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050465_right_fuel : Nat := 1
def small_9050465_right_count : Nat := 1
def small_9050465_right_encoded : String := "00000003"
theorem small_9050465_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9050465_right_root small_9050465_right_fuel small_9050465_right_count small_9050465_right_encoded = true := by
  decide +kernel
theorem small_9050465_right_covered : CoveredBy scale carrier boxes small_9050465_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9050465_right_root small_9050465_right_fuel small_9050465_right_count small_9050465_right_encoded small_9050465_right_checked

theorem cover_9050465 : CoveredBy scale carrier boxes root_9050465 := by
  apply coveredBy_split_literal root_9050465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050470 small_9050465_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050470
  · exact small_9050465_right_covered
#print axioms cover_9050465

def root_9056346 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9056346_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9056346_right_fuel : Nat := 19
def small_9056346_right_count : Nat := 169
def small_9056346_right_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F87510500000002022A458313E1C4F8067ECE8712EA58FC067ECE8912EA5908000000040B4D440000000006000000070000000600000003000000060000000113E200F800000001067ECE8712EA58FC067ECE8912EA5908000000040B4D440010801101000000000B4D44041080110500000002033F67C30000000613BC30F800000001000000050000000610804D010B4D440410801105000000020000000710804D05033F67C30000000600000006000000020000000012EA95080B4D44000000000610804D010000000600000000000000040000000312EA94FC00000003067ECE8912EA59080000000400000006000000050F878D0500000006000000020F878D010C9A87040F87510500000002022A458313E1C4F8067ECE8712EA58FC067ECE89000000070000000700000003000000070000000113E200F800000001067ECE8712EA58FC067ECE8912EA5908000000040DE7CA000E5FD901000000000B4D44040000000710804D05033F67C30000000713BC30F8000000010569AC470000000800000006000000020000000712EA95080DE7CA000E5FD901000000000B4D44040000000710804D05000000060000000200000008000000040000000312EA94FC00000003067ECE8912EA5908000000040DE7CA000E5FD90100000000000000070000000712EA95080DE7CA000000000600000005000000040F878D05022A458313E1C4F8067ECE8712EA58FC0000000600000003000000060000000113E200F800000001067ECE8712EA58FC067ECE8912EA5908000000040DE7CA00000000060E6015010DE7CA040E5FD90500000002033F67C30000000613BC30F8000000010569AC4700000008000000060000000600000000000000060000000300000006000000020000000000000004"
theorem small_9056346_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9056346_right_root small_9056346_right_fuel small_9056346_right_count small_9056346_right_encoded = true := by
  decide +kernel
theorem small_9056346_right_covered : CoveredBy scale carrier boxes small_9056346_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9056346_right_root small_9056346_right_fuel small_9056346_right_count small_9056346_right_encoded small_9056346_right_checked

theorem cover_9056346 : CoveredBy scale carrier boxes root_9056346 := by
  apply coveredBy_split_literal root_9056346 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3391.root small_9056346_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3391.covered
  · exact small_9056346_right_covered
#print axioms cover_9056346

def root_9056340 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9056340_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9056340_left_fuel : Nat := 1
def small_9056340_left_count : Nat := 1
def small_9056340_left_encoded : String := "00000003"
theorem small_9056340_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9056340_left_root small_9056340_left_fuel small_9056340_left_count small_9056340_left_encoded = true := by
  decide +kernel
theorem small_9056340_left_covered : CoveredBy scale carrier boxes small_9056340_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9056340_left_root small_9056340_left_fuel small_9056340_left_count small_9056340_left_encoded small_9056340_left_checked

theorem cover_9056340 : CoveredBy scale carrier boxes root_9056340 := by
  apply coveredBy_split_literal root_9056340 small_9056340_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9056346 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9056340_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9056346
#print axioms cover_9056340

def root_9050464 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9050464 : CoveredBy scale carrier boxes root_9050464 := by
  apply coveredBy_split_literal root_9050464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9056340 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050465
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9056340
#print axioms cover_9050464

def root_9050459 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050459_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9050459_right_fuel : Nat := 1
def small_9050459_right_count : Nat := 1
def small_9050459_right_encoded : String := "00000002"
theorem small_9050459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9050459_right_root small_9050459_right_fuel small_9050459_right_count small_9050459_right_encoded = true := by
  decide +kernel
theorem small_9050459_right_covered : CoveredBy scale carrier boxes small_9050459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9050459_right_root small_9050459_right_fuel small_9050459_right_count small_9050459_right_encoded small_9050459_right_checked

theorem cover_9050459 : CoveredBy scale carrier boxes root_9050459 := by
  apply coveredBy_split_literal root_9050459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050464 small_9050459_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050464
  · exact small_9050459_right_covered
#print axioms cover_9050459

def root_9049795 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049795_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049795_left_fuel : Nat := 28
def small_9049795_left_count : Nat := 319
def small_9049795_left_encoded : String := "0F34D1040000000204548A07138670FC04548A0913867108000000040C9A87000F87510100000000022A458313E1C4F80AD3578510D10104000000020000000610D13D04022A458713E1C4FC000000050000000300000006000000020000000113E200F8000000010AD3578510D1010400000002022A4587000000070000000610D13D04022A45870000000913E200FC00000003022A458913E1C508000000040B4D44000000000610804D01033F67C300000008000000090000000000000006000000020F878D01022A458313E1C4F80AD3578510D1010400000002022A4587000000050000000610D13D04022A458713E1C4FC022A45890000000513E201080DE7CA00000000050000000A000000040000000313E200FC00000003022A458913E1C508000000040DE7CA00000000050E601501000000050000000000000006000000020000000113E200F8000000010AD3578510D1010400000002022A458713E1C4FC022A4589000000050000000A0000000313E200FC00000003022A458913E1C508000000040DE7CA00000000060000000A0000000610D13D04022A458713E1C4FC022A458913E1C508000000040DE7CA00000000050E601501000000050000000013E201080DE7CA000E5FD90100000000000000090E6015010000000A00000000000000040000000313E200FC00000003022A458913E1C508000000040DE7CA000E5FD90100000000033F67C313BBF4F80BE879C5000000051011AD04033F67C70000000500000006000000020000000113BC30F8000000010BE879C51011710400000002033F67C700000005000000061011AD04033F67C70000000913BC30FC000000030115234913F85908000000040D412880000000050EFA4D01000000050000000000000006000000020E601501033F67C313BBF4F80BE879C5000000051011AD04033F67C70000000513BC30FC00000003011523490000000500000006000000020000000113BC30F8000000010BE879C510117104000000020000000A1011AD04033F67C713BBF4FC01152349000000050000000A0000000313BC30FC000000030115234913F85908000000040DAED881000000050E96610000000005000000000000000A000000020000000013E201080DE7CA00000000060E601501033F67C30000000A0000000A000000000000000400000002000000001386AD080C9A87000F87510100000000022A45830000000613E200F8000000010AD3578500000006000000060F878D01022A458313E1C4F80AD357850000000610D13D04022A45870000000A00000006000000020000000113E200F8000000010AD3578510D10104000000020000000610D13D04022A458713E1C4FC067ECE8912EA5908000000040000000A000000060000000300000006000000020000000000000004000000031386ACFC0000000304548A0913867108000000040C9A87000F87510100000000022A458300000006000000060F878D01022A458313E1C4F80AD3578500000006000000060000000113E200F8000000010AD357850000000610D13D04067ECE8712EA58FC022A458913E1C508000000040DE7CA00000000060E601501033F67C30000000613BC30F8000000010BE879C5000000061011AD040569AC471340D4FC0115234913F85908000000040DAED8810E962500000000000000000A0E96610000000006000000000000000600000003000000060000000200000000000000060000000300000006000000020000000000000006"
theorem small_9049795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9049795_left_root small_9049795_left_fuel small_9049795_left_count small_9049795_left_encoded = true := by
  decide +kernel
theorem small_9049795_left_covered : CoveredBy scale carrier boxes small_9049795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9049795_left_root small_9049795_left_fuel small_9049795_left_count small_9049795_left_encoded small_9049795_left_checked

theorem cover_9049795 : CoveredBy scale carrier boxes root_9049795 := by
  apply coveredBy_split_literal root_9049795 small_9049795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9050459 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9049795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9050459
#print axioms cover_9049795

def root_9049790 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049790_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9049790_right_fuel : Nat := 1
def small_9049790_right_count : Nat := 1
def small_9049790_right_encoded : String := "00000001"
theorem small_9049790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9049790_right_root small_9049790_right_fuel small_9049790_right_count small_9049790_right_encoded = true := by
  decide +kernel
theorem small_9049790_right_covered : CoveredBy scale carrier boxes small_9049790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9049790_right_root small_9049790_right_fuel small_9049790_right_count small_9049790_right_encoded small_9049790_right_checked

theorem cover_9049790 : CoveredBy scale carrier boxes root_9049790 := by
  apply coveredBy_split_literal root_9049790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9049795 small_9049790_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9049795
  · exact small_9049790_right_covered
#print axioms cover_9049790

def root_9061150 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061150_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061150_right_fuel : Nat := 20
def small_9061150_right_count : Nat := 171
def small_9061150_right_encoded : String := "1386AD080C9A87000F875101000000000C9A87040F87510500000002067ECE8312EA58F8022A458713E1C4FC067ECE8912EA5908000000040B4D44000000000900000008000000080000000313E200FC00000003067ECE8912EA5908000000040B4D440010801101000000000B4D440410801105000000020569AC431340D4F8033F67C70000000813BC30FC000000030000000500000001000000080000000910804D010B4D44040000000810804D050569AC431340D4F8000000080000000100000008000000020000000012EA95080B4D440010801101000000000000000800000008000000040000000112EA94F800000001022A45870000000813E200FC00000003067ECE8912EA59080000000400000008000000050F878D05067ECE8312EA58F8022A458713E1C4FC067ECE8900000009000000090000000313E200FC00000003067ECE8912EA5908000000040B4D440010801101000000000000000910804D010DE7CA040E5FD905000000020569AC431340D4F8033F67C70000000913BC30FC00000003000000060000000100000009000000090000000012EA95080B4D44000000000610804D010DE7CA04000000080000000600000000000000040000000112EA94F800000001022A45870000000913E200FC00000003067ECE8912EA5908000000040B4D44000000000910804D010DE7CA0400000008000000090000000012EA95080B4D4400000000090000000500000004000000020F878D010C9A8704000000080F878D05067ECE8312EA58F8022A45870000000813E200FC00000003067ECE8912EA5908000000040DE7CA000E5FD901000000000DE7CA04000000080E6015050569AC431340D4F8033F67C700000008000000060000000100000008000000020E6015010000000800000000000000080000000100000008000000020000000000000004"
theorem small_9061150_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9061150_right_root small_9061150_right_fuel small_9061150_right_count small_9061150_right_encoded = true := by
  decide +kernel
theorem small_9061150_right_covered : CoveredBy scale carrier boxes small_9061150_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9061150_right_root small_9061150_right_fuel small_9061150_right_count small_9061150_right_encoded small_9061150_right_checked

theorem cover_9061150 : CoveredBy scale carrier boxes root_9061150 := by
  apply coveredBy_split_literal root_9061150 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3393.root small_9061150_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3393.covered
  · exact small_9061150_right_covered
#print axioms cover_9061150

def root_9061145 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061145_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9061145_right_fuel : Nat := 1
def small_9061145_right_count : Nat := 1
def small_9061145_right_encoded : String := "00000003"
theorem small_9061145_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9061145_right_root small_9061145_right_fuel small_9061145_right_count small_9061145_right_encoded = true := by
  decide +kernel
theorem small_9061145_right_covered : CoveredBy scale carrier boxes small_9061145_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9061145_right_root small_9061145_right_fuel small_9061145_right_count small_9061145_right_encoded small_9061145_right_checked

theorem cover_9061145 : CoveredBy scale carrier boxes root_9061145 := by
  apply coveredBy_split_literal root_9061145 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9061150 small_9061145_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9061150
  · exact small_9061145_right_covered
#print axioms cover_9061145

def root_9066764 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9066764 : CoveredBy scale carrier boxes root_9066764 := by
  apply coveredBy_split_literal root_9066764 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3395.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3396.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3395.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3396.covered
#print axioms cover_9066764

def root_9066758 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066758_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066758_left_fuel : Nat := 1
def small_9066758_left_count : Nat := 1
def small_9066758_left_encoded : String := "00000004"
theorem small_9066758_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066758_left_root small_9066758_left_fuel small_9066758_left_count small_9066758_left_encoded = true := by
  decide +kernel
theorem small_9066758_left_covered : CoveredBy scale carrier boxes small_9066758_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066758_left_root small_9066758_left_fuel small_9066758_left_count small_9066758_left_encoded small_9066758_left_checked

theorem cover_9066758 : CoveredBy scale carrier boxes root_9066758 := by
  apply coveredBy_split_literal root_9066758 small_9066758_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066764 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9066758_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066764
#print axioms cover_9066758

def root_9066757 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066757_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066757_right_fuel : Nat := 26
def small_9066757_right_count : Nat := 285
def small_9066757_right_encoded : String := "13E201080DE7CA000E5FD901000000000DE7CA040E5FD905000000020569AC431340D4F80569AC471340D4FC033F67C913BBF508000000040D4128800EFA1101000000000D4128840EFA11050000000204DF1B231365B4F804DF1B271365B4FC02B4D6A913D0D108000000040CEDD7C00F422D0100000000000000090F4269010CEDD7C4000000070F42690500000006000000020000000000000006000000031365F0FC0000000300000006000000011365F0F80000000104DF1B2700000008000000050EFA4D0504DF1B23000000061365F0F80000000104DF1B270000000900000005000000020EFA4D010D4128840EFA11050000000204DF1B231365B4F804DF1B27000000080000000700000001000000080EFA4D0504DF1B231365B4F804DF1B271365B4FC02B4D6A913D0D108000000040D9479400000000600000008000000060000000300000006000000011365F0F80000000104DF1B27000000081365F0FC0000000300000005000000020000000013BC31080D4128800EFA1101000000000D4128840EFA11050000000200000005000000060EFA4D0100000008000000000000000400000003134110FC00000003033F67C913BBF508000000040D412880000000060EFA4D010D4128840EFA1105000000020000000500000005000000000000000500000001134110F8000000010569AC471340D4FC033F67C913BBF508000000040D4128800EFA1101000000000D41288400000008000000050EFA4D0100000008000000000000000500000003000000050E6015050569AC431340D4F80569AC471340D4FC033F67C913BBF508000000040000000600000006000000030000000600000001134110F8000000010569AC471340D4FC033F67C913BBF508000000040DAED8850E96250400000002000000060E9661040D412880000000060EFA4D0105F43D631317BCF804DF1B27000000080000000500000001000000050000000000000002000000060000000300000006000000020E6015010DE7CA040E5FD905000000020569AC431340D4F80569AC471340D4FC033F67C913BBF50800000004000000080000000800000003134110FC00000003033F67C913BBF508000000040DAED8810E96250000000000000000080E9661000D412884000000080EFA4D0504DF1B23000000060000000500000002000000000000000800000001134110F800000001000000080E6015050569AC431340D4F80569AC471340D4FC033F67C913BBF508000000040DAED8810E962500000000000DAED885000000080E96610400000008000000020E9661000DAED885000000060E96610404DF1B230000000600000008000000020000000013BC31080DAED881000000080E96610000000006000000000000000400000003134110FC00000003033F67C913BBF50800000004000000060000000600000001134110F8000000010569AC471340D4FC033F67C913BBF50800000004000000080000000800000003134110FC00000003033F67C913BBF508000000040DAED8810E96250000000000000000050000000500000005000000020000000000000004"
theorem small_9066757_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066757_right_root small_9066757_right_fuel small_9066757_right_count small_9066757_right_encoded = true := by
  decide +kernel
theorem small_9066757_right_covered : CoveredBy scale carrier boxes small_9066757_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066757_right_root small_9066757_right_fuel small_9066757_right_count small_9066757_right_encoded small_9066757_right_checked

theorem cover_9066757 : CoveredBy scale carrier boxes root_9066757 := by
  apply coveredBy_split_literal root_9066757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066758 small_9066757_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066758
  · exact small_9066757_right_covered
#print axioms cover_9066757

def root_9066752 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066752_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066752_right_fuel : Nat := 1
def small_9066752_right_count : Nat := 1
def small_9066752_right_encoded : String := "00000003"
theorem small_9066752_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066752_right_root small_9066752_right_fuel small_9066752_right_count small_9066752_right_encoded = true := by
  decide +kernel
theorem small_9066752_right_covered : CoveredBy scale carrier boxes small_9066752_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066752_right_root small_9066752_right_fuel small_9066752_right_count small_9066752_right_encoded small_9066752_right_checked

theorem cover_9066752 : CoveredBy scale carrier boxes root_9066752 := by
  apply coveredBy_split_literal root_9066752 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066757 small_9066752_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066757
  · exact small_9066752_right_covered
#print axioms cover_9066752

def root_9066751 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066751_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066751_right_fuel : Nat := 21
def small_9066751_right_count : Nat := 267
def small_9066751_right_encoded : String := "12EA94FC00000003022A458913E1C508000000040DE7CA000E5FD901000000000DE7CA040E5FD905000000020569AC431340D4F80793F0C7128220FC0115234913F85908000000040D4128800EFA1101000000000D4128840EFA1105000000020000000A0EFA4D0500000006000000020EFA4D010D4128840EFA110500000002000000070EFA4D0504DF1B23000000061365F0F80000000100000005000000020000000013F895080D412880000000060EFA4D010D4128840EFA110500000002000000050000000500000000000000040000000312825CFC000000030115234913F85908000000040D41288000000006000000050000000500000001134110F8000000010793F0C7128220FC0115234913F85908000000040D4128800EFA11010000000000000005000000050000000500000003000000050E6015050569AC4300000006134110F8000000010793F0C7128220FC0115234913F85908000000040DAED885000000060E9661040D412880000000060000000500000002000000050000000300000005000000020E6015010DE7CA040E5FD905000000020569AC431340D4F80793F0C7128220FC0115234913F85908000000040DAED8810E96250000000000000000070E9661000D412884000000070EFA4D0504DF1B23000000071365F0F80000000107095FA7000000D100000005000000020000000013F895080DAED8810E96250000000000000000070E9661000D412884000000070000000500000000000000040000000312825CFC000000030000000900000001134110F8000000010793F0C7128220FC0115234913F85908000000040DAED8810E962500000000000D41288400000009000000050E9661000D4128840EFA1105000000020000000500000005000000000000000500000003000000050E6015050569AC431340D4F80793F0C7128220FC0115234913F85908000000040DAED8810E962500000000000DAED8850E96250400000002000000060E96610400000009000000020E9661000DAED885000000060E96610404DF1B23000000061365F0F80000000100000006000000020000000000000006000000030000000600000001134110F8000000010793F0C7128220FC0115234913F85908000000040DAED8810E962500000000000DAED8850E9625040000000205F43D630000000600000005000000050E9661000DAED8850E9625040000000200000005000000050000000013F895080DAED8810E962500000000000000000500000005000000040000000312825CFC0000000300000005000000020000000013E201080DE7CA000E5FD901000000000DE7CA040E5FD9050000000200000005000000060E6015010DE7CA040E5FD905000000020569AC431340D4F80793F0C7128220FC033F67C913BBF508000000040000000500000005000000030000000500000001000000050E60150500000006000000020000000000000004"
theorem small_9066751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066751_right_root small_9066751_right_fuel small_9066751_right_count small_9066751_right_encoded = true := by
  decide +kernel
theorem small_9066751_right_covered : CoveredBy scale carrier boxes small_9066751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066751_right_root small_9066751_right_fuel small_9066751_right_count small_9066751_right_encoded small_9066751_right_checked

theorem cover_9066751 : CoveredBy scale carrier boxes root_9066751 := by
  apply coveredBy_split_literal root_9066751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066752 small_9066751_right_root coord3 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066752
  · exact small_9066751_right_covered
#print axioms cover_9066751

def root_9066746 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066746_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9066746_right_fuel : Nat := 1
def small_9066746_right_count : Nat := 1
def small_9066746_right_encoded : String := "00000001"
theorem small_9066746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9066746_right_root small_9066746_right_fuel small_9066746_right_count small_9066746_right_encoded = true := by
  decide +kernel
theorem small_9066746_right_covered : CoveredBy scale carrier boxes small_9066746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9066746_right_root small_9066746_right_fuel small_9066746_right_count small_9066746_right_encoded small_9066746_right_checked

theorem cover_9066746 : CoveredBy scale carrier boxes root_9066746 := by
  apply coveredBy_split_literal root_9066746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066751 small_9066746_right_root coord1 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066751
  · exact small_9066746_right_covered
#print axioms cover_9066746

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
  apply coveredBy_split_literal root_9066745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066746 small_9066745_right_root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066746
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
  apply coveredBy_split_literal root_9066740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.root_9066745 small_9066740_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216.cover_9066745
  · exact small_9066740_right_covered
#print axioms cover_9066740

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0216
