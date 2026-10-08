import TaoBundleAssembly0636
import TaoBundleChunkBatch0873
import TaoBundleChunkBatch0874
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637
def root_9321464 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321464_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321464_left_fuel : Nat := 27
def small_9321464_left_count : Nat := 411
def small_9321464_left_encoded : String := "13D7B10100000000078000FA128A7CFB000000020280010613D7B107000000030AD3577910D13D020DE7CA08000000050E6014FF00000004014001000000000513F6150108C000FA0000000511FBE8FB014001060000000513F615070BE879B91011AD020000000800000001000000060000000300000002000000000000000110D10102000000010DE7CA08000000060E6014FF000000040000000613D7ED070AD3577910D13D020DE7CA080E5FD8FF0140010013F5D9010000000008C000FA0000000511FBE8FB03C00106000000050000000A0000000213F6150108C000FA11FC24FB0000000203C00106000000050000000A11FBE8FB03C0010613A51107000000030BE879B9000000080000000613A54D070BE879B91011AD02000000080000000110117102000000010000000A000000030000000200000000000000040E6014FF000000040140010013F5D9010000000008C000FA11FC24FB000000020000000A11FBE8FB03C0010613A51107000000030BE879B91011AD020DAED87F000000080E962508000000040000000A000000010000000A13A54D070BE879B91011AD020000000A000000010000000A000000030000000213F6150108C000FA11FC24FB0000000203C0010613A51107000000030BE879B91011AD020DAED87F0000000A0E962508000000040000000A000000010000000A13A54D070BE879B91011AD020DAED87F0000000A0E962508000000040000000A000000010000000A0000000311FBE8FB03C0010613A51107000000030BE879B91011AD020DAED87F0E96610800000008000000040E9625080000000401E0010013E9590100000000082000FA0000000A0000000813E99501082000FA124698FB00000002032001060000000A0000000A12465CFB032001060000000813C145070C730AD9000000080000000A0000000300000002000000000000000110117102000000010000000A13A54D070BE879B91011AD020DAED87F0E96610801E001000000000A13E99501082000FA0000000A12465CFB0460010600000008000000080000000200000000000000040E9625080000000401E0010013E9590100000000082000FA000000090000000913E99501082000FA124698FB000000020000000A12465CFB046001061383DD07000000030C730AD900000009000000090000000900000002000000000000000110117102000000010000000A0000000300000002000000000000000110D10102000000010DE7CA080E5FD8FF0000000A000000040000000A00000003128A40FB0280010613D7B107000000030AD3577910D13D020DE7CA08000000080E6014FF00000004014001000000000813F61501064000FA12FFACFB00000002014001060000000613F615070BE879B900000008000000060000000300000008000000000000000110D10102000000010000000613D7ED070AD3577910D13D020DE7CA080E5FD8FF00000008000000040E6014FF000000040140010013F5D90100000000064000FA12FFACFB0000000203C0010613A51107000000030BE879B90000000810117102000000010000000A13A54D070BE879B91011AD02000000080000000110117102000000010000000A000000030000000813F61501064000FA12FFACFB0000000203C0010613A51107000000030BE879B90000000810117102000000010DAED87F0E96610800000006000000040E9625080000000401E001000000000A0000000613A54D070BE879B91011AD020DAED87F000000080E9625080000000401E001000000000913E9950106E000FA12C820FB0000000204600106000000080000000900000008000000000000000110117102000000010DAED87F0E96610801E001000000000A13E9950106E000FA0000000A0000000600000000000000040E9625080000000401E001000000000A13E9950106E000FA0000000A00000005000000000000000312FF70FB03C001060000000813A54D070BE879B90000000810117102000000010DAED87F000000070E96250800000004000000050000000300000002000000000000000110D10102000000010DE7CA080E5FD8FF0140010013F5D90100000000064000FA0000000A0000000600000006000000040E6014FF000000040140010013F5D90100000000064000FA0000000A12FF70FB03C00106000000060000000A0000000213F61501064000FA12FFACFB0000000203C00106000000060000000A12FF70FB03C00106000000060000000500000002000000000000000300000002"
theorem small_9321464_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9321464_left_root small_9321464_left_fuel small_9321464_left_count small_9321464_left_encoded = true := by
  decide +kernel
theorem small_9321464_left_covered : CoveredBy scale carrier boxes small_9321464_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9321464_left_root small_9321464_left_fuel small_9321464_left_count small_9321464_left_encoded small_9321464_left_checked

theorem cover_9321464 : CoveredBy scale carrier boxes root_9321464 := by
  apply coveredBy_split_literal root_9321464 small_9321464_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3489.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9321464_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3489.covered
#print axioms cover_9321464

def root_9321458 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321458_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321458_left_fuel : Nat := 1
def small_9321458_left_count : Nat := 1
def small_9321458_left_encoded : String := "00000004"
theorem small_9321458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9321458_left_root small_9321458_left_fuel small_9321458_left_count small_9321458_left_encoded = true := by
  decide +kernel
theorem small_9321458_left_covered : CoveredBy scale carrier boxes small_9321458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9321458_left_root small_9321458_left_fuel small_9321458_left_count small_9321458_left_encoded small_9321458_left_checked

theorem cover_9321458 : CoveredBy scale carrier boxes root_9321458 := by
  apply coveredBy_split_literal root_9321458 small_9321458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321464 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_9321458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321464
#print axioms cover_9321458

def root_9321224 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321224_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321224_left_fuel : Nat := 22
def small_9321224_left_count : Nat := 109
def small_9321224_left_encoded : String := "0F8750FF0280010013D7B10100000000078000FA128A7CFB000000020280010613D7B107000000030AD35779000000080000000513D7ED070AD3577910D13D020B4D4408108010FF000000080000000410804CFF00000004014001000000000513F6150108C000FA0000000500000008000000000000000110D10102000000010000000600000003128A40FB028001060000000813D7ED070AD357790000000810D101020000000100000006000000030000000213D7ED01078000FA128A7CFB00000002028001060000000613D7ED070AD3577910D13D020B4D4408108010FF000000060000000410804CFF0000000403C0010013A511010000000008C000FA11FC24FB0000000203C001060000000513A54D070BE879B91011AD020BF3E58800000005100928FF000000040000000600000001000000060000000311FBE8FB03C001060000000613A54D0700000006000000030000000213A54D0108C000FA11FC24FB00000002000000060000000600000000000000010000000600000003128A40FB028001060000000613D7ED070AD3577910D13D0200000008000000010000000600000003000000020000000000000004"
theorem small_9321224_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9321224_left_root small_9321224_left_fuel small_9321224_left_count small_9321224_left_encoded = true := by
  decide +kernel
theorem small_9321224_left_covered : CoveredBy scale carrier boxes small_9321224_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9321224_left_root small_9321224_left_fuel small_9321224_left_count small_9321224_left_encoded small_9321224_left_checked

theorem cover_9321224 : CoveredBy scale carrier boxes root_9321224 := by
  apply coveredBy_split_literal root_9321224 small_9321224_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321458 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9321224_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321458
#print axioms cover_9321224

def root_9321219 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321219_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321219_right_fuel : Nat := 1
def small_9321219_right_count : Nat := 1
def small_9321219_right_encoded : String := "00000004"
theorem small_9321219_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9321219_right_root small_9321219_right_fuel small_9321219_right_count small_9321219_right_encoded = true := by
  decide +kernel
theorem small_9321219_right_covered : CoveredBy scale carrier boxes small_9321219_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9321219_right_root small_9321219_right_fuel small_9321219_right_count small_9321219_right_encoded small_9321219_right_checked

theorem cover_9321219 : CoveredBy scale carrier boxes root_9321219 := by
  apply coveredBy_split_literal root_9321219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321224 small_9321219_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321224
  · exact small_9321219_right_covered
#print axioms cover_9321219

def root_9324910 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9324910 : CoveredBy scale carrier boxes root_9324910 := by
  apply coveredBy_split_literal root_9324910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3490.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3491.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3490.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3491.covered
#print axioms cover_9324910

def root_9324904 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9324904_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9324904_left_fuel : Nat := 1
def small_9324904_left_count : Nat := 1
def small_9324904_left_encoded : String := "00000004"
theorem small_9324904_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9324904_left_root small_9324904_left_fuel small_9324904_left_count small_9324904_left_encoded = true := by
  decide +kernel
theorem small_9324904_left_covered : CoveredBy scale carrier boxes small_9324904_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9324904_left_root small_9324904_left_fuel small_9324904_left_count small_9324904_left_encoded small_9324904_left_checked

theorem cover_9324904 : CoveredBy scale carrier boxes root_9324904 := by
  apply coveredBy_split_literal root_9324904 small_9324904_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9324910 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9324904_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9324910
#print axioms cover_9324904

def root_9321218 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9321218 : CoveredBy scale carrier boxes root_9321218 := by
  apply coveredBy_split_literal root_9321218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9324904 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321219
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9324904
#print axioms cover_9321218

def root_9321212 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321212_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9321212_left_fuel : Nat := 1
def small_9321212_left_count : Nat := 1
def small_9321212_left_encoded : String := "00000001"
theorem small_9321212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9321212_left_root small_9321212_left_fuel small_9321212_left_count small_9321212_left_encoded = true := by
  decide +kernel
theorem small_9321212_left_covered : CoveredBy scale carrier boxes small_9321212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9321212_left_root small_9321212_left_fuel small_9321212_left_count small_9321212_left_encoded small_9321212_left_checked

theorem cover_9321212 : CoveredBy scale carrier boxes root_9321212 := by
  apply coveredBy_split_literal root_9321212 small_9321212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321218 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_9321212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321218
#print axioms cover_9321212

def root_9315224 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9315224 : CoveredBy scale carrier boxes root_9315224 := by
  apply coveredBy_split_literal root_9315224 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0636.root_9315225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9321212 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0636.cover_9315225
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9321212
#print axioms cover_9315224

def root_9315218 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315218_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315218_left_fuel : Nat := 1
def small_9315218_left_count : Nat := 1
def small_9315218_left_encoded : String := "00000003"
theorem small_9315218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315218_left_root small_9315218_left_fuel small_9315218_left_count small_9315218_left_encoded = true := by
  decide +kernel
theorem small_9315218_left_covered : CoveredBy scale carrier boxes small_9315218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315218_left_root small_9315218_left_fuel small_9315218_left_count small_9315218_left_encoded small_9315218_left_checked

theorem cover_9315218 : CoveredBy scale carrier boxes root_9315218 := by
  apply coveredBy_split_literal root_9315218 small_9315218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315224 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9315218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315224
#print axioms cover_9315218

def root_9329246 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9329246 : CoveredBy scale carrier boxes root_9329246 := by
  apply coveredBy_split_literal root_9329246 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3492.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3493.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3492.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3493.covered
#print axioms cover_9329246

def root_9329241 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9329241_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9329241_right_fuel : Nat := 1
def small_9329241_right_count : Nat := 1
def small_9329241_right_encoded : String := "00000003"
theorem small_9329241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9329241_right_root small_9329241_right_fuel small_9329241_right_count small_9329241_right_encoded = true := by
  decide +kernel
theorem small_9329241_right_covered : CoveredBy scale carrier boxes small_9329241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9329241_right_root small_9329241_right_fuel small_9329241_right_count small_9329241_right_encoded small_9329241_right_checked

theorem cover_9329241 : CoveredBy scale carrier boxes root_9329241 := by
  apply coveredBy_split_literal root_9329241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9329246 small_9329241_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9329246
  · exact small_9329241_right_covered
#print axioms cover_9329241

def root_9315217 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9315217 : CoveredBy scale carrier boxes root_9315217 := by
  apply coveredBy_split_literal root_9315217 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9329241 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315218
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9329241
#print axioms cover_9315217

def root_9315211 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315211_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315211_left_fuel : Nat := 1
def small_9315211_left_count : Nat := 1
def small_9315211_left_encoded : String := "00000002"
theorem small_9315211_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315211_left_root small_9315211_left_fuel small_9315211_left_count small_9315211_left_encoded = true := by
  decide +kernel
theorem small_9315211_left_covered : CoveredBy scale carrier boxes small_9315211_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315211_left_root small_9315211_left_fuel small_9315211_left_count small_9315211_left_encoded small_9315211_left_checked

theorem cover_9315211 : CoveredBy scale carrier boxes root_9315211 := by
  apply coveredBy_split_literal root_9315211 small_9315211_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315217 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9315211_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315217
#print axioms cover_9315211

def root_9315210 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315210_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315210_right_fuel : Nat := 28
def small_9315210_right_count : Nat := 427
def small_9315210_right_encoded : String := "135D44FB05000106135D4507000000030CFD9BF90F350D020CFD9BFF000000080F34D108000000040C9A87020F8750F900000008000000010F878CF9000000010280010013D7B10100000000028000FA13D7ECFB000000020280010613D7B107000000030000000813D7ED070AD3577F0000000800000009000000030000000813D7ED01028000FA13D7ECFB000000020280010613D7B107000000030AD3577F0000000810D10108000000040DE7CA020E5FD8F900000008000000010E6014F90000000103C0010013A5110100000000000000090000000513D7ED070AD3577F10D13D080DE7CA020E5FD8F90000000800000001000000050000000410D1010800000004000000050000000313D7B0FB0280010600000008000000050000000200000000000000010F34D102000000010CFD9BFF0F350D080C9A87080F8750FF00000008000000040F878CFF000000040280010013D7B10100000000028000FA13D7ECFB000000020280010613D7B107000000030000000813D7ED070AD357790000000810D10102000000010DE7CA080E5FD8FF00000006000000040E6014FF000000040140010013F5D9010000000003C000FA13A54CFB0000000203C0010600000006000000050000000500000005000000030000000813D7ED01028000FA13D7ECFB000000020280010613D7B107000000030AD35779000000080000000613D7ED070AD3577910D13D020DE7CA080E5FD8FF0000000800000004000000050000000110D1010200000001000000050000000313D7B0FB0280010600000008000000050000000200000000000000040F34D108000000040280010013D7B10100000000028000FA13D7ECFB000000020280010613D7B107000000030AD3577910D13D020AD3577F10D13D08014001000000000813F6150103C000FA13A54CFB00000002014001060000000813F615070BE879B90000000810117102000000010BE879BF000000081011710800000004000000050000000300000008000000000000000410D1010800000004014001000000000913F6150103C000FA13A54CFB000000020140010613F5D907000000030BE879B900000009000000090000000500000005000000000000000110D10102000000010AD3577F10D13D080140010013F5D9010000000003C000FA13A54CFB00000002014001060000000613F6150709BE353911777D020BE879BF000000060000000600000001000000060000000313A510FB0140010600000006000000050000000213F6150103C000FA0000000600000005000000000000000410D10108000000040140010013F5D9010000000003C000FA13A54CFB000000020140010613F5D9070000000309BE353911777D0200000009000000010000000600000005000000050000000513D7ED070AD3577910D13D020AD3577F10D13D080140010013F5D9010000000003C000FA13A54CFB0000000203C0010613A51107000000030BE879B900000008000000090000000500000005000000050000000410D1010800000004000000050000000110D1010200000001000000050000000313D7B0FB0280010613D7B107000000030AD3577910D13D020AD3577F0000000810D1010800000004000000050000000110D101020000000100000005000000050000000213D7ED01028000FA13D7ECFB000000020280010613D7B107000000030AD3577910D13D020AD3577F10D13D0803C0010013A511010000000003C000FA13A54CFB000000020140010613F5D907000000030BE879B900000008000000060000000500000005000000050000000410D1010800000004000000050000000110D101020000000100000005000000050000000500000000135D81070CFD9BF90F350D020CFD9BFF0F350D080C9A87020F8750F900000008000000010F878CF9000000010C9A87080F8750FF00000008000000040F878CFF000000040280010013D7B10100000000028000FA13D7ECFB000000020780010600000008000000070000000713D7ED01028000FA13D7ECFB0000000207800106128A4107000000030DE7CA020000000800000005000000050000000500000000000000040F34D108000000040C9A87020F8750F900000009000000010F878CF900000001028001000000000900000005000000010F34D102000000010CFD9BFF0F350D080C9A87080F8750FF028001000000000700000007000000040F878CFF000000040280010013D7B10100000000028000FA13D7ECFB0000000207800106128A4107000000030AD3577910D13D020DE7CA0800000007000000050000000100000007000000050000000500000005000000040F34D10800000004000000050000000300000002"
theorem small_9315210_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315210_right_root small_9315210_right_fuel small_9315210_right_count small_9315210_right_encoded = true := by
  decide +kernel
theorem small_9315210_right_covered : CoveredBy scale carrier boxes small_9315210_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315210_right_root small_9315210_right_fuel small_9315210_right_count small_9315210_right_encoded small_9315210_right_checked

theorem cover_9315210 : CoveredBy scale carrier boxes root_9315210 := by
  apply coveredBy_split_literal root_9315210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315211 small_9315210_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315211
  · exact small_9315210_right_covered
#print axioms cover_9315210

def root_9315204 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315204_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315204_left_fuel : Nat := 1
def small_9315204_left_count : Nat := 1
def small_9315204_left_encoded : String := "00000000"
theorem small_9315204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315204_left_root small_9315204_left_fuel small_9315204_left_count small_9315204_left_encoded = true := by
  decide +kernel
theorem small_9315204_left_covered : CoveredBy scale carrier boxes small_9315204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315204_left_root small_9315204_left_fuel small_9315204_left_count small_9315204_left_encoded small_9315204_left_checked

theorem cover_9315204 : CoveredBy scale carrier boxes root_9315204 := by
  apply coveredBy_split_literal root_9315204 small_9315204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315210 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9315204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315210
#print axioms cover_9315204

def root_9335404 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9335404 : CoveredBy scale carrier boxes root_9335404 := by
  apply coveredBy_split_literal root_9335404 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3494.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3495.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3494.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3495.covered
#print axioms cover_9335404

def root_9335399 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335399_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335399_right_fuel : Nat := 1
def small_9335399_right_count : Nat := 1
def small_9335399_right_encoded : String := "00000001"
theorem small_9335399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335399_right_root small_9335399_right_fuel small_9335399_right_count small_9335399_right_encoded = true := by
  decide +kernel
theorem small_9335399_right_covered : CoveredBy scale carrier boxes small_9335399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335399_right_root small_9335399_right_fuel small_9335399_right_count small_9335399_right_encoded small_9335399_right_checked

theorem cover_9335399 : CoveredBy scale carrier boxes root_9335399 := by
  apply coveredBy_split_literal root_9335399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335404 small_9335399_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335404
  · exact small_9335399_right_covered
#print axioms cover_9335399

def root_9335398 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335398_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335398_right_fuel : Nat := 30
def small_9335398_right_count : Nat := 337
def small_9335398_right_encoded : String := "0F34D102000000010CFD9BFF0F350D080C9A87080F8750FF07800100128A410100000000078000FA128A7CFB00000002028001060000000613D7ED070AD3577910D13D020000000600000001000000060000000300000006128A7D010000000600000000000000040F878CFF0000000407800100128A410100000000078000FA128A7CFB000000020280010613D7B107000000030AD3577910D13D0200000006000000010000000613D7ED070AD3577910D13D020DE7CA080E5FD8FF0640010012FF71010000000008C000FA11FC24FB0000000203C001060000000613A54D070BE879B91011AD02000000060000000100000006000000030000000612FFAD010000000600000000000000040E6014FF000000040640010012FF71010000000008C000FA11FC24FB0000000203C0010613A51107000000030000000613A54D070BE879B91011AD020DAED87F0E96610805A001001331350100000000096000FA11AABCFB000000020000000600000006133171010000000600000000000000040E9625080000000405A001001331350100000000096000FA000000080000000500000005000000011011710200000001000000060000000311FBE8FB03C0010600000006000000050000000212FFAD0108C000FA11FC24FB0000000203C00106000000060000000500000005000000000000000110D10102000000010000000600000003128A40FB028001060000000613D7ED070AD3577910D13D020DE7CA080E5FD8FF0640010012FF710100000000064000FA00000006000000050000000500000004000000050000000110D1010200000001000000050000000300000002128A7D01078000FA128A7CFB00000002028001060000000613D7ED070AD3577910D13D020DE7CA080000000600000005000000010000000600000003128A40FB0280010600000006000000050000000200000000000000040F34D1080000000407800100128A410100000000078000FA128A7CFB000000020280010613D7B107000000030AD3577910D13D020AD3577F10D13D080640010012FF71010000000008C000FA11FC24FB00000002014001060000000613F615070BE879B91011AD020BE879BF000000060000000600000001000000060000000311FBE8FB014001060000000613F615070BE879B91011AD020BE879BF00000006000000060000000100000006000000030000000212FFAD0108C000FA11FC24FB000000020000000600000006000000000000000410D10108000000040640010012FF71010000000000000007000000070000000110D10102000000010AD3577F000000060000000613D7ED070AD3577910D13D020AD3577F10D13D080640010012FF71010000000008C000FA11FC24FB0000000203C0010613A51107000000030BE879B91011AD020BE879BF1011AD0805A001001331350100000000096000FA0000000811AA80FB03200106000000060000000500000002133171010000000800000000000000040000000800000001000000080000000500000005000000050000000410D1010800000004000000050000000110D10102000000010000000500000003128A40FB0280010613D7B107000000030AD3577910D13D020AD3577F10D13D080640010012FF710100000000064000FA12FFACFB0000000201400106000000060000000500000005000000050000000410D1010800000004000000050000000110D1010200000001000000050000000500000002128A7D01078000FA128A7CFB000000020280010613D7B107000000030AD3577910D13D020AD3577F10D13D08000000060000000410D1010800000004000000050000000100000006000000050000000500000000"
theorem small_9335398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335398_right_root small_9335398_right_fuel small_9335398_right_count small_9335398_right_encoded = true := by
  decide +kernel
theorem small_9335398_right_covered : CoveredBy scale carrier boxes small_9335398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335398_right_root small_9335398_right_fuel small_9335398_right_count small_9335398_right_encoded small_9335398_right_checked

theorem cover_9335398 : CoveredBy scale carrier boxes root_9335398 := by
  apply coveredBy_split_literal root_9335398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335399 small_9335398_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335399
  · exact small_9335398_right_covered
#print axioms cover_9335398

def root_9335392 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335392_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335392_left_fuel : Nat := 1
def small_9335392_left_count : Nat := 1
def small_9335392_left_encoded : String := "00000003"
theorem small_9335392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335392_left_root small_9335392_left_fuel small_9335392_left_count small_9335392_left_encoded = true := by
  decide +kernel
theorem small_9335392_left_covered : CoveredBy scale carrier boxes small_9335392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335392_left_root small_9335392_left_fuel small_9335392_left_count small_9335392_left_encoded small_9335392_left_checked

theorem cover_9335392 : CoveredBy scale carrier boxes root_9335392 := by
  apply coveredBy_split_literal root_9335392 small_9335392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335398 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_9335392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335398
#print axioms cover_9335392

def root_9335391 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9335391 : CoveredBy scale carrier boxes root_9335391 := by
  apply coveredBy_split_literal root_9335391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335392 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3496.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335392
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3496.covered
#print axioms cover_9335391

def root_9335385 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335385_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335385_left_fuel : Nat := 1
def small_9335385_left_count : Nat := 1
def small_9335385_left_encoded : String := "00000002"
theorem small_9335385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335385_left_root small_9335385_left_fuel small_9335385_left_count small_9335385_left_encoded = true := by
  decide +kernel
theorem small_9335385_left_covered : CoveredBy scale carrier boxes small_9335385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335385_left_root small_9335385_left_fuel small_9335385_left_count small_9335385_left_encoded small_9335385_left_checked

theorem cover_9335385 : CoveredBy scale carrier boxes root_9335385 := by
  apply coveredBy_split_literal root_9335385 small_9335385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335391 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9335385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335391
#print axioms cover_9335385

def root_9335384 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335384_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335384_right_fuel : Nat := 19
def small_9335384_right_count : Nat := 145
def small_9335384_right_encoded : String := "135D44FB05000106135D4507000000030CFD9BF90F350D020CFD9BFF0F350D080C9A87020F8750F900000008000000010F878CF9000000010C9A87080F8750FF00000008000000040F878CFF0000000407800100128A410100000000028000FA13D7ECFB00000002028001060000000813D7ED070DE7CA0200000008000000050000000300000008128A7D01028000FA13D7ECFB00000002028001060000000A000000050000000500000000000000040F34D108000000040C9A87020F8750F907800100128A4101000000000000000A0000000A000000010F878CF90000000107800100128A410100000000028000FA13D7ECFB000000020280010613D7B107000000030AD3577F10D13D080DE7CA020000000A00000005000000040000000A000000050000000500000005000000010F34D102000000010CFD9BFF0F350D080C9A87080F8750FF00000006000000040F878CFF0000000407800100128A410100000000028000FA13D7ECFB000000020280010600000006000000050000000500000005000000040F34D1080000000400000005135D81070CFD9BF90F350D020CFD9BFF0F350D080C9A87020F8750F90C9A87080F8750FF00000008000000040F878CFF0000000407800100128A410100000000028000FA13D7ECFB000000020780010600000008000000050000000500000005000000010F878CF9000000010C9A87080F8750FF0780010000000007000000050000000400000005000000040F34D1080000000400000005000000010F34D10200000001000000050000000300000002"
theorem small_9335384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335384_right_root small_9335384_right_fuel small_9335384_right_count small_9335384_right_encoded = true := by
  decide +kernel
theorem small_9335384_right_covered : CoveredBy scale carrier boxes small_9335384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335384_right_root small_9335384_right_fuel small_9335384_right_count small_9335384_right_encoded small_9335384_right_checked

theorem cover_9335384 : CoveredBy scale carrier boxes root_9335384 := by
  apply coveredBy_split_literal root_9335384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335385 small_9335384_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335385
  · exact small_9335384_right_covered
#print axioms cover_9335384

def root_9335379 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335379_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9335379_right_fuel : Nat := 1
def small_9335379_right_count : Nat := 1
def small_9335379_right_encoded : String := "00000000"
theorem small_9335379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9335379_right_root small_9335379_right_fuel small_9335379_right_count small_9335379_right_encoded = true := by
  decide +kernel
theorem small_9335379_right_covered : CoveredBy scale carrier boxes small_9335379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9335379_right_root small_9335379_right_fuel small_9335379_right_count small_9335379_right_encoded small_9335379_right_checked

theorem cover_9335379 : CoveredBy scale carrier boxes root_9335379 := by
  apply coveredBy_split_literal root_9335379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335384 small_9335379_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335384
  · exact small_9335379_right_covered
#print axioms cover_9335379

def root_9315203 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9315203 : CoveredBy scale carrier boxes root_9315203 := by
  apply coveredBy_split_literal root_9315203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9335379 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9335379
#print axioms cover_9315203

def root_9315198 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315198_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9315198_right_fuel : Nat := 1
def small_9315198_right_count : Nat := 1
def small_9315198_right_encoded : String := "00000004"
theorem small_9315198_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9315198_right_root small_9315198_right_fuel small_9315198_right_count small_9315198_right_encoded = true := by
  decide +kernel
theorem small_9315198_right_covered : CoveredBy scale carrier boxes small_9315198_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9315198_right_root small_9315198_right_fuel small_9315198_right_count small_9315198_right_encoded small_9315198_right_checked

theorem cover_9315198 : CoveredBy scale carrier boxes root_9315198 := by
  apply coveredBy_split_literal root_9315198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.root_9315203 small_9315198_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637.cover_9315203
  · exact small_9315198_right_covered
#print axioms cover_9315198

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0637
