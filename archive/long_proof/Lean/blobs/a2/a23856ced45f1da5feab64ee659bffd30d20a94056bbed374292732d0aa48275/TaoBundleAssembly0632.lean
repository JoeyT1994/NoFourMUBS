import TaoBundleAssembly0631
import TaoBundleChunkBatch0867
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632
def root_9256348 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256348_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256348_left_fuel : Nat := 25
def small_9256348_left_count : Nat := 461
def small_9256348_left_encoded : String := "13D7B10100000000078000FA128A7CFB00000002078000FE128A7CFF00000004022A458713E1C506000000030DE7CA020E5FD8F90140010013F5D9010000000008C000FA11FC24FB0000000208C000FE11FC24FF00000004011523470000000900000005000000090000000913F6150108C000FA11FC24FB0000000208C000FE11FC24FF000000040115234713F85906000000030D412882000000090EFA4CF9000000010000000913F895060D412882000000050EFA4CF90000000101E0010000000005000000080000000311FBE8FF011523470000000613F895060D412882000000060EFA4CF90000000100000009000000030000000411FBE8FB08C000FE11FC24FF00000004011523470000000900000008000000090000000200000000000000010E6014F9000000010140010013F5D9010000000008C000FA11FC24FB0000000208C000FE11FC24FF000000040115234700000009000000050000000911FBE8FB000000090000000213F6150108C000FA11FC24FB0000000208C000FE11FC24FF000000040115234713F85906000000030DAED8790E96610201E001000000000913E99501096000FA11AABCFB00000002000000090000000900000000000000010E9625020000000101E001000000000913E99501096000FA0000000A000000090000000013F895060DAED8790E96610201E001000000000513E99501096000FA0000000511AA80FB096000FE00000005000000090000000200000000000000010E9625020000000101E001000000000513E99501096000FA000000050000000A000000000000000311FBE8FF011523470000000913F895060DAED8790E96610201E001000000000913E99501096000FA11AABCFB00000002000000090000000900000000000000010E962502000000010000000A000000030000000411FBE8FB08C000FE11FC24FF00000004011523470000000913F895060DAED8790E96610200000008000000010E9625020000000101E001000000000913E99501082000FA124698FB00000002096000FE000000060000000900000006000000000000000300000009000000020000000013E201060DE7CA020E5FD8F90140010013F5D9010000000008C000FA11FC24FB0000000208C000FE0000000511FBE8FF00000008000000040000000813F6150108C000FA11FC24FB0000000208C000FE0000000811FBE8FF033F67C713BBF506000000030D412882000000070EFA4CF9000000010000000800000007000000040000000800000000000000010E6014F9000000010140010013F5D9010000000008C000FA11FC24FB0000000208C000FE0000000511FBE8FF0000000A0000000411FBE8FB08C000FE0000000811FBE8FF033F67C70000000900000008000000040000000213F6150108C000FA11FC24FB0000000208C000FE11FC24FF00000004033F67C713BBF506000000030DAED8790E9661020000000500000001000000050000000511FBE8FF033F67C713BBF506000000030DAED8790E96610201E001000000000A13E99501096000FA0000000A11AA80FB000000080000000200000000000000010E962502000000010000000A13BC31060DAED8790E96610200000007000000010E962502000000010000000A000000030000000411FBE8FB08C000FE11FC24FF000000040000000811FBE8FF033F67C713BBF506000000030DAED8790E96610200000008000000010E9625020000000101E001000000000913E99501082000FA124698FB00000002082000FE000000080000000900000008000000000000000800000004000000020000000000000003128A40FF022A458713E1C506000000030DE7CA02000000090E6014F900000001014001000000000913F6150108C000FA11FC24FB0000000200000009000000090000000013E201060DE7CA020E5FD8F90140010013F5D9010000000008C000FA11FC24FB00000002000000070000000700000007000000010E6014F9000000010140010013F5D9010000000008C000FA11FC24FB000000020000000A11FBE8FB064000FE12FFACFF0000000400000009000000090000000213F6150108C000FA11FC24FB00000002064000FE12FFACFF00000004033F67C713BBF506000000030DAED8790E96610200000007000000010000000A000000070000000711FBE8FB064000FE12FFACFF00000004033F67C700000009000000070000000700000002000000000000000300000004128A40FB078000FE128A7CFF00000004022A458713E1C506000000030DE7CA02000000090E6014F900000001014001000000000913F61501064000FA12FFACFB0000000200000009000000090000000013E201060DE7CA02000000080E6014F90000000101400100000000080000000800000003128A40FF022A45870000000913E201060DE7CA020E5FD8F900000008000000010E6014F900000001014001000000000913F61501064000FA12FFACFB00000002064000FE12FFACFF00000004033F67C70000000900000007000000070000000900000000000000030000000400000002"
theorem small_9256348_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256348_left_root small_9256348_left_fuel small_9256348_left_count small_9256348_left_encoded = true := by
  decide +kernel
theorem small_9256348_left_covered : CoveredBy scale carrier boxes small_9256348_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256348_left_root small_9256348_left_fuel small_9256348_left_count small_9256348_left_encoded small_9256348_left_checked

theorem cover_9256348 : CoveredBy scale carrier boxes root_9256348 := by
  apply coveredBy_split_literal root_9256348 small_9256348_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.root_9257318 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9256348_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0631.cover_9257318
#print axioms cover_9256348

def root_9256342 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256342_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256342_left_fuel : Nat := 1
def small_9256342_left_count : Nat := 1
def small_9256342_left_encoded : String := "00000001"
theorem small_9256342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256342_left_root small_9256342_left_fuel small_9256342_left_count small_9256342_left_encoded = true := by
  decide +kernel
theorem small_9256342_left_covered : CoveredBy scale carrier boxes small_9256342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256342_left_root small_9256342_left_fuel small_9256342_left_count small_9256342_left_encoded small_9256342_left_checked

theorem cover_9256342 : CoveredBy scale carrier boxes root_9256342 := by
  apply coveredBy_split_literal root_9256342 small_9256342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256348 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9256342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256348
#print axioms cover_9256342

def root_9256130 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256130_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256130_left_fuel : Nat := 19
def small_9256130_left_count : Nat := 99
def small_9256130_left_encoded : String := "0F8750F90280010013D7B10100000000078000FA128A7CFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D44020000000610804CF9000000010140010013F5D9010000000008C000FA000000060000000813F6150108C000FA00000006000000080000000000000008128A40FF0000000600000004128A40FB078000FE00000008128A40FF022A45870000000900000007000000040000000213D7ED01078000FA128A7CFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D4402108010F9000000060000000110804CF90000000103C0010013A511010000000008C000FA11FC24FB0000000208C000FE11FC24FF00000004000000080000000611FBE8FB000000080000000213A54D0108C000FA11FC24FB0000000208C000FE11FC24FF000000040115234700000006000000070000000611FBE8FB00000008000000020000000000000007128A40FF0000000700000004128A40FB078000FE00000008128A40FF0000000700000004000000020000000000000001"
theorem small_9256130_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256130_left_root small_9256130_left_fuel small_9256130_left_count small_9256130_left_encoded = true := by
  decide +kernel
theorem small_9256130_left_covered : CoveredBy scale carrier boxes small_9256130_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256130_left_root small_9256130_left_fuel small_9256130_left_count small_9256130_left_encoded small_9256130_left_checked

theorem cover_9256130 : CoveredBy scale carrier boxes root_9256130 := by
  apply coveredBy_split_literal root_9256130 small_9256130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256342 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9256130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256342
#print axioms cover_9256130

def root_9256124 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256124_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256124_left_fuel : Nat := 1
def small_9256124_left_count : Nat := 1
def small_9256124_left_encoded : String := "00000003"
theorem small_9256124_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256124_left_root small_9256124_left_fuel small_9256124_left_count small_9256124_left_encoded = true := by
  decide +kernel
theorem small_9256124_left_covered : CoveredBy scale carrier boxes small_9256124_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256124_left_root small_9256124_left_fuel small_9256124_left_count small_9256124_left_encoded small_9256124_left_checked

theorem cover_9256124 : CoveredBy scale carrier boxes root_9256124 := by
  apply coveredBy_split_literal root_9256124 small_9256124_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256130 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9256124_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256130
#print axioms cover_9256124

def root_9256123 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256123_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256123_right_fuel : Nat := 19
def small_9256123_right_count : Nat := 119
def small_9256123_right_encoded : String := "1386AD060C9A87020F8750F90280010013D7B10100000000078000FA128A7CFB00000002078000FE00000008000000070000000800000007000000010F878CF9000000010280010013D7B10100000000078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030DE7CA020E5FD8F900000008000000010E6014F9000000010140010013F5D9010000000008C000FA000000050000000813F6150108C000FA11FC24FB0000000200000005000000080000000000000008128A40FF067ECE8712EA5906000000030DE7CA02000000070E6014F9000000010140010013F5D9010000000008C000FA0000000A00000007000000070000000700000004128A40FB078000FE00000008128A40FF067ECE8712EA5906000000030000000800000007000000040000000213D7ED01078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8712EA5906000000030DE7CA02000000070E6014F90000000103C0010013A511010000000008C000FA11FC24FB0000000208C000FE00000008000000070000000813A54D0108C000FA00000007000000070000000000000007128A40FF0000000700000004128A40FB078000FE00000008128A40FF0000000700000004000000020000000000000003"
theorem small_9256123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256123_right_root small_9256123_right_fuel small_9256123_right_count small_9256123_right_encoded = true := by
  decide +kernel
theorem small_9256123_right_covered : CoveredBy scale carrier boxes small_9256123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256123_right_root small_9256123_right_fuel small_9256123_right_count small_9256123_right_encoded small_9256123_right_checked

theorem cover_9256123 : CoveredBy scale carrier boxes root_9256123 := by
  apply coveredBy_split_literal root_9256123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256124 small_9256123_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256124
  · exact small_9256123_right_covered
#print axioms cover_9256123

def root_9256118 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256118_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256118_right_fuel : Nat := 1
def small_9256118_right_count : Nat := 1
def small_9256118_right_encoded : String := "00000001"
theorem small_9256118_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256118_right_root small_9256118_right_fuel small_9256118_right_count small_9256118_right_encoded = true := by
  decide +kernel
theorem small_9256118_right_covered : CoveredBy scale carrier boxes small_9256118_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256118_right_root small_9256118_right_fuel small_9256118_right_count small_9256118_right_encoded small_9256118_right_checked

theorem cover_9256118 : CoveredBy scale carrier boxes root_9256118 := by
  apply coveredBy_split_literal root_9256118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256123 small_9256118_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256123
  · exact small_9256118_right_covered
#print axioms cover_9256118

def root_9256117 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9256117 : CoveredBy scale carrier boxes root_9256117 := by
  apply coveredBy_split_literal root_9256117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3466.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3466.covered
#print axioms cover_9256117

def root_9256111 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256111_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256111_left_fuel : Nat := 1
def small_9256111_left_count : Nat := 1
def small_9256111_left_encoded : String := "00000004"
theorem small_9256111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256111_left_root small_9256111_left_fuel small_9256111_left_count small_9256111_left_encoded = true := by
  decide +kernel
theorem small_9256111_left_covered : CoveredBy scale carrier boxes small_9256111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256111_left_root small_9256111_left_fuel small_9256111_left_count small_9256111_left_encoded small_9256111_left_checked

theorem cover_9256111 : CoveredBy scale carrier boxes root_9256111 := by
  apply coveredBy_split_literal root_9256111 small_9256111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256117 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9256111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256117
#print axioms cover_9256111

def root_9256110 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256110_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256110_right_fuel : Nat := 19
def small_9256110_right_count : Nat := 199
def small_9256110_right_encoded : String := "135D44FF0CFD9BF90F350D0204548A0713867106000000030C9A87020F8750F900000006000000010F878CF9000000010280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF00000004022A45870000000600000007000000060000000913D7ED01078000FA128A7CFB00000002028000FE13D7ECFF00000004022A4587000000060000000700000005000000050000000000000007000000010F34D1020000000104548A0713867106000000030280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02022A4587000000090000000A000000010000000A13D7B0FF0AD3577910D13D0200000009000000010000000900000004128A40FB028000FE13D7ECFF000000040AD3577910D13D02000000090000000110D101020000000100000005000000050000000213D7ED01078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02022A45870000000513E2010603C0010013A511010000000008C000FA000000070000000500000005000000030000000110D1010200000001022A4587000000050000000A0000000500000005000000001386AD060280010013D7B10100000000078000FA128A7CFB00000002028000FE13D7ECFF000000040AD3577910D13D02067ECE8712EA5906000000030000000700000007000000010000000A13D7B0FF0000000700000004128A40FB028000FE13D7ECFF000000040AD3577910D13D02067ECE8712EA5906000000030140010013F5D90100000000064000FA000000070000000700000007000000070000000110D1010200000001067ECE8712EA5906000000030000000A0000000A13D7B0FF0AD357790000000710D10102000000010000000A000000040000000213D7ED01078000FA128A7CFB00000002028000FE13D7ECFF000000040AD357790000000710D1010200000001067ECE8712EA590600000003000000070000000700000007128A40FB028000FE13D7ECFF000000040AD357790000000710D1010200000001067ECE8700000005000000070000000500000002000000000000000300000004"
theorem small_9256110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256110_right_root small_9256110_right_fuel small_9256110_right_count small_9256110_right_encoded = true := by
  decide +kernel
theorem small_9256110_right_covered : CoveredBy scale carrier boxes small_9256110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256110_right_root small_9256110_right_fuel small_9256110_right_count small_9256110_right_encoded small_9256110_right_checked

theorem cover_9256110 : CoveredBy scale carrier boxes root_9256110 := by
  apply coveredBy_split_literal root_9256110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256111 small_9256110_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256111
  · exact small_9256110_right_covered
#print axioms cover_9256110

def root_9256104 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256104_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256104_left_fuel : Nat := 1
def small_9256104_left_count : Nat := 1
def small_9256104_left_encoded : String := "00000002"
theorem small_9256104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256104_left_root small_9256104_left_fuel small_9256104_left_count small_9256104_left_encoded = true := by
  decide +kernel
theorem small_9256104_left_covered : CoveredBy scale carrier boxes small_9256104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256104_left_root small_9256104_left_fuel small_9256104_left_count small_9256104_left_encoded small_9256104_left_checked

theorem cover_9256104 : CoveredBy scale carrier boxes root_9256104 := by
  apply coveredBy_split_literal root_9256104 small_9256104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256110 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9256104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256110
#print axioms cover_9256104

def root_9256103 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256103_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256103_right_fuel : Nat := 19
def small_9256103_right_count : Nat := 171
def small_9256103_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9BF90F350D0204548A0713867106000000030C9A87020F8750F9028001000000000800000008000000010F878CF9000000010280010013D7B10100000000028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45870000000900000008000000090000000913D7ED01028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030DE7CA020000000800000005000000080000000500000005000000001386AD060C9A8702000000080F878CF90000000102800100000000080000000800000003000000010F34D1020000000104548A0713867106000000030280010013D7B10100000000028000FA13D7ECFB00000002078000FE128A7CFF0000000400000006128A40FF0AD3577910D13D02000000090000000110D1010200000001000000050000000413D7B0FB078000FE00000006000000050000000213D7ED01028000FA13D7ECFB00000002078000FE000000060000000500000005000000001386AD060280010013D7B10100000000028000FA13D7ECFB00000002078000FE00000006128A40FF0AD3577910D13D02000000080000000100000006000000040000000613D7ED01028000FA13D7ECFB00000002078000FE00000006128A40FF0AD3577910D13D0200000006000000010000000600000004000000060000000000000003135D44FF0CFD9BF90F350D0204548A0713867106000000030C9A8702000000090000000500000007000000010F34D1020000000104548A07000000051386AD060280010013D7B10100000000028000FA13D7ECFB00000002028000FE13D7ECFF000000040AD3577910D13D02067ECE8700000005000000070000000110D1010200000001067ECE870000000500000006000000050000000500000005000000030000000400000002"
theorem small_9256103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256103_right_root small_9256103_right_fuel small_9256103_right_count small_9256103_right_encoded = true := by
  decide +kernel
theorem small_9256103_right_covered : CoveredBy scale carrier boxes small_9256103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256103_right_root small_9256103_right_fuel small_9256103_right_count small_9256103_right_encoded small_9256103_right_checked

theorem cover_9256103 : CoveredBy scale carrier boxes root_9256103 := by
  apply coveredBy_split_literal root_9256103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256104 small_9256103_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256104
  · exact small_9256103_right_covered
#print axioms cover_9256103

def root_9256097 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256097_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256097_left_fuel : Nat := 1
def small_9256097_left_count : Nat := 1
def small_9256097_left_encoded : String := "00000000"
theorem small_9256097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256097_left_root small_9256097_left_fuel small_9256097_left_count small_9256097_left_encoded = true := by
  decide +kernel
theorem small_9256097_left_covered : CoveredBy scale carrier boxes small_9256097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256097_left_root small_9256097_left_fuel small_9256097_left_count small_9256097_left_encoded small_9256097_left_checked

theorem cover_9256097 : CoveredBy scale carrier boxes root_9256097 := by
  apply coveredBy_split_literal root_9256097 small_9256097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256103 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9256097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256103
#print axioms cover_9256097

def root_9256096 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9256096 : CoveredBy scale carrier boxes root_9256096 := by
  apply coveredBy_split_literal root_9256096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256097 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3467.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256097
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3467.covered
#print axioms cover_9256096

def root_9256090 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256090_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256090_left_fuel : Nat := 1
def small_9256090_left_count : Nat := 1
def small_9256090_left_encoded : String := "00000003"
theorem small_9256090_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256090_left_root small_9256090_left_fuel small_9256090_left_count small_9256090_left_encoded = true := by
  decide +kernel
theorem small_9256090_left_covered : CoveredBy scale carrier boxes small_9256090_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256090_left_root small_9256090_left_fuel small_9256090_left_count small_9256090_left_encoded small_9256090_left_checked

theorem cover_9256090 : CoveredBy scale carrier boxes root_9256090 := by
  apply coveredBy_split_literal root_9256090 small_9256090_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256096 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9256090_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256096
#print axioms cover_9256090

def root_9256089 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256089_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256089_right_fuel : Nat := 20
def small_9256089_right_count : Nat := 199
def small_9256089_right_encoded : String := "12073D0605000100135D450100000000050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D106000000030C9A8702000000070F878CF9000000010280010013D7B101000000000000000813D7ED01000000070000000000000008000000010F34D102000000010CFD9C070F34D106000000030280010013D7B10100000000078000FA128A7CFB00000002078000FE00000005128A40FF0AD3577910D13D0200000007000000010000000600000004128A40FB078000FE00000006128A40FF00000006000000040000000213D7ED01078000FA128A7CFB00000002078000FE00000006128A40FF000000070000000400000006000000000F350D060000000600000003135D44FF0CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D102000000010CFD9C070F34D106000000030280010013D7B10100000000078000FA0000000700000007000000070F350D060C9A87060F8751070000000300000006000000070000000300000004135D44FB050000FE135D80FF000000040CFD9BF9000000080F34D102000000010CFD9C070000000600000006135D44FF0CFD9BF90F350D0200000007000000010F34D102000000010CFD9C070F34D1060000000300000007000000070000000400000002135D8101050000FA135D80FB00000002050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D10600000003000000070F350D060C9A8702000000070000000900000003000000010F34D102000000010CFD9C070F34D1060000000307800100128A410100000000078000FA0000000600000006128A7D01000000060000000000000006135D44FF0CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D102000000010CFD9C070F34D10600000003000000070000000700000004135D44FB050000FE135D80FF000000040CFD9BF90F350D020CFD9C070F34D106000000030000000700000007000000010F34D1020000000100000006135D44FF0CFD9BF90F350D0200000007000000010000000700000004000000020000000000000003"
theorem small_9256089_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256089_right_root small_9256089_right_fuel small_9256089_right_count small_9256089_right_encoded = true := by
  decide +kernel
theorem small_9256089_right_covered : CoveredBy scale carrier boxes small_9256089_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256089_right_root small_9256089_right_fuel small_9256089_right_count small_9256089_right_encoded small_9256089_right_checked

theorem cover_9256089 : CoveredBy scale carrier boxes root_9256089 := by
  apply coveredBy_split_literal root_9256089 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256090 small_9256089_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256090
  · exact small_9256089_right_covered
#print axioms cover_9256089

def root_9256084 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256084_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9256084_right_fuel : Nat := 1
def small_9256084_right_count : Nat := 1
def small_9256084_right_encoded : String := "00000001"
theorem small_9256084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9256084_right_root small_9256084_right_fuel small_9256084_right_count small_9256084_right_encoded = true := by
  decide +kernel
theorem small_9256084_right_covered : CoveredBy scale carrier boxes small_9256084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9256084_right_root small_9256084_right_fuel small_9256084_right_count small_9256084_right_encoded small_9256084_right_checked

theorem cover_9256084 : CoveredBy scale carrier boxes root_9256084 := by
  apply coveredBy_split_literal root_9256084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.root_9256089 small_9256084_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632.cover_9256089
  · exact small_9256084_right_covered
#print axioms cover_9256084

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0632
