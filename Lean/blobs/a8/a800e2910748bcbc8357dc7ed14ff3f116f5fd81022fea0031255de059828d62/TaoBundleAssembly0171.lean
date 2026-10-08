import TaoBundleAssembly0170
import TaoBundleChunkBatch0667
import TaoBundleChunkBatch0668
import TaoBundleChunkBatch0670
import TaoBundleChunkBatch0671
import TaoBundleChunkBatch0672
import TaoBundleChunkBatch0673
import TaoBundleChunkBatch0674
import TaoBundleChunkBatch0675
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171
def root_7117301 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117301_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-9081120), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117301_right_fuel : Nat := 20
def small_7117301_right_count : Nat := 267
def small_7117301_right_encoded : String := "10D1010000000000022A458313E1C50200000001067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D000115234313F85902000000010793F0BB000000070000000713F895020793F0BB12825CFA000000020793F0BD0000000700000008128220FA0793F0BD0000000700000007000000020000000100000000117741000000000000000007000000040000000712EA58FC0AD3577F10D13D0809BE353711777D00011523430000000700000008000000000000000700000004000000070000000312EA58FA067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00011523430000000713F895020569AC3B000000070000000A000000010000000000000007000000040000000712EA58FC0AD3577F10D13D0809BE353711777D000000000700000000000000070000000400000007000000030000000213E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010793F0BB12825CFA000000020793F0BD12825CFC000000030000000800000008128220FA0793F0BD12825CFC000000030BE879BF1011AD08000000060000000400000007128220FC0BE879BF0000000800000007000000030000000213BC31020793F0BB12825CFA000000020793F0BD12825CFC000000030000000800000008128220FA0793F0BD00000006128220FC0BE879BF0000000600000008000000030000000200000001000000001177410000000000033F67C313BBF502000000010793F0BB00000008128220FA000000070000000213BC310200000008000000010000000410D101080000000409BE353711777D00033F67C30000000713BC31020793F0BB000000070000000700000001000000000000000712EA58FC0AD3577F10D13D0809BE353711777D00033F67C3000000080000000800000000000000080000000410D1010800000004000000070000000312EA58FA067ECE7D12EA94FC000000030AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010569AC3B134110FA000000020793F0BD00000006128220FC00000007000000030000000600000006000000001177410000000000033F67C313BBF502000000010569AC3B0000000700000006000000060000000410D10108000000040000000712EA58FC0AD3577F10D13D0809BE353711777D00033F67C313BBF502000000010569AC3B134110FA000000020569AC3D00000007000000071340D4FA0569AC3D00000007000000050000000213BC31020569AC3B134110FA000000020569AC3D134110FC000000030BE879BF0000000600000005000000050000000500000001000000001177410000000000033F67C30000000713BC31020569AC3B0000000800000005000000010000000410D101080000000400000007000000030000000200000001"
theorem small_7117301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117301_right_root small_7117301_right_fuel small_7117301_right_count small_7117301_right_encoded = true := by
  decide +kernel
theorem small_7117301_right_covered : CoveredBy scale carrier boxes small_7117301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117301_right_root small_7117301_right_fuel small_7117301_right_count small_7117301_right_encoded small_7117301_right_checked

theorem cover_7117301 : CoveredBy scale carrier boxes root_7117301 := by
  apply coveredBy_split_literal root_7117301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7117302 small_7117301_right_root coord0 true (-9081120)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7117302
  · exact small_7117301_right_covered
#print axioms cover_7117301

def root_7117295 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117295_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7117295_left_fuel : Nat := 1
def small_7117295_left_count : Nat := 1
def small_7117295_left_encoded : String := "00000004"
theorem small_7117295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7117295_left_root small_7117295_left_fuel small_7117295_left_count small_7117295_left_encoded = true := by
  decide +kernel
theorem small_7117295_left_covered : CoveredBy scale carrier boxes small_7117295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7117295_left_root small_7117295_left_fuel small_7117295_left_count small_7117295_left_encoded small_7117295_left_checked

theorem cover_7117295 : CoveredBy scale carrier boxes root_7117295 := by
  apply coveredBy_split_literal root_7117295 small_7117295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7117301 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7117295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7117301
#print axioms cover_7117295

def root_7114771 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7114771 : CoveredBy scale carrier boxes root_7114771 := by
  apply coveredBy_split_literal root_7114771 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2679.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7117295 coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2679.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7117295
#print axioms cover_7114771

def root_7114765 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114765_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7114765_left_fuel : Nat := 1
def small_7114765_left_count : Nat := 1
def small_7114765_left_encoded : String := "00000003"
theorem small_7114765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7114765_left_root small_7114765_left_fuel small_7114765_left_count small_7114765_left_encoded = true := by
  decide +kernel
theorem small_7114765_left_covered : CoveredBy scale carrier boxes small_7114765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7114765_left_root small_7114765_left_fuel small_7114765_left_count small_7114765_left_encoded small_7114765_left_checked

theorem cover_7114765 : CoveredBy scale carrier boxes root_7114765 := by
  apply coveredBy_split_literal root_7114765 small_7114765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114771 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7114765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114771
#print axioms cover_7114765

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
  apply coveredBy_split_literal root_7114764 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114765 small_7114764_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114765
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
  apply coveredBy_split_literal root_7114758 small_7114758_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114764 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7114758_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114764
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
  apply coveredBy_split_literal root_7114757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114758 small_7114757_right_root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114758
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
  apply coveredBy_split_literal root_7114751 small_7114751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114757 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7114751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114757
#print axioms cover_7114751

def root_7114750 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7114750 : CoveredBy scale carrier boxes root_7114750 := by
  apply coveredBy_split_literal root_7114750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114751 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2682.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114751
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
  apply coveredBy_split_literal root_7114744 small_7114744_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114750 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7114744_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114750
#print axioms cover_7114744

def root_7098498 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7098498 : CoveredBy scale carrier boxes root_7098498 := by
  apply coveredBy_split_literal root_7098498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7098499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7114744 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7098499
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7114744
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
  apply coveredBy_split_literal root_7098493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7098498 small_7098493_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7098498
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
  apply coveredBy_split_literal root_7098492 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7098493 small_7098492_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7098493
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
  apply coveredBy_split_literal root_7098487 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7098492 small_7098487_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7098492
  · exact small_7098487_right_covered
#print axioms cover_7098487

def root_7095473 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7095473 : CoveredBy scale carrier boxes root_7095473 := by
  apply coveredBy_split_literal root_7095473 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2671.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7098487 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2671.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7098487
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
  apply coveredBy_split_literal root_7095468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7095473 small_7095468_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7095473
  · exact small_7095468_right_covered
#print axioms cover_7095468

def root_7088472 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088472 : CoveredBy scale carrier boxes root_7088472 := by
  apply coveredBy_split_literal root_7088472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7088473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7095468 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7088473
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7095468
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
  apply coveredBy_split_literal root_7088466 small_7088466_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088472 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7088466_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088472
#print axioms cover_7088466

def root_7088465 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088465 : CoveredBy scale carrier boxes root_7088465 := by
  apply coveredBy_split_literal root_7088465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2683.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088466
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
  apply coveredBy_split_literal root_7088460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088465 small_7088460_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088465
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
  apply coveredBy_split_literal root_7128790 small_7128790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7128796 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7128790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7128796
#print axioms cover_7128790

def root_7128789 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7128789 : CoveredBy scale carrier boxes root_7128789 := by
  apply coveredBy_split_literal root_7128789 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7128790 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2686.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7128790
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
  apply coveredBy_split_literal root_7128783 small_7128783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7128789 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7128783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7128789
#print axioms cover_7128783

def root_7088459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7088459 : CoveredBy scale carrier boxes root_7088459 := by
  apply coveredBy_split_literal root_7088459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7128783 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088460
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7128783
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
  apply coveredBy_split_literal root_7088453 small_7088453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088459 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7088453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088459
#print axioms cover_7088453

def root_7086883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086883 : CoveredBy scale carrier boxes root_7086883 := by
  apply coveredBy_split_literal root_7086883 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2668.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7088453 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2668.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7088453
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
  apply coveredBy_split_literal root_7086877 small_7086877_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086883 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7086877_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086883
#print axioms cover_7086877

def root_7086876 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086876 : CoveredBy scale carrier boxes root_7086876 := by
  apply coveredBy_split_literal root_7086876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086877 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2687.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086877
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
  apply coveredBy_split_literal root_7086870 small_7086870_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086876 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7086870_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086876
#print axioms cover_7086870

def root_7086869 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7086869 : CoveredBy scale carrier boxes root_7086869 := by
  apply coveredBy_split_literal root_7086869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086870 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2688.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086870
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
  apply coveredBy_split_literal root_7086864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086869 small_7086864_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086869
  · exact small_7086864_right_covered
#print axioms cover_7086864

def root_7085658 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7085658 : CoveredBy scale carrier boxes root_7085658 := by
  apply coveredBy_split_literal root_7085658 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2667.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7086864 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2667.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7086864
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
  apply coveredBy_split_literal root_7085652 small_7085652_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7085658 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7085652_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7085658
#print axioms cover_7085652

def root_7081626 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7081626 : CoveredBy scale carrier boxes root_7081626 := by
  apply coveredBy_split_literal root_7081626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7081627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7085652 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7081627
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7085652
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
  apply coveredBy_split_literal root_7139491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7139496 small_7139491_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7139496
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
  apply coveredBy_split_literal root_7138649 small_7138649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7139491 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7138649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7139491
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
  apply coveredBy_split_literal root_7138643 small_7138643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7138649 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7138643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7138649
#print axioms cover_7138643

def root_7137973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7137973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7137973_left_fuel : Nat := 23
def small_7137973_left_count : Nat := 309
def small_7137973_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A000108000000051152250900000009000000041151E8FD0A0001081151E90900000004000000051152250908A912FB00000009120700FA08A9130900000009000000050000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000050000000A1151E8FD0A000108000000091152250900000009000000040000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000500000003120700FA000000050000000212073D0200000005000000011152250908A91303120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A9130912070108000000040000000900000009120700FC08A9130912070108000000040000000A12073D080500010000000009135D80F70000000004548A0313867102000000010CFD9BFB0000000600000009000000090000000400000003120700FA08A912FD12073CFC0000000308A9130912070108000000040000000912073D0805000100135D44F704548A031386710200000001045489FB00000009000000050000000500000000135D80F70000000004548A031386710200000001045489FB00000009000000090000000900000004120700FC08A9130912070108000000040000000900000005000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC0000000300000009120700FC0000000A00000003120700FA08A912FD00000009120700FC00000005000000030000000200000001000000041151E8FD0A0001081151E9090000000408A91303120701020000000108A912FB00000007120700FA000000070000000212073D0208A912FB12073CFA0000000205000100135D44F7050000FC00000007135D44FD000000070000000300000000135D80F700000000050000FC00000009135D44FD0000000800000003120700FA0000000500000002000000011152250908A91303120701020000000108A912FB12073CFA0000000208A913090000000912073D0805000100000000060000000900000004120700FA08A9130912070108000000040000000912073D0805000100135D44F70000000800000000135D80F700000000050000FC0000000800000008000000040000000212073D0208A912FB00000009120700FA08A913090000000912073D0805000100135D44F700000008000000000000000800000004000000020000000100000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A912FD00000007120700FC0000000700000003000000091152250908A91303120701020000000108A912FD12073CFC0000000308A9130912070108000000040000000600000009120700FC08A9130912070108000000040000000612073D0805000100000000090000000A000000040000000312073D0208A912FD12073CFC0000000308A91309120701080000000400000009000000090000000A00000001000000041151E8FD0A0001081151E90900000004000000090000000900000003000000020000000100000000"
theorem small_7137973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7137973_left_root small_7137973_left_fuel small_7137973_left_count small_7137973_left_encoded = true := by
  decide +kernel
theorem small_7137973_left_covered : CoveredBy scale carrier boxes small_7137973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7137973_left_root small_7137973_left_fuel small_7137973_left_count small_7137973_left_encoded small_7137973_left_checked

theorem cover_7137973 : CoveredBy scale carrier boxes root_7137973 := by
  apply coveredBy_split_literal root_7137973 small_7137973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7138643 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7137973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7138643
#print axioms cover_7137973

def root_7081625 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7081625 : CoveredBy scale carrier boxes root_7081625 := by
  apply coveredBy_split_literal root_7081625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7081626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7137973 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7081626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7137973
#print axioms cover_7081625

def root_7075997 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075997 : CoveredBy scale carrier boxes root_7075997 := by
  apply coveredBy_split_literal root_7075997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.root_7075998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7081625 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0170.cover_7075998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7081625
#print axioms cover_7075997

def root_7150143 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7150143 : CoveredBy scale carrier boxes root_7150143 := by
  apply coveredBy_split_literal root_7150143 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2694.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2695.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2694.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2695.covered
#print axioms cover_7150143

def root_7150137 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7150137_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7150137_left_fuel : Nat := 1
def small_7150137_left_count : Nat := 1
def small_7150137_left_encoded : String := "00000000"
theorem small_7150137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7150137_left_root small_7150137_left_fuel small_7150137_left_count small_7150137_left_encoded = true := by
  decide +kernel
theorem small_7150137_left_covered : CoveredBy scale carrier boxes small_7150137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7150137_left_root small_7150137_left_fuel small_7150137_left_count small_7150137_left_encoded small_7150137_left_checked

theorem cover_7150137 : CoveredBy scale carrier boxes root_7150137 := by
  apply coveredBy_split_literal root_7150137 small_7150137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7150143 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7150137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7150143
#print axioms cover_7150137

def root_7149709 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149709_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149709_left_fuel : Nat := 23
def small_7149709_left_count : Nat := 207
def small_7149709_left_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F8751070000000307800102128A410300000001078000FE000000050000000A128A7D03078000FE00000005128A410900000004067ECE770000000512EA590000000000067ECE7B0000000512EA58FA0B4D43FC0000000510801107000000030000000A0000000200000001138670FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D0707800102128A410300000001078000FE128A7D09067ECE770000000512EA590000000000022A457B000000050000000600000004128A410900000004067ECE770000000512EA590000000000022A457B0000000500000008128A7D03078000FE128A7D09067ECE77000000050000000800000004128A410900000004067ECE77000000050000000800000001000000030F8751070000000307800102128A410300000001078000FE128A7D09067ECE7712EA9500022A457B0000000513E1C4FA00000006000000020000000012EA590000000000022A457B13E200FA000000020B4D43FC10804D07000000050000000310801107000000030640010212FF71030000000108C000FE11FC250900000005000000040000000A12FFAD0308C000FE11FC2509000000050000000411FBE909000000040569AC3700000005000000080000000113E1C4FA0B4D43FC0000000610801107000000030640010200000006000000060000000200000004128A410900000004067ECE770000000A12EA590000000000022A457B0000000A13E1C4FA0B4D43FC00000008108011070000000306400102000000080000000800000002128A7D03078000FE128A7D09067ECE7712EA9500022A457B00000005000000080000000012EA590000000000022A457B13E200FA000000020B4D43FC00000008108011070000000308C0010211FBE9030000000108C000FE0000000500000008000000080000000800000004128A410900000004067ECE7712EA9500022A457B00000005000000080000000012EA590000000000022A457B13E200FA000000020B4D43FC00000008108011070000000308C00102000000080000000800000008000000010000000200000000"
theorem small_7149709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149709_left_root small_7149709_left_fuel small_7149709_left_count small_7149709_left_encoded = true := by
  decide +kernel
theorem small_7149709_left_covered : CoveredBy scale carrier boxes small_7149709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149709_left_root small_7149709_left_fuel small_7149709_left_count small_7149709_left_encoded small_7149709_left_checked

theorem cover_7149709 : CoveredBy scale carrier boxes root_7149709 := by
  apply coveredBy_split_literal root_7149709 small_7149709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7150137 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_7149709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7150137
#print axioms cover_7149709

def root_7149704 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149704_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149704_right_fuel : Nat := 1
def small_7149704_right_count : Nat := 1
def small_7149704_right_encoded : String := "00000004"
theorem small_7149704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149704_right_root small_7149704_right_fuel small_7149704_right_count small_7149704_right_encoded = true := by
  decide +kernel
theorem small_7149704_right_covered : CoveredBy scale carrier boxes small_7149704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149704_right_root small_7149704_right_fuel small_7149704_right_count small_7149704_right_encoded small_7149704_right_checked

theorem cover_7149704 : CoveredBy scale carrier boxes root_7149704 := by
  apply coveredBy_split_literal root_7149704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7149709 small_7149704_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7149709
  · exact small_7149704_right_covered
#print axioms cover_7149704

def root_7149703 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149703_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149703_right_fuel : Nat := 20
def small_7149703_right_count : Nat := 217
def small_7149703_right_encoded : String := "135D450900000004045489F71386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030C9A86FC0000000A0F875107000000030000000A138670FA0CFD9C070F34D0FC0780010200000009128A7D03028000FE000000050000000800000001000000030F350CFC000000030C9A86FC0F878D0707800102128A4103000000010000000A128A7D03028000FE13D7ED09067ECE770000000800000008000000040000000A00000001000000030F8751070000000307800102128A4103000000010000000A128A7D03028000FE13D7ED09067ECE770000000A12EA590000000000022A457B0000000A00000008000000040000000A0000000100000002000000001386710000000000045489FB1386ACFA000000020CFD9C070F34D0FC078001020000000900000007000000030F350CFC000000030C9A86FC0F878D0707800102128A41030000000100000009128A7D03028000FE13D7ED09022A457713E20100067ECE7B000000050000000800000000000000070000000413D7B109000000040000000700000001000000030F8751070000000307800102128A410300000001028000FE13D7ED09022A45770000000A13E1C50000000000067ECE7B0000000A000000090000000400000009128A7D03028000FE13D7ED09022A457713E20100067ECE7B0000000A12EA58FA0B4D43FC0000000A10801107000000030000000A000000020000000013E1C50000000000067ECE7B0000000712EA58FA00000007000000020000000413D7B10900000004022A45770000000A13E1C50000000000067ECE7B000000060000000700000001138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D070780010200000009128A7D03028000FE000000080000000800000001000000030F8751070000000307800102128A410300000001028000FE13D7ED09022A457713E20100022A457B0000000A13E1C4FA0B4D43FC000000081080110700000003000000080000000200000000000000090000000400000009128A7D03028000FE13D7ED09022A457713E20100022A457B13E200FA000000020B4D43FC00000008108011070000000300000008000000080000000013E1C50000000000022A457B00000007000000080000000413D7B10900000004022A457700000008000000080000000100000002"
theorem small_7149703_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149703_right_root small_7149703_right_fuel small_7149703_right_count small_7149703_right_encoded = true := by
  decide +kernel
theorem small_7149703_right_covered : CoveredBy scale carrier boxes small_7149703_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149703_right_root small_7149703_right_fuel small_7149703_right_count small_7149703_right_encoded small_7149703_right_checked

theorem cover_7149703 : CoveredBy scale carrier boxes root_7149703 := by
  apply coveredBy_split_literal root_7149703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7149704 small_7149703_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7149704
  · exact small_7149703_right_covered
#print axioms cover_7149703

def root_7149698 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149698_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149698_right_fuel : Nat := 1
def small_7149698_right_count : Nat := 1
def small_7149698_right_encoded : String := "00000001"
theorem small_7149698_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149698_right_root small_7149698_right_fuel small_7149698_right_count small_7149698_right_encoded = true := by
  decide +kernel
theorem small_7149698_right_covered : CoveredBy scale carrier boxes small_7149698_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149698_right_root small_7149698_right_fuel small_7149698_right_count small_7149698_right_encoded small_7149698_right_checked

theorem cover_7149698 : CoveredBy scale carrier boxes root_7149698 := by
  apply coveredBy_split_literal root_7149698 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7149703 small_7149698_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7149703
  · exact small_7149698_right_covered
#print axioms cover_7149698

def root_7147506 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7147506 : CoveredBy scale carrier boxes root_7147506 := by
  apply coveredBy_split_literal root_7147506 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2693.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7149698 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2693.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7149698
#print axioms cover_7147506

def root_7147500 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147500_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147500_left_fuel : Nat := 1
def small_7147500_left_count : Nat := 1
def small_7147500_left_encoded : String := "00000003"
theorem small_7147500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147500_left_root small_7147500_left_fuel small_7147500_left_count small_7147500_left_encoded = true := by
  decide +kernel
theorem small_7147500_left_covered : CoveredBy scale carrier boxes small_7147500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147500_left_root small_7147500_left_fuel small_7147500_left_count small_7147500_left_encoded small_7147500_left_checked

theorem cover_7147500 : CoveredBy scale carrier boxes root_7147500 := by
  apply coveredBy_split_literal root_7147500 small_7147500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147506 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7147500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147506
#print axioms cover_7147500

def root_7147460 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147460_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147460_left_fuel : Nat := 7
def small_7147460_left_count : Nat := 19
def small_7147460_left_encoded : String := "120700FC05000102135D450300000001050000FE135D8109045489F700000005000000090000000400000009135D8103050000FE00000005135D450900000004000000090000000100000003"
theorem small_7147460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147460_left_root small_7147460_left_fuel small_7147460_left_count small_7147460_left_encoded = true := by
  decide +kernel
theorem small_7147460_left_covered : CoveredBy scale carrier boxes small_7147460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147460_left_root small_7147460_left_fuel small_7147460_left_count small_7147460_left_encoded small_7147460_left_checked

theorem cover_7147460 : CoveredBy scale carrier boxes root_7147460 := by
  apply coveredBy_split_literal root_7147460 small_7147460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147500 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7147460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147500
#print axioms cover_7147460

def root_7147455 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147455_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147455_right_fuel : Nat := 1
def small_7147455_right_count : Nat := 1
def small_7147455_right_encoded : String := "00000002"
theorem small_7147455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147455_right_root small_7147455_right_fuel small_7147455_right_count small_7147455_right_encoded = true := by
  decide +kernel
theorem small_7147455_right_covered : CoveredBy scale carrier boxes small_7147455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147455_right_root small_7147455_right_fuel small_7147455_right_count small_7147455_right_encoded small_7147455_right_checked

theorem cover_7147455 : CoveredBy scale carrier boxes root_7147455 := by
  apply coveredBy_split_literal root_7147455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147460 small_7147455_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147460
  · exact small_7147455_right_covered
#print axioms cover_7147455

def root_7147067 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147067_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147067_left_fuel : Nat := 26
def small_7147067_left_count : Nat := 179
def small_7147067_left_encoded : String := "12073CFA0000000208A91307120700FC000000050000000312073CFC0000000305000102135D450300000001050000FE135D8109045489F70000000513867100000000000CFD9BFB000000050F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F87510700000003028001020000000A13D7ED03078000FE128A7D0900000005000000040000000A000000010000000200000004135D450900000004045489F70000000A13867100000000000CFD9BFB0000000A0F34D0FA0CFD9C07000000050000000A00000002135D8103050000FE135D8109045489F71386AD000CFD9BFB000000050F34D0FA00000005000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F8750FB00000005000000020F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F8751070000000307800102128A410300000001078000FE128A7D090000000500000004128A4109000000040000000A128A7D03078000FE128A7D090000000500000004128A410900000004022A45770000000513E1C500000000000AD3577B0000000510D100FA0B4D43FC10804D07000000050000000310801107000000030000000600000002000000010000000200000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9C07000000050000000A000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0000000A0000000A0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D07078001020000000A128A7D03028000FE13D7ED09022A45770000000500000007000000040000000A00000001000000030F875107000000030000000A0000000200000001"
theorem small_7147067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147067_left_root small_7147067_left_fuel small_7147067_left_count small_7147067_left_encoded = true := by
  decide +kernel
theorem small_7147067_left_covered : CoveredBy scale carrier boxes small_7147067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147067_left_root small_7147067_left_fuel small_7147067_left_count small_7147067_left_encoded small_7147067_left_checked

theorem cover_7147067 : CoveredBy scale carrier boxes root_7147067 := by
  apply coveredBy_split_literal root_7147067 small_7147067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147455 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7147067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147455
#print axioms cover_7147067

def root_7147061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147061_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147061_left_fuel : Nat := 1
def small_7147061_left_count : Nat := 1
def small_7147061_left_encoded : String := "00000000"
theorem small_7147061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147061_left_root small_7147061_left_fuel small_7147061_left_count small_7147061_left_encoded = true := by
  decide +kernel
theorem small_7147061_left_covered : CoveredBy scale carrier boxes small_7147061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147061_left_root small_7147061_left_fuel small_7147061_left_count small_7147061_left_encoded small_7147061_left_checked

theorem cover_7147061 : CoveredBy scale carrier boxes root_7147061 := by
  apply coveredBy_split_literal root_7147061 small_7147061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147067 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7147061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147067
#print axioms cover_7147061

def root_7146917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146917_left_fuel : Nat := 20
def small_7146917_left_count : Nat := 71
def small_7146917_left_encoded : String := "12073D0008A912FB00000005120700FA08A913070000000512073CFC0000000305000102135D450300000001050000FE135D81090CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050F350CFC000000030C9A86FC0000000A0000000500000002000000040000000A135D8103050000FE135D81090CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030780010200000005128A7D0300000005000000010000000200000004135D4509000000040CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050000000A00000002000000010000000200000000"
theorem small_7146917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7146917_left_root small_7146917_left_fuel small_7146917_left_count small_7146917_left_encoded = true := by
  decide +kernel
theorem small_7146917_left_covered : CoveredBy scale carrier boxes small_7146917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7146917_left_root small_7146917_left_fuel small_7146917_left_count small_7146917_left_encoded small_7146917_left_checked

theorem cover_7146917 : CoveredBy scale carrier boxes root_7146917 := by
  apply coveredBy_split_literal root_7146917 small_7146917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7147061 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7146917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7147061
#print axioms cover_7146917

def root_7146911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146911_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146911_left_fuel : Nat := 1
def small_7146911_left_count : Nat := 1
def small_7146911_left_encoded : String := "00000004"
theorem small_7146911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7146911_left_root small_7146911_left_fuel small_7146911_left_count small_7146911_left_encoded = true := by
  decide +kernel
theorem small_7146911_left_covered : CoveredBy scale carrier boxes small_7146911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7146911_left_root small_7146911_left_fuel small_7146911_left_count small_7146911_left_encoded small_7146911_left_checked

theorem cover_7146911 : CoveredBy scale carrier boxes root_7146911 := by
  apply coveredBy_split_literal root_7146911 small_7146911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7146917 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7146911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7146917
#print axioms cover_7146911

def root_7144405 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7144405 : CoveredBy scale carrier boxes root_7144405 := by
  apply coveredBy_split_literal root_7144405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2692.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7146911 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2692.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7146911
#print axioms cover_7144405

def root_7144400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144400_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144400_right_fuel : Nat := 1
def small_7144400_right_count : Nat := 1
def small_7144400_right_encoded : String := "00000003"
theorem small_7144400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7144400_right_root small_7144400_right_fuel small_7144400_right_count small_7144400_right_encoded = true := by
  decide +kernel
theorem small_7144400_right_covered : CoveredBy scale carrier boxes small_7144400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7144400_right_root small_7144400_right_fuel small_7144400_right_count small_7144400_right_encoded small_7144400_right_checked

theorem cover_7144400 : CoveredBy scale carrier boxes root_7144400 := by
  apply coveredBy_split_literal root_7144400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7144405 small_7144400_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7144405
  · exact small_7144400_right_covered
#print axioms cover_7144400

def root_7161475 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161475_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161475_right_fuel : Nat := 19
def small_7161475_right_count : Nat := 79
def small_7161475_right_encoded : String := "128A410900000004022A457713E20100067ECE7B0000000A12EA58FA064001020000000A12FFAD0308C000FC0000000A11FBE907000000030000000A00000001000000020000000013E1C50000000000067ECE7B12EA94FA0000000206400102000000060000000612EA58FA0640010212FF71030000000108C000FC11FC2507064000FE12FFAD09011523370000000A13F85900000000000569AC3B000000060000000500000004000000060000000311FBE907000000030000000612FFAD0308C000FC11FC2507064000FE12FFAD090115233713F895000569AC3B000000061340D4FA06E001020000000A12C82103096000FC0000000A0000000600000001000000020000000013F85900000000000569AC3B000000061340D4FA0000000600000002000000040000000600000003000000060000000100000002"
theorem small_7161475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161475_right_root small_7161475_right_fuel small_7161475_right_count small_7161475_right_encoded = true := by
  decide +kernel
theorem small_7161475_right_covered : CoveredBy scale carrier boxes small_7161475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161475_right_root small_7161475_right_fuel small_7161475_right_count small_7161475_right_encoded small_7161475_right_checked

theorem cover_7161475 : CoveredBy scale carrier boxes root_7161475 := by
  apply coveredBy_split_literal root_7161475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2698.root small_7161475_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2698.covered
  · exact small_7161475_right_covered
#print axioms cover_7161475

def root_7161470 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161470_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161470_right_fuel : Nat := 1
def small_7161470_right_count : Nat := 1
def small_7161470_right_encoded : String := "00000003"
theorem small_7161470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161470_right_root small_7161470_right_fuel small_7161470_right_count small_7161470_right_encoded = true := by
  decide +kernel
theorem small_7161470_right_covered : CoveredBy scale carrier boxes small_7161470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161470_right_root small_7161470_right_fuel small_7161470_right_count small_7161470_right_encoded small_7161470_right_checked

theorem cover_7161470 : CoveredBy scale carrier boxes root_7161470 := by
  apply coveredBy_split_literal root_7161470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161475 small_7161470_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161475
  · exact small_7161470_right_covered
#print axioms cover_7161470

def root_7161469 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161469_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161469_right_fuel : Nat := 17
def small_7161469_right_count : Nat := 115
def small_7161469_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E20100067ECE7B12EA94FA000000020640010212FF710300000001064000FC0000000A0000000612FFAD03064000FC12FFAD0708C000FE000000090000000600000003000000060000000112EA58FA0640010212FF710300000001064000FC12FFAD0708C000FE0000000700000007000000030000000712FFAD03064000FC12FFAD0708C000FE0000000911FBE90900000004033F67B70000000913BBF500000000000569AC3B00000006000000090000000312FF7107000000030000000900000001000000020000000013E1C50000000000067ECE7B12EA94FA0000000206400102000000060000000612EA58FA0640010212FF710300000001064000FC12FFAD0708C000FE11FC25090115233713F895000569AC3B00000006000000070000000013F85900000000000569AC3B000000060000000500000004000000060000000312FF7107000000030000000612FFAD03064000FC12FFAD0708C000FE11FC25090000000900000004000000060000000300000006000000010000000200000004128A410900000004022A457713E20100067ECE7B0000000612EA58FA064001020000000600000006000000020000000000000006"
theorem small_7161469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161469_right_root small_7161469_right_fuel small_7161469_right_count small_7161469_right_encoded = true := by
  decide +kernel
theorem small_7161469_right_covered : CoveredBy scale carrier boxes small_7161469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161469_right_root small_7161469_right_fuel small_7161469_right_count small_7161469_right_encoded small_7161469_right_checked

theorem cover_7161469 : CoveredBy scale carrier boxes root_7161469 := by
  apply coveredBy_split_literal root_7161469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161470 small_7161469_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161470
  · exact small_7161469_right_covered
#print axioms cover_7161469

def root_7161463 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161463_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161463_left_fuel : Nat := 1
def small_7161463_left_count : Nat := 1
def small_7161463_left_encoded : String := "00000001"
theorem small_7161463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161463_left_root small_7161463_left_fuel small_7161463_left_count small_7161463_left_encoded = true := by
  decide +kernel
theorem small_7161463_left_covered : CoveredBy scale carrier boxes small_7161463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161463_left_root small_7161463_left_fuel small_7161463_left_count small_7161463_left_encoded small_7161463_left_checked

theorem cover_7161463 : CoveredBy scale carrier boxes root_7161463 := by
  apply coveredBy_split_literal root_7161463 small_7161463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161469 coord1 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_7161463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161469
#print axioms cover_7161463

def root_7161462 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161462_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161462_right_fuel : Nat := 25
def small_7161462_right_count : Nat := 361
def small_7161462_right_encoded : String := "128A7D03078000FC128A7D07078000FE128A7D09022A457713E20100067ECE7B12EA94FA0000000208C0010211FBE9030000000108C000FC11FC2507000000050000000311FBE90700000003000000090000000912EA58FA08C0010211FBE9030000000108C000FC11FC250708C000FE0000000911FBE90900000004033F67B70000000913BBF500000000000569AC3B000000091340D4FA00000009000000020000000311FBE907000000030000000900000009000000020000000013E1C50000000000067ECE7B12EA94FA0000000208C0010211FBE9030000000108C000FC11FC250708C000FE11FC2509000000090000000411FBE909000000040115233713F895000793F0BB00000005128220FA000000060000000200000000000000060000000311FBE9070000000308C000FE000000090000000611FC2503000000090000000112EA58FA08C0010211FBE9030000000108C000FC11FC250708C000FE11FC2509011523370000000913F8590000000000000000090000000411FBE909000000040115233713F895000569AC3B134110FA000000020820010212465D0300000001096000FC11AABD07082000FE00000009000000060000000300000006000000091340D4FA0820010212465D0300000001096000FC11AABD07000000080000000311AA8107000000030000000900000009000000020000000013F85900000000000569AC3B134110FA000000020820010200000006000000061340D4FA0820010212465D0300000001096000FC11AABD07000000070000000311AA81070000000300000006124699030000000700000001000000020000000311FBE9070000000308C000FE0000000911FBE909000000040115233713F895000569AC3B0000000600000009000000000000000611FC250308C000FC11FC250708C000FE0000000911FBE909000000040115233700000009000000070000000300000009000000010000000200000004128A410900000004022A457713E20100067ECE7B12EA94FA0000000208C0010211FBE903000000010000000A11FC250308C000FC11FC2507064000FE12FFAD09033F67B70000000500000006000000040000000600000003000000060000000112EA58FA08C0010211FBE9030000000108C000FC11FC2507064000FE12FFAD09033F67B70000000A13BBF500000000000569AC3B0000000A1340D4FA0820010212465D03000000010000000A12469903000000080000000100000002000000040000000A0000000311FBE90700000003064000FE12FFAD09033F67B70000000A00000006000000040000000611FC250308C000FC11FC2507064000FE12FFAD09033F67B70000000913BBF500000000000569AC3B00000009000000080000000412FF710900000004033F67B70000000A000000060000000311FBE90700000003064000FE000000090000000600000001000000020000000013E1C50000000000067ECE7B12EA94FA000000020000000612EA58FA08C0010211FBE9030000000108C000FC11FC2507064000FE12FFAD090115233713F895000569AC3B000000061340D4FA0820010212465D0300000001096000FC00000008000000061246990300000006000000010000000200000000000000060000000400000006000000030000000611FC250308C000FC11FC2507064000FE12FFAD090115233713F895000569AC3B0000000600000007000000000000000600000004000000060000000300000006000000010000000200000003128A410700000003078000FE128A7D09022A457713E20100067ECE7B00000009000000090000000013E1C50000000000067ECE7B0000000912EA58FA08C0010211FBE90300000001064000FC12FFAD0708C000FE00000009000000060000000300000006000000090000000200000004128A410900000004022A457713E20100067ECE7B0000000612EA58FA08C00102000000060000000600000002000000000000000600000001"
theorem small_7161462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161462_right_root small_7161462_right_fuel small_7161462_right_count small_7161462_right_encoded = true := by
  decide +kernel
theorem small_7161462_right_covered : CoveredBy scale carrier boxes small_7161462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161462_right_root small_7161462_right_fuel small_7161462_right_count small_7161462_right_encoded small_7161462_right_checked

theorem cover_7161462 : CoveredBy scale carrier boxes root_7161462 := by
  apply coveredBy_split_literal root_7161462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161463 small_7161462_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161463
  · exact small_7161462_right_covered
#print axioms cover_7161462

def root_7161456 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161456_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161456_left_fuel : Nat := 1
def small_7161456_left_count : Nat := 1
def small_7161456_left_encoded : String := "00000002"
theorem small_7161456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161456_left_root small_7161456_left_fuel small_7161456_left_count small_7161456_left_encoded = true := by
  decide +kernel
theorem small_7161456_left_covered : CoveredBy scale carrier boxes small_7161456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161456_left_root small_7161456_left_fuel small_7161456_left_count small_7161456_left_encoded small_7161456_left_checked

theorem cover_7161456 : CoveredBy scale carrier boxes root_7161456 := by
  apply coveredBy_split_literal root_7161456 small_7161456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161462 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7161456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161462
#print axioms cover_7161456

def root_7165612 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7165612_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7165612_right_fuel : Nat := 25
def small_7165612_right_count : Nat := 335
def small_7165612_right_encoded : String := "128A7D03078000FC128A7D07078000FE128A7D09022A457713E20100022A457B13E200FA0000000208C0010211FBE9030000000108C000FC11FC250708C000FE0000000911FBE90900000004033F67B713BC31000000000800000000000000080000000311FBE90700000003000000090000000913E1C4FA08C0010211FBE9030000000108C000FC0000000811FBE9070000000308C000FE000000090000000811FC25030000000900000001000000020000000013E1C50000000000022A457B13E200FA0000000208C0010211FBE9030000000108C000FC11FC250708C000FE11FC2509011523370000000913F8590000000000033F67BB00000009000000080000000411FBE909000000040115233713F89500033F67BB13BC30FA0000000200000008000000080000000013F8590000000000033F67BB13BC30FA00000002082001020000000800000008000000050000000311FBE9070000000308C000FE0000000911FBE909000000040115233713F89500033F67BB0000000900000005000000000000000511FC250308C000FC11FC250708C000FE00000009000000080000000311FBE90700000003000000090000000113E1C4FA08C0010211FBE9030000000108C000FC000000080000000511FC25030000000A000000010000000200000004128A410900000004022A457713E20100022A457B13E200FA0000000208C0010211FBE9030000000108C000FC11FC2507064000FE12FFAD09033F67B700000008000000080000000412FF710900000004033F67B700000008000000080000000311FBE90700000003064000FE12FFAD09033F67B713BC3100033F67BB0000000913BBF4FA082001020000000800000008000000020000000013BBF50000000000033F67BB13BC30FA000000020820010212465D0300000001082000FC1246990706E000FE0000000800000006000000030000000600000009000000050000000412FF710900000004033F67B713BC3100033F67BB00000006000000080000000013BBF50000000000033F67BB000000060000000511FC250308C000FC11FC2507064000FE00000008000000080000000311FBE90700000003064000FE12FFAD09000000090000000412FF710900000004033F67B700000008000000080000000113E1C4FA08C0010211FBE9030000000108C000FC0000000811FBE907000000030000000511FC25030000000800000001000000020000000013E1C50000000000022A457B13E200FA0000000208C0010211FBE9030000000108C000FC11FC2507064000FE12FFAD090115233700000008000000050000000412FF710900000004000000050000000311FBE907000000030000000511FC250308C000FC11FC2507000000080000000311FBE90700000003064000FE12FFAD090115233700000008000000050000000400000005000000010000000500000003128A410700000003078000FE128A7D09022A457713E20100022A457B0000000913E1C4FA00000009000000020000000013E1C50000000000022A457B13E200FA0000000208C0010211FBE90300000001064000FC12FFAD0708C000FE0000000911FBE90900000004000000050000000312FF71070000000300000005000000090000000500000004128A410900000004022A457713E20100022A457B13E200FA0000000208C0010211FBE90300000001064000FC12FFAD07064000FE12FFAD09033F67B700000009000000050000000412FF710900000004000000060000000312FF7107000000030000000611FC2503064000FC12FFAD07064000FE000000090000000600000003000000060000000100000005000000000000000500000001"
theorem small_7165612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7165612_right_root small_7165612_right_fuel small_7165612_right_count small_7165612_right_encoded = true := by
  decide +kernel
theorem small_7165612_right_covered : CoveredBy scale carrier boxes small_7165612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7165612_right_root small_7165612_right_fuel small_7165612_right_count small_7165612_right_encoded small_7165612_right_checked

theorem cover_7165612 : CoveredBy scale carrier boxes root_7165612 := by
  apply coveredBy_split_literal root_7165612 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2699.root small_7165612_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2699.covered
  · exact small_7165612_right_covered
#print axioms cover_7165612

def root_7165607 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7165607_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7165607_right_fuel : Nat := 1
def small_7165607_right_count : Nat := 1
def small_7165607_right_encoded : String := "00000002"
theorem small_7165607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7165607_right_root small_7165607_right_fuel small_7165607_right_count small_7165607_right_encoded = true := by
  decide +kernel
theorem small_7165607_right_covered : CoveredBy scale carrier boxes small_7165607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7165607_right_root small_7165607_right_fuel small_7165607_right_count small_7165607_right_encoded small_7165607_right_checked

theorem cover_7165607 : CoveredBy scale carrier boxes root_7165607 := by
  apply coveredBy_split_literal root_7165607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7165612 small_7165607_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7165612
  · exact small_7165607_right_covered
#print axioms cover_7165607

def root_7161455 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7161455 : CoveredBy scale carrier boxes root_7161455 := by
  apply coveredBy_split_literal root_7161455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7165607 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161456
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7165607
#print axioms cover_7161455

def root_7161449 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161449_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161449_left_fuel : Nat := 1
def small_7161449_left_count : Nat := 1
def small_7161449_left_encoded : String := "00000000"
theorem small_7161449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161449_left_root small_7161449_left_fuel small_7161449_left_count small_7161449_left_encoded = true := by
  decide +kernel
theorem small_7161449_left_covered : CoveredBy scale carrier boxes small_7161449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161449_left_root small_7161449_left_fuel small_7161449_left_count small_7161449_left_encoded small_7161449_left_checked

theorem cover_7161449 : CoveredBy scale carrier boxes root_7161449 := by
  apply coveredBy_split_literal root_7161449 small_7161449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.root_7161455 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7161449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171.cover_7161455
#print axioms cover_7161449

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0171
