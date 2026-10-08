import TaoBundleAssembly0181
import TaoBundleAssembly0182
import TaoBundleChunkBatch0715
import TaoBundleChunkBatch0716
import TaoBundleChunkBatch0717
import TaoBundleChunkBatch0718
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183
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
  apply coveredBy_split_literal root_7589232 small_7589232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.root_7589238 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7589232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.cover_7589238
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
  apply coveredBy_split_literal root_7589002 small_7589002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7589232 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7589002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7589232
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
  apply coveredBy_split_literal root_7588997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7589002 small_7588997_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7589002
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
  apply coveredBy_split_literal root_7592764 small_7592764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7592770 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7592764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7592770
#print axioms cover_7592764

def root_7588996 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7588996 : CoveredBy scale carrier boxes root_7588996 := by
  apply coveredBy_split_literal root_7588996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7588997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7592764 coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7588997
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7592764
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
  apply coveredBy_split_literal root_7588990 small_7588990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7588996 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7588990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7588996
#print axioms cover_7588990

def root_7582666 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582666 : CoveredBy scale carrier boxes root_7582666 := by
  apply coveredBy_split_literal root_7582666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.root_7582667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7588990 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.cover_7582667
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7588990
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
  apply coveredBy_split_literal root_7582660 small_7582660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582666 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7582660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582666
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
  apply coveredBy_split_literal root_7582659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582660 small_7582659_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582660
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
  apply coveredBy_split_literal root_7582653 small_7582653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582659 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7582653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582659
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
  apply coveredBy_split_literal root_7598006 small_7598006_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7598012 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7598006_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7598012
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
  apply coveredBy_split_literal root_7598005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7598006 small_7598005_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7598006
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
  apply coveredBy_split_literal root_7598000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7598005 small_7598000_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7598005
  · exact small_7598000_right_covered
#print axioms cover_7598000

def root_7582652 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582652 : CoveredBy scale carrier boxes root_7582652 := by
  apply coveredBy_split_literal root_7582652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7598000 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7598000
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
  apply coveredBy_split_literal root_7582646 small_7582646_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582652 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7582646_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582652
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
  apply coveredBy_split_literal root_7603605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603610 small_7603605_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603610
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
  apply coveredBy_split_literal root_7603604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603605 small_7603604_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603605
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
  apply coveredBy_split_literal root_7603598 small_7603598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603604 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7603598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603604
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
  apply coveredBy_split_literal root_7603597 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603598 small_7603597_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603598
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
  apply coveredBy_split_literal root_7603591 small_7603591_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603597 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7603591_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603597
#print axioms cover_7603591

def root_7603590 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7603590 : CoveredBy scale carrier boxes root_7603590 := by
  apply coveredBy_split_literal root_7603590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603591 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2863.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603591
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
  apply coveredBy_split_literal root_7603585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603590 small_7603585_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603590
  · exact small_7603585_right_covered
#print axioms cover_7603585

def root_7582645 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7582645 : CoveredBy scale carrier boxes root_7582645 := by
  apply coveredBy_split_literal root_7582645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7603585 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582646
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7603585
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
  apply coveredBy_split_literal root_7582640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582645 small_7582640_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582645
  · exact small_7582640_right_covered
#print axioms cover_7582640

def root_7582639 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582639_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582639_right_fuel : Nat := 24
def small_7582639_right_count : Nat := 339
def small_7582639_right_encoded : String := "120701040000000205000102135D45030000000105000106135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F700000009000000000F878CF700000000028001020000000913D7ED030280010613D7B10700000003078000FE000000060000000913D7ED07078000FE000000090000000900000003000000010000000200000009000000000F34D10000000000045489FB1386AD040280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD35777000000060000000A128A40FF0AD3577710D13D00000000090000000010D1010000000000067ECE7B12EA950401400102000000090000000A00000002000000060000000413D7ED07078000FE128A7CFF000000040000000A000000090000000313D7ED030280010613D7B10700000003078000FE128A7CFF0000000400000006128A40FF0AD3577710D13D00067ECE7B12EA950403C00102000000060000000500000002000000060000000010D1010000000000000000050000000413D7ED07078000FE0000000A00000005000000030000000100000002138671040000000202800102000000090000000A135D44FF0CFD9BF70F350D00045489FB1386AD040C9A8700000000090F878CF700000000028001020000000913D7ED030280010613D7B10700000003028000FE000000090000000500000005000000010000000200000009000000000F34D10000000000045489FB1386AD040280010213D7B103000000010280010613D7B10700000003028000FE13D7ECFF000000040AD357770000000910D1010000000000000000050000000500000005000000050000000213867104000000020000000500000004135D8107050000FE135D80FF000000040CFD9BF70F350D0000000009000000000F34D10000000000045489FB1386AD040280010200000009000000050000000200000009135D44FF0CFD9BF70F350D0000000009000000000F34D10000000000000000050000000400000003135D810305000106135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F707800102128A4103000000010280010613D7B107000000030000000613D7ED07078000FE000000090000000800000003128A7D03028001060000000613D7ED07078000FE00000006000000050000000300000001000000000F878CF70000000007800102128A4103000000010280010613D7B10700000003078000FE00000006128A40FF067ECE7B12EA95040000000600000002000000060000000413D7ED07078000FE128A7CFF00000004067ECE7B12EA95040DE7CA000E5FD8F700000006000000000000000500000002000000060000000500000003128A7D030280010613D7B10700000003078000FE000000060000000500000005000000010000000213867104000000020C9A87000F8750F700000006000000000F878CF700000000078001020000000600000005000000000F34D10000000000045489FB1386AD0407800102128A4103000000010280010613D7B10700000003078000FE0000000A000000050000000500000005000000020000000A135D44FF0CFD9BF70F350D00045489FB1386AD040C9A87000F8750F700000008000000000000000500000002138671040000000200000005000000000F34D100000000000000000500000004135D8107050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F7078001020000000900000005000000000000000500000002138671040000000200000005000000000F34D1000000000000000005000000050000000300000001"
theorem small_7582639_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582639_right_root small_7582639_right_fuel small_7582639_right_count small_7582639_right_encoded = true := by
  decide +kernel
theorem small_7582639_right_covered : CoveredBy scale carrier boxes small_7582639_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582639_right_root small_7582639_right_fuel small_7582639_right_count small_7582639_right_encoded small_7582639_right_checked

theorem cover_7582639 : CoveredBy scale carrier boxes root_7582639 := by
  apply coveredBy_split_literal root_7582639 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582640 small_7582639_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582640
  · exact small_7582639_right_covered
#print axioms cover_7582639

def root_7582634 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582634_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582634_right_fuel : Nat := 1
def small_7582634_right_count : Nat := 1
def small_7582634_right_encoded : String := "00000000"
theorem small_7582634_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582634_right_root small_7582634_right_fuel small_7582634_right_count small_7582634_right_encoded = true := by
  decide +kernel
theorem small_7582634_right_covered : CoveredBy scale carrier boxes small_7582634_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582634_right_root small_7582634_right_fuel small_7582634_right_count small_7582634_right_encoded small_7582634_right_checked

theorem cover_7582634 : CoveredBy scale carrier boxes root_7582634 := by
  apply coveredBy_split_literal root_7582634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582639 small_7582634_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582639
  · exact small_7582634_right_covered
#print axioms cover_7582634

def root_7582633 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582633_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582633_right_fuel : Nat := 26
def small_7582633_right_count : Nat := 387
def small_7582633_right_encoded : String := "120701000000000008A912FB12073D0405000102135D45030000000105000106135D450700000003050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB00000007000000020F878CFB000000020280010213D7B10300000001028001060000000713D7ED07078000FE00000008000000070000000313D7ED03028001060000000713D7ED07078000FE00000007000000070000000300000001000000020F34D104000000020280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF00000004067ECE7712EA95000AD3577B000000080000000A0000000000000007128A40FF067ECE7712EA95000AD3577B10D13D04000000070000000210D101040000000201400102000000080000000700000000000000070000000413D7ED07078000FE128A7CFF0000000400000008128A40FF067ECE7712EA95000AD3577B10D13D040140010200000008000000050000000210D1010400000002000000050000000000000008000000040000000313D7ED030280010613D7B10700000003078000FE128A7CFF000000040000000A0000000713D7ED07078000FE0000000A0000000500000003000000010000000013867100000000000CFD9BFB0F350D0400000007000000020F34D10400000002028001020000000800000007135D44FF045489F71386AD000CFD9BFB0F350D040C9A8704000000070F878CFB000000020280010213D7B10300000001028001060000000713D7ED07028000FE00000007000000050000000300000007000000020F34D104000000020280010213D7B103000000010280010613D7B10700000003028000FE13D7ECFF00000004067ECE7712EA95000AD3577B0000000710D10104000000020000000500000000000000070000000500000005000000050000000013867100000000000CFD9BFB000000070000000700000004135D8107050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB0280010213D7B1030000000107800106128A410700000003000000080000000813D7ED0307800106128A410700000003078000FE0000000700000006128A7D07078000FE00000008000000050000000300000001000000020F878CFB000000020280010213D7B1030000000107800106128A410700000003078000FE00000008128A40FF067ECE7712EA950000000008000000000000000800000004128A7D07078000FE00000008000000050000000313D7ED0307800106128A410700000003078000FE128A7CFF00000004067ECE7712EA95000DE7CA040E5FD8FB0000000700000002000000050000000000000007000000050000000500000001000000020F34D104000000020280010213D7B1030000000107800106128A410700000003078000FE0000000A0000000500000005000000050000000013867100000000000CFD9BFB0F350D040C9A87040F8750FB00000007000000020F878CFB00000002028001020000000800000005000000020F34D1040000000200000005135D44FF045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB000000060000000200000005000000020F34D1040000000200000005000000001386710000000000000000050000000400000003135D810305000106135D450700000003050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D0400000007000000020F34D1040000000207800102128A4103000000010280010600000007000000050000000500000000138671000000000000000007135D44FF045489F71386AD000CFD9BFB0F350D0400000007000000020F34D1040000000200000005000000000000000700000004135D8107050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB07800102128A410300000001078001060000000700000005000000050000000200000005000000020F34D10400000002000000050000000013867100000000000000000500000005000000030000000100000002120701040000000205000102135D45030000000105000106135D450700000003050000FE135D80FF00000004045489F70000000A0000000A000000050000000500000005"
theorem small_7582633_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582633_right_root small_7582633_right_fuel small_7582633_right_count small_7582633_right_encoded = true := by
  decide +kernel
theorem small_7582633_right_covered : CoveredBy scale carrier boxes small_7582633_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582633_right_root small_7582633_right_fuel small_7582633_right_count small_7582633_right_encoded small_7582633_right_checked

theorem cover_7582633 : CoveredBy scale carrier boxes root_7582633 := by
  apply coveredBy_split_literal root_7582633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582634 small_7582633_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582634
  · exact small_7582633_right_covered
#print axioms cover_7582633

def root_7582628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582628_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582628_right_fuel : Nat := 1
def small_7582628_right_count : Nat := 1
def small_7582628_right_encoded : String := "00000004"
theorem small_7582628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582628_right_root small_7582628_right_fuel small_7582628_right_count small_7582628_right_encoded = true := by
  decide +kernel
theorem small_7582628_right_covered : CoveredBy scale carrier boxes small_7582628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582628_right_root small_7582628_right_fuel small_7582628_right_count small_7582628_right_encoded small_7582628_right_checked

theorem cover_7582628 : CoveredBy scale carrier boxes root_7582628 := by
  apply coveredBy_split_literal root_7582628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582633 small_7582628_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582633
  · exact small_7582628_right_covered
#print axioms cover_7582628

def root_7553794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7553794 : CoveredBy scale carrier boxes root_7553794 := by
  apply coveredBy_split_literal root_7553794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.root_7553795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7582628 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0182.cover_7553795
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7582628
#print axioms cover_7553794

def root_7553788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553788_left_fuel : Nat := 1
def small_7553788_left_count : Nat := 1
def small_7553788_left_encoded : String := "00000003"
theorem small_7553788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553788_left_root small_7553788_left_fuel small_7553788_left_count small_7553788_left_encoded = true := by
  decide +kernel
theorem small_7553788_left_covered : CoveredBy scale carrier boxes small_7553788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553788_left_root small_7553788_left_fuel small_7553788_left_count small_7553788_left_encoded small_7553788_left_checked

theorem cover_7553788 : CoveredBy scale carrier boxes root_7553788 := by
  apply coveredBy_split_literal root_7553788 small_7553788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7553794 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7553788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7553794
#print axioms cover_7553788

def root_7553787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7553787 : CoveredBy scale carrier boxes root_7553787 := by
  apply coveredBy_split_literal root_7553787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7553788 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2864.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7553788
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2864.covered
#print axioms cover_7553787

def root_7553781 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553781_left_fuel : Nat := 1
def small_7553781_left_count : Nat := 1
def small_7553781_left_encoded : String := "00000002"
theorem small_7553781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553781_left_root small_7553781_left_fuel small_7553781_left_count small_7553781_left_encoded = true := by
  decide +kernel
theorem small_7553781_left_covered : CoveredBy scale carrier boxes small_7553781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553781_left_root small_7553781_left_fuel small_7553781_left_count small_7553781_left_encoded small_7553781_left_checked

theorem cover_7553781 : CoveredBy scale carrier boxes root_7553781 := by
  apply coveredBy_split_literal root_7553781 small_7553781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7553787 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7553781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7553787
#print axioms cover_7553781

def root_7547421 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547421 : CoveredBy scale carrier boxes root_7547421 := by
  apply coveredBy_split_literal root_7547421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7547422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7553781 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7547422
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7553781
#print axioms cover_7547421

def root_7547415 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547415_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547415_left_fuel : Nat := 1
def small_7547415_left_count : Nat := 1
def small_7547415_left_encoded : String := "00000001"
theorem small_7547415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547415_left_root small_7547415_left_fuel small_7547415_left_count small_7547415_left_encoded = true := by
  decide +kernel
theorem small_7547415_left_covered : CoveredBy scale carrier boxes small_7547415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547415_left_root small_7547415_left_fuel small_7547415_left_count small_7547415_left_encoded small_7547415_left_checked

theorem cover_7547415 : CoveredBy scale carrier boxes root_7547415 := by
  apply coveredBy_split_literal root_7547415 small_7547415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7547421 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7547415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7547421
#print axioms cover_7547415

def root_7618619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618619_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618619_right_fuel : Nat := 42
def small_7618619_right_count : Nat := 319
def small_7618619_right_encoded : String := "115225070A0000FE115224FF0000000408A912F712073D0008A91303120701020000000108A912FB12073D0408A913070000000A12073D0608A912FF12073CFE00000004000000050000000A000000030000000212070104000000020000000512073D0208A912FB12073D0408A91307120701060000000308A912FF12073CFE00000004000000050000000A12073D0608A912FF12073CFE000000040CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A0000000400000003000000020F34D10400000002000000050F350D020CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350CFE00000004000000050F34D0FE0000000A000000040F350D060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF000000040B4D4400108010F70B4D440210801103000000010B4D4404108010FB00000007000000020000000710804D030B4D44040000000910804CFB000000020000000A000000010000000010804CF7000000000B4D440210801103000000010B4D4404108010FB0B4D44060000000910804D0700000006000000030000000210804CFB000000020000000A10804D030B4D44040000000900000005000000010F8750FF0B4D4400108010F7000000050000000000000005000000040F878D070C9A86FE000000070000000500000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0F878CFF000000040B4D4400108010F70000000A000000000000000500000005000000050F878D030C9A87040F8750FB0C9A87060F875107000000030C9A86FE000000090000000500000005000000020000000500000001000000000F878CF7000000000C9A87020F875103000000010C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF000000040DE7CA000E5FD8F70000000A000000000000000500000005000000050000000200000005000000050F34D0FE0C9A87000F8750F70C9A87020F875103000000010C9A87040F8750FB0C9A87060000000A0000000A000000020000000A0F878D030000000A00000001000000000F878CF7000000000000000A0000000400000003000000020F34D104000000020CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A000000040000000300000001000000000F34D100000000000CFD9C030F34D10200000001000000050F350D020CFD9BFB0F350D040CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A0000000400000003000000020F34D104000000020000000500000001120700FE0CFD9BF70F350D000CFD9C030000000A0F350D020CFD9BFB0000000A0000000A00000001000000000F34D100000000000000000A000000040000000300000002120701040000000208A913070000000A12073D0608A912FF12073CFE00000004000000050000000A000000030000000100000000120701000000000008A9130312070102000000010000000512073D0208A912FB12073D0408A913070000000A12073D0608A912FF12073CFE00000004000000050000000A0000000300000002120701040000000200000005000000010000000500000003"
theorem small_7618619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7618619_right_root small_7618619_right_fuel small_7618619_right_count small_7618619_right_encoded = true := by
  decide +kernel
theorem small_7618619_right_covered : CoveredBy scale carrier boxes small_7618619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7618619_right_root small_7618619_right_fuel small_7618619_right_count small_7618619_right_encoded small_7618619_right_checked

theorem cover_7618619 : CoveredBy scale carrier boxes root_7618619 := by
  apply coveredBy_split_literal root_7618619 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2866.root small_7618619_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2866.covered
  · exact small_7618619_right_covered
#print axioms cover_7618619

def root_7618613 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618613_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618613_left_fuel : Nat := 1
def small_7618613_left_count : Nat := 1
def small_7618613_left_encoded : String := "00000002"
theorem small_7618613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7618613_left_root small_7618613_left_fuel small_7618613_left_count small_7618613_left_encoded = true := by
  decide +kernel
theorem small_7618613_left_covered : CoveredBy scale carrier boxes small_7618613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7618613_left_root small_7618613_left_fuel small_7618613_left_count small_7618613_left_encoded small_7618613_left_checked

theorem cover_7618613 : CoveredBy scale carrier boxes root_7618613 := by
  apply coveredBy_split_literal root_7618613 small_7618613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7618619 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7618613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7618619
#print axioms cover_7618613

def root_7616253 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7616253 : CoveredBy scale carrier boxes root_7616253 := by
  apply coveredBy_split_literal root_7616253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2865.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7618613 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2865.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7618613
#print axioms cover_7616253

def root_7616248 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7616248_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7616248_right_fuel : Nat := 1
def small_7616248_right_count : Nat := 1
def small_7616248_right_encoded : String := "00000001"
theorem small_7616248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7616248_right_root small_7616248_right_fuel small_7616248_right_count small_7616248_right_encoded = true := by
  decide +kernel
theorem small_7616248_right_covered : CoveredBy scale carrier boxes small_7616248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7616248_right_root small_7616248_right_fuel small_7616248_right_count small_7616248_right_encoded small_7616248_right_checked

theorem cover_7616248 : CoveredBy scale carrier boxes root_7616248 := by
  apply coveredBy_split_literal root_7616248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7616253 small_7616248_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7616253
  · exact small_7616248_right_covered
#print axioms cover_7616248

def root_7547414 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547414 : CoveredBy scale carrier boxes root_7547414 := by
  apply coveredBy_split_literal root_7547414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7547415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7616248 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7547415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7616248
#print axioms cover_7547414

def root_7547408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547408_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547408_left_fuel : Nat := 1
def small_7547408_left_count : Nat := 1
def small_7547408_left_encoded : String := "00000000"
theorem small_7547408_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547408_left_root small_7547408_left_fuel small_7547408_left_count small_7547408_left_encoded = true := by
  decide +kernel
theorem small_7547408_left_covered : CoveredBy scale carrier boxes small_7547408_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547408_left_root small_7547408_left_fuel small_7547408_left_count small_7547408_left_encoded small_7547408_left_checked

theorem cover_7547408 : CoveredBy scale carrier boxes root_7547408 := by
  apply coveredBy_split_literal root_7547408 small_7547408_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7547414 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7547408_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7547414
#print axioms cover_7547408

def root_7535302 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535302 : CoveredBy scale carrier boxes root_7535302 := by
  apply coveredBy_split_literal root_7535302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7535303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7547408 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7535303
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7547408
#print axioms cover_7535302

def root_7626161 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626161_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626161_right_fuel : Nat := 20
def small_7626161_right_count : Nat := 381
def small_7626161_right_encoded : String := "1151E9090000000408A912FB12073D0408A91307120701060000000305000100135D44F705000102135D450300000001050000FE135D81090CFD9BFB0F350D0404548A07000000061386AD060000000900000003000000020F34D1040000000204548A07000000070000000900000004135D4509000000040CFD9BFB000000090F34D1040000000204548A0713867106000000030000000500000005135D8103050000FE135D81090CFD9BFB0F350D0404548A0713867106000000030C9A870400000007000000071386AD060C9A87040F8750FB00000009000000020000000900000003000000020F34D1040000000204548A07000000091386AD06000000090000000300000004135D4509000000040CFD9BFB000000090F34D10400000002000000050000000100000000135D80F70000000005000102135D450300000001050000FE135D81090CFD9BFB000000090F34D10400000002000000090000000400000009135D8103050000FE135D81090CFD9BFB0F350D0404548A07000000091386AD060C9A87040F8750FB00000009000000020000000500000003000000020F34D104000000020000000500000004000000050000000112073D0605000100135D44F705000102135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB0000000900000002000000090F350D060000000900000003000000020F34D104000000020CFD9C07000000090F350D06000000090000000300000004135D4509000000040CFD9BFB000000090F34D1040000000200000009135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB02800100000000090000000900000002000000090F350D060C9A87040F8750FB0C9A8706000000090F878D070000000900000003000000020F878CFB000000020000000900000003000000020F34D104000000020CFD9C070F34D106000000030280010000000009000000050F350D06000000090000000300000004135D4509000000040CFD9BFB0F350D040CFD9C07000000090F350D060000000900000003000000020F34D10400000002000000090000000100000000135D80F70000000005000102135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C07000000090F350D060000000900000003000000020F34D104000000020000000900000004135D4509000000040CFD9BFB0000000900000009135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB07800100000000090000000900000002000000090F350D060C9A87040F8750FB0C9A8706000000090F878D070000000900000003000000020F878CFB000000020000000900000003000000020F34D104000000020CFD9C07000000090F350D06000000090000000300000004135D4509000000040CFD9BFB000000090F34D1040000000200000005000000010000000300000002120701040000000208A91307120701060000000305000100135D44F705000102135D450300000001050000FE135D8109045489FB1386AD0404548A07000000071386AD060280010000000007000000050000000300000002138671040000000200000005000000040000000500000005000000000000000512073D0605000100135D44F705000102135D450300000001050000FE135D8109045489FB1386AD040CFD9C070F34D106000000030280010013D7B0F70000000900000000000000090F350D0600000009000000030000000213867104000000020CFD9C070F34D10600000003000000050F350D06000000060000000300000004135D450900000004045489FB00000009138671040000000200000005135D8103050000FE135D8109045489FB1386AD040CFD9C070F34D10600000003000000050F350D0600000006000000030000000213867104000000020CFD9C07000000080000000500000004000000050000000100000000135D80F70000000005000102135D450300000001050000FE135D8109045489FB0000000913867104000000020000000500000004000000050000000500000003"
theorem small_7626161_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7626161_right_root small_7626161_right_fuel small_7626161_right_count small_7626161_right_encoded = true := by
  decide +kernel
theorem small_7626161_right_covered : CoveredBy scale carrier boxes small_7626161_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7626161_right_root small_7626161_right_fuel small_7626161_right_count small_7626161_right_encoded small_7626161_right_checked

theorem cover_7626161 : CoveredBy scale carrier boxes root_7626161 := by
  apply coveredBy_split_literal root_7626161 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2868.root small_7626161_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2868.covered
  · exact small_7626161_right_covered
#print axioms cover_7626161

def root_7626156 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626156_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626156_right_fuel : Nat := 1
def small_7626156_right_count : Nat := 1
def small_7626156_right_encoded : String := "00000003"
theorem small_7626156_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7626156_right_root small_7626156_right_fuel small_7626156_right_count small_7626156_right_encoded = true := by
  decide +kernel
theorem small_7626156_right_covered : CoveredBy scale carrier boxes small_7626156_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7626156_right_root small_7626156_right_fuel small_7626156_right_count small_7626156_right_encoded small_7626156_right_checked

theorem cover_7626156 : CoveredBy scale carrier boxes root_7626156 := by
  apply coveredBy_split_literal root_7626156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7626161 small_7626156_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7626161
  · exact small_7626156_right_covered
#print axioms cover_7626156

def root_7625380 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7625380_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7625380_left_fuel : Nat := 26
def small_7625380_left_count : Nat := 363
def small_7625380_left_encoded : String := "1151E907000000030A0000FE1152250908A912FB12073D0408A91309120700FE05000100135D44F70500010200000005135D81030500010600000005135D81070CFD9BFB0000000500000006000000030000000100000000135D80F70000000005000102135D4503000000010500010600000005135D81070CFD9BFB000000050F34D104000000020000000600000003135D81030500010600000006135D81070CFD9BFB0F350D0404548A09000000051386ACFE000000040C9A87040000000500000006000000020F34D104000000020000000600000003000000010000000412073CFE0000000405000100135D44F705000102135D45030000000105000106135D4507000000030CFD9BFB0F350D04000000050000000200000006135D81070CFD9BFB0F350D040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F8750FB000000050000000200000009000000020F34D104000000020CFD9C09000000090000000600000003135D81030500010600000006135D81070CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE000000060F875109000000040000000A0000000200000006000000020F34D1040000000200000006000000030000000100000000135D80F70000000005000102135D45030000000105000106135D4507000000030CFD9BFB0F350D040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040000000A00000006000000020F34D1040000000200000006135D81070CFD9BFB0F350D040CFD9C090F34D0FE0C9A8704000000050F878CFB000000020780010000000005128A7CF700000000028001020000000500000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE0F878D090780010000000005000000090000000400000009000000020F878CFB0000000200000009000000020F34D104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040000000900000003135D810305000106135D4507000000030CFD9BFB0F350D040CFD9C090F34D0FE0000000600000004000000060000000200000006135D81070CFD9BFB0F350D040CFD9C090F34D0FE0C9A87040F8750FB0780010000000005128A7CF7000000000780010200000005000000060000000200000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE0F878D0907800100128A40F707800102128A410300000001000000060000000600000000128A7CF70000000007800102128A4103000000010000000900000006000000040F875109000000040780010000000009128A7CF700000000078001020000000900000009000000020F878CFB000000020C9A86FE000000060F8751090000000400000006000000020F34D1040000000200000006000000030000000100000002120701040000000208A91309120700FE000000060000000400000006000000041151E9090000000408A912FB12073D0405000100135D44F705000102135D4503000000010500010600000009135D8107050000FE135D810900000009000000040000000900000003135D81030500010600000009135D8107050000FE135D81090CFD9BFB000000090F34D10400000002000000060000000400000009000000030000000100000000135D80F70000000005000102135D4503000000010500010600000009135D8107050000FE135D810900000009000000040000000900000003135D810305000106135D450700000003050000FE135D81090CFD9BFB00000009000000060000000400000007135D8107050000FE135D81090CFD9BFB0F350D040C9A87040F8750FB000000090000000200000009000000020F34D10400000002000000060000000400000009000000030000000100000002120701040000000205000100135D44F705000102135D450300000001000000090000000600000000135D80F700000000050001020000000900000006"
theorem small_7625380_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7625380_left_root small_7625380_left_fuel small_7625380_left_count small_7625380_left_encoded = true := by
  decide +kernel
theorem small_7625380_left_covered : CoveredBy scale carrier boxes small_7625380_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7625380_left_root small_7625380_left_fuel small_7625380_left_count small_7625380_left_encoded small_7625380_left_checked

theorem cover_7625380 : CoveredBy scale carrier boxes root_7625380 := by
  apply coveredBy_split_literal root_7625380 small_7625380_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7626156 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7625380_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7626156
#print axioms cover_7625380

def root_7625374 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7625374_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7625374_left_fuel : Nat := 1
def small_7625374_left_count : Nat := 1
def small_7625374_left_encoded : String := "00000002"
theorem small_7625374_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7625374_left_root small_7625374_left_fuel small_7625374_left_count small_7625374_left_encoded = true := by
  decide +kernel
theorem small_7625374_left_covered : CoveredBy scale carrier boxes small_7625374_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7625374_left_root small_7625374_left_fuel small_7625374_left_count small_7625374_left_encoded small_7625374_left_checked

theorem cover_7625374 : CoveredBy scale carrier boxes root_7625374 := by
  apply coveredBy_split_literal root_7625374 small_7625374_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7625380 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7625374_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7625380
#print axioms cover_7625374

def root_7622532 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7622532 : CoveredBy scale carrier boxes root_7622532 := by
  apply coveredBy_split_literal root_7622532 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2867.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7625374 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2867.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7625374
#print axioms cover_7622532

def root_7622526 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7622526_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7622526_left_fuel : Nat := 1
def small_7622526_left_count : Nat := 1
def small_7622526_left_encoded : String := "00000001"
theorem small_7622526_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7622526_left_root small_7622526_left_fuel small_7622526_left_count small_7622526_left_encoded = true := by
  decide +kernel
theorem small_7622526_left_covered : CoveredBy scale carrier boxes small_7622526_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7622526_left_root small_7622526_left_fuel small_7622526_left_count small_7622526_left_encoded small_7622526_left_checked

theorem cover_7622526 : CoveredBy scale carrier boxes root_7622526 := by
  apply coveredBy_split_literal root_7622526 small_7622526_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7622532 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7622526_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7622532
#print axioms cover_7622526

def root_7639233 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7639233_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7639233_left_fuel : Nat := 18
def small_7639233_left_count : Nat := 105
def small_7639233_left_encoded : String := "13D7B0F707800104128A40FB0DE7CA020E5FD903000000010DE7CA06000000050E6015070B4D43FE000000051080110900000004014001000000000513F614F700000000064001040000000512FFACFB000000020DAED887000000070E9661060000000700000003000000030E6015030DE7CA060E5FD907000000030B4D43FE00000005000000080E6015070B4D43FE10804D09014001000000000513F614F700000000064001040000000500000007000000041080110900000004014001000000000813F614F7000000000640010412FF70FB0DAED8830E96250200000001000000080E9661020DAED887000000050E9661060000000500000003000000010000000212FFACFB0000000200000008000000030000000100000002128A7CFB000000020DE7CA020E5FD903000000010DE7CA060E5FD90700000003000000060E6015070B4D43FE000000071080110900000004014001000000000713F614F70000000008C0010411FBE8FB000000070000000200000006000000030E6015030DE7CA06000000080E6015070B4D43FE0000000600000008000000030000000100000000"
theorem small_7639233_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7639233_left_root small_7639233_left_fuel small_7639233_left_count small_7639233_left_encoded = true := by
  decide +kernel
theorem small_7639233_left_covered : CoveredBy scale carrier boxes small_7639233_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7639233_left_root small_7639233_left_fuel small_7639233_left_count small_7639233_left_encoded small_7639233_left_checked

theorem cover_7639233 : CoveredBy scale carrier boxes root_7639233 := by
  apply coveredBy_split_literal root_7639233 small_7639233_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2872.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7639233_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2872.covered
#print axioms cover_7639233

def root_7639227 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7639227_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7639227_left_fuel : Nat := 1
def small_7639227_left_count : Nat := 1
def small_7639227_left_encoded : String := "00000004"
theorem small_7639227_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7639227_left_root small_7639227_left_fuel small_7639227_left_count small_7639227_left_encoded = true := by
  decide +kernel
theorem small_7639227_left_covered : CoveredBy scale carrier boxes small_7639227_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7639227_left_root small_7639227_left_fuel small_7639227_left_count small_7639227_left_encoded small_7639227_left_checked

theorem cover_7639227 : CoveredBy scale carrier boxes root_7639227 := by
  apply coveredBy_split_literal root_7639227 small_7639227_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7639233 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_7639227_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7639233
#print axioms cover_7639227

def root_7638991 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638991_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638991_left_fuel : Nat := 18
def small_7638991_left_count : Nat := 115
def small_7638991_left_encoded : String := "0F878D090280010013D7B0F70780010400000005128A7CFB000000020DE7CA020E5FD903000000010DE7CA0600000005000000070E6015030DE7CA06000000080E6015070000000700000003000000010000000013D7ECF70000000007800104128A40FB0DE7CA020E5FD903000000010DE7CA06000000050E6015070DE7C9FE000000050E5FD9090000000403C001000000000513A54CF700000000064001040000000512FFACFB000000020DAED887000000070E9661060000000500000003000000030E6015030DE7CA060E5FD907000000030DE7C9FE000000050E5FD9090000000403C001000000000513A54CF700000000064001040000000512FFACFB000000020DAED8830000000A000000060E6015070DE7C9FE0000000A0E5FD9090000000403C0010013A510F7064001040000000500000007000000000000000A000000030000000100000002128A7CFB000000020DE7CA020E5FD903000000010DE7CA060E5FD907000000030DE7C9FE000000060E5FD90900000004000000060E6015070DE7C9FE0000000A0E5FD9090000000403C00100000000070000000A000000030E6015030DE7CA060E5FD907000000030DE7C9FE00000006000000060000000A0000000100000004"
theorem small_7638991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7638991_left_root small_7638991_left_fuel small_7638991_left_count small_7638991_left_encoded = true := by
  decide +kernel
theorem small_7638991_left_covered : CoveredBy scale carrier boxes small_7638991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7638991_left_root small_7638991_left_fuel small_7638991_left_count small_7638991_left_encoded small_7638991_left_checked

theorem cover_7638991 : CoveredBy scale carrier boxes root_7638991 := by
  apply coveredBy_split_literal root_7638991 small_7638991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7639227 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7638991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7639227
#print axioms cover_7638991

def root_7638986 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638986_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638986_right_fuel : Nat := 1
def small_7638986_right_count : Nat := 1
def small_7638986_right_encoded : String := "00000003"
theorem small_7638986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7638986_right_root small_7638986_right_fuel small_7638986_right_count small_7638986_right_encoded = true := by
  decide +kernel
theorem small_7638986_right_covered : CoveredBy scale carrier boxes small_7638986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7638986_right_root small_7638986_right_fuel small_7638986_right_count small_7638986_right_encoded small_7638986_right_checked

theorem cover_7638986 : CoveredBy scale carrier boxes root_7638986 := by
  apply coveredBy_split_literal root_7638986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7638991 small_7638986_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7638991
  · exact small_7638986_right_covered
#print axioms cover_7638986

def root_7638776 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638776_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638776_left_fuel : Nat := 18
def small_7638776_left_count : Nat := 97
def small_7638776_left_encoded : String := "0F875107000000030C9A86FE0F878D090280010013D7B0F70780010400000005000000060000000013D7ECF70000000007800104128A40FB0000000500000002128A7CFB0000000200000006000000040F875109000000040280010013D7B0F707800104128A40FB0DE7CA02000000050E601503000000050000000100000002000000060000000013D7ECF70000000007800104128A40FB0DE7CA020E5FD903000000010B4D440610801107000000030B4D43FE000000050000000A10804D070B4D43FE10804D090000000500000004108011090000000403C0010013A510F70640010400000005000000060000000013A54CF7000000000640010412FF70FB0000000A0000000200000006000000030E6015030B4D440610801107000000030000000610804D070B4D43FE00000006108011090000000403C001000000000613A54CF7000000000640010412FF70FB000000060000000200000006000000030000000100000002128A7CFB000000020DE7CA020E5FD903000000010000000600000006"
theorem small_7638776_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7638776_left_root small_7638776_left_fuel small_7638776_left_count small_7638776_left_encoded = true := by
  decide +kernel
theorem small_7638776_left_covered : CoveredBy scale carrier boxes small_7638776_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7638776_left_root small_7638776_left_fuel small_7638776_left_count small_7638776_left_encoded small_7638776_left_checked

theorem cover_7638776 : CoveredBy scale carrier boxes root_7638776 := by
  apply coveredBy_split_literal root_7638776 small_7638776_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7638986 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7638776_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7638986
#print axioms cover_7638776

def root_7638771 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638771_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7638771_right_fuel : Nat := 1
def small_7638771_right_count : Nat := 1
def small_7638771_right_encoded : String := "00000001"
theorem small_7638771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7638771_right_root small_7638771_right_fuel small_7638771_right_count small_7638771_right_encoded = true := by
  decide +kernel
theorem small_7638771_right_covered : CoveredBy scale carrier boxes small_7638771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7638771_right_root small_7638771_right_fuel small_7638771_right_count small_7638771_right_encoded small_7638771_right_checked

theorem cover_7638771 : CoveredBy scale carrier boxes root_7638771 := by
  apply coveredBy_split_literal root_7638771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7638776 small_7638771_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7638776
  · exact small_7638771_right_covered
#print axioms cover_7638771

def root_7637705 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7637705 : CoveredBy scale carrier boxes root_7637705 := by
  apply coveredBy_split_literal root_7637705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2871.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7638771 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2871.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7638771
#print axioms cover_7637705

def root_7637699 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637699_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637699_left_fuel : Nat := 1
def small_7637699_left_count : Nat := 1
def small_7637699_left_encoded : String := "00000004"
theorem small_7637699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7637699_left_root small_7637699_left_fuel small_7637699_left_count small_7637699_left_encoded = true := by
  decide +kernel
theorem small_7637699_left_covered : CoveredBy scale carrier boxes small_7637699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7637699_left_root small_7637699_left_fuel small_7637699_left_count small_7637699_left_encoded small_7637699_left_checked

theorem cover_7637699 : CoveredBy scale carrier boxes root_7637699 := by
  apply coveredBy_split_literal root_7637699 small_7637699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7637705 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7637699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7637705
#print axioms cover_7637699

def root_7637659 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637659_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637659_left_fuel : Nat := 10
def small_7637659_left_count : Nat := 19
def small_7637659_left_encoded : String := "0F34D0FE0C9A8702000000050F878D030C9A8706000000050F878D07028001000000000513D7ECF7000000000780010400000005128A7CFB000000020000000A000000030000000100000004"
theorem small_7637659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7637659_left_root small_7637659_left_fuel small_7637659_left_count small_7637659_left_encoded = true := by
  decide +kernel
theorem small_7637659_left_covered : CoveredBy scale carrier boxes small_7637659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7637659_left_root small_7637659_left_fuel small_7637659_left_count small_7637659_left_encoded small_7637659_left_checked

theorem cover_7637659 : CoveredBy scale carrier boxes root_7637659 := by
  apply coveredBy_split_literal root_7637659 small_7637659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7637699 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7637659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7637699
#print axioms cover_7637659

def root_7637654 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637654_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7637654_right_fuel : Nat := 1
def small_7637654_right_count : Nat := 1
def small_7637654_right_encoded : String := "00000003"
theorem small_7637654_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7637654_right_root small_7637654_right_fuel small_7637654_right_count small_7637654_right_encoded = true := by
  decide +kernel
theorem small_7637654_right_covered : CoveredBy scale carrier boxes small_7637654_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7637654_right_root small_7637654_right_fuel small_7637654_right_count small_7637654_right_encoded small_7637654_right_checked

theorem cover_7637654 : CoveredBy scale carrier boxes root_7637654 := by
  apply coveredBy_split_literal root_7637654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7637659 small_7637654_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7637659
  · exact small_7637654_right_covered
#print axioms cover_7637654

def root_7636694 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636694_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636694_left_fuel : Nat := 32
def small_7636694_left_count : Nat := 447
def small_7636694_left_encoded : String := "0F34D106000000030CFD9C090F34D0FE0C9A87020F87510300000001000000070F878D030000000A00000001000000040F350CFE000000040C9A87020F875103000000010C9A86FE0F878D09028001000000000713D7ECF70000000007800104128A40FB0AD357870000000710D13D060B4D44020000000500000007000000030000000200000007000000040F875109000000040280010013D7B0F707800104128A40FB0AD357870000000710D13D06000000070000000300000002000000070000000013D7ECF70000000007800104128A40FB0AD3578710D10106000000030000000710D13D060B4D440210801103000000010B4D43FE10804D0903C001000000000513A54CF7000000000000000700000004108011090000000403C0010013A510F7000000070000000013A54CF7000000000640010412FF70FB00000006000000020000000910804D030B4D43FE10804D0903C001000000000713A54CF70000000006400104000000070000000700000004108011090000000403C0010013A510F70640010400000007000000070000000013A54CF7000000000640010412FF70FB0BE879C7000000071011AD060BF3E5821008ED030000000100000008100929030AA6A27E0000000710ED71090000000404600100000000070000000800000001000000030000000212FFACFB000000020BE879C7000000071011AD060BF3E582000000090000000900000003000000010000000300000002128A7CFB000000020AD3578710D10106000000030000000710D13D060B4D440210801103000000010B4D43FE10804D0900000007000000040000000910804D030B4D43FE10804D090000000700000004108011090000000403C001000000000913A54CF70000000008C0010411FBE8FB00000009000000020000000900000001000000030F878D030C9A86FE0F878D090280010013D7B0F70780010400000007000000070000000013D7ECF70000000007800104128A40FB0AD357870000000710D13D060DE7CA020E5FD903000000010DE7C9FE000000070E5FD90900000004000000070000000A00000003000000020000000A000000040F875109000000040280010013D7B0F707800104128A40FB0AD357870000000710D13D060DE7CA020E5FD90300000001000000070E6015030B4D43FE00000007108011090000000400000007000000010000000300000002128A7CFB000000020AD357870000000710D13D060DE7CA020E5FD90300000001000000070E6015030B4D43FE0000000710801109000000040000000700000001000000030000000013D7ECF70000000007800104128A40FB0AD3578710D10106000000030DE7CA020E5FD90300000001000000070000000A10D13D060DE7CA020E5FD903000000010B4D43FE10804D0903C001000000000713A54CF7000000000640010412FF70FB00000007000000020000000700000004108011090000000403C0010013A510F70640010412FF70FB0000000700000002000000070000000013A54CF7000000000640010412FF70FB0BE879C71011710600000003000000071011AD060D4128820EFA1103000000010AA6A27E0000000710ED7109000000040460010000000007138418F70000000005A0010400000006000000070EFA4D030AA6A27E0000000710ED7109000000040460010000000007138418F70000000005A00104133134FB00000007000000020000000700000001000000030000000212FFACFB000000020BE879C7000000071011AD060D4128820EFA1103000000010AA6A27E0000000710ED710900000004000000070EFA4D030AA6A27E0000000710ED7109000000040460010000000007138418F7000000000000000A00000001000000030E6015030B4D43FE10804D0903C00100000000070000000A00000004108011090000000403C0010013A510F70640010412FF70FB0BE879C7000000071011AD060DAED8830E962502000000010000000700000007000000030000000212FFACFB000000020BE879C7000000071011AD0600000007000000030000000013A54CF7000000000640010412FF70FB0BE879C70000000A1011AD060DAED8830000000A0E9661020AA6A27E0000000A10ED7109000000040460010000000007138418F7000000000000000A00000001000000030000000212FFACFB000000020000000A000000010000000300000002128A7CFB000000020AD3578710D10106000000030000000A10D13D060DE7CA020E5FD903000000010B4D43FE10804D0903C00100000000070000000A00000004108011090000000403C0010013A510F708C0010411FBE8FB0000000700000002000000070000000013A54CF70000000008C0010411FBE8FB0BE879C7000000071011AD060D4128820EFA110300000001000000090EFA4D030000000A000000010000000300000002000000050E6015030000000A000000010000000300000001"
theorem small_7636694_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7636694_left_root small_7636694_left_fuel small_7636694_left_count small_7636694_left_encoded = true := by
  decide +kernel
theorem small_7636694_left_covered : CoveredBy scale carrier boxes small_7636694_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7636694_left_root small_7636694_left_fuel small_7636694_left_count small_7636694_left_encoded small_7636694_left_checked

theorem cover_7636694 : CoveredBy scale carrier boxes root_7636694 := by
  apply coveredBy_split_literal root_7636694 small_7636694_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7637654 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7636694_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7637654
#print axioms cover_7636694

def root_7636689 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636689_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636689_right_fuel : Nat := 1
def small_7636689_right_count : Nat := 1
def small_7636689_right_encoded : String := "00000001"
theorem small_7636689_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7636689_right_root small_7636689_right_fuel small_7636689_right_count small_7636689_right_encoded = true := by
  decide +kernel
theorem small_7636689_right_covered : CoveredBy scale carrier boxes small_7636689_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7636689_right_root small_7636689_right_fuel small_7636689_right_count small_7636689_right_encoded small_7636689_right_checked

theorem cover_7636689 : CoveredBy scale carrier boxes root_7636689 := by
  apply coveredBy_split_literal root_7636689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7636694 small_7636689_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7636694
  · exact small_7636689_right_covered
#print axioms cover_7636689

def root_7636087 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636087_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636087_left_fuel : Nat := 29
def small_7636087_left_count : Nat := 289
def small_7636087_left_encoded : String := "0F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0000000A0F875109000000040280010013D7B0F707800104128A40FB0AD357830000000A10D13D020AD357870000000710D13D060B4D43FE000000071080110900000004014001000000000713F614F7000000000000000A000000030000000100000002128A7CFB000000020000000A0000000013D7ECF70000000007800104128A40FB0AD357830000000A0000000A000000020000000A0F350D060CFD9C090F34D0FE0C9A87060F87510700000003028001000000000513D7ECF70000000007800104000000050000000A0F878D070000000A00000003000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D09028001000000000813D7ECF70000000007800104128A40FB0AD357830000000810D13D020B4D44060000000510804D070DE7C9FE000000050000000800000003000000010000000200000006000000040F87510900000004028001000000000813D7ECF70000000007800104128A40FB0AD357830000000810D13D020B4D44060000000610804D070B4D43FE0000000600000008000000030000000100000002000000060F878D070C9A86FE0F878D090280010013D7B0F707800104128A40FB0AD357830000000810D13D020DE7CA06000000050E6015070000000A000000030000000100000002128A7CFB00000002000000080000000013D7ECF70000000007800104128A40FB0AD357830000000A10D13D020DE7CA060E5FD907000000030DE7C9FE0000000A0E5FD9090000000403C00100000000080000000A0000000A00000001000000020000000A000000040F875109000000040280010013D7B0F707800104128A40FB0AD357830000000810D13D020DE7CA06000000080E60150700000008000000030000000100000002000000080000000013D7ECF70000000007800104128A40FB0AD3578310D10102000000010DE7CA06000000080000000A10D13D020DE7CA060E5FD907000000030B4D43FE10804D0903C001000000000813A54CF7000000000640010412FF70FB0BE879C3000000081011AD020D412886000000060EFA4D070000000A0000000300000001000000020000000600000004108011090000000403C001000000000813A54CF7000000000640010412FF70FB0BE879C3000000081011AD020D412886000000060EFA4D0700000008000000030000000100000002000000060E6015070B4D43FE10804D0903C001000000000A0000000A00000004108011090000000403C0010013A510F70640010412FF70FB0BE879C3000000081011AD020DAED88700000008000000080000000100000002000000080000000013A54CF7000000000640010412FF70FB0BE879C30000000A1011AD020DAED8870000000A0E9661060AA6A27E0000000A0000000800000003000000010000000212FFACFB000000020000000A000000030000000100000002128A7CFB000000020AD357830000000810D13D020DE7CA060E5FD90700000003000000060E6015070000000A00000003000000010000000300000003"
theorem small_7636087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7636087_left_root small_7636087_left_fuel small_7636087_left_count small_7636087_left_encoded = true := by
  decide +kernel
theorem small_7636087_left_covered : CoveredBy scale carrier boxes small_7636087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7636087_left_root small_7636087_left_fuel small_7636087_left_count small_7636087_left_encoded small_7636087_left_checked

theorem cover_7636087 : CoveredBy scale carrier boxes root_7636087 := by
  apply coveredBy_split_literal root_7636087 small_7636087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7636689 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7636087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7636689
#print axioms cover_7636087

def root_7636081 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636081_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7636081_left_fuel : Nat := 1
def small_7636081_left_count : Nat := 1
def small_7636081_left_encoded : String := "00000002"
theorem small_7636081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7636081_left_root small_7636081_left_fuel small_7636081_left_count small_7636081_left_encoded = true := by
  decide +kernel
theorem small_7636081_left_covered : CoveredBy scale carrier boxes small_7636081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7636081_left_root small_7636081_left_fuel small_7636081_left_count small_7636081_left_encoded small_7636081_left_checked

theorem cover_7636081 : CoveredBy scale carrier boxes root_7636081 := by
  apply coveredBy_split_literal root_7636081 small_7636081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7636087 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7636081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7636087
#print axioms cover_7636081

def root_7633551 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7633551 : CoveredBy scale carrier boxes root_7633551 := by
  apply coveredBy_split_literal root_7633551 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2870.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7636081 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2870.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7636081
#print axioms cover_7633551

def root_7633546 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7633546_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7633546_right_fuel : Nat := 1
def small_7633546_right_count : Nat := 1
def small_7633546_right_encoded : String := "00000000"
theorem small_7633546_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7633546_right_root small_7633546_right_fuel small_7633546_right_count small_7633546_right_encoded = true := by
  decide +kernel
theorem small_7633546_right_covered : CoveredBy scale carrier boxes small_7633546_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7633546_right_root small_7633546_right_fuel small_7633546_right_count small_7633546_right_encoded small_7633546_right_checked

theorem cover_7633546 : CoveredBy scale carrier boxes root_7633546 := by
  apply coveredBy_split_literal root_7633546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.root_7633551 small_7633546_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183.cover_7633551
  · exact small_7633546_right_covered
#print axioms cover_7633546

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0183
