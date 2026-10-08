import TaoBundleAssembly0316
import TaoBundleChunkBatch0413
import TaoBundleChunkBatch0414
import TaoBundleChunkBatch0415
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317
def root_4422335 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422335_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422335_left_fuel : Nat := 26
def small_4422335_left_count : Nat := 297
def small_4422335_left_encoded : String := "13E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC411340D4F6033F67B90000000713BBF502000000010569AC49000000070000000700000000134110F600000000033F67B90000000713BBF502000000010569AC4900000007000000070E6015070569AC4100000009134110F600000000033F67B90000000913BBF502000000010569AC491340D4FE0DAED8870E96250600000003000000090E9661060D4128840000000700000007000000030000000400000009000000030E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E96250400000002000000080E9661040D41288600000007000000070000000200000000000000080E6015070569AC411340D4F6033F67B913BC31020569AC4900000005000000090000000113BBF502000000010569AC491340D4FE0DAED885000000050E966104000000050000000200000004134110FE000000040DAED8850E962504000000020DAED8870E96250600000003000000090E96610604DF1B210000000500000008000000030000000900000000134110F600000000033F67B913BC31020569AC4900000008134110FE000000040DAED8850E9625040000000200000008000000090000000113BBF502000000010569AC491340D4FE0DAED8850E96250400000002000000080E9661040DAED8870E9625060000000305F43D610000000500000008000000080000000200000004134110FE000000040DAED8850E962504000000020DAED8870E9625060000000305F43D611317BCF602B4D6990000000913D0D1020000000105F43D691317BCFE000000080000000400000009000000001317F8F60000000002B4D6990000000813D0D1020000000105F43D69000000081317F8FE000000040D563A450EE751040000000200000008000000090E96610600000008000000030E9661040DAED8870E96250600000003000000090E96610605F43D610000000900000008000000030000000200000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC4100000007134110F60000000000000007000000090E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67B913BC31020000000A0000000113BBF502000000010793F0C9128220FE0DAED8850000000A0E9661040000000700000002000000040000000A00000000134110F600000000033F67B913BC31020793F0C9000000080000000A0000000113BBF502000000010793F0C9128220FE0DAED8850E96250400000002000000080E9661040000000700000002000000040000000A0E6015070569AC411340D4F60000000900000000134110F600000000033F67B913BC3102000000090000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E96250600000003000000090E96610605F43D610000000A1317F8F60000000002B4D699000000080000000A000000030E96610400000009000000020000000412825CFE000000040DAED8850E962504000000020000000A00000009000000030000000200000001"
theorem small_4422335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422335_left_root small_4422335_left_fuel small_4422335_left_count small_4422335_left_encoded = true := by
  decide +kernel
theorem small_4422335_left_covered : CoveredBy scale carrier boxes small_4422335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422335_left_root small_4422335_left_fuel small_4422335_left_count small_4422335_left_encoded small_4422335_left_checked

theorem cover_4422335 : CoveredBy scale carrier boxes root_4422335 := by
  apply coveredBy_split_literal root_4422335 small_4422335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4422969 coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4422335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4422969
#print axioms cover_4422335

def root_4422330 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422330_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422330_right_fuel : Nat := 1
def small_4422330_right_count : Nat := 1
def small_4422330_right_encoded : String := "00000000"
theorem small_4422330_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422330_right_root small_4422330_right_fuel small_4422330_right_count small_4422330_right_encoded = true := by
  decide +kernel
theorem small_4422330_right_covered : CoveredBy scale carrier boxes small_4422330_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422330_right_root small_4422330_right_fuel small_4422330_right_count small_4422330_right_encoded small_4422330_right_checked

theorem cover_4422330 : CoveredBy scale carrier boxes root_4422330 := by
  apply coveredBy_split_literal root_4422330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4422335 small_4422330_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4422335
  · exact small_4422330_right_covered
#print axioms cover_4422330

def root_4427217 : ZRayBox := fun j => (#[⟨⟨(-15868160), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427217_left_root : ZRayBox := fun j => (#[⟨⟨(-15868160), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427217_left_fuel : Nat := 29
def small_4427217_left_count : Nat := 491
def small_4427217_left_encoded : String := "13E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030793F0C100000007000000080E6015070793F0C1128220F6033F67B913BC31020569AC4900000006000000090000000113BBF502000000010569AC491340D4FE0DAED887000000060E966106000000060000000300000004134110FE000000040DAED8870E96250600000003000000060E96610600000007000000030000000012825CF600000000033F67B90000000600000006000000030E6015050DE7CA060E5FD90700000003000000080E6015070793F0C1128220F6033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E962504000000020DAED88700000008000000080E9661040DAED8870E9625060000000307095FA112B880F602B4D699000000060000000600000000000000060E9661060000000800000003000000020000000012825CF600000000033F67B90000000813BBF502000000010569AC4900000008134110FE000000040DAED8850E96250400000002000000080E9661040DAED88700000006000000080000000200000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD907000000030793F0C10000000712825CF600000000000000070E6015070793F0C1128220F6033F67B90000000913BBF502000000010793F0C9128220FE0000000900000004000000090000000012825CF600000000033F67B913BC31020793F0C900000007000000090000000113BBF502000000010793F0C9128220FE0DAED887000000060E96610600000007000000030000000412825CFE000000040DAED8870E962506000000030000000500000005000000030E6015050DE7CA060E5FD907000000030793F0C1128220F6033F67B913BC31020793F0C90000000812825CFE00000004000000070000000113BBF502000000010793F0C9128220FE000000080000000412825CFE000000040DAED8850000000A0E96610400000007000000020000000012825CF600000000033F67B90000000813BBF502000000010793F0C90000000812825CFE000000040DAED8850E9625040000000200000005000000050E6015070793F0C1128220F6033F67B913BC31020793F0C9128220FE0DAED8850E962504000000020DAED8870E9625060000000307095FA10000000900000008000000080E96610400000009000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E96250600000003000000090E9661060000000A00000003000000090000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E9625060000000307095FA112B880F602B4D69913D10D0207095FA900000008000000090000000113D0D1020000000107095FA912B880FE0D563A450EE75104000000020D563A470EE751060000000306C417110000000900000006000000080EE78D0400000009000000020000000412B8BCFE000000040D563A450000000A000000090000000012B8BCF60000000002B4D69913D10D0207095FA90000000812B8BCFE000000040D563A450EE751040000000200000008000000090000000113D0D1020000000107095FA912B880FE0D563A450EE7510400000002000000080EE78D0400000006000000020000000412B8BCFE000000040D563A450EE751040000000200000005000000050E96610607095FA112B880F602B4D6990000000813D0D1020000000107095FA9000000080000000A0000000000000008000000030E9661040DAED8870E9625060000000307095FA10000000912B8BCF60000000002B4D6990000000913D0D1020000000107095FA900000006000000090E96610607095FA112B880F602B4D6990000000713D0D1020000000107095FA900000007000000090000000012B8BCF60000000002B4D6990000000713D0D1020000000107095FA9000000070000000700000003000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E9625060000000307095FA10000000A12B8BCF60000000002B4D69913D10D020000000900000001000000050E9661060000000A000000030E9661040DAED8870E96250600000003000000090E96610607095FA1000000090000000500000003000000020000000012825CF600000000033F67B913BC31020793F0C9128220FE0DAED8850E96250400000002000000080E9661040DAED8870E962506000000030000000600000007000000020000000412825CFE000000040DAED8850E962504000000020DAED8870E96250600000003081E81E11246FCF603C9F8D90000000913A33102000000010000000500000000124738F600000000000000050E96610600000008000000030E9661040DAED8870E962506000000030000000900000007000000020000000113BBF502000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E96250600000003081E81E11246FCF602B4D6990000000813D0D1020000000107095FA900000006000000050000000000000006000000080E9661040DAED8870E96250600000003000000060E966106081E81E11246FCF602B4D6990000000700000005000000000000000500000003000000020000000412825CFE000000040DAED8850E962504000000020000000500000005000000030000000200000001"
theorem small_4427217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4427217_left_root small_4427217_left_fuel small_4427217_left_count small_4427217_left_encoded = true := by
  decide +kernel
theorem small_4427217_left_covered : CoveredBy scale carrier boxes small_4427217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4427217_left_root small_4427217_left_fuel small_4427217_left_count small_4427217_left_encoded small_4427217_left_checked

theorem cover_4427217 : CoveredBy scale carrier boxes root_4427217 := by
  apply coveredBy_split_literal root_4427217 small_4427217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1658.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4427217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1658.covered
#print axioms cover_4427217

def root_4427211 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427211_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15868160)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4427211_left_fuel : Nat := 1
def small_4427211_left_count : Nat := 1
def small_4427211_left_encoded : String := "00000000"
theorem small_4427211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4427211_left_root small_4427211_left_fuel small_4427211_left_count small_4427211_left_encoded = true := by
  decide +kernel
theorem small_4427211_left_covered : CoveredBy scale carrier boxes small_4427211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4427211_left_root small_4427211_left_fuel small_4427211_left_count small_4427211_left_encoded small_4427211_left_checked

theorem cover_4427211 : CoveredBy scale carrier boxes root_4427211 := by
  apply coveredBy_split_literal root_4427211 small_4427211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4427217 coord0 false (-15868160)
  · decide +kernel
  · decide +kernel
  · exact small_4427211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4427217
#print axioms cover_4427211

def root_4422329 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4422329 : CoveredBy scale carrier boxes root_4422329 := by
  apply coveredBy_split_literal root_4422329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4422330 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4427211 coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4422330
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4427211
#print axioms cover_4422329

def root_4422324 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422324_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4422324_right_fuel : Nat := 1
def small_4422324_right_count : Nat := 1
def small_4422324_right_encoded : String := "00000003"
theorem small_4422324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4422324_right_root small_4422324_right_fuel small_4422324_right_count small_4422324_right_encoded = true := by
  decide +kernel
theorem small_4422324_right_covered : CoveredBy scale carrier boxes small_4422324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4422324_right_root small_4422324_right_fuel small_4422324_right_count small_4422324_right_encoded small_4422324_right_checked

theorem cover_4422324 : CoveredBy scale carrier boxes root_4422324 := by
  apply coveredBy_split_literal root_4422324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4422329 small_4422324_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4422329
  · exact small_4422324_right_covered
#print axioms cover_4422324

def root_4421868 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421868_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421868_left_fuel : Nat := 20
def small_4421868_left_count : Nat := 219
def small_4421868_left_encoded : String := "0F87510700000003067ECE8112EA58F6022A457913E20102067ECE8912EA58FE0DE7CA040E5FD9050000000200000007000000080000000412EA94FE000000040DE7CA040E5FD90500000002000000070E6015050B4D44060000000A10804D070569AC410000000A134110F6000000000000000A00000003000000020000000113E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070569AC411340D4F6011523390000000713F85902000000010569AC49000000070000000700000000134110F600000000011523390000000713F85902000000010569AC490000000700000007000000030E6015050B4D440610801107000000030000000810804D070569AC411340D4F6011523390000000813F85902000000010569AC490000000800000006000000000000000800000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070569AC411340D4F6011523390000000713F85902000000010793F0C9000000070000000600000000134110F600000000011523390000000713F85902000000010793F0C90000000700000005000000030E6015050B4D44060000000A10804D070569AC410000000A134110F600000000011523390000000A0000000A00000003000000020000000012EA94F600000000022A457913E20102067ECE890000000812EA94FE000000040DE7CA040E5FD9050000000200000007000000080000000113E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D44060000000810804D070793F0C1128220F6011523390000000713F85902000000010569AC490000000700000007000000000000000800000003000000080000000412EA94FE000000040DE7CA040E5FD905000000020B4D440610801107000000030000000710804D070793F0C1128220F60115233900000007000000050000000000000005000000030E6015050B4D440610801107000000030793F0C10000000A0000000810804D070793F0C1128220F60115233913F895020793F0C9000000080000000A0000000113F85902000000010793F0C9128220FE0DAED8850E96250400000002000000050000000500000004000000050000000012825CF6000000000115233900000008000000050000000300000002"
theorem small_4421868_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421868_left_root small_4421868_left_fuel small_4421868_left_count small_4421868_left_encoded = true := by
  decide +kernel
theorem small_4421868_left_covered : CoveredBy scale carrier boxes small_4421868_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421868_left_root small_4421868_left_fuel small_4421868_left_count small_4421868_left_encoded small_4421868_left_checked

theorem cover_4421868 : CoveredBy scale carrier boxes root_4421868 := by
  apply coveredBy_split_literal root_4421868 small_4421868_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4422324 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4421868_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4422324
#print axioms cover_4421868

def root_4421863 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421863_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421863_right_fuel : Nat := 1
def small_4421863_right_count : Nat := 1
def small_4421863_right_encoded : String := "00000002"
theorem small_4421863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421863_right_root small_4421863_right_fuel small_4421863_right_count small_4421863_right_encoded = true := by
  decide +kernel
theorem small_4421863_right_covered : CoveredBy scale carrier boxes small_4421863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421863_right_root small_4421863_right_fuel small_4421863_right_count small_4421863_right_encoded small_4421863_right_checked

theorem cover_4421863 : CoveredBy scale carrier boxes root_4421863 := by
  apply coveredBy_split_literal root_4421863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4421868 small_4421863_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4421868
  · exact small_4421863_right_covered
#print axioms cover_4421863

def root_4421261 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421261_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421261_left_fuel : Nat := 22
def small_4421261_left_count : Nat := 289
def small_4421261_left_encoded : String := "0F875105000000020C9A87060F87510700000003067ECE8112EA58F6022A457913E20102067ECE8900000007000000070000000113E1C50200000001067ECE8912EA58FE0B4D440400000007000000070000000412EA94FE000000040B4D440400000007000000070000000012EA94F600000000022A457913E20102067ECE8900000007000000070000000113E1C50200000001067ECE8912EA58FE0B4D440400000007000000070000000412EA94FE000000040B4D440400000007000000070F878D07067ECE8112EA58F6022A457913E20102067ECE8912EA58FE0B4D44040000000910804D050DE7CA060E5FD9070000000300000007000000090000000200000004000000090000000113E1C50200000001067ECE8912EA58FE0B4D440410801105000000020DE7CA060E5FD90700000003000000070000000910804D050DE7CA060E5FD907000000030569AC411340D4F6011523390000000713F85902000000010569AC49000000070000000700000000134110F600000000011523390000000713F85902000000010569AC4900000007000000070E6015070569AC4100000009134110F600000000011523390000000913F85902000000010569AC490000000A0000000900000003000000020000000412EA94FE000000040B4D440410801105000000020000000910804D050DE7CA060E5FD907000000030569AC4100000009134110F600000000011523390000000713F85902000000010793F0C9000000070000000500000009000000020000000012EA94F600000000022A457913E20102067ECE8912EA58FE0B4D440410801105000000020DE7CA06000000070000000610804D050DE7CA060E5FD90700000003000000070E6015070793F0C1128220F600000009000000000000000600000003000000020000000412EA94FE000000040B4D440410801105000000020000000910804D050DE7CA060E5FD907000000030000000700000009000000020000000113E1C50200000001067ECE8912EA58FE0B4D440410801105000000020DE7CA060E5FD90700000003000000070E601507000000060000000310804D050DE7CA060E5FD907000000030793F0C1128220F6011523390000000713F85902000000010569AC4900000007000000070000000012825CF600000000011523390000000713F85902000000010569AC4900000006000000050E6015070793F0C1128220F6011523390000000613F85902000000010569AC4900000006134110FE0000000400000006000000000000000600000003000000020000000412EA94FE000000040B4D440410801105000000020DE7CA060E5FD90700000003000000070E6015070793F0C100000009000000060000000310804D050DE7CA060E5FD907000000030793F0C1128220F601152339000000070000000500000000000000050E6015070793F0C1128220F6011523390000000913F85902000000010793F0C9128220FE0DAED8870E96250600000003000000050000000500000004000000050000000012825CF6000000000115233913F895020793F0C900000006000000050000000100000005000000030000000200000003"
theorem small_4421261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421261_left_root small_4421261_left_fuel small_4421261_left_count small_4421261_left_encoded = true := by
  decide +kernel
theorem small_4421261_left_covered : CoveredBy scale carrier boxes small_4421261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421261_left_root small_4421261_left_fuel small_4421261_left_count small_4421261_left_encoded small_4421261_left_checked

theorem cover_4421261 : CoveredBy scale carrier boxes root_4421261 := by
  apply coveredBy_split_literal root_4421261 small_4421261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4421863 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4421261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4421863
#print axioms cover_4421261

def root_4421255 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421255_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4421255_left_fuel : Nat := 1
def small_4421255_left_count : Nat := 1
def small_4421255_left_encoded : String := "00000004"
theorem small_4421255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4421255_left_root small_4421255_left_fuel small_4421255_left_count small_4421255_left_encoded = true := by
  decide +kernel
theorem small_4421255_left_covered : CoveredBy scale carrier boxes small_4421255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4421255_left_root small_4421255_left_fuel small_4421255_left_count small_4421255_left_encoded small_4421255_left_checked

theorem cover_4421255 : CoveredBy scale carrier boxes root_4421255 := by
  apply coveredBy_split_literal root_4421255 small_4421255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4421261 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4421255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4421261
#print axioms cover_4421255

def root_4420063 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4420063 : CoveredBy scale carrier boxes root_4420063 := by
  apply coveredBy_split_literal root_4420063 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4421255 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4421255
#print axioms cover_4420063

def root_4420058 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4420058_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4420058_right_fuel : Nat := 1
def small_4420058_right_count : Nat := 1
def small_4420058_right_encoded : String := "00000003"
theorem small_4420058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4420058_right_root small_4420058_right_fuel small_4420058_right_count small_4420058_right_encoded = true := by
  decide +kernel
theorem small_4420058_right_covered : CoveredBy scale carrier boxes small_4420058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4420058_right_root small_4420058_right_fuel small_4420058_right_count small_4420058_right_encoded small_4420058_right_checked

theorem cover_4420058 : CoveredBy scale carrier boxes root_4420058 := by
  apply coveredBy_split_literal root_4420058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4420063 small_4420058_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4420063
  · exact small_4420058_right_covered
#print axioms cover_4420058

def root_4417114 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4417114 : CoveredBy scale carrier boxes root_4417114 := by
  apply coveredBy_split_literal root_4417114 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1654.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4420058 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1654.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4420058
#print axioms cover_4417114

def root_4417109 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4417109_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4417109_right_fuel : Nat := 1
def small_4417109_right_count : Nat := 1
def small_4417109_right_encoded : String := "00000002"
theorem small_4417109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4417109_right_root small_4417109_right_fuel small_4417109_right_count small_4417109_right_encoded = true := by
  decide +kernel
theorem small_4417109_right_covered : CoveredBy scale carrier boxes small_4417109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4417109_right_root small_4417109_right_fuel small_4417109_right_count small_4417109_right_encoded small_4417109_right_checked

theorem cover_4417109 : CoveredBy scale carrier boxes root_4417109 := by
  apply coveredBy_split_literal root_4417109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4417114 small_4417109_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4417114
  · exact small_4417109_right_covered
#print axioms cover_4417109

def root_4408533 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4408533 : CoveredBy scale carrier boxes root_4408533 := by
  apply coveredBy_split_literal root_4408533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.root_4408534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4417109 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0316.cover_4408534
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4417109
#print axioms cover_4408533

def root_4408527 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408527_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4408527_left_fuel : Nat := 1
def small_4408527_left_count : Nat := 1
def small_4408527_left_encoded : String := "00000001"
theorem small_4408527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4408527_left_root small_4408527_left_fuel small_4408527_left_count small_4408527_left_encoded = true := by
  decide +kernel
theorem small_4408527_left_covered : CoveredBy scale carrier boxes small_4408527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4408527_left_root small_4408527_left_fuel small_4408527_left_count small_4408527_left_encoded small_4408527_left_checked

theorem cover_4408527 : CoveredBy scale carrier boxes root_4408527 := by
  apply coveredBy_split_literal root_4408527 small_4408527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4408533 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4408527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4408533
#print axioms cover_4408527

def root_4406765 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4406765 : CoveredBy scale carrier boxes root_4406765 := by
  apply coveredBy_split_literal root_4406765 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1650.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4408527 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1650.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4408527
#print axioms cover_4406765

def root_4406759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4406759_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4406759_left_fuel : Nat := 1
def small_4406759_left_count : Nat := 1
def small_4406759_left_encoded : String := "00000000"
theorem small_4406759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4406759_left_root small_4406759_left_fuel small_4406759_left_count small_4406759_left_encoded = true := by
  decide +kernel
theorem small_4406759_left_covered : CoveredBy scale carrier boxes small_4406759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4406759_left_root small_4406759_left_fuel small_4406759_left_count small_4406759_left_encoded small_4406759_left_checked

theorem cover_4406759 : CoveredBy scale carrier boxes root_4406759 := by
  apply coveredBy_split_literal root_4406759 small_4406759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4406765 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4406759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4406765
#print axioms cover_4406759

def root_4403653 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4403653 : CoveredBy scale carrier boxes root_4403653 := by
  apply coveredBy_split_literal root_4403653 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1649.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4406759 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1649.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4406759
#print axioms cover_4403653

def root_4403648 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403648_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403648_right_fuel : Nat := 1
def small_4403648_right_count : Nat := 1
def small_4403648_right_encoded : String := "00000004"
theorem small_4403648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4403648_right_root small_4403648_right_fuel small_4403648_right_count small_4403648_right_encoded = true := by
  decide +kernel
theorem small_4403648_right_covered : CoveredBy scale carrier boxes small_4403648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4403648_right_root small_4403648_right_fuel small_4403648_right_count small_4403648_right_encoded small_4403648_right_checked

theorem cover_4403648 : CoveredBy scale carrier boxes root_4403648 := by
  apply coveredBy_split_literal root_4403648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4403653 small_4403648_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4403653
  · exact small_4403648_right_covered
#print axioms cover_4403648

def root_4403647 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4403647 : CoveredBy scale carrier boxes root_4403647 := by
  apply coveredBy_split_literal root_4403647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4403648 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1659.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4403648
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1659.covered
#print axioms cover_4403647

def root_4403642 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403642_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4403642_right_fuel : Nat := 1
def small_4403642_right_count : Nat := 1
def small_4403642_right_encoded : String := "00000003"
theorem small_4403642_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4403642_right_root small_4403642_right_fuel small_4403642_right_count small_4403642_right_encoded = true := by
  decide +kernel
theorem small_4403642_right_covered : CoveredBy scale carrier boxes small_4403642_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4403642_right_root small_4403642_right_fuel small_4403642_right_count small_4403642_right_encoded small_4403642_right_checked

theorem cover_4403642 : CoveredBy scale carrier boxes root_4403642 := by
  apply coveredBy_split_literal root_4403642 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4403647 small_4403642_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4403647
  · exact small_4403642_right_covered
#print axioms cover_4403642

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317
