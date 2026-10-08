import TaoBundleAssembly0520
import TaoBundleChunkBatch0714
import TaoBundleChunkBatch0715
import TaoBundleChunkBatch0716
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521
def root_7589238 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589238_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589238_left_fuel : Nat := 27
def small_7589238_left_count : Nat := 429
def small_7589238_left_encoded : String := "13D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD3577710D13D000DE7CA04000000050E6014FB00000002014001020000000513F61503014001060000000513F6150708C000FE0000000511FBE8FF0BE879B71011AD000000000A00000000000000070000000400000003000000010000000010D10100000000000DE7CA04000000070E6014FB0000000200000007128A40FF0AD3577710D13D000DE7CA040000000A0E6014FB00000002014001020000000A13F61503014001060000000A13F61507064000FE12FFACFF000000040BE879B70000000A000000070000000A00000003000000010000000010D1010000000000000000070000000413D7ED07078000FE128A7CFF000000040AD3577710D13D000DE7CA040E5FD8FB0140010213F5D9030000000103C001060000000513A54D0708C000FE0000000511FBE8FF00000008000000040000000313F6150303C0010613A511070000000308C000FE0000000511FBE8FF0BE879B70000000A000000070000000413A54D0708C000FE11FC24FF000000040000000811FBE8FF0BE879B71011AD000000000A00000000101171000000000000000008000000040000000300000001000000020E6014FB000000020140010213F5D9030000000103C0010613A511070000000308C000FE0000000511FBE8FF0BE879B71011AD000DAED87B000000080E962504000000020000000800000000000000080000000413A54D0708C000FE0000000811FBE8FF0BE879B71011AD00000000080000000000000008000000040000000313F6150303C0010613A511070000000308C000FE11FC24FF000000040BE879B71011AD000DAED87B000000080E9625040000000200000008000000000000000811FBE8FF0BE879B71011AD000DAED87B0E9661040000000A000000020E9625040000000201E0010213E95903000000010320010613C1090700000003000000080000000813E995030320010613C1090700000003082000FE000000080000000A13C14507082000FE0000000812465CFF0C730AD70000000A00000008000000040000000300000001000000001011710000000000000000080000000413A54D0708C000FE11FC24FF000000040BE879B71011AD000DAED87B000000080E9625040000000200000008000000000000000811FBE8FF0BE879B71011AD000DAED87B0E96610401E001020000000813E99503046001061383DD0700000003082000FE000000080000000A13841907082000FE000000080000000A0000000300000001000000020E9625040000000201E0010213E959030000000104600106000000080000000813E99503046001061383DD0700000003082000FE0000000812465CFF0C730AD700000009000000080000000413841907082000FE00000008000000090000000300000001000000001011710000000000000000080000000400000003000000010000000010D10100000000000DE7CA040E5FD8FB000000080000000200000008128A40FF0AD3577710D13D000DE7CA040E5FD8FB0000000A000000020E6014FB000000020140010213F5D9030000000103C0010613A5110700000003064000FE12FFACFF000000040BE879B70000000A1011710000000000000000080000000A13A54D07064000FE12FFACFF000000040BE879B71011AD000000000A000000001011710000000000000000080000000A0000000313F6150303C0010613A5110700000003064000FE12FFACFF000000040BE879B70000000A10117100000000000DAED87B0E96610400000007000000020E9625040000000201E0010200000008000000070000000A13A54D07064000FE12FFACFF000000040BE879B71011AD000DAED87B0000000A0E9625040000000201E001020000000913E99503046001060000000A1384190706E000FE000000090000000500000003000000010000000010117100000000000DAED87B0E96610401E001020000000813E9950304600106000000070000000600000001000000020E9625040000000201E001020000000813E99503046001061383DD070000000306E000FE0000000800000005000000050000000112FF70FF0BE879B70000000A10117100000000000DAED87B000000060E96250400000002000000050000000400000003000000010000000010D10100000000000DE7CA040E5FD8FB0140010213F5D9030000000103C00106000000070000000800000007000000020E6014FB000000020140010213F5D9030000000103C0010613A5110700000003064000FE00000008000000070000000813F6150303C001060000000713A54D07064000FE000000080000000500000003000000010000000400000003"
theorem small_7589238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7589238_left_root small_7589238_left_fuel small_7589238_left_count small_7589238_left_encoded = true := by
  decide +kernel
theorem small_7589238_left_covered : CoveredBy scale carrier boxes small_7589238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7589238_left_root small_7589238_left_fuel small_7589238_left_count small_7589238_left_encoded small_7589238_left_checked

theorem cover_7589238 : CoveredBy scale carrier boxes root_7589238 := by
  apply coveredBy_split_literal root_7589238 small_7589238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2856.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7589238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2856.covered
#print axioms cover_7589238

def root_7589232 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589232_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589232_left_fuel : Nat := 1
def small_7589232_left_count : Nat := 1
def small_7589232_left_encoded : String := "00000002"
theorem small_7589232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7589232_left_root small_7589232_left_fuel small_7589232_left_count small_7589232_left_encoded = true := by
  decide +kernel
theorem small_7589232_left_covered : CoveredBy scale carrier boxes small_7589232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7589232_left_root small_7589232_left_fuel small_7589232_left_count small_7589232_left_encoded small_7589232_left_checked

theorem cover_7589232 : CoveredBy scale carrier boxes root_7589232 := by
  apply coveredBy_split_literal root_7589232 small_7589232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7589238 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7589232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7589238
#print axioms cover_7589232

def root_7589002 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589002_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7589002_left_fuel : Nat := 22
def small_7589002_left_count : Nat := 109
def small_7589002_left_encoded : String := "0F8750FB0280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD357770000000A000000050000000713D7ED07078000FE128A7CFF000000040AD3577710D13D000B4D4404108010FB0000000A0000000210804CFB00000002014001020000000513F6150303C001060000000513A54D0708C000FE000000050000000A00000003000000010000000010D101000000000000000007128A40FF0AD357770000000A10D101000000000000000007000000040000000313D7ED030280010613D7B10700000003078000FE000000070000000713D7ED07078000FE128A7CFF000000040AD3577710D13D000B4D4404108010FB000000070000000210804CFB0000000203C0010213A511030000000103C001060000000713A54D0708C000FE11FC24FF000000040BE879B71011AD000BF3E58400000005100928FB00000002000000070000000000000007000000070000000313A54D0303C001060000000713A54D0708C000FE000000070000000700000003000000010000000000000007128A40FF0AD3577710D13D000000000A000000000000000700000004000000030000000100000002"
theorem small_7589002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7589002_left_root small_7589002_left_fuel small_7589002_left_count small_7589002_left_encoded = true := by
  decide +kernel
theorem small_7589002_left_covered : CoveredBy scale carrier boxes small_7589002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7589002_left_root small_7589002_left_fuel small_7589002_left_count small_7589002_left_encoded small_7589002_left_checked

theorem cover_7589002 : CoveredBy scale carrier boxes root_7589002 := by
  apply coveredBy_split_literal root_7589002 small_7589002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7589232 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7589002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7589232
#print axioms cover_7589002

def root_7588997 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7588997_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7588997_right_fuel : Nat := 1
def small_7588997_right_count : Nat := 1
def small_7588997_right_encoded : String := "00000002"
theorem small_7588997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7588997_right_root small_7588997_right_fuel small_7588997_right_count small_7588997_right_encoded = true := by
  decide +kernel
theorem small_7588997_right_covered : CoveredBy scale carrier boxes small_7588997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7588997_right_root small_7588997_right_fuel small_7588997_right_count small_7588997_right_encoded small_7588997_right_checked

theorem cover_7588997 : CoveredBy scale carrier boxes root_7588997 := by
  apply coveredBy_split_literal root_7588997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7589002 small_7588997_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7589002
  · exact small_7588997_right_covered
#print axioms cover_7588997

def root_7592770 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7592770 : CoveredBy scale carrier boxes root_7592770 := by
  apply coveredBy_split_literal root_7592770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2857.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2858.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2857.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2858.covered
#print axioms cover_7592770

def root_7592764 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7592764_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7592764_left_fuel : Nat := 1
def small_7592764_left_count : Nat := 1
def small_7592764_left_encoded : String := "00000002"
theorem small_7592764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7592764_left_root small_7592764_left_fuel small_7592764_left_count small_7592764_left_encoded = true := by
  decide +kernel
theorem small_7592764_left_covered : CoveredBy scale carrier boxes small_7592764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7592764_left_root small_7592764_left_fuel small_7592764_left_count small_7592764_left_encoded small_7592764_left_checked

theorem cover_7592764 : CoveredBy scale carrier boxes root_7592764 := by
  apply coveredBy_split_literal root_7592764 small_7592764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7592770 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7592764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7592770
#print axioms cover_7592764

def root_7588996 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7588996 : CoveredBy scale carrier boxes root_7588996 := by
  apply coveredBy_split_literal root_7588996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7588997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7592764 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7588997
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7592764
#print axioms cover_7588996

def root_7588990 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7588990_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7588990_left_fuel : Nat := 1
def small_7588990_left_count : Nat := 1
def small_7588990_left_encoded : String := "00000000"
theorem small_7588990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7588990_left_root small_7588990_left_fuel small_7588990_left_count small_7588990_left_encoded = true := by
  decide +kernel
theorem small_7588990_left_covered : CoveredBy scale carrier boxes small_7588990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7588990_left_root small_7588990_left_fuel small_7588990_left_count small_7588990_left_encoded small_7588990_left_checked

theorem cover_7588990 : CoveredBy scale carrier boxes root_7588990 := by
  apply coveredBy_split_literal root_7588990 small_7588990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7588996 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7588990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7588996
#print axioms cover_7588990

def root_7582666 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582666 : CoveredBy scale carrier boxes root_7582666 := by
  apply coveredBy_split_literal root_7582666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7582667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7588990 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7582667
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7588990
#print axioms cover_7582666

def root_7582660 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582660_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582660_left_fuel : Nat := 1
def small_7582660_left_count : Nat := 1
def small_7582660_left_encoded : String := "00000004"
theorem small_7582660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582660_left_root small_7582660_left_fuel small_7582660_left_count small_7582660_left_encoded = true := by
  decide +kernel
theorem small_7582660_left_covered : CoveredBy scale carrier boxes small_7582660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582660_left_root small_7582660_left_fuel small_7582660_left_count small_7582660_left_encoded small_7582660_left_checked

theorem cover_7582660 : CoveredBy scale carrier boxes root_7582660 := by
  apply coveredBy_split_literal root_7582660 small_7582660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582666 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7582660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582666
#print axioms cover_7582660

def root_7582659 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582659_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582659_right_fuel : Nat := 26
def small_7582659_right_count : Nat := 329
def small_7582659_right_encoded : String := "135D44FF0CFD9BF70F350D000CFD9BFB0000000A0F34D104000000020C9A87000F8750F70000000A000000000F878CF7000000000280010213D7B103000000010280010613D7B107000000030000000A13D7ED07028000FE13D7ECFF000000040AD3577B0000000A00000009000000090000000313D7ED030280010613D7B10700000003028000FE13D7ECFF000000040AD3577B0000000A10D10104000000020DE7CA000E5FD8F700000008000000000E6014F70000000003C0010213A511030000000100000009000000050000000A13D7ED07028000FE13D7ECFF000000040AD3577B10D13D040DE7CA000E5FD8F70000000A00000000000000050000000210D101040000000200000005000000050000000300000001000000000F34D100000000000CFD9BFB0F350D040C9A87040F8750FB0000000A000000020F878CFB000000020280010213D7B103000000010280010613D7B107000000030000000A13D7ED07028000FE13D7ECFF000000040AD357770000000A10D10100000000000DE7CA040E5FD8FB00000006000000020E6014FB000000020140010213F5D9030000000103C0010613A51107000000030000000700000005000000050000000A0000000313D7ED030280010613D7B10700000003028000FE13D7ECFF000000040AD357770000000A000000070000000713D7ED07028000FE13D7ECFF000000040AD3577710D13D000DE7CA040E5FD8FB0000000A00000002000000050000000010D101000000000000000005000000050000000300000001000000020F34D104000000020280010213D7B103000000010280010613D7B10700000003028000FE13D7ECFF000000040AD3577710D13D000AD3577B10D13D04014001020000000A13F61503014001060000000A13F6150703C000FE13A54CFF000000040BE879B70000000A10117100000000000BE879BB0000000A1011710400000002000000050000000500000003000000010000000210D1010400000002014001020000000913F615030140010613F5D9070000000303C000FE13A54CFF000000040BE879B700000009000000090000000500000005000000010000000010D10100000000000AD3577B10D13D040140010213F5D90300000001014001060000000713F6150703C000FE13A54CFF0000000409BE353711777D000BE879BB00000007000000070000000000000007000000050000000313F61503014001060000000700000005000000010000000210D10104000000020140010213F5D903000000010140010613F5D9070000000303C000FE13A54CFF0000000409BE353711777D0000000009000000000000000700000005000000050000000513D7B0FF0AD3577710D13D000AD3577B0000000A10D1010400000002000000050000000010D1010000000000000000050000000413D7ED07028000FE13D7ECFF000000040AD3577710D13D000AD3577B10D13D040140010213F5D9030000000103C0010613A511070000000303C000FE13A54CFF000000040BE879B700000009000000090000000500000005000000050000000210D1010400000002000000050000000010D101000000000000000005000000050000000313D7ED030280010613D7B10700000003028000FE13D7ECFF000000040AD3577710D13D000AD3577B10D13D0403C0010213A51103000000010140010613F5D9070000000303C000FE13A54CFF000000040BE879B70000000A000000070000000500000005000000050000000210D1010400000002000000050000000010D10100000000000000000500000005000000050000000100000004"
theorem small_7582659_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582659_right_root small_7582659_right_fuel small_7582659_right_count small_7582659_right_encoded = true := by
  decide +kernel
theorem small_7582659_right_covered : CoveredBy scale carrier boxes small_7582659_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582659_right_root small_7582659_right_fuel small_7582659_right_count small_7582659_right_encoded small_7582659_right_checked

theorem cover_7582659 : CoveredBy scale carrier boxes root_7582659 := by
  apply coveredBy_split_literal root_7582659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582660 small_7582659_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582660
  · exact small_7582659_right_covered
#print axioms cover_7582659

def root_7582653 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582653_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582653_left_fuel : Nat := 1
def small_7582653_left_count : Nat := 1
def small_7582653_left_encoded : String := "00000003"
theorem small_7582653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582653_left_root small_7582653_left_fuel small_7582653_left_count small_7582653_left_encoded = true := by
  decide +kernel
theorem small_7582653_left_covered : CoveredBy scale carrier boxes small_7582653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582653_left_root small_7582653_left_fuel small_7582653_left_count small_7582653_left_encoded small_7582653_left_checked

theorem cover_7582653 : CoveredBy scale carrier boxes root_7582653 := by
  apply coveredBy_split_literal root_7582653 small_7582653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582659 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7582653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582659
#print axioms cover_7582653

def root_7598012 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7598012 : CoveredBy scale carrier boxes root_7598012 := by
  apply coveredBy_split_literal root_7598012 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2859.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2860.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2859.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2860.covered
#print axioms cover_7598012

def root_7598006 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598006_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598006_left_fuel : Nat := 1
def small_7598006_left_count : Nat := 1
def small_7598006_left_encoded : String := "00000004"
theorem small_7598006_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7598006_left_root small_7598006_left_fuel small_7598006_left_count small_7598006_left_encoded = true := by
  decide +kernel
theorem small_7598006_left_covered : CoveredBy scale carrier boxes small_7598006_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7598006_left_root small_7598006_left_fuel small_7598006_left_count small_7598006_left_encoded small_7598006_left_checked

theorem cover_7598006 : CoveredBy scale carrier boxes root_7598006 := by
  apply coveredBy_split_literal root_7598006 small_7598006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7598012 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7598006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7598012
#print axioms cover_7598006

def root_7598005 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598005_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598005_right_fuel : Nat := 17
def small_7598005_right_count : Nat := 85
def small_7598005_right_encoded : String := "135D44FF0CFD9BF70F350D000CFD9BFB0F350D040C9A87000F8750F70000000A000000000F878CF7000000000C9A87040F8750FB0000000A000000020F878CFB000000020280010213D7B10300000001078001060000000A0000000613D7ED0307800106128A410700000003028000FE13D7ECFF000000040DE7CA000000000A00000005000000050000000500000001000000020F34D104000000020C9A87000F8750F700000009000000000F878CF700000000028001020000000900000005000000000F34D100000000000CFD9BFB0F350D040C9A87040F8750FB028001020000000600000006000000020F878CFB000000020280010213D7B1030000000107800106128A410700000003028000FE13D7ECFF000000040AD3577710D13D000DE7CA0400000006000000050000000000000006000000050000000500000005000000020F34D104000000020000000500000004"
theorem small_7598005_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7598005_right_root small_7598005_right_fuel small_7598005_right_count small_7598005_right_encoded = true := by
  decide +kernel
theorem small_7598005_right_covered : CoveredBy scale carrier boxes small_7598005_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7598005_right_root small_7598005_right_fuel small_7598005_right_count small_7598005_right_encoded small_7598005_right_checked

theorem cover_7598005 : CoveredBy scale carrier boxes root_7598005 := by
  apply coveredBy_split_literal root_7598005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7598006 small_7598005_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7598006
  · exact small_7598005_right_covered
#print axioms cover_7598005

def root_7598000 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598000_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7598000_right_fuel : Nat := 1
def small_7598000_right_count : Nat := 1
def small_7598000_right_encoded : String := "00000003"
theorem small_7598000_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7598000_right_root small_7598000_right_fuel small_7598000_right_count small_7598000_right_encoded = true := by
  decide +kernel
theorem small_7598000_right_covered : CoveredBy scale carrier boxes small_7598000_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7598000_right_root small_7598000_right_fuel small_7598000_right_count small_7598000_right_encoded small_7598000_right_checked

theorem cover_7598000 : CoveredBy scale carrier boxes root_7598000 := by
  apply coveredBy_split_literal root_7598000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7598005 small_7598000_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7598005
  · exact small_7598000_right_covered
#print axioms cover_7598000

def root_7582652 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582652 : CoveredBy scale carrier boxes root_7582652 := by
  apply coveredBy_split_literal root_7582652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7598000 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7598000
#print axioms cover_7582652

def root_7582646 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582646_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582646_left_fuel : Nat := 1
def small_7582646_left_count : Nat := 1
def small_7582646_left_encoded : String := "00000001"
theorem small_7582646_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582646_left_root small_7582646_left_fuel small_7582646_left_count small_7582646_left_encoded = true := by
  decide +kernel
theorem small_7582646_left_covered : CoveredBy scale carrier boxes small_7582646_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582646_left_root small_7582646_left_fuel small_7582646_left_count small_7582646_left_encoded small_7582646_left_checked

theorem cover_7582646 : CoveredBy scale carrier boxes root_7582646 := by
  apply coveredBy_split_literal root_7582646 small_7582646_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582652 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7582646_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582652
#print axioms cover_7582646

def root_7603610 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7603610 : CoveredBy scale carrier boxes root_7603610 := by
  apply coveredBy_split_literal root_7603610 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2861.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2862.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2861.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2862.covered
#print axioms cover_7603610

def root_7603605 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603605_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603605_right_fuel : Nat := 1
def small_7603605_right_count : Nat := 1
def small_7603605_right_encoded : String := "00000000"
theorem small_7603605_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603605_right_root small_7603605_right_fuel small_7603605_right_count small_7603605_right_encoded = true := by
  decide +kernel
theorem small_7603605_right_covered : CoveredBy scale carrier boxes small_7603605_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603605_right_root small_7603605_right_fuel small_7603605_right_count small_7603605_right_encoded small_7603605_right_checked

theorem cover_7603605 : CoveredBy scale carrier boxes root_7603605 := by
  apply coveredBy_split_literal root_7603605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603610 small_7603605_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603610
  · exact small_7603605_right_covered
#print axioms cover_7603605

def root_7603604 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603604_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603604_right_fuel : Nat := 32
def small_7603604_right_count : Nat := 335
def small_7603604_right_encoded : String := "0F34D100000000000CFD9BFB0F350D040C9A87040F8750FB07800102128A410300000001028001060000000713D7ED07078000FE128A7CFF000000040AD3577710D13D000000000700000000000000070000000700000003128A7D030000000700000001000000020F878CFB0000000207800102128A4103000000010280010613D7B10700000003078000FE128A7CFF000000040AD3577710D13D000000000700000000000000070000000713D7ED07078000FE128A7CFF000000040AD3577710D13D000DE7CA040E5FD8FB0640010212FF71030000000103C001060000000713A54D0708C000FE11FC24FF000000040BE879B71011AD00000000070000000000000007000000070000000312FFAD030000000700000001000000020E6014FB000000020640010212FF71030000000103C0010613A511070000000308C000FE11FC24FF00000004000000070000000713A54D0708C000FE11FC24FF000000040BE879B71011AD000DAED87B0E96610405A001021331350300000001046001060000000713841907096000FE11AABCFF00000004000000070000000500000003133171030000000700000001000000020E9625040000000205A001021331350300000001046001061383DD0700000003096000FE0000000700000005000000050000000500000000101171000000000000000007000000050000000312FFAD0303C001060000000700000005000000010000000010D101000000000000000007128A40FF0AD3577710D13D000DE7CA040E5FD8FB0640010212FF71030000000103C0010600000007000000050000000500000002000000050000000010D1010000000000000000050000000400000003128A7D03028001060000000713D7ED07078000FE128A7CFF000000040AD3577710D13D000DE7CA0400000007000000050000000000000007000000050000000300000001000000020F34D1040000000207800102128A4103000000010280010613D7B10700000003078000FE128A7CFF000000040AD3577710D13D000AD3577B10D13D040640010212FF7103000000010140010613F5D9070000000308C000FE000000060000000713F6150708C000FE11FC24FF000000040BE879B71011AD000BE879BB0000000700000006000000000000000711FBE8FF0BE879B71011AD000BE879BB00000007000000070000000000000007000000040000000312FFAD03014001060000000713F6150708C000FE11FC24FF00000004000000070000000500000003000000010000000210D10104000000020640010212FF71030000000100000006000000060000000010D10100000000000AD3577B0000000700000007128A40FF0AD3577710D13D000AD3577B10D13D040640010212FF710300000001014001060000000700000005000000050000000210D1010400000002000000050000000010D1010000000000000000050000000413D7ED07078000FE128A7CFF000000040AD3577710D13D000AD3577B10D13D040640010212FF71030000000103C0010613A511070000000308C000FE11FC24FF000000040BE879B71011AD000BE879BB1011AD0405A001021331350300000001032001060000000713C145070000000A00000003133171030000000A00000001000000020000000A000000000000000A0000000500000005000000050000000210D1010400000002000000050000000010D1010000000000000000050000000500000003128A7D030280010613D7B10700000003078000FE128A7CFF000000040AD3577710D13D000AD3577B10D13D04000000070000000210D1010400000002000000050000000000000007000000050000000500000001"
theorem small_7603604_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603604_right_root small_7603604_right_fuel small_7603604_right_count small_7603604_right_encoded = true := by
  decide +kernel
theorem small_7603604_right_covered : CoveredBy scale carrier boxes small_7603604_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603604_right_root small_7603604_right_fuel small_7603604_right_count small_7603604_right_encoded small_7603604_right_checked

theorem cover_7603604 : CoveredBy scale carrier boxes root_7603604 := by
  apply coveredBy_split_literal root_7603604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603605 small_7603604_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603605
  · exact small_7603604_right_covered
#print axioms cover_7603604

def root_7603598 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603598_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603598_left_fuel : Nat := 1
def small_7603598_left_count : Nat := 1
def small_7603598_left_encoded : String := "00000004"
theorem small_7603598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603598_left_root small_7603598_left_fuel small_7603598_left_count small_7603598_left_encoded = true := by
  decide +kernel
theorem small_7603598_left_covered : CoveredBy scale carrier boxes small_7603598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603598_left_root small_7603598_left_fuel small_7603598_left_count small_7603598_left_encoded small_7603598_left_checked

theorem cover_7603598 : CoveredBy scale carrier boxes root_7603598 := by
  apply coveredBy_split_literal root_7603598 small_7603598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603604 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7603598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603604
#print axioms cover_7603598

def root_7603597 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603597_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603597_right_fuel : Nat := 17
def small_7603597_right_count : Nat := 91
def small_7603597_right_encoded : String := "135D44FF0CFD9BF70F350D000CFD9BFB0F350D040C9A87000F8750F70000000A000000000F878CF7000000000C9A87040F8750FB0000000A000000020F878CFB0000000207800102128A410300000001028001060000000A13D7ED07028000FE13D7ECFF000000040DE7CA000000000A000000050000000500000003128A7D0302800106000000080000000500000001000000020F34D104000000020C9A87000F8750F707800102128A4103000000010000000800000008000000000F878CF70000000007800102128A4103000000010280010613D7B10700000003028000FE13D7ECFF000000040AD3577B10D13D040DE7CA0000000008000000050000000200000008000000050000000500000005000000000F34D100000000000CFD9BFB0F350D040C9A87040F8750FB00000007000000020F878CFB0000000207800102128A41030000000102800106000000070000000500000005000000020F34D104000000020000000500000004"
theorem small_7603597_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603597_right_root small_7603597_right_fuel small_7603597_right_count small_7603597_right_encoded = true := by
  decide +kernel
theorem small_7603597_right_covered : CoveredBy scale carrier boxes small_7603597_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603597_right_root small_7603597_right_fuel small_7603597_right_count small_7603597_right_encoded small_7603597_right_checked

theorem cover_7603597 : CoveredBy scale carrier boxes root_7603597 := by
  apply coveredBy_split_literal root_7603597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603598 small_7603597_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603598
  · exact small_7603597_right_covered
#print axioms cover_7603597

def root_7603591 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603591_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603591_left_fuel : Nat := 1
def small_7603591_left_count : Nat := 1
def small_7603591_left_encoded : String := "00000003"
theorem small_7603591_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603591_left_root small_7603591_left_fuel small_7603591_left_count small_7603591_left_encoded = true := by
  decide +kernel
theorem small_7603591_left_covered : CoveredBy scale carrier boxes small_7603591_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603591_left_root small_7603591_left_fuel small_7603591_left_count small_7603591_left_encoded small_7603591_left_checked

theorem cover_7603591 : CoveredBy scale carrier boxes root_7603591 := by
  apply coveredBy_split_literal root_7603591 small_7603591_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603597 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7603591_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603597
#print axioms cover_7603591

def root_7603590 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7603590 : CoveredBy scale carrier boxes root_7603590 := by
  apply coveredBy_split_literal root_7603590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603591 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2863.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603591
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2863.covered
#print axioms cover_7603590

def root_7603585 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603585_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7603585_right_fuel : Nat := 1
def small_7603585_right_count : Nat := 1
def small_7603585_right_encoded : String := "00000001"
theorem small_7603585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7603585_right_root small_7603585_right_fuel small_7603585_right_count small_7603585_right_encoded = true := by
  decide +kernel
theorem small_7603585_right_covered : CoveredBy scale carrier boxes small_7603585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7603585_right_root small_7603585_right_fuel small_7603585_right_count small_7603585_right_encoded small_7603585_right_checked

theorem cover_7603585 : CoveredBy scale carrier boxes root_7603585 := by
  apply coveredBy_split_literal root_7603585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603590 small_7603585_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603590
  · exact small_7603585_right_covered
#print axioms cover_7603585

def root_7582645 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582645 : CoveredBy scale carrier boxes root_7582645 := by
  apply coveredBy_split_literal root_7582645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7603585 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7603585
#print axioms cover_7582645

def root_7582640 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582640_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582640_right_fuel : Nat := 1
def small_7582640_right_count : Nat := 1
def small_7582640_right_encoded : String := "00000002"
theorem small_7582640_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582640_right_root small_7582640_right_fuel small_7582640_right_count small_7582640_right_encoded = true := by
  decide +kernel
theorem small_7582640_right_covered : CoveredBy scale carrier boxes small_7582640_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582640_right_root small_7582640_right_fuel small_7582640_right_count small_7582640_right_encoded small_7582640_right_checked

theorem cover_7582640 : CoveredBy scale carrier boxes root_7582640 := by
  apply coveredBy_split_literal root_7582640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582645 small_7582640_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582645
  · exact small_7582640_right_covered
#print axioms cover_7582640

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521
