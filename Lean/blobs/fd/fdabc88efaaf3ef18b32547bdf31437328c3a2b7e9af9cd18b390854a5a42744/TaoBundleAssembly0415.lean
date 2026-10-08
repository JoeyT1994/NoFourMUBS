import TaoBundleAssembly0414
import TaoBundleChunkBatch0564
import TaoBundleChunkBatch0565
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415
def root_5993681 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993681_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993681_right_fuel : Nat := 20
def small_5993681_right_count : Nat := 221
def small_5993681_right_encoded : String := "135D44FF04548A03138670F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB000000020780010000000008128A7CF700000000028000FE00000007000000070F8750FB07800100128A40F7028000FE13D7ECFF00000004022A458313E1C4F8022A45870000000513E201060B4D43FA00000007108010FB0000000700000002000000030000000113E200F800000001022A4587000000080000000A0000000800000000128A7CF700000000028000FE13D7ECFF00000004022A45830000000713E200F800000001022A458713E1C506000000030000000613E201060B4D43FA00000007108010FB00000007000000020000000313D7B0FF022A45830000000713E200F800000001022A4587000000060000000700000004000000021386AD060C9A86FA0F878CFB0000000207800100128A40F70000000A00000000128A7CF700000000028000FE13D7ECFF00000004022A45830000000713E200F800000001067ECE8700000007000000050000000A0F8750FB07800100128A40F70000000A00000000128A7CF700000000028000FE13D7ECFF00000004022A458313E1C4F8067ECE870000000700000007000000010000000A0000000A00000002000000030F34D0FA04548A07000000081386AD060780010000000008128A7CF700000000028000FE00000005000000070000000300000002000000011386ACF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB0000000207800100128A40F70000000800000000128A7CF700000000028000FE13D7ECFF00000004067ECE8312EA58F800000006000000010000000613D7B0FF00000006000000040F8750FB07800100128A40F7028000FE13D7ECFF00000004067ECE8312EA58F80000000A000000010000000A0000000800000000128A7CF700000000028000FE13D7ECFF00000004067ECE8312EA58F8022A458713E1C506000000030000000613E201060B4D43FA0000000A108010FB0000000A00000002000000030000000112EA94F800000001022A458713E1C50600000003000000060000000A13D7B0FF067ECE8312EA58F80000000A000000010000000900000004000000021386AD060C9A86FA0000000A0F8750FB0000000A00000002000000030F34D0FA04548A071386710600000003078001000000000800000006000000050000000200000004"
theorem small_5993681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993681_right_root small_5993681_right_fuel small_5993681_right_count small_5993681_right_encoded = true := by
  decide +kernel
theorem small_5993681_right_covered : CoveredBy scale carrier boxes small_5993681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993681_right_root small_5993681_right_fuel small_5993681_right_count small_5993681_right_encoded small_5993681_right_checked

theorem cover_5993681 : CoveredBy scale carrier boxes root_5993681 := by
  apply coveredBy_split_literal root_5993681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5993682 small_5993681_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5993682
  · exact small_5993681_right_covered
#print axioms cover_5993681

def root_5993675 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993675_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993675_left_fuel : Nat := 1
def small_5993675_left_count : Nat := 1
def small_5993675_left_encoded : String := "00000000"
theorem small_5993675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993675_left_root small_5993675_left_fuel small_5993675_left_count small_5993675_left_encoded = true := by
  decide +kernel
theorem small_5993675_left_covered : CoveredBy scale carrier boxes small_5993675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993675_left_root small_5993675_left_fuel small_5993675_left_count small_5993675_left_encoded small_5993675_left_checked

theorem cover_5993675 : CoveredBy scale carrier boxes root_5993675 := by
  apply coveredBy_split_literal root_5993675 small_5993675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5993681 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5993675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5993681
#print axioms cover_5993675

def root_5991827 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5991827 : CoveredBy scale carrier boxes root_5991827 := by
  apply coveredBy_split_literal root_5991827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2255.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5993675 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2255.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5993675
#print axioms cover_5991827

def root_5991821 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991821_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991821_left_fuel : Nat := 1
def small_5991821_left_count : Nat := 1
def small_5991821_left_encoded : String := "00000003"
theorem small_5991821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991821_left_root small_5991821_left_fuel small_5991821_left_count small_5991821_left_encoded = true := by
  decide +kernel
theorem small_5991821_left_covered : CoveredBy scale carrier boxes small_5991821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991821_left_root small_5991821_left_fuel small_5991821_left_count small_5991821_left_encoded small_5991821_left_checked

theorem cover_5991821 : CoveredBy scale carrier boxes root_5991821 := by
  apply coveredBy_split_literal root_5991821 small_5991821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991827 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5991821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991827
#print axioms cover_5991821

def root_5991820 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991820_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991820_right_fuel : Nat := 16
def small_5991820_right_count : Nat := 59
def small_5991820_right_encoded : String := "12073D0605000100135D44F7050000FE135D80FF0000000404548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0000000A00000005000000050000000500000001000000050000000A00000000135D80F700000000050000FE135D80FF0000000404548A03138670F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000050F8750FB0780010000000005128A7CF700000000000000050000000200000005000000050000000100000005135D44FF04548A03138670F80CFD9BFB0000000A0000000500000001000000050000000400000003"
theorem small_5991820_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991820_right_root small_5991820_right_fuel small_5991820_right_count small_5991820_right_encoded = true := by
  decide +kernel
theorem small_5991820_right_covered : CoveredBy scale carrier boxes small_5991820_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991820_right_root small_5991820_right_fuel small_5991820_right_count small_5991820_right_encoded small_5991820_right_checked

theorem cover_5991820 : CoveredBy scale carrier boxes root_5991820 := by
  apply coveredBy_split_literal root_5991820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991821 small_5991820_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991821
  · exact small_5991820_right_covered
#print axioms cover_5991820

def root_5991814 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991814_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991814_left_fuel : Nat := 1
def small_5991814_left_count : Nat := 1
def small_5991814_left_encoded : String := "00000002"
theorem small_5991814_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991814_left_root small_5991814_left_fuel small_5991814_left_count small_5991814_left_encoded = true := by
  decide +kernel
theorem small_5991814_left_covered : CoveredBy scale carrier boxes small_5991814_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991814_left_root small_5991814_left_fuel small_5991814_left_count small_5991814_left_encoded small_5991814_left_checked

theorem cover_5991814 : CoveredBy scale carrier boxes root_5991814 := by
  apply coveredBy_split_literal root_5991814 small_5991814_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991820 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5991814_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991820
#print axioms cover_5991814

def root_5991813 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991813_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991813_right_fuel : Nat := 9
def small_5991813_right_count : Nat := 23
def small_5991813_right_encoded : String := "120700FA08A91307120701060000000305000100135D44F7050000FE135D80FF0000000404548A0300000008000000050000000800000000135D80F700000000050000FE00000005135D44FF00000008000000040000000500000002"
theorem small_5991813_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991813_right_root small_5991813_right_fuel small_5991813_right_count small_5991813_right_encoded = true := by
  decide +kernel
theorem small_5991813_right_covered : CoveredBy scale carrier boxes small_5991813_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991813_right_root small_5991813_right_fuel small_5991813_right_count small_5991813_right_encoded small_5991813_right_checked

theorem cover_5991813 : CoveredBy scale carrier boxes root_5991813 := by
  apply coveredBy_split_literal root_5991813 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991814 small_5991813_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991814
  · exact small_5991813_right_covered
#print axioms cover_5991813

def root_5991808 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991808_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991808_right_fuel : Nat := 1
def small_5991808_right_count : Nat := 1
def small_5991808_right_encoded : String := "00000001"
theorem small_5991808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991808_right_root small_5991808_right_fuel small_5991808_right_count small_5991808_right_encoded = true := by
  decide +kernel
theorem small_5991808_right_covered : CoveredBy scale carrier boxes small_5991808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991808_right_root small_5991808_right_fuel small_5991808_right_count small_5991808_right_encoded small_5991808_right_checked

theorem cover_5991808 : CoveredBy scale carrier boxes root_5991808 := by
  apply coveredBy_split_literal root_5991808 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991813 small_5991808_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991813
  · exact small_5991808_right_covered
#print axioms cover_5991808

def root_5991807 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991807_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991807_right_fuel : Nat := 28
def small_5991807_right_count : Nat := 175
def small_5991807_right_encoded : String := "12073CF80000000108A912FB12073CFA0000000208A91307120701060000000305000100135D44F7050000FE135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002000000050F8750FB028001000000000A13D7ECF700000000078000FE128A7CFF00000004000000050000000A0000000200000005000000050000000100000005135D44FF0CFD9C030F34D0F80CFD9BFB0000000A00000005000000010000000A0000000400000000135D80F700000000050000FE135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002000000050F8750FB07800100128A40F7078000FE128A7CFF0000000400000005128A40FF0000000A0000000400000000128A7CF700000000078000FE128A7CFF0000000400000005128A40FF0AD3578310D100F8022A458713E1C506000000030B4D43FA10804CFB0000000200000005108010FB000000090000000200000005000000010000000500000004000000020000000500000005000000010F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F8000000050F87510300000001000000050000000500000005135D44FF0CFD9C030F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA0F878CFB00000002078001000000000A128A7CF700000000028000FE13D7ECFF000000040AD3578310D100F80000000500000001000000050000000A0F8750FB0000000A000000020000000A0F34D0FA0000000500000002000000010F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86F80000000A0000000A0000000A0F34D0FA00000005000000020000000412073D060000000500000003120700FA0000000500000002"
theorem small_5991807_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991807_right_root small_5991807_right_fuel small_5991807_right_count small_5991807_right_encoded = true := by
  decide +kernel
theorem small_5991807_right_covered : CoveredBy scale carrier boxes small_5991807_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991807_right_root small_5991807_right_fuel small_5991807_right_count small_5991807_right_encoded small_5991807_right_checked

theorem cover_5991807 : CoveredBy scale carrier boxes root_5991807 := by
  apply coveredBy_split_literal root_5991807 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991808 small_5991807_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991808
  · exact small_5991807_right_covered
#print axioms cover_5991807

def root_5991802 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991802_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5991802_right_fuel : Nat := 1
def small_5991802_right_count : Nat := 1
def small_5991802_right_encoded : String := "00000004"
theorem small_5991802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5991802_right_root small_5991802_right_fuel small_5991802_right_count small_5991802_right_encoded = true := by
  decide +kernel
theorem small_5991802_right_covered : CoveredBy scale carrier boxes small_5991802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5991802_right_root small_5991802_right_fuel small_5991802_right_count small_5991802_right_encoded small_5991802_right_checked

theorem cover_5991802 : CoveredBy scale carrier boxes root_5991802 := by
  apply coveredBy_split_literal root_5991802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991807 small_5991802_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991807
  · exact small_5991802_right_covered
#print axioms cover_5991802

def root_5989718 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989718 : CoveredBy scale carrier boxes root_5989718 := by
  apply coveredBy_split_literal root_5989718 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2254.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5991802 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2254.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5991802
#print axioms cover_5989718

def root_5989713 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989713_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989713_right_fuel : Nat := 1
def small_5989713_right_count : Nat := 1
def small_5989713_right_encoded : String := "00000003"
theorem small_5989713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989713_right_root small_5989713_right_fuel small_5989713_right_count small_5989713_right_encoded = true := by
  decide +kernel
theorem small_5989713_right_covered : CoveredBy scale carrier boxes small_5989713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989713_right_root small_5989713_right_fuel small_5989713_right_count small_5989713_right_encoded small_5989713_right_checked

theorem cover_5989713 : CoveredBy scale carrier boxes root_5989713 := by
  apply coveredBy_split_literal root_5989713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5989718 small_5989713_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5989718
  · exact small_5989713_right_covered
#print axioms cover_5989713

def root_5989627 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989627_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989627_left_fuel : Nat := 13
def small_5989627_left_count : Nat := 41
def small_5989627_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F7050001060000000A00000005000000000000000500000005120700FA08A912FF12073CFE000000040000000500000005000000020000000112073CF800000001000000051151E8FF08A91303120700F808A912FB0000000A00000005000000010000000500000004"
theorem small_5989627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989627_left_root small_5989627_left_fuel small_5989627_left_count small_5989627_left_encoded = true := by
  decide +kernel
theorem small_5989627_left_covered : CoveredBy scale carrier boxes small_5989627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989627_left_root small_5989627_left_fuel small_5989627_left_count small_5989627_left_encoded small_5989627_left_checked

theorem cover_5989627 : CoveredBy scale carrier boxes root_5989627 := by
  apply coveredBy_split_literal root_5989627 small_5989627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5989713 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5989627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5989713
#print axioms cover_5989627

def root_5989621 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989621_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989621_left_fuel : Nat := 1
def small_5989621_left_count : Nat := 1
def small_5989621_left_encoded : String := "00000002"
theorem small_5989621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989621_left_root small_5989621_left_fuel small_5989621_left_count small_5989621_left_encoded = true := by
  decide +kernel
theorem small_5989621_left_covered : CoveredBy scale carrier boxes small_5989621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989621_left_root small_5989621_left_fuel small_5989621_left_count small_5989621_left_encoded small_5989621_left_checked

theorem cover_5989621 : CoveredBy scale carrier boxes root_5989621 := by
  apply coveredBy_split_literal root_5989621 small_5989621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5989627 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5989621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5989627
#print axioms cover_5989621

def root_6003211 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003211_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003211_right_fuel : Nat := 25
def small_6003211_right_count : Nat := 339
def small_6003211_right_encoded : String := "128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004022A458313E1C4F8022A458713E1C5060000000308C0010011FBE8F708C000FA00000007000000050000000011FC24F7000000000000000A13E2010608C0010011FBE8F708C000FA0000000711FBE8FB08C000FE0000000800000007000000020000000011FC24F70000000000000008000000030000000113E200F800000001022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB0000000208C000FE11FC24FF00000004033F67C3000000070000000811FBE8FF033F67C30000000713BC30F8000000010115234713F859060000000308200100000000070000000713F8950600000007000000030000000411FBE8FB08C000FE0000000811FBE8FF033F67C30000000513BC30F80000000101152347000000050000000800000004000000020000000011FC24F70000000008C000FA11FC24FB0000000208C000FE000000080000000711FBE8FB000000080000000213E2010608C0010011FBE8F708C000FA11FC24FB0000000208C000FE0000000811FBE8FF033F67C30000000713BC30F800000001033F67C700000007000000070000000411FBE8FB0000000800000002000000000000000800000003128A40FF022A458313E1C4F8022A45870000000513E2010608C0010011FBE8F708C000FA0000000711FBE8FB00000005000000020000000011FC24F70000000000000007000000030000000113E200F800000001022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB00000002064000FE12FFACFF00000004033F67C30000000513BC30F80000000101152347000000050000000712FF70FF000000050000000411FBE8FB00000005000000020000000011FC24F70000000008C000FA11FC24FB000000020000000711FBE8FB064000FE12FFACFF00000004033F67C30000000500000009000000050000000213E2010608C0010011FBE8F708C000FA11FC24FB00000002064000FE12FFACFF00000004033F67C30000000713BC30F800000001033F67C7000000070000000712FF70FF033F67C30000000713BC30F800000001033F67C700000007000000070000000411FBE8FB064000FE12FFACFF00000004033F67C313BBF4F8033F67C70000000513BC3106082001000000000700000007000000030000000113BC30F800000001033F67C713BBF506000000030820010012465CF7082000FA124698FB0000000206E000FE00000007000000070000000900000000000000080000000812FF70FF033F67C313BBF4F8033F67C700000005000000070000000113BC30F800000001033F67C7000000090000000A00000004000000020000000011FC24F70000000008C000FA11FC24FB00000002064000FE000000070000000711FBE8FB064000FE12FFACFF000000040000000812FF70FF033F67C3000000070000000900000004000000020000000300000004128A40FB078000FE128A7CFF00000004022A458313E1C4F8022A458700000005000000080000000113E200F800000001022A458713E1C5060000000308C0010011FBE8F7064000FA12FFACFB0000000208C000FE0000000811FBE8FF000000050000000412FF70FB0000000500000002000000000000000800000008128A40FF022A45830000000513E200F800000001022A45870000000513E2010608C0010011FBE8F7064000FA12FFACFB00000002064000FE12FFACFF00000004033F67C3000000050000000812FF70FF000000090000000412FF70FB00000009000000020000000011FC24F700000000064000FA12FFACFB00000002064000FE000000080000000900000009000000030000000400000002"
theorem small_6003211_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003211_right_root small_6003211_right_fuel small_6003211_right_count small_6003211_right_encoded = true := by
  decide +kernel
theorem small_6003211_right_covered : CoveredBy scale carrier boxes small_6003211_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003211_right_root small_6003211_right_fuel small_6003211_right_count small_6003211_right_encoded small_6003211_right_checked

theorem cover_6003211 : CoveredBy scale carrier boxes root_6003211 := by
  apply coveredBy_split_literal root_6003211 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2260.root small_6003211_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2260.covered
  · exact small_6003211_right_covered
#print axioms cover_6003211

def root_6003205 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003205_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003205_left_fuel : Nat := 1
def small_6003205_left_count : Nat := 1
def small_6003205_left_encoded : String := "00000003"
theorem small_6003205_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003205_left_root small_6003205_left_fuel small_6003205_left_count small_6003205_left_encoded = true := by
  decide +kernel
theorem small_6003205_left_covered : CoveredBy scale carrier boxes small_6003205_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003205_left_root small_6003205_left_fuel small_6003205_left_count small_6003205_left_encoded small_6003205_left_checked

theorem cover_6003205 : CoveredBy scale carrier boxes root_6003205 := by
  apply coveredBy_split_literal root_6003205 small_6003205_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_6003211 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6003205_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_6003211
#print axioms cover_6003205

def root_6003204 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003204_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003204_right_fuel : Nat := 21
def small_6003204_right_count : Nat := 345
def small_6003204_right_encoded : String := "1386AD0607800100128A40F7078000FA128A7CFB00000002078000FE128A7CFF00000004022A458313E1C4F8067ECE8712EA5906000000030640010012FF70F708C000FA11FC24FB0000000208C000FE0000000600000006000000060000000012FFACF70000000008C000FA11FC24FB0000000208C000FE000000090000000711FBE8FB0000000600000002000000060000000113E200F800000001067ECE8712EA5906000000030640010012FF70F708C000FA11FC24FB0000000208C000FE11FC24FF00000004000000060000000A000000060000000012FFACF70000000008C000FA11FC24FB0000000208C000FE11FC24FF000000040000000811FBE8FF033F67C313BBF4F80569AC470000000700000006000000010000000A0000000411FBE8FB08C000FE0000000611FBE8FF033F67C30000000600000006000000040000000212EA9506064001000000000512FFACF7000000000000000500000003128A40FF022A458313E1C4F8067ECE8712EA5906000000030640010012FF70F708C000FA0000000A11FBE8FB0000000A000000020000000012FFACF70000000008C000FA11FC24FB00000002064000FE000000070000000711FBE8FB064000FE12FFACFF000000040115234300000006000000060000000A000000020000000A000000010000000A00000004128A40FB078000FE128A7CFF00000004022A45830000000600000006128A40FF022A458313E1C4F8067ECE8712EA590600000003064001000000000612FFACF700000000064000FA12FFACFB000000020000000600000006000000060000000113E200F800000001067ECE8712EA590600000003064001000000000612FFACF700000000064000FA0000000A0000000600000006000000040000000200000000128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004022A458313E1C4F8067ECE8712EA59060000000308C0010011FBE8F708C000FA0000000711FBE8FB00000008000000020000000000000008000000080000000113E200F800000001067ECE8712EA59060000000308C00100000000080000000800000008128A40FF022A458313E1C4F8067ECE8712EA59060000000308C0010011FBE8F708C000FA0000000711FBE8FB064000FE12FFACFF000000040000000700000007000000020000000011FC24F7000000000000000712EA950608C0010011FBE8F708C000FA0000000711FBE8FB0000000A000000020000000011FC24F70000000000000007000000030000000113E200F800000001067ECE8712EA59060000000308C0010011FBE8F708C000FA11FC24FB00000002064000FE12FFACFF00000004033F67C3000000070000000A0000000A11FBE8FB064000FE12FFACFF00000004033F67C313BBF4F80000000800000001000000080000000A000000020000000011FC24F70000000008C000FA11FC24FB000000020000000711FBE8FB064000FE0000000812FF70FF033F67C30000000700000008000000040000000212EA95060000000A0000000300000004128A40FB078000FE128A7CFF00000004022A45830000000800000008128A40FF022A458313E1C4F8067ECE8712EA59060000000308C0010011FBE8F7064000FA12FFACFB00000002064000FE0000000812FF70FF01152343000000050000000A0000000412FF70FB00000006000000020000000011FC24F7000000000000000812EA950608C001000000000600000008000000030000000113E200F800000001067ECE8712EA59060000000308C0010011FBE8F7064000FA12FFACFB00000002064000FE000000080000000A12FF70FB064000FE000000060000000600000002000000000000000812EA950608C001000000000A0000000800000003000000040000000200000003"
theorem small_6003204_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003204_right_root small_6003204_right_fuel small_6003204_right_count small_6003204_right_encoded = true := by
  decide +kernel
theorem small_6003204_right_covered : CoveredBy scale carrier boxes small_6003204_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003204_right_root small_6003204_right_fuel small_6003204_right_count small_6003204_right_encoded small_6003204_right_checked

theorem cover_6003204 : CoveredBy scale carrier boxes root_6003204 := by
  apply coveredBy_split_literal root_6003204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_6003205 small_6003204_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_6003205
  · exact small_6003204_right_covered
#print axioms cover_6003204

def root_6003199 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003199_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003199_right_fuel : Nat := 1
def small_6003199_right_count : Nat := 1
def small_6003199_right_encoded : String := "00000001"
theorem small_6003199_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003199_right_root small_6003199_right_fuel small_6003199_right_count small_6003199_right_encoded = true := by
  decide +kernel
theorem small_6003199_right_covered : CoveredBy scale carrier boxes small_6003199_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003199_right_root small_6003199_right_fuel small_6003199_right_count small_6003199_right_encoded small_6003199_right_checked

theorem cover_6003199 : CoveredBy scale carrier boxes root_6003199 := by
  apply coveredBy_split_literal root_6003199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_6003204 small_6003199_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_6003204
  · exact small_6003199_right_covered
#print axioms cover_6003199

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415
