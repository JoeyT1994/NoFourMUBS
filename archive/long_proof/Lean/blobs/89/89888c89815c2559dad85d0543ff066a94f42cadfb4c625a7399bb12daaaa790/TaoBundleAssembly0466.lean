import TaoBundleChunkBatch0638
import TaoBundleChunkBatch0639
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466
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
  apply coveredBy_split_literal root_6786620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786625 small_6786620_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786625
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
  apply coveredBy_split_literal root_6786619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786620 small_6786619_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786620
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
  apply coveredBy_split_literal root_6786614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786619 small_6786614_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786619
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
  apply coveredBy_split_literal root_6786613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786614 small_6786613_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786614
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
  apply coveredBy_split_literal root_6786607 small_6786607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786613 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6786607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786613
#print axioms cover_6786607

def root_6785007 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6785007 : CoveredBy scale carrier boxes root_6785007 := by
  apply coveredBy_split_literal root_6785007 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2553.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6786607 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2553.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6786607
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
  apply coveredBy_split_literal root_6785001 small_6785001_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6785007 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6785001_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6785007
#print axioms cover_6785001

def root_6782499 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6782499 : CoveredBy scale carrier boxes root_6782499 := by
  apply coveredBy_split_literal root_6782499 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2552.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6785001 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2552.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6785001
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
  apply coveredBy_split_literal root_6782494 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782499 small_6782494_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782499
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
  apply coveredBy_split_literal root_6782493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782494 small_6782493_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782494
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
  apply coveredBy_split_literal root_6782488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782493 small_6782488_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782493
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
  apply coveredBy_split_literal root_6782487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782488 small_6782487_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782488
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
  apply coveredBy_split_literal root_6782481 small_6782481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782487 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6782481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782487
#print axioms cover_6782481

def root_6781403 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6781403 : CoveredBy scale carrier boxes root_6781403 := by
  apply coveredBy_split_literal root_6781403 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2551.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6782481 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2551.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6782481
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
  apply coveredBy_split_literal root_6781398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6781403 small_6781398_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6781403
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
  apply coveredBy_split_literal root_6781397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6781398 small_6781397_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6781398
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
  apply coveredBy_split_literal root_6781392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.root_6781397 small_6781392_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466.cover_6781397
  · exact small_6781392_right_covered
#print axioms cover_6781392

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0466
