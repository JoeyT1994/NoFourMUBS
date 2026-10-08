import TaoBundleAssembly0122
import TaoBundleChunkBatch0462
import TaoBundleChunkBatch0463
import TaoBundleChunkBatch0464
import TaoBundleChunkBatch0465
import TaoBundleChunkBatch0466
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123
def root_4936921 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4936921_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4936921_left_fuel : Nat := 1
def small_4936921_left_count : Nat := 1
def small_4936921_left_encoded : String := "00000003"
theorem small_4936921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4936921_left_root small_4936921_left_fuel small_4936921_left_count small_4936921_left_encoded = true := by
  decide +kernel
theorem small_4936921_left_covered : CoveredBy scale carrier boxes small_4936921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4936921_left_root small_4936921_left_fuel small_4936921_left_count small_4936921_left_encoded small_4936921_left_checked

theorem cover_4936921 : CoveredBy scale carrier boxes root_4936921 := by
  apply coveredBy_split_literal root_4936921 small_4936921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.root_4936927 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4936921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.cover_4936927
#print axioms cover_4936921

def root_4934853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4934853 : CoveredBy scale carrier boxes root_4934853 := by
  apply coveredBy_split_literal root_4934853 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1848.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4936921 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1848.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4936921
#print axioms cover_4934853

def root_4934848 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4934848_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4934848_right_fuel : Nat := 1
def small_4934848_right_count : Nat := 1
def small_4934848_right_encoded : String := "00000002"
theorem small_4934848_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4934848_right_root small_4934848_right_fuel small_4934848_right_count small_4934848_right_encoded = true := by
  decide +kernel
theorem small_4934848_right_covered : CoveredBy scale carrier boxes small_4934848_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4934848_right_root small_4934848_right_fuel small_4934848_right_count small_4934848_right_encoded small_4934848_right_checked

theorem cover_4934848 : CoveredBy scale carrier boxes root_4934848 := by
  apply coveredBy_split_literal root_4934848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4934853 small_4934848_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4934853
  · exact small_4934848_right_covered
#print axioms cover_4934848

def root_4931774 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4931774 : CoveredBy scale carrier boxes root_4931774 := by
  apply coveredBy_split_literal root_4931774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1847.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4934848 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1847.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4934848
#print axioms cover_4931774

def root_4931768 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931768_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931768_left_fuel : Nat := 1
def small_4931768_left_count : Nat := 1
def small_4931768_left_encoded : String := "00000001"
theorem small_4931768_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4931768_left_root small_4931768_left_fuel small_4931768_left_count small_4931768_left_encoded = true := by
  decide +kernel
theorem small_4931768_left_covered : CoveredBy scale carrier boxes small_4931768_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4931768_left_root small_4931768_left_fuel small_4931768_left_count small_4931768_left_encoded small_4931768_left_checked

theorem cover_4931768 : CoveredBy scale carrier boxes root_4931768 := by
  apply coveredBy_split_literal root_4931768 small_4931768_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4931774 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4931768_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4931774
#print axioms cover_4931768

def root_4941135 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4941135 : CoveredBy scale carrier boxes root_4941135 := by
  apply coveredBy_split_literal root_4941135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1851.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1852.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1851.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1852.covered
#print axioms cover_4941135

def root_4941130 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941130_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941130_right_fuel : Nat := 1
def small_4941130_right_count : Nat := 1
def small_4941130_right_encoded : String := "00000003"
theorem small_4941130_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4941130_right_root small_4941130_right_fuel small_4941130_right_count small_4941130_right_encoded = true := by
  decide +kernel
theorem small_4941130_right_covered : CoveredBy scale carrier boxes small_4941130_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4941130_right_root small_4941130_right_fuel small_4941130_right_count small_4941130_right_encoded small_4941130_right_checked

theorem cover_4941130 : CoveredBy scale carrier boxes root_4941130 := by
  apply coveredBy_split_literal root_4941130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4941135 small_4941130_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4941135
  · exact small_4941130_right_covered
#print axioms cover_4941130

def root_4941129 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4941129 : CoveredBy scale carrier boxes root_4941129 := by
  apply coveredBy_split_literal root_4941129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4941130 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1853.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4941130
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1853.covered
#print axioms cover_4941129

def root_4941123 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941123_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941123_left_fuel : Nat := 1
def small_4941123_left_count : Nat := 1
def small_4941123_left_encoded : String := "00000002"
theorem small_4941123_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4941123_left_root small_4941123_left_fuel small_4941123_left_count small_4941123_left_encoded = true := by
  decide +kernel
theorem small_4941123_left_covered : CoveredBy scale carrier boxes small_4941123_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4941123_left_root small_4941123_left_fuel small_4941123_left_count small_4941123_left_encoded small_4941123_left_checked

theorem cover_4941123 : CoveredBy scale carrier boxes root_4941123 := by
  apply coveredBy_split_literal root_4941123 small_4941123_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4941129 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4941123_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4941129
#print axioms cover_4941123

def root_4954209 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954209_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954209_left_fuel : Nat := 16
def small_4954209_left_count : Nat := 109
def small_4954209_left_encoded : String := "13D7B0FD07800108128A40FF0B4D43F610804D010DE7CA02000000050E6015030DE7CA04000000050E601505014001060000000513F614FD0000000306400108000000050000000800000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA04000000050E6015050000000A000000020E6015030DE7CA040E5FD90500000002014001060000000513F614FD00000003064001080000000512FFACFF000000040DAED883000000080E96610200000008000000010E601505014001060000000A13F614FD000000030640010812FF70FF0DAED8830E96250200000001000000080E9661020000000A000000010000000412FFACFF000000040000000A000000020000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD90300000001000000090E6015030DE7CA040E5FD90500000002000000080E6015050000000900000002000000010000000010801101000000000DE7CA020E5FD90300000001000000090E6015030DE7CA040E5FD90500000002014001060000000813F614FD0000000308C0010811FBE8FF0000000800000004000000070000000A0000000100000003"
theorem small_4954209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4954209_left_root small_4954209_left_fuel small_4954209_left_count small_4954209_left_encoded = true := by
  decide +kernel
theorem small_4954209_left_covered : CoveredBy scale carrier boxes small_4954209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4954209_left_root small_4954209_left_fuel small_4954209_left_count small_4954209_left_encoded small_4954209_left_checked

theorem cover_4954209 : CoveredBy scale carrier boxes root_4954209 := by
  apply coveredBy_split_literal root_4954209 small_4954209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1855.root coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4954209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1855.covered
#print axioms cover_4954209

def root_4954204 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954204_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954204_right_fuel : Nat := 1
def small_4954204_right_count : Nat := 1
def small_4954204_right_encoded : String := "00000002"
theorem small_4954204_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4954204_right_root small_4954204_right_fuel small_4954204_right_count small_4954204_right_encoded = true := by
  decide +kernel
theorem small_4954204_right_covered : CoveredBy scale carrier boxes small_4954204_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4954204_right_root small_4954204_right_fuel small_4954204_right_count small_4954204_right_encoded small_4954204_right_checked

theorem cover_4954204 : CoveredBy scale carrier boxes root_4954204 := by
  apply coveredBy_split_literal root_4954204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4954209 small_4954204_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4954209
  · exact small_4954204_right_covered
#print axioms cover_4954204

def root_4953482 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953482_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953482_left_fuel : Nat := 25
def small_4953482_left_count : Nat := 341
def small_4953482_left_encoded : String := "0F875105000000020280010613D7B0FD07800108128A40FF0B4D43F60000000510801101000000000DE7CA02000000050E601503000000050000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010B4D440400000005000000090E60150300000008000000010000000010801101000000000DE7CA020E5FD903000000010B4D440400000007000000070E6015030B4D44040000000710804D0501400106000000070000000700000002000000010000000313D7ECFD0000000307800108128A40FF0B4D43F610804D010DE7CA020E5FD903000000010B4D44040000000510804D0500000005000000020E6015030B4D44040000000510804D0503C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED8830E96250200000001000000080E9661020BF3E576000000051008ED01000000000BF3E58400000005100929050460010600000005138418FD0000000306E001080000000500000007000000020000000100000002000000010000000010801101000000000DE7CA020E5FD903000000010B4D440410801105000000020000000610804D0503C0010613A510FD064001080000000512FFACFF000000040AA6A27600000005000000060000000313A54CFD000000030640010812FF70FF000000060000000412FFACFF000000040AA6A27610EDAD010D412882000000050EFA4D030BF3E5840000000500000007000000010000000010ED71010000000000000007000000020E6015030B4D4404108011050000000203C0010613A510FD000000050000000313A54CFD000000030640010812FF70FF00000005000000040000000710804D0503C0010613A510FD064001080000000512FFACFF000000040DAED883000000070E9661020AA6A2760000000500000007000000010000000313A54CFD000000030640010812FF70FF0DAED8830E962502000000010AA6A27610EDAD010BF3E584000000051009290504600106000000050000000A000000020000000010ED7101000000000BF3E5840000000710092905046001060000000700000007000000020E9661020AA6A2760000000510ED7101000000000BF3E58400000005100929050460010600000005138418FD000000030000000700000002000000010000000412FFACFF000000040DAED8830E962502000000010AA6A27610EDAD010000000700000000000000070E9661020AA6A27610EDAD010BF3E5840000000700000007000000000000000700000001000000020000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010B4D4404108011050000000203C00106000000070000000710804D0503C0010613A510FD08C0010811FBE8FF0000000500000004000000070000000313A54CFD0000000308C0010811FBE8FF0BF3E576100929010D412882000000050EFA4D030BF3E584000000050000000700000001000000001008ED0100000000000000070000000400000007000000020E6015030B4D4404108011050000000203C00106000000070000000710804D0503C0010613A510FD08C0010811FBE8FF0000000800000004000000070000000313A54CFD0000000308C0010811FBE8FF0DAED8830E96250200000001000000080E9661020BF3E5761009290100000008000000000000000700000001000000040000000700000002000000010000000010801101000000000DE7CA020E5FD903000000010B4D440410801105000000020000000710804D0503C001060000000713A54CFD0000000300000007000000020E6015030B4D440410801105000000020000000710804D0503C001060000000713A54CFD00000003000000070000000200000001"
theorem small_4953482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953482_left_root small_4953482_left_fuel small_4953482_left_count small_4953482_left_encoded = true := by
  decide +kernel
theorem small_4953482_left_covered : CoveredBy scale carrier boxes small_4953482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953482_left_root small_4953482_left_fuel small_4953482_left_count small_4953482_left_encoded small_4953482_left_checked

theorem cover_4953482 : CoveredBy scale carrier boxes root_4953482 := by
  apply coveredBy_split_literal root_4953482 small_4953482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4954204 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4953482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4954204
#print axioms cover_4953482

def root_4953477 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953477_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953477_right_fuel : Nat := 1
def small_4953477_right_count : Nat := 1
def small_4953477_right_encoded : String := "00000001"
theorem small_4953477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953477_right_root small_4953477_right_fuel small_4953477_right_count small_4953477_right_encoded = true := by
  decide +kernel
theorem small_4953477_right_covered : CoveredBy scale carrier boxes small_4953477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953477_right_root small_4953477_right_fuel small_4953477_right_count small_4953477_right_encoded small_4953477_right_checked

theorem cover_4953477 : CoveredBy scale carrier boxes root_4953477 := by
  apply coveredBy_split_literal root_4953477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4953482 small_4953477_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4953482
  · exact small_4953477_right_covered
#print axioms cover_4953477

def root_4953193 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953193_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953193_left_fuel : Nat := 18
def small_4953193_left_count : Nat := 135
def small_4953193_left_encoded : String := "0F875103000000010C9A87040F875105000000020280010613D7B0FD0780010800000005128A7CFF000000040B4D43F6000000051080110100000000000000090000000313D7ECFD0000000307800108128A40FF0B4D43F6000000050000000600000004128A7CFF000000040B4D43F610804D010B4D44020000000910804D030B4D4404108011050000000203C00106000000050000000700000009000000010000000010801101000000000B4D44020000000910804D030B4D44040000000700000009000000010F878D050280010613D7B0FD07800108128A40FF0B4D43F60000000510801101000000000B4D44020000000510804D030DE7CA0400000005000000090000000100000004000000090000000313D7ECFD0000000307800108128A40FF0B4D43F610804D010B4D440210801103000000010000000910804D030DE7CA04000000050E6015050000000900000002000000010000000010801101000000000B4D440210801103000000010DE7CA040E5FD90500000002000000060000000910804D030DE7CA040E5FD9050000000203C0010613A510FD0640010800000005000000090000000313A54CFD000000030640010812FF70FF0000000600000004000000090E60150503C001060000000913A54CFD000000030640010812FF70FF000000090000000400000009000000020000000100000004128A7CFF000000040B4D43F60000000910801101000000000000000900000002"
theorem small_4953193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953193_left_root small_4953193_left_fuel small_4953193_left_count small_4953193_left_encoded = true := by
  decide +kernel
theorem small_4953193_left_covered : CoveredBy scale carrier boxes small_4953193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953193_left_root small_4953193_left_fuel small_4953193_left_count small_4953193_left_encoded small_4953193_left_checked

theorem cover_4953193 : CoveredBy scale carrier boxes root_4953193 := by
  apply coveredBy_split_literal root_4953193 small_4953193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4953477 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4953193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4953477
#print axioms cover_4953193

def root_4953187 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953187_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953187_left_fuel : Nat := 1
def small_4953187_left_count : Nat := 1
def small_4953187_left_encoded : String := "00000000"
theorem small_4953187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953187_left_root small_4953187_left_fuel small_4953187_left_count small_4953187_left_encoded = true := by
  decide +kernel
theorem small_4953187_left_covered : CoveredBy scale carrier boxes small_4953187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953187_left_root small_4953187_left_fuel small_4953187_left_count small_4953187_left_encoded small_4953187_left_checked

theorem cover_4953187 : CoveredBy scale carrier boxes root_4953187 := by
  apply coveredBy_split_literal root_4953187 small_4953187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4953193 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4953187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4953193
#print axioms cover_4953187

def root_4952671 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952671_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952671_left_fuel : Nat := 22
def small_4952671_left_count : Nat := 247
def small_4952671_left_encoded : String := "0F878D010C9A87020F875103000000010C9A87040F87510500000002028001060000000513D7ECFD000000030780010800000005128A7CFF000000040DE7C9F6000000050E5FD901000000000B4D44020000000510804D030B4D44040000000500000009000000010F878D050280010613D7B0FD0780010800000005000000090000000313D7ECFD0000000307800108128A40FF0000000500000004128A7CFF0000000400000009000000020F878D030C9A87040F875105000000020280010613D7B0FD0780010800000005128A7CFF000000040DE7C9F6000000050E5FD901000000000DE7CA0200000005000000080000000313D7ECFD0000000307800108128A40FF0000000500000004128A7CFF000000040DE7C9F60E6015010DE7CA02000000050E6015030000000800000001000000000E5FD901000000000DE7CA020E5FD903000000010B4D4404108011050000000203C001060000000513A54CFD0000000308C00108000000050000000710804D0503C001060000000513A54CFD0000000308C001080000000500000009000000020E6015030B4D4404108011050000000203C001060000000513A54CFD0000000308C00108000000050000000710804D0503C001060000000813A54CFD0000000308C0010811FBE8FF00000008000000040000000800000002000000010F878D050280010613D7B0FD0780010800000005128A7CFF000000040DE7C9F60E6015010DE7CA020000000500000008000000000E5FD901000000000DE7CA020E5FD90300000001000000090E60150300000008000000010000000313D7ECFD0000000307800108128A40FF0DE7C9F60E6015010DE7CA02000000050E6015030DE7CA04000000050000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA04000000050E60150503C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED8850000000600000009000000020E6015030DE7CA040E5FD9050000000203C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED883000000060E96610200000005000000010E60150503C0010613A510FD0640010800000005000000060000000300000006000000020000000100000004128A7CFF000000040DE7C9F60E6015010DE7CA020E5FD903000000010DE7CA040E5FD9050000000200000009000000090E6015030000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA040E5FD9050000000200000009000000090E6015030DE7CA040E5FD9050000000203C0010600000008000000060000000600000001000000020000000100000000"
theorem small_4952671_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952671_left_root small_4952671_left_fuel small_4952671_left_count small_4952671_left_encoded = true := by
  decide +kernel
theorem small_4952671_left_covered : CoveredBy scale carrier boxes small_4952671_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952671_left_root small_4952671_left_fuel small_4952671_left_count small_4952671_left_encoded small_4952671_left_checked

theorem cover_4952671 : CoveredBy scale carrier boxes root_4952671 := by
  apply coveredBy_split_literal root_4952671 small_4952671_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4953187 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4952671_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4953187
#print axioms cover_4952671

def root_4952666 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952666_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952666_right_fuel : Nat := 1
def small_4952666_right_count : Nat := 1
def small_4952666_right_encoded : String := "00000002"
theorem small_4952666_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952666_right_root small_4952666_right_fuel small_4952666_right_count small_4952666_right_encoded = true := by
  decide +kernel
theorem small_4952666_right_covered : CoveredBy scale carrier boxes small_4952666_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952666_right_root small_4952666_right_fuel small_4952666_right_count small_4952666_right_encoded small_4952666_right_checked

theorem cover_4952666 : CoveredBy scale carrier boxes root_4952666 := by
  apply coveredBy_split_literal root_4952666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4952671 small_4952666_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4952671
  · exact small_4952666_right_covered
#print axioms cover_4952666

def root_4952232 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952232_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952232_left_fuel : Nat := 25
def small_4952232_left_count : Nat := 213
def small_4952232_left_encoded : String := "0F34D104000000020C9A86F60F878D010C9A87020F87510300000001028001060000000A13D7ECFD0000000307800108128A40FF0AD357850000000A10D13D040DE7C9F6000000050000000A0000000200000004000000090F878D030280010613D7B0FD07800108128A40FF0AD357850000000610D13D040DE7C9F6000000050000000A0000000200000004128A7CFF000000040000000A0000000313D7ECFD0000000307800108128A40FF0AD357850000000610D13D040DE7C9F6000000060E5FD901000000000DE7CA020E5FD9030000000103C001060000000A000000060000000600000002000000040000000600000001000000000F875101000000000C9A87020F87510300000001028001060000000A13D7ECFD0000000307800108128A40FF0AD357850000000A10D13D040B4D43F6000000090000000A0000000200000004000000090F878D030280010613D7B0FD07800108128A40FF0AD357850000000A10D13D040B4D43F610804D010000000A000000000000000A00000002000000040000000A0000000313D7ECFD0000000307800108128A40FF0AD3578510D10104000000020B4D43F6000000060000000A10D13D040B4D43F610804D010DE7CA020E5FD9030000000103C001060000000A13A54CFD000000030640010812FF70FF0BE879C5000000061011AD040BF3E576000000090000000A0000000200000004000000090E60150303C001060000000600000006000000010000000010801101000000000DE7CA020E5FD9030000000103C001060000000A13A54CFD000000030640010812FF70FF0BE879C50000000A1011AD040AA6A276000000090000000A0000000200000004000000090E60150303C0010613A510FD0640010812FF70FF0BE879C50000000A1011AD040DAED8830000000A0000000A00000002000000040000000A0000000313A54CFD000000030640010812FF70FF0BE879C5000000061011AD040DAED883000000060E9661020AA6A276000000060000000A00000001000000020000000412FFACFF0000000400000006000000010000000200000004128A7CFF000000040AD357850000000A10D13D040B4D43F610804D010DE7CA0200000009000000060000000010801101000000000DE7CA02000000090E60150300000006000000010000000200000001"
theorem small_4952232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952232_left_root small_4952232_left_fuel small_4952232_left_count small_4952232_left_encoded = true := by
  decide +kernel
theorem small_4952232_left_covered : CoveredBy scale carrier boxes small_4952232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952232_left_root small_4952232_left_fuel small_4952232_left_count small_4952232_left_encoded small_4952232_left_checked

theorem cover_4952232 : CoveredBy scale carrier boxes root_4952232 := by
  apply coveredBy_split_literal root_4952232 small_4952232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4952666 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4952232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4952666
#print axioms cover_4952232

def root_4952227 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952227_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952227_right_fuel : Nat := 1
def small_4952227_right_count : Nat := 1
def small_4952227_right_encoded : String := "00000001"
theorem small_4952227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952227_right_root small_4952227_right_fuel small_4952227_right_count small_4952227_right_encoded = true := by
  decide +kernel
theorem small_4952227_right_covered : CoveredBy scale carrier boxes small_4952227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952227_right_root small_4952227_right_fuel small_4952227_right_count small_4952227_right_encoded small_4952227_right_checked

theorem cover_4952227 : CoveredBy scale carrier boxes root_4952227 := by
  apply coveredBy_split_literal root_4952227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4952232 small_4952227_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4952232
  · exact small_4952227_right_covered
#print axioms cover_4952227

def root_4951207 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951207_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951207_left_fuel : Nat := 32
def small_4951207_left_count : Nat := 479
def small_4951207_left_encoded : String := "0F34D102000000010CFD9C050F34D104000000020C9A86F6000000060F875101000000000280010613D7B0FD07800108128A40FF0AD357830000000610D13D020AD357850000000610D13D040B4D43F6000000061080110100000000014001060000000813F614FD0000000300000006000000020000000100000004128A7CFF00000004000000060000000313D7ECFD0000000307800108128A40FF0AD35783000000060000000600000004000000060F350D040C9A86F60F878D010C9A87040F87510500000002028001060000000813D7ECFD0000000307800108128A40FF0AD357830000000810D13D020DE7C9F6000000050E5FD90100000000000000080000000100000004000000080F878D050280010613D7B0FD0780010800000008000000080000000313D7ECFD0000000307800108128A40FF0AD357830000000610D13D020DE7C9F6000000060E5FD901000000000DE7CA040E5FD90500000002000000080000000600000001000000040000000600000002000000000F875101000000000C9A87040F875105000000020280010613D7B0FD07800108128A40FF0AD357830000000810D13D02000000080000000100000004000000080000000313D7ECFD0000000307800108128A40FF0AD3578310D10102000000010000000810D13D020B4D43F610804D010B4D4404108011050000000203C001060000000513A54CFD000000030000000810804D0503C001060000000813A54CFD00000003064001080000000800000008000000020000000010801101000000000B4D4404108011050000000203C0010613A510FD000000080000000313A54CFD000000030640010812FF70FF00000009000000040000000710804D0503C0010613A510FD0640010800000008000000080000000313A54CFD000000030640010812FF70FF0BE879C3000000081011AD020AA6A2760000000810ED7101000000000BF3E584000000091009290504600106000000070000000A00000002000000010000000412FFACFF000000040BE879C3000000071011AD020AA6A276000000080000000700000001000000020000000100000004128A7CFF000000040AD3578310D10102000000010000000810D13D020B4D43F610804D010B4D4404108011050000000200000008000000080000000010801101000000000B4D440410801105000000020000000710804D0503C001060000000713A54CFD0000000308C0010811FBE8FF00000007000000040000000700000002000000010F878D050280010613D7B0FD07800108128A40FF0AD357830000000810D13D020B4D43F60000000810801101000000000DE7CA040E5FD9050000000200000008000000080000000100000004128A7CFF000000040AD357830000000810D13D020B4D43F60000000810801101000000000DE7CA040E5FD905000000020000000800000008000000010000000313D7ECFD0000000307800108128A40FF0AD3578310D10102000000010B4D43F60000000610801101000000000DE7CA040E5FD90500000002000000080000000610D13D020B4D43F610804D010DE7CA040E5FD9050000000203C001060000000813A54CFD000000030640010812FF70FF0000000800000004000000080E60150503C001060000000600000006000000020000000010801101000000000DE7CA040E5FD9050000000203C0010613A510FD0640010812FF70FF0000000800000004000000080000000313A54CFD000000030640010812FF70FF0BE879C31011710200000001000000081011AD020AA6A27610EDAD010D4128840EFA11050000000200000008000000080000000010ED7101000000000D4128840EFA1105000000020460010600000008138418FD0000000305A0010800000008000000080EFA4D050460010600000008138418FD0000000305A00108133134FF00000008000000040000000800000002000000010000000412FFACFF000000040BE879C3000000081011AD020AA6A27610EDAD01000000080000000010ED7101000000000D4128840EFA110500000002000000070EFA4D050460010600000008138418FD000000030000000600000002000000010E60150503C0010613A510FD0640010812FF70FF0BE879C3000000081011AD020DAED8850E962504000000020000000600000008000000010000000412FFACFF000000040BE879C3000000061011AD0200000008000000010000000313A54CFD000000030640010812FF70FF0BE879C3000000061011AD020DAED885000000060E9661040AA6A2760000000610ED7101000000000460010600000008138418FD000000030000000600000002000000010000000412FFACFF0000000400000006000000020000000100000004128A7CFF000000040AD3578310D10102000000010000000610D13D020B4D43F610804D010DE7CA040E5FD9050000000203C001060000000600000006000000060000000010801101000000000DE7CA040E5FD9050000000203C0010613A510FD08C0010811FBE8FF0000000800000004000000080000000313A54CFD0000000308C0010811FBE8FF0BE879C3000000061011AD020AA6A27600000006000000070000000100000004000000050E6015050000000600000002000000010000000200000002"
theorem small_4951207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4951207_left_root small_4951207_left_fuel small_4951207_left_count small_4951207_left_encoded = true := by
  decide +kernel
theorem small_4951207_left_covered : CoveredBy scale carrier boxes small_4951207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4951207_left_root small_4951207_left_fuel small_4951207_left_count small_4951207_left_encoded small_4951207_left_checked

theorem cover_4951207 : CoveredBy scale carrier boxes root_4951207 := by
  apply coveredBy_split_literal root_4951207 small_4951207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4952227 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4951207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4952227
#print axioms cover_4951207

def root_4951201 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951201_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951201_left_fuel : Nat := 1
def small_4951201_left_count : Nat := 1
def small_4951201_left_encoded : String := "00000000"
theorem small_4951201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4951201_left_root small_4951201_left_fuel small_4951201_left_count small_4951201_left_encoded = true := by
  decide +kernel
theorem small_4951201_left_covered : CoveredBy scale carrier boxes small_4951201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4951201_left_root small_4951201_left_fuel small_4951201_left_count small_4951201_left_encoded small_4951201_left_checked

theorem cover_4951201 : CoveredBy scale carrier boxes root_4951201 := by
  apply coveredBy_split_literal root_4951201 small_4951201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4951207 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4951201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4951207
#print axioms cover_4951201

def root_4951087 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951087_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951087_left_fuel : Nat := 14
def small_4951087_left_count : Nat := 53
def small_4951087_left_encoded : String := "0F34D0F60CFD9C030F34D102000000010CFD9C05000000060F350D040C9A87040F87510500000002000000080F878D050000000600000002000000020F350D020CFD9C050F34D104000000020C9A87020F87510300000001028001060000000513D7ECFD000000030780010800000005000000060F878D0300000006000000010F350D040C9A8702000000050F878D030C9A8704000000050F878D05028001060000000513D7ECFD000000030780010800000005128A7CFF00000004000000060000000200000001000000020000000100000000"
theorem small_4951087_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4951087_left_root small_4951087_left_fuel small_4951087_left_count small_4951087_left_encoded = true := by
  decide +kernel
theorem small_4951087_left_covered : CoveredBy scale carrier boxes small_4951087_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4951087_left_root small_4951087_left_fuel small_4951087_left_count small_4951087_left_encoded small_4951087_left_checked

theorem cover_4951087 : CoveredBy scale carrier boxes root_4951087 := by
  apply coveredBy_split_literal root_4951087 small_4951087_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4951201 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4951087_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4951201
#print axioms cover_4951087

def root_4951081 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951081_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4951081_left_fuel : Nat := 1
def small_4951081_left_count : Nat := 1
def small_4951081_left_encoded : String := "00000004"
theorem small_4951081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4951081_left_root small_4951081_left_fuel small_4951081_left_count small_4951081_left_encoded = true := by
  decide +kernel
theorem small_4951081_left_covered : CoveredBy scale carrier boxes small_4951081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4951081_left_root small_4951081_left_fuel small_4951081_left_count small_4951081_left_encoded small_4951081_left_checked

theorem cover_4951081 : CoveredBy scale carrier boxes root_4951081 := by
  apply coveredBy_split_literal root_4951081 small_4951081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4951087 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4951081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4951087
#print axioms cover_4951081

def root_4948595 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4948595 : CoveredBy scale carrier boxes root_4948595 := by
  apply coveredBy_split_literal root_4948595 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1854.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4951081 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1854.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4951081
#print axioms cover_4948595

def root_4948590 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4948590_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4948590_right_fuel : Nat := 1
def small_4948590_right_count : Nat := 1
def small_4948590_right_encoded : String := "00000003"
theorem small_4948590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4948590_right_root small_4948590_right_fuel small_4948590_right_count small_4948590_right_encoded = true := by
  decide +kernel
theorem small_4948590_right_covered : CoveredBy scale carrier boxes small_4948590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4948590_right_root small_4948590_right_fuel small_4948590_right_count small_4948590_right_encoded small_4948590_right_checked

theorem cover_4948590 : CoveredBy scale carrier boxes root_4948590 := by
  apply coveredBy_split_literal root_4948590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4948595 small_4948590_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4948595
  · exact small_4948590_right_covered
#print axioms cover_4948590

def root_4960557 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960557_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960557_right_fuel : Nat := 20
def small_4960557_right_count : Nat := 217
def small_4960557_right_encoded : String := "128A7CFD000000030280010813D7B0FF0B4D43F610804D010DE7CA020E5FD903000000010DE7CA040000000A0E60150500000007000000020E60150300000009000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD90500000002000000090E60150508C0010611FBE8FD000000070000000300000007000000020E60150300000009000000010000000413D7ECFF000000040B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD905000000020000000A0E60150508C0010611FBE8FD03C0010813A510FF000000070000000413A54CFF000000040DAED8850E96250400000002000000060E9661040BF3E576100929010D4128820EFA1103000000010000000700000006000000001008ED01000000000D4128820EFA1103000000010000000A0000000A000000020000000311FC24FD0000000303C0010813A510FF000000070000000413A54CFF000000040DAED885000000060000000A000000020E6015030DE7CA040E5FD905000000020000000A0E60150508C0010611FBE8FD03C001080000000600000006000000030000000600000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD03C001080000000A13A54CFF000000040AA6A2760000000A0000000A000000030000000A0E60150508C0010611FBE8FD03C0010813A510FF0DAED8850E962504000000020AA6A27600000007000000080E9661040AA6A2760000000A00000008000000020000000413A54CFF000000040DAED8850E962504000000020AA6A27610EDAD010D412882000000080EFA4D03000000060000000100000000000000080E9661040AA6A27610EDAD010D4128820EFA110300000001000000080000000A0000000010ED71010000000000000008000000020000000311FC24FD0000000303C001080000000813A54CFF000000040DAED885000000080E9661040000000800000002000000020E6015030DE7CA040E5FD905000000020000000A0E60150508C0010611FBE8FD03C0010813A510FF0DAED883000000090000000A0000000413A54CFF000000040DAED8830E96250200000001000000060E9661020DAED8850E96250400000002000000060E9661040000000A0000000200000001000000030000000A0000000200000001"
theorem small_4960557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4960557_right_root small_4960557_right_fuel small_4960557_right_count small_4960557_right_encoded = true := by
  decide +kernel
theorem small_4960557_right_covered : CoveredBy scale carrier boxes small_4960557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4960557_right_root small_4960557_right_fuel small_4960557_right_count small_4960557_right_encoded small_4960557_right_checked

theorem cover_4960557 : CoveredBy scale carrier boxes root_4960557 := by
  apply coveredBy_split_literal root_4960557 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1856.root small_4960557_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1856.covered
  · exact small_4960557_right_covered
#print axioms cover_4960557

def root_4960552 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960552_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960552_right_fuel : Nat := 1
def small_4960552_right_count : Nat := 1
def small_4960552_right_encoded : String := "00000002"
theorem small_4960552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4960552_right_root small_4960552_right_fuel small_4960552_right_count small_4960552_right_encoded = true := by
  decide +kernel
theorem small_4960552_right_covered : CoveredBy scale carrier boxes small_4960552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4960552_right_root small_4960552_right_fuel small_4960552_right_count small_4960552_right_encoded small_4960552_right_checked

theorem cover_4960552 : CoveredBy scale carrier boxes root_4960552 := by
  apply coveredBy_split_literal root_4960552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4960557 small_4960552_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4960557
  · exact small_4960552_right_covered
#print axioms cover_4960552

def root_4960400 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960400_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960400_left_fuel : Nat := 14
def small_4960400_left_count : Nat := 71
def small_4960400_left_encoded : String := "0F8751050000000207800106128A40FD0280010813D7B0FF0B4D43F60000000510801101000000000DE7CA0200000005000000090000000413D7ECFF000000040B4D43F610804D010DE7CA020E5FD903000000010B4D44040000000510804D0500000005000000020E6015030B4D4404000000050000000A000000010000000010801101000000000DE7CA020E5FD903000000010B4D440410801105000000020000000610804D050640010612FF70FD00000006000000030000000A000000020E6015030B4D44040000000A10804D050640010612FF70FD0000000A000000030000000A000000020000000100000003128A7CFD00000003028001080000000A13D7ECFF000000040B4D43F60000000A10801101000000000000000A"
theorem small_4960400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4960400_left_root small_4960400_left_fuel small_4960400_left_count small_4960400_left_encoded = true := by
  decide +kernel
theorem small_4960400_left_covered : CoveredBy scale carrier boxes small_4960400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4960400_left_root small_4960400_left_fuel small_4960400_left_count small_4960400_left_encoded small_4960400_left_checked

theorem cover_4960400 : CoveredBy scale carrier boxes root_4960400 := by
  apply coveredBy_split_literal root_4960400 small_4960400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4960552 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4960400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4960552
#print axioms cover_4960400

def root_4960395 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960395_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4960395_right_fuel : Nat := 1
def small_4960395_right_count : Nat := 1
def small_4960395_right_encoded : String := "00000001"
theorem small_4960395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4960395_right_root small_4960395_right_fuel small_4960395_right_count small_4960395_right_encoded = true := by
  decide +kernel
theorem small_4960395_right_covered : CoveredBy scale carrier boxes small_4960395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4960395_right_root small_4960395_right_fuel small_4960395_right_count small_4960395_right_encoded small_4960395_right_checked

theorem cover_4960395 : CoveredBy scale carrier boxes root_4960395 := by
  apply coveredBy_split_literal root_4960395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4960400 small_4960395_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4960400
  · exact small_4960395_right_covered
#print axioms cover_4960395

def root_4959575 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959575_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959575_left_fuel : Nat := 27
def small_4959575_left_count : Nat := 387
def small_4959575_left_encoded : String := "0F875103000000010C9A87040F8751050000000207800106128A40FD028001080000000513D7ECFF000000040B4D43F6000000050000000600000003128A7CFD000000030280010813D7B0FF0B4D43F60000000510801101000000000000000A0000000413D7ECFF000000040B4D43F610804D010B4D440210801103000000010B4D44040000000510804D0508C001060000000500000008000000020000000A0000000010801101000000000B4D44021080110300000001000000060000000A0F878D0507800106128A40FD0280010813D7B0FF0B4D43F60000000510801101000000000B4D44020000000510804D030DE7CA04000000050E6015050000000500000002000000010000000413D7ECFF000000040B4D43F610804D010B4D440210801103000000010DE7CA04000000050E601505000000050000000210804D030DE7CA04000000050E601505064001060000000512FFACFD0000000303C001080000000513A54CFF000000040DAED8850E96250400000002000000070E9661040BF3E576000000051008ED01000000000BF3E582000000051009290306E001060000000500000007000000010000000200000002000000010000000010801101000000000B4D440210801103000000010DE7CA040E5FD90500000002000000060E6015050640010612FF70FD000000050000000312FFACFD00000003000000080000000210804D030DE7CA040E5FD905000000020640010612FF70FD000000060000000312FFACFD0000000303C0010813A510FF0AA6A27600000005000000060000000413A54CFF000000040AA6A27610EDAD010BF3E58200000005100929030D412884000000050EFA4D050000000800000002000000010000000010ED710100000000000000080E6015050640010612FF70FD03C001080000000513A54CFF000000040DAED8850E962504000000020AA6A27610EDAD010BF3E582000000051009290305A001060000000500000007000000010000000010ED7101000000000BF3E582000000081009290305A00106133134FD0460010800000005000000080000000300000008000000010E9661040AA6A2760000000510ED7101000000000BF3E582000000051009290305A00106000000050000000800000001000000020000000312FFACFD0000000303C0010813A510FF0DAED885000000080E9661040AA6A2760000000500000008000000020000000413A54CFF000000040DAED8850E962504000000020AA6A27610EDAD010000000800000000000000080E9661040AA6A27610EDAD010BF3E5820000000800000008000000000000000800000002000000020000000100000003128A7CFD000000030280010813D7B0FF0B4D43F610804D010B4D440210801103000000010DE7CA04000000050000000710804D030DE7CA040E5FD905000000020000000A0E6015050000000700000002000000010000000010801101000000000B4D440210801103000000010000000810804D030DE7CA04000000080E60150508C0010611FBE8FD00000007000000030000000700000002000000010000000413D7ECFF000000040B4D43F610804D010B4D440210801103000000010DE7CA040E5FD9050000000208C0010611FBE8FD0000000800000003000000080E60150508C0010611FBE8FD0000000800000003000000080000000210804D030DE7CA040E5FD9050000000208C0010611FBE8FD03C0010813A510FF000000050000000413A54CFF000000040BF3E576100929010BF3E582000000050000000A000000001008ED010000000000000008000000030000000A0E60150508C0010611FBE8FD03C001080000000713A54CFF000000040DAED8850E96250400000002000000070E9661040BF3E57610092901000000070000000000000008000000020000000311FC24FD0000000303C00108000000070000000800000002000000010000000010801101000000000B4D440210801103000000010DE7CA04000000080E601505000000080000000210804D030DE7CA040E5FD9050000000208C0010611FBE8FD03C00108000000080000000800000003000000080E60150508C0010611FBE8FD03C0010800000008000000080000000300000008000000020000000100000002"
theorem small_4959575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4959575_left_root small_4959575_left_fuel small_4959575_left_count small_4959575_left_encoded = true := by
  decide +kernel
theorem small_4959575_left_covered : CoveredBy scale carrier boxes small_4959575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4959575_left_root small_4959575_left_fuel small_4959575_left_count small_4959575_left_encoded small_4959575_left_checked

theorem cover_4959575 : CoveredBy scale carrier boxes root_4959575 := by
  apply coveredBy_split_literal root_4959575 small_4959575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4960395 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4959575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4960395
#print axioms cover_4959575

def root_4959569 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959569_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959569_left_fuel : Nat := 1
def small_4959569_left_count : Nat := 1
def small_4959569_left_encoded : String := "00000000"
theorem small_4959569_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4959569_left_root small_4959569_left_fuel small_4959569_left_count small_4959569_left_encoded = true := by
  decide +kernel
theorem small_4959569_left_covered : CoveredBy scale carrier boxes small_4959569_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4959569_left_root small_4959569_left_fuel small_4959569_left_count small_4959569_left_encoded small_4959569_left_checked

theorem cover_4959569 : CoveredBy scale carrier boxes root_4959569 := by
  apply coveredBy_split_literal root_4959569 small_4959569_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4959575 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4959569_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4959575
#print axioms cover_4959569

def root_4959085 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959085_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959085_left_fuel : Nat := 22
def small_4959085_left_count : Nat := 231
def small_4959085_left_encoded : String := "0F878D010C9A87020F875103000000010C9A87040F875105000000020780010600000005128A7CFD00000003028001080000000513D7ECFF000000040DE7C9F6000000050E5FD901000000000B4D4402000000050000000A0F878D0507800106128A40FD0000000500000003128A7CFD000000030280010813D7B0FF0DE7C9F6000000050E5FD901000000000B4D440200000005000000070000000413D7ECFF000000040DE7C9F60E6015010B4D44020000000510804D030DE7CA04000000050E601505000000070000000200000001000000000E5FD901000000000B4D440210801103000000010DE7CA040E5FD9050000000208C001060000000511FC24FD0000000303C0010800000005000000080E60150508C0010600000005000000070000000210804D030DE7CA040E5FD9050000000208C00106000000050000000A0E60150508C0010611FBE8FD0000000700000003000000070000000200000001000000020F878D030C9A87040F8751050000000207800106128A40FD0000000500000003128A7CFD000000030000000A0F878D0507800106128A40FD028001080000000513D7ECFF000000040DE7C9F60E6015010DE7CA02000000050E6015030DE7CA04000000050000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA04000000050E601505064001060000000512FFACFD0000000303C001080000000513A54CFF000000040DAED885000000060E9661040000000500000002000000020E6015030DE7CA040E5FD90500000002064001060000000512FFACFD0000000303C001080000000513A54CFF000000040DAED883000000060000000A0E6015050640010612FF70FD03C0010800000005000000060000000300000006000000020000000100000003128A7CFD000000030280010813D7B0FF0DE7C9F60E6015010DE7CA020000000500000007000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA0400000005000000070E60150300000009000000010000000413D7ECFF000000040DE7C9F60E6015010DE7CA020E5FD903000000010DE7CA040E5FD905000000020000000A0E60150500000006000000020E6015030000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA040E5FD905000000020000000A0E60150508C0010611FBE8FD03C0010800000007000000060000000300000006000000020E6015030DE7CA040000000A0000000600000001000000020000000100000000"
theorem small_4959085_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4959085_left_root small_4959085_left_fuel small_4959085_left_count small_4959085_left_encoded = true := by
  decide +kernel
theorem small_4959085_left_covered : CoveredBy scale carrier boxes small_4959085_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4959085_left_root small_4959085_left_fuel small_4959085_left_count small_4959085_left_encoded small_4959085_left_checked

theorem cover_4959085 : CoveredBy scale carrier boxes root_4959085 := by
  apply coveredBy_split_literal root_4959085 small_4959085_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4959569 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4959085_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4959569
#print axioms cover_4959085

def root_4959080 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959080_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4959080_right_fuel : Nat := 1
def small_4959080_right_count : Nat := 1
def small_4959080_right_encoded : String := "00000002"
theorem small_4959080_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4959080_right_root small_4959080_right_fuel small_4959080_right_count small_4959080_right_encoded = true := by
  decide +kernel
theorem small_4959080_right_covered : CoveredBy scale carrier boxes small_4959080_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4959080_right_root small_4959080_right_fuel small_4959080_right_count small_4959080_right_encoded small_4959080_right_checked

theorem cover_4959080 : CoveredBy scale carrier boxes root_4959080 := by
  apply coveredBy_split_literal root_4959080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4959085 small_4959080_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4959085
  · exact small_4959080_right_covered
#print axioms cover_4959080

def root_4958204 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958204_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958204_left_fuel : Nat := 29
def small_4958204_left_count : Nat := 415
def small_4958204_left_encoded : String := "0F34D104000000020C9A86F60F878D010C9A87020F8751030000000107800106128A40FD028001080000000513D7ECFF000000040AD357850000000710D13D040DE7C9F6000000050E5FD90100000000000000070000000200000003000000070F878D0307800106128A40FD028001080000000713D7ECFF000000040AD357850000000610D13D040DE7C9F6000000060E5FD901000000000DE7CA020E5FD9030000000100000007000000060000000200000003128A7CFD0000000302800108000000070000000600000001000000000F875101000000000C9A87020F8751030000000107800106128A40FD0280010813D7B0FF0AD357850000000710D13D0400000007000000020000000413D7ECFF000000040AD3578510D10104000000020000000710D13D040B4D43F610804D010B4D4402108011030000000106400106000000050000000710804D030640010612FF70FD000000070000000300000007000000010000000010801101000000000B4D440210801103000000010640010612FF70FD03C0010800000007000000090000000312FFACFD0000000303C00108000000070000000810804D030640010612FF70FD03C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A2760000000710ED7101000000000BF3E582000000091009290305A00106000000070000000700000001000000020000000312FFACFD0000000303C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A276000000070000000800000002000000010000000200000003128A7CFD000000030280010813D7B0FF000000070000000413D7ECFF000000040AD3578510D10104000000020000000710D13D040B4D43F610804D010B4D4402108011030000000100000007000000070000000010801101000000000B4D440210801103000000010000000810804D0308C0010611FBE8FD03C001080000000700000008000000030000000800000001000000020F878D0307800106128A40FD0280010813D7B0FF0AD357850000000710D13D040B4D43F60000000710801101000000000DE7CA020E5FD903000000010000000700000007000000020000000413D7ECFF000000040AD3578510D10104000000020B4D43F60000000610801101000000000DE7CA020E5FD90300000001000000070000000610D13D040B4D43F610804D010DE7CA020E5FD903000000010640010612FF70FD0000000700000003000000070E601503064001060000000600000006000000010000000010801101000000000DE7CA020E5FD903000000010640010612FF70FD03C001080000000713A54CFF000000040BE879C51011710400000002000000071011AD040AA6A27610EDAD010D4128820EFA11030000000100000007000000070000000010ED7101000000000D4128820EFA11030000000105A0010600000007000000070EFA4D0305A00106133134FD00000007000000030000000700000001000000020000000312FFACFD0000000303C001080000000713A54CFF000000040BE879C5000000071011AD040AA6A27610EDAD01000000070000000010ED7101000000000D4128820EFA110300000001000000070EFA4D0306E00106000000070000000700000001000000020E6015030640010612FF70FD03C0010813A510FF0BE879C5000000071011AD040DAED8830E962502000000010000000600000007000000020000000413A54CFF000000040BE879C5000000061011AD040DAED883000000060E9661020AA6A2760000000610ED71010000000005A00106133134FD04600108000000070000000600000003133170FD000000030000000600000001000000020000000312FFACFD0000000303C0010813A510FF0BE879C5000000061011AD0400000007000000020000000400000006000000010000000200000003128A7CFD000000030280010813D7B0FF0AD357850000000710D13D040B4D43F60000000710801101000000000DE7CA020E5FD903000000010000000700000007000000020000000413D7ECFF000000040AD3578510D10104000000020000000610D13D040B4D43F610804D010DE7CA020E5FD9030000000108C001060000000600000006000000060000000010801101000000000DE7CA020E5FD9030000000108C0010611FBE8FD03C001080000000713A54CFF000000040BE879C5000000061011AD040AA6A2760000000600000008000000020000000311FC24FD0000000303C0010800000007000000050E60150300000006000000010000000200000001"
theorem small_4958204_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4958204_left_root small_4958204_left_fuel small_4958204_left_count small_4958204_left_encoded = true := by
  decide +kernel
theorem small_4958204_left_covered : CoveredBy scale carrier boxes small_4958204_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4958204_left_root small_4958204_left_fuel small_4958204_left_count small_4958204_left_encoded small_4958204_left_checked

theorem cover_4958204 : CoveredBy scale carrier boxes root_4958204 := by
  apply coveredBy_split_literal root_4958204 small_4958204_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4959080 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4958204_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4959080
#print axioms cover_4958204

def root_4958199 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958199_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4958199_right_fuel : Nat := 1
def small_4958199_right_count : Nat := 1
def small_4958199_right_encoded : String := "00000001"
theorem small_4958199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4958199_right_root small_4958199_right_fuel small_4958199_right_count small_4958199_right_encoded = true := by
  decide +kernel
theorem small_4958199_right_covered : CoveredBy scale carrier boxes small_4958199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4958199_right_root small_4958199_right_fuel small_4958199_right_count small_4958199_right_encoded small_4958199_right_checked

theorem cover_4958199 : CoveredBy scale carrier boxes root_4958199 := by
  apply coveredBy_split_literal root_4958199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4958204 small_4958199_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4958204
  · exact small_4958199_right_covered
#print axioms cover_4958199

def root_4957683 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957683_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957683_left_fuel : Nat := 27
def small_4957683_left_count : Nat := 255
def small_4957683_left_encoded : String := "0F34D102000000010CFD9C050F34D104000000020C9A86F6000000060F8751010000000007800106128A40FD0280010813D7B0FF0AD357830000000610D13D020AD357850000000610D13D040B4D43F60000000610801101000000000640010612FF70FD00000007000000030000000700000002000000010000000413D7ECFF000000040AD35783000000060000000600000003128A7CFD000000030280010800000006000000060F350D040C9A86F60F878D010C9A87040F8751050000000207800106128A40FD028001080000000513D7ECFF000000040AD357830000000910D13D020DE7C9F6000000050000000900000001000000030000000A0F878D0507800106128A40FD0280010813D7B0FF0AD357830000000610D13D020DE7C9F60000000500000009000000010000000413D7ECFF000000040AD357830000000610D13D020DE7C9F6000000060E5FD901000000000DE7CA040E5FD905000000020640010612FF70FD03C0010800000005000000060000000300000006000000060000000100000003128A7CFD0000000302800108000000090000000600000002000000000F875101000000000C9A87040F8751050000000207800106128A40FD028001080000000913D7ECFF000000040AD357830000000910D13D020B4D43F60000000A000000090000000100000003000000090F878D0507800106128A40FD0280010813D7B0FF0AD357830000000910D13D020B4D43F610804D01000000090000000000000009000000010000000413D7ECFF000000040AD3578310D10102000000010B4D43F6000000060000000910D13D020B4D43F610804D010DE7CA040E5FD905000000020640010612FF70FD03C001080000000913A54CFF000000040BE879C3000000061011AD020BF3E5760000000A0000000900000001000000030000000A0E601505064001060000000600000006000000020000000010801101000000000DE7CA040E5FD905000000020640010612FF70FD03C001080000000913A54CFF000000040BE879C3000000091011AD020AA6A2760000000A000000090000000100000003000000090E6015050640010612FF70FD03C0010813A510FF0BE879C3000000091011AD020DAED8850000000900000009000000010000000413A54CFF000000040BE879C3000000061011AD020DAED885000000060E9661040AA6A276000000060000000900000002000000010000000312FFACFD0000000303C001080000000900000006000000020000000100000003128A7CFD00000003028001080000000913D7ECFF000000040AD357830000000910D13D020B4D43F610804D010DE7CA0400000009000000060000000010801101000000000DE7CA04000000090E6015050000000600000002000000010000000200000002"
theorem small_4957683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957683_left_root small_4957683_left_fuel small_4957683_left_count small_4957683_left_encoded = true := by
  decide +kernel
theorem small_4957683_left_covered : CoveredBy scale carrier boxes small_4957683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957683_left_root small_4957683_left_fuel small_4957683_left_count small_4957683_left_encoded small_4957683_left_checked

theorem cover_4957683 : CoveredBy scale carrier boxes root_4957683 := by
  apply coveredBy_split_literal root_4957683 small_4957683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4958199 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4957683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4958199
#print axioms cover_4957683

def root_4957677 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957677_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957677_left_fuel : Nat := 1
def small_4957677_left_count : Nat := 1
def small_4957677_left_encoded : String := "00000000"
theorem small_4957677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957677_left_root small_4957677_left_fuel small_4957677_left_count small_4957677_left_encoded = true := by
  decide +kernel
theorem small_4957677_left_covered : CoveredBy scale carrier boxes small_4957677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957677_left_root small_4957677_left_fuel small_4957677_left_count small_4957677_left_encoded small_4957677_left_checked

theorem cover_4957677 : CoveredBy scale carrier boxes root_4957677 := by
  apply coveredBy_split_literal root_4957677 small_4957677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4957683 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4957677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4957683
#print axioms cover_4957677

def root_4957569 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957569_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957569_left_fuel : Nat := 13
def small_4957569_left_count : Nat := 51
def small_4957569_left_encoded : String := "0F34D0F60CFD9C030F34D102000000010CFD9C05000000060F350D040C9A87040F875105000000020780010600000005128A7CFD000000030280010800000005000000060F878D050000000600000002000000020F350D020CFD9C050F34D104000000020C9A87020F87510300000001000000070F878D0300000006000000010F350D040C9A8702000000050F878D030C9A8704000000050F878D050780010600000005128A7CFD000000030280010800000005000000060000000200000001000000020000000100000000"
theorem small_4957569_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957569_left_root small_4957569_left_fuel small_4957569_left_count small_4957569_left_encoded = true := by
  decide +kernel
theorem small_4957569_left_covered : CoveredBy scale carrier boxes small_4957569_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957569_left_root small_4957569_left_fuel small_4957569_left_count small_4957569_left_encoded small_4957569_left_checked

theorem cover_4957569 : CoveredBy scale carrier boxes root_4957569 := by
  apply coveredBy_split_literal root_4957569 small_4957569_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4957677 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4957569_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4957677
#print axioms cover_4957569

def root_4957564 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957564_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4957564_right_fuel : Nat := 1
def small_4957564_right_count : Nat := 1
def small_4957564_right_encoded : String := "00000004"
theorem small_4957564_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4957564_right_root small_4957564_right_fuel small_4957564_right_count small_4957564_right_encoded = true := by
  decide +kernel
theorem small_4957564_right_covered : CoveredBy scale carrier boxes small_4957564_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4957564_right_root small_4957564_right_fuel small_4957564_right_count small_4957564_right_encoded small_4957564_right_checked

theorem cover_4957564 : CoveredBy scale carrier boxes root_4957564 := by
  apply coveredBy_split_literal root_4957564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4957569 small_4957564_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4957569
  · exact small_4957564_right_covered
#print axioms cover_4957564

def root_4975253 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13841408), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4975253 : CoveredBy scale carrier boxes root_4975253 := by
  apply coveredBy_split_literal root_4975253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1861.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1862.root coord1 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1861.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1862.covered
#print axioms cover_4975253

def root_4975247 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4975247_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(13026304), (13841408)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4975247_left_fuel : Nat := 1
def small_4975247_left_count : Nat := 1
def small_4975247_left_encoded : String := "00000000"
theorem small_4975247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4975247_left_root small_4975247_left_fuel small_4975247_left_count small_4975247_left_encoded = true := by
  decide +kernel
theorem small_4975247_left_covered : CoveredBy scale carrier boxes small_4975247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4975247_left_root small_4975247_left_fuel small_4975247_left_count small_4975247_left_encoded small_4975247_left_checked

theorem cover_4975247 : CoveredBy scale carrier boxes root_4975247 := by
  apply coveredBy_split_literal root_4975247 small_4975247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4975253 coord0 true (13841408)
  · decide +kernel
  · decide +kernel
  · exact small_4975247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4975253
#print axioms cover_4975247

def root_4972385 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4972385 : CoveredBy scale carrier boxes root_4972385 := by
  apply coveredBy_split_literal root_4972385 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1860.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4975247 coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1860.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4975247
#print axioms cover_4972385

def root_4972380 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972380_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972380_right_fuel : Nat := 1
def small_4972380_right_count : Nat := 1
def small_4972380_right_encoded : String := "00000004"
theorem small_4972380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972380_right_root small_4972380_right_fuel small_4972380_right_count small_4972380_right_encoded = true := by
  decide +kernel
theorem small_4972380_right_covered : CoveredBy scale carrier boxes small_4972380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972380_right_root small_4972380_right_fuel small_4972380_right_count small_4972380_right_encoded small_4972380_right_checked

theorem cover_4972380 : CoveredBy scale carrier boxes root_4972380 := by
  apply coveredBy_split_literal root_4972380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972385 small_4972380_right_root coord4 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972385
  · exact small_4972380_right_covered
#print axioms cover_4972380

def root_4972379 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972379_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972379_right_fuel : Nat := 20
def small_4972379_right_count : Nat := 225
def small_4972379_right_encoded : String := "128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0BF3E576000000091008ED01000000000D412882000000090000000900000004000000090000000312FFACFD0000000308C0010811FBE8FF0BF3E576100929010D4128820EFA110300000001000000090EFA4D030000000600000001000000001008ED01000000000D4128820EFA110300000001000000090EFA4D030D4128840EFA11050000000206E001060000000712C820FD00000003000000060EFA4D050000000600000002000000010000000411FC24FF00000004000000090E6015050640010612FF70FD000000090000000312FFACFD0000000300000006000000020E6015030DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0DAED883000000060E9661020BF3E576000000061008ED01000000000D4128840EFA11050000000205A00106000000070000000600000006000000010000000411FC24FF00000004000000060000000312FFACFD00000003000000060E6015050000000600000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0AA6A27610EDAD010D412882000000090EFA4D030D4128840EFA1105000000020000000700000009000000010000000010ED7101000000000D412882000000090EFA4D030D41288400000007000000070000000100000004000000090000000312FFACFD0000000308C0010811FBE8FF0AA6A27610EDAD010D4128820EFA110300000001000000090EFA4D030D4128840EFA1105000000020000000500000005000000010000000010ED7101000000000D4128820EFA110300000001000000050000000500000004000000050E6015050640010612FF70FD08C0010811FBE8FF0000000900000004000000050000000300000005000000020E6015030DE7CA040E5FD905000000020640010612FF70FD08C0010811FBE8FF0DAED8830E962502000000010AA6A27610EDAD010D4128840EFA110500000002000000060000000500000000000000050E9661020AA6A27610EDAD010D4128840EFA110500000002000000070EFA4D0505A001060000000600000005000000020000000010ED7101000000000D412884000000070000000500000001000000040000000500000003000000050000000500000001"
theorem small_4972379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972379_right_root small_4972379_right_fuel small_4972379_right_count small_4972379_right_encoded = true := by
  decide +kernel
theorem small_4972379_right_covered : CoveredBy scale carrier boxes small_4972379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972379_right_root small_4972379_right_fuel small_4972379_right_count small_4972379_right_encoded small_4972379_right_checked

theorem cover_4972379 : CoveredBy scale carrier boxes root_4972379 := by
  apply coveredBy_split_literal root_4972379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972380 small_4972379_right_root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972380
  · exact small_4972379_right_covered
#print axioms cover_4972379

def root_4972374 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972374_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972374_right_fuel : Nat := 1
def small_4972374_right_count : Nat := 1
def small_4972374_right_encoded : String := "00000003"
theorem small_4972374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972374_right_root small_4972374_right_fuel small_4972374_right_count small_4972374_right_encoded = true := by
  decide +kernel
theorem small_4972374_right_covered : CoveredBy scale carrier boxes small_4972374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972374_right_root small_4972374_right_fuel small_4972374_right_count small_4972374_right_encoded small_4972374_right_checked

theorem cover_4972374 : CoveredBy scale carrier boxes root_4972374 := by
  apply coveredBy_split_literal root_4972374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972379 small_4972374_right_root coord3 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972379
  · exact small_4972374_right_covered
#print axioms cover_4972374

def root_4972373 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972373_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972373_right_fuel : Nat := 23
def small_4972373_right_count : Nat := 271
def small_4972373_right_encoded : String := "128A7CFD0000000307800108128A40FF0B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0BF3E5760000000A1008ED01000000000D4128820EFA1103000000010000000A0000000A0000000412FFACFF000000040BF3E576100929010D4128820EFA1103000000010D4128840000000A0EFA4D0500000006000000020EFA4D030000000600000001000000001008ED01000000000D4128820EFA1103000000010D4128840000000A0EFA4D050820010612465CFD06E0010800000008000000060000000300000008000000020EFA4D030D4128840000000A0000000A000000010000000311FC24FD000000030000000A0E60150508C0010611FBE8FD0640010812FF70FF0DAED885000000060E9661040BF3E576000000061008ED01000000000D4128820EFA1103000000010820010612465CFD05A001080000000600000006000000030000000600000006000000020000000412FFACFF00000004000000060000000311FC24FD0000000300000006000000020E6015030DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0000000A0000000412FFACFF0000000400000006000000030000000A0E6015050000000600000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0AA6A27610EDAD010D4128820EFA1103000000010000000A0000000A0000000010ED7101000000000D4128820EFA110300000001000000080000000A0000000412FFACFF000000040AA6A27610EDAD010D4128820EFA1103000000010D41288400000008000000050EFA4D030D4128840000000A00000005000000010000000010ED7101000000000D4128820EFA11030000000100000005000000050000000311FC24FD00000003064001080000000A000000050E60150508C0010611FBE8FD0640010812FF70FF0DAED8850E962504000000020AA6A27610EDAD010D4128820EFA110300000001000000060000000500000000000000050E9661040AA6A27610EDAD010D4128820EFA110300000001000000080EFA4D03082001060000000600000005000000010000000010ED7101000000000D41288200000008000000050000000200000004000000050000000300000005000000020E6015030DE7CA040E5FD9050000000208C0010611FBE8FD0640010812FF70FF0000000A00000004000000050000000300000005000000050000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010DE7CA040E5FD9050000000208C0010611FBE8FD08C0010811FBE8FF0BF3E5761009290100000006000000001008ED01000000000D4128820EFA1103000000010D4128840EFA1105000000020000000500000005000000050000000400000005000000030000000500000005000000050000000000000005"
theorem small_4972373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972373_right_root small_4972373_right_fuel small_4972373_right_count small_4972373_right_encoded = true := by
  decide +kernel
theorem small_4972373_right_covered : CoveredBy scale carrier boxes small_4972373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972373_right_root small_4972373_right_fuel small_4972373_right_count small_4972373_right_encoded small_4972373_right_checked

theorem cover_4972373 : CoveredBy scale carrier boxes root_4972373 := by
  apply coveredBy_split_literal root_4972373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972374 small_4972373_right_root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972374
  · exact small_4972373_right_covered
#print axioms cover_4972373

def root_4972368 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972368_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4972368_right_fuel : Nat := 1
def small_4972368_right_count : Nat := 1
def small_4972368_right_encoded : String := "00000002"
theorem small_4972368_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4972368_right_root small_4972368_right_fuel small_4972368_right_count small_4972368_right_encoded = true := by
  decide +kernel
theorem small_4972368_right_covered : CoveredBy scale carrier boxes small_4972368_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4972368_right_root small_4972368_right_fuel small_4972368_right_count small_4972368_right_encoded small_4972368_right_checked

theorem cover_4972368 : CoveredBy scale carrier boxes root_4972368 := by
  apply coveredBy_split_literal root_4972368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972373 small_4972368_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972373
  · exact small_4972368_right_covered
#print axioms cover_4972368

def root_4970952 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4970952 : CoveredBy scale carrier boxes root_4970952 := by
  apply coveredBy_split_literal root_4970952 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1859.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4972368 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1859.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4972368
#print axioms cover_4970952

def root_4970947 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4970947_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4970947_right_fuel : Nat := 1
def small_4970947_right_count : Nat := 1
def small_4970947_right_encoded : String := "00000001"
theorem small_4970947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4970947_right_root small_4970947_right_fuel small_4970947_right_count small_4970947_right_encoded = true := by
  decide +kernel
theorem small_4970947_right_covered : CoveredBy scale carrier boxes small_4970947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4970947_right_root small_4970947_right_fuel small_4970947_right_count small_4970947_right_encoded small_4970947_right_checked

theorem cover_4970947 : CoveredBy scale carrier boxes root_4970947 := by
  apply coveredBy_split_literal root_4970947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4970952 small_4970947_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4970952
  · exact small_4970947_right_covered
#print axioms cover_4970947

def root_4968573 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4968573 : CoveredBy scale carrier boxes root_4968573 := by
  apply coveredBy_split_literal root_4968573 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1858.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4970947 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1858.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4970947
#print axioms cover_4968573

def root_4968567 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4968567_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4968567_left_fuel : Nat := 1
def small_4968567_left_count : Nat := 1
def small_4968567_left_encoded : String := "00000000"
theorem small_4968567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4968567_left_root small_4968567_left_fuel small_4968567_left_count small_4968567_left_encoded = true := by
  decide +kernel
theorem small_4968567_left_covered : CoveredBy scale carrier boxes small_4968567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4968567_left_root small_4968567_left_fuel small_4968567_left_count small_4968567_left_encoded small_4968567_left_checked

theorem cover_4968567 : CoveredBy scale carrier boxes root_4968567 := by
  apply coveredBy_split_literal root_4968567 small_4968567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4968573 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4968567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4968573
#print axioms cover_4968567

def root_4965783 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4965783 : CoveredBy scale carrier boxes root_4965783 := by
  apply coveredBy_split_literal root_4965783 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1857.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4968567 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1857.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4968567
#print axioms cover_4965783

def root_4965778 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4965778_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4965778_right_fuel : Nat := 1
def small_4965778_right_count : Nat := 1
def small_4965778_right_encoded : String := "00000002"
theorem small_4965778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4965778_right_root small_4965778_right_fuel small_4965778_right_count small_4965778_right_encoded = true := by
  decide +kernel
theorem small_4965778_right_covered : CoveredBy scale carrier boxes small_4965778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4965778_right_root small_4965778_right_fuel small_4965778_right_count small_4965778_right_encoded small_4965778_right_checked

theorem cover_4965778 : CoveredBy scale carrier boxes root_4965778 := by
  apply coveredBy_split_literal root_4965778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.root_4965783 small_4965778_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123.cover_4965783
  · exact small_4965778_right_covered
#print axioms cover_4965778

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0123
