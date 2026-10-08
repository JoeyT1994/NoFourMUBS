import TaoBundleAssembly0063
import TaoBundleAssembly0064
import TaoBundleAssembly0065
import TaoBundleAssembly0066
import TaoBundleChunkBatch0263
import TaoBundleChunkBatch0269
import TaoBundleChunkBatch0270
import TaoBundleChunkBatch0271
import TaoBundleChunkBatch0272
import TaoBundleChunkBatch0273
import TaoBundleChunkBatch0274
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067
def root_2800790 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800790_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800790_left_fuel : Nat := 29
def small_2800790_left_count : Nat := 385
def small_2800790_left_encoded : String := "1151E9090000000408A912F912073CF80000000108A91305120700FA050000F6135D810105000106135D45070000000305000108135D4509000000040CFD9BF90000000A0F34D0F80000000A00000001135D81090CFD9BF90F350CF8000000010000000A0F34D0F804548A05138670FA078000F6128A7D01028001060000000713D7ED07078001080000000A000000070000000300000000128A41010000000000000007000000021386ACFA000000020000000A0000000100000004135D810705000108135D4509000000040000000A135D81090CFD9BF90F350CF8000000010000000A0F34D0F804548A05138670FA078000F6128A7D0107800106128A410700000003078001080000000A128A7D090AD3577900000009000000080000000400000009000000000000000A000000020000000A00000001000000040000000300000000135D450100000000050001060000000A0000000A0000000212073CFA00000002050000F6135D8101050001060000000A0000000A000000000000000A120700F808A91305120700FA050000F6135D810105000106135D45070000000305000108135D450900000004045489F91386ACF80000000104548A05138670FA00000005000000020000000500000005135D8109045489F91386ACF80000000104548A05138670FA078000F6128A7D010280010613D7B1070000000307800108128A41090000000400000005128A7D09067ECE7900000007000000050000000413D7ED0707800108128A410900000004067ECE7912EA94F800000001022A458513E1C4FA08C000F611FC250100000008000000000000000A000000020000000500000005128A7D09067ECE7912EA94F8000000010000000800000008000000040000000300000000128A4101000000000280010613D7B1070000000307800108128A410900000004000000050000000713D7ED0707800108128A410900000004067ECE790000000A00000005128A7D09067ECE790000000700000005000000040000000300000002000000050000000500000004135D810705000108135D450900000004045489F91386ACF80000000104548A05138670FA078000F6128A7D0100000009000000000000000A000000020000000500000005135D8109045489F91386ACF80000000104548A05138670FA078000F6128A7D0107800106128A41070000000307800108128A410900000004067ECE790000000912EA58F80000000500000001128A7D09067ECE7912EA94F800000001000000080000000800000004128A7D070780010800000009128A7D09067ECE790000000900000008000000040000000300000000128A41010000000007800106128A410700000003078001080000000A128A7D09067ECE790000000A12EA58F8022A458513E1C4FA064000F612FFAD010640010600000008000000080000000012FF7101000000000000000A00000002000000050000000100000004128A7D07078001080000000A128A7D09067ECE790000000A12EA58F8022A45850000000A00000008000000010000000400000003000000021386ACFA00000002078000F6128A7D0107800106128A410700000003000000050000000900000000128A4101000000000000000A138670F804548A05138670FA078000F6128A7D0107800106128A41070000000300000005128A7D0707800108128A41090000000400000005128A7D09022A457913E200F8000000010000000800000005000000040000000300000000128A41010000000000000005000000020000000500000001000000040000000300000000135D45010000000005000106135D45070000000305000108135D45090000000400000005135D8109045489F91386ACF80000000104548A05138670FA028000F613D7ED01028001060000000713D7ED07078001080000000A00000007000000030000000013D7B101000000000000000700000002000000050000000500000004135D810705000108135D4509000000040000000A135D8109045489F91386ACF80000000104548A05138670FA028000F613D7ED01078001060000000A0000000A000000000000000A0000000200000005000000050000000400000003000000020000000500000001"
theorem small_2800790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2800790_left_root small_2800790_left_fuel small_2800790_left_count small_2800790_left_encoded = true := by
  decide +kernel
theorem small_2800790_left_covered : CoveredBy scale carrier boxes small_2800790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2800790_left_root small_2800790_left_fuel small_2800790_left_count small_2800790_left_encoded small_2800790_left_checked

theorem cover_2800790 : CoveredBy scale carrier boxes root_2800790 := by
  apply coveredBy_split_literal root_2800790 small_2800790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.root_2801608 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2800790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.cover_2801608
#print axioms cover_2800790

def root_2800784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800784_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800784_left_fuel : Nat := 1
def small_2800784_left_count : Nat := 1
def small_2800784_left_encoded : String := "00000003"
theorem small_2800784_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2800784_left_root small_2800784_left_fuel small_2800784_left_count small_2800784_left_encoded = true := by
  decide +kernel
theorem small_2800784_left_covered : CoveredBy scale carrier boxes small_2800784_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2800784_left_root small_2800784_left_fuel small_2800784_left_count small_2800784_left_encoded small_2800784_left_checked

theorem cover_2800784 : CoveredBy scale carrier boxes root_2800784 := by
  apply coveredBy_split_literal root_2800784 small_2800784_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800790 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2800784_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800790
#print axioms cover_2800784

def root_2800783 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2800783 : CoveredBy scale carrier boxes root_2800783 := by
  apply coveredBy_split_literal root_2800783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800784 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1076.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800784
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1076.covered
#print axioms cover_2800783

def root_2800778 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800778_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800778_right_fuel : Nat := 1
def small_2800778_right_count : Nat := 1
def small_2800778_right_encoded : String := "00000002"
theorem small_2800778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2800778_right_root small_2800778_right_fuel small_2800778_right_count small_2800778_right_encoded = true := by
  decide +kernel
theorem small_2800778_right_covered : CoveredBy scale carrier boxes small_2800778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2800778_right_root small_2800778_right_fuel small_2800778_right_count small_2800778_right_encoded small_2800778_right_checked

theorem cover_2800778 : CoveredBy scale carrier boxes root_2800778 := by
  apply coveredBy_split_literal root_2800778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800783 small_2800778_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800783
  · exact small_2800778_right_covered
#print axioms cover_2800778

def root_2800777 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2800777 : CoveredBy scale carrier boxes root_2800777 := by
  apply coveredBy_split_literal root_2800777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1077.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800778
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1077.covered
#print axioms cover_2800777

def root_2800771 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800771_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800771_left_fuel : Nat := 1
def small_2800771_left_count : Nat := 1
def small_2800771_left_encoded : String := "00000001"
theorem small_2800771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2800771_left_root small_2800771_left_fuel small_2800771_left_count small_2800771_left_encoded = true := by
  decide +kernel
theorem small_2800771_left_covered : CoveredBy scale carrier boxes small_2800771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2800771_left_root small_2800771_left_fuel small_2800771_left_count small_2800771_left_encoded small_2800771_left_checked

theorem cover_2800771 : CoveredBy scale carrier boxes root_2800771 := by
  apply coveredBy_split_literal root_2800771 small_2800771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800777 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2800771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800777
#print axioms cover_2800771

def root_2800770 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2800770 : CoveredBy scale carrier boxes root_2800770 := by
  apply coveredBy_split_literal root_2800770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800771 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1078.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800771
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1078.covered
#print axioms cover_2800770

def root_2800764 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800764_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2800764_left_fuel : Nat := 1
def small_2800764_left_count : Nat := 1
def small_2800764_left_encoded : String := "00000000"
theorem small_2800764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2800764_left_root small_2800764_left_fuel small_2800764_left_count small_2800764_left_encoded = true := by
  decide +kernel
theorem small_2800764_left_covered : CoveredBy scale carrier boxes small_2800764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2800764_left_root small_2800764_left_fuel small_2800764_left_count small_2800764_left_encoded small_2800764_left_checked

theorem cover_2800764 : CoveredBy scale carrier boxes root_2800764 := by
  apply coveredBy_split_literal root_2800764 small_2800764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800770 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2800764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800770
#print axioms cover_2800764

def root_2777802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2777802 : CoveredBy scale carrier boxes root_2777802 := by
  apply coveredBy_split_literal root_2777802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.root_2777803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2800764 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.cover_2777803
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2800764
#print axioms cover_2777802

def root_2743192 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2743192 : CoveredBy scale carrier boxes root_2743192 := by
  apply coveredBy_split_literal root_2743192 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.root_2743193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2777802 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0066.cover_2743193
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2777802
#print axioms cover_2743192

def root_2740150 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2740150 : CoveredBy scale carrier boxes root_2740150 := by
  apply coveredBy_split_literal root_2740150 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1052.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2743192 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1052.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2743192
#print axioms cover_2740150

def root_2725864 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2725864 : CoveredBy scale carrier boxes root_2725864 := by
  apply coveredBy_split_literal root_2725864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2725865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2740150 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2725865
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2740150
#print axioms cover_2725864

def root_2662554 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2662554 : CoveredBy scale carrier boxes root_2662554 := by
  apply coveredBy_split_literal root_2662554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2662555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2725864 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2662555
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2725864
#print axioms cover_2662554

def root_2513324 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2513324 : CoveredBy scale carrier boxes root_2513324 := by
  apply coveredBy_split_literal root_2513324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.root_2513325 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2662554 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.cover_2513325
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2662554
#print axioms cover_2513324

def root_2822967 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2822967 : CoveredBy scale carrier boxes root_2822967 := by
  apply coveredBy_split_literal root_2822967 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1080.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1081.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1080.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1081.covered
#print axioms cover_2822967

def root_2822961 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822961_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822961_left_fuel : Nat := 1
def small_2822961_left_count : Nat := 1
def small_2822961_left_encoded : String := "00000002"
theorem small_2822961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2822961_left_root small_2822961_left_fuel small_2822961_left_count small_2822961_left_encoded = true := by
  decide +kernel
theorem small_2822961_left_covered : CoveredBy scale carrier boxes small_2822961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2822961_left_root small_2822961_left_fuel small_2822961_left_count small_2822961_left_encoded small_2822961_left_checked

theorem cover_2822961 : CoveredBy scale carrier boxes root_2822961 := by
  apply coveredBy_split_literal root_2822961 small_2822961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822967 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_2822961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822967
#print axioms cover_2822961

def root_2822501 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822501_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822501_left_fuel : Nat := 21
def small_2822501_left_count : Nat := 219
def small_2822501_left_encoded : String := "13D7B0FB067ECE8112EA58F6022A457F13E201080B4D43F810804CF9000000010B4D43FC10804CFD0000000300000009108010FD014001040000000913F614FB000000020569AC411340D4F6033F67BF0000000513BBF508000000040000000900000000134110F600000000033F67BF0000000913BBF508000000040BF3E578000000060000000900000003000000090000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD00000003014001040000000913F614FB000000020569AC410000000A134110F6000000000115233F0000000900000005108010FD0140010413F5D8FB0569AC411340D4F60115233F000000090000000800000000134110F6000000000115233F00000006000000080000000213F614FB000000020569AC411340D4F60115233F13F895080BF3E578100928F9000000010000000A1008ECF900000009000000010000000413F85908000000040BF3E5780000000A1008ECF90000000A0000000100000000134110F6000000000115233F13F895080BF3E578100928F9000000010AA6A27C10EDACFD0000000301E00104000000060000000A000000061008ECF90AA6A27C0000000900000006000000010000000413F85908000000040BF3E578100928F9000000010AA6A27C0000000A000000061008ECF90AA6A27C10EDACFD0000000301E00104000000060000000A000000060000000100000003108010F90B4D43FC10804CFD0000000300000009108010FD014001040000000913F614FB000000020569AC4100000009134110F6000000000000000900000003000000010000000012EA94F600000000022A457F13E201080B4D43F810804CF9000000010B4D43FC10804CFD0000000300000009108010FD014001040000000613F614FB000000020793F0C1128220F600000006000000000000000600000003000000090000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000300000005108010FD014001040000000613F614FB000000020793F0C1128220F60115233F0000000600000005000000000000000500000003108010F90B4D43FC10804CFD0000000300000009108010FD014001040000000613F614FB000000020793F0C1128220F60115233F0000000913F85908000000040AA6A27800000006000000070000000000000006000000030000000100000002"
theorem small_2822501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2822501_left_root small_2822501_left_fuel small_2822501_left_count small_2822501_left_encoded = true := by
  decide +kernel
theorem small_2822501_left_covered : CoveredBy scale carrier boxes small_2822501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2822501_left_root small_2822501_left_fuel small_2822501_left_count small_2822501_left_encoded small_2822501_left_checked

theorem cover_2822501 : CoveredBy scale carrier boxes root_2822501 := by
  apply coveredBy_split_literal root_2822501 small_2822501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822961 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_2822501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822961
#print axioms cover_2822501

def root_2822496 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822496_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822496_right_fuel : Nat := 1
def small_2822496_right_count : Nat := 1
def small_2822496_right_encoded : String := "00000003"
theorem small_2822496_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2822496_right_root small_2822496_right_fuel small_2822496_right_count small_2822496_right_encoded = true := by
  decide +kernel
theorem small_2822496_right_covered : CoveredBy scale carrier boxes small_2822496_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2822496_right_root small_2822496_right_fuel small_2822496_right_count small_2822496_right_encoded small_2822496_right_checked

theorem cover_2822496 : CoveredBy scale carrier boxes root_2822496 := by
  apply coveredBy_split_literal root_2822496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822501 small_2822496_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822501
  · exact small_2822496_right_covered
#print axioms cover_2822496

def root_2822250 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822250_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822250_left_fuel : Nat := 17
def small_2822250_left_count : Nat := 117
def small_2822250_left_encoded : String := "0F878CFD000000030280010413D7B0FB067ECE8112EA58F6022A457F0000000913E1C508000000040B4D43F810804CF90000000100000009000000090000000012EA94F600000000022A457F0000000913E1C508000000040B4D43F810804CF90000000100000005000000050000000213D7ECFB00000002067ECE8112EA58F6022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000080E5FD8FD03C001040000000913A54CFB000000020569AC41000000070000000800000003000000090000000413E1C508000000040B4D43F810804CF9000000010DE7C9FC0000000A0E5FD8FD0000000A00000003108010F90DE7C9FC0E6014FD00000003000000090E5FD8FD03C001040000000913A54CFB000000020569AC4100000009134110F6000000000115233F000000080000000500000003000000010000000012EA94F600000000022A457F13E201080B4D43F810804CF9000000010DE7C9FC0E6014FD00000003000000050E5FD8FD03C0010413A510FB0793F0C100000009000000050000000213A54CFB000000020793F0C1000000080000000500000003108010F90DE7C9FC000000080E5FD8FD03C00104000000090000000800000003000000010000000400000005"
theorem small_2822250_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2822250_left_root small_2822250_left_fuel small_2822250_left_count small_2822250_left_encoded = true := by
  decide +kernel
theorem small_2822250_left_covered : CoveredBy scale carrier boxes small_2822250_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2822250_left_root small_2822250_left_fuel small_2822250_left_count small_2822250_left_encoded small_2822250_left_checked

theorem cover_2822250 : CoveredBy scale carrier boxes root_2822250 := by
  apply coveredBy_split_literal root_2822250 small_2822250_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822496 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2822250_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822496
#print axioms cover_2822250

def root_2822245 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822245_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2822245_right_fuel : Nat := 1
def small_2822245_right_count : Nat := 1
def small_2822245_right_encoded : String := "00000001"
theorem small_2822245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2822245_right_root small_2822245_right_fuel small_2822245_right_count small_2822245_right_encoded = true := by
  decide +kernel
theorem small_2822245_right_covered : CoveredBy scale carrier boxes small_2822245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2822245_right_root small_2822245_right_fuel small_2822245_right_count small_2822245_right_encoded small_2822245_right_checked

theorem cover_2822245 : CoveredBy scale carrier boxes root_2822245 := by
  apply coveredBy_split_literal root_2822245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822250 small_2822245_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822250
  · exact small_2822245_right_covered
#print axioms cover_2822245

def root_2821519 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2821519_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2821519_left_fuel : Nat := 23
def small_2821519_left_count : Nat := 345
def small_2821519_left_encoded : String := "0F878CF9000000010C9A86FC0F878CFD000000030280010413D7B0FB067ECE8112EA58F60000000A0000000012EA94F600000000022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD00000003000000050E5FD8FD014001040000000913F614FB000000020793F0C10000000A00000005000000030000000100000004000000050000000213D7ECFB00000002067ECE8112EA58F6022A457F13E201080DE7C9F8000000070E5FD8F90000000A00000001000000040000000A0000000012EA94F600000000022A457F13E201080DE7C9F80E6014F900000001000000050E5FD8F90DE7C9FC0E6014FD0000000300000005000000050000000100000004000000050F8750FD0280010413D7B0FB067ECE8112EA58F6022A457F13E201080DE7C9F80E6014F9000000010B4D43FC0000000A000000070E5FD8F90B4D43FC10804CFD000000030140010413F5D8FB0000000A0000000213F614FB000000020569AC4100000007134110F600000000033F67BF000000070000000A108010FD0140010413F5D8FB0569AC411340D4F6033F67BF000000070000000A00000000000000060000000213F614FB000000020569AC4100000007134110F600000000033F67BF0000000713BBF508000000040D412878000000060EFA10F9000000060000000100000003000000010000000413E1C508000000040DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC0000000A108010FD0140010413F5D8FB0569AC4100000008134110F600000000000000080000000213F614FB000000020569AC410000000A134110F6000000000115233F13F895080D412878000000060EFA10F90AA6A27C0000000A0000000600000001000000040000000500000003000000010000000012EA94F600000000022A457F13E201080DE7C9F80E6014F9000000010B4D43FC10804CFD000000030140010413F5D8FB0793F0C10000000A000000050000000213F614FB000000020793F0C10000000700000005108010FD00000006000000030E5FD8F90B4D43FC10804CFD000000030140010413F5D8FB0793F0C100000009000000060000000213F614FB000000020793F0C1128220F6033F67BF13BC31080D412878000000070000000900000004000000050000000000000005108010FD0000000600000003000000010000000413E1C508000000040DE7C9F80E6014F90000000100000005000000050000000213D7ECFB00000002067ECE8112EA58F6022A457F13E201080DE7C9F8000000070E5FD8F90B4D43FC10804CFD000000030000000700000007000000010000000413E1C508000000040DE7C9F80E6014F9000000010000000A0E5FD8F90B4D43FC10804CFD000000030000000A108010FD03C0010413A510FB0569AC410000000A134110F6000000000115233F13F895080D412878000000070EFA10F90AA6A27C0000000A000000070000000100000004000000050000000213A54CFB000000020569AC4100000007134110F6000000000115233F000000070000000500000003000000010000000012EA94F600000000022A457F13E201080DE7C9F80E6014F9000000010B4D43FC10804CFD0000000300000005000000070E5FD8F90B4D43FC10804CFD0000000303C0010413A510FB0793F0C1128220F6033F67BF000000070000000500000000000000050000000213A54CFB000000020793F0C10000000700000005108010FD03C0010413A510FB0793F0C1128220F6033F67BF0000000713BBF508000000040D412878000000060EFA10F9000000060000000100000000000000060000000213A54CFB000000020793F0C10000000712825CF600000000033F67BF00000007000000050000000300000001000000040000000500000003"
theorem small_2821519_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2821519_left_root small_2821519_left_fuel small_2821519_left_count small_2821519_left_encoded = true := by
  decide +kernel
theorem small_2821519_left_covered : CoveredBy scale carrier boxes small_2821519_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2821519_left_root small_2821519_left_fuel small_2821519_left_count small_2821519_left_encoded small_2821519_left_checked

theorem cover_2821519 : CoveredBy scale carrier boxes root_2821519 := by
  apply coveredBy_split_literal root_2821519 small_2821519_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2822245 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2821519_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2822245
#print axioms cover_2821519

def root_2821513 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2821513_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2821513_left_fuel : Nat := 1
def small_2821513_left_count : Nat := 1
def small_2821513_left_encoded : String := "00000004"
theorem small_2821513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2821513_left_root small_2821513_left_fuel small_2821513_left_count small_2821513_left_encoded = true := by
  decide +kernel
theorem small_2821513_left_covered : CoveredBy scale carrier boxes small_2821513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2821513_left_root small_2821513_left_fuel small_2821513_left_count small_2821513_left_encoded small_2821513_left_checked

theorem cover_2821513 : CoveredBy scale carrier boxes root_2821513 := by
  apply coveredBy_split_literal root_2821513 small_2821513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2821519 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2821513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2821519
#print axioms cover_2821513

def root_2820975 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820975_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820975_left_fuel : Nat := 21
def small_2820975_left_count : Nat := 257
def small_2820975_left_encoded : String := "1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010413D7B0FB067ECE8112EA58F6067ECE7F0000000712EA5908000000040DE7C9F800000007000000090000000012EA94F600000000067ECE7F12EA95080DE7C9F800000007000000090000000412EA5908000000040DE7C9F80E6014F9000000010DE7C9FC0E6014FD000000030000000A0E5FD8FD0140010413F5D8FB0793F0C10000000712825CF6000000000569AC3F00000006000000050000000200000007000000030E5FD8F900000009000000010000000213D7ECFB00000002067ECE810000000712EA94F600000000067ECE7F0000000712EA5908000000040DE7C9F8000000070E5FD8F90DE7C9FC000000080E5FD8FD0000000700000003000000010F8750FD0280010413D7B0FB067ECE8112EA58F6067ECE7F0000000712EA5908000000040DE7C9F8000000070E5FD8F90B4D43FC10804CFD000000030000000700000007000000010000000012EA94F600000000067ECE7F12EA95080DE7C9F8000000070E5FD8F900000009000000010000000412EA5908000000040DE7C9F80E6014F9000000010B4D43FC10804CFD00000003014001040000000600000007000000060E5FD8F90B4D43FC10804CFD00000003014001040000000613F614FB000000020793F0C1000000070000000600000006000000010000000213D7ECFB00000002067ECE810000000712EA94F600000000067ECE7F0000000712EA5908000000040DE7C9F8000000070E5FD8F90B4D43FC10804CFD00000003000000070000000700000001000000030F8750F90C9A86FC0F878CFD00000003028001040000000913D7ECFB00000002067ECE8112EA58F6067ECE7F00000008000000090000000012EA94F600000000067ECE7F0000000812EA5908000000040B4D43F800000008000000080F8750FD0280010413D7B0FB067ECE810000000912EA94F600000000000000090000000213D7ECFB00000002067ECE8112EA58F6067ECE7F0000000512EA5908000000040B4D43F810804CF9000000010B4D43FC10804CFD000000030000000700000007108010F900000005000000010000000012EA94F600000000067ECE7F12EA95080B4D43F810804CF9000000010B4D43FC0000000800000007000000090000000412EA5908000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000303C0010413A510FB000000090000000200000008108010FD03C0010413A510FB0793F0C100000007000000060000000213A54CFB000000020793F0C10000000712825CF6000000000000000700000003108010F90B4D43FC10804CFD0000000300000008108010FD03C001040000000913A54CFB000000020793F0C100000005000000080000000300000001000000030000000100000004"
theorem small_2820975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820975_left_root small_2820975_left_fuel small_2820975_left_count small_2820975_left_encoded = true := by
  decide +kernel
theorem small_2820975_left_covered : CoveredBy scale carrier boxes small_2820975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820975_left_root small_2820975_left_fuel small_2820975_left_count small_2820975_left_encoded small_2820975_left_checked

theorem cover_2820975 : CoveredBy scale carrier boxes root_2820975 := by
  apply coveredBy_split_literal root_2820975 small_2820975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2821513 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2820975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2821513
#print axioms cover_2820975

def root_2820969 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820969_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820969_left_fuel : Nat := 1
def small_2820969_left_count : Nat := 1
def small_2820969_left_encoded : String := "00000003"
theorem small_2820969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820969_left_root small_2820969_left_fuel small_2820969_left_count small_2820969_left_encoded = true := by
  decide +kernel
theorem small_2820969_left_covered : CoveredBy scale carrier boxes small_2820969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820969_left_root small_2820969_left_fuel small_2820969_left_count small_2820969_left_encoded small_2820969_left_checked

theorem cover_2820969 : CoveredBy scale carrier boxes root_2820969 := by
  apply coveredBy_split_literal root_2820969 small_2820969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820975 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2820969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820975
#print axioms cover_2820969

def root_2820968 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820968_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820968_right_fuel : Nat := 13
def small_2820968_right_count : Nat := 57
def small_2820968_right_encoded : String := "0F34D0FC045489FF1386AD080C9A86F80F878CF9000000010280010413D7B0FB067ECE810000000912EA94F6000000000AD3577D10D13CFC00000003067ECE7F0000000800000009000000090000000213D7ECFB00000002067ECE8112EA58F60AD3577D000000070000000700000000000000080F8750F9028001040000000900000008000000010000000413867108000000040C9A86F80F878CF900000001028001040000000A0000000A0F8750F9028001040000000913D7ECFB00000002067ECE8112EA58F60AD3577D0000000A0000000500000000000000050000000100000003"
theorem small_2820968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820968_right_root small_2820968_right_fuel small_2820968_right_count small_2820968_right_encoded = true := by
  decide +kernel
theorem small_2820968_right_covered : CoveredBy scale carrier boxes small_2820968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820968_right_root small_2820968_right_fuel small_2820968_right_count small_2820968_right_encoded small_2820968_right_checked

theorem cover_2820968 : CoveredBy scale carrier boxes root_2820968 := by
  apply coveredBy_split_literal root_2820968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820969 small_2820968_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820969
  · exact small_2820968_right_covered
#print axioms cover_2820968

def root_2820962 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820962_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820962_left_fuel : Nat := 1
def small_2820962_left_count : Nat := 1
def small_2820962_left_encoded : String := "00000001"
theorem small_2820962_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820962_left_root small_2820962_left_fuel small_2820962_left_count small_2820962_left_encoded = true := by
  decide +kernel
theorem small_2820962_left_covered : CoveredBy scale carrier boxes small_2820962_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820962_left_root small_2820962_left_fuel small_2820962_left_count small_2820962_left_encoded small_2820962_left_checked

theorem cover_2820962 : CoveredBy scale carrier boxes root_2820962 := by
  apply coveredBy_split_literal root_2820962 small_2820962_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820968 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2820962_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820968
#print axioms cover_2820962

def root_2820961 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820961_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820961_right_fuel : Nat := 16
def small_2820961_right_count : Nat := 67
def small_2820961_right_encoded : String := "0F34D0F80CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030280010413D7B0FB067ECE810000000712EA94F6000000000AD3577910D13CF800000001067ECE7F0000000712EA590800000004000000070000000700000002000000070F8750FD00000007000000030000000413867108000000040C9A86FC0F878CFD00000003028001040000000A0000000A0F8750FD0280010413D7B0FB067ECE810000000A12EA94F6000000000AD3577910D13CF80000000100000005000000050000000213D7ECFB00000002067ECE810000000700000005000000030F34D0FC045489FF1386AD08028001040000000A00000007000000040000000A0000000300000001"
theorem small_2820961_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820961_right_root small_2820961_right_fuel small_2820961_right_count small_2820961_right_encoded = true := by
  decide +kernel
theorem small_2820961_right_covered : CoveredBy scale carrier boxes small_2820961_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820961_right_root small_2820961_right_fuel small_2820961_right_count small_2820961_right_encoded small_2820961_right_checked

theorem cover_2820961 : CoveredBy scale carrier boxes root_2820961 := by
  apply coveredBy_split_literal root_2820961 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820962 small_2820961_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820962
  · exact small_2820961_right_covered
#print axioms cover_2820961

def root_2820955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820955_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820955_left_fuel : Nat := 1
def small_2820955_left_count : Nat := 1
def small_2820955_left_encoded : String := "00000000"
theorem small_2820955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820955_left_root small_2820955_left_fuel small_2820955_left_count small_2820955_left_encoded = true := by
  decide +kernel
theorem small_2820955_left_covered : CoveredBy scale carrier boxes small_2820955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820955_left_root small_2820955_left_fuel small_2820955_left_count small_2820955_left_encoded small_2820955_left_checked

theorem cover_2820955 : CoveredBy scale carrier boxes root_2820955 := by
  apply coveredBy_split_literal root_2820955 small_2820955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820961 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_2820955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820961
#print axioms cover_2820955

def root_2820361 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820361_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820361_left_fuel : Nat := 34
def small_2820361_left_count : Nat := 277
def small_2820361_left_encoded : String := "138670F60CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD0000000300000007000000070F8750F90C9A86FC0F878CFD00000003000000090F8750FD0000000500000003000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030000000A0F8750FD0280010413D7B0FB022A45810000000A13E200F600000000022A457F13E201080DE7C9F8000000070E5FD8F90B4D43FC0000000A0000000700000001000000040000000A0000000213D7ECFB00000002022A45810000000713E200F600000000022A457F000000070000000A000000030F8750F90C9A86FC0F878CFD000000030280010413D7B0FB022A458100000009000000090000000213D7ECFB00000002022A45810000000A13E200F600000000022A457F13E201080B4D43F80000000A00000009000000040000000A0F8750FD0280010413D7B0FB022A458113E1C4F6022A457F0000000513E1C508000000040000000A0000000013E200F600000000022A457F13E201080B4D43F810804CF9000000010B4D43FC00000009108010FD0000000500000003000000090000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A108010FD014001040000000A0000000A00000003108010F90B4D43FC00000009108010FD014001040000000913F614FB00000002033F67C1000000050000000900000003000000010000000213D7ECFB00000002022A458113E1C4F6022A457F0000000513E1C508000000040B4D43F800000007108010F900000005000000010000000013E200F600000000022A457F13E201080B4D43F810804CF90000000100000007108010F900000005000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A108010FD03C0010413A510FB0000000A0000000213A54CFB000000020000000700000003108010F90B4D43FC10804CFD0000000303C0010413A510FB0000000A0000000213A54CFB00000002033F67C10000000A13BC30F6000000000115233F13F895080AA6A2780000000700000009000000040000000A108010FD03C0010413A510FB033F67C10000000513BC30F6000000000115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F900000009000000010000000213A54CFB00000002033F67C10000000513BC30F6000000000115233F0000000513F85908000000040AA6A27810EDACF9000000010000000A10ED70F90AA6A27C10EDACFD000000030000000A10ED70FD046001041383DCFB0000000500000002000000050000000300000001000000030000000100000003000000010F34D0FC045489FF1386AD080C9A86F80F878CF9000000010000000A000000090000000413867108000000040000000A000000030F34D0F80CFD9BFD0F350CFC00000003045489FF0000000713867108000000040000000A0000000A0000000100000000"
theorem small_2820361_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820361_left_root small_2820361_left_fuel small_2820361_left_count small_2820361_left_encoded = true := by
  decide +kernel
theorem small_2820361_left_covered : CoveredBy scale carrier boxes small_2820361_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820361_left_root small_2820361_left_fuel small_2820361_left_count small_2820361_left_encoded small_2820361_left_checked

theorem cover_2820361 : CoveredBy scale carrier boxes root_2820361 := by
  apply coveredBy_split_literal root_2820361 small_2820361_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820955 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2820361_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820955
#print axioms cover_2820361

def root_2820356 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820356_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820356_right_fuel : Nat := 1
def small_2820356_right_count : Nat := 1
def small_2820356_right_encoded : String := "00000002"
theorem small_2820356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820356_right_root small_2820356_right_fuel small_2820356_right_count small_2820356_right_encoded = true := by
  decide +kernel
theorem small_2820356_right_covered : CoveredBy scale carrier boxes small_2820356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820356_right_root small_2820356_right_fuel small_2820356_right_count small_2820356_right_encoded small_2820356_right_checked

theorem cover_2820356 : CoveredBy scale carrier boxes root_2820356 := by
  apply coveredBy_split_literal root_2820356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820361 small_2820356_right_root coord2 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820361
  · exact small_2820356_right_covered
#print axioms cover_2820356

def root_2820355 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2820355 : CoveredBy scale carrier boxes root_2820355 := by
  apply coveredBy_split_literal root_2820355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820356 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1082.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1082.covered
#print axioms cover_2820355

def root_2820349 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820349_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2820349_left_fuel : Nat := 1
def small_2820349_left_count : Nat := 1
def small_2820349_left_encoded : String := "00000004"
theorem small_2820349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2820349_left_root small_2820349_left_fuel small_2820349_left_count small_2820349_left_encoded = true := by
  decide +kernel
theorem small_2820349_left_covered : CoveredBy scale carrier boxes small_2820349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2820349_left_root small_2820349_left_fuel small_2820349_left_count small_2820349_left_encoded small_2820349_left_checked

theorem cover_2820349 : CoveredBy scale carrier boxes root_2820349 := by
  apply coveredBy_split_literal root_2820349 small_2820349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820355 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2820349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820355
#print axioms cover_2820349

def root_2819971 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819971_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819971_left_fuel : Nat := 20
def small_2819971_left_count : Nat := 173
def small_2819971_left_encoded : String := "12073D0805000104135D44FB04548A01138670F60CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC0CFD9BFF0000000500000009000000030F34D0F80CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000070000000700000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000050F34D108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030280010413D7B0FB067ECE810000000712EA94F6000000000000000900000002000000070F8750FD0280010413D7B0FB000000070000000200000007000000030F8750F90C9A86FC0F878CFD00000003000000090F8750FD0000000500000003000000010F34D0FC0CFD9BFF000000080F34D108000000040C9A86F80000000800000008000000030F34D0F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD000000030000000700000007000000040F34D10800000004000000070F34D0FC0CFD9BFF000000070F34D1080000000400000007000000030000000100000002135D80FB0000000204548A01138670F60CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000070F34D0FC00000007000000030F34D0F80CFD9BFD0F350CFC000000030CFD9BFF000000070F34D10800000004000000070000000700000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A86F8000000070F8750F900000008000000010F34D0FC00000008000000030F34D0F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070F34D0FC00000007000000030000000100000004"
theorem small_2819971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819971_left_root small_2819971_left_fuel small_2819971_left_count small_2819971_left_encoded = true := by
  decide +kernel
theorem small_2819971_left_covered : CoveredBy scale carrier boxes small_2819971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819971_left_root small_2819971_left_fuel small_2819971_left_count small_2819971_left_encoded small_2819971_left_checked

theorem cover_2819971 : CoveredBy scale carrier boxes root_2819971 := by
  apply coveredBy_split_literal root_2819971 small_2819971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2820349 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2819971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2820349
#print axioms cover_2819971

def root_2819965 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819965_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819965_left_fuel : Nat := 1
def small_2819965_left_count : Nat := 1
def small_2819965_left_encoded : String := "00000003"
theorem small_2819965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819965_left_root small_2819965_left_fuel small_2819965_left_count small_2819965_left_encoded = true := by
  decide +kernel
theorem small_2819965_left_covered : CoveredBy scale carrier boxes small_2819965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819965_left_root small_2819965_left_fuel small_2819965_left_count small_2819965_left_encoded small_2819965_left_checked

theorem cover_2819965 : CoveredBy scale carrier boxes root_2819965 := by
  apply coveredBy_split_literal root_2819965 small_2819965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819971 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2819965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819971
#print axioms cover_2819965

def root_2819964 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819964_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819964_right_fuel : Nat := 15
def small_2819964_right_count : Nat := 77
def small_2819964_right_encoded : String := "120700FC08A912FF12073D0805000104135D44FB04548A01138670F60CFD9BF9000000090F34D0F80000000700000001000000001386ACF6000000000CFD9BF9000000080F34D0F8000000070000000100000002135D80FB0000000204548A01000000070000000800000004120701080000000405000104135D44FB04548A010000000A1386ACF6000000000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF1386AD080C9A86F800000008000000080000000400000005000000050000000A00000002135D80FB0000000204548A01138670F60CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF000000060000000A000000080000000A000000001386ACF6000000000CFD9BF90F350CF800000001045489FD00000008000000050000000500000003"
theorem small_2819964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819964_right_root small_2819964_right_fuel small_2819964_right_count small_2819964_right_encoded = true := by
  decide +kernel
theorem small_2819964_right_covered : CoveredBy scale carrier boxes small_2819964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819964_right_root small_2819964_right_fuel small_2819964_right_count small_2819964_right_encoded small_2819964_right_checked

theorem cover_2819964 : CoveredBy scale carrier boxes root_2819964 := by
  apply coveredBy_split_literal root_2819964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819965 small_2819964_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819965
  · exact small_2819964_right_covered
#print axioms cover_2819964

def root_2819958 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819958_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819958_left_fuel : Nat := 1
def small_2819958_left_count : Nat := 1
def small_2819958_left_encoded : String := "00000001"
theorem small_2819958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819958_left_root small_2819958_left_fuel small_2819958_left_count small_2819958_left_encoded = true := by
  decide +kernel
theorem small_2819958_left_covered : CoveredBy scale carrier boxes small_2819958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819958_left_root small_2819958_left_fuel small_2819958_left_count small_2819958_left_encoded small_2819958_left_checked

theorem cover_2819958 : CoveredBy scale carrier boxes root_2819958 := by
  apply coveredBy_split_literal root_2819958 small_2819958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819964 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2819958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819964
#print axioms cover_2819958

def root_2819957 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819957_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819957_right_fuel : Nat := 20
def small_2819957_right_count : Nat := 219
def small_2819957_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB04548A01138670F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040000000700000007138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070000000A00000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070F34D0FC0000000700000003138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD00000003000000070F8750FD0C9A87080F8750FF00000007000000040000000700000003000000040F34D10800000004000000070F34D0FC00000007000000030000000100000002135D80FB0000000204548A01138670F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040000000700000007138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070F34D0FC000000070000000300000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070F34D0FC0000000700000003138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD00000003000000070F8750FD0C9A87080F8750FF00000007000000040000000700000003000000040F34D10800000004000000070F34D0FC00000007000000030000000100000004120701080000000405000104135D44FB04548A010000000A1386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF00000007000000050000000A0000000A00000002135D80FB0000000204548A01138670F6045489F91386ACF8000000010CFD9BFD0F350CFC0000000300000007000000070000000A000000001386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC00000003045489FF00000007000000050000000500000005120700FC08A912FF0000000712070108000000040000000A0000000300000001"
theorem small_2819957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819957_right_root small_2819957_right_fuel small_2819957_right_count small_2819957_right_encoded = true := by
  decide +kernel
theorem small_2819957_right_covered : CoveredBy scale carrier boxes small_2819957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819957_right_root small_2819957_right_fuel small_2819957_right_count small_2819957_right_encoded small_2819957_right_checked

theorem cover_2819957 : CoveredBy scale carrier boxes root_2819957 := by
  apply coveredBy_split_literal root_2819957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819958 small_2819957_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819958
  · exact small_2819957_right_covered
#print axioms cover_2819957

def root_2819952 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819952_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819952_right_fuel : Nat := 1
def small_2819952_right_count : Nat := 1
def small_2819952_right_encoded : String := "00000000"
theorem small_2819952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819952_right_root small_2819952_right_fuel small_2819952_right_count small_2819952_right_encoded = true := by
  decide +kernel
theorem small_2819952_right_covered : CoveredBy scale carrier boxes small_2819952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819952_right_root small_2819952_right_fuel small_2819952_right_count small_2819952_right_encoded small_2819952_right_checked

theorem cover_2819952 : CoveredBy scale carrier boxes root_2819952 := by
  apply coveredBy_split_literal root_2819952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819957 small_2819952_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819957
  · exact small_2819952_right_covered
#print axioms cover_2819952

def root_2829267 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2829267_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2829267_right_fuel : Nat := 20
def small_2829267_right_count : Nat := 235
def small_2829267_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF12073D0805000104135D44FB0CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD00000003000000070F8750FD0C9A87080F8750FF00000007000000040000000700000003000000040F34D108000000040C9A86FC00000007000000070F34D0FC0CFD9BFF000000070F34D108000000040000000700000003138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD00000003000000070F8750FD0C9A87080F8750FF00000007000000040000000700000003000000040F34D108000000040C9A86FC00000007000000050F34D0FC0CFD9BFF00000007000000070000000300000001000000000F350CF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86F60F878D010C9A86FC0000000700000007000000000F8751010000000000000007000000040F34D10800000004000000050F34D0FC0CFD9BFF0F350D0800000007000000040000000500000003138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86F60F878D010C9A86FC0000000700000007000000000F87510100000000000000050000000400000005000000050000000100000002135D80FB000000020CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0000000700000007000000040F34D10800000004000000070F34D0FC0000000700000003138670F80CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86FC0F878CFD00000003000000070F8750FD0C9A87080F8750FF0000000700000004000000070000000300000004000000050F34D0FC000000070000000300000001000000000F350CF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86F60F878D010000000700000000000000070000000400000005000000050000000500000004120701080000000405000104135D44FB0CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFD0F350CFC0000000300000005000000050000000500000000000000050000000200000005120700FC08A912FF12073D0805000104135D44FB0CFD9C010F34D0F6045489F91386ACF800000001045489FD000000070000000700000007000000000F350CF6000000000000000500000002135D80FB000000020CFD9C01000000070000000500000004000000050000000300000001"
theorem small_2829267_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2829267_right_root small_2829267_right_fuel small_2829267_right_count small_2829267_right_encoded = true := by
  decide +kernel
theorem small_2829267_right_covered : CoveredBy scale carrier boxes small_2829267_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2829267_right_root small_2829267_right_fuel small_2829267_right_count small_2829267_right_encoded small_2829267_right_checked

theorem cover_2829267 : CoveredBy scale carrier boxes root_2829267 := by
  apply coveredBy_split_literal root_2829267 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1083.root small_2829267_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1083.covered
  · exact small_2829267_right_covered
#print axioms cover_2829267

def root_2829261 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2829261_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2829261_left_fuel : Nat := 1
def small_2829261_left_count : Nat := 1
def small_2829261_left_encoded : String := "00000000"
theorem small_2829261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2829261_left_root small_2829261_left_fuel small_2829261_left_count small_2829261_left_encoded = true := by
  decide +kernel
theorem small_2829261_left_covered : CoveredBy scale carrier boxes small_2829261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2829261_left_root small_2829261_left_fuel small_2829261_left_count small_2829261_left_encoded small_2829261_left_checked

theorem cover_2829261 : CoveredBy scale carrier boxes root_2829261 := by
  apply coveredBy_split_literal root_2829261 small_2829261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2829267 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2829261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2829267
#print axioms cover_2829261

def root_2819951 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819951 : CoveredBy scale carrier boxes root_2819951 := by
  apply coveredBy_split_literal root_2819951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2829261 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819952
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2829261
#print axioms cover_2819951

def root_2819945 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819945_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819945_left_fuel : Nat := 1
def small_2819945_left_count : Nat := 1
def small_2819945_left_encoded : String := "00000004"
theorem small_2819945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819945_left_root small_2819945_left_fuel small_2819945_left_count small_2819945_left_encoded = true := by
  decide +kernel
theorem small_2819945_left_covered : CoveredBy scale carrier boxes small_2819945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819945_left_root small_2819945_left_fuel small_2819945_left_count small_2819945_left_encoded small_2819945_left_checked

theorem cover_2819945 : CoveredBy scale carrier boxes root_2819945 := by
  apply coveredBy_split_literal root_2819945 small_2819945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819951 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2819945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819951
#print axioms cover_2819945

def root_2819103 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819103_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819103_left_fuel : Nat := 26
def small_2819103_left_count : Nat := 397
def small_2819103_left_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000108A912FD12073CFC0000000305000104135D44FB0500010800000009135D80FF0000000404548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFD00000005000000070000000100000002135D80FB000000020500010800000008135D80FF0000000404548A01138670F60CFD9BF9000000050F34D0F80000000800000001000000000000000800000008120700F808A912FD12073CFC0000000305000104135D44FB05000108135D44FF04548A01138670F600000009000000001386ACF600000000045489F900000008138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000080F8750FD02800104000000050000000800000003000000080000000100000004135D80FF0000000404548A01138670F6045489F91386ACF8000000010CFD9BFD0000000500000007138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000070F8750FD00000005000000030000000700000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000070F8750FD000000050000000300000007138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030280010400000007000000070F8750FD0280010413D7B0FB07800108128A40FF067ECE810000000512EA94F6000000000000000700000004000000070000000213D7ECFB0000000207800108128A40FF067ECE8100000005000000080000000400000007000000030F34D0FC00000007000000030000000100000002135D80FB0000000205000108135D44FF04548A01138670F6045489F900000008138670F80CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD00000005000000030000000800000001000000000000000800000004135D80FF0000000404548A01138670F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD000000050000000300000007138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030780010400000007000000070F8750FD07800104128A40FB07800108000000050000000700000002128A7CFB0000000207800108128A40FF000000080000000400000007000000030F34D0FC000000070000000300000001000000001386ACF600000000045489F900000008138670F80CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD07800104128A40FB07800108128A40FF0000000800000004000000070000000200000008000000030000000800000001120700FC0000000800000003000000010000000012073CF60000000008A912F912073CF80000000108A912FD12073CFC0000000305000104135D44FB05000108135D44FF0000000800000004135D80FF000000040CFD9C010F34D0F60CFD9BF9000000080F34D0F80000000800000001000000000F350CF6000000000CFD9BF9000000080F34D0F80000000800000001000000020000000800000008120700F808A912FD12073CFC0000000305000104135D44FB05000108135D44FF0CFD9C010F34D0F6045489F900000008138670F80000000800000001000000000000000800000004135D80FF000000040CFD9C010F34D0F6045489F91386ACF8000000010CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD0280010413D7B0FB07800108000000080000000700000002000000080000000300000007138670F80CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030280010400000007000000080F8750FD0280010413D7B0FB07800108128A40FF0AD35781000000070000000600000004000000070000000213D7ECFB0000000207800108128A40FF000000080000000400000007000000030F34D0FC000000070000000300000001000000000F350CF600000000045489F900000008138670F80CFD9BFD0F350CFC000000030C9A86F60F878D010C9A86FC0F878CFD00000003000000070F8750FD0000000600000003000000000F875101000000000C9A86FC0000000700000006000000080000000100000002135D80FB000000020500010800000008135D80FF000000040CFD9C010F34D0F6000000080000000000000008000000080000000100000004"
theorem small_2819103_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819103_left_root small_2819103_left_fuel small_2819103_left_count small_2819103_left_encoded = true := by
  decide +kernel
theorem small_2819103_left_covered : CoveredBy scale carrier boxes small_2819103_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819103_left_root small_2819103_left_fuel small_2819103_left_count small_2819103_left_encoded small_2819103_left_checked

theorem cover_2819103 : CoveredBy scale carrier boxes root_2819103 := by
  apply coveredBy_split_literal root_2819103 small_2819103_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819945 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2819103_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819945
#print axioms cover_2819103

def root_2819097 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819097_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819097_left_fuel : Nat := 1
def small_2819097_left_count : Nat := 1
def small_2819097_left_encoded : String := "00000003"
theorem small_2819097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819097_left_root small_2819097_left_fuel small_2819097_left_count small_2819097_left_encoded = true := by
  decide +kernel
theorem small_2819097_left_covered : CoveredBy scale carrier boxes small_2819097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819097_left_root small_2819097_left_fuel small_2819097_left_count small_2819097_left_encoded small_2819097_left_checked

theorem cover_2819097 : CoveredBy scale carrier boxes root_2819097 := by
  apply coveredBy_split_literal root_2819097 small_2819097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819103 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2819097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819103
#print axioms cover_2819097

def root_2833738 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2833738 : CoveredBy scale carrier boxes root_2833738 := by
  apply coveredBy_split_literal root_2833738 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1084.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1085.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1084.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1085.covered
#print axioms cover_2833738

def root_2833732 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833732_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833732_left_fuel : Nat := 1
def small_2833732_left_count : Nat := 1
def small_2833732_left_encoded : String := "00000004"
theorem small_2833732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833732_left_root small_2833732_left_fuel small_2833732_left_count small_2833732_left_encoded = true := by
  decide +kernel
theorem small_2833732_left_covered : CoveredBy scale carrier boxes small_2833732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833732_left_root small_2833732_left_fuel small_2833732_left_count small_2833732_left_encoded small_2833732_left_checked

theorem cover_2833732 : CoveredBy scale carrier boxes root_2833732 := by
  apply coveredBy_split_literal root_2833732 small_2833732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833738 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2833732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833738
#print axioms cover_2833732

def root_2833502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833502_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833502_left_fuel : Nat := 15
def small_2833502_left_count : Nat := 109
def small_2833502_left_encoded : String := "12073D0805000104135D44FB050000FC135D80FD0000000304548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFF000000050F34D108000000040280010413D7B0FB078000FC0000000700000006000000020000000700000001135D44FD04548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFF000000050F34D1080000000400000006000000010000000300000002135D80FB00000002050000FC135D80FD0000000304548A01138670F60CFD9BF9000000050F34D0F80CFD9BFF000000050F34D108000000040000000700000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFF000000050F34D108000000040C9A86F80F878CF9000000010780010400000007000000070F8750F900000005000000010F34D0F80CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF0000000400000007000000040F34D108000000040000000700000001135D44FD04548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9BFF000000050F34D10800000004078001040000000700000007000000010000000300000004"
theorem small_2833502_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833502_left_root small_2833502_left_fuel small_2833502_left_count small_2833502_left_encoded = true := by
  decide +kernel
theorem small_2833502_left_covered : CoveredBy scale carrier boxes small_2833502_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833502_left_root small_2833502_left_fuel small_2833502_left_count small_2833502_left_encoded small_2833502_left_checked

theorem cover_2833502 : CoveredBy scale carrier boxes root_2833502 := by
  apply coveredBy_split_literal root_2833502 small_2833502_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833732 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2833502_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833732
#print axioms cover_2833502

def root_2833496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833496_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833496_left_fuel : Nat := 1
def small_2833496_left_count : Nat := 1
def small_2833496_left_encoded : String := "00000001"
theorem small_2833496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833496_left_root small_2833496_left_fuel small_2833496_left_count small_2833496_left_encoded = true := by
  decide +kernel
theorem small_2833496_left_covered : CoveredBy scale carrier boxes small_2833496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833496_left_root small_2833496_left_fuel small_2833496_left_count small_2833496_left_encoded small_2833496_left_checked

theorem cover_2833496 : CoveredBy scale carrier boxes root_2833496 := by
  apply coveredBy_split_literal root_2833496 small_2833496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833502 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2833496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833502
#print axioms cover_2833496

def root_2833495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833495_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833495_right_fuel : Nat := 27
def small_2833495_right_count : Nat := 455
def small_2833495_right_encoded : String := "120700F808A912FF12073D0805000104135D44FB050000FC135D80FD0000000304548A01138670F6045489F91386ACF8000000010CFD9BFF000000050F34D1080000000400000007138670F80CFD9BFF0F350D080C9A87080F8750FF0280010413D7B0FB000000050000000213D7ECFB00000002078000FC00000007128A40FD0000000500000003000000040F878CFF00000004028001040000000700000007000000040F34D108000000040000000700000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFF0F350D080C9A87080F8750FF028001040000000700000007000000040F878CFF0000000400000007000000040F34D10800000004028001040000000700000007138670F80CFD9BFF0F350D080C9A87080F8750FF0280010413D7B0FB078000FC00000007000000060000000213D7ECFB00000002078000FC128A7CFD0000000300000007128A40FD067ECE81000000070000000600000003000000040F878CFF00000004028001040000000713D7ECFB00000002078000FC0000000700000007000000040F34D10800000004028001040000000713D7ECFB000000020000000700000001135D44FD04548A01138670F6045489F91386ACF8000000010CFD9BFF000000050F34D1080000000400000007138670F80CFD9BFF0F350D080C9A87080F8750FF00000005000000040F878CFF00000004028001040000000813D7ECFB00000002028000FC0000000700000008000000040000000800000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFF0F350D080C9A87080F8750FF000000050000000400000006000000040F34D1080000000400000006138670F80CFD9BFF0F350D080C9A87080F8750FF000000060000000400000006000000040F34D1080000000400000006000000010000000300000002135D80FB00000002050000FC135D80FD0000000304548A01138670F6045489F91386ACF8000000010CFD9BFF0F350D080C9A87080F8750FF000000050000000400000007000000040F34D1080000000400000007138670F80CFD9BFF0F350D080C9A87080F8750FF07800104128A40FB078000FC00000007128A40FD022A458100000005000000070000000300000002128A7CFB00000002078000FC00000007128A40FD022A4581000000050000000700000003000000040F878CFF000000040780010400000007128A7CFB0000000200000007000000040F34D108000000040000000900000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFF0F350D080C9A87080F8750FF0780010400000007128A7CFB0000000200000007000000040F878CFF0000000400000007000000040F34D1080000000400000007138670F80CFD9BFF0F350D080C9A87080F8750FF07800104128A40FB078000FC128A7CFD0000000300000007128A40FD067ECE810000000712EA94F600000000000000070000000300000002128A7CFB00000002078000FC00000007128A40FD067ECE81000000070000000700000003000000040F878CFF0000000407800104128A40FB078000FC00000007000000070000000200000009000000040F34D108000000040000000900000001135D44FD04548A01138670F6045489F91386ACF8000000010CFD9BFF000000050F34D10800000004078001040000000700000007138670F80CFD9BFF0F350D080C9A87080F8750FF07800104128A40FB0000000500000002128A7CFB00000002028000FC13D7ECFD00000003022A4581000000050000000913D7B0FD022A4581000000050000000900000003000000040F878CFF0000000407800104128A40FB028000FC13D7ECFD000000030000000713D7B0FD00000009000000030000000200000009000000040F34D108000000040000000900000001000000001386ACF600000000045489F91386ACF8000000010CFD9BFF0F350D080C9A87080F8750FF078001040000000A0000000A000000040F878CFF000000040780010400000007128A7CFB0000000200000007000000040F34D1080000000400000009138670F80CFD9BFF0F350D080C9A87080F8750FF07800104128A40FB028000FC13D7ECFD00000003067ECE8112EA58F6022A45790000000513E1C4F80B4D4408108010FF064001040000000600000007000000040000000600000001000000000000000613D7B0FD000000060000000300000002128A7CFB0000000200000009000000040F878CFF0000000400000009000000040F34D1080000000400000009000000010000000300000004120701080000000405000104135D44FB050000FC135D80FD0000000304548A01138670F6045489F91386ACF800000001045489FF000000070000000800000008000000001386ACF600000000045489F91386ACF800000001045489FF1386AD08028001040000000700000007000000040000000900000009135D44FD04548A01000000080000000800000003000000020000000900000001"
theorem small_2833495_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833495_right_root small_2833495_right_fuel small_2833495_right_count small_2833495_right_encoded = true := by
  decide +kernel
theorem small_2833495_right_covered : CoveredBy scale carrier boxes small_2833495_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833495_right_root small_2833495_right_fuel small_2833495_right_count small_2833495_right_encoded small_2833495_right_checked

theorem cover_2833495 : CoveredBy scale carrier boxes root_2833495 := by
  apply coveredBy_split_literal root_2833495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833496 small_2833495_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833496
  · exact small_2833495_right_covered
#print axioms cover_2833495

def root_2833490 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833490_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833490_right_fuel : Nat := 1
def small_2833490_right_count : Nat := 1
def small_2833490_right_encoded : String := "00000000"
theorem small_2833490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833490_right_root small_2833490_right_fuel small_2833490_right_count small_2833490_right_encoded = true := by
  decide +kernel
theorem small_2833490_right_covered : CoveredBy scale carrier boxes small_2833490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833490_right_root small_2833490_right_fuel small_2833490_right_count small_2833490_right_encoded small_2833490_right_checked

theorem cover_2833490 : CoveredBy scale carrier boxes root_2833490 := by
  apply coveredBy_split_literal root_2833490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833495 small_2833490_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833495
  · exact small_2833490_right_covered
#print axioms cover_2833490

def root_2833489 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2833489 : CoveredBy scale carrier boxes root_2833489 := by
  apply coveredBy_split_literal root_2833489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833490 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1086.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833490
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1086.covered
#print axioms cover_2833489

def root_2833483 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833483_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2833483_left_fuel : Nat := 1
def small_2833483_left_count : Nat := 1
def small_2833483_left_encoded : String := "00000004"
theorem small_2833483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2833483_left_root small_2833483_left_fuel small_2833483_left_count small_2833483_left_encoded = true := by
  decide +kernel
theorem small_2833483_left_covered : CoveredBy scale carrier boxes small_2833483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2833483_left_root small_2833483_left_fuel small_2833483_left_count small_2833483_left_encoded small_2833483_left_checked

theorem cover_2833483 : CoveredBy scale carrier boxes root_2833483 := by
  apply coveredBy_split_literal root_2833483 small_2833483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833489 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2833483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833489
#print axioms cover_2833483

def root_2832683 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2832683_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2832683_left_fuel : Nat := 29
def small_2832683_left_count : Nat := 379
def small_2832683_left_encoded : String := "1151E8FF08A91301120700F608A912F900000005120700F805000104135D44FB050000FC135D80FD0000000305000108135D44FF04548A01000000051386ACF600000000045489F900000005138670F8000000050000000100000004135D80FF0000000404548A01000000051386ACF600000000045489F900000005138670F80280010413D7B0FB078000FC128A7CFD0000000307800108128A40FF0000000500000004128A7CFF00000004067ECE810000000500000006128A40FD07800108128A40FF000000050000000400000006000000030000000213D7ECFB00000002078000FC128A7CFD0000000307800108128A40FF067ECE810000000512EA94F600000000022A45790000000513E1C4F803C001040000000A0000000A0000000100000004128A7CFF00000004067ECE810000000712EA94F60000000000000007128A40FD07800108128A40FF067ECE81000000050000000A00000004128A7CFF00000004067ECE8100000005000000060000000300000001135D44FD05000108135D44FF0000000500000004135D80FF0000000404548A01000000051386ACF600000000045489F900000005138670F8028001040000000613D7ECFB00000002028000FC13D7ECFD00000003078001080000000A0000000600000006000000010000000300000002135D80FB00000002050000FC135D80FD0000000305000108135D44FF04548A01000000051386ACF600000000045489F900000005138670F8078001040000000A000000080000000100000004135D80FF0000000404548A01138670F6045489F900000005138670F807800104128A40FB0000000500000002128A7CFB00000002078000FC128A7CFD0000000307800108128A40FF0000000500000004128A7CFF00000004022A45810000000513E200F60000000000000007128A40FD000000050000000300000001000000001386ACF600000000045489F91386ACF80000000107800104128A40FB078000FC000000050000000A00000002128A7CFB00000002078000FC000000080000000A138670F807800104128A40FB078000FC128A7CFD0000000307800108128A40FF067ECE8112EA58F600000005000000000000000800000004128A7CFF00000004067ECE810000000712EA94F60000000000000007128A40FD078001080000000A128A7CFF00000004067ECE8112EA58F6022A45790000000513E1C4F80640010412FF70FB064000FC00000005000000070000000212FFACFB00000002064000FC000000070000000A00000001000000000000000A0000000300000002128A7CFB00000002078000FC128A7CFD000000030780010800000008128A7CFF00000004067ECE810000000700000008128A40FD078001080000000A128A7CFF00000004067ECE8112EA58F6022A4579000000070000000A000000000000000A0000000300000001135D44FD05000108135D44FF0000000A00000004135D80FF0000000404548A01000000051386ACF600000000045489F900000005138670F8078001040000000A0000000A0000000100000003000000010000000012073CF60000000008A912F912073CF800000001050001040000000A135D80FB000000020000000A120700F805000104135D44FB050000FC135D80FD0000000305000108135D44FF0CFD9C010F34D0F60000000A000000000000000A00000004135D80FF000000040CFD9C010F34D0F6045489F91386ACF8000000010000000A138670F8028001040000000613D7ECFB00000002078000FC128A7CFD00000003078001080000000A000000060000000A00000001000000000F350CF6000000000000000A135D44FD0000000A0000000300000002135D80FB00000002050000FC135D80FD0000000305000108135D44FF0000000A00000004135D80FF000000040CFD9C010F34D0F6045489F90000000A138670F807800104128A40FB078000FC128A7CFD00000003078001080000000A128A7CFF000000040AD3578100000007000000080000000A00000002128A7CFB000000020000000A00000001000000000F350CF6000000000000000A135D44FD0000000A000000030000000100000004"
theorem small_2832683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2832683_left_root small_2832683_left_fuel small_2832683_left_count small_2832683_left_encoded = true := by
  decide +kernel
theorem small_2832683_left_covered : CoveredBy scale carrier boxes small_2832683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2832683_left_root small_2832683_left_fuel small_2832683_left_count small_2832683_left_encoded small_2832683_left_checked

theorem cover_2832683 : CoveredBy scale carrier boxes root_2832683 := by
  apply coveredBy_split_literal root_2832683 small_2832683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2833483 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2832683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2833483
#print axioms cover_2832683

def root_2832678 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2832678_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2832678_right_fuel : Nat := 1
def small_2832678_right_count : Nat := 1
def small_2832678_right_encoded : String := "00000003"
theorem small_2832678_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2832678_right_root small_2832678_right_fuel small_2832678_right_count small_2832678_right_encoded = true := by
  decide +kernel
theorem small_2832678_right_covered : CoveredBy scale carrier boxes small_2832678_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2832678_right_root small_2832678_right_fuel small_2832678_right_count small_2832678_right_encoded small_2832678_right_checked

theorem cover_2832678 : CoveredBy scale carrier boxes root_2832678 := by
  apply coveredBy_split_literal root_2832678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2832683 small_2832678_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2832683
  · exact small_2832678_right_covered
#print axioms cover_2832678

def root_2819096 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819096 : CoveredBy scale carrier boxes root_2819096 := by
  apply coveredBy_split_literal root_2819096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2832678 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819097
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2832678
#print axioms cover_2819096

def root_2819091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819091_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819091_right_fuel : Nat := 1
def small_2819091_right_count : Nat := 1
def small_2819091_right_encoded : String := "00000002"
theorem small_2819091_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819091_right_root small_2819091_right_fuel small_2819091_right_count small_2819091_right_encoded = true := by
  decide +kernel
theorem small_2819091_right_covered : CoveredBy scale carrier boxes small_2819091_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819091_right_root small_2819091_right_fuel small_2819091_right_count small_2819091_right_encoded small_2819091_right_checked

theorem cover_2819091 : CoveredBy scale carrier boxes root_2819091 := by
  apply coveredBy_split_literal root_2819091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819096 small_2819091_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819096
  · exact small_2819091_right_covered
#print axioms cover_2819091

def root_2840890 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2840890 : CoveredBy scale carrier boxes root_2840890 := by
  apply coveredBy_split_literal root_2840890 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1087.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1088.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1087.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1088.covered
#print axioms cover_2840890

def root_2840884 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2840884_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2840884_left_fuel : Nat := 1
def small_2840884_left_count : Nat := 1
def small_2840884_left_encoded : String := "00000002"
theorem small_2840884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2840884_left_root small_2840884_left_fuel small_2840884_left_count small_2840884_left_encoded = true := by
  decide +kernel
theorem small_2840884_left_covered : CoveredBy scale carrier boxes small_2840884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2840884_left_root small_2840884_left_fuel small_2840884_left_count small_2840884_left_encoded small_2840884_left_checked

theorem cover_2840884 : CoveredBy scale carrier boxes root_2840884 := by
  apply coveredBy_split_literal root_2840884 small_2840884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2840890 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2840884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2840890
#print axioms cover_2840884

def root_2819090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819090 : CoveredBy scale carrier boxes root_2819090 := by
  apply coveredBy_split_literal root_2819090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2840884 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819091
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2840884
#print axioms cover_2819090

def root_2819084 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819084_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819084_left_fuel : Nat := 1
def small_2819084_left_count : Nat := 1
def small_2819084_left_encoded : String := "00000001"
theorem small_2819084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819084_left_root small_2819084_left_fuel small_2819084_left_count small_2819084_left_encoded = true := by
  decide +kernel
theorem small_2819084_left_covered : CoveredBy scale carrier boxes small_2819084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819084_left_root small_2819084_left_fuel small_2819084_left_count small_2819084_left_encoded small_2819084_left_checked

theorem cover_2819084 : CoveredBy scale carrier boxes root_2819084 := by
  apply coveredBy_split_literal root_2819084 small_2819084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819090 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2819084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819090
#print axioms cover_2819084

def root_2844193 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2844193 : CoveredBy scale carrier boxes root_2844193 := by
  apply coveredBy_split_literal root_2844193 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1089.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1090.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1089.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1090.covered
#print axioms cover_2844193

def root_2844187 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844187_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844187_left_fuel : Nat := 1
def small_2844187_left_count : Nat := 1
def small_2844187_left_encoded : String := "00000004"
theorem small_2844187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2844187_left_root small_2844187_left_fuel small_2844187_left_count small_2844187_left_encoded = true := by
  decide +kernel
theorem small_2844187_left_covered : CoveredBy scale carrier boxes small_2844187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2844187_left_root small_2844187_left_fuel small_2844187_left_count small_2844187_left_encoded small_2844187_left_checked

theorem cover_2844187 : CoveredBy scale carrier boxes root_2844187 := by
  apply coveredBy_split_literal root_2844187 small_2844187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844193 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2844187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844193
#print axioms cover_2844187

def root_2844155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844155_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844155_left_fuel : Nat := 7
def small_2844155_left_count : Nat := 15
def small_2844155_left_encoded : String := "1151E8FF08A91301120700F6000000090000000012073CF60000000008A912FD12073CFC00000003050000F8000000080000000A0000000800000004"
theorem small_2844155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2844155_left_root small_2844155_left_fuel small_2844155_left_count small_2844155_left_encoded = true := by
  decide +kernel
theorem small_2844155_left_covered : CoveredBy scale carrier boxes small_2844155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2844155_left_root small_2844155_left_fuel small_2844155_left_count small_2844155_left_encoded small_2844155_left_checked

theorem cover_2844155 : CoveredBy scale carrier boxes root_2844155 := by
  apply coveredBy_split_literal root_2844155 small_2844155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844187 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2844155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844187
#print axioms cover_2844155

def root_2844149 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844149_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844149_left_fuel : Nat := 1
def small_2844149_left_count : Nat := 1
def small_2844149_left_encoded : String := "00000003"
theorem small_2844149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2844149_left_root small_2844149_left_fuel small_2844149_left_count small_2844149_left_encoded = true := by
  decide +kernel
theorem small_2844149_left_covered : CoveredBy scale carrier boxes small_2844149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2844149_left_root small_2844149_left_fuel small_2844149_left_count small_2844149_left_encoded small_2844149_left_checked

theorem cover_2844149 : CoveredBy scale carrier boxes root_2844149 := by
  apply coveredBy_split_literal root_2844149 small_2844149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844155 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2844149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844155
#print axioms cover_2844149

def root_2844148 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2844148 : CoveredBy scale carrier boxes root_2844148 := by
  apply coveredBy_split_literal root_2844148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1091.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844149
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1091.covered
#print axioms cover_2844148

def root_2844143 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844143_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844143_right_fuel : Nat := 1
def small_2844143_right_count : Nat := 1
def small_2844143_right_encoded : String := "00000002"
theorem small_2844143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2844143_right_root small_2844143_right_fuel small_2844143_right_count small_2844143_right_encoded = true := by
  decide +kernel
theorem small_2844143_right_covered : CoveredBy scale carrier boxes small_2844143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2844143_right_root small_2844143_right_fuel small_2844143_right_count small_2844143_right_encoded small_2844143_right_checked

theorem cover_2844143 : CoveredBy scale carrier boxes root_2844143 := by
  apply coveredBy_split_literal root_2844143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844148 small_2844143_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844148
  · exact small_2844143_right_covered
#print axioms cover_2844143

def root_2844142 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2844142 : CoveredBy scale carrier boxes root_2844142 := by
  apply coveredBy_split_literal root_2844142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844143 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1092.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844143
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1092.covered
#print axioms cover_2844142

def root_2844137 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844137_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2844137_right_fuel : Nat := 1
def small_2844137_right_count : Nat := 1
def small_2844137_right_encoded : String := "00000001"
theorem small_2844137_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2844137_right_root small_2844137_right_fuel small_2844137_right_count small_2844137_right_encoded = true := by
  decide +kernel
theorem small_2844137_right_covered : CoveredBy scale carrier boxes small_2844137_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2844137_right_root small_2844137_right_fuel small_2844137_right_count small_2844137_right_encoded small_2844137_right_checked

theorem cover_2844137 : CoveredBy scale carrier boxes root_2844137 := by
  apply coveredBy_split_literal root_2844137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844142 small_2844137_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844142
  · exact small_2844137_right_covered
#print axioms cover_2844137

def root_2819083 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819083 : CoveredBy scale carrier boxes root_2819083 := by
  apply coveredBy_split_literal root_2819083 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2844137 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819084
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2844137
#print axioms cover_2819083

def root_2819078 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819078_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2819078_right_fuel : Nat := 1
def small_2819078_right_count : Nat := 1
def small_2819078_right_encoded : String := "00000000"
theorem small_2819078_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2819078_right_root small_2819078_right_fuel small_2819078_right_count small_2819078_right_encoded = true := by
  decide +kernel
theorem small_2819078_right_covered : CoveredBy scale carrier boxes small_2819078_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2819078_right_root small_2819078_right_fuel small_2819078_right_count small_2819078_right_encoded small_2819078_right_checked

theorem cover_2819078 : CoveredBy scale carrier boxes root_2819078 := by
  apply coveredBy_split_literal root_2819078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819083 small_2819078_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819083
  · exact small_2819078_right_covered
#print axioms cover_2819078

def root_2851301 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2851301 : CoveredBy scale carrier boxes root_2851301 := by
  apply coveredBy_split_literal root_2851301 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1093.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1094.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1093.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1094.covered
#print axioms cover_2851301

def root_2851295 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2851295_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2851295_left_fuel : Nat := 1
def small_2851295_left_count : Nat := 1
def small_2851295_left_encoded : String := "00000000"
theorem small_2851295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2851295_left_root small_2851295_left_fuel small_2851295_left_count small_2851295_left_encoded = true := by
  decide +kernel
theorem small_2851295_left_covered : CoveredBy scale carrier boxes small_2851295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2851295_left_root small_2851295_left_fuel small_2851295_left_count small_2851295_left_encoded small_2851295_left_checked

theorem cover_2851295 : CoveredBy scale carrier boxes root_2851295 := by
  apply coveredBy_split_literal root_2851295 small_2851295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2851301 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2851295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2851301
#print axioms cover_2851295

def root_2819077 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819077 : CoveredBy scale carrier boxes root_2819077 := by
  apply coveredBy_split_literal root_2819077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819078 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2851295 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819078
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2851295
#print axioms cover_2819077

def root_2855267 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2855267 : CoveredBy scale carrier boxes root_2855267 := by
  apply coveredBy_split_literal root_2855267 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1095.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1096.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1095.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1096.covered
#print axioms cover_2855267

def root_2855262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855262_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855262_right_fuel : Nat := 1
def small_2855262_right_count : Nat := 1
def small_2855262_right_encoded : String := "00000002"
theorem small_2855262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2855262_right_root small_2855262_right_fuel small_2855262_right_count small_2855262_right_encoded = true := by
  decide +kernel
theorem small_2855262_right_covered : CoveredBy scale carrier boxes small_2855262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2855262_right_root small_2855262_right_fuel small_2855262_right_count small_2855262_right_encoded small_2855262_right_checked

theorem cover_2855262 : CoveredBy scale carrier boxes root_2855262 := by
  apply coveredBy_split_literal root_2855262 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2855267 small_2855262_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2855267
  · exact small_2855262_right_covered
#print axioms cover_2855262

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067
