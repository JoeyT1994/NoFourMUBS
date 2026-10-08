import TaoBundleAssembly0162
import TaoBundleChunkBatch0633
import TaoBundleChunkBatch0634
import TaoBundleChunkBatch0635
import TaoBundleChunkBatch0636
import TaoBundleChunkBatch0637
import TaoBundleChunkBatch0638
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163
def root_6729462 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729462_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729462_left_fuel : Nat := 36
def small_6729462_left_count : Nat := 337
def small_6729462_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A913090000000800000008120700FC08A91309120700FE0500010400000008135D80FB000000020CFD9BF7000000080F34D100000000000CFD9BF90F350D02045489FD00000008138670FC04548A0900000008000000080000000300000001000000080000000412073CFE0000000400000008000000030000000112070102000000010000000800000000120701000000000008A912F912073D0208A912FD12073CFC0000000308A91309120700FE05000104135D44FB045489F7000000080000000700000002135D80FB00000002045489F71386AD00000000080000000013867100000000000CFD9BF90F350D020CFD9BFD000000070F34D0FC0000000700000003000000010F34D10200000001000000070000000412073CFE000000040500010400000007135D80FB0000000200000008120700FC08A91309120700FE05000104135D44FB045489F71386AD000CFD9BF90F350D02045489FD00000008138670FC000000080000000300000001000000080000000013867100000000000CFD9BF9000000070F34D102000000010000000700000002135D80FB00000002045489F71386AD000CFD9BF90F350D02045489FD1386ACFC0000000300000008138670FC04548A09138670FE0C9A87020F8750F907800104128A40FB067ECE770000000812EA5900000000000000000800000002128A7CFB00000002067ECE770000000812EA590000000000022A457D0000000813E1C4FC022A458913E1C4FE0B4D4402108010F9000000090000000100000009000000040000000500000003000000010F878CF90000000100000008000000041386ACFE000000040C9A87020F8750F900000008000000010000000800000003000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D02045489FD1386ACFC0000000304548A09138670FE0C9A87020F8750F90000000700000001000000070000000400000007138670FC04548A09138670FE0C9A87020F8750F907800104128A40FB0000000700000002128A7CFB00000002022A457713E20100022A457D13E200FC00000003022A458913E1C4FE0B4D440200000006000000070000000400000005000000050000000000000005000000010F878CF9000000010780010400000007128A7CFB00000002022A457713E20100022A457D00000007000000050000000000000005000000040000000700000003000000010F34D10200000001000000070000000412073CFE0000000405000104135D44FB045489F7000000080000000700000002135D80FB00000002045489F71386AD00000000080000000013867100000000000CFD9BF90F350D02045489FD0000000700000007000000010F34D10200000001000000070000000300000001120701020000000108A912FD00000008120700FC08A91309000000080000000700000003000000041151E9090000000408A912F712073D0008A912F90000000812070102000000010000000800000000120701000000000008A912F9000000081207010200000001000000071151E8FD0A0000FE1152250908A912F712073D0008A912F912073D020000000800000001120701020000000108A91309000000080000000700000000120701000000000008A912F912073D0208A91309000000080000000700000001120701020000000100000007000000041151E9090000000408A912F712073D0008A912F912073D020500010400000006000000080000000112070102000000010000000700000000000000070000000300000002"
theorem small_6729462_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6729462_left_root small_6729462_left_fuel small_6729462_left_count small_6729462_left_encoded = true := by
  decide +kernel
theorem small_6729462_left_covered : CoveredBy scale carrier boxes small_6729462_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6729462_left_root small_6729462_left_fuel small_6729462_left_count small_6729462_left_encoded small_6729462_left_checked

theorem cover_6729462 : CoveredBy scale carrier boxes root_6729462 := by
  apply coveredBy_split_literal root_6729462 small_6729462_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2533.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6729462_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2533.covered
#print axioms cover_6729462

def root_6729456 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729456_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6729456_left_fuel : Nat := 1
def small_6729456_left_count : Nat := 1
def small_6729456_left_encoded : String := "00000001"
theorem small_6729456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6729456_left_root small_6729456_left_fuel small_6729456_left_count small_6729456_left_encoded = true := by
  decide +kernel
theorem small_6729456_left_covered : CoveredBy scale carrier boxes small_6729456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6729456_left_root small_6729456_left_fuel small_6729456_left_count small_6729456_left_encoded small_6729456_left_checked

theorem cover_6729456 : CoveredBy scale carrier boxes root_6729456 := by
  apply coveredBy_split_literal root_6729456 small_6729456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6729462 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6729456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6729462
#print axioms cover_6729456

def root_6727574 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6727574 : CoveredBy scale carrier boxes root_6727574 := by
  apply coveredBy_split_literal root_6727574 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2532.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6729456 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2532.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6729456
#print axioms cover_6727574

def root_6727568 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6727568_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6727568_left_fuel : Nat := 1
def small_6727568_left_count : Nat := 1
def small_6727568_left_encoded : String := "00000000"
theorem small_6727568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6727568_left_root small_6727568_left_fuel small_6727568_left_count small_6727568_left_encoded = true := by
  decide +kernel
theorem small_6727568_left_covered : CoveredBy scale carrier boxes small_6727568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6727568_left_root small_6727568_left_fuel small_6727568_left_count small_6727568_left_encoded small_6727568_left_checked

theorem cover_6727568 : CoveredBy scale carrier boxes root_6727568 := by
  apply coveredBy_split_literal root_6727568 small_6727568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6727574 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6727568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6727574
#print axioms cover_6727568

def root_6725278 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6725278 : CoveredBy scale carrier boxes root_6725278 := by
  apply coveredBy_split_literal root_6725278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2531.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6727568 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2531.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6727568
#print axioms cover_6725278

def root_6684594 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684594 : CoveredBy scale carrier boxes root_6684594 := by
  apply coveredBy_split_literal root_6684594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0162.root_6684595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6725278 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0162.cover_6684595
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6725278
#print axioms cover_6684594

def root_6684593 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6684593 : CoveredBy scale carrier boxes root_6684593 := by
  apply coveredBy_split_literal root_6684593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6684594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2534.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6684594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2534.covered
#print axioms cover_6684593

def root_6739378 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6739378 : CoveredBy scale carrier boxes root_6739378 := by
  apply coveredBy_split_literal root_6739378 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2537.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2538.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2537.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2538.covered
#print axioms cover_6739378

def root_6739372 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6739372_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6739372_left_fuel : Nat := 1
def small_6739372_left_count : Nat := 1
def small_6739372_left_encoded : String := "00000001"
theorem small_6739372_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6739372_left_root small_6739372_left_fuel small_6739372_left_count small_6739372_left_encoded = true := by
  decide +kernel
theorem small_6739372_left_covered : CoveredBy scale carrier boxes small_6739372_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6739372_left_root small_6739372_left_fuel small_6739372_left_count small_6739372_left_encoded small_6739372_left_checked

theorem cover_6739372 : CoveredBy scale carrier boxes root_6739372 := by
  apply coveredBy_split_literal root_6739372 small_6739372_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6739378 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6739372_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6739378
#print axioms cover_6739372

def root_6737752 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6737752 : CoveredBy scale carrier boxes root_6737752 := by
  apply coveredBy_split_literal root_6737752 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2536.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6739372 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2536.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6739372
#print axioms cover_6737752

def root_6737746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6737746_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6737746_left_fuel : Nat := 1
def small_6737746_left_count : Nat := 1
def small_6737746_left_encoded : String := "00000000"
theorem small_6737746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6737746_left_root small_6737746_left_fuel small_6737746_left_count small_6737746_left_encoded = true := by
  decide +kernel
theorem small_6737746_left_covered : CoveredBy scale carrier boxes small_6737746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6737746_left_root small_6737746_left_fuel small_6737746_left_count small_6737746_left_encoded small_6737746_left_checked

theorem cover_6737746 : CoveredBy scale carrier boxes root_6737746 := by
  apply coveredBy_split_literal root_6737746 small_6737746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6737752 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6737746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6737752
#print axioms cover_6737746

def root_6735418 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6735418 : CoveredBy scale carrier boxes root_6735418 := by
  apply coveredBy_split_literal root_6735418 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2535.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6737746 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2535.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6737746
#print axioms cover_6735418

def root_6749081 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6749081 : CoveredBy scale carrier boxes root_6749081 := by
  apply coveredBy_split_literal root_6749081 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2541.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2542.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2541.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2542.covered
#print axioms cover_6749081

def root_6749075 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6749075_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6749075_left_fuel : Nat := 1
def small_6749075_left_count : Nat := 1
def small_6749075_left_encoded : String := "00000002"
theorem small_6749075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6749075_left_root small_6749075_left_fuel small_6749075_left_count small_6749075_left_encoded = true := by
  decide +kernel
theorem small_6749075_left_covered : CoveredBy scale carrier boxes small_6749075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6749075_left_root small_6749075_left_fuel small_6749075_left_count small_6749075_left_encoded small_6749075_left_checked

theorem cover_6749075 : CoveredBy scale carrier boxes root_6749075 := by
  apply coveredBy_split_literal root_6749075 small_6749075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6749081 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6749075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6749081
#print axioms cover_6749075

def root_6746361 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6746361 : CoveredBy scale carrier boxes root_6746361 := by
  apply coveredBy_split_literal root_6746361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2540.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6749075 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2540.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6749075
#print axioms cover_6746361

def root_6746356 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746356_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6746356_right_fuel : Nat := 1
def small_6746356_right_count : Nat := 1
def small_6746356_right_encoded : String := "00000001"
theorem small_6746356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6746356_right_root small_6746356_right_fuel small_6746356_right_count small_6746356_right_encoded = true := by
  decide +kernel
theorem small_6746356_right_covered : CoveredBy scale carrier boxes small_6746356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6746356_right_root small_6746356_right_fuel small_6746356_right_count small_6746356_right_encoded small_6746356_right_checked

theorem cover_6746356 : CoveredBy scale carrier boxes root_6746356 := by
  apply coveredBy_split_literal root_6746356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6746361 small_6746356_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6746361
  · exact small_6746356_right_covered
#print axioms cover_6746356

def root_6753969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6753969 : CoveredBy scale carrier boxes root_6753969 := by
  apply coveredBy_split_literal root_6753969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2543.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2544.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2543.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2544.covered
#print axioms cover_6753969

def root_6753964 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753964_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6753964_right_fuel : Nat := 1
def small_6753964_right_count : Nat := 1
def small_6753964_right_encoded : String := "00000002"
theorem small_6753964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6753964_right_root small_6753964_right_fuel small_6753964_right_count small_6753964_right_encoded = true := by
  decide +kernel
theorem small_6753964_right_covered : CoveredBy scale carrier boxes small_6753964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6753964_right_root small_6753964_right_fuel small_6753964_right_count small_6753964_right_encoded small_6753964_right_checked

theorem cover_6753964 : CoveredBy scale carrier boxes root_6753964 := by
  apply coveredBy_split_literal root_6753964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6753969 small_6753964_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6753969
  · exact small_6753964_right_covered
#print axioms cover_6753964

def root_6762663 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6762663 : CoveredBy scale carrier boxes root_6762663 := by
  apply coveredBy_split_literal root_6762663 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2546.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2547.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2546.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2547.covered
#print axioms cover_6762663

def root_6762658 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762658_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762658_right_fuel : Nat := 1
def small_6762658_right_count : Nat := 1
def small_6762658_right_encoded : String := "00000001"
theorem small_6762658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6762658_right_root small_6762658_right_fuel small_6762658_right_count small_6762658_right_encoded = true := by
  decide +kernel
theorem small_6762658_right_covered : CoveredBy scale carrier boxes small_6762658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6762658_right_root small_6762658_right_fuel small_6762658_right_count small_6762658_right_encoded small_6762658_right_checked

theorem cover_6762658 : CoveredBy scale carrier boxes root_6762658 := by
  apply coveredBy_split_literal root_6762658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6762663 small_6762658_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6762663
  · exact small_6762658_right_covered
#print axioms cover_6762658

def root_6762657 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6762657 : CoveredBy scale carrier boxes root_6762657 := by
  apply coveredBy_split_literal root_6762657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6762658 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2548.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6762658
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2548.covered
#print axioms cover_6762657

def root_6762651 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762651_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6762651_left_fuel : Nat := 1
def small_6762651_left_count : Nat := 1
def small_6762651_left_encoded : String := "00000000"
theorem small_6762651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6762651_left_root small_6762651_left_fuel small_6762651_left_count small_6762651_left_encoded = true := by
  decide +kernel
theorem small_6762651_left_covered : CoveredBy scale carrier boxes small_6762651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6762651_left_root small_6762651_left_fuel small_6762651_left_count small_6762651_left_encoded small_6762651_left_checked

theorem cover_6762651 : CoveredBy scale carrier boxes root_6762651 := by
  apply coveredBy_split_literal root_6762651 small_6762651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6762657 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6762651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6762657
#print axioms cover_6762651

def root_6761899 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761899_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761899_left_fuel : Nat := 26
def small_6761899_left_count : Nat := 355
def small_6761899_left_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878CF90000000100000005000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF90000000100000005000000040F350CFE000000040C9A87020F8750F90C9A8704000000050F878CFB000000020C9A86FC000000050F875107000000030C9A86FE000000050F8751090000000400000005000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000050F875107000000030C9A86FE000000050F8751090000000400000005000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE7712EA95000DE7CA02000000050E6014F9000000010DE7CA0400000005000000060000000012EA5900000000000DE7CA020E5FD8F90DE7CA04000000050E6014FB0000000200000005000000010E6014F9000000010DE7CA04000000050E6014FB000000020B4D43FC00000005108011070000000300000006000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878CF9000000010C9A86FE000000050F875109000000040000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF9000000010C9A86FC0000000500000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE770000000712EA5900000000000AD3577B0000000A10D101040000000200000007000000010F878CF9000000010C9A86FC0F878D070C9A86FE000000050F87510900000004067ECE770000000612EA5900000000000AD3577B0000000A00000006000000030F875107000000030C9A86FE0F878D09067ECE770000000612EA5900000000000AD3577B0000000700000006000000040F87510900000004067ECE770000000612EA5900000000000AD3577B10D13D040DE7CA020E5FD8F90B4D43FC000000060000000700000001000000060000000210D101040000000200000006000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000050F878CFB000000020C9A86FE0000000500000008000000030F350CFC000000030CFD9C090F34D0FE0C9A8704000000050F878CFB000000020C9A86FC000000050F8751070000000300000009000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE000000050F8751090000000400000005000000030F875107000000030C9A86FE000000050F87510900000004067ECE770000000812EA5900000000000AD357790000000910D101020000000100000008000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000050F87510900000004067ECE770000000612EA5900000000000AD357790000000800000006000000030F875107000000030C9A86FE0F878D09067ECE770000000612EA5900000000000AD357790000000900000006000000040F87510900000004067ECE770000000612EA5900000000000AD3577910D13D020DE7CA040E5FD8FB0B4D43FC0000000610801107000000030B4D43FE000000060000000600000002000000060000000110D101020000000100000006000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000050000000400000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC000000060F875107000000030000000600000000"
theorem small_6761899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761899_left_root small_6761899_left_fuel small_6761899_left_count small_6761899_left_encoded = true := by
  decide +kernel
theorem small_6761899_left_covered : CoveredBy scale carrier boxes small_6761899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761899_left_root small_6761899_left_fuel small_6761899_left_count small_6761899_left_encoded small_6761899_left_checked

theorem cover_6761899 : CoveredBy scale carrier boxes root_6761899 := by
  apply coveredBy_split_literal root_6761899 small_6761899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6762651 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6761899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6762651
#print axioms cover_6761899

def root_6761893 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761893_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761893_left_fuel : Nat := 1
def small_6761893_left_count : Nat := 1
def small_6761893_left_encoded : String := "00000004"
theorem small_6761893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761893_left_root small_6761893_left_fuel small_6761893_left_count small_6761893_left_encoded = true := by
  decide +kernel
theorem small_6761893_left_covered : CoveredBy scale carrier boxes small_6761893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761893_left_root small_6761893_left_fuel small_6761893_left_count small_6761893_left_encoded small_6761893_left_checked

theorem cover_6761893 : CoveredBy scale carrier boxes root_6761893 := by
  apply coveredBy_split_literal root_6761893 small_6761893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6761899 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6761893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6761899
#print axioms cover_6761893

def root_6761669 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761669_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761669_left_fuel : Nat := 14
def small_6761669_left_count : Nat := 103
def small_6761669_left_encoded : String := "120700FE045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC04548A09138670FE0000000900000004000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC04548A090000000700000005000000030F350CFC0000000300000007000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC04548A0900000009000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC00000003000000070000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A090000000700000005000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09000000071386ACFE000000040C9A86FC000000050F875107000000030000000700000004"
theorem small_6761669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761669_left_root small_6761669_left_fuel small_6761669_left_count small_6761669_left_encoded = true := by
  decide +kernel
theorem small_6761669_left_covered : CoveredBy scale carrier boxes small_6761669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761669_left_root small_6761669_left_fuel small_6761669_left_count small_6761669_left_encoded small_6761669_left_checked

theorem cover_6761669 : CoveredBy scale carrier boxes root_6761669 := by
  apply coveredBy_split_literal root_6761669 small_6761669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6761893 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6761669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6761893
#print axioms cover_6761669

def root_6761663 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761663_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6761663_left_fuel : Nat := 1
def small_6761663_left_count : Nat := 1
def small_6761663_left_encoded : String := "00000003"
theorem small_6761663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6761663_left_root small_6761663_left_fuel small_6761663_left_count small_6761663_left_encoded = true := by
  decide +kernel
theorem small_6761663_left_covered : CoveredBy scale carrier boxes small_6761663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6761663_left_root small_6761663_left_fuel small_6761663_left_count small_6761663_left_encoded small_6761663_left_checked

theorem cover_6761663 : CoveredBy scale carrier boxes root_6761663 := by
  apply coveredBy_split_literal root_6761663 small_6761663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6761669 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6761663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6761669
#print axioms cover_6761663

def root_6760811 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760811_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760811_left_fuel : Nat := 25
def small_6760811_left_count : Nat := 399
def small_6760811_left_encoded : String := "120700FC08A91309120700FE045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC04548A09138670FE0C9A87020F8750F90C9A87040F8750FB067ECE7712EA9500022A458713E1C4FC022A458913E1C4FE0B4D44020000000A00000009000000040000000500000003000000050000000000000005000000020F878CFB00000002067ECE7712EA9500022A458713E1C4FC0000000A00000003000000050000000000000005000000010F878CF9000000010C9A87040F8750FB067ECE7712EA9500022A458713E1C4FC022A458913E1C4FE00000009000000040000000500000003000000050000000000000005000000020F878CFB00000002067ECE7712EA9500022A458713E1C4FC022A458913E1C4FE0DE7CA020000000500000006000000040000000500000003000000050000000000000005000000041386ACFE000000040C9A87020F8750F90C9A8704000000050000000A000000010F878CF9000000010C9A8704000000050F878CFB0000000200000005000000031386ACFC0000000304548A09138670FE0C9A87020F8750F90C9A8704000000050F878CFB0000000200000005000000010F878CF9000000010C9A8704000000050F878CFB00000002000000050000000400000005000000020F34D1040000000204548A07138670FC04548A09138670FE0C9A87020F8750F9067ECE770000000700000005000000010F878CF900000001067ECE770000000600000005000000041386ACFE000000040C9A8702000000050F878CF90000000100000005000000031386ACFC0000000304548A09138670FE0C9A8702000000050F878CF900000001000000050000000400000005000000010F34D102000000010CFD9BFB0F350D0404548A07138670FC04548A09138670FE0C9A87040F8750FB067ECE770000000800000005000000020F878CFB00000002067ECE770000000600000005000000041386ACFE000000040C9A8704000000050F878CFB0000000200000005000000031386ACFC0000000304548A09138670FE0C9A8704000000050F878CFB00000002000000050000000400000005000000020F34D1040000000204548A0700000006000000060000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC04548A09138670FE0C9A8702000000050F878CF9000000010000000500000004000000050000000300000005000000020F34D1040000000204548A07138670FC04548A09138670FE0000000500000004000000050000000300000005000000010F34D102000000010CFD9BFB0F350D0404548A07138670FC04548A09138670FE0000000500000004000000050000000300000005000000020F34D1040000000204548A07138670FC04548A09138670FE00000005000000040000000500000003000000050000000412073CFE00000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC0000000A000000031386ACFC000000030CFD9C090F34D0FE00000005000000040000000A000000020F34D1040000000204548A070000000A1386ACFC000000030CFD9C090F34D0FE00000005000000040000000A000000010F34D102000000010CFD9BFB0F350D0404548A07000000081386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE0000000400000008000000020F34D1040000000204548A07000000081386ACFC000000030CFD9C090F34D0FE0000000500000004000000060000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D0404548A07138670FC0CFD9C090F34D0FE000000050000000400000005000000031386ACFC000000030CFD9C090F34D0FE000000050000000400000005000000020F34D1040000000204548A070000000A1386ACFC000000030CFD9C090F34D0FE000000050000000400000005000000010F34D102000000010CFD9BFB0F350D0404548A07138670FC0CFD9C090F34D0FE000000050000000400000005000000031386ACFC000000030CFD9C090F34D0FE000000050000000400000005000000020F34D1040000000204548A07138670FC0CFD9C090F34D0FE000000050000000400000008000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000050F875109000000040000000800000003"
theorem small_6760811_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760811_left_root small_6760811_left_fuel small_6760811_left_count small_6760811_left_encoded = true := by
  decide +kernel
theorem small_6760811_left_covered : CoveredBy scale carrier boxes small_6760811_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760811_left_root small_6760811_left_fuel small_6760811_left_count small_6760811_left_encoded small_6760811_left_checked

theorem cover_6760811 : CoveredBy scale carrier boxes root_6760811 := by
  apply coveredBy_split_literal root_6760811 small_6760811_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6761663 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6760811_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6761663
#print axioms cover_6760811

def root_6760806 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760806_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760806_right_fuel : Nat := 1
def small_6760806_right_count : Nat := 1
def small_6760806_right_encoded : String := "00000002"
theorem small_6760806_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760806_right_root small_6760806_right_fuel small_6760806_right_count small_6760806_right_encoded = true := by
  decide +kernel
theorem small_6760806_right_covered : CoveredBy scale carrier boxes small_6760806_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760806_right_root small_6760806_right_fuel small_6760806_right_count small_6760806_right_encoded small_6760806_right_checked

theorem cover_6760806 : CoveredBy scale carrier boxes root_6760806 := by
  apply coveredBy_split_literal root_6760806 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760811 small_6760806_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760811
  · exact small_6760806_right_covered
#print axioms cover_6760806

def root_6760805 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760805_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760805_right_fuel : Nat := 29
def small_6760805_right_count : Nat := 433
def small_6760805_right_encoded : String := "120701040000000208A91307120700FC08A91309120700FE045489F71386AD000CFD9BF90F350D02045489FB1386AD0404548A07138670FC04548A0900000006000000050000000300000005000000020000000600000001000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD0404548A07138670FC0000000500000003000000050000000200000005000000010F34D10200000001000000060000000412073CFE00000004045489F71386AD000CFD9BF90F350D02045489FB1386AD0404548A070000000A1386ACFC000000030CFD9C090F34D0FE00000005000000040000000A00000002138671040000000204548A070000000A00000006000000010F34D10200000001000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD0404548A07000000091386ACFC000000030CFD9C090F34D0FE00000005000000040000000500000002138671040000000204548A070000000900000005000000010F34D10200000001045489FB1386AD0404548A07000000091386ACFC000000030CFD9C090F34D0FE000000050000000400000006000000021386710400000002000000060000000312073CFC0000000308A91309120700FE045489F71386AD000CFD9BF90F350D02045489FB0000000700000007000000010F34D10200000001000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC00000005000000030F350CFC00000003000000070000000213867104000000020CFD9C070000000700000005000000010F34D10200000001045489FB1386AD040CFD9C070F34D0FC00000005000000030F350CFC0000000300000007000000021386710400000002000000060000000412073CFE00000004045489F71386AD000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020000000500000006000000030F350CFC000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE000000050F8751090000000400000006000000030F8751070000000300000007000000010F878CF900000001000000060000000213867104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000700000006000000010F34D10200000001045489FB1386AD040CFD9C070F34D0FC00000006000000030000000600000002000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878CF9000000010C9A86FE0000000500000009000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF9000000010C9A86FC0000000500000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE000000050F875109000000040000000A000000030F875107000000030C9A86FE0F878D0900000007000000040F87510900000004022A45770000000713E1C50000000000067ECE7B12EA95040B4D44020000000A10804CF9000000010B4D43FC0000000A000000070000000212EA59040000000200000007000000010F878CF9000000010C9A86FC0F878D070C9A86FE000000060F87510900000004022A45770000000613E1C50000000000067ECE7B0000000900000006000000030F875107000000030C9A86FE0F878D09022A45770000000613E1C50000000000067ECE7B0000000700000006000000040F87510900000004022A45770000000613E1C50000000000067ECE7B12EA95040DE7CA020E5FD8F90B4D43FC0000000600000007000000010E6014F900000001000000060000000212EA590400000002000000060000000213867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020000000A00000006000000030F350CFC000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE000000060F8751090000000400000009000000030F875107000000030C9A86FE0000000700000007000000010F878CF9000000010C9A86FC000000060F8751070000000300000006000000010F34D10200000001045489FB1386AD040CFD9C070F34D0FC0CFD9C090F34D0FE000000050000000400000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC000000060F87510700000003000000060000000213867104000000020CFD9C070F34D0FC000000060000000300000006"
theorem small_6760805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760805_right_root small_6760805_right_fuel small_6760805_right_count small_6760805_right_encoded = true := by
  decide +kernel
theorem small_6760805_right_covered : CoveredBy scale carrier boxes small_6760805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760805_right_root small_6760805_right_fuel small_6760805_right_count small_6760805_right_encoded small_6760805_right_checked

theorem cover_6760805 : CoveredBy scale carrier boxes root_6760805 := by
  apply coveredBy_split_literal root_6760805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760806 small_6760805_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760806
  · exact small_6760805_right_covered
#print axioms cover_6760805

def root_6760800 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760800_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760800_right_fuel : Nat := 1
def small_6760800_right_count : Nat := 1
def small_6760800_right_encoded : String := "00000001"
theorem small_6760800_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760800_right_root small_6760800_right_fuel small_6760800_right_count small_6760800_right_encoded = true := by
  decide +kernel
theorem small_6760800_right_covered : CoveredBy scale carrier boxes small_6760800_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760800_right_root small_6760800_right_fuel small_6760800_right_count small_6760800_right_encoded small_6760800_right_checked

theorem cover_6760800 : CoveredBy scale carrier boxes root_6760800 := by
  apply coveredBy_split_literal root_6760800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760805 small_6760800_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760805
  · exact small_6760800_right_covered
#print axioms cover_6760800

def root_6760799 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760799_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760799_right_fuel : Nat := 31
def small_6760799_right_count : Nat := 477
def small_6760799_right_encoded : String := "120701020000000108A912FB12073D0408A91307120700FC08A91309120700FE045489F71386AD00045489F91386AD020CFD9BFB0F350D0404548A07138670FC04548A090000000600000005000000030000000500000002000000060000000100000006000000001386710000000000045489F91386AD020CFD9BFB0F350D0404548A07138670FC00000005000000030000000500000002000000050000000113867102000000010CFD9BFB0F350D040000000500000002000000050000000412073CFE00000004045489F71386AD00045489F91386AD020CFD9BFB0F350D040000000800000002000000080000000100000008000000001386710000000000045489F91386AD020CFD9BFB0F350D0404548A07000000081386ACFC000000030CFD9C090F34D0FE000000050000000400000005000000020F34D1040000000204548A07000000081386ACFC000000030CFD9C090F34D0FE0000000500000004000000060000000113867102000000010CFD9BFB0F350D0404548A07000000080000000500000002000000080000000312073CFC0000000308A91309120700FE045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D10400000002000000060000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0000000500000003000000060000000200000006000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000009000000020F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030000000A0000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000005000000020F34D10400000002000000060000000412073CFE00000004045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE0000000400000008000000030F350CFC000000030CFD9C090F34D0FE0C9A87040000000500000006000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D0700000008000000030F875107000000030C9A86FE0000000600000008000000020F878CFB0000000200000006000000020F34D104000000020CFD9C070F34D0FC0000000600000003000000060000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE000000060000000400000006000000020F34D1040000000200000006000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8704000000050F878CFB000000020C9A86FE0000000500000008000000030F350CFC000000030CFD9C090F34D0FE0C9A8704000000050F878CFB000000020C9A86FC000000050000000A000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE000000050F8751090000000400000008000000030F875107000000030C9A86FE000000090F87510900000004022A45770000000813E1C50000000000067ECE7912EA95020B4D44040000000910804CFB000000020B4D43FC00000008000000080000000112EA59020000000100000008000000020F878CFB000000020C9A86FC0F878D070C9A86FE000000060F87510900000004022A45770000000613E1C50000000000067ECE790000000800000006000000030F875107000000030C9A86FE0F878D09022A45770000000613E1C50000000000067ECE790000000A00000006000000040F87510900000004022A45770000000613E1C50000000000067ECE7912EA95020DE7CA040E5FD8FB0B4D43FC000000060000000A000000020E6014FB00000002000000060000000112EA59020000000100000006000000020F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000050000000400000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FC000000060F87510700000003000000060000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE0000000400000008000000030F350CFC000000030CFD9C090F34D0FE0C9A87040000000900000006000000040F350CFE000000040C9A87040F8750FB0C9A86FC0F878D070C9A86FE0000000600000008000000030F875107000000030C9A86FE0F878D0900000009000000040F8751090000000400000008000000020F878CFB000000020C9A86FC000000060F8751070000000300000006000000020F34D104000000020CFD9C070F34D0FC00000006000000030000000600000002120701040000000208A91307120700FC08A91309120700FE0000000600000004000000060000000312073CFC0000000308A91309120700FE000000060000000412073CFE00000004045489F7000000061386710000000000045489F91386AD02045489FB1386AD040CFD9C070F34D0FC00000006000000030000000600000002000000060000000100000006"
theorem small_6760799_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760799_right_root small_6760799_right_fuel small_6760799_right_count small_6760799_right_encoded = true := by
  decide +kernel
theorem small_6760799_right_covered : CoveredBy scale carrier boxes small_6760799_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760799_right_root small_6760799_right_fuel small_6760799_right_count small_6760799_right_encoded small_6760799_right_checked

theorem cover_6760799 : CoveredBy scale carrier boxes root_6760799 := by
  apply coveredBy_split_literal root_6760799 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760800 small_6760799_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760800
  · exact small_6760799_right_covered
#print axioms cover_6760799

def root_6760793 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760793_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6760793_left_fuel : Nat := 1
def small_6760793_left_count : Nat := 1
def small_6760793_left_encoded : String := "00000000"
theorem small_6760793_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6760793_left_root small_6760793_left_fuel small_6760793_left_count small_6760793_left_encoded = true := by
  decide +kernel
theorem small_6760793_left_covered : CoveredBy scale carrier boxes small_6760793_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6760793_left_root small_6760793_left_fuel small_6760793_left_count small_6760793_left_encoded small_6760793_left_checked

theorem cover_6760793 : CoveredBy scale carrier boxes root_6760793 := by
  apply coveredBy_split_literal root_6760793 small_6760793_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760799 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6760793_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760799
#print axioms cover_6760793

def root_6758911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6758911 : CoveredBy scale carrier boxes root_6758911 := by
  apply coveredBy_split_literal root_6758911 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2545.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6760793 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2545.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6760793
#print axioms cover_6758911

def root_6758906 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758906_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758906_right_fuel : Nat := 1
def small_6758906_right_count : Nat := 1
def small_6758906_right_encoded : String := "00000004"
theorem small_6758906_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6758906_right_root small_6758906_right_fuel small_6758906_right_count small_6758906_right_encoded = true := by
  decide +kernel
theorem small_6758906_right_covered : CoveredBy scale carrier boxes small_6758906_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6758906_right_root small_6758906_right_fuel small_6758906_right_count small_6758906_right_encoded small_6758906_right_checked

theorem cover_6758906 : CoveredBy scale carrier boxes root_6758906 := by
  apply coveredBy_split_literal root_6758906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6758911 small_6758906_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6758911
  · exact small_6758906_right_covered
#print axioms cover_6758906

def root_6771591 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771591_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771591_left_fuel : Nat := 22
def small_6771591_left_count : Nat := 157
def small_6771591_left_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0C9A86FC000000050F875107000000030000000A000000020000000A000000010F878CF9000000010C9A87040F8750FB0C9A86FC0F878D0700000008000000030F87510700000003078000FE128A7D09067ECE770000000812EA5900000000000DE7CA0200000005000000080000000400000008000000020F878CFB000000020C9A86FC0F878D070000000A000000030F87510700000003078000FE128A7D09067ECE7712EA9500000000080000000012EA5900000000000DE7CA020E5FD8F90DE7CA040E5FD8FB0000000A000000020000000A000000010E6014F9000000010000000800000004128A41090000000400000008000000020F34D104000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90000000A000000010F878CF9000000010C9A86FC0F878D070000000A000000030F87510700000003078000FE128A7D09067ECE7712EA9500000000060000000012EA5900000000000AD3577B10D13D040DE7CA020000000A0E6014F900000001000000060000000210D10104000000020000000600000004128A410900000004067ECE770000000812EA59000000000000000008000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A8704000000080F878CFB000000020C9A86FC0000000800000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A86FC0F878D0700000008000000030F87510700000003078000FE000000060000000800000000"
theorem small_6771591_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771591_left_root small_6771591_left_fuel small_6771591_left_count small_6771591_left_encoded = true := by
  decide +kernel
theorem small_6771591_left_covered : CoveredBy scale carrier boxes small_6771591_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771591_left_root small_6771591_left_fuel small_6771591_left_count small_6771591_left_encoded small_6771591_left_checked

theorem cover_6771591 : CoveredBy scale carrier boxes root_6771591 := by
  apply coveredBy_split_literal root_6771591 small_6771591_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2549.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6771591_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2549.covered
#print axioms cover_6771591

def root_6771586 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771586_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771586_right_fuel : Nat := 1
def small_6771586_right_count : Nat := 1
def small_6771586_right_encoded : String := "00000004"
theorem small_6771586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771586_right_root small_6771586_right_fuel small_6771586_right_count small_6771586_right_encoded = true := by
  decide +kernel
theorem small_6771586_right_covered : CoveredBy scale carrier boxes small_6771586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771586_right_root small_6771586_right_fuel small_6771586_right_count small_6771586_right_encoded small_6771586_right_checked

theorem cover_6771586 : CoveredBy scale carrier boxes root_6771586 := by
  apply coveredBy_split_literal root_6771586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771591 small_6771586_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771591
  · exact small_6771586_right_covered
#print axioms cover_6771586

def root_6771585 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771585_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771585_right_fuel : Nat := 21
def small_6771585_right_count : Nat := 103
def small_6771585_right_encoded : String := "135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87020F8750F90000000A0000000100000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A87020000000A00000008000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0000000A000000020000000A000000010F878CF9000000010C9A87040F8750FB0C9A86FC0000000800000008000000020F878CFB000000020C9A86FC0000000A0F87510700000003028000FE13D7ED09022A45770000000813E1C500000000000DE7CA0200000009000000080000000400000005000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A8702000000090F878CF90000000100000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000080F350CFC0000000300000008000000020F34D1040000000200000009"
theorem small_6771585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771585_right_root small_6771585_right_fuel small_6771585_right_count small_6771585_right_encoded = true := by
  decide +kernel
theorem small_6771585_right_covered : CoveredBy scale carrier boxes small_6771585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771585_right_root small_6771585_right_fuel small_6771585_right_count small_6771585_right_encoded small_6771585_right_checked

theorem cover_6771585 : CoveredBy scale carrier boxes root_6771585 := by
  apply coveredBy_split_literal root_6771585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771586 small_6771585_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771586
  · exact small_6771585_right_covered
#print axioms cover_6771585

def root_6771579 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771579_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771579_left_fuel : Nat := 1
def small_6771579_left_count : Nat := 1
def small_6771579_left_encoded : String := "00000003"
theorem small_6771579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771579_left_root small_6771579_left_fuel small_6771579_left_count small_6771579_left_encoded = true := by
  decide +kernel
theorem small_6771579_left_covered : CoveredBy scale carrier boxes small_6771579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771579_left_root small_6771579_left_fuel small_6771579_left_count small_6771579_left_encoded small_6771579_left_checked

theorem cover_6771579 : CoveredBy scale carrier boxes root_6771579 := by
  apply coveredBy_split_literal root_6771579 small_6771579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771585 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6771579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771585
#print axioms cover_6771579

def root_6771533 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771533_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771533_left_fuel : Nat := 8
def small_6771533_left_count : Nat := 21
def small_6771533_left_encoded : String := "120700FC050000FE135D8109045489F71386AD000CFD9BF90000000A000000080000000013867100000000000CFD9BF90000000A0F34D102000000010000000800000004135D4509000000040000000800000003"
theorem small_6771533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771533_left_root small_6771533_left_fuel small_6771533_left_count small_6771533_left_encoded = true := by
  decide +kernel
theorem small_6771533_left_covered : CoveredBy scale carrier boxes small_6771533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771533_left_root small_6771533_left_fuel small_6771533_left_count small_6771533_left_encoded small_6771533_left_checked

theorem cover_6771533 : CoveredBy scale carrier boxes root_6771533 := by
  apply coveredBy_split_literal root_6771533 small_6771533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771579 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6771533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771579
#print axioms cover_6771533

def root_6771528 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771528_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771528_right_fuel : Nat := 1
def small_6771528_right_count : Nat := 1
def small_6771528_right_encoded : String := "00000002"
theorem small_6771528_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771528_right_root small_6771528_right_fuel small_6771528_right_count small_6771528_right_encoded = true := by
  decide +kernel
theorem small_6771528_right_covered : CoveredBy scale carrier boxes small_6771528_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771528_right_root small_6771528_right_fuel small_6771528_right_count small_6771528_right_encoded small_6771528_right_checked

theorem cover_6771528 : CoveredBy scale carrier boxes root_6771528 := by
  apply coveredBy_split_literal root_6771528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771533 small_6771528_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771533
  · exact small_6771528_right_covered
#print axioms cover_6771528

def root_6771527 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771527_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771527_right_fuel : Nat := 23
def small_6771527_right_count : Nat := 193
def small_6771527_right_encoded : String := "120701040000000208A91307120700FC050000FE135D8109045489F7000000080000000900000004000000090000000312073CFC00000003050000FE135D8109045489F71386AD000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A87020F8750F90000000A000000010F878CF9000000010C9A86FC000000060F87510700000003078000FE00000006000000060000000213867104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87020F8750F90C9A86FC000000060F87510700000003078000FE00000006000000060000000100000006000000010F34D10200000001045489FB1386AD040CFD9C07000000080000000600000002000000060000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A86FC0000000A0F87510700000003078000FE128A7D09022A45770000000A000000090000000400000009000000010F878CF9000000010C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09022A457713E20100067ECE7B0000000600000006000000000000000900000004000000050000000213867104000000020CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A86FC000000090F87510700000003078000FE128A7D09000000090000000400000005000000010F878CF90000000100000009000000010F34D10200000001045489FB1386AD040CFD9C07000000090F350CFC000000030C9A86FC0F878D070000000900000003000000050000000213867104000000020000000900000004135D450900000004045489F71386AD000CFD9BF90F350D02045489FB1386AD040CFD9C07000000080F350CFC000000030C9A870200000009000000080000000213867104000000020CFD9C07000000080F350CFC000000030C9A87020000000900000005000000010F34D10200000001000000080000000013867100000000000CFD9BF90F350D02000000090000000100000009"
theorem small_6771527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771527_right_root small_6771527_right_fuel small_6771527_right_count small_6771527_right_encoded = true := by
  decide +kernel
theorem small_6771527_right_covered : CoveredBy scale carrier boxes small_6771527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771527_right_root small_6771527_right_fuel small_6771527_right_count small_6771527_right_encoded small_6771527_right_checked

theorem cover_6771527 : CoveredBy scale carrier boxes root_6771527 := by
  apply coveredBy_split_literal root_6771527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771528 small_6771527_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771528
  · exact small_6771527_right_covered
#print axioms cover_6771527

def root_6771522 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771522_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771522_right_fuel : Nat := 1
def small_6771522_right_count : Nat := 1
def small_6771522_right_encoded : String := "00000001"
theorem small_6771522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771522_right_root small_6771522_right_fuel small_6771522_right_count small_6771522_right_encoded = true := by
  decide +kernel
theorem small_6771522_right_covered : CoveredBy scale carrier boxes small_6771522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771522_right_root small_6771522_right_fuel small_6771522_right_count small_6771522_right_encoded small_6771522_right_checked

theorem cover_6771522 : CoveredBy scale carrier boxes root_6771522 := by
  apply coveredBy_split_literal root_6771522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771527 small_6771522_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771527
  · exact small_6771522_right_covered
#print axioms cover_6771522

def root_6771521 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771521_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771521_right_fuel : Nat := 19
def small_6771521_right_count : Nat := 93
def small_6771521_right_encoded : String := "120701020000000108A912FB12073D0408A913070000000812073CFC00000003050000FE135D8109045489F71386AD00045489F91386AD020CFD9BFB0F350D040000000800000002000000080000000100000008000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A8704000000080F878CFB000000020C9A86FC0000000800000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A86FC00000008000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000080F350CFC0000000300000008000000020000000800000004135D450900000004045489F7000000081386710000000000045489F9000000080000000800000002120701040000000208A913070000000812073CFC00000003050000FE135D8109045489F7000000061386710000000000045489F91386AD02045489FB000000090000000600000001000000060000000400000005"
theorem small_6771521_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771521_right_root small_6771521_right_fuel small_6771521_right_count small_6771521_right_encoded = true := by
  decide +kernel
theorem small_6771521_right_covered : CoveredBy scale carrier boxes small_6771521_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771521_right_root small_6771521_right_fuel small_6771521_right_count small_6771521_right_encoded small_6771521_right_checked

theorem cover_6771521 : CoveredBy scale carrier boxes root_6771521 := by
  apply coveredBy_split_literal root_6771521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771522 small_6771521_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771522
  · exact small_6771521_right_covered
#print axioms cover_6771521

def root_6771515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771515_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771515_left_fuel : Nat := 1
def small_6771515_left_count : Nat := 1
def small_6771515_left_encoded : String := "00000000"
theorem small_6771515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771515_left_root small_6771515_left_fuel small_6771515_left_count small_6771515_left_encoded = true := by
  decide +kernel
theorem small_6771515_left_covered : CoveredBy scale carrier boxes small_6771515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771515_left_root small_6771515_left_fuel small_6771515_left_count small_6771515_left_encoded small_6771515_left_checked

theorem cover_6771515 : CoveredBy scale carrier boxes root_6771515 := by
  apply coveredBy_split_literal root_6771515 small_6771515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771521 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6771515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771521
#print axioms cover_6771515

def root_6771065 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771065_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771065_left_fuel : Nat := 22
def small_6771065_left_count : Nat := 209
def small_6771065_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91307120700FC050000FE00000008000000080000000312073CFC00000003050000FE135D81090CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87000000000800000008000000020F34D104000000020CFD9C07000000080F350CFC000000030C9A87000000000600000008000000010F34D1020000000100000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0000000A000000020000000A000000010F878CF9000000010C9A8704000000080F878CFB0000000200000008000000020F34D104000000020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87020F8750F90000000A000000010F878CF9000000010C9A86FC0000000600000008000000010F34D102000000010CFD9BFB0F350D0400000008000000020000000800000004135D4509000000040CFD9BF70F350D0000000008000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D04000000080000000200000008000000010F34D102000000010000000800000002120701040000000208A91307120700FC050000FE135D81090CFD9BF7000000060F34D100000000000000000800000004135D4509000000040CFD9BF700000006000000090000000312073CFC00000003050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90F350D02045489FB1386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87020F8750F90000000A000000010000000600000002138671040000000200000006000000010F34D102000000010000000600000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D02045489FB00000008000000060000000100000006000000000F34D100000000000CFD9BF9000000080000000800000001120701020000000108A912FB12073D0408A913070000000812073CFC00000003050000FE135D81090CFD9BF7000000060F34D1000000000000000008000000040000000800000002120701040000000208A91307000000080000000600000000"
theorem small_6771065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771065_left_root small_6771065_left_fuel small_6771065_left_count small_6771065_left_encoded = true := by
  decide +kernel
theorem small_6771065_left_covered : CoveredBy scale carrier boxes small_6771065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771065_left_root small_6771065_left_fuel small_6771065_left_count small_6771065_left_encoded small_6771065_left_checked

theorem cover_6771065 : CoveredBy scale carrier boxes root_6771065 := by
  apply coveredBy_split_literal root_6771065 small_6771065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771515 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6771065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771515
#print axioms cover_6771065

def root_6771059 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771059_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6771059_left_fuel : Nat := 1
def small_6771059_left_count : Nat := 1
def small_6771059_left_encoded : String := "00000004"
theorem small_6771059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6771059_left_root small_6771059_left_fuel small_6771059_left_count small_6771059_left_encoded = true := by
  decide +kernel
theorem small_6771059_left_covered : CoveredBy scale carrier boxes small_6771059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6771059_left_root small_6771059_left_fuel small_6771059_left_count small_6771059_left_encoded small_6771059_left_checked

theorem cover_6771059 : CoveredBy scale carrier boxes root_6771059 := by
  apply coveredBy_split_literal root_6771059 small_6771059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771065 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6771059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771065
#print axioms cover_6771059

def root_6758905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6758905 : CoveredBy scale carrier boxes root_6758905 := by
  apply coveredBy_split_literal root_6758905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6758906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6771059 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6758906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6771059
#print axioms cover_6758905

def root_6758900 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758900_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6758900_right_fuel : Nat := 1
def small_6758900_right_count : Nat := 1
def small_6758900_right_encoded : String := "00000003"
theorem small_6758900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6758900_right_root small_6758900_right_fuel small_6758900_right_count small_6758900_right_encoded = true := by
  decide +kernel
theorem small_6758900_right_covered : CoveredBy scale carrier boxes small_6758900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6758900_right_root small_6758900_right_fuel small_6758900_right_count small_6758900_right_encoded small_6758900_right_checked

theorem cover_6758900 : CoveredBy scale carrier boxes root_6758900 := by
  apply coveredBy_split_literal root_6758900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6758905 small_6758900_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6758905
  · exact small_6758900_right_covered
#print axioms cover_6758900

def root_6776363 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776363_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776363_left_fuel : Nat := 21
def small_6776363_left_count : Nat := 163
def small_6776363_left_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000050F8751090000000400000009000000020F878CFB000000020C9A86FE0F878D0900000007000000040F87510900000004078000FC128A7D07067ECE770000000712EA5900000000000B4D44020000000510804CF9000000010DE7CA0400000005000000070000000300000007000000010F878CF9000000010C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07067ECE7712EA9500000000070000000012EA5900000000000DE7CA020E5FD8F90DE7CA040000000900000007000000010E6014F9000000010DE7CA04000000090000000700000003128A41070000000300000007000000020F34D104000000020CFD9C09000000070F350CFE000000040C9A8702000000070F878CF9000000010C9A86FE0000000700000007000000010F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07067ECE7712EA9500000000060000000012EA5900000000000AD3577910D13D020DE7CA04000000090E6014FB00000002000000060000000110D10102000000010000000600000003128A410700000003067ECE770000000712EA59000000000000000007000000020F34D104000000020CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F87510900000004078000FC000000060000000700000000"
theorem small_6776363_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776363_left_root small_6776363_left_fuel small_6776363_left_count small_6776363_left_encoded = true := by
  decide +kernel
theorem small_6776363_left_covered : CoveredBy scale carrier boxes small_6776363_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776363_left_root small_6776363_left_fuel small_6776363_left_count small_6776363_left_encoded small_6776363_left_checked

theorem cover_6776363 : CoveredBy scale carrier boxes root_6776363 := by
  apply coveredBy_split_literal root_6776363 small_6776363_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2550.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6776363_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2550.covered
#print axioms cover_6776363

def root_6776358 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776358_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776358_right_fuel : Nat := 1
def small_6776358_right_count : Nat := 1
def small_6776358_right_encoded : String := "00000003"
theorem small_6776358_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776358_right_root small_6776358_right_fuel small_6776358_right_count small_6776358_right_encoded = true := by
  decide +kernel
theorem small_6776358_right_covered : CoveredBy scale carrier boxes small_6776358_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776358_right_root small_6776358_right_fuel small_6776358_right_count small_6776358_right_encoded small_6776358_right_checked

theorem cover_6776358 : CoveredBy scale carrier boxes root_6776358 := by
  apply coveredBy_split_literal root_6776358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776363 small_6776358_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776363
  · exact small_6776358_right_covered
#print axioms cover_6776358

def root_6776357 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776357_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776357_right_fuel : Nat := 21
def small_6776357_right_count : Nat := 115
def small_6776357_right_encoded : String := "135D450700000003045489F71386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87020F8750F90C9A87040000000900000007000000010F878CF9000000010C9A87040000000900000007000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87040000000900000007000000020F34D10400000002000000070000000013867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0000000700000007000000010F878CF9000000010C9A8704000000090F878CFB000000020C9A86FE000000090F87510900000004028000FC13D7ED07022A45770000000713E1C500000000000DE7CA02000000070000000A0000000300000005000000020F34D104000000020CFD9C09000000070F350CFE0000000400000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000090F350CFE000000040C9A8704000000090F878CFB000000020000000A000000020F34D104000000020000000A"
theorem small_6776357_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776357_right_root small_6776357_right_fuel small_6776357_right_count small_6776357_right_encoded = true := by
  decide +kernel
theorem small_6776357_right_covered : CoveredBy scale carrier boxes small_6776357_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776357_right_root small_6776357_right_fuel small_6776357_right_count small_6776357_right_encoded small_6776357_right_checked

theorem cover_6776357 : CoveredBy scale carrier boxes root_6776357 := by
  apply coveredBy_split_literal root_6776357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776358 small_6776357_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776358
  · exact small_6776357_right_covered
#print axioms cover_6776357

def root_6776351 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776351_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776351_left_fuel : Nat := 1
def small_6776351_left_count : Nat := 1
def small_6776351_left_encoded : String := "00000004"
theorem small_6776351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776351_left_root small_6776351_left_fuel small_6776351_left_count small_6776351_left_encoded = true := by
  decide +kernel
theorem small_6776351_left_covered : CoveredBy scale carrier boxes small_6776351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776351_left_root small_6776351_left_fuel small_6776351_left_count small_6776351_left_encoded small_6776351_left_checked

theorem cover_6776351 : CoveredBy scale carrier boxes root_6776351 := by
  apply coveredBy_split_literal root_6776351 small_6776351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776357 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6776351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776357
#print axioms cover_6776351

def root_6776305 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776305_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776305_left_fuel : Nat := 8
def small_6776305_left_count : Nat := 21
def small_6776305_left_encoded : String := "120700FE050000FC135D8107045489F71386AD000CFD9BF900000009000000070000000013867100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030000000700000004"
theorem small_6776305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776305_left_root small_6776305_left_fuel small_6776305_left_count small_6776305_left_encoded = true := by
  decide +kernel
theorem small_6776305_left_covered : CoveredBy scale carrier boxes small_6776305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776305_left_root small_6776305_left_fuel small_6776305_left_count small_6776305_left_encoded small_6776305_left_checked

theorem cover_6776305 : CoveredBy scale carrier boxes root_6776305 := by
  apply coveredBy_split_literal root_6776305 small_6776305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776351 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6776305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776351
#print axioms cover_6776305

def root_6776300 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776300_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776300_right_fuel : Nat := 1
def small_6776300_right_count : Nat := 1
def small_6776300_right_encoded : String := "00000002"
theorem small_6776300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776300_right_root small_6776300_right_fuel small_6776300_right_count small_6776300_right_encoded = true := by
  decide +kernel
theorem small_6776300_right_covered : CoveredBy scale carrier boxes small_6776300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776300_right_root small_6776300_right_fuel small_6776300_right_count small_6776300_right_encoded small_6776300_right_checked

theorem cover_6776300 : CoveredBy scale carrier boxes root_6776300 := by
  apply coveredBy_split_literal root_6776300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776305 small_6776300_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776305
  · exact small_6776300_right_covered
#print axioms cover_6776300

def root_6776299 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776299_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776299_right_fuel : Nat := 17
def small_6776299_right_count : Nat := 71
def small_6776299_right_encoded : String := "120701040000000208A913090000000712073CFE00000004050000FC135D8107045489F71386AD000CFD9BF90F350D02045489FB000000070000000700000001000000070000000013867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C09000000070F350CFE000000040C9A8702000000070F878CF9000000010C9A86FE00000007000000070000000213867104000000020CFD9C09000000070F350CFE0000000400000007000000010F34D10200000001045489FB1386AD040CFD9C09000000070F350CFE000000040C9A86FE00000007000000050000000213867104000000020000000700000003135D450700000003045489F70000000713867100000000000CFD9BF90F350D02000000070000000100000007"
theorem small_6776299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776299_right_root small_6776299_right_fuel small_6776299_right_count small_6776299_right_encoded = true := by
  decide +kernel
theorem small_6776299_right_covered : CoveredBy scale carrier boxes small_6776299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776299_right_root small_6776299_right_fuel small_6776299_right_count small_6776299_right_encoded small_6776299_right_checked

theorem cover_6776299 : CoveredBy scale carrier boxes root_6776299 := by
  apply coveredBy_split_literal root_6776299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776300 small_6776299_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776300
  · exact small_6776299_right_covered
#print axioms cover_6776299

def root_6776294 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776294_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776294_right_fuel : Nat := 1
def small_6776294_right_count : Nat := 1
def small_6776294_right_encoded : String := "00000001"
theorem small_6776294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776294_right_root small_6776294_right_fuel small_6776294_right_count small_6776294_right_encoded = true := by
  decide +kernel
theorem small_6776294_right_covered : CoveredBy scale carrier boxes small_6776294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776294_right_root small_6776294_right_fuel small_6776294_right_count small_6776294_right_encoded small_6776294_right_checked

theorem cover_6776294 : CoveredBy scale carrier boxes root_6776294 := by
  apply coveredBy_split_literal root_6776294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776299 small_6776294_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776299
  · exact small_6776294_right_covered
#print axioms cover_6776294

def root_6776293 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776293_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776293_right_fuel : Nat := 25
def small_6776293_right_count : Nat := 231
def small_6776293_right_encoded : String := "120701020000000108A912FB12073D0408A91309120700FE050000FC135D8107045489F7000000070000000A000000030000000A0000000412073CFE00000004050000FC135D8107045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE000000060F87510900000004078000FC0000000600000006000000020F34D104000000020CFD9C0900000007000000060000000113867102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87040F8750FB0C9A86FE000000060F87510900000004078000FC00000006000000060000000200000006000000020F34D1040000000200000006000000001386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE000000090F87510900000004078000FC128A7D07022A4577000000090000000A000000030000000A000000020F878CFB000000020C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A457713E20100067ECE790000000600000006000000000000000A0000000300000005000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050000000113867102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE000000090F87510900000004078000FC128A7D070000000A0000000300000005000000020F878CFB000000020000000A000000020F34D104000000020000000A00000003135D450700000003045489F71386AD00045489F91386AD020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A87040000000900000007000000020F34D10400000002000000070000000113867102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870400000009000000050000000200000007000000001386710000000000045489F91386AD020CFD9BFB0F350D040000000A000000020000000A0000000113867102000000010000000A00000002120701040000000208A913090000000712073CFE00000004050000FC135D8107045489F7000000061386710000000000045489F91386AD02045489FB1386AD040000000A000000020000000600000001000000060000000300000005"
theorem small_6776293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776293_right_root small_6776293_right_fuel small_6776293_right_count small_6776293_right_encoded = true := by
  decide +kernel
theorem small_6776293_right_covered : CoveredBy scale carrier boxes small_6776293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776293_right_root small_6776293_right_fuel small_6776293_right_count small_6776293_right_encoded small_6776293_right_checked

theorem cover_6776293 : CoveredBy scale carrier boxes root_6776293 := by
  apply coveredBy_split_literal root_6776293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776294 small_6776293_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776294
  · exact small_6776293_right_covered
#print axioms cover_6776293

def root_6776287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776287_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6776287_left_fuel : Nat := 1
def small_6776287_left_count : Nat := 1
def small_6776287_left_encoded : String := "00000000"
theorem small_6776287_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6776287_left_root small_6776287_left_fuel small_6776287_left_count small_6776287_left_encoded = true := by
  decide +kernel
theorem small_6776287_left_covered : CoveredBy scale carrier boxes small_6776287_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6776287_left_root small_6776287_left_fuel small_6776287_left_count small_6776287_left_encoded small_6776287_left_checked

theorem cover_6776287 : CoveredBy scale carrier boxes root_6776287 := by
  apply coveredBy_split_literal root_6776287 small_6776287_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776293 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6776287_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776293
#print axioms cover_6776287

def root_6775827 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775827_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775827_left_fuel : Nat := 22
def small_6775827_left_count : Nat := 215
def small_6775827_left_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91309120700FE050000FC00000007000000070000000412073CFE00000004050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870000000007000000070000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C09000000070F350CFE000000040C9A870000000006000000070000000200000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB000000090000000200000007000000010F878CF9000000010C9A87040F8750FB00000009000000020F878CFB0000000200000007000000020F34D1040000000200000007000000010F34D102000000010CFD9BFB0F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F8750FB00000009000000020F878CFB000000020C9A86FE0000000600000007000000020F34D104000000020000000700000003135D4507000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9BF90F350D020CFD9BFB0000000700000007000000010F34D102000000010CFD9BFB000000070000000700000002120701040000000208A913090000000712073CFE00000004050000FC135D81070CFD9BF7000000060F34D1000000000000000007000000030000000700000001120701020000000108A912FB12073D0408A91309120700FE050000FC135D81070CFD9BF7000000060F34D100000000000000000700000003135D4507000000030CFD9BF7000000060000000A0000000412073CFE00000004050000FC135D81070CFD9BF7000000060F34D10000000000045489F91386AD020CFD9BFB0F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87040F8750FB000000090000000200000006000000020F34D10400000002000000060000000113867102000000010000000600000003135D4507000000030CFD9BF70F350D00045489F90000000700000006000000000F34D10000000000045489F91386AD020CFD9BFB0000000700000007000000010000000700000002120701040000000208A91309000000070000000600000000"
theorem small_6775827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775827_left_root small_6775827_left_fuel small_6775827_left_count small_6775827_left_encoded = true := by
  decide +kernel
theorem small_6775827_left_covered : CoveredBy scale carrier boxes small_6775827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775827_left_root small_6775827_left_fuel small_6775827_left_count small_6775827_left_encoded small_6775827_left_checked

theorem cover_6775827 : CoveredBy scale carrier boxes root_6775827 := by
  apply coveredBy_split_literal root_6775827 small_6775827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6776287 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6775827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6776287
#print axioms cover_6775827

def root_6775822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775822_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6775822_right_fuel : Nat := 1
def small_6775822_right_count : Nat := 1
def small_6775822_right_encoded : String := "00000004"
theorem small_6775822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6775822_right_root small_6775822_right_fuel small_6775822_right_count small_6775822_right_encoded = true := by
  decide +kernel
theorem small_6775822_right_covered : CoveredBy scale carrier boxes small_6775822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6775822_right_root small_6775822_right_fuel small_6775822_right_count small_6775822_right_encoded small_6775822_right_checked

theorem cover_6775822 : CoveredBy scale carrier boxes root_6775822 := by
  apply coveredBy_split_literal root_6775822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.root_6775827 small_6775822_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163.cover_6775827
  · exact small_6775822_right_covered
#print axioms cover_6775822

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0163
