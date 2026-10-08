import TaoBundleAssembly0568
import TaoBundleChunkBatch0769
import TaoBundleChunkBatch0773
import TaoBundleChunkBatch0774
import TaoBundleChunkBatch0775
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569
def root_8208264 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208264_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8208264_left_fuel : Nat := 1
def small_8208264_left_count : Nat := 1
def small_8208264_left_encoded : String := "00000002"
theorem small_8208264_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8208264_left_root small_8208264_left_fuel small_8208264_left_count small_8208264_left_encoded = true := by
  decide +kernel
theorem small_8208264_left_covered : CoveredBy scale carrier boxes small_8208264_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8208264_left_root small_8208264_left_fuel small_8208264_left_count small_8208264_left_encoded small_8208264_left_checked

theorem cover_8208264 : CoveredBy scale carrier boxes root_8208264 := by
  apply coveredBy_split_literal root_8208264 small_8208264_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0568.root_8208270 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8208264_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0568.cover_8208270
#print axioms cover_8208264

def root_8205216 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8205216 : CoveredBy scale carrier boxes root_8205216 := by
  apply coveredBy_split_literal root_8205216 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3075.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8208264 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3075.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8208264
#print axioms cover_8205216

def root_8205210 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8205210_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8205210_left_fuel : Nat := 1
def small_8205210_left_count : Nat := 1
def small_8205210_left_encoded : String := "00000001"
theorem small_8205210_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8205210_left_root small_8205210_left_fuel small_8205210_left_count small_8205210_left_encoded = true := by
  decide +kernel
theorem small_8205210_left_covered : CoveredBy scale carrier boxes small_8205210_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8205210_left_root small_8205210_left_fuel small_8205210_left_count small_8205210_left_encoded small_8205210_left_checked

theorem cover_8205210 : CoveredBy scale carrier boxes root_8205210 := by
  apply coveredBy_split_literal root_8205210 small_8205210_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8205216 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8205210_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8205216
#print axioms cover_8205210

def root_8250060 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8250060_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8250060_left_fuel : Nat := 19
def small_8250060_left_count : Nat := 131
def small_8250060_left_encoded : String := "13D7B10100000000078000F8128A7CF9000000010280010813D7B109000000040AD3577D10D13D060DE7CA04000000050E6014FB00000002014001000000000513F6150108C000F80000000511FBE8F9014001080000000513F615090BE879BD1011AD0600000007000000030000000A0000000400000001000000000000000310D10106000000030DE7CA040000000A0E6014FB000000020000000A13D7ED090AD3577D10D13D060DE7CA040E5FD8FB0000000A000000020E6014FB00000002014001000000000A13F6150108C000F811FC24F90000000103C0010813A51109000000040BE879BD1011AD060DAED87B0000000A0000000A000000030000000A0000000A11FBE8F903C0010813A51109000000040BE879BD1011AD060000000A000000030000000A0000000A00000001000000000000000310D10106000000030000000A00000004128A40F90280010813D7B109000000040AD3577D10D13D060DE7CA04000000070E6014FB00000002014001000000000713F61501064000F812FFACF900000001014001080000000713F615090BE879BD000000070000000A0000000400000007000000000000000310D10106000000030000000A13D7ED090AD3577D10D13D060DE7CA040000000A0E6014FB00000002014001000000000A13F61501064000F812FFACF9000000010000000A0000000A00000000000000030000000A0000000400000001"
theorem small_8250060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8250060_left_root small_8250060_left_fuel small_8250060_left_count small_8250060_left_encoded = true := by
  decide +kernel
theorem small_8250060_left_covered : CoveredBy scale carrier boxes small_8250060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8250060_left_root small_8250060_left_fuel small_8250060_left_count small_8250060_left_encoded small_8250060_left_checked

theorem cover_8250060 : CoveredBy scale carrier boxes root_8250060 := by
  apply coveredBy_split_literal root_8250060 small_8250060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3090.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8250060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3090.covered
#print axioms cover_8250060

def root_8250054 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8250054_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8250054_left_fuel : Nat := 1
def small_8250054_left_count : Nat := 1
def small_8250054_left_encoded : String := "00000002"
theorem small_8250054_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8250054_left_root small_8250054_left_fuel small_8250054_left_count small_8250054_left_encoded = true := by
  decide +kernel
theorem small_8250054_left_covered : CoveredBy scale carrier boxes small_8250054_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8250054_left_root small_8250054_left_fuel small_8250054_left_count small_8250054_left_encoded small_8250054_left_checked

theorem cover_8250054 : CoveredBy scale carrier boxes root_8250054 := by
  apply coveredBy_split_literal root_8250054 small_8250054_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8250060 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8250054_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8250060
#print axioms cover_8250054

def root_8249856 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8249856_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8249856_left_fuel : Nat := 22
def small_8249856_left_count : Nat := 93
def small_8249856_left_encoded : String := "0F8750FB0280010013D7B10100000000078000F8128A7CF9000000010280010813D7B109000000040AD3577D00000007000000050000000A0000000A13D7ED01078000F8128A7CF9000000010280010813D7B109000000040AD3577D10D13D060B4D4404108010FB000000070000000210804CFB0000000203C001000000000513A54D0108C000F80000000500000007000000000000000310D10106000000030000000813D7ED090AD3577D10D13D060B4D4404108010FB0000000A0000000210804CFB0000000203C001000000000A13A54D0108C000F811FC24F90000000103C0010813A51109000000040BE879BD1011AD060BF3E58400000005100928FB000000020000000A00000003000000080000000A0000000A00000000000000030000000A00000004128A40F90280010813D7B109000000040AD3577D0000000710D10106000000030000000A13D7ED090AD3577D10D13D0600000007000000030000000A00000004000000010000000000000002"
theorem small_8249856_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8249856_left_root small_8249856_left_fuel small_8249856_left_count small_8249856_left_encoded = true := by
  decide +kernel
theorem small_8249856_left_covered : CoveredBy scale carrier boxes small_8249856_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8249856_left_root small_8249856_left_fuel small_8249856_left_count small_8249856_left_encoded small_8249856_left_checked

theorem cover_8249856 : CoveredBy scale carrier boxes root_8249856 := by
  apply coveredBy_split_literal root_8249856 small_8249856_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8250054 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8249856_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8250054
#print axioms cover_8249856

def root_8249850 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8249850_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8249850_left_fuel : Nat := 1
def small_8249850_left_count : Nat := 1
def small_8249850_left_encoded : String := "00000003"
theorem small_8249850_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8249850_left_root small_8249850_left_fuel small_8249850_left_count small_8249850_left_encoded = true := by
  decide +kernel
theorem small_8249850_left_covered : CoveredBy scale carrier boxes small_8249850_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8249850_left_root small_8249850_left_fuel small_8249850_left_count small_8249850_left_encoded small_8249850_left_checked

theorem cover_8249850 : CoveredBy scale carrier boxes root_8249850 := by
  apply coveredBy_split_literal root_8249850 small_8249850_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8249856 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8249850_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8249856
#print axioms cover_8249850

def root_8247398 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8247398 : CoveredBy scale carrier boxes root_8247398 := by
  apply coveredBy_split_literal root_8247398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3089.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8249850 coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3089.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8249850
#print axioms cover_8247398

def root_8247393 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247393_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247393_right_fuel : Nat := 1
def small_8247393_right_count : Nat := 1
def small_8247393_right_encoded : String := "00000002"
theorem small_8247393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247393_right_root small_8247393_right_fuel small_8247393_right_count small_8247393_right_encoded = true := by
  decide +kernel
theorem small_8247393_right_covered : CoveredBy scale carrier boxes small_8247393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247393_right_root small_8247393_right_fuel small_8247393_right_count small_8247393_right_encoded small_8247393_right_checked

theorem cover_8247393 : CoveredBy scale carrier boxes root_8247393 := by
  apply coveredBy_split_literal root_8247393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247398 small_8247393_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247398
  · exact small_8247393_right_covered
#print axioms cover_8247393

def root_8253632 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253632_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253632_left_fuel : Nat := 27
def small_8253632_left_count : Nat := 411
def small_8253632_left_encoded : String := "13D7B10100000000078000F8128A7CF9000000010280010813D7B109000000040AD3577B10D13D040DE7CA06000000050E6014FD00000003014001000000000513F6150108C000F80000000511FBE8F9014001080000000513F615090BE879BB1011AD040000000700000002000000060000000400000001000000000000000210D10104000000020DE7CA06000000060E6014FD000000030000000613D7ED090AD3577B10D13D040DE7CA060E5FD8FD0140010013F5D9010000000008C000F80000000511FBE8F903C0010800000005000000090000000113F6150108C000F811FC24F90000000103C00108000000050000000911FBE8F903C0010813A51109000000040BE879BB000000070000000613A54D090BE879BB1011AD040000000700000002101171040000000200000009000000040000000100000000000000030E6014FD000000030140010013F5D9010000000008C000F811FC24F9000000010000000911FBE8F903C0010813A51109000000040BE879BB1011AD040DAED87D000000070E9625060000000300000009000000020000000913A54D090BE879BB1011AD04000000090000000200000009000000040000000113F6150108C000F811FC24F90000000103C0010813A51109000000040BE879BB1011AD040DAED87D000000090E9625060000000300000009000000020000000913A54D090BE879BB1011AD040DAED87D000000090E962506000000030000000900000002000000090000000411FBE8F903C0010813A51109000000040BE879BB1011AD040DAED87D0E96610600000007000000030E9625060000000301E0010013E9590100000000082000F8000000090000000713E99501082000F8124698F90000000103200108000000090000000912465CF9032001080000000713C145090C730ADB00000007000000090000000400000001000000000000000210117104000000020000000913A54D090BE879BB1011AD040DAED87D0E96610601E001000000000913E99501082000F80000000912465CF90460010800000007000000070000000100000000000000030E9625060000000301E0010013E9590100000000082000F8000000090000000A13E99501082000F8124698F9000000010000000912465CF9046001081383DD09000000040C730ADB0000000A000000090000000A0000000100000000000000021011710400000002000000090000000400000001000000000000000210D10104000000020DE7CA060E5FD8FD00000009000000030000000900000004128A40F90280010813D7B109000000040AD3577B10D13D040DE7CA06000000070E6014FD00000003014001000000000713F61501064000F812FFACF900000001014001080000000613F615090BE879BB00000007000000060000000400000007000000000000000210D10104000000020000000613D7ED090AD3577B10D13D040DE7CA060E5FD8FD00000007000000030E6014FD000000030140010013F5D90100000000064000F812FFACF90000000103C0010813A51109000000040BE879BB0000000710117104000000020000000913A54D090BE879BB1011AD040000000700000002101171040000000200000009000000040000000713F61501064000F812FFACF90000000103C0010813A51109000000040BE879BB0000000710117104000000020DAED87D0E96610600000006000000030E9625060000000301E00100000000090000000613A54D090BE879BB1011AD040DAED87D000000070E9625060000000301E001000000000A13E9950106E000F812C820F90000000104600108000000070000000A00000007000000000000000210117104000000020DAED87D0E96610601E001000000000913E9950106E000F8000000090000000600000000000000030E9625060000000301E001000000000913E9950106E000F80000000900000005000000000000000412FF70F903C001080000000713A54D090BE879BB0000000710117104000000020DAED87D000000070E96250600000003000000050000000400000001000000000000000210D10104000000020DE7CA060E5FD8FD0140010013F5D90100000000064000F8000000090000000600000006000000030E6014FD000000030140010013F5D90100000000064000F80000000912FF70F903C0010800000006000000090000000113F61501064000F812FFACF90000000103C00108000000060000000912FF70F903C00108000000060000000500000001000000000000000400000001"
theorem small_8253632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8253632_left_root small_8253632_left_fuel small_8253632_left_count small_8253632_left_encoded = true := by
  decide +kernel
theorem small_8253632_left_covered : CoveredBy scale carrier boxes small_8253632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8253632_left_root small_8253632_left_fuel small_8253632_left_count small_8253632_left_encoded small_8253632_left_checked

theorem cover_8253632 : CoveredBy scale carrier boxes root_8253632 := by
  apply coveredBy_split_literal root_8253632 small_8253632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3091.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8253632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3091.covered
#print axioms cover_8253632

def root_8253626 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253626_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253626_left_fuel : Nat := 1
def small_8253626_left_count : Nat := 1
def small_8253626_left_encoded : String := "00000003"
theorem small_8253626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8253626_left_root small_8253626_left_fuel small_8253626_left_count small_8253626_left_encoded = true := by
  decide +kernel
theorem small_8253626_left_covered : CoveredBy scale carrier boxes small_8253626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8253626_left_root small_8253626_left_fuel small_8253626_left_count small_8253626_left_encoded small_8253626_left_checked

theorem cover_8253626 : CoveredBy scale carrier boxes root_8253626 := by
  apply coveredBy_split_literal root_8253626 small_8253626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253632 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8253626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253632
#print axioms cover_8253626

def root_8253392 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253392_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253392_left_fuel : Nat := 22
def small_8253392_left_count : Nat := 109
def small_8253392_left_encoded : String := "0F8750FD0280010013D7B10100000000078000F8128A7CF9000000010280010813D7B109000000040AD3577B000000070000000513D7ED090AD3577B10D13D040B4D4406108010FD000000070000000310804CFD00000003014001000000000513F6150108C000F80000000500000007000000000000000210D10104000000020000000600000004128A40F9028001080000000713D7ED090AD3577B0000000710D101040000000200000006000000040000000113D7ED01078000F8128A7CF900000001028001080000000613D7ED090AD3577B10D13D040B4D4406108010FD000000060000000310804CFD0000000303C0010013A511010000000008C000F811FC24F90000000103C001080000000513A54D090BE879BB1011AD040BF3E58600000005100928FD000000030000000600000002000000060000000411FBE8F903C001080000000613A54D0900000006000000040000000113A54D0108C000F811FC24F900000001000000060000000600000000000000020000000600000004128A40F9028001080000000613D7ED090AD3577B10D13D0400000007000000020000000600000004000000010000000000000003"
theorem small_8253392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8253392_left_root small_8253392_left_fuel small_8253392_left_count small_8253392_left_encoded = true := by
  decide +kernel
theorem small_8253392_left_covered : CoveredBy scale carrier boxes small_8253392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8253392_left_root small_8253392_left_fuel small_8253392_left_count small_8253392_left_encoded small_8253392_left_checked

theorem cover_8253392 : CoveredBy scale carrier boxes root_8253392 := by
  apply coveredBy_split_literal root_8253392 small_8253392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253626 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8253392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253626
#print axioms cover_8253392

def root_8253387 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253387_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253387_right_fuel : Nat := 1
def small_8253387_right_count : Nat := 1
def small_8253387_right_encoded : String := "00000003"
theorem small_8253387_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8253387_right_root small_8253387_right_fuel small_8253387_right_count small_8253387_right_encoded = true := by
  decide +kernel
theorem small_8253387_right_covered : CoveredBy scale carrier boxes small_8253387_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8253387_right_root small_8253387_right_fuel small_8253387_right_count small_8253387_right_encoded small_8253387_right_checked

theorem cover_8253387 : CoveredBy scale carrier boxes root_8253387 := by
  apply coveredBy_split_literal root_8253387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253392 small_8253387_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253392
  · exact small_8253387_right_covered
#print axioms cover_8253387

def root_8257078 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8257078 : CoveredBy scale carrier boxes root_8257078 := by
  apply coveredBy_split_literal root_8257078 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3092.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3093.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3092.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3093.covered
#print axioms cover_8257078

def root_8257072 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8257072_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8257072_left_fuel : Nat := 1
def small_8257072_left_count : Nat := 1
def small_8257072_left_encoded : String := "00000003"
theorem small_8257072_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8257072_left_root small_8257072_left_fuel small_8257072_left_count small_8257072_left_encoded = true := by
  decide +kernel
theorem small_8257072_left_covered : CoveredBy scale carrier boxes small_8257072_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8257072_left_root small_8257072_left_fuel small_8257072_left_count small_8257072_left_encoded small_8257072_left_checked

theorem cover_8257072 : CoveredBy scale carrier boxes root_8257072 := by
  apply coveredBy_split_literal root_8257072 small_8257072_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8257078 coord3 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8257072_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8257078
#print axioms cover_8257072

def root_8253386 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8253386 : CoveredBy scale carrier boxes root_8253386 := by
  apply coveredBy_split_literal root_8253386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253387 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8257072 coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253387
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8257072
#print axioms cover_8253386

def root_8253380 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253380_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8253380_left_fuel : Nat := 1
def small_8253380_left_count : Nat := 1
def small_8253380_left_encoded : String := "00000002"
theorem small_8253380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8253380_left_root small_8253380_left_fuel small_8253380_left_count small_8253380_left_encoded = true := by
  decide +kernel
theorem small_8253380_left_covered : CoveredBy scale carrier boxes small_8253380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8253380_left_root small_8253380_left_fuel small_8253380_left_count small_8253380_left_encoded small_8253380_left_checked

theorem cover_8253380 : CoveredBy scale carrier boxes root_8253380 := by
  apply coveredBy_split_literal root_8253380 small_8253380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253386 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8253380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253386
#print axioms cover_8253380

def root_8247392 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8247392 : CoveredBy scale carrier boxes root_8247392 := by
  apply coveredBy_split_literal root_8247392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8253380 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247393
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8253380
#print axioms cover_8247392

def root_8247386 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247386_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247386_left_fuel : Nat := 1
def small_8247386_left_count : Nat := 1
def small_8247386_left_encoded : String := "00000004"
theorem small_8247386_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247386_left_root small_8247386_left_fuel small_8247386_left_count small_8247386_left_encoded = true := by
  decide +kernel
theorem small_8247386_left_covered : CoveredBy scale carrier boxes small_8247386_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247386_left_root small_8247386_left_fuel small_8247386_left_count small_8247386_left_encoded small_8247386_left_checked

theorem cover_8247386 : CoveredBy scale carrier boxes root_8247386 := by
  apply coveredBy_split_literal root_8247386 small_8247386_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247392 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8247386_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247392
#print axioms cover_8247386

def root_8261414 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8261414 : CoveredBy scale carrier boxes root_8261414 := by
  apply coveredBy_split_literal root_8261414 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3094.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3095.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3094.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3095.covered
#print axioms cover_8261414

def root_8261409 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8261409_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8261409_right_fuel : Nat := 1
def small_8261409_right_count : Nat := 1
def small_8261409_right_encoded : String := "00000004"
theorem small_8261409_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8261409_right_root small_8261409_right_fuel small_8261409_right_count small_8261409_right_encoded = true := by
  decide +kernel
theorem small_8261409_right_covered : CoveredBy scale carrier boxes small_8261409_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8261409_right_root small_8261409_right_fuel small_8261409_right_count small_8261409_right_encoded small_8261409_right_checked

theorem cover_8261409 : CoveredBy scale carrier boxes root_8261409 := by
  apply coveredBy_split_literal root_8261409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8261414 small_8261409_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8261414
  · exact small_8261409_right_covered
#print axioms cover_8261409

def root_8247385 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8247385 : CoveredBy scale carrier boxes root_8247385 := by
  apply coveredBy_split_literal root_8247385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8261409 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247386
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8261409
#print axioms cover_8247385

def root_8247379 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247379_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247379_left_fuel : Nat := 1
def small_8247379_left_count : Nat := 1
def small_8247379_left_encoded : String := "00000001"
theorem small_8247379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247379_left_root small_8247379_left_fuel small_8247379_left_count small_8247379_left_encoded = true := by
  decide +kernel
theorem small_8247379_left_covered : CoveredBy scale carrier boxes small_8247379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247379_left_root small_8247379_left_fuel small_8247379_left_count small_8247379_left_encoded small_8247379_left_checked

theorem cover_8247379 : CoveredBy scale carrier boxes root_8247379 := by
  apply coveredBy_split_literal root_8247379 small_8247379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247385 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8247379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247385
#print axioms cover_8247379

def root_8247378 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247378_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247378_right_fuel : Nat := 28
def small_8247378_right_count : Nat := 427
def small_8247378_right_encoded : String := "135D44F905000108135D4509000000040CFD9BFB0F350D040CFD9BFD000000070F34D106000000030C9A87040F8750FB00000007000000020F878CFB000000020280010013D7B10100000000028000F813D7ECF9000000010280010813D7B109000000040000000713D7ED090AD3577D000000070000000A000000040000000713D7ED01028000F813D7ECF9000000010280010813D7B109000000040AD3577D0000000710D10106000000030DE7CA040E5FD8FB00000007000000020E6014FB0000000203C0010013A51101000000000000000A0000000513D7ED090AD3577D10D13D060DE7CA040E5FD8FB0000000700000002000000050000000310D1010600000003000000050000000413D7B0F90280010800000007000000050000000100000000000000020F34D104000000020CFD9BFD0F350D060C9A87060F8750FD00000007000000030F878CFD000000030280010013D7B10100000000028000F813D7ECF9000000010280010813D7B109000000040000000713D7ED090AD3577B0000000710D10104000000020DE7CA060E5FD8FD00000006000000030E6014FD000000030140010013F5D9010000000003C000F813A54CF90000000103C0010800000006000000050000000500000005000000040000000713D7ED01028000F813D7ECF9000000010280010813D7B109000000040AD3577B000000070000000613D7ED090AD3577B10D13D040DE7CA060E5FD8FD0000000700000003000000050000000210D1010400000002000000050000000413D7B0F90280010800000007000000050000000100000000000000030F34D106000000030280010013D7B10100000000028000F813D7ECF9000000010280010813D7B109000000040AD3577B10D13D040AD3577D10D13D06014001000000000713F6150103C000F813A54CF900000001014001080000000713F615090BE879BB0000000710117104000000020BE879BD000000071011710600000003000000050000000400000007000000000000000310D1010600000003014001000000000A13F6150103C000F813A54CF9000000010140010813F5D909000000040BE879BB0000000A0000000A0000000500000005000000000000000210D10104000000020AD3577D10D13D060140010013F5D9010000000003C000F813A54CF900000001014001080000000613F6150909BE353B11777D040BE879BD000000060000000600000002000000060000000413A510F90140010800000006000000050000000113F6150103C000F80000000600000005000000000000000310D10106000000030140010013F5D9010000000003C000F813A54CF9000000010140010813F5D9090000000409BE353B11777D040000000A000000020000000600000005000000050000000513D7ED090AD3577B10D13D040AD3577D10D13D060140010013F5D9010000000003C000F813A54CF90000000103C0010813A51109000000040BE879BB000000070000000A0000000500000005000000050000000310D1010600000003000000050000000210D1010400000002000000050000000413D7B0F90280010813D7B109000000040AD3577B10D13D040AD3577D0000000710D1010600000003000000050000000210D101040000000200000005000000050000000113D7ED01028000F813D7ECF9000000010280010813D7B109000000040AD3577B10D13D040AD3577D10D13D0603C0010013A511010000000003C000F813A54CF9000000010140010813F5D909000000040BE879BB00000007000000060000000500000005000000050000000310D1010600000003000000050000000210D101040000000200000005000000050000000500000000135D81090CFD9BFB0F350D040CFD9BFD0F350D060C9A87040F8750FB00000007000000020F878CFB000000020C9A87060F8750FD00000007000000030F878CFD000000030280010013D7B10100000000028000F813D7ECF9000000010780010800000007000000080000000713D7ED01028000F813D7ECF90000000107800108128A4109000000040DE7CA040000000700000005000000050000000500000000000000030F34D106000000030C9A87040F8750FB0000000A000000020F878CFB00000002028001000000000A00000005000000020F34D104000000020CFD9BFD0F350D060C9A87060F8750FD028001000000000800000008000000030F878CFD000000030280010013D7B10100000000028000F813D7ECF90000000107800108128A4109000000040AD3577B10D13D040DE7CA0600000008000000050000000200000008000000050000000500000005000000030F34D10600000003000000050000000400000001"
theorem small_8247378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247378_right_root small_8247378_right_fuel small_8247378_right_count small_8247378_right_encoded = true := by
  decide +kernel
theorem small_8247378_right_covered : CoveredBy scale carrier boxes small_8247378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247378_right_root small_8247378_right_fuel small_8247378_right_count small_8247378_right_encoded small_8247378_right_checked

theorem cover_8247378 : CoveredBy scale carrier boxes root_8247378 := by
  apply coveredBy_split_literal root_8247378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247379 small_8247378_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247379
  · exact small_8247378_right_covered
#print axioms cover_8247378

def root_8247372 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247372_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8247372_left_fuel : Nat := 1
def small_8247372_left_count : Nat := 1
def small_8247372_left_encoded : String := "00000000"
theorem small_8247372_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8247372_left_root small_8247372_left_fuel small_8247372_left_count small_8247372_left_encoded = true := by
  decide +kernel
theorem small_8247372_left_covered : CoveredBy scale carrier boxes small_8247372_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8247372_left_root small_8247372_left_fuel small_8247372_left_count small_8247372_left_encoded small_8247372_left_checked

theorem cover_8247372 : CoveredBy scale carrier boxes root_8247372 := by
  apply coveredBy_split_literal root_8247372 small_8247372_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8247378 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8247372_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8247378
#print axioms cover_8247372

def root_8267572 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8267572 : CoveredBy scale carrier boxes root_8267572 := by
  apply coveredBy_split_literal root_8267572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3096.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3097.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3096.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3097.covered
#print axioms cover_8267572

def root_8267567 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8267567_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8267567_right_fuel : Nat := 1
def small_8267567_right_count : Nat := 1
def small_8267567_right_encoded : String := "00000002"
theorem small_8267567_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8267567_right_root small_8267567_right_fuel small_8267567_right_count small_8267567_right_encoded = true := by
  decide +kernel
theorem small_8267567_right_covered : CoveredBy scale carrier boxes small_8267567_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8267567_right_root small_8267567_right_fuel small_8267567_right_count small_8267567_right_encoded small_8267567_right_checked

theorem cover_8267567 : CoveredBy scale carrier boxes root_8267567 := by
  apply coveredBy_split_literal root_8267567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.root_8267572 small_8267567_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569.cover_8267572
  · exact small_8267567_right_covered
#print axioms cover_8267567

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0569
