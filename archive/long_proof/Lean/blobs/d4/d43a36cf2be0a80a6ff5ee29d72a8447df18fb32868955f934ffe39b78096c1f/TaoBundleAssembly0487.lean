import TaoBundleAssembly0485
import TaoBundleAssembly0486
import TaoBundleChunkBatch0667
import TaoBundleChunkBatch0668
import TaoBundleChunkBatch0671
import TaoBundleChunkBatch0672
import TaoBundleChunkBatch0673
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487
def root_7114764 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114764_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114764_right_fuel : Nat := 26
def small_7114764_right_count : Nat := 347
def small_7114764_right_encoded : String := "138670FC0CFD9BFF0F350D080C9A87080F8750FF0AD3577710D13D00022A458300000008000000080000000000000008000000040F878CFF000000040AD3577710D13D00022A458313E1C50200000001067ECE7B12EA94FA00000002022A457D13E200FC000000030DE7CA08000000080E6014FF00000004000000080000000812EA58FA022A457D13E200FC000000030DE7CA080E5FD8FF0BE879B71011AD000115234313F85902000000010569AC3B000000081340D4FA0000000900000002000000080000000000000008000000040E6014FF000000040BE879B71011AD000115234313F85902000000010569AC3B134110FA00000002033F67BD13BC30FC000000030DAED87F0000000800000008000000081340D4FA033F67BD13BC30FC000000030DAED87F0E966108000000050000000400000005000000050000000213F895020569AC3B134110FA00000002033F67BD13BC30FC000000030000000800000005000000050000000100000000101171000000000001152343000000080000000813E1C4FC0DE7CA08000000080E6014FF000000040BE879B71011AD00000000050000000000000005000000030000000213E20102067ECE7B12EA94FA000000020000000812EA58FA022A457D13E200FC000000030DE7CA080E5FD8FF0BE879B71011AD00000000050000000000000005000000040E6014FF000000040BE879B71011AD000000000500000000000000050000000500000002000000010000000010D1010000000000022A45830000000800000008000000040F34D108000000040AD3577710D13D00022A458313E1C50200000001067ECE7B12EA94FA00000002022A457D13E200FC000000030AD3577F10D13D080BE879B71011AD000115234313F85902000000010793F0BB00000006128220FA033F67BD0000000600000006000000020000000A000000001011710000000000000000080000000410D10108000000040000000613E1C4FC0AD3577F10D13D080000000800000004000000060000000312EA58FA022A457D13E200FC000000030AD3577F10D13D080BE879B71011AD000115234313F85902000000010569AC3B134110FA00000002033F67BD13BC30FC000000030BE879BF1011AD0800000007000000040000000713BBF4FC0BE879BF1011AD08000000050000000400000005000000031340D4FA033F67BD00000007000000050000000213F895020569AC3B134110FA00000002033F67BD13BC30FC000000030BE879BF1011AD080C730AD70000000A000000050000000400000005000000050000000500000001000000001011710000000000011523430000000713F895020569AC3B134110FA00000002033F67BD000000070000000500000005000000010000000410D10108000000040000000713E1C4FC0AD3577F10D13D080BE879B71011AD000000000500000000000000050000000400000005000000030000000213E20102067ECE7B12EA94FA00000002022A457D13E200FC000000030AD3577F10D13D080BE879B70000000A1011710000000000000000080000000410D10108000000040000000A0000000A12EA58FA022A457D13E200FC000000030AD3577F10D13D080BE879B71011AD0000000005000000000000000500000004000000050000000500000002000000010000000010D1010000000000022A458313E1C50200000001067ECE7B12EA94FA00000002022A457D13E200FC000000030AD3577F00000008000000070000000812EA58FA022A457D00000007000000070000000213E20102067ECE7B12EA94FA00000002022A457D13E200FC000000030AD3577F00000008000000080000000812EA58FA022A457D13E200FC000000030AD3577F10D13D0800000005000000040000000500000005000000020000000100000003"
theorem small_7114764_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114764_right_root small_7114764_right_fuel small_7114764_right_count small_7114764_right_encoded = true := by
  decide +kernel
theorem small_7114764_right_covered : CoveredBy scale carrier boxes small_7114764_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114764_right_root small_7114764_right_fuel small_7114764_right_count small_7114764_right_encoded small_7114764_right_checked

theorem cover_7114764 : CoveredBy scale carrier boxes root_7114764 := by
  apply coveredBy_split_literal root_7114764 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7114765 small_7114764_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7114765
  · exact small_7114764_right_covered
#print axioms cover_7114764

def root_7114758 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114758_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114758_left_fuel : Nat := 1
def small_7114758_left_count : Nat := 1
def small_7114758_left_encoded : String := "00000002"
theorem small_7114758_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114758_left_root small_7114758_left_fuel small_7114758_left_count small_7114758_left_encoded = true := by
  decide +kernel
theorem small_7114758_left_covered : CoveredBy scale carrier boxes small_7114758_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114758_left_root small_7114758_left_fuel small_7114758_left_count small_7114758_left_encoded small_7114758_left_checked

theorem cover_7114758 : CoveredBy scale carrier boxes root_7114758 := by
  apply coveredBy_split_literal root_7114758 small_7114758_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114764 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7114758_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114764
#print axioms cover_7114758

def root_7114757 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114757_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114757_right_fuel : Nat := 28
def small_7114757_right_count : Nat := 373
def small_7114757_right_encoded : String := "138670FA045489FD1386ACFC000000030CFD9BFF0F350D080C9A87080F8750FF00000006000000040F878CFF000000040AD3577710D13D00022A458313E1C50200000001022A457B13E200FA00000002067ECE7D0000000612EA58FC0DE7CA080E5FD8FF00000006000000040E6014FF000000040BE879B71011AD000115234313F8590200000001033F67BB13BC30FA000000020569AC3D000000061340D4FC0DAED87F0E9661080000000500000004000000050000000300000006000000060000000010117100000000000115234313F8590200000001033F67BB13BC30FA000000020569AC3D000000061340D4FC000000060000000300000006000000060000000300000006000000060000000010D101000000000000000006000000040F34D108000000040AD3577710D13D00022A458313E1C50200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080BE879B71011AD00011523430000000900000009000000001011710000000000011523430000000A13F89502033F67BB13BC30FA000000020793F0BD00000006128220FC0BE879BF0000000600000007000000030000000600000001000000040000000912EA58FC0AD3577F10D13D080BE879B71011AD000115234313F8590200000001033F67BB13BC30FA000000020569AC3D134110FC000000030BE879BF1011AD080000000700000004000000071340D4FC000000070000000313BBF4FA0569AC3D134110FC000000030BE879BF1011AD08000000050000000400000005000000050000000213F89502033F67BB13BC30FA000000020569AC3D134110FC000000030BE879BF1011AD080C730AD70FA745000000000500000000000000050000000400000005000000050000000500000001000000001011710000000000011523430000000713F89502033F67BB13BC30FA000000020569AC3D000000070000000500000005000000010000000410D1010800000004000000070000000313E1C4FA067ECE7D12EA94FC000000030000000912EA58FC0AD3577F10D13D080BE879B71011AD000000000500000000000000050000000400000005000000030000000213E20102022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080BE879B71011AD00033F67C3000000090000000600000000101171000000000000000006000000040000000912EA58FC0AD3577F10D13D080BE879B71011AD0000000005000000000000000500000004000000050000000313E1C4FA067ECE7D0000000912EA58FC000000050000000300000002000000010000000010D1010000000000022A458313E1C50200000001022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F10D13D080000000A000000040000000712EA58FC000000070000000313E1C4FA067ECE7D0000000A12EA58FC00000007000000030000000213E20102022A457B13E200FA00000002067ECE7D12EA94FC000000030AD3577F0000000610D10108000000040000000712EA58FC0AD3577F10D13D080000000500000004000000050000000313E1C4FA067ECE7D00000006000000050000000200000001138670FC0CFD9BFF0F350D080C9A87080F8750FF0AD3577710D13D00022A458313E1C50200000001022A457B13E200FA00000002022A457D000000060000000500000005000000050000000000000005000000040F878CFF000000040AD3577710D13D00022A458313E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030DE7CA08000000050E6014FF00000004000000050000000500000005000000050000000000000005000000040F34D108000000040AD3577710D13D00022A458313E1C50200000001022A457B13E200FA00000002022A457D13E200FC000000030AD3577F10D13D080000000500000004000000050000000500000005000000050000000010D1010000000000022A458313E1C50200000001022A457B13E200FA00000002022A457D000000070000000500000005000000050000000300000002"
theorem small_7114757_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114757_right_root small_7114757_right_fuel small_7114757_right_count small_7114757_right_encoded = true := by
  decide +kernel
theorem small_7114757_right_covered : CoveredBy scale carrier boxes small_7114757_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114757_right_root small_7114757_right_fuel small_7114757_right_count small_7114757_right_encoded small_7114757_right_checked

theorem cover_7114757 : CoveredBy scale carrier boxes root_7114757 := by
  apply coveredBy_split_literal root_7114757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114758 small_7114757_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114758
  · exact small_7114757_right_covered
#print axioms cover_7114757

def root_7114751 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114751_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114751_left_fuel : Nat := 1
def small_7114751_left_count : Nat := 1
def small_7114751_left_encoded : String := "00000001"
theorem small_7114751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114751_left_root small_7114751_left_fuel small_7114751_left_count small_7114751_left_encoded = true := by
  decide +kernel
theorem small_7114751_left_covered : CoveredBy scale carrier boxes small_7114751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114751_left_root small_7114751_left_fuel small_7114751_left_count small_7114751_left_encoded small_7114751_left_checked

theorem cover_7114751 : CoveredBy scale carrier boxes root_7114751 := by
  apply coveredBy_split_literal root_7114751 small_7114751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114757 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7114751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114757
#print axioms cover_7114751

def root_7114750 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7114750 : CoveredBy scale carrier boxes root_7114750 := by
  apply coveredBy_split_literal root_7114750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2682.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114751
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2682.covered
#print axioms cover_7114750

def root_7114744 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114744_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114744_left_fuel : Nat := 1
def small_7114744_left_count : Nat := 1
def small_7114744_left_encoded : String := "00000000"
theorem small_7114744_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114744_left_root small_7114744_left_fuel small_7114744_left_count small_7114744_left_encoded = true := by
  decide +kernel
theorem small_7114744_left_covered : CoveredBy scale carrier boxes small_7114744_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114744_left_root small_7114744_left_fuel small_7114744_left_count small_7114744_left_encoded small_7114744_left_checked

theorem cover_7114744 : CoveredBy scale carrier boxes root_7114744 := by
  apply coveredBy_split_literal root_7114744 small_7114744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114750 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7114744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114750
#print axioms cover_7114744

def root_7098498 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098498 : CoveredBy scale carrier boxes root_7098498 := by
  apply coveredBy_split_literal root_7098498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.root_7098499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7114744 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0486.cover_7098499
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7114744
#print axioms cover_7098498

def root_7098493 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098493_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098493_right_fuel : Nat := 1
def small_7098493_right_count : Nat := 1
def small_7098493_right_encoded : String := "00000004"
theorem small_7098493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098493_right_root small_7098493_right_fuel small_7098493_right_count small_7098493_right_encoded = true := by
  decide +kernel
theorem small_7098493_right_covered : CoveredBy scale carrier boxes small_7098493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098493_right_root small_7098493_right_fuel small_7098493_right_count small_7098493_right_encoded small_7098493_right_checked

theorem cover_7098493 : CoveredBy scale carrier boxes root_7098493 := by
  apply coveredBy_split_literal root_7098493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7098498 small_7098493_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7098498
  · exact small_7098493_right_covered
#print axioms cover_7098493

def root_7098492 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098492_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098492_right_fuel : Nat := 25
def small_7098492_right_count : Nat := 249
def small_7098492_right_encoded : String := "12070108000000040CFD9BF70F350D0004548A031386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080C9A8700000000090F878CF700000000022A458313E1C50200000001067ECE7B000000060000000913E20102067ECE7B0000000A000000090000000100000004000000090000000A138670FA045489FD00000009138670FC045489FF1386AD080C9A8700000000050F878CF70000000000000005000000040000000500000003000000021386AD02045489FB0000000A138670FA045489FD00000009000000050000000200000001000000000F34D1000000000004548A031386710200000001045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D00022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D000000070000000612EA58FA000000070000000213E20102067ECE7B12EA94FA00000002067ECE7D0000000912EA58FC0000000A0000000312EA58FA067ECE7D0000000912EA58FC000000070000000300000002000000010000000010D1010000000000022A45830000000713E20102067ECE7B0000000700000007000000010000000400000007138670FC045489FF1386AD080AD3577710D13D00022A4583000000060000000A0000000010D101000000000000000007000000040000000700000003138670FA045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D00000000090000000010D1010000000000000000070000000400000007138670FC045489FF1386AD080AD3577710D13D00000000050000000000000005000000040000000500000003000000021386AD02045489FB1386ACFA00000002045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D00067ECE8312EA590200000001067ECE7B0000000A12EA58FA00000009000000020000000A0000000010D1010000000000067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC00000003067ECE7F12EA950800000007000000040000000712EA58FC000000070000000312EA58FA067ECE7D00000007000000070000000212EA9502067ECE7B12EA94FA00000002067ECE7D12EA94FC00000003067ECE7F12EA950809BE35370000000911774100000000000793F0C3000000070000000500000004000000090000000A12EA58FA0000000500000002000000010000000413867108000000040AD357770000000900000009138670FC0000000A00000003138670FA045489FD1386ACFC00000003045489FF1386AD080AD3577710D13D000000000500000000000000050000000400000005000000050000000200000001"
theorem small_7098492_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098492_right_root small_7098492_right_fuel small_7098492_right_count small_7098492_right_encoded = true := by
  decide +kernel
theorem small_7098492_right_covered : CoveredBy scale carrier boxes small_7098492_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098492_right_root small_7098492_right_fuel small_7098492_right_count small_7098492_right_encoded small_7098492_right_checked

theorem cover_7098492 : CoveredBy scale carrier boxes root_7098492 := by
  apply coveredBy_split_literal root_7098492 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7098493 small_7098492_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7098493
  · exact small_7098492_right_covered
#print axioms cover_7098492

def root_7098487 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098487_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7098487_right_fuel : Nat := 1
def small_7098487_right_count : Nat := 1
def small_7098487_right_encoded : String := "00000003"
theorem small_7098487_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7098487_right_root small_7098487_right_fuel small_7098487_right_count small_7098487_right_encoded = true := by
  decide +kernel
theorem small_7098487_right_covered : CoveredBy scale carrier boxes small_7098487_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7098487_right_root small_7098487_right_fuel small_7098487_right_count small_7098487_right_encoded small_7098487_right_checked

theorem cover_7098487 : CoveredBy scale carrier boxes root_7098487 := by
  apply coveredBy_split_literal root_7098487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7098492 small_7098487_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7098492
  · exact small_7098487_right_covered
#print axioms cover_7098487

def root_7095473 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7095473 : CoveredBy scale carrier boxes root_7095473 := by
  apply coveredBy_split_literal root_7095473 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2671.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7098487 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2671.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7098487
#print axioms cover_7095473

def root_7095468 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7095468_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7095468_right_fuel : Nat := 1
def small_7095468_right_count : Nat := 1
def small_7095468_right_encoded : String := "00000002"
theorem small_7095468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7095468_right_root small_7095468_right_fuel small_7095468_right_count small_7095468_right_encoded = true := by
  decide +kernel
theorem small_7095468_right_covered : CoveredBy scale carrier boxes small_7095468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7095468_right_root small_7095468_right_fuel small_7095468_right_count small_7095468_right_encoded small_7095468_right_checked

theorem cover_7095468 : CoveredBy scale carrier boxes root_7095468 := by
  apply coveredBy_split_literal root_7095468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7095473 small_7095468_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7095473
  · exact small_7095468_right_covered
#print axioms cover_7095468

def root_7088472 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088472 : CoveredBy scale carrier boxes root_7088472 := by
  apply coveredBy_split_literal root_7088472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7088473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7095468 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7088473
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7095468
#print axioms cover_7088472

def root_7088466 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088466_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088466_left_fuel : Nat := 1
def small_7088466_left_count : Nat := 1
def small_7088466_left_encoded : String := "00000001"
theorem small_7088466_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088466_left_root small_7088466_left_fuel small_7088466_left_count small_7088466_left_encoded = true := by
  decide +kernel
theorem small_7088466_left_covered : CoveredBy scale carrier boxes small_7088466_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088466_left_root small_7088466_left_fuel small_7088466_left_count small_7088466_left_encoded small_7088466_left_checked

theorem cover_7088466 : CoveredBy scale carrier boxes root_7088466 := by
  apply coveredBy_split_literal root_7088466 small_7088466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088472 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7088466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088472
#print axioms cover_7088466

def root_7088465 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088465 : CoveredBy scale carrier boxes root_7088465 := by
  apply coveredBy_split_literal root_7088465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2683.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088466
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2683.covered
#print axioms cover_7088465

def root_7088460 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088460_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088460_right_fuel : Nat := 1
def small_7088460_right_count : Nat := 1
def small_7088460_right_encoded : String := "00000000"
theorem small_7088460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088460_right_root small_7088460_right_fuel small_7088460_right_count small_7088460_right_encoded = true := by
  decide +kernel
theorem small_7088460_right_covered : CoveredBy scale carrier boxes small_7088460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088460_right_root small_7088460_right_fuel small_7088460_right_count small_7088460_right_encoded small_7088460_right_checked

theorem cover_7088460 : CoveredBy scale carrier boxes root_7088460 := by
  apply coveredBy_split_literal root_7088460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088465 small_7088460_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088465
  · exact small_7088460_right_covered
#print axioms cover_7088460

def root_7128796 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7128796 : CoveredBy scale carrier boxes root_7128796 := by
  apply coveredBy_split_literal root_7128796 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2684.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2685.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2684.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2685.covered
#print axioms cover_7128796

def root_7128790 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7128790_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7128790_left_fuel : Nat := 1
def small_7128790_left_count : Nat := 1
def small_7128790_left_encoded : String := "00000001"
theorem small_7128790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7128790_left_root small_7128790_left_fuel small_7128790_left_count small_7128790_left_encoded = true := by
  decide +kernel
theorem small_7128790_left_covered : CoveredBy scale carrier boxes small_7128790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7128790_left_root small_7128790_left_fuel small_7128790_left_count small_7128790_left_encoded small_7128790_left_checked

theorem cover_7128790 : CoveredBy scale carrier boxes root_7128790 := by
  apply coveredBy_split_literal root_7128790 small_7128790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7128796 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7128790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7128796
#print axioms cover_7128790

def root_7128789 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7128789 : CoveredBy scale carrier boxes root_7128789 := by
  apply coveredBy_split_literal root_7128789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7128790 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2686.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7128790
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2686.covered
#print axioms cover_7128789

def root_7128783 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7128783_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7128783_left_fuel : Nat := 1
def small_7128783_left_count : Nat := 1
def small_7128783_left_encoded : String := "00000000"
theorem small_7128783_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7128783_left_root small_7128783_left_fuel small_7128783_left_count small_7128783_left_encoded = true := by
  decide +kernel
theorem small_7128783_left_covered : CoveredBy scale carrier boxes small_7128783_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7128783_left_root small_7128783_left_fuel small_7128783_left_count small_7128783_left_encoded small_7128783_left_checked

theorem cover_7128783 : CoveredBy scale carrier boxes root_7128783 := by
  apply coveredBy_split_literal root_7128783 small_7128783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7128789 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7128783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7128789
#print axioms cover_7128783

def root_7088459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088459 : CoveredBy scale carrier boxes root_7088459 := by
  apply coveredBy_split_literal root_7088459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7128783 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088460
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7128783
#print axioms cover_7088459

def root_7088453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088453_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7088453_left_fuel : Nat := 1
def small_7088453_left_count : Nat := 1
def small_7088453_left_encoded : String := "00000004"
theorem small_7088453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7088453_left_root small_7088453_left_fuel small_7088453_left_count small_7088453_left_encoded = true := by
  decide +kernel
theorem small_7088453_left_covered : CoveredBy scale carrier boxes small_7088453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7088453_left_root small_7088453_left_fuel small_7088453_left_count small_7088453_left_encoded small_7088453_left_checked

theorem cover_7088453 : CoveredBy scale carrier boxes root_7088453 := by
  apply coveredBy_split_literal root_7088453 small_7088453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088459 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7088453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088459
#print axioms cover_7088453

def root_7086883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086883 : CoveredBy scale carrier boxes root_7086883 := by
  apply coveredBy_split_literal root_7086883 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2668.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7088453 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2668.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7088453
#print axioms cover_7086883

def root_7086877 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086877_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086877_left_fuel : Nat := 1
def small_7086877_left_count : Nat := 1
def small_7086877_left_encoded : String := "00000003"
theorem small_7086877_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7086877_left_root small_7086877_left_fuel small_7086877_left_count small_7086877_left_encoded = true := by
  decide +kernel
theorem small_7086877_left_covered : CoveredBy scale carrier boxes small_7086877_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7086877_left_root small_7086877_left_fuel small_7086877_left_count small_7086877_left_encoded small_7086877_left_checked

theorem cover_7086877 : CoveredBy scale carrier boxes root_7086877 := by
  apply coveredBy_split_literal root_7086877 small_7086877_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086883 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7086877_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086883
#print axioms cover_7086877

def root_7086876 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086876 : CoveredBy scale carrier boxes root_7086876 := by
  apply coveredBy_split_literal root_7086876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086877 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2687.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086877
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2687.covered
#print axioms cover_7086876

def root_7086870 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086870_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086870_left_fuel : Nat := 1
def small_7086870_left_count : Nat := 1
def small_7086870_left_encoded : String := "00000002"
theorem small_7086870_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7086870_left_root small_7086870_left_fuel small_7086870_left_count small_7086870_left_encoded = true := by
  decide +kernel
theorem small_7086870_left_covered : CoveredBy scale carrier boxes small_7086870_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7086870_left_root small_7086870_left_fuel small_7086870_left_count small_7086870_left_encoded small_7086870_left_checked

theorem cover_7086870 : CoveredBy scale carrier boxes root_7086870 := by
  apply coveredBy_split_literal root_7086870 small_7086870_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086876 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7086870_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086876
#print axioms cover_7086870

def root_7086869 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086869 : CoveredBy scale carrier boxes root_7086869 := by
  apply coveredBy_split_literal root_7086869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086870 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2688.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086870
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2688.covered
#print axioms cover_7086869

def root_7086864 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086864_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7086864_right_fuel : Nat := 1
def small_7086864_right_count : Nat := 1
def small_7086864_right_encoded : String := "00000001"
theorem small_7086864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7086864_right_root small_7086864_right_fuel small_7086864_right_count small_7086864_right_encoded = true := by
  decide +kernel
theorem small_7086864_right_covered : CoveredBy scale carrier boxes small_7086864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7086864_right_root small_7086864_right_fuel small_7086864_right_count small_7086864_right_encoded small_7086864_right_checked

theorem cover_7086864 : CoveredBy scale carrier boxes root_7086864 := by
  apply coveredBy_split_literal root_7086864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086869 small_7086864_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086869
  · exact small_7086864_right_covered
#print axioms cover_7086864

def root_7085658 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7085658 : CoveredBy scale carrier boxes root_7085658 := by
  apply coveredBy_split_literal root_7085658 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2667.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7086864 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2667.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7086864
#print axioms cover_7085658

def root_7085652 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7085652_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7085652_left_fuel : Nat := 1
def small_7085652_left_count : Nat := 1
def small_7085652_left_encoded : String := "00000000"
theorem small_7085652_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7085652_left_root small_7085652_left_fuel small_7085652_left_count small_7085652_left_encoded = true := by
  decide +kernel
theorem small_7085652_left_covered : CoveredBy scale carrier boxes small_7085652_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7085652_left_root small_7085652_left_fuel small_7085652_left_count small_7085652_left_encoded small_7085652_left_checked

theorem cover_7085652 : CoveredBy scale carrier boxes root_7085652 := by
  apply coveredBy_split_literal root_7085652 small_7085652_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7085658 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7085652_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7085658
#print axioms cover_7085652

def root_7081626 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7081626 : CoveredBy scale carrier boxes root_7081626 := by
  apply coveredBy_split_literal root_7081626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7081627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7085652 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7081627
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7085652
#print axioms cover_7081626

def root_7139496 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7139496 : CoveredBy scale carrier boxes root_7139496 := by
  apply coveredBy_split_literal root_7139496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2689.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2690.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2689.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2690.covered
#print axioms cover_7139496

def root_7139491 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7139491_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7139491_right_fuel : Nat := 1
def small_7139491_right_count : Nat := 1
def small_7139491_right_encoded : String := "00000001"
theorem small_7139491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7139491_right_root small_7139491_right_fuel small_7139491_right_count small_7139491_right_encoded = true := by
  decide +kernel
theorem small_7139491_right_covered : CoveredBy scale carrier boxes small_7139491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7139491_right_root small_7139491_right_fuel small_7139491_right_count small_7139491_right_encoded small_7139491_right_checked

theorem cover_7139491 : CoveredBy scale carrier boxes root_7139491 := by
  apply coveredBy_split_literal root_7139491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7139496 small_7139491_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7139496
  · exact small_7139491_right_covered
#print axioms cover_7139491

def root_7138649 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7138649_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7138649_left_fuel : Nat := 26
def small_7138649_left_count : Nat := 393
def small_7138649_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912F712073D0008A912FB00000005120700FA000000050000000200000000120701000000000008A912FB12073CFA0000000208A912FD00000005120700FC0000000500000003000000091152250908A912F712073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A9130912070108000000040000000900000009120700FC0000000500000003120700FA08A912FD00000005120700FC00000005000000030000000200000000120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120701080000000405000102135D450300000001045489F70000000913867100000000000CFD9BFB0F350CFA000000020000000A00000005135D8103045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD000000090000000A000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003000000090F34D0FC00000005000000030F34D0FA00000005000000020000000112073D080000000900000004120700FC08A913090000000512073D080500010200000005135D810300000005000000010000000400000003120700FA08A912FD00000009120700FC08A9130900000005000000090000000300000002000000041151E8FD0A0001081151E9090000000408A912F712073D0008A912FB00000009120700FA000000050000000200000000000000091152250908A912F712073D0008A912FB00000009120700FA000000090000000200000000120701000000000008A912FB12073CFA0000000208A9130900000009000000090000000900000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912F700000009120701000000000008A912FD00000009120700FC00000005000000031152250908A912F712073D0008A912FD12073CFC0000000308A9130912070108000000040000000A12073D08050001020000000900000009000000040000000A00000000120701000000000008A912FD12073CFC0000000308A91309120701080000000405000102135D4503000000010000000A135D8103050000FA135D80FB00000002045489F70000000A13867100000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000080F8750FD0000000A000000031386AD080C9A86FC0000000A00000009000000040000000A135D44FB045489F70000000A13867100000000000CFD9BFD0F350CFC0000000304548A09000000080000000A00000008000000020000000112073D0805000102135D450300000001050000FA135D80FB00000002045489F700000009138671000000000000000009135D44FB0000000A00000002135D8103050000FA135D80FB00000002045489F700000009138671000000000000000009135D44FB045489F70000000913867100000000000CFD9BFD0F350CFC000000030CFD9C090F34D108000000040000000A000000090F34D0FC0000000A00000003000000020000000100000004120700FC08A9130912070108000000040000000A0000000A00000003000000041151E8FD0A0001081151E90900000004000000091152250908A912F712073D0008A9130912070108000000040500010200000009000000090000000900000000120701000000000008A91309120701080000000405000102135D450300000001050000FA135D80FB00000002050000FC135D80FD00000003045489F70000000913867100000000000000000900000009135D44FB050000FC135D80FD00000003045489F70000000A13867100000000000000000A135D44FD045489F700000009138671000000000004548A0900000005000000090000000300000002135D8103050000FA135D80FB00000002050000FC135D80FD00000003045489F70000000913867100000000000000000900000009135D44FB050000FC135D80FD00000003045489F71386AD000000000900000000138671000000000004548A09000000051386AD080780010200000009000000050000000400000005000000020000000112073D0805000102000000090000000900000004000000040000000300000002"
theorem small_7138649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7138649_left_root small_7138649_left_fuel small_7138649_left_count small_7138649_left_encoded = true := by
  decide +kernel
theorem small_7138649_left_covered : CoveredBy scale carrier boxes small_7138649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7138649_left_root small_7138649_left_fuel small_7138649_left_count small_7138649_left_encoded small_7138649_left_checked

theorem cover_7138649 : CoveredBy scale carrier boxes root_7138649 := by
  apply coveredBy_split_literal root_7138649 small_7138649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7139491 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7138649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7139491
#print axioms cover_7138649

def root_7138643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7138643_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7138643_left_fuel : Nat := 1
def small_7138643_left_count : Nat := 1
def small_7138643_left_encoded : String := "00000000"
theorem small_7138643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7138643_left_root small_7138643_left_fuel small_7138643_left_count small_7138643_left_encoded = true := by
  decide +kernel
theorem small_7138643_left_covered : CoveredBy scale carrier boxes small_7138643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7138643_left_root small_7138643_left_fuel small_7138643_left_count small_7138643_left_encoded small_7138643_left_checked

theorem cover_7138643 : CoveredBy scale carrier boxes root_7138643 := by
  apply coveredBy_split_literal root_7138643 small_7138643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7138649 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7138643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7138649
#print axioms cover_7138643

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487
