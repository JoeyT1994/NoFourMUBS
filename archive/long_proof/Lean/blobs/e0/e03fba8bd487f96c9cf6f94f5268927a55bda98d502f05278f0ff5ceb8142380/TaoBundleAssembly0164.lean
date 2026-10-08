import TaoBundleAssembly0163
import TaoBundleChunkBatch0635
import TaoBundleChunkBatch0638
import TaoBundleChunkBatch0639
import TaoBundleChunkBatch0640
import TaoBundleChunkBatch0641
import TaoBundleChunkBatch0642
import TaoBundleChunkBatch0643
import TaoBundleChunkBatch0644
import TaoBundleChunkBatch0645
import TaoBundleChunkBatch0646
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164
def root_6786625 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786625_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786625_left_fuel : Nat := 23
def small_6786625_left_count : Nat := 315
def small_6786625_left_encoded : String := "13E201000DE7CA020E5FD8F90DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC2509033F67B713BC31000D4128820EFA10F90000000A000000010EFA4CF9000000010D412884000000080EFA4CFB00000002096000FC00000008000000070000000013BBF500000000000D4128820EFA10F90D4128840EFA10FB00000009000000020000000A000000010EFA4CF9000000010D4128840EFA10FB00000009000000020EFA4CFB00000002096000FC11AABD070000000A0000000311AA810700000003096000FE0000000911AA81090000000402B4D6970000000713D0D100000000000D94794200000007000000080000000411FBE90900000004033F67B70000000A13BBF500000000000D4128820000000A0EFA4CF9000000010D412884000000080000000A0000000311FBE9070000000308C000FE11FC2509033F67B70000000913BBF500000000000D4128820EFA10F90000000900000001000000090000000411FBE90900000004033F67B713BC31000D4128820EFA10F90D4128840EFA10FB000000090000000200000007000000010EFA4CF900000001000000080000000013BBF500000000000D4128820EFA10F90D4128840EFA10FB082000FC0000000A12465D070000000300000009000000020EFA4CFB00000002082000FC0000000A00000007000000010EFA4CF9000000010D4128840EFA10FB082000FC12469907000000080000000312465D070000000300000009000000020EFA4CFB00000002082000FC12469907000000080000000300000005000000020E6014FB0000000208C000FC11FC250708C000FE11FC2509033F67B713BC3100000000070000000013BBF500000000000DAED87B0E9661040D4128820000000A0EFA4CF900000001096000FC0000000A00000007000000020E96250400000002000000070000000411FBE90900000004033F67B70000000A13BBF500000000000DAED87B0000000A0E962504000000020000000A0000000311FBE9070000000308C000FE11FC2509000000070000000411FBE90900000004033F67B70000000713BBF500000000000DAED87B0E9661040D41288200000007000000050000000200000007000000010E6014F9000000010DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC2509033F67B713BC3100000000080000000013BBF500000000000DAED8790E9661020D412884000000090EFA4CFB00000002096000FC11AABD07000000080000000311AA810700000003096000FE0000000900000008000000010E96250200000001000000080000000411FBE90900000004000000080000000311FBE9070000000308C000FE11FC2509033F67B70000000913BBF500000000000DAED879000000090E96250200000001000000090000000411FBE90900000004033F67B70000000813BBF500000000000DAED8790E9661020D41288400000008000000050000000100000008000000020E6014FB0000000208C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED87900000008000000070000000013BBF500000000000DAED8790E9661020DAED87B0E966104096000FC11AABD07000000080000000300000007000000020E9625040000000200000007000000010E962502000000010DAED87B0E9661040000000800000002000000080000000411FBE90900000004000000080000000311FBE9070000000308C000FE11FC250900000007000000040000000500000000"
theorem small_6786625_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786625_left_root small_6786625_left_fuel small_6786625_left_count small_6786625_left_encoded = true := by
  decide +kernel
theorem small_6786625_left_covered : CoveredBy scale carrier boxes small_6786625_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786625_left_root small_6786625_left_fuel small_6786625_left_count small_6786625_left_encoded small_6786625_left_checked

theorem cover_6786625 : CoveredBy scale carrier boxes root_6786625 := by
  apply coveredBy_split_literal root_6786625 small_6786625_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2554.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6786625_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2554.covered
#print axioms cover_6786625

def root_6786620 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786620_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786620_right_fuel : Nat := 1
def small_6786620_right_count : Nat := 1
def small_6786620_right_encoded : String := "00000004"
theorem small_6786620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786620_right_root small_6786620_right_fuel small_6786620_right_count small_6786620_right_encoded = true := by
  decide +kernel
theorem small_6786620_right_covered : CoveredBy scale carrier boxes small_6786620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786620_right_root small_6786620_right_fuel small_6786620_right_count small_6786620_right_encoded small_6786620_right_checked

theorem cover_6786620 : CoveredBy scale carrier boxes root_6786620 := by
  apply coveredBy_split_literal root_6786620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786625 small_6786620_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786625
  · exact small_6786620_right_covered
#print axioms cover_6786620

def root_6786619 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786619_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786619_right_fuel : Nat := 19
def small_6786619_right_count : Nat := 111
def small_6786619_right_encoded : String := "128A410900000004022A457713E201000DE7CA020E5FD8F90DE7CA040E5FD8FB08C000FC11FC2507000000080000000311FBE90700000003064000FE12FFAD09033F67B70000000813BBF500000000000D4128820EFA10F90D412884000000080000000500000001000000050000000400000005000000020E6014FB0000000208C000FC0000000A00000005000000010E6014F9000000010DE7CA0400000008000000050000000013E1C500000000000DE7CA020E5FD8F90DE7CA040E5FD8FB08C000FC11FC2507064000FE12FFAD090115233713F895000D4128820000000A0EFA4CF900000001000000080000000013F85900000000000D4128820EFA10F90000000A000000010EFA4CF9000000010D4128840EFA10FB096000FC000000080000000500000002000000050000000412FF7109000000040115233700000008000000050000000311FBE90700000003064000FE12FFAD090115233713F895000D4128820EFA10F90D4128840EFA10FB082000FC0000000A000000050000000200000005000000010000000500000000000000050000000400000005000000020E6014FB0000000200000005000000010E6014F90000000100000005"
theorem small_6786619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786619_right_root small_6786619_right_fuel small_6786619_right_count small_6786619_right_encoded = true := by
  decide +kernel
theorem small_6786619_right_covered : CoveredBy scale carrier boxes small_6786619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786619_right_root small_6786619_right_fuel small_6786619_right_count small_6786619_right_encoded small_6786619_right_checked

theorem cover_6786619 : CoveredBy scale carrier boxes root_6786619 := by
  apply coveredBy_split_literal root_6786619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786620 small_6786619_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786620
  · exact small_6786619_right_covered
#print axioms cover_6786619

def root_6786614 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786614_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786614_right_fuel : Nat := 1
def small_6786614_right_count : Nat := 1
def small_6786614_right_encoded : String := "00000003"
theorem small_6786614_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786614_right_root small_6786614_right_fuel small_6786614_right_count small_6786614_right_encoded = true := by
  decide +kernel
theorem small_6786614_right_covered : CoveredBy scale carrier boxes small_6786614_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786614_right_root small_6786614_right_fuel small_6786614_right_count small_6786614_right_encoded small_6786614_right_checked

theorem cover_6786614 : CoveredBy scale carrier boxes root_6786614 := by
  apply coveredBy_split_literal root_6786614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786619 small_6786614_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786619
  · exact small_6786614_right_covered
#print axioms cover_6786614

def root_6786613 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786613_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786613_right_fuel : Nat := 23
def small_6786613_right_count : Nat := 127
def small_6786613_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E201000DE7CA020E5FD8F90DE7CA040E5FD8FB064000FC12FFAD0708C000FE11FC2509000000070000000411FBE90900000004033F67B70000000713BBF500000000000D41288200000007000000050000000300000007000000020E6014FB0000000200000007000000010E6014F9000000010DE7CA040E5FD8FB064000FC12FFAD0708C000FE0000000900000005000000030000000500000002000000050000000013E1C500000000000DE7CA020E5FD8F90DE7CA040E5FD8FB064000FC12FFAD0708C000FE11FC25090115233713F895000D4128820EFA10F90000000900000001000000090000000013F85900000000000D4128820EFA10F90D412884000000090EFA4CFB0000000206E000FC12C82107096000FE00000007000000050000000300000005000000010EFA4CF9000000010D41288400000009000000050000000411FBE909000000040115233713F895000D4128820EFA10F90D4128840EFA10FB06E000FC12C82107082000FE000000090000000500000003000000050000000200000005000000010000000500000000000000050000000312FF71070000000308C000FE11FC25090115233700000007000000050000000400000005000000020E6014FB0000000200000005000000010E6014F900000001000000050000000400000005"
theorem small_6786613_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786613_right_root small_6786613_right_fuel small_6786613_right_count small_6786613_right_encoded = true := by
  decide +kernel
theorem small_6786613_right_covered : CoveredBy scale carrier boxes small_6786613_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786613_right_root small_6786613_right_fuel small_6786613_right_count small_6786613_right_encoded small_6786613_right_checked

theorem cover_6786613 : CoveredBy scale carrier boxes root_6786613 := by
  apply coveredBy_split_literal root_6786613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786614 small_6786613_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786614
  · exact small_6786613_right_covered
#print axioms cover_6786613

def root_6786607 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786607_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6786607_left_fuel : Nat := 1
def small_6786607_left_count : Nat := 1
def small_6786607_left_encoded : String := "00000002"
theorem small_6786607_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6786607_left_root small_6786607_left_fuel small_6786607_left_count small_6786607_left_encoded = true := by
  decide +kernel
theorem small_6786607_left_covered : CoveredBy scale carrier boxes small_6786607_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6786607_left_root small_6786607_left_fuel small_6786607_left_count small_6786607_left_encoded small_6786607_left_checked

theorem cover_6786607 : CoveredBy scale carrier boxes root_6786607 := by
  apply coveredBy_split_literal root_6786607 small_6786607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786613 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6786607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786613
#print axioms cover_6786607

def root_6785007 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6785007 : CoveredBy scale carrier boxes root_6785007 := by
  apply coveredBy_split_literal root_6785007 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2553.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6786607 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2553.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6786607
#print axioms cover_6785007

def root_6785001 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6785001_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6785001_left_fuel : Nat := 1
def small_6785001_left_count : Nat := 1
def small_6785001_left_encoded : String := "00000001"
theorem small_6785001_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6785001_left_root small_6785001_left_fuel small_6785001_left_count small_6785001_left_encoded = true := by
  decide +kernel
theorem small_6785001_left_covered : CoveredBy scale carrier boxes small_6785001_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6785001_left_root small_6785001_left_fuel small_6785001_left_count small_6785001_left_encoded small_6785001_left_checked

theorem cover_6785001 : CoveredBy scale carrier boxes root_6785001 := by
  apply coveredBy_split_literal root_6785001 small_6785001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6785007 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6785001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6785007
#print axioms cover_6785001

def root_6782499 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6782499 : CoveredBy scale carrier boxes root_6782499 := by
  apply coveredBy_split_literal root_6782499 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2552.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6785001 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2552.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6785001
#print axioms cover_6782499

def root_6782494 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782494_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782494_right_fuel : Nat := 1
def small_6782494_right_count : Nat := 1
def small_6782494_right_encoded : String := "00000002"
theorem small_6782494_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6782494_right_root small_6782494_right_fuel small_6782494_right_count small_6782494_right_encoded = true := by
  decide +kernel
theorem small_6782494_right_covered : CoveredBy scale carrier boxes small_6782494_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6782494_right_root small_6782494_right_fuel small_6782494_right_count small_6782494_right_encoded small_6782494_right_checked

theorem cover_6782494 : CoveredBy scale carrier boxes root_6782494 := by
  apply coveredBy_split_literal root_6782494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782499 small_6782494_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782499
  · exact small_6782494_right_covered
#print axioms cover_6782494

def root_6782493 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782493_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782493_right_fuel : Nat := 33
def small_6782493_right_count : Nat := 251
def small_6782493_right_encoded : String := "0F34D104000000020C9A87020F8750F9078000FC128A7D07078000FE128A7D09022A457713E201000AD3577B10D13D040B4D44020000000A10804CF90000000108C000FC0000000A000000070000000210D1010400000002000000070000000013E1C500000000000AD3577B10D13D040B4D4402108010F908C000FC0000000A11FBE9070000000308C000FE11FC2509000000070000000411FBE909000000040000000A0000000110804CF90000000108C000FC11FC250708C000FE11FC2509011523370000000A13F85900000000000BE879BB0000000A1011710400000002000000070000000411FBE909000000040000000A0000000311FBE9070000000308C000FE11FC25090000000700000004000000050000000210D10104000000020B4D4402108010F90000000A0000000110804CF90000000108C000FC11FC250708C000FE0000000700000005000000030000000500000004128A410900000004022A457713E201000AD3577B0000000A10D10104000000020000000A0000000013E1C500000000000AD3577B10D13D040B4D44020000000A000000050000000210D10104000000020000000500000003128A410700000003078000FE128A7D09022A45770000000713E1C500000000000AD3577B10D13D040B4D440200000007000000050000000210D1010400000002000000050000000400000005000000010F878CF900000001078000FC128A7D07078000FE128A7D09022A457713E201000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250708C000FE11FC2509000000070000000411FBE90900000004033F67B70000000713BBF500000000000BE879BB0000000A000000050000000300000007000000010E6014F90000000108C000FC11FC250708C000FE11FC250900000007000000040000000500000003000000050000000210D1010400000002000000050000000013E1C500000000000AD3577B10D13D040DE7CA020E5FD8F908C000FC11FC250708C000FE11FC25090115233713F895000BE879BB1011AD040D412882000000070EFA4CF9000000010000000700000002000000070000000013F85900000000000BE879BB1011AD040D4128820EFA10F9096000FC11AABD070000000A0000000311AA810700000003096000FE0000000700000005000000010EFA4CF900000001096000FC11AABD07096000FE11AABD09008A92170000000713FDF900000000000C730ADB0FA745040D9479420000000700000005000000020000000700000004000000050000000300000005000000021011710400000002000000050000000400000005000000030000000500000001000000050000000210D10104000000020000000500000004000000050000000300000005"
theorem small_6782493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6782493_right_root small_6782493_right_fuel small_6782493_right_count small_6782493_right_encoded = true := by
  decide +kernel
theorem small_6782493_right_covered : CoveredBy scale carrier boxes small_6782493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6782493_right_root small_6782493_right_fuel small_6782493_right_count small_6782493_right_encoded small_6782493_right_checked

theorem cover_6782493 : CoveredBy scale carrier boxes root_6782493 := by
  apply coveredBy_split_literal root_6782493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782494 small_6782493_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782494
  · exact small_6782493_right_covered
#print axioms cover_6782493

def root_6782488 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782488_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782488_right_fuel : Nat := 1
def small_6782488_right_count : Nat := 1
def small_6782488_right_encoded : String := "00000001"
theorem small_6782488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6782488_right_root small_6782488_right_fuel small_6782488_right_count small_6782488_right_encoded = true := by
  decide +kernel
theorem small_6782488_right_covered : CoveredBy scale carrier boxes small_6782488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6782488_right_root small_6782488_right_fuel small_6782488_right_count small_6782488_right_encoded small_6782488_right_checked

theorem cover_6782488 : CoveredBy scale carrier boxes root_6782488 := by
  apply coveredBy_split_literal root_6782488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782493 small_6782488_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782493
  · exact small_6782488_right_covered
#print axioms cover_6782488

def root_6782487 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782487_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782487_right_fuel : Nat := 35
def small_6782487_right_count : Nat := 263
def small_6782487_right_encoded : String := "0F34D102000000010CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A457713E201000AD3577910D13D020B4D44040000000910804CFB0000000208C000FC11FC2507000000080000000311FBE9070000000308C000FE00000009000000080000000110D1010200000001000000080000000013E1C500000000000AD3577910D13D020B4D4404108010FB08C000FC11FC250708C000FE0000000911FBE90900000004000000080000000311FBE90700000003000000090000000210804CFB0000000208C000FC11FC250708C000FE11FC2509011523370000000913F85900000000000BE879B9000000091011710200000001000000080000000411FBE90900000004000000080000000311FBE9070000000308C000FE11FC25090000000900000004000000050000000110D10102000000010B4D4404108010FB000000090000000210804CFB0000000208C000FC000000080000000500000004128A410900000004022A45770000000813E1C500000000000AD3577910D13D020B4D440400000008000000050000000110D10102000000010000000500000003128A410700000003078000FE128A7D09022A457713E201000AD357790000000910D1010200000001000000090000000013E1C500000000000AD3577910D13D020B4D440400000009000000050000000110D1010200000001000000050000000400000005000000020F878CFB00000002078000FC128A7D07078000FE128A7D09022A457713E201000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC2507000000080000000311FBE9070000000308C000FE11FC2509033F67B70000000813BBF500000000000BE879B900000009000000050000000400000005000000020E6014FB0000000208C000FC11FC250708C000FE11FC250900000008000000040000000500000003000000050000000110D1010200000001000000050000000013E1C500000000000AD3577910D13D020DE7CA040E5FD8FB08C000FC11FC250708C000FE11FC25090115233713F895000BE879B91011AD020D412884000000080EFA4CFB000000020000000800000001000000080000000013F85900000000000BE879B91011AD020D4128840EFA10FB096000FC11AABD07096000FE11AABD090000000900000004000000080000000311AA810700000003096000FE0000000900000005000000020EFA4CFB00000002096000FC11AABD07096000FE11AABD09008A92170000000813FDF900000000000C730AD90FA745020D9479440000000800000005000000010000000800000004000000050000000300000005000000011011710200000001000000050000000400000005000000030000000500000002000000050000000110D10102000000010000000500000004000000050000000300000005000000020F34D1040000000200000005"
theorem small_6782487_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6782487_right_root small_6782487_right_fuel small_6782487_right_count small_6782487_right_encoded = true := by
  decide +kernel
theorem small_6782487_right_covered : CoveredBy scale carrier boxes small_6782487_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6782487_right_root small_6782487_right_fuel small_6782487_right_count small_6782487_right_encoded small_6782487_right_checked

theorem cover_6782487 : CoveredBy scale carrier boxes root_6782487 := by
  apply coveredBy_split_literal root_6782487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782488 small_6782487_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782488
  · exact small_6782487_right_covered
#print axioms cover_6782487

def root_6782481 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782481_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6782481_left_fuel : Nat := 1
def small_6782481_left_count : Nat := 1
def small_6782481_left_encoded : String := "00000000"
theorem small_6782481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6782481_left_root small_6782481_left_fuel small_6782481_left_count small_6782481_left_encoded = true := by
  decide +kernel
theorem small_6782481_left_covered : CoveredBy scale carrier boxes small_6782481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6782481_left_root small_6782481_left_fuel small_6782481_left_count small_6782481_left_encoded small_6782481_left_checked

theorem cover_6782481 : CoveredBy scale carrier boxes root_6782481 := by
  apply coveredBy_split_literal root_6782481 small_6782481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782487 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6782481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782487
#print axioms cover_6782481

def root_6781403 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6781403 : CoveredBy scale carrier boxes root_6781403 := by
  apply coveredBy_split_literal root_6781403 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2551.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6782481 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2551.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6782481
#print axioms cover_6781403

def root_6781398 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781398_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781398_right_fuel : Nat := 1
def small_6781398_right_count : Nat := 1
def small_6781398_right_encoded : String := "00000004"
theorem small_6781398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781398_right_root small_6781398_right_fuel small_6781398_right_count small_6781398_right_encoded = true := by
  decide +kernel
theorem small_6781398_right_covered : CoveredBy scale carrier boxes small_6781398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781398_right_root small_6781398_right_fuel small_6781398_right_count small_6781398_right_encoded small_6781398_right_checked

theorem cover_6781398 : CoveredBy scale carrier boxes root_6781398 := by
  apply coveredBy_split_literal root_6781398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781403 small_6781398_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781403
  · exact small_6781398_right_covered
#print axioms cover_6781398

def root_6781397 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781397_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781397_right_fuel : Nat := 23
def small_6781397_right_count : Nat := 225
def small_6781397_right_encoded : String := "135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC0000000A128A410700000003028000FE13D7ED09067ECE770000000812EA5900000000000B4D44020000000A000000080000000400000008000000020F878CFB00000002078000FC0000000A128A410700000003028000FE13D7ED09067ECE7712EA9500000000080000000012EA590000000000000000050000000400000005000000010F878CF9000000010C9A8704000000080F878CFB00000002078000FC0000000800000005000000020F34D104000000020C9A87020F8750F9078000FC128A7D07028000FE13D7ED09067ECE770000000812EA59000000000000000005000000040000000500000003000000050000000100000005000000010F34D102000000010CFD9BFB0F350D040000000800000002000000080000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A45770000000A13E1C500000000000B4D44020000000A10804CF9000000010B4D4404108010FB0000000A000000020000000A0000000413D7B10900000004022A45770000000813E1C500000000000000000A00000003128A410700000003028000FE13D7ED09022A457713E201000B4D4402108010F90B4D4404108010FB0000000A000000020000000A0000000110804CF9000000010B4D4404108010FB064000FC000000080000000500000002000000050000000013E1C500000000000B4D4402108010F90B4D44040000000610804CFB00000002000000060000000110804CF9000000010B4D4404108010FB0000000600000002000000050000000400000005000000020F878CFB00000002078000FC128A7D07028000FE13D7ED09022A45770000000A13E1C500000000000B4D44020000000A10804CF9000000010DE7CA040E5FD8FB0000000A000000020000000500000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB078000FC128A7D07028000FE13D7ED09022A45770000000813E1C500000000000DE7CA020E5FD8F90B4D44040000000810804CFB0000000208C000FC00000008000000050000000100000008000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D1020000000100000005"
theorem small_6781397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781397_right_root small_6781397_right_fuel small_6781397_right_count small_6781397_right_encoded = true := by
  decide +kernel
theorem small_6781397_right_covered : CoveredBy scale carrier boxes small_6781397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781397_right_root small_6781397_right_fuel small_6781397_right_count small_6781397_right_encoded small_6781397_right_checked

theorem cover_6781397 : CoveredBy scale carrier boxes root_6781397 := by
  apply coveredBy_split_literal root_6781397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781398 small_6781397_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781398
  · exact small_6781397_right_covered
#print axioms cover_6781397

def root_6781392 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781392_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781392_right_fuel : Nat := 1
def small_6781392_right_count : Nat := 1
def small_6781392_right_encoded : String := "00000003"
theorem small_6781392_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781392_right_root small_6781392_right_fuel small_6781392_right_count small_6781392_right_encoded = true := by
  decide +kernel
theorem small_6781392_right_covered : CoveredBy scale carrier boxes small_6781392_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781392_right_root small_6781392_right_fuel small_6781392_right_count small_6781392_right_encoded small_6781392_right_checked

theorem cover_6781392 : CoveredBy scale carrier boxes root_6781392 := by
  apply coveredBy_split_literal root_6781392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781397 small_6781392_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781397
  · exact small_6781392_right_covered
#print axioms cover_6781392

def root_6781391 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781391_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781391_right_fuel : Nat := 27
def small_6781391_right_count : Nat := 315
def small_6781391_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE00000009128A410900000004067ECE770000000712EA5900000000000B4D4402108010F90B4D440400000009000000070000000110804CF9000000010B4D440400000009000000050000000313D7B1070000000300000007000000020F878CFB0000000200000007000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE00000009128A410900000004067ECE7712EA9500000000070000000012EA590000000000000000050000000313D7B10700000003078000FE0000000700000005000000020F878CFB00000002028000FC13D7ED07078000FE00000007000000050000000300000005000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB028000FC13D7ED07078000FE128A7D09067ECE770000000712EA59000000000000000005000000040000000500000003000000050000000200000005000000020F34D10400000002000000050000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000B4D4402108010F90B4D44040000000610804CFB0000000200000009000000010000000900000004128A410900000004022A457713E201000B4D4402108010F90B4D4404108010FB000000090000000210804CFB0000000203C000FC13A54D07064000FE000000070000000500000003000000050000000110804CF9000000010B4D440400000009000000050000000013E1C500000000000B4D4402108010F90B4D44040000000610804CFB00000002000000060000000110804CF9000000010B4D4404108010FB0000000600000002000000050000000313D7B10700000003078000FE128A7D09022A45770000000713E1C50000000000000000090000000400000005000000020F878CFB00000002028000FC13D7ED07078000FE128A7D09022A45770000000713E1C500000000000B4D4402108010F90DE7CA040E5FD8FB0000000700000002000000070000000110804CF9000000010DE7CA040E5FD8FB03C000FC13A54D0708C000FE00000007000000050000000300000005000000020000000500000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000DE7CA020E5FD8F9000000090000000100000009000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D102000000010000000500000004135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07028000FE13D7ED09067ECE7712EA95000B4D440200000007000000050000000012EA5900000000000B4D4402108010F90B4D4404108010FB03C000FC0000000A00000005000000020000000500000001000000050000000400000005000000030000000500000002000000050000000100000005000000020F34D1040000000200000005000000010F34D102000000010000000500000000138671000000000000000005"
theorem small_6781391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781391_right_root small_6781391_right_fuel small_6781391_right_count small_6781391_right_encoded = true := by
  decide +kernel
theorem small_6781391_right_covered : CoveredBy scale carrier boxes small_6781391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781391_right_root small_6781391_right_fuel small_6781391_right_count small_6781391_right_encoded small_6781391_right_checked

theorem cover_6781391 : CoveredBy scale carrier boxes root_6781391 := by
  apply coveredBy_split_literal root_6781391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781392 small_6781391_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781392
  · exact small_6781391_right_covered
#print axioms cover_6781391

def root_6781386 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781386_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781386_right_fuel : Nat := 1
def small_6781386_right_count : Nat := 1
def small_6781386_right_encoded : String := "00000002"
theorem small_6781386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781386_right_root small_6781386_right_fuel small_6781386_right_count small_6781386_right_encoded = true := by
  decide +kernel
theorem small_6781386_right_covered : CoveredBy scale carrier boxes small_6781386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781386_right_root small_6781386_right_fuel small_6781386_right_count small_6781386_right_encoded small_6781386_right_checked

theorem cover_6781386 : CoveredBy scale carrier boxes root_6781386 := by
  apply coveredBy_split_literal root_6781386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781391 small_6781386_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781391
  · exact small_6781386_right_covered
#print axioms cover_6781386

def root_6781385 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781385_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781385_right_fuel : Nat := 21
def small_6781385_right_count : Nat := 63
def small_6781385_right_encoded : String := "1207010400000002050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350D02045489FB1386AD040C9A8702000000070F878CF9000000010000000700000002138671040000000200000007000000010F34D10200000001000000050000000013867100000000000CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9078000FC128A7D07078000FE128A7D09022A45770000000713E1C50000000000067ECE7B000000070000000700000004000000050000000300000005000000010000000500000002138671040000000200000005000000010F34D102000000010000000500000004000000050000000300000005"
theorem small_6781385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781385_right_root small_6781385_right_fuel small_6781385_right_count small_6781385_right_encoded = true := by
  decide +kernel
theorem small_6781385_right_covered : CoveredBy scale carrier boxes small_6781385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781385_right_root small_6781385_right_fuel small_6781385_right_count small_6781385_right_encoded small_6781385_right_checked

theorem cover_6781385 : CoveredBy scale carrier boxes root_6781385 := by
  apply coveredBy_split_literal root_6781385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781386 small_6781385_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781386
  · exact small_6781385_right_covered
#print axioms cover_6781385

def root_6781380 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781380_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781380_right_fuel : Nat := 1
def small_6781380_right_count : Nat := 1
def small_6781380_right_encoded : String := "00000001"
theorem small_6781380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781380_right_root small_6781380_right_fuel small_6781380_right_count small_6781380_right_encoded = true := by
  decide +kernel
theorem small_6781380_right_covered : CoveredBy scale carrier boxes small_6781380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781380_right_root small_6781380_right_fuel small_6781380_right_count small_6781380_right_encoded small_6781380_right_checked

theorem cover_6781380 : CoveredBy scale carrier boxes root_6781380 := by
  apply coveredBy_split_literal root_6781380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781385 small_6781380_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781385
  · exact small_6781380_right_covered
#print axioms cover_6781380

def root_6781379 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781379_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781379_right_fuel : Nat := 23
def small_6781379_right_count : Nat := 71
def small_6781379_right_encoded : String := "120701020000000108A912FB12073D04050000FC135D8107050000FE135D8109045489F71386AD00045489F91386AD020CFD9BFB0F350D040C9A8704000000080F878CFB000000020000000800000002000000080000000113867102000000010CFD9BFB0F350D04000000080000000200000008000000001386710000000000045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D09022A45770000000813E1C50000000000067ECE790000000800000008000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000011386710200000001000000050000000400000005000000030000000500000002120701040000000200000005"
theorem small_6781379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781379_right_root small_6781379_right_fuel small_6781379_right_count small_6781379_right_encoded = true := by
  decide +kernel
theorem small_6781379_right_covered : CoveredBy scale carrier boxes small_6781379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781379_right_root small_6781379_right_fuel small_6781379_right_count small_6781379_right_encoded small_6781379_right_checked

theorem cover_6781379 : CoveredBy scale carrier boxes root_6781379 := by
  apply coveredBy_split_literal root_6781379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781380 small_6781379_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781380
  · exact small_6781379_right_covered
#print axioms cover_6781379

def root_6781373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6781373_left_fuel : Nat := 1
def small_6781373_left_count : Nat := 1
def small_6781373_left_encoded : String := "00000000"
theorem small_6781373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6781373_left_root small_6781373_left_fuel small_6781373_left_count small_6781373_left_encoded = true := by
  decide +kernel
theorem small_6781373_left_covered : CoveredBy scale carrier boxes small_6781373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6781373_left_root small_6781373_left_fuel small_6781373_left_count small_6781373_left_encoded small_6781373_left_checked

theorem cover_6781373 : CoveredBy scale carrier boxes root_6781373 := by
  apply coveredBy_split_literal root_6781373 small_6781373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781379 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6781373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781379
#print axioms cover_6781373

def root_6780705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780705_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780705_left_fuel : Nat := 27
def small_6780705_left_count : Nat := 315
def small_6780705_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040C9A87000F8750F700000007000000000F878CF7000000000C9A87020F8750F90C9A870400000008000000070000000100000008000000020F34D1040000000200000007000000010F34D1020000000100000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC128A7D07078000FE128A7D090AD357770000000710D10100000000000B4D44020000000500000008000000040000000800000003128A410700000003078000FE00000007128A4109000000040AD357770000000710D101000000000000000007000000020F878CFB00000002078000FC128A7D07078000FE00000007128A410900000004000000080000000300000007000000010F878CF9000000010C9A87040F8750FB078000FC00000008128A410700000003078000FE128A7D09000000070000000400000008000000020F878CFB00000002078000FC128A7D07000000080000000300000007000000020F34D104000000020C9A8702000000070F878CF90000000100000007000000010F34D102000000010CFD9BFB0F350D040C9A8704000000080F878CFB0000000200000008000000020000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90000000800000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A8704000000080F878CFB00000002000000080000000100000008000000020F34D104000000020C9A87020F8750F9000000080000000100000008000000010F34D102000000010000000800000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D02000000070000000100000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A8702000000070F878CF900000001000000070000000200000007000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB000000070000000200000007000000020000000700000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9BFB00000007000000070000000100000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC00000008000000070000000200000007000000010F878CF90000000100000008000000020F34D1040000000200000005000000010F34D1020000000100000005000000021207010400000002050000FC135D8107050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90F350D0200000007000000010000000700000004135D4509000000040CFD9BF7000000080F34D100000000000CFD9BF9000000080000000700000003135D450700000003050000FE000000070000000700000001120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9BF7000000060F34D10000000000045489F90000000800000008000000040000000800000003135D450700000003050000FE135D81090CFD9BF7000000070F34D10000000000045489F91386AD020CFD9BFB000000070000000700000001000000070000000400000008000000021207010400000002050000FC000000060000000500000000"
theorem small_6780705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6780705_left_root small_6780705_left_fuel small_6780705_left_count small_6780705_left_encoded = true := by
  decide +kernel
theorem small_6780705_left_covered : CoveredBy scale carrier boxes small_6780705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6780705_left_root small_6780705_left_fuel small_6780705_left_count small_6780705_left_encoded small_6780705_left_checked

theorem cover_6780705 : CoveredBy scale carrier boxes root_6780705 := by
  apply coveredBy_split_literal root_6780705 small_6780705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6781373 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6780705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6781373
#print axioms cover_6780705

def root_6780699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780699_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6780699_left_fuel : Nat := 1
def small_6780699_left_count : Nat := 1
def small_6780699_left_encoded : String := "00000004"
theorem small_6780699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6780699_left_root small_6780699_left_fuel small_6780699_left_count small_6780699_left_encoded = true := by
  decide +kernel
theorem small_6780699_left_covered : CoveredBy scale carrier boxes small_6780699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6780699_left_root small_6780699_left_fuel small_6780699_left_count small_6780699_left_encoded small_6780699_left_checked

theorem cover_6780699 : CoveredBy scale carrier boxes root_6780699 := by
  apply coveredBy_split_literal root_6780699 small_6780699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6780705 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6780699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6780705
#print axioms cover_6780699

def root_6775821 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6775821 : CoveredBy scale carrier boxes root_6775821 := by
  apply coveredBy_split_literal root_6775821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6775822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6780699 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6775822
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6780699
#print axioms cover_6775821

def root_6775815 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775815_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775815_left_fuel : Nat := 1
def small_6775815_left_count : Nat := 1
def small_6775815_left_encoded : String := "00000003"
theorem small_6775815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775815_left_root small_6775815_left_fuel small_6775815_left_count small_6775815_left_encoded = true := by
  decide +kernel
theorem small_6775815_left_covered : CoveredBy scale carrier boxes small_6775815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775815_left_root small_6775815_left_fuel small_6775815_left_count small_6775815_left_encoded small_6775815_left_checked

theorem cover_6775815 : CoveredBy scale carrier boxes root_6775815 := by
  apply coveredBy_split_literal root_6775815 small_6775815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6775821 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6775815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6775821
#print axioms cover_6775815

def root_6758899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6758899 : CoveredBy scale carrier boxes root_6758899 := by
  apply coveredBy_split_literal root_6758899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6758900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6775815 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6758900
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6775815
#print axioms cover_6758899

def root_6758893 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758893_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758893_left_fuel : Nat := 1
def small_6758893_left_count : Nat := 1
def small_6758893_left_encoded : String := "00000002"
theorem small_6758893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6758893_left_root small_6758893_left_fuel small_6758893_left_count small_6758893_left_encoded = true := by
  decide +kernel
theorem small_6758893_left_covered : CoveredBy scale carrier boxes small_6758893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6758893_left_root small_6758893_left_fuel small_6758893_left_count small_6758893_left_encoded small_6758893_left_checked

theorem cover_6758893 : CoveredBy scale carrier boxes root_6758893 := by
  apply coveredBy_split_literal root_6758893 small_6758893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6758899 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6758893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6758899
#print axioms cover_6758893

def root_6753963 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6753963 : CoveredBy scale carrier boxes root_6753963 := by
  apply coveredBy_split_literal root_6753963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6753964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6758893 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6753964
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6758893
#print axioms cover_6753963

def root_6753957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753957_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753957_left_fuel : Nat := 1
def small_6753957_left_count : Nat := 1
def small_6753957_left_encoded : String := "00000001"
theorem small_6753957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6753957_left_root small_6753957_left_fuel small_6753957_left_count small_6753957_left_encoded = true := by
  decide +kernel
theorem small_6753957_left_covered : CoveredBy scale carrier boxes small_6753957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6753957_left_root small_6753957_left_fuel small_6753957_left_count small_6753957_left_encoded small_6753957_left_checked

theorem cover_6753957 : CoveredBy scale carrier boxes root_6753957 := by
  apply coveredBy_split_literal root_6753957 small_6753957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6753963 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6753957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6753963
#print axioms cover_6753957

def root_6746355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6746355 : CoveredBy scale carrier boxes root_6746355 := by
  apply coveredBy_split_literal root_6746355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6746356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6753957 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6746356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6753957
#print axioms cover_6746355

def root_6746349 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746349_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746349_left_fuel : Nat := 1
def small_6746349_left_count : Nat := 1
def small_6746349_left_encoded : String := "00000000"
theorem small_6746349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6746349_left_root small_6746349_left_fuel small_6746349_left_count small_6746349_left_encoded = true := by
  decide +kernel
theorem small_6746349_left_covered : CoveredBy scale carrier boxes small_6746349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6746349_left_root small_6746349_left_fuel small_6746349_left_count small_6746349_left_encoded small_6746349_left_checked

theorem cover_6746349 : CoveredBy scale carrier boxes root_6746349 := by
  apply coveredBy_split_literal root_6746349 small_6746349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6746355 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6746349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6746355
#print axioms cover_6746349

def root_6743271 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6743271 : CoveredBy scale carrier boxes root_6743271 := by
  apply coveredBy_split_literal root_6743271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2539.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6746349 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2539.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6746349
#print axioms cover_6743271

def root_6735417 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735417 : CoveredBy scale carrier boxes root_6735417 := by
  apply coveredBy_split_literal root_6735417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6735418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6743271 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6735418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6743271
#print axioms cover_6735417

def root_6797662 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6797662 : CoveredBy scale carrier boxes root_6797662 := by
  apply coveredBy_split_literal root_6797662 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2557.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2558.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2557.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2558.covered
#print axioms cover_6797662

def root_6797656 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6797656_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6797656_left_fuel : Nat := 1
def small_6797656_left_count : Nat := 1
def small_6797656_left_encoded : String := "00000000"
theorem small_6797656_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6797656_left_root small_6797656_left_fuel small_6797656_left_count small_6797656_left_encoded = true := by
  decide +kernel
theorem small_6797656_left_covered : CoveredBy scale carrier boxes small_6797656_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6797656_left_root small_6797656_left_fuel small_6797656_left_count small_6797656_left_encoded small_6797656_left_checked

theorem cover_6797656 : CoveredBy scale carrier boxes root_6797656 := by
  apply coveredBy_split_literal root_6797656 small_6797656_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6797662 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6797656_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6797662
#print axioms cover_6797656

def root_6795856 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6795856 : CoveredBy scale carrier boxes root_6795856 := by
  apply coveredBy_split_literal root_6795856 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2556.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6797656 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2556.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6797656
#print axioms cover_6795856

def root_6793360 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6793360 : CoveredBy scale carrier boxes root_6793360 := by
  apply coveredBy_split_literal root_6793360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2555.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6795856 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2555.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6795856
#print axioms cover_6793360

def root_6735416 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735416 : CoveredBy scale carrier boxes root_6735416 := by
  apply coveredBy_split_literal root_6735416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6735417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6793360 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6735417
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6793360
#print axioms cover_6735416

def root_6684592 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684592 : CoveredBy scale carrier boxes root_6684592 := by
  apply coveredBy_split_literal root_6684592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6684593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6735416 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6684593
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6735416
#print axioms cover_6684592

def root_6801815 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801815_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801815_left_fuel : Nat := 19
def small_6801815_left_count : Nat := 363
def small_6801815_left_encoded : String := "0A0001001151E8F70A0001021151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD000000051207010600000003000000051151E8FF000000050000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F90000000A12070102000000010000000A1151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FB0000000512070104000000020000000500000001120701020000000108A912FB000000051207010400000002000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD0000000512070106000000030000000500000001120701020000000108A912FB0000000A1207010400000002000000051151E8FF000000050000000400000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FD000000050000000600000000120701000000000008A912FD000000051207010600000003000000051151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB0000000512070104000000020000000500000000120701000000000008A912FB000000051207010400000002000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD0000000512070106000000030000000500000000120701000000000008A912FB12073D0408A912FD00000005120701060000000300000005000000021207010400000002000000051151E8FF000000050000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F90000000512070102000000010000000500000000120701000000000008A912F9000000051207010200000001000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FD000000051207010600000003000000050000000112070102000000010000000A00000000120701000000000008A912F912073D0208A912FD00000005120701060000000300000005000000011207010200000001000000051151E8FF000000050000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000800000000120701000000000008A912F912073D0208A912FB00000005120701040000000200000005000000011207010200000001000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073D0408A912FD000000051207010600000003000000050000000212070104000000020000000500000001120701020000000108A912FB0000000512070104000000020000000500000000120701000000000008A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000500000005"
theorem small_6801815_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6801815_left_root small_6801815_left_fuel small_6801815_left_count small_6801815_left_encoded = true := by
  decide +kernel
theorem small_6801815_left_covered : CoveredBy scale carrier boxes small_6801815_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6801815_left_root small_6801815_left_fuel small_6801815_left_count small_6801815_left_encoded small_6801815_left_checked

theorem cover_6801815 : CoveredBy scale carrier boxes root_6801815 := by
  apply coveredBy_split_literal root_6801815 small_6801815_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2559.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_6801815_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2559.covered
#print axioms cover_6801815

def root_6801814 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801814_right_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6801814_right_fuel : Nat := 16
def small_6801814_right_count : Nat := 221
def small_6801814_right_encoded : String := "000001090A0001001151E8F70A0001021151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002115224FB000000020A0001061151E8FD00000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD00000005000000030000000500000002000000050A0001001151E8F70A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E9090000000408A912FD000000051207010600000003000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E90900000004000000080000000500000003115224FD000000030A0001081151E90900000004000000080000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E9090000000408A912F9000000051207010200000001000000050000000500000003115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD00000005120701060000000300000005000000011207010200000001000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912F912073D0208A912FB000000051207010400000002000000050000000112070102000000010000000500000005000000030000000500000000115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0A0001081151E90900000004000000060000000500000003115224FD000000030A0001081151E9090000000408A912F712073D0008A912FD00000005120701060000000300000005000000001207010000000000000000050000000500000002115224FB000000020A0001061151E8FD0A0001081151E909000000040000000600000005000000030000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E90900000004000000060000000500000003000000050000000200000005"
theorem small_6801814_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6801814_right_root small_6801814_right_fuel small_6801814_right_count small_6801814_right_encoded = true := by
  decide +kernel
theorem small_6801814_right_covered : CoveredBy scale carrier boxes small_6801814_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6801814_right_root small_6801814_right_fuel small_6801814_right_count small_6801814_right_encoded small_6801814_right_checked

theorem cover_6801814 : CoveredBy scale carrier boxes root_6801814 := by
  apply coveredBy_split_literal root_6801814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6801815 small_6801814_right_root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6801815
  · exact small_6801814_right_covered
#print axioms cover_6801814

def root_6809008 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6809008 : CoveredBy scale carrier boxes root_6809008 := by
  apply coveredBy_split_literal root_6809008 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2562.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2563.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2562.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2563.covered
#print axioms cover_6809008

def root_6809002 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6809002_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6809002_left_fuel : Nat := 1
def small_6809002_left_count : Nat := 1
def small_6809002_left_encoded : String := "00000000"
theorem small_6809002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6809002_left_root small_6809002_left_fuel small_6809002_left_count small_6809002_left_encoded = true := by
  decide +kernel
theorem small_6809002_left_covered : CoveredBy scale carrier boxes small_6809002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6809002_left_root small_6809002_left_fuel small_6809002_left_count small_6809002_left_encoded small_6809002_left_checked

theorem cover_6809002 : CoveredBy scale carrier boxes root_6809002 := by
  apply coveredBy_split_literal root_6809002 small_6809002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6809008 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6809002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6809008
#print axioms cover_6809002

def root_6807204 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6807204 : CoveredBy scale carrier boxes root_6807204 := by
  apply coveredBy_split_literal root_6807204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2561.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6809002 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2561.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6809002
#print axioms cover_6807204

def root_6805548 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6805548 : CoveredBy scale carrier boxes root_6805548 := by
  apply coveredBy_split_literal root_6805548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2560.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6807204 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2560.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6807204
#print axioms cover_6805548

def root_6805547 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6805547 : CoveredBy scale carrier boxes root_6805547 := by
  apply coveredBy_split_literal root_6805547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6805548 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2564.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6805548
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2564.covered
#print axioms cover_6805547

def root_6801813 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6801813 : CoveredBy scale carrier boxes root_6801813 := by
  apply coveredBy_split_literal root_6801813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6801814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6805547 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6801814
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6805547
#print axioms cover_6801813

def root_6684591 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684591 : CoveredBy scale carrier boxes root_6684591 := by
  apply coveredBy_split_literal root_6684591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6684592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6801813 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6684592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6801813
#print axioms cover_6684591

def root_6815214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815214 : CoveredBy scale carrier boxes root_6815214 := by
  apply coveredBy_split_literal root_6815214 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2565.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2566.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2565.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2566.covered
#print axioms cover_6815214

def root_6820245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820245_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820245_left_fuel : Nat := 24
def small_6820245_left_count : Nat := 335
def small_6820245_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073CFC0000000308A91309120700FE0000000500000004000000050000000500000001120701020000000108A912FD12073CFC0000000308A91309000000060000000500000005000000041151E9090000000408A912F912073D0208A912FD12073CFC000000030500010000000005135D80F7000000000500010400000005135D8105050000FE00000005135D4509000000040CFD9BF90F350D0200000005000000010F34D102000000010CFD9BFD0F350CFC000000030C9A86FC000000050F8750FD00000006000000030000000500000002120700FC000000050000000300000001120701020000000108A912FD12073CFC000000030500010000000005135D80F700000000050001040000000500000006000000061151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE05000100135D44F705000104135D45050000000200000005135D8105050000FC00000006135D44FD0CFD9BF9000000070F34D1020000000100000006000000030000000200000000135D80F70000000005000104135D45050000000200000007135D8105050000FC0000000600000007000000020000000412073CFE0000000405000100135D44F705000104135D45050000000200000005135D8105050000FC135D80FD0000000300000005000000090000000200000000135D80F70000000005000104135D450500000002050000FC0000000500000009135D8105050000FC135D80FD000000030CFD9BF90F350D020CFD9C090000000700000005000000010F34D1020000000100000006135D44FD0CFD9BF9000000090F34D102000000010CFD9C090000000700000009000000030000000200000001120701020000000108A91309120700FE000000060000000412073CFE0000000405000100135D44F705000104000000050000000600000000135D80F70000000005000104135D4505000000020000000600000006000000041151E9090000000408A912F912073D0205000100135D44F70500010400000009135D8105050000FC135D80FD00000003050000FE00000005135D45090000000400000009000000090000000200000000135D80F70000000005000104135D450500000002050000FC135D80FD00000003050000FE00000005135D4509000000040000000900000009135D8105050000FC135D80FD00000003050000FE135D81090CFD9BF9000000090F34D1020000000107800100000000050000000600000004135D4509000000040CFD9BF9000000090F34D1020000000107800100128A40F707800104128A410500000002000000090000000700000000128A7CF70000000007800104128A410500000002078000FC128A7CFD000000030000000600000007128A7D05078000FC000000060000000700000002135D44FD050000FE00000009135D45090000000400000009000000030000000200000001120701020000000105000100135D44F7050001040000000A135D8105050000FC135D80FD00000003050000FE000000050000000A135D44FD050000FE135D81090000000A0000000400000007000000030000000200000000135D80F70000000005000104135D450500000002050000FC135D80FD00000003050000FE000000050000000A135D44FD050000FE135D8109045489F90000000900000006000000040000000A00000003135D8105050000FC135D80FD00000003050000FE00000006135D45090000000400000006135D44FD050000FE135D8109045489F900000007000000060000000400000007000000030000000200000003"
theorem small_6820245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6820245_left_root small_6820245_left_fuel small_6820245_left_count small_6820245_left_encoded = true := by
  decide +kernel
theorem small_6820245_left_covered : CoveredBy scale carrier boxes small_6820245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6820245_left_root small_6820245_left_fuel small_6820245_left_count small_6820245_left_encoded small_6820245_left_checked

theorem cover_6820245 : CoveredBy scale carrier boxes root_6820245 := by
  apply coveredBy_split_literal root_6820245 small_6820245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2568.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6820245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2568.covered
#print axioms cover_6820245

def root_6820239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6820239_left_fuel : Nat := 1
def small_6820239_left_count : Nat := 1
def small_6820239_left_encoded : String := "00000001"
theorem small_6820239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6820239_left_root small_6820239_left_fuel small_6820239_left_count small_6820239_left_encoded = true := by
  decide +kernel
theorem small_6820239_left_covered : CoveredBy scale carrier boxes small_6820239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6820239_left_root small_6820239_left_fuel small_6820239_left_count small_6820239_left_encoded small_6820239_left_checked

theorem cover_6820239 : CoveredBy scale carrier boxes root_6820239 := by
  apply coveredBy_split_literal root_6820239 small_6820239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6820245 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6820239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6820245
#print axioms cover_6820239

def root_6819139 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6819139 : CoveredBy scale carrier boxes root_6819139 := by
  apply coveredBy_split_literal root_6819139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2567.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6820239 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2567.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6820239
#print axioms cover_6819139

def root_6819134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6819134_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6819134_right_fuel : Nat := 1
def small_6819134_right_count : Nat := 1
def small_6819134_right_encoded : String := "00000000"
theorem small_6819134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6819134_right_root small_6819134_right_fuel small_6819134_right_count small_6819134_right_encoded = true := by
  decide +kernel
theorem small_6819134_right_covered : CoveredBy scale carrier boxes small_6819134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6819134_right_root small_6819134_right_fuel small_6819134_right_count small_6819134_right_encoded small_6819134_right_checked

theorem cover_6819134 : CoveredBy scale carrier boxes root_6819134 := by
  apply coveredBy_split_literal root_6819134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6819139 small_6819134_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6819139
  · exact small_6819134_right_covered
#print axioms cover_6819134

def root_6827081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827081_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827081_right_fuel : Nat := 23
def small_6827081_right_count : Nat := 167
def small_6827081_right_encoded : String := "120701000000000008A912F912073D0205000104135D450500000002050000FC135D80FD00000003050000FE00000008135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D102000000010280010413D7B10500000002078000FC128A7CFD000000030000000800000008000000080000000000000008135D44FD050000FE00000008135D450900000004045489F71386AD000CFD9BF90000000800000008000000000000000800000003135D8105050000FC135D80FD00000003050000FE00000008135D45090000000400000008000000080000000200000001120701020000000105000104135D450500000002050000FC135D80FD00000003050000FE135D8109045489F7000000060000000800000004135D450900000004045489F71386AD00045489F91386AD020280010413D7B10500000002078000FC00000006128A40FD028000FE0000000600000009000000030000000900000001000000060000000000000009135D44FD050000FE135D8109045489F71386AD00045489F90000000800000006000000000000000800000004135D450900000004045489F71386AD00045489F91386AD020280010413D7B10500000002028000FC13D7ECFD00000003028000FE0000000813D7B10900000004067ECE7712EA9500067ECE790000000800000006000000000000000813D7B0FD028000FE00000008000000050000000313D7ED05028000FC0000000800000005000000020000000113867102000000010280010413D7B10500000002028000FC000000060000000500000005000000001386710000000000045489F9000000080000000800000003135D8105050000FC135D80FD00000003050000FE0000000800000009135D44FD050000FE00000008000000050000000300000002"
theorem small_6827081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6827081_right_root small_6827081_right_fuel small_6827081_right_count small_6827081_right_encoded = true := by
  decide +kernel
theorem small_6827081_right_covered : CoveredBy scale carrier boxes small_6827081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6827081_right_root small_6827081_right_fuel small_6827081_right_count small_6827081_right_encoded small_6827081_right_checked

theorem cover_6827081 : CoveredBy scale carrier boxes root_6827081 := by
  apply coveredBy_split_literal root_6827081 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2571.root small_6827081_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2571.covered
  · exact small_6827081_right_covered
#print axioms cover_6827081

def root_6827075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6827075_left_fuel : Nat := 1
def small_6827075_left_count : Nat := 1
def small_6827075_left_encoded : String := "00000004"
theorem small_6827075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6827075_left_root small_6827075_left_fuel small_6827075_left_count small_6827075_left_encoded = true := by
  decide +kernel
theorem small_6827075_left_covered : CoveredBy scale carrier boxes small_6827075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6827075_left_root small_6827075_left_fuel small_6827075_left_count small_6827075_left_encoded small_6827075_left_checked

theorem cover_6827075 : CoveredBy scale carrier boxes root_6827075 := by
  apply coveredBy_split_literal root_6827075 small_6827075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6827081 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6827075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6827081
#print axioms cover_6827075

def root_6826695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826695_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826695_left_fuel : Nat := 20
def small_6826695_left_count : Nat := 175
def small_6826695_left_encoded : String := "1152250908A912F712073D0008A912F912073D0208A91309120700FE05000104135D450500000002050000FC135D80FD000000030CFD9BF7000000060000000500000008135D8105050000FC135D80FD000000030CFD9BF7000000060F34D1000000000000000006135D44FD0000000800000003000000020000000412073CFE0000000405000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D02000000050000000100000005000000000F34D100000000000CFD9BF90000000800000008135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000009000000010F34D102000000010CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F700000009000000000F878CF70000000000000008000000000F34D100000000000000000800000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090000000800000008000000010F34D102000000010CFD9C090000000600000006000000000F34D1000000000000000008135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C090000000700000008000000000F34D1000000000000000008000000030000000200000001120701020000000108A91309120700FE000000060000000412073CFE0000000405000104135D450500000002050000FC00000006135D44FD0CFD9BF7000000060F34D100000000000000000600000003135D8105050000FC00000006135D44FD0CFD9BF7000000060F34D1000000000000000006000000030000000200000000120701000000000008A912F912073D0208A91309120700FE00000008000000040000000800000001120701020000000108A913090000000812073CFE0000000405000104135D450500000002050000FC00000006000000080000000800000004"
theorem small_6826695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6826695_left_root small_6826695_left_fuel small_6826695_left_count small_6826695_left_encoded = true := by
  decide +kernel
theorem small_6826695_left_covered : CoveredBy scale carrier boxes small_6826695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6826695_left_root small_6826695_left_fuel small_6826695_left_count small_6826695_left_encoded small_6826695_left_checked

theorem cover_6826695 : CoveredBy scale carrier boxes root_6826695 := by
  apply coveredBy_split_literal root_6826695 small_6826695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6827075 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6826695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6827075
#print axioms cover_6826695

def root_6826690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826690_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6826690_right_fuel : Nat := 1
def small_6826690_right_count : Nat := 1
def small_6826690_right_encoded : String := "00000003"
theorem small_6826690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6826690_right_root small_6826690_right_fuel small_6826690_right_count small_6826690_right_encoded = true := by
  decide +kernel
theorem small_6826690_right_covered : CoveredBy scale carrier boxes small_6826690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6826690_right_root small_6826690_right_fuel small_6826690_right_count small_6826690_right_encoded small_6826690_right_checked

theorem cover_6826690 : CoveredBy scale carrier boxes root_6826690 := by
  apply coveredBy_split_literal root_6826690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6826695 small_6826690_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6826695
  · exact small_6826690_right_covered
#print axioms cover_6826690

def root_6825372 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6825372 : CoveredBy scale carrier boxes root_6825372 := by
  apply coveredBy_split_literal root_6825372 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2570.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6826690 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2570.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6826690
#print axioms cover_6825372

def root_6825366 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825366_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825366_left_fuel : Nat := 1
def small_6825366_left_count : Nat := 1
def small_6825366_left_encoded : String := "00000002"
theorem small_6825366_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6825366_left_root small_6825366_left_fuel small_6825366_left_count small_6825366_left_encoded = true := by
  decide +kernel
theorem small_6825366_left_covered : CoveredBy scale carrier boxes small_6825366_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6825366_left_root small_6825366_left_fuel small_6825366_left_count small_6825366_left_encoded small_6825366_left_checked

theorem cover_6825366 : CoveredBy scale carrier boxes root_6825366 := by
  apply coveredBy_split_literal root_6825366 small_6825366_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6825372 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6825366_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6825372
#print axioms cover_6825366

def root_6830436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830436_right_fuel : Nat := 29
def small_6830436_right_count : Nat := 489
def small_6830436_right_encoded : String := "1151E8FD0A0000FE1152250908A912F712073D0008A912F912073D0208A91305120701040000000208A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D02000000080000000100000008000000000F34D100000000000000000800000008000000040000000812073D0408A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D1020000000100000006000000000F34D100000000000CFD9BF90F350D02000000080000000100000008135D44FD0CFD9BF7000000080F34D1000000000000000008000000030000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D0400000008000000020000000100000008000000000F34D1000000000000000008135D44FD00000008000000030000000200000001120701020000000108A9130512070104000000020000000812073D0408A91309120700FE000000080000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D00045489F91386AD020CFD9C05000000080000000600000001000000060000000000000008135D44FD0CFD9BF70F350D00045489F900000008000000080000000000000008000000030000000200000000120701000000000008A912F912073D0208A91305120701040000000208A91309120700FE00000008000000040000000812073D0408A91309120700FE050000FC135D80FD00000003045489F7000000081386710000000000000000080000000800000004000000080000000200000001120701020000000100000008000000041151E9090000000408A912F712073D0008A912F912073D0208A9130512070104000000020000000812073D04050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D0200000008000000010F34D102000000010CFD9C05000000080F350D040C9A87000F8750F70C9A87040F875105000000020000000600000006000000000000000800000002000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D040C9A87000F8750F70C9A8702000000080F878CF9000000010C9A87040F87510500000002078000FC128A7CFD00000003000000070000000700000007000000000F878CF7000000000000000800000002000000010F34D102000000010CFD9C050F34D10400000002000000080F350D040C9A87000F8750F70C9A87040F87510500000002078000FC128A7CFD0000000300000006000000070F878D05078000FC128A7CFD00000003000000070000000700000002000000000F878CF7000000000C9A87040F87510500000002078000FC128A7CFD00000003028000FE0000000613D7B109000000040AD357790000000800000006128A40FD028000FE0000000813D7B1090000000400000008000000030F878D05000000080000000200000002000000000F34D100000000000CFD9BF90000000800000008135D44FD050000FE135D81090CFD9BF70F350D000CFD9BF90000000800000008000000000000000800000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000080F350D040C9A87000F8750F700000007000000000000000800000002000000010F34D102000000010CFD9C050F34D10400000002000000050F350D040C9A87000F8750F700000007000000000F878CF7000000000C9A87040F87510500000002000000070000000500000002000000000F34D1000000000000000008000000030000000200000001120701020000000108A913051207010400000002050000FC135D80FD00000003000000080000000512073D04050000FC135D80FD00000003050000FE135D81090CFD9BF70F350D00045489F91386AD020CFD9C0500000008000000060000000100000006000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D104000000020C9A87000F8750F70000000600000000000000050F350D040C9A87000F8750F700000006000000000F878CF7000000000C9A87040F875105000000020000000600000006000000020000000113867102000000010CFD9C050F34D104000000020000000500000006000000000F34D10000000000045489F91386AD020CFD9C05000000080F350D040C9A87040000000900000005000000020000000100000009135D44FD050000FE135D81090CFD9BF70F350D00045489F91386AD020CFD9C05000000080F350D040C9A87000F8750F7000000070000000000000008000000020000000113867102000000010CFD9C050000000800000006000000000F34D100000000000000000800000004135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D10400000002000000050F350D040C9A87000F8750F70000000700000000000000050000000200000001138671020000000100000005000000000F34D1000000000000000005000000030000000200000000120701000000000008A912F900000008120701020000000108A913050000000812073D04050000FC00000008000000050000000200000003"
theorem small_6830436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6830436_right_root small_6830436_right_fuel small_6830436_right_count small_6830436_right_encoded = true := by
  decide +kernel
theorem small_6830436_right_covered : CoveredBy scale carrier boxes small_6830436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6830436_right_root small_6830436_right_fuel small_6830436_right_count small_6830436_right_encoded small_6830436_right_checked

theorem cover_6830436 : CoveredBy scale carrier boxes root_6830436 := by
  apply coveredBy_split_literal root_6830436 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2572.root small_6830436_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2572.covered
  · exact small_6830436_right_covered
#print axioms cover_6830436

def root_6830431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830431_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6830431_right_fuel : Nat := 1
def small_6830431_right_count : Nat := 1
def small_6830431_right_encoded : String := "00000002"
theorem small_6830431_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6830431_right_root small_6830431_right_fuel small_6830431_right_count small_6830431_right_encoded = true := by
  decide +kernel
theorem small_6830431_right_covered : CoveredBy scale carrier boxes small_6830431_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6830431_right_root small_6830431_right_fuel small_6830431_right_count small_6830431_right_encoded small_6830431_right_checked

theorem cover_6830431 : CoveredBy scale carrier boxes root_6830431 := by
  apply coveredBy_split_literal root_6830431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6830436 small_6830431_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6830436
  · exact small_6830431_right_covered
#print axioms cover_6830431

def root_6825365 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6825365 : CoveredBy scale carrier boxes root_6825365 := by
  apply coveredBy_split_literal root_6825365 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6825366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6830431 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6825366
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6830431
#print axioms cover_6825365

def root_6825359 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825359_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6825359_left_fuel : Nat := 1
def small_6825359_left_count : Nat := 1
def small_6825359_left_encoded : String := "00000001"
theorem small_6825359_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6825359_left_root small_6825359_left_fuel small_6825359_left_count small_6825359_left_encoded = true := by
  decide +kernel
theorem small_6825359_left_covered : CoveredBy scale carrier boxes small_6825359_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6825359_left_root small_6825359_left_fuel small_6825359_left_count small_6825359_left_encoded small_6825359_left_checked

theorem cover_6825359 : CoveredBy scale carrier boxes root_6825359 := by
  apply coveredBy_split_literal root_6825359 small_6825359_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6825365 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6825359_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6825365
#print axioms cover_6825359

def root_6823705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6823705 : CoveredBy scale carrier boxes root_6823705 := by
  apply coveredBy_split_literal root_6823705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2569.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6825359 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2569.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6825359
#print axioms cover_6823705

def root_6823699 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6823699_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6823699_left_fuel : Nat := 1
def small_6823699_left_count : Nat := 1
def small_6823699_left_encoded : String := "00000000"
theorem small_6823699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6823699_left_root small_6823699_left_fuel small_6823699_left_count small_6823699_left_encoded = true := by
  decide +kernel
theorem small_6823699_left_covered : CoveredBy scale carrier boxes small_6823699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6823699_left_root small_6823699_left_fuel small_6823699_left_count small_6823699_left_encoded small_6823699_left_checked

theorem cover_6823699 : CoveredBy scale carrier boxes root_6823699 := by
  apply coveredBy_split_literal root_6823699 small_6823699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6823705 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6823699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6823705
#print axioms cover_6823699

def root_6819133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6819133 : CoveredBy scale carrier boxes root_6819133 := by
  apply coveredBy_split_literal root_6819133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6819134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6823699 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6819134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6823699
#print axioms cover_6819133

def root_6815213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815213 : CoveredBy scale carrier boxes root_6815213 := by
  apply coveredBy_split_literal root_6815213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6815214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6819133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6815214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6819133
#print axioms cover_6815213

def root_6835378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835378 : CoveredBy scale carrier boxes root_6835378 := by
  apply coveredBy_split_literal root_6835378 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2574.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2575.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2574.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2575.covered
#print axioms cover_6835378

def root_6835373 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835373_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835373_right_fuel : Nat := 1
def small_6835373_right_count : Nat := 1
def small_6835373_right_encoded : String := "00000001"
theorem small_6835373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6835373_right_root small_6835373_right_fuel small_6835373_right_count small_6835373_right_encoded = true := by
  decide +kernel
theorem small_6835373_right_covered : CoveredBy scale carrier boxes small_6835373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6835373_right_root small_6835373_right_fuel small_6835373_right_count small_6835373_right_encoded small_6835373_right_checked

theorem cover_6835373 : CoveredBy scale carrier boxes root_6835373 := by
  apply coveredBy_split_literal root_6835373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6835378 small_6835373_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6835378
  · exact small_6835373_right_covered
#print axioms cover_6835373

def root_6838943 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6838943 : CoveredBy scale carrier boxes root_6838943 := by
  apply coveredBy_split_literal root_6838943 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2576.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2577.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2576.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2577.covered
#print axioms cover_6838943

def root_6838937 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838937_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838937_left_fuel : Nat := 1
def small_6838937_left_count : Nat := 1
def small_6838937_left_encoded : String := "00000002"
theorem small_6838937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6838937_left_root small_6838937_left_fuel small_6838937_left_count small_6838937_left_encoded = true := by
  decide +kernel
theorem small_6838937_left_covered : CoveredBy scale carrier boxes small_6838937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6838937_left_root small_6838937_left_fuel small_6838937_left_count small_6838937_left_encoded small_6838937_left_checked

theorem cover_6838937 : CoveredBy scale carrier boxes root_6838937 := by
  apply coveredBy_split_literal root_6838937 small_6838937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6838943 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6838937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6838943
#print axioms cover_6838937

def root_6842140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6842140 : CoveredBy scale carrier boxes root_6842140 := by
  apply coveredBy_split_literal root_6842140 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2578.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2579.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2578.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2579.covered
#print axioms cover_6842140

def root_6842134 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842134_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842134_left_fuel : Nat := 1
def small_6842134_left_count : Nat := 1
def small_6842134_left_encoded : String := "00000003"
theorem small_6842134_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6842134_left_root small_6842134_left_fuel small_6842134_left_count small_6842134_left_encoded = true := by
  decide +kernel
theorem small_6842134_left_covered : CoveredBy scale carrier boxes small_6842134_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6842134_left_root small_6842134_left_fuel small_6842134_left_count small_6842134_left_encoded small_6842134_left_checked

theorem cover_6842134 : CoveredBy scale carrier boxes root_6842134 := by
  apply coveredBy_split_literal root_6842134 small_6842134_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6842140 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6842134_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6842140
#print axioms cover_6842134

def root_6842133 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6842133 : CoveredBy scale carrier boxes root_6842133 := by
  apply coveredBy_split_literal root_6842133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6842134 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2580.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6842134
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2580.covered
#print axioms cover_6842133

def root_6842128 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842128_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6842128_right_fuel : Nat := 1
def small_6842128_right_count : Nat := 1
def small_6842128_right_encoded : String := "00000002"
theorem small_6842128_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6842128_right_root small_6842128_right_fuel small_6842128_right_count small_6842128_right_encoded = true := by
  decide +kernel
theorem small_6842128_right_covered : CoveredBy scale carrier boxes small_6842128_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6842128_right_root small_6842128_right_fuel small_6842128_right_count small_6842128_right_encoded small_6842128_right_checked

theorem cover_6842128 : CoveredBy scale carrier boxes root_6842128 := by
  apply coveredBy_split_literal root_6842128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6842133 small_6842128_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6842133
  · exact small_6842128_right_covered
#print axioms cover_6842128

def root_6838936 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6838936 : CoveredBy scale carrier boxes root_6838936 := by
  apply coveredBy_split_literal root_6838936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6838937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6842128 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6838937
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6842128
#print axioms cover_6838936

def root_6838930 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838930_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6838930_left_fuel : Nat := 1
def small_6838930_left_count : Nat := 1
def small_6838930_left_encoded : String := "00000001"
theorem small_6838930_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6838930_left_root small_6838930_left_fuel small_6838930_left_count small_6838930_left_encoded = true := by
  decide +kernel
theorem small_6838930_left_covered : CoveredBy scale carrier boxes small_6838930_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6838930_left_root small_6838930_left_fuel small_6838930_left_count small_6838930_left_encoded small_6838930_left_checked

theorem cover_6838930 : CoveredBy scale carrier boxes root_6838930 := by
  apply coveredBy_split_literal root_6838930 small_6838930_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6838936 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6838930_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6838936
#print axioms cover_6838930

def root_6835372 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835372 : CoveredBy scale carrier boxes root_6835372 := by
  apply coveredBy_split_literal root_6835372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6835373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6838930 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6835373
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6838930
#print axioms cover_6835372

def root_6835367 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835367_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6835367_right_fuel : Nat := 1
def small_6835367_right_count : Nat := 1
def small_6835367_right_encoded : String := "00000000"
theorem small_6835367_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6835367_right_root small_6835367_right_fuel small_6835367_right_count small_6835367_right_encoded = true := by
  decide +kernel
theorem small_6835367_right_covered : CoveredBy scale carrier boxes small_6835367_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6835367_right_root small_6835367_right_fuel small_6835367_right_count small_6835367_right_encoded small_6835367_right_checked

theorem cover_6835367 : CoveredBy scale carrier boxes root_6835367 := by
  apply coveredBy_split_literal root_6835367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6835372 small_6835367_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6835372
  · exact small_6835367_right_covered
#print axioms cover_6835367

def root_6847596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847596 : CoveredBy scale carrier boxes root_6847596 := by
  apply coveredBy_split_literal root_6847596 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2581.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2582.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2581.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2582.covered
#print axioms cover_6847596

def root_6847590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847590_left_fuel : Nat := 1
def small_6847590_left_count : Nat := 1
def small_6847590_left_encoded : String := "00000003"
theorem small_6847590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847590_left_root small_6847590_left_fuel small_6847590_left_count small_6847590_left_encoded = true := by
  decide +kernel
theorem small_6847590_left_covered : CoveredBy scale carrier boxes small_6847590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847590_left_root small_6847590_left_fuel small_6847590_left_count small_6847590_left_encoded small_6847590_left_checked

theorem cover_6847590 : CoveredBy scale carrier boxes root_6847590 := by
  apply coveredBy_split_literal root_6847590 small_6847590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847596 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6847590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847596
#print axioms cover_6847590

def root_6847589 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847589 : CoveredBy scale carrier boxes root_6847589 := by
  apply coveredBy_split_literal root_6847589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847590 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2583.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847590
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2583.covered
#print axioms cover_6847589

def root_6847583 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847583_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847583_left_fuel : Nat := 1
def small_6847583_left_count : Nat := 1
def small_6847583_left_encoded : String := "00000002"
theorem small_6847583_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847583_left_root small_6847583_left_fuel small_6847583_left_count small_6847583_left_encoded = true := by
  decide +kernel
theorem small_6847583_left_covered : CoveredBy scale carrier boxes small_6847583_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847583_left_root small_6847583_left_fuel small_6847583_left_count small_6847583_left_encoded small_6847583_left_checked

theorem cover_6847583 : CoveredBy scale carrier boxes root_6847583 := by
  apply coveredBy_split_literal root_6847583 small_6847583_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847589 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6847583_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847589
#print axioms cover_6847583

def root_6847582 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847582 : CoveredBy scale carrier boxes root_6847582 := by
  apply coveredBy_split_literal root_6847582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847583 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2584.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847583
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2584.covered
#print axioms cover_6847582

def root_6847577 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847577_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847577_right_fuel : Nat := 1
def small_6847577_right_count : Nat := 1
def small_6847577_right_encoded : String := "00000001"
theorem small_6847577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847577_right_root small_6847577_right_fuel small_6847577_right_count small_6847577_right_encoded = true := by
  decide +kernel
theorem small_6847577_right_covered : CoveredBy scale carrier boxes small_6847577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847577_right_root small_6847577_right_fuel small_6847577_right_count small_6847577_right_encoded small_6847577_right_checked

theorem cover_6847577 : CoveredBy scale carrier boxes root_6847577 := by
  apply coveredBy_split_literal root_6847577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847582 small_6847577_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847582
  · exact small_6847577_right_covered
#print axioms cover_6847577

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164
