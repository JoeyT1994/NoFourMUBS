import TaoBundleAssembly0073
import TaoBundleChunkBatch0300
import TaoBundleChunkBatch0301
import TaoBundleChunkBatch0302
import TaoBundleChunkBatch0303
import TaoBundleChunkBatch0304
import TaoBundleChunkBatch0305
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074
def root_3124352 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124352_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124352_right_fuel : Nat := 29
def small_3124352_right_count : Nat := 195
def small_3124352_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A913010000000712073CF60000000008A91303120700F800000007000000010000000700000004115224FF0000000408A91301120700F608A91303120700F808A912FD00000007120700FC00000007000000030000000112073CF80000000108A912FD00000007000000070000000012073CF60000000008A91303120700F808A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA135D81050CFD9C01000000070F350CF60000000004548A0300000005000000070000000200000007000000041207010800000004050000FA135D81050CFD9C010F34D0F604548A030000000500000007000000000F350CF60000000004548A03138670F8045489FD00000005138670FC045489FF0000000513867108000000040000000500000003000000011386ACF800000001045489FD00000005138670FC045489FF0000000513867108000000040C9A86F6000000090F87510100000000078000FA128A7D05067ECE83000000050000000900000002000000090000000300000002135D4505000000020CFD9C01000000050F350CF60000000004548A030000000500000007000000030000000112073CF80000000108A912FD12073CFC0000000308A912FF12073D0800000007000000041207010800000004050000FA135D81050CFD9C01000000050F350CF6000000000CFD9C0300000005000000090000000200000009120700FC08A912FF12073D0800000007000000041207010800000004050000FA135D81050CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C030F34D0F8045489FD1386ACFC00000003045489FF0000000500000009138670FC045489FF0000000713867108000000040C9A86F6000000070000000700000003000000010F350CF800000001045489FD000000070000000700000002135D4505000000020CFD9C01000000070F350CF60000000000000007000000031151E8FD0A0001081151E8FF00000005000000040000000500000003"
theorem small_3124352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3124352_right_root small_3124352_right_fuel small_3124352_right_count small_3124352_right_encoded = true := by
  decide +kernel
theorem small_3124352_right_covered : CoveredBy scale carrier boxes small_3124352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3124352_right_root small_3124352_right_fuel small_3124352_right_count small_3124352_right_encoded small_3124352_right_checked

theorem cover_3124352 : CoveredBy scale carrier boxes root_3124352 := by
  apply coveredBy_split_literal root_3124352 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1198.root small_3124352_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1198.covered
  · exact small_3124352_right_covered
#print axioms cover_3124352

def root_3124347 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124347_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124347_right_fuel : Nat := 1
def small_3124347_right_count : Nat := 1
def small_3124347_right_encoded : String := "00000001"
theorem small_3124347_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3124347_right_root small_3124347_right_fuel small_3124347_right_count small_3124347_right_encoded = true := by
  decide +kernel
theorem small_3124347_right_covered : CoveredBy scale carrier boxes small_3124347_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3124347_right_root small_3124347_right_fuel small_3124347_right_count small_3124347_right_encoded small_3124347_right_checked

theorem cover_3124347 : CoveredBy scale carrier boxes root_3124347 := by
  apply coveredBy_split_literal root_3124347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124352 small_3124347_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124352
  · exact small_3124347_right_covered
#print axioms cover_3124347

def root_3124346 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3124346 : CoveredBy scale carrier boxes root_3124346 := by
  apply coveredBy_split_literal root_3124346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124347 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1199.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1199.covered
#print axioms cover_3124346

def root_3124341 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124341_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3124341_right_fuel : Nat := 1
def small_3124341_right_count : Nat := 1
def small_3124341_right_encoded : String := "00000000"
theorem small_3124341_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3124341_right_root small_3124341_right_fuel small_3124341_right_count small_3124341_right_encoded = true := by
  decide +kernel
theorem small_3124341_right_covered : CoveredBy scale carrier boxes small_3124341_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3124341_right_root small_3124341_right_fuel small_3124341_right_count small_3124341_right_encoded small_3124341_right_checked

theorem cover_3124341 : CoveredBy scale carrier boxes root_3124341 := by
  apply coveredBy_split_literal root_3124341 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124346 small_3124341_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124346
  · exact small_3124341_right_covered
#print axioms cover_3124341

def root_3124340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3124340 : CoveredBy scale carrier boxes root_3124340 := by
  apply coveredBy_split_literal root_3124340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1200.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124341
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1200.covered
#print axioms cover_3124340

def root_3133643 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3133643 : CoveredBy scale carrier boxes root_3133643 := by
  apply coveredBy_split_literal root_3133643 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1202.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1203.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1202.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1203.covered
#print axioms cover_3133643

def root_3133637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3133637_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3133637_left_fuel : Nat := 1
def small_3133637_left_count : Nat := 1
def small_3133637_left_encoded : String := "00000000"
theorem small_3133637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3133637_left_root small_3133637_left_fuel small_3133637_left_count small_3133637_left_encoded = true := by
  decide +kernel
theorem small_3133637_left_covered : CoveredBy scale carrier boxes small_3133637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3133637_left_root small_3133637_left_fuel small_3133637_left_count small_3133637_left_encoded small_3133637_left_checked

theorem cover_3133637 : CoveredBy scale carrier boxes root_3133637 := by
  apply coveredBy_split_literal root_3133637 small_3133637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3133643 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3133637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3133643
#print axioms cover_3133637

def root_3132119 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3132119 : CoveredBy scale carrier boxes root_3132119 := by
  apply coveredBy_split_literal root_3132119 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1201.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3133637 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1201.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3133637
#print axioms cover_3132119

def root_3132114 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3132114_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3132114_right_fuel : Nat := 1
def small_3132114_right_count : Nat := 1
def small_3132114_right_encoded : String := "00000004"
theorem small_3132114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3132114_right_root small_3132114_right_fuel small_3132114_right_count small_3132114_right_encoded = true := by
  decide +kernel
theorem small_3132114_right_covered : CoveredBy scale carrier boxes small_3132114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3132114_right_root small_3132114_right_fuel small_3132114_right_count small_3132114_right_encoded small_3132114_right_checked

theorem cover_3132114 : CoveredBy scale carrier boxes root_3132114 := by
  apply coveredBy_split_literal root_3132114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3132119 small_3132114_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3132119
  · exact small_3132114_right_covered
#print axioms cover_3132114

def root_3131836 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131836_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131836_left_fuel : Nat := 19
def small_3131836_left_count : Nat := 133
def small_3131836_left_encoded : String := "1151E9090000000408A91301120700F608A91303120700F808A913050000000812073CFA0000000208A912FD12073CFC00000003050001080000000800000008120700FC0500010800000008135D810904548A01000000060000000800000004000000030000000112073CF80000000108A91305120700FA08A912FD12073CFC000000030500010800000008135D810904548A01138670F60CFD9C030000000800000008000000000000000800000004000000080000000212073CFA0000000208A912FD12073CFC0000000305000108135D45090000000404548A01138670F60CFD9C0300000008000000080000000000000008135D810904548A01138670F60CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D0FA0CFD9BFD00000009000000080000000200000009000000001386ACF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C05000000080000000900000004120700FC050001080000000800000008000000030000000012073CF60000000008A91303120700F808A91305120700FA000000080000000212073CFA0000000208A912FD12073CFC0000000300000008120700FC05000108135D45090000000400000008135D81090CFD9C01000000080000000800000004000000030000000112073CF80000000108A913050000000812073CFA0000000208A912FD12073CFC000000030000000800000008"
theorem small_3131836_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131836_left_root small_3131836_left_fuel small_3131836_left_count small_3131836_left_encoded = true := by
  decide +kernel
theorem small_3131836_left_covered : CoveredBy scale carrier boxes small_3131836_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131836_left_root small_3131836_left_fuel small_3131836_left_count small_3131836_left_encoded small_3131836_left_checked

theorem cover_3131836 : CoveredBy scale carrier boxes root_3131836 := by
  apply coveredBy_split_literal root_3131836 small_3131836_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3132114 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3131836_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3132114
#print axioms cover_3131836

def root_3131830 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131830_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131830_left_fuel : Nat := 1
def small_3131830_left_count : Nat := 1
def small_3131830_left_encoded : String := "00000003"
theorem small_3131830_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131830_left_root small_3131830_left_fuel small_3131830_left_count small_3131830_left_encoded = true := by
  decide +kernel
theorem small_3131830_left_covered : CoveredBy scale carrier boxes small_3131830_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131830_left_root small_3131830_left_fuel small_3131830_left_count small_3131830_left_encoded small_3131830_left_checked

theorem cover_3131830 : CoveredBy scale carrier boxes root_3131830 := by
  apply coveredBy_split_literal root_3131830 small_3131830_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131836 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3131830_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131836
#print axioms cover_3131830

def root_3131829 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131829_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131829_right_fuel : Nat := 19
def small_3131829_right_count : Nat := 161
def small_3131829_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F608A91303120700F8000000080000000112073CF80000000108A91305120700FA050000FC135D80FD0000000300000008000000080000000212073CFA00000002000000090000000012073CF60000000008A913030000000812073CF80000000108A913050000000812073CFA00000002050000FC00000008000000081152250908A91301120700F608A91303120700F808A913050000000512073CFA0000000208A9130900000005000000090000000112073CF80000000108A91305120700FA08A913090000000512073D08050000FC135D80FD0000000304548A01000000051386ACF6000000000CFD9C03000000050F350CF80000000104548A05000000050000000900000005000000040000000212073CFA0000000208A91309120701080000000400000005000000090000000012073CF60000000008A91303120700F808A91305120700FA08A9130900000005000000080000000212073CFA0000000208A91309120701080000000400000005000000090000000112073CF80000000108A91305120700FA08A9130912070108000000040000000512073D08050000FC135D80FD000000030CFD9C010F34D0F60CFD9C0300000008000000080000000000000008135D44FD0CFD9C01000000050000000800000003000000040000000212073CFA0000000208A913091207010800000004050000FC135D80FD000000030CFD9C0100000005000000090000000512073D08050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030000000800000008135D44FD0CFD9C010F34D0F600000009000000000000000900000003000000040000000400000003"
theorem small_3131829_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131829_right_root small_3131829_right_fuel small_3131829_right_count small_3131829_right_encoded = true := by
  decide +kernel
theorem small_3131829_right_covered : CoveredBy scale carrier boxes small_3131829_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131829_right_root small_3131829_right_fuel small_3131829_right_count small_3131829_right_encoded small_3131829_right_checked

theorem cover_3131829 : CoveredBy scale carrier boxes root_3131829 := by
  apply coveredBy_split_literal root_3131829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131830 small_3131829_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131830
  · exact small_3131829_right_covered
#print axioms cover_3131829

def root_3131824 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131824_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131824_right_fuel : Nat := 1
def small_3131824_right_count : Nat := 1
def small_3131824_right_encoded : String := "00000002"
theorem small_3131824_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131824_right_root small_3131824_right_fuel small_3131824_right_count small_3131824_right_encoded = true := by
  decide +kernel
theorem small_3131824_right_covered : CoveredBy scale carrier boxes small_3131824_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131824_right_root small_3131824_right_fuel small_3131824_right_count small_3131824_right_encoded small_3131824_right_checked

theorem cover_3131824 : CoveredBy scale carrier boxes root_3131824 := by
  apply coveredBy_split_literal root_3131824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131829 small_3131824_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131829
  · exact small_3131824_right_covered
#print axioms cover_3131824

def root_3131823 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3131823 : CoveredBy scale carrier boxes root_3131823 := by
  apply coveredBy_split_literal root_3131823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1204.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131824
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1204.covered
#print axioms cover_3131823

def root_3131818 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131818_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131818_right_fuel : Nat := 1
def small_3131818_right_count : Nat := 1
def small_3131818_right_encoded : String := "00000001"
theorem small_3131818_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131818_right_root small_3131818_right_fuel small_3131818_right_count small_3131818_right_encoded = true := by
  decide +kernel
theorem small_3131818_right_covered : CoveredBy scale carrier boxes small_3131818_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131818_right_root small_3131818_right_fuel small_3131818_right_count small_3131818_right_encoded small_3131818_right_checked

theorem cover_3131818 : CoveredBy scale carrier boxes root_3131818 := by
  apply coveredBy_split_literal root_3131818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131823 small_3131818_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131823
  · exact small_3131818_right_covered
#print axioms cover_3131818

def root_3140655 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3140655_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3140655_left_fuel : Nat := 19
def small_3140655_left_count : Nat := 191
def small_3140655_left_encoded : String := "120700FA08A912FD12073CFC0000000308A913091207010800000004050000F8135D81030CFD9C010F34D0F604548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC0000000A00000003000000000F350CF60000000004548A05000000051386ACFA000000020CFD9BFD000000050000000800000001135D4503000000010CFD9C01000000050F350CF60000000004548A05000000051386ACFA000000020CFD9BFD000000050F34D0FC04548A0900000005000000080000000312073D08050000F8135D81030CFD9C010F34D0F604548A05138670FA0CFD9BFD0F350CFC000000030000000800000008000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC00000008000000050F350D0800000008000000040F34D0FC0000000800000003000000000F350CF60000000004548A05000000081386ACFA000000020CFD9BFD0F350CFC00000003000000080000000800000001135D4503000000010CFD9C010F34D0F604548A05138670FA0CFD9BFD000000070F34D0FC0000000700000003000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9C090F34D1080000000400000005000000070F34D0FC0CFD9C090F34D10800000004028000F80000000813D7B103000000010AD357810000000A000000070000000700000003000000000F350CF60000000004548A05138670FA0CFD9BFD0000000700000008000000021386ACFA000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60000000700000008000000070F34D0FC000000080000000300000004120700FC08A913091207010800000004050000F8135D81030CFD9C010000000A0000000800000001135D4503000000010CFD9C010000000A0F350CF6000000000000000812073D08050000F800000008135D4503000000010CFD9C010F34D0F604548A05000000081386ACFA00000002045489FD1386ACFC000000030CFD9C090000000800000006000000060000000000000008000000040000000300000002"
theorem small_3140655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3140655_left_root small_3140655_left_fuel small_3140655_left_count small_3140655_left_encoded = true := by
  decide +kernel
theorem small_3140655_left_covered : CoveredBy scale carrier boxes small_3140655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3140655_left_root small_3140655_left_fuel small_3140655_left_count small_3140655_left_encoded small_3140655_left_checked

theorem cover_3140655 : CoveredBy scale carrier boxes root_3140655 := by
  apply coveredBy_split_literal root_3140655 small_3140655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1206.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3140655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1206.covered
#print axioms cover_3140655

def root_3140649 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3140649_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3140649_left_fuel : Nat := 1
def small_3140649_left_count : Nat := 1
def small_3140649_left_encoded : String := "00000000"
theorem small_3140649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3140649_left_root small_3140649_left_fuel small_3140649_left_count small_3140649_left_encoded = true := by
  decide +kernel
theorem small_3140649_left_covered : CoveredBy scale carrier boxes small_3140649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3140649_left_root small_3140649_left_fuel small_3140649_left_count small_3140649_left_encoded small_3140649_left_checked

theorem cover_3140649 : CoveredBy scale carrier boxes root_3140649 := by
  apply coveredBy_split_literal root_3140649 small_3140649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3140655 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3140649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3140655
#print axioms cover_3140649

def root_3139231 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3139231 : CoveredBy scale carrier boxes root_3139231 := by
  apply coveredBy_split_literal root_3139231 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1205.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3140649 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1205.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3140649
#print axioms cover_3139231

def root_3139226 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3139226_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3139226_right_fuel : Nat := 1
def small_3139226_right_count : Nat := 1
def small_3139226_right_encoded : String := "00000004"
theorem small_3139226_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3139226_right_root small_3139226_right_fuel small_3139226_right_count small_3139226_right_encoded = true := by
  decide +kernel
theorem small_3139226_right_covered : CoveredBy scale carrier boxes small_3139226_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3139226_right_root small_3139226_right_fuel small_3139226_right_count small_3139226_right_encoded small_3139226_right_checked

theorem cover_3139226 : CoveredBy scale carrier boxes root_3139226 := by
  apply coveredBy_split_literal root_3139226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3139231 small_3139226_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3139231
  · exact small_3139226_right_covered
#print axioms cover_3139226

def root_3138520 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138520_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138520_left_fuel : Nat := 23
def small_3138520_left_count : Nat := 333
def small_3138520_left_encoded : String := "1151E9090000000408A91301120700F608A91305120700FA08A912FD12073CFC00000003050000F8135D81030500010800000008135D810904548A01138670F604548A05000000061386ACFA000000020CFD9BFD0F350CFC00000003000000060000000600000000000000080000000400000001135D4503000000010500010800000007135D810904548A01000000060000000700000004120700FC00000008000000030000000212073CFA0000000208A912FD12073CFC00000003050000F8135D810305000108135D45090000000404548A01138670F60CFD9C05000000080F350CFA000000020CFD9BFD00000009000000080000000000000008135D810904548A01138670F60CFD9C050F34D0FA0CFD9BFD0F350CFC000000030000000900000006000000020F350CFA0000000200000009000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350CFC000000030000000800000008000000020F350CFA000000020CFD9BFD00000009000000080000000400000001135D45030000000105000108135D45090000000404548A01138670F60CFD9C050F34D0FA0CFD9BFD0000000700000008000000020F350CFA000000020CFD9BFD0F350CFC000000030C9A86FA00000009000000090F34D0FC0C9A86FA0F878D0500000008000000020000000800000003000000001386ACF6000000000CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0000000A00000008135D810904548A01138670F60CFD9C050F34D0FA0CFD9BFD0F350CFC000000030000000600000006000000020F350CFA000000020CFD9BFD0F350CFC00000003000000090F34D0FC0C9A86FA0F878D05028000F813D7ED03000000060000000100000006000000020F87510500000002028000F80000000913D7B103000000010000000900000003000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0000000700000006000000020F350CFA000000020CFD9BFD0F350CFC00000003000000090F34D0FC0C9A86FA0F878D05028000F80000000600000006000000020F87510500000002028000F80000000813D7B103000000010780010800000008000000060000000300000004120700FC050000F8135D81030500010800000008135D810904548A01138670F60000000800000000000000080000000400000001135D4503000000010500010800000008135D810904548A01138670F60CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386ACFC000000030C9A86FA0F878D05028000F80000000600000006000000020F87510500000002028000F80000000813D7B1030000000107800108000000080000000600000008000000001386ACF6000000000CFD9C05000000080F350CFA000000020000000800000004000000030000000012073CF60000000008A91305120700FA08A912FD12073CFC00000003050000F80000000800000007000000080000000212073CFA0000000208A912FD12073CFC00000003050000F8135D81030500010800000008135D81090CFD9C010F34D0F60CFD9C05000000080F350CFA000000020000000800000000000000080000000400000001135D45030000000105000108135D4509000000040CFD9C010F34D0F6000000080000000000000008135D81090CFD9C010F34D0F60CFD9C050F34D0FA0CFD9BFD0000000700000008000000020F350CFA000000020CFD9BFD0F350CFC000000030C9A86FA0F878D0500000007000000020000000800000008000000000F350CF6000000000CFD9C05000000080F350CFA000000020000000800000004120700FC0000000800000003"
theorem small_3138520_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3138520_left_root small_3138520_left_fuel small_3138520_left_count small_3138520_left_encoded = true := by
  decide +kernel
theorem small_3138520_left_covered : CoveredBy scale carrier boxes small_3138520_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3138520_left_root small_3138520_left_fuel small_3138520_left_count small_3138520_left_encoded small_3138520_left_checked

theorem cover_3138520 : CoveredBy scale carrier boxes root_3138520 := by
  apply coveredBy_split_literal root_3138520 small_3138520_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3139226 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3138520_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3139226
#print axioms cover_3138520

def root_3138514 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138514_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138514_left_fuel : Nat := 1
def small_3138514_left_count : Nat := 1
def small_3138514_left_encoded : String := "00000003"
theorem small_3138514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3138514_left_root small_3138514_left_fuel small_3138514_left_count small_3138514_left_encoded = true := by
  decide +kernel
theorem small_3138514_left_covered : CoveredBy scale carrier boxes small_3138514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3138514_left_root small_3138514_left_fuel small_3138514_left_count small_3138514_left_encoded small_3138514_left_checked

theorem cover_3138514 : CoveredBy scale carrier boxes root_3138514 := by
  apply coveredBy_split_literal root_3138514 small_3138514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138520 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3138514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138520
#print axioms cover_3138514

def root_3138513 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138513_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138513_right_fuel : Nat := 21
def small_3138513_right_count : Nat := 327
def small_3138513_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F608A91305120700FA050000F8135D8103050000FC135D80FD000000030500010800000007135D810904548A01138670F604548A050000000500000009000000000000000700000004135D44FD0500010800000007000000050000000300000001000000070000000212073CFA00000002050000F8135D8103050000FC135D80FD0000000305000108135D45090000000400000009000000090000000900000001135D450300000001050000FC135D80FD0000000305000108135D45090000000404548A01138670F6000000090000000000000007135D810904548A01138670F600000009000000000000000900000004135D44FD05000108135D4509000000040000000900000009000000030000000012073CF60000000008A91305120700FA000000070000000212073CFA00000002050000F8135D8103050000FC135D80FD000000030500010800000008135D81090CFD9C010F34D0F600000008000000000000000800000004135D44FD0000000A0000000300000001135D450300000001050000FC135D80FD00000003050001080000000A135D81090CFD9C010F34D0F60CFD9C050000000700000009000000000000000A00000004135D44FD050001080000000A135D81090CFD9C010000000A0000000A00000004000000031152250908A91301120700F608A913050000000512073CFA0000000208A913090000000512073D08050000F8135D8103050000FC135D80FD0000000304548A0100000009000000090000000900000001135D450300000001050000FC135D80FD0000000304548A01000000051386ACF6000000000CFD9C050000000500000009135D44FD0000000500000003000000040000000012073CF60000000008A91305120700FA08A913090000000512073D08050000F8135D8103050000FC135D80FD000000030CFD9C010F34D0F604548A05000000051386ACFA000000020CFD9C09000000050F350D080000000800000004000000000F350CF60000000000000008135D44FD0CFD9C01000000050F350CF600000000000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350CF60000000004548A05000000051386ACFA000000020CFD9C090000000500000007135D44FD0000000500000003000000040000000212073CFA0000000208A913091207010800000004050000F8135D81030000000500000001135D450300000001050000FC00000005135D44FD000000050000000312073D08050000F8135D8103050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C0900000008000000080000000200000009135D44FD0CFD9C010F34D0F60000000900000000000000090000000300000001135D450300000001050000FC135D80FD000000030CFD9C010F34D0F60CFD9C050F34D0FA0CFD9C09000000050F350D080000000900000004000000020F350CFA0000000200000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C090F34D10800000004000000050F350D080C9A86F6000000070000000800000004000000020F350CFA000000020CFD9C090F34D108000000040000000900000009135D44FD0CFD9C010F34D0F60CFD9C050000000500000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C09000000050F350D080C9A86F6000000070000000800000004000000020F350CFA000000020000000900000003000000040000000400000003"
theorem small_3138513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3138513_right_root small_3138513_right_fuel small_3138513_right_count small_3138513_right_encoded = true := by
  decide +kernel
theorem small_3138513_right_covered : CoveredBy scale carrier boxes small_3138513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3138513_right_root small_3138513_right_fuel small_3138513_right_count small_3138513_right_encoded small_3138513_right_checked

theorem cover_3138513 : CoveredBy scale carrier boxes root_3138513 := by
  apply coveredBy_split_literal root_3138513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138514 small_3138513_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138514
  · exact small_3138513_right_covered
#print axioms cover_3138513

def root_3138508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138508_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138508_right_fuel : Nat := 1
def small_3138508_right_count : Nat := 1
def small_3138508_right_encoded : String := "00000002"
theorem small_3138508_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3138508_right_root small_3138508_right_fuel small_3138508_right_count small_3138508_right_encoded = true := by
  decide +kernel
theorem small_3138508_right_covered : CoveredBy scale carrier boxes small_3138508_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3138508_right_root small_3138508_right_fuel small_3138508_right_count small_3138508_right_encoded small_3138508_right_checked

theorem cover_3138508 : CoveredBy scale carrier boxes root_3138508 := by
  apply coveredBy_split_literal root_3138508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138513 small_3138508_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138513
  · exact small_3138508_right_covered
#print axioms cover_3138508

def root_3138507 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3138507 : CoveredBy scale carrier boxes root_3138507 := by
  apply coveredBy_split_literal root_3138507 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138508 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1207.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138508
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1207.covered
#print axioms cover_3138507

def root_3138501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138501_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3138501_left_fuel : Nat := 1
def small_3138501_left_count : Nat := 1
def small_3138501_left_encoded : String := "00000001"
theorem small_3138501_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3138501_left_root small_3138501_left_fuel small_3138501_left_count small_3138501_left_encoded = true := by
  decide +kernel
theorem small_3138501_left_covered : CoveredBy scale carrier boxes small_3138501_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3138501_left_root small_3138501_left_fuel small_3138501_left_count small_3138501_left_encoded small_3138501_left_checked

theorem cover_3138501 : CoveredBy scale carrier boxes root_3138501 := by
  apply coveredBy_split_literal root_3138501 small_3138501_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138507 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3138501_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138507
#print axioms cover_3138501

def root_3131817 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3131817 : CoveredBy scale carrier boxes root_3131817 := by
  apply coveredBy_split_literal root_3131817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3138501 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131818
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3138501
#print axioms cover_3131817

def root_3131812 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131812_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3131812_right_fuel : Nat := 1
def small_3131812_right_count : Nat := 1
def small_3131812_right_encoded : String := "00000000"
theorem small_3131812_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3131812_right_root small_3131812_right_fuel small_3131812_right_count small_3131812_right_encoded = true := by
  decide +kernel
theorem small_3131812_right_covered : CoveredBy scale carrier boxes small_3131812_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3131812_right_root small_3131812_right_fuel small_3131812_right_count small_3131812_right_encoded small_3131812_right_checked

theorem cover_3131812 : CoveredBy scale carrier boxes root_3131812 := by
  apply coveredBy_split_literal root_3131812 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131817 small_3131812_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131817
  · exact small_3131812_right_covered
#print axioms cover_3131812

def root_3131811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3131811 : CoveredBy scale carrier boxes root_3131811 := by
  apply coveredBy_split_literal root_3131811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131812 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1208.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131812
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1208.covered
#print axioms cover_3131811

def root_3124339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3124339 : CoveredBy scale carrier boxes root_3124339 := by
  apply coveredBy_split_literal root_3124339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3131811 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124340
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3131811
#print axioms cover_3124339

def root_3120467 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3120467 : CoveredBy scale carrier boxes root_3120467 := by
  apply coveredBy_split_literal root_3120467 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0073.root_3120468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3124339 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0073.cover_3120468
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3124339
#print axioms cover_3120467

def root_3148691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3148691 : CoveredBy scale carrier boxes root_3148691 := by
  apply coveredBy_split_literal root_3148691 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1209.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1210.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1209.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1210.covered
#print axioms cover_3148691

def root_3155427 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3155427 : CoveredBy scale carrier boxes root_3155427 := by
  apply coveredBy_split_literal root_3155427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1212.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1213.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1212.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1213.covered
#print axioms cover_3155427

def root_3155421 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155421_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155421_left_fuel : Nat := 1
def small_3155421_left_count : Nat := 1
def small_3155421_left_encoded : String := "00000002"
theorem small_3155421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3155421_left_root small_3155421_left_fuel small_3155421_left_count small_3155421_left_encoded = true := by
  decide +kernel
theorem small_3155421_left_covered : CoveredBy scale carrier boxes small_3155421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3155421_left_root small_3155421_left_fuel small_3155421_left_count small_3155421_left_encoded small_3155421_left_checked

theorem cover_3155421 : CoveredBy scale carrier boxes root_3155421 := by
  apply coveredBy_split_literal root_3155421 small_3155421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3155427 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3155421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3155427
#print axioms cover_3155421

def root_3155349 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155349_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155349_left_fuel : Nat := 13
def small_3155349_left_count : Nat := 35
def small_3155349_left_encoded : String := "0F34D0FA04548A07138670FC045489FF1386AD080C9A86F60F878D010000000A000000000F87510100000000067ECE83000000050000000A0000000413867108000000040C9A86F60000000A0F87510100000000067ECE8312EA58F80AD357850000000A10D13CFA00000002022A4587000000050000000A000000010000000A000000030000000A00000002"
theorem small_3155349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3155349_left_root small_3155349_left_fuel small_3155349_left_count small_3155349_left_encoded = true := by
  decide +kernel
theorem small_3155349_left_covered : CoveredBy scale carrier boxes small_3155349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3155349_left_root small_3155349_left_fuel small_3155349_left_count small_3155349_left_encoded small_3155349_left_checked

theorem cover_3155349 : CoveredBy scale carrier boxes root_3155349 := by
  apply coveredBy_split_literal root_3155349 small_3155349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3155421 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3155349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3155421
#print axioms cover_3155349

def root_3155343 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155343_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3155343_left_fuel : Nat := 1
def small_3155343_left_count : Nat := 1
def small_3155343_left_encoded : String := "00000001"
theorem small_3155343_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3155343_left_root small_3155343_left_fuel small_3155343_left_count small_3155343_left_encoded = true := by
  decide +kernel
theorem small_3155343_left_covered : CoveredBy scale carrier boxes small_3155343_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3155343_left_root small_3155343_left_fuel small_3155343_left_count small_3155343_left_encoded small_3155343_left_checked

theorem cover_3155343 : CoveredBy scale carrier boxes root_3155343 := by
  apply coveredBy_split_literal root_3155343 small_3155343_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3155349 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3155343_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3155349
#print axioms cover_3155343

def root_3153487 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3153487 : CoveredBy scale carrier boxes root_3153487 := by
  apply coveredBy_split_literal root_3153487 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1211.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3155343 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1211.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3155343
#print axioms cover_3153487

def root_3153481 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153481_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153481_left_fuel : Nat := 1
def small_3153481_left_count : Nat := 1
def small_3153481_left_encoded : String := "00000000"
theorem small_3153481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3153481_left_root small_3153481_left_fuel small_3153481_left_count small_3153481_left_encoded = true := by
  decide +kernel
theorem small_3153481_left_covered : CoveredBy scale carrier boxes small_3153481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3153481_left_root small_3153481_left_fuel small_3153481_left_count small_3153481_left_encoded small_3153481_left_checked

theorem cover_3153481 : CoveredBy scale carrier boxes root_3153481 := by
  apply coveredBy_split_literal root_3153481 small_3153481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3153487 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3153481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3153487
#print axioms cover_3153481

def root_3153277 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153277_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153277_left_fuel : Nat := 17
def small_3153277_left_count : Nat := 99
def small_3153277_left_encoded : String := "0F34D0F604548A03138670F80CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC045489FF1386AD080C9A86FA0F878D050000000500000002000000050000000413867108000000040C9A86FA0F878D050AD357810000000510D13CF600000000022A4583000000050000000A000000020F875105000000020AD357810000000510D13CF600000000022A45830000000513E200F800000001022A45870000000500000007000000031386ACFC00000003045489FF1386AD080C9A86FA0F878D050000000A000000020F875105000000020AD357810000000510D13CF600000000022A458300000005000000070000000413867108000000040C9A86FA0000000A0F875105000000020AD357810000000A10D13CF600000000022A458313E1C4F8067ECE87000000050000000A000000010000000A000000011386ACF8000000010CFD9C050000000A0F350CFA0000000204548A07138670FC045489FF0000000713867108000000040C9A86FA0000000A00000007000000030000000A00000000"
theorem small_3153277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3153277_left_root small_3153277_left_fuel small_3153277_left_count small_3153277_left_encoded = true := by
  decide +kernel
theorem small_3153277_left_covered : CoveredBy scale carrier boxes small_3153277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3153277_left_root small_3153277_left_fuel small_3153277_left_count small_3153277_left_encoded small_3153277_left_checked

theorem cover_3153277 : CoveredBy scale carrier boxes root_3153277 := by
  apply coveredBy_split_literal root_3153277 small_3153277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3153481 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3153277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3153481
#print axioms cover_3153277

def root_3153271 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153271_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3153271_left_fuel : Nat := 1
def small_3153271_left_count : Nat := 1
def small_3153271_left_encoded : String := "00000004"
theorem small_3153271_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3153271_left_root small_3153271_left_fuel small_3153271_left_count small_3153271_left_encoded = true := by
  decide +kernel
theorem small_3153271_left_covered : CoveredBy scale carrier boxes small_3153271_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3153271_left_root small_3153271_left_fuel small_3153271_left_count small_3153271_left_encoded small_3153271_left_checked

theorem cover_3153271 : CoveredBy scale carrier boxes root_3153271 := by
  apply coveredBy_split_literal root_3153271 small_3153271_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3153277 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3153271_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3153277
#print axioms cover_3153271

def root_3152989 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152989_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152989_left_fuel : Nat := 15
def small_3152989_left_count : Nat := 133
def small_3152989_left_encoded : String := "12073D080CFD9C010F34D0F604548A03138670F80CFD9C050F34D0FA04548A07138670FC0CFD9BFF000000070F34D10800000004000000050000000300000009000000020F350CFA0000000204548A07000000071386ACFC000000030CFD9BFF000000070F34D108000000040C9A86FA0F878D05000000070000000200000007000000011386ACF8000000010CFD9C05000000070F350CFA0000000200000007000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA00000009000000020F350CFA0000000204548A07138670FC0CFD9BFF0F350D080C9A86F60000000700000005000000040F34D108000000040C9A86F60F878D01000000050000000000000005000000031386ACFC000000030CFD9BFF000000090F34D108000000040C9A86F60F878D010C9A86FA00000009000000080000000000000009000000011386ACF8000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF000000090F34D108000000040C9A86F60F878D010000000900000000000000060000000300000009000000020F350CFA0000000204548A07138670FC0CFD9BFF000000070F34D108000000040C9A86F6000000070F875101000000000C9A86FA0000000600000005000000031386ACFC000000030CFD9BFF0F350D0800000007000000040F34D108000000040C9A86F60F878D0100000007000000000F875101000000000C9A86FA000000090000000700000004"
theorem small_3152989_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152989_left_root small_3152989_left_fuel small_3152989_left_count small_3152989_left_encoded = true := by
  decide +kernel
theorem small_3152989_left_covered : CoveredBy scale carrier boxes small_3152989_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152989_left_root small_3152989_left_fuel small_3152989_left_count small_3152989_left_encoded small_3152989_left_checked

theorem cover_3152989 : CoveredBy scale carrier boxes root_3152989 := by
  apply coveredBy_split_literal root_3152989 small_3152989_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3153271 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3152989_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3153271
#print axioms cover_3152989

def root_3152984 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152984_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152984_right_fuel : Nat := 1
def small_3152984_right_count : Nat := 1
def small_3152984_right_encoded : String := "00000003"
theorem small_3152984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152984_right_root small_3152984_right_fuel small_3152984_right_count small_3152984_right_encoded = true := by
  decide +kernel
theorem small_3152984_right_covered : CoveredBy scale carrier boxes small_3152984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152984_right_root small_3152984_right_fuel small_3152984_right_count small_3152984_right_encoded small_3152984_right_checked

theorem cover_3152984 : CoveredBy scale carrier boxes root_3152984 := by
  apply coveredBy_split_literal root_3152984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152989 small_3152984_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152989
  · exact small_3152984_right_covered
#print axioms cover_3152984

def root_3152983 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152983_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152983_right_fuel : Nat := 28
def small_3152983_right_count : Nat := 293
def small_3152983_right_encoded : String := "12073CFC0000000308A912FF12073D080CFD9C010F34D0F604548A03138670F80CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF000000090F34D108000000040C9A86FA000000090F8751050000000200000008000000030F350CFC000000030CFD9BFF000000090F34D108000000040000000A000000011386ACF8000000010CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0000000700000007000000030F350CFC000000030000000A000000000F350CF60000000004548A03138670F80CFD9C05000000090F350CFA000000020CFD9C070F34D0FC000000090000000300000009000000011386ACF8000000010CFD9C05000000090F350CFA000000020CFD9C070F34D0FC0000000900000003000000090000000412070108000000040CFD9C010F34D0F604548A03138670F80CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC0000000A000000030000000A000000010000000A000000000F350CF60000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000090000000300000009000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A86F60F878D010C9A86FA000000090F87510500000002022A458313E1C4F80AD3578700000008000000080000000113E200F8000000010AD3578710D100FC0000000A0000000300000009000000000F87510100000000000000090000000413867108000000040C9A86F60F878D010C9A86FA0F878D050000000A000000020F87510500000002022A458313E1C4F80AD3578710D100FC022A457F0000000813E1C508000000040DE7C9F6000000060E5FD901000000000B4D43FA0000000A00000006000000030000000A000000010000000A000000000F875101000000000C9A86FA0F878D0500000009000000020F87510500000002022A458313E1C4F80AD3578710D100FC022A457F0000000913E1C508000000040B4D43F610804D010B4D43FA00000009108011050000000200000008000000000000000900000003000000090000000113E200F8000000010AD3578710D100FC022A457F0000000913E1C508000000040B4D43F610804D010000000A00000000000000090000000300000009000000030F350CFC00000003045489FF1386AD080C9A86F60F878D010C9A86FA000000090000000900000000000000090000000413867108000000040C9A86F60F878D010000000A000000000F875101000000000C9A86FA000000090F875105000000020C9A86FC000000090F8751070000000300000009000000011386ACF8000000010CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D0FC045489FF1386AD080C9A86F60F878D010000000A000000000F87510100000000000000090000000413867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F87510500000002067ECE8312EA58F80AD3578710D100FC0000000A0000000300000009000000010000000A000000030F350CFC00000003045489FF1386AD080C9A86F60000000A000000090000000413867108000000040000000A"
theorem small_3152983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152983_right_root small_3152983_right_fuel small_3152983_right_count small_3152983_right_encoded = true := by
  decide +kernel
theorem small_3152983_right_covered : CoveredBy scale carrier boxes small_3152983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152983_right_root small_3152983_right_fuel small_3152983_right_count small_3152983_right_encoded small_3152983_right_checked

theorem cover_3152983 : CoveredBy scale carrier boxes root_3152983 := by
  apply coveredBy_split_literal root_3152983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152984 small_3152983_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152984
  · exact small_3152983_right_covered
#print axioms cover_3152983

def root_3152977 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152977_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152977_left_fuel : Nat := 1
def small_3152977_left_count : Nat := 1
def small_3152977_left_encoded : String := "00000002"
theorem small_3152977_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152977_left_root small_3152977_left_fuel small_3152977_left_count small_3152977_left_encoded = true := by
  decide +kernel
theorem small_3152977_left_covered : CoveredBy scale carrier boxes small_3152977_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152977_left_root small_3152977_left_fuel small_3152977_left_count small_3152977_left_encoded small_3152977_left_checked

theorem cover_3152977 : CoveredBy scale carrier boxes root_3152977 := by
  apply coveredBy_split_literal root_3152977 small_3152977_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152983 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3152977_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152983
#print axioms cover_3152977

def root_3152883 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152883_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152883_left_fuel : Nat := 14
def small_3152883_left_count : Nat := 45
def small_3152883_left_encoded : String := "120700FA08A91307120700FC08A912FF12073D080CFD9C01000000090F350CF60000000004548A03000000091386ACF80000000104548A0500000009000000090000000412070108000000040CFD9C010000000A0F350CF60000000004548A03138670F804548A05000000091386ACFA0000000204548A07138670FC0000000A0000000300000009000000010000000A0000000312073CFC0000000308A912FF0000000912070108000000040000000A00000002"
theorem small_3152883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152883_left_root small_3152883_left_fuel small_3152883_left_count small_3152883_left_encoded = true := by
  decide +kernel
theorem small_3152883_left_covered : CoveredBy scale carrier boxes small_3152883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152883_left_root small_3152883_left_fuel small_3152883_left_count small_3152883_left_encoded small_3152883_left_checked

theorem cover_3152883 : CoveredBy scale carrier boxes root_3152883 := by
  apply coveredBy_split_literal root_3152883 small_3152883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152977 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3152883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152977
#print axioms cover_3152883

def root_3152878 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152878_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152878_right_fuel : Nat := 1
def small_3152878_right_count : Nat := 1
def small_3152878_right_encoded : String := "00000001"
theorem small_3152878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152878_right_root small_3152878_right_fuel small_3152878_right_count small_3152878_right_encoded = true := by
  decide +kernel
theorem small_3152878_right_covered : CoveredBy scale carrier boxes small_3152878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152878_right_root small_3152878_right_fuel small_3152878_right_count small_3152878_right_encoded small_3152878_right_checked

theorem cover_3152878 : CoveredBy scale carrier boxes root_3152878 := by
  apply coveredBy_split_literal root_3152878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152883 small_3152878_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152883
  · exact small_3152878_right_covered
#print axioms cover_3152878

def root_3152877 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152877_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152877_right_fuel : Nat := 32
def small_3152877_right_count : Nat := 425
def small_3152877_right_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC08A912FF12073D080CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C030F34D0F804548A050000000A1386ACFA0000000204548A07138670FC0CFD9BFF00000009000000090000000300000009000000010F350CF8000000010000000A0000000412070108000000040000000A0000000312073CFC0000000308A912FF12073D080CFD9C01000000090000000A0000000412070108000000040000000A0000000212073CFA0000000208A91307120700FC08A912FF12073D080CFD9C010F34D0F60CFD9C030F34D0F8000000070000000100000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA04548A07138670FC0CFD9BFF000000070F34D108000000040C9A86F6000000070F8751010000000000000006000000031386ACFC000000030CFD9BFF0000000700000009000000020F350CFA0000000204548A07000000071386ACFC0000000300000007000000010F350CF8000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF000000070F34D108000000040000000A000000030000000A000000020F350CFA0000000204548A0700000007000000070000000412070108000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050000000A0F350CFA0000000204548A07000000070000000A000000010000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA04548A07138670FC0000000A000000030000000A000000020F350CFA0000000204548A07138670FC045489FF1386AD080C9A86F60F878D0100000007000000000F875101000000000C9A86FA0F878D050AD3578310D100F8022A4587000000060000000A000000010000000700000002000000070000000413867108000000040C9A86F60F878D010C9A86FA0F878D050000000A000000020F8751050000000200000007000000000F875101000000000C9A86FA0F878D050AD3578310D100F8022A458713E1C4FC022A457F0000000613E1C508000000040B4D43F60000000A00000008000000030000000A000000010000000A000000020F875105000000020AD3578310D100F8022A458713E1C4FC022A457F0000000713E1C508000000040B4D43F60000000710801101000000000B4D43FA10804D050000000600000002000000070000000313E200FC00000003022A457F0000000713E1C508000000040B4D43F610804D01000000070000000010801101000000000B4D43FA10804D050000000A00000002000000070000000110D13CF800000001022A45870000000700000007000000031386ACFC00000003045489FF1386AD080C9A86F60F878D0100000007000000000F875101000000000C9A86FA0F878D050000000A000000020F87510500000002000000070000000413867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F875105000000020AD3578310D100F8067ECE8712EA58FC0000000A000000030000000A000000010000000A000000010F350CF8000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC045489FF1386AD080C9A86F6000000070F875101000000000C9A86F8000000070F87510300000001000000070000000413867108000000040C9A86F60F878D010000000A000000000F875101000000000C9A86F80F878D030C9A86FA0000000A0F8751050000000200000007000000010F875103000000010000000A000000031386ACFC00000003045489FF1386AD080C9A86F6000000070F875101000000000000000A0000000413867108000000040000000A0000000312073CFC0000000308A912FF12073D080CFD9C010F34D0F60CFD9C030F34D0F80CFD9C05000000070F350CFA000000020CFD9C0700000007000000090000000100000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF000000070F34D108000000040C9A86F600000007000000090000000300000009000000010F350CF8000000010CFD9C050F34D0FA00000009000000020F350CFA000000020CFD9C07000000070F350CFC00000003000000070000000412070108000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC045489FF0000000A13867108000000040000000A000000030000000A000000010F350CF8000000010CFD9C050000000A0F350CFA000000020CFD9C070F34D0FC0000000A000000030000000A"
theorem small_3152877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152877_right_root small_3152877_right_fuel small_3152877_right_count small_3152877_right_encoded = true := by
  decide +kernel
theorem small_3152877_right_covered : CoveredBy scale carrier boxes small_3152877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152877_right_root small_3152877_right_fuel small_3152877_right_count small_3152877_right_encoded small_3152877_right_checked

theorem cover_3152877 : CoveredBy scale carrier boxes root_3152877 := by
  apply coveredBy_split_literal root_3152877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152878 small_3152877_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152878
  · exact small_3152877_right_covered
#print axioms cover_3152877

def root_3152871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152871_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152871_left_fuel : Nat := 1
def small_3152871_left_count : Nat := 1
def small_3152871_left_encoded : String := "00000000"
theorem small_3152871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152871_left_root small_3152871_left_fuel small_3152871_left_count small_3152871_left_encoded = true := by
  decide +kernel
theorem small_3152871_left_covered : CoveredBy scale carrier boxes small_3152871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152871_left_root small_3152871_left_fuel small_3152871_left_count small_3152871_left_encoded small_3152871_left_checked

theorem cover_3152871 : CoveredBy scale carrier boxes root_3152871 := by
  apply coveredBy_split_literal root_3152871 small_3152871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152877 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3152871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152877
#print axioms cover_3152871

def root_3152609 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152609_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152609_left_fuel : Nat := 19
def small_3152609_left_count : Nat := 121
def small_3152609_left_encoded : String := "120700F608A91303120700F808A91305120700FA08A91307120700FC0000000A000000030000000A0000000212073CFA0000000208A91307120700FC08A912FF12073D0804548A01138670F600000007000000001386ACF60000000004548A03138670F80CFD9C05000000070F350CFA0000000200000007000000010000000700000004120701080000000404548A010000000A1386ACF60000000004548A03138670F80CFD9C050000000A0F350CFA0000000204548A07138670FC0000000A000000030000000A000000010000000A0000000312073CFC0000000308A912FF12073D0804548A01138670F604548A03138670F80000000A000000010000000A000000001386ACF60000000004548A03138670F80CFD9C050F34D0FA0000000A000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0000000700000007000000030000000A000000011386ACF8000000010CFD9C050000000A0000000A0000000412070108000000040000000A0000000112073CF80000000108A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC08A912FF0000000712070108000000040000000A0000000312073CFC0000000308A912FF12073D0804548A010000000A0000000A0000000412070108000000040000000A00000000"
theorem small_3152609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152609_left_root small_3152609_left_fuel small_3152609_left_count small_3152609_left_encoded = true := by
  decide +kernel
theorem small_3152609_left_covered : CoveredBy scale carrier boxes small_3152609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152609_left_root small_3152609_left_fuel small_3152609_left_count small_3152609_left_encoded small_3152609_left_checked

theorem cover_3152609 : CoveredBy scale carrier boxes root_3152609 := by
  apply coveredBy_split_literal root_3152609 small_3152609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152871 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3152609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152871
#print axioms cover_3152609

def root_3152603 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152603_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152603_left_fuel : Nat := 1
def small_3152603_left_count : Nat := 1
def small_3152603_left_encoded : String := "00000004"
theorem small_3152603_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152603_left_root small_3152603_left_fuel small_3152603_left_count small_3152603_left_encoded = true := by
  decide +kernel
theorem small_3152603_left_covered : CoveredBy scale carrier boxes small_3152603_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152603_left_root small_3152603_left_fuel small_3152603_left_count small_3152603_left_encoded small_3152603_left_checked

theorem cover_3152603 : CoveredBy scale carrier boxes root_3152603 := by
  apply coveredBy_split_literal root_3152603 small_3152603_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152609 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3152603_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152609
#print axioms cover_3152603

def root_3152455 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152455_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152455_left_fuel : Nat := 14
def small_3152455_left_count : Nat := 71
def small_3152455_left_encoded : String := "1151E8FF08A91301120700F608A91303120700F808A913050000000712073CFA0000000208A913070000000712073CFC000000030500010800000007135D80FF0000000404548A01000000070000000700000001000000070000000012073CF60000000008A91303120700F808A913050000000912073CFA0000000208A91307120700FC0500010800000007135D80FF000000040CFD9C01000000070F350CF6000000000000000900000003000000090000000112073CF80000000108A91305120700FA08A91307120700FC0500010800000009135D80FF000000040CFD9C01000000070F350CF6000000000000000900000003000000090000000212073CFA0000000208A913070000000712073CFC000000030000000700000004"
theorem small_3152455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152455_left_root small_3152455_left_fuel small_3152455_left_count small_3152455_left_encoded = true := by
  decide +kernel
theorem small_3152455_left_covered : CoveredBy scale carrier boxes small_3152455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152455_left_root small_3152455_left_fuel small_3152455_left_count small_3152455_left_encoded small_3152455_left_checked

theorem cover_3152455 : CoveredBy scale carrier boxes root_3152455 := by
  apply coveredBy_split_literal root_3152455 small_3152455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152603 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3152455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152603
#print axioms cover_3152455

def root_3152450 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152450_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152450_right_fuel : Nat := 1
def small_3152450_right_count : Nat := 1
def small_3152450_right_encoded : String := "00000003"
theorem small_3152450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152450_right_root small_3152450_right_fuel small_3152450_right_count small_3152450_right_encoded = true := by
  decide +kernel
theorem small_3152450_right_covered : CoveredBy scale carrier boxes small_3152450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152450_right_root small_3152450_right_fuel small_3152450_right_count small_3152450_right_encoded small_3152450_right_checked

theorem cover_3152450 : CoveredBy scale carrier boxes root_3152450 := by
  apply coveredBy_split_literal root_3152450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152455 small_3152450_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152455
  · exact small_3152450_right_covered
#print axioms cover_3152450

def root_3152449 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152449_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152449_right_fuel : Nat := 25
def small_3152449_right_count : Nat := 193
def small_3152449_right_encoded : String := "1151E907000000030A0001081151E8FF08A91301120700F608A91303120700F808A913050000000712073CFA00000002050000FC135D810700000007000000030000000700000001000000070000000012073CF60000000008A91303120700F808A913050000000912073CFA00000002050000FC00000009135D45070000000300000009000000010000000900000004115224FF0000000408A91301120700F608A91303120700F808A913050000000A12073CFA0000000208A912FF0000000A12070108000000040000000A000000010000000A0000000012073CF60000000008A91303120700F808A91305120700FA08A912FF0000000912070108000000040000000A0000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9C010F34D0F604548A03138670F80CFD9C05000000090000000A000000010000000A000000000F350CF60000000004548A03000000090000000900000003135D4507000000030CFD9C010F34D0F60000000A000000000F350CF60000000004548A03138670F80CFD9C05000000090F350CFA000000020CFD9BFF000000090F34D1080000000400000009000000011386ACF80000000100000009000000041207010800000004050000FC135D81070CFD9C010000000A0F350CF60000000004548A03138670F80CFD9C050000000A0F350CFA00000002045489FF1386AD080C9A86F60000000A000000090000000413867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000900000009000000010000000A00000003135D4507000000030CFD9C010000000A0F350CF60000000004548A03138670F80CFD9C050000000A0F350CFA00000002045489FF0000000A13867108000000040000000A000000010000000A0000000112073CF80000000108A91305120700FA0000000A0000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9C010000000A0F350CF6000000000000000900000003135D4507000000030CFD9C010000000A0000000A000000041207010800000004050000FC0000000A0000000A"
theorem small_3152449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152449_right_root small_3152449_right_fuel small_3152449_right_count small_3152449_right_encoded = true := by
  decide +kernel
theorem small_3152449_right_covered : CoveredBy scale carrier boxes small_3152449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152449_right_root small_3152449_right_fuel small_3152449_right_count small_3152449_right_encoded small_3152449_right_checked

theorem cover_3152449 : CoveredBy scale carrier boxes root_3152449 := by
  apply coveredBy_split_literal root_3152449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152450 small_3152449_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152450
  · exact small_3152449_right_covered
#print axioms cover_3152449

def root_3152444 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152444_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152444_right_fuel : Nat := 1
def small_3152444_right_count : Nat := 1
def small_3152444_right_encoded : String := "00000002"
theorem small_3152444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152444_right_root small_3152444_right_fuel small_3152444_right_count small_3152444_right_encoded = true := by
  decide +kernel
theorem small_3152444_right_covered : CoveredBy scale carrier boxes small_3152444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152444_right_root small_3152444_right_fuel small_3152444_right_count small_3152444_right_encoded small_3152444_right_checked

theorem cover_3152444 : CoveredBy scale carrier boxes root_3152444 := by
  apply coveredBy_split_literal root_3152444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152449 small_3152444_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152449
  · exact small_3152444_right_covered
#print axioms cover_3152444

def root_3161155 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3161155 : CoveredBy scale carrier boxes root_3161155 := by
  apply coveredBy_split_literal root_3161155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1214.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1215.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1214.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1215.covered
#print axioms cover_3161155

def root_3161150 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161150_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161150_right_fuel : Nat := 1
def small_3161150_right_count : Nat := 1
def small_3161150_right_encoded : String := "00000001"
theorem small_3161150_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3161150_right_root small_3161150_right_fuel small_3161150_right_count small_3161150_right_encoded = true := by
  decide +kernel
theorem small_3161150_right_covered : CoveredBy scale carrier boxes small_3161150_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3161150_right_root small_3161150_right_fuel small_3161150_right_count small_3161150_right_encoded small_3161150_right_checked

theorem cover_3161150 : CoveredBy scale carrier boxes root_3161150 := by
  apply coveredBy_split_literal root_3161150 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3161155 small_3161150_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3161155
  · exact small_3161150_right_covered
#print axioms cover_3161150

def root_3161149 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161149_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161149_right_fuel : Nat := 23
def small_3161149_right_count : Nat := 257
def small_3161149_right_encoded : String := "12073CF80000000108A91307120700FC08A912FF12073D08050000FA0000000700000007000000041207010800000004050000FA135D81050CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C030F34D0F804548A07138670FC045489FF0000000713867108000000040C9A86F6000000070F87510100000000078000FA128A7D05000000070000000200000007000000031386ACFC00000003045489FF0000000713867108000000040C9A86F6000000070F87510100000000078000FA128A7D050AD3578310D100F8067ECE87000000070000000700000001000000070000000200000007000000010F350CF80000000104548A07000000070000000700000002135D4505000000020CFD9C01000000070F350CF600000000000000070000000312073CFC0000000308A912FF12073D08050000FA135D81050CFD9C010F34D0F60CFD9C030F34D0F80CFD9C07000000070F350CFC00000003000000070000000100000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D0FC0CFD9BFF0000000700000007000000030F350CFC000000030CFD9BFF000000090F34D108000000040C9A86F60000000700000009000000010F350CF8000000010CFD9C07000000070F350CFC000000030000000700000002135D4505000000020CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C07000000070F350CFC000000030CFD9BFF0F350D08000000070000000400000007000000010F350CF80000000100000007000000041207010800000004050000FA135D81050CFD9C010F34D0F60CFD9C030F34D0F80CFD9C07000000070000000A0000000100000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D0FC045489FF1386AD080C9A86F6000000070F87510100000000000000070000000413867108000000040C9A86F6000000070F87510100000000078000FA128A7D050AD3578310D100F80000000A00000001000000070000000200000007000000030F350CFC00000003045489FF1386AD080C9A86F60000000A0F875101000000000C9A86FC0000000A000000070000000413867108000000040C9A86F60000000A0F8751010000000000000005000000010F350CF8000000010CFD9C07000000070F350CFC00000003045489FF000000070000000500000002135D4505000000020CFD9C010F34D0F60CFD9C030F34D0F80CFD9C0700000007000000060000000100000007000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D0FC045489FF0000000700000007000000030F350CFC00000003045489FF1386AD080C9A86F6000000070F87510100000000000000070000000400000005000000010F350CF8000000010CFD9C070000000700000005"
theorem small_3161149_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3161149_right_root small_3161149_right_fuel small_3161149_right_count small_3161149_right_encoded = true := by
  decide +kernel
theorem small_3161149_right_covered : CoveredBy scale carrier boxes small_3161149_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3161149_right_root small_3161149_right_fuel small_3161149_right_count small_3161149_right_encoded small_3161149_right_checked

theorem cover_3161149 : CoveredBy scale carrier boxes root_3161149 := by
  apply coveredBy_split_literal root_3161149 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3161150 small_3161149_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3161150
  · exact small_3161149_right_covered
#print axioms cover_3161149

def root_3161143 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161143_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3161143_left_fuel : Nat := 1
def small_3161143_left_count : Nat := 1
def small_3161143_left_encoded : String := "00000000"
theorem small_3161143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3161143_left_root small_3161143_left_fuel small_3161143_left_count small_3161143_left_encoded = true := by
  decide +kernel
theorem small_3161143_left_covered : CoveredBy scale carrier boxes small_3161143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3161143_left_root small_3161143_left_fuel small_3161143_left_count small_3161143_left_encoded small_3161143_left_checked

theorem cover_3161143 : CoveredBy scale carrier boxes root_3161143 := by
  apply coveredBy_split_literal root_3161143 small_3161143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3161149 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3161143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3161149
#print axioms cover_3161143

def root_3160799 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160799_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160799_left_fuel : Nat := 18
def small_3160799_left_count : Nat := 163
def small_3160799_left_encoded : String := "120700F608A91303120700F808A91307120700FC08A912FF12073D08050000FA135D8105000000070000000200000007000000041207010800000004050000FA135D810504548A01000000071386ACF60000000004548A03138670F804548A07000000051386ACFC0000000300000007000000010000000700000002000000070000000312073CFC0000000308A912FF12073D08050000FA135D810504548A01138670F604548A03138670F80CFD9C070F34D0FC00000008000000030000000A000000011386ACF8000000010CFD9C07000000070000000A000000001386ACF60000000004548A03138670F80CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000011386ACF8000000010CFD9C07000000070F350CFC000000030000000A00000002135D45050000000204548A01138670F604548A03000000081386ACF8000000010CFD9C07000000070000000A000000001386ACF60000000004548A03000000081386ACF8000000010CFD9C070000000700000008000000041207010800000004050000FA135D810504548A010000000A1386ACF60000000004548A03138670F80CFD9C070F34D0FC000000060000000300000006000000010000000A00000002135D45050000000204548A01000000061386ACF60000000004548A0300000006000000060000000112073CF80000000108A91307120700FC000000070000000312073CFC0000000308A912FF12073D08050000FA135D810504548A01138670F600000007000000000000000700000002135D45050000000204548A010000000700000007000000041207010800000004050000FA0000000A135D45050000000204548A01000000070000000700000000"
theorem small_3160799_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3160799_left_root small_3160799_left_fuel small_3160799_left_count small_3160799_left_encoded = true := by
  decide +kernel
theorem small_3160799_left_covered : CoveredBy scale carrier boxes small_3160799_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3160799_left_root small_3160799_left_fuel small_3160799_left_count small_3160799_left_encoded small_3160799_left_checked

theorem cover_3160799 : CoveredBy scale carrier boxes root_3160799 := by
  apply coveredBy_split_literal root_3160799 small_3160799_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3161143 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3160799_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3161143
#print axioms cover_3160799

def root_3160793 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160793_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160793_left_fuel : Nat := 1
def small_3160793_left_count : Nat := 1
def small_3160793_left_encoded : String := "00000004"
theorem small_3160793_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3160793_left_root small_3160793_left_fuel small_3160793_left_count small_3160793_left_encoded = true := by
  decide +kernel
theorem small_3160793_left_covered : CoveredBy scale carrier boxes small_3160793_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3160793_left_root small_3160793_left_fuel small_3160793_left_count small_3160793_left_encoded small_3160793_left_checked

theorem cover_3160793 : CoveredBy scale carrier boxes root_3160793 := by
  apply coveredBy_split_literal root_3160793 small_3160793_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160799 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3160793_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160799
#print axioms cover_3160793

def root_3160691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160691_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160691_left_fuel : Nat := 13
def small_3160691_left_count : Nat := 49
def small_3160691_left_encoded : String := "1151E8FF08A91301120700F608A91303120700F808A913070000000712073CFC00000003050000FA135D810500000007000000020000000700000001000000070000000012073CF60000000008A91303120700F808A91307120700FC000000070000000312073CFC00000003050000FA135D81050500010800000008135D80FF000000040CFD9C01000000090000000800000002000000080000000112073CF80000000108A913070000000712073CFC00000003050000FA000000070000000700000004"
theorem small_3160691_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3160691_left_root small_3160691_left_fuel small_3160691_left_count small_3160691_left_encoded = true := by
  decide +kernel
theorem small_3160691_left_covered : CoveredBy scale carrier boxes small_3160691_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3160691_left_root small_3160691_left_fuel small_3160691_left_count small_3160691_left_encoded small_3160691_left_checked

theorem cover_3160691 : CoveredBy scale carrier boxes root_3160691 := by
  apply coveredBy_split_literal root_3160691 small_3160691_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160793 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3160691_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160793
#print axioms cover_3160691

def root_3160686 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160686_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160686_right_fuel : Nat := 1
def small_3160686_right_count : Nat := 1
def small_3160686_right_encoded : String := "00000003"
theorem small_3160686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3160686_right_root small_3160686_right_fuel small_3160686_right_count small_3160686_right_encoded = true := by
  decide +kernel
theorem small_3160686_right_covered : CoveredBy scale carrier boxes small_3160686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3160686_right_root small_3160686_right_fuel small_3160686_right_count small_3160686_right_encoded small_3160686_right_checked

theorem cover_3160686 : CoveredBy scale carrier boxes root_3160686 := by
  apply coveredBy_split_literal root_3160686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160691 small_3160686_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160691
  · exact small_3160686_right_covered
#print axioms cover_3160686

def root_3160685 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3160685 : CoveredBy scale carrier boxes root_3160685 := by
  apply coveredBy_split_literal root_3160685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160686 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1216.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160686
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1216.covered
#print axioms cover_3160685

def root_3160679 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160679_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3160679_left_fuel : Nat := 1
def small_3160679_left_count : Nat := 1
def small_3160679_left_encoded : String := "00000002"
theorem small_3160679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3160679_left_root small_3160679_left_fuel small_3160679_left_count small_3160679_left_encoded = true := by
  decide +kernel
theorem small_3160679_left_covered : CoveredBy scale carrier boxes small_3160679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3160679_left_root small_3160679_left_fuel small_3160679_left_count small_3160679_left_encoded small_3160679_left_checked

theorem cover_3160679 : CoveredBy scale carrier boxes root_3160679 := by
  apply coveredBy_split_literal root_3160679 small_3160679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160685 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3160679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160685
#print axioms cover_3160679

def root_3152443 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3152443 : CoveredBy scale carrier boxes root_3152443 := by
  apply coveredBy_split_literal root_3152443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3160679 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3160679
#print axioms cover_3152443

def root_3152438 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152438_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152438_right_fuel : Nat := 1
def small_3152438_right_count : Nat := 1
def small_3152438_right_encoded : String := "00000001"
theorem small_3152438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152438_right_root small_3152438_right_fuel small_3152438_right_count small_3152438_right_encoded = true := by
  decide +kernel
theorem small_3152438_right_covered : CoveredBy scale carrier boxes small_3152438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152438_right_root small_3152438_right_fuel small_3152438_right_count small_3152438_right_encoded small_3152438_right_checked

theorem cover_3152438 : CoveredBy scale carrier boxes root_3152438 := by
  apply coveredBy_split_literal root_3152438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152443 small_3152438_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152443
  · exact small_3152438_right_covered
#print axioms cover_3152438

def root_3152437 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152437_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152437_right_fuel : Nat := 30
def small_3152437_right_count : Nat := 309
def small_3152437_right_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E8FF08A91301120700F608A9130500000009000000070000000012073CF60000000008A91305120700FA08A91307120700FC050000F8135D810300000009000000010000000900000003000000090000000212073CFA0000000208A91307120700FC050000F800000007135D45030000000100000007000000030000000700000004115224FF0000000408A91301120700F608A913050000000A12073CFA0000000208A91307120700FC08A912FF0000000712070108000000040000000A000000030000000A0000000012073CF60000000008A91305120700FA08A91307120700FC08A912FF0000000A12070108000000040000000A000000030000000A0000000212073CFA0000000208A91307120700FC08A912FF12073D08050000F8135D81030CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C050F34D0FA0000000A000000020F350CFA000000020000000700000001135D4503000000010CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC0CFD9BFF000000070F34D10800000004000000070000000300000007000000041207010800000004050000F8135D81030CFD9C010000000A0F350CF6000000000CFD9C050000000A0F350CFA0000000204548A07138670FC045489FF1386AD080C9A86F600000007000000070000000413867108000000040C9A86F60000000A0F875101000000000C9A86FA0000000A0F8751050000000200000007000000030000000A00000001135D4503000000010CFD9C010000000A0F350CF6000000000CFD9C050000000A0F350CFA0000000204548A07138670FC045489FF0000000A13867108000000040000000A000000030000000A0000000312073CFC0000000308A912FF12073D08050000F8135D81030CFD9C01000000070F350CF6000000000CFD9C050000000A0F350CFA000000020000000700000001135D4503000000010CFD9C010000000A0000000A000000041207010800000004050000F80000000A0000000A000000031151E907000000030A0001081151E8FF0000000700000004115224FF0000000408A913010000000A12073CF60000000008A913050000000A12073CFA0000000208A912FF0000000712070108000000040000000A000000021151E905000000020A0000FC115225070A0001081151E8FF0000000700000004115224FF0000000408A91301120700F6000000070000000012073CF60000000008A91307120700FC08A912FF000000071207010800000004050000F8135D8103050000FA135D81050CFD9C01000000070F350CF60000000004548A070000000700000007000000020000000700000001135D450300000001050000FA135D81050CFD9C01000000070F350CF60000000004548A07138670FC045489FF00000007138671080000000400000007000000030000000700000002000000070000000312073CFC0000000308A912FF000000071207010800000004050000F800000007135D45030000000100000007000000031151E907000000030A0001081151E8FF0000000900000004115224FF0000000408A91301120700F6000000070000000012073CF60000000008A912FF12073D08000000070000000400000005"
theorem small_3152437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152437_right_root small_3152437_right_fuel small_3152437_right_count small_3152437_right_encoded = true := by
  decide +kernel
theorem small_3152437_right_covered : CoveredBy scale carrier boxes small_3152437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152437_right_root small_3152437_right_fuel small_3152437_right_count small_3152437_right_encoded small_3152437_right_checked

theorem cover_3152437 : CoveredBy scale carrier boxes root_3152437 := by
  apply coveredBy_split_literal root_3152437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152438 small_3152437_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152438
  · exact small_3152437_right_covered
#print axioms cover_3152437

def root_3152432 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152432_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3152432_right_fuel : Nat := 1
def small_3152432_right_count : Nat := 1
def small_3152432_right_encoded : String := "00000000"
theorem small_3152432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3152432_right_root small_3152432_right_fuel small_3152432_right_count small_3152432_right_encoded = true := by
  decide +kernel
theorem small_3152432_right_covered : CoveredBy scale carrier boxes small_3152432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3152432_right_root small_3152432_right_fuel small_3152432_right_count small_3152432_right_encoded small_3152432_right_checked

theorem cover_3152432 : CoveredBy scale carrier boxes root_3152432 := by
  apply coveredBy_split_literal root_3152432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3152437 small_3152432_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3152437
  · exact small_3152432_right_covered
#print axioms cover_3152432

def root_3167901 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3167901 : CoveredBy scale carrier boxes root_3167901 := by
  apply coveredBy_split_literal root_3167901 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1217.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1218.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1217.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1218.covered
#print axioms cover_3167901

def root_3167895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167895_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167895_left_fuel : Nat := 1
def small_3167895_left_count : Nat := 1
def small_3167895_left_encoded : String := "00000004"
theorem small_3167895_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167895_left_root small_3167895_left_fuel small_3167895_left_count small_3167895_left_encoded = true := by
  decide +kernel
theorem small_3167895_left_covered : CoveredBy scale carrier boxes small_3167895_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167895_left_root small_3167895_left_fuel small_3167895_left_count small_3167895_left_encoded small_3167895_left_checked

theorem cover_3167895 : CoveredBy scale carrier boxes root_3167895 := by
  apply coveredBy_split_literal root_3167895 small_3167895_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167901 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3167895_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167901
#print axioms cover_3167895

def root_3167801 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167801_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167801_left_fuel : Nat := 14
def small_3167801_left_count : Nat := 45
def small_3167801_left_encoded : String := "1151E8FF08A91303120700F808A9130500000009000000090000000112073CF80000000108A91305120700FA08A91307120700FC050000F6135D810100000009000000000000000600000003000000090000000212073CFA0000000208A91307120700FC050000F6135D81010500010800000006135D80FF000000040CFD9C030F34D0F800000006000000010000000600000000000000060000000312073CFC00000003050000F6000000090000000900000004"
theorem small_3167801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167801_left_root small_3167801_left_fuel small_3167801_left_count small_3167801_left_encoded = true := by
  decide +kernel
theorem small_3167801_left_covered : CoveredBy scale carrier boxes small_3167801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167801_left_root small_3167801_left_fuel small_3167801_left_count small_3167801_left_encoded small_3167801_left_checked

theorem cover_3167801 : CoveredBy scale carrier boxes root_3167801 := by
  apply coveredBy_split_literal root_3167801 small_3167801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167895 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3167801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167895
#print axioms cover_3167801

def root_3167796 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167796_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167796_right_fuel : Nat := 1
def small_3167796_right_count : Nat := 1
def small_3167796_right_encoded : String := "00000003"
theorem small_3167796_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167796_right_root small_3167796_right_fuel small_3167796_right_count small_3167796_right_encoded = true := by
  decide +kernel
theorem small_3167796_right_covered : CoveredBy scale carrier boxes small_3167796_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167796_right_root small_3167796_right_fuel small_3167796_right_count small_3167796_right_encoded small_3167796_right_checked

theorem cover_3167796 : CoveredBy scale carrier boxes root_3167796 := by
  apply coveredBy_split_literal root_3167796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167801 small_3167796_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167801
  · exact small_3167796_right_covered
#print axioms cover_3167796

def root_3167795 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167795_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167795_right_fuel : Nat := 20
def small_3167795_right_count : Nat := 67
def small_3167795_right_encoded : String := "1151E907000000030A0001081151E8FF0000000900000004115224FF0000000408A91303120700F808A913050000000912073CFA0000000208A912FF000000091207010800000004050000F6135D8101050000FC135D810704548A03000000090000000900000003135D45070000000304548A03138670F80CFD9C05000000090F350CFA00000002045489FF00000009138671080000000400000009000000011386ACF8000000010000000900000000000000090000000112073CF80000000108A91305120700FA000000090000000212073CFA0000000208A912FF000000091207010800000004050000F6135D8101050000FC00000009135D450700000003000000090000000000000009"
theorem small_3167795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167795_right_root small_3167795_right_fuel small_3167795_right_count small_3167795_right_encoded = true := by
  decide +kernel
theorem small_3167795_right_covered : CoveredBy scale carrier boxes small_3167795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167795_right_root small_3167795_right_fuel small_3167795_right_count small_3167795_right_encoded small_3167795_right_checked

theorem cover_3167795 : CoveredBy scale carrier boxes root_3167795 := by
  apply coveredBy_split_literal root_3167795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167796 small_3167795_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167796
  · exact small_3167795_right_covered
#print axioms cover_3167795

def root_3167790 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167790_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3167790_right_fuel : Nat := 1
def small_3167790_right_count : Nat := 1
def small_3167790_right_encoded : String := "00000002"
theorem small_3167790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3167790_right_root small_3167790_right_fuel small_3167790_right_count small_3167790_right_encoded = true := by
  decide +kernel
theorem small_3167790_right_covered : CoveredBy scale carrier boxes small_3167790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3167790_right_root small_3167790_right_fuel small_3167790_right_count small_3167790_right_encoded small_3167790_right_checked

theorem cover_3167790 : CoveredBy scale carrier boxes root_3167790 := by
  apply coveredBy_split_literal root_3167790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3167795 small_3167790_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3167795
  · exact small_3167790_right_covered
#print axioms cover_3167790

def root_3174975 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3174975 : CoveredBy scale carrier boxes root_3174975 := by
  apply coveredBy_split_literal root_3174975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1219.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1220.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1219.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1220.covered
#print axioms cover_3174975

def root_3174970 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174970_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174970_right_fuel : Nat := 1
def small_3174970_right_count : Nat := 1
def small_3174970_right_encoded : String := "00000002"
theorem small_3174970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174970_right_root small_3174970_right_fuel small_3174970_right_count small_3174970_right_encoded = true := by
  decide +kernel
theorem small_3174970_right_covered : CoveredBy scale carrier boxes small_3174970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174970_right_root small_3174970_right_fuel small_3174970_right_count small_3174970_right_encoded small_3174970_right_checked

theorem cover_3174970 : CoveredBy scale carrier boxes root_3174970 := by
  apply coveredBy_split_literal root_3174970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3174975 small_3174970_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3174975
  · exact small_3174970_right_covered
#print axioms cover_3174970

def root_3174969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174969_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174969_right_fuel : Nat := 23
def small_3174969_right_count : Nat := 217
def small_3174969_right_encoded : String := "128A410500000002067ECE8312EA58F8067ECE8712EA58FC022A457F13E2010808C000F60000000811FBE901000000000000000A0000000413E1C5080000000408C000F611FC2501064000FA12FFAD050569AC430000000A134110F8000000010569AC470000000A134110FC000000030115233F000000070000000A000000020000000A000000000000000A0000000312EA94FC00000003022A457F13E2010808C000F60000000811FBE90100000000000000080000000413E1C5080000000408C000F611FC2501064000FA12FFAD050569AC431340D4F80793F0C7000000080000000800000001134110F8000000010793F0C7128220FC0115233F0000000813F8590800000004096000F60000000811AA81010000000006E000FA12C8210505F43D63000000080000000500000002000000080000000312825CFC000000030115233F00000008000000050000000212FF710500000002000000080000000011FBE90100000000064000FA12FFAD050569AC430000000A134110F8000000010793F0C70000000A12825CFC000000030115233F13F89508082000F60000000812465D01000000000000000800000004000000050000000212FF7105000000020000000A0000000112EA94F800000001067ECE8712EA58FC022A457F13E2010808C000F600000007000000070000000413E1C5080000000408C000F611FC2501000000070000000011FBE90100000000064000FA12FFAD050793F0C30000000A12825CF8000000010569AC4700000007000000070000000212FF7105000000020000000A0000000312EA94FC00000003022A457F13E2010808C000F60000000711FBE90100000000064000FA12FFAD050793F0C3128220F80793F0C70000000712825CFC00000003033F67BF0000000700000007000000010000000700000002000000070000000413E1C5080000000408C000F611FC2501064000FA12FFAD050793F0C3128220F80793F0C70000000700000005000000010000000500000002000000070000000011FBE90100000000064000FA12FFAD050793F0C3128220F80793F0C7128220FC0115233F13F89508082000F60000000712465D01000000000000000A0000000400000005000000030000000500000001000000050000000212FF7105000000020793F0C3128220F80793F0C700000007000000050000000100000005"
theorem small_3174969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174969_right_root small_3174969_right_fuel small_3174969_right_count small_3174969_right_encoded = true := by
  decide +kernel
theorem small_3174969_right_covered : CoveredBy scale carrier boxes small_3174969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174969_right_root small_3174969_right_fuel small_3174969_right_count small_3174969_right_encoded small_3174969_right_checked

theorem cover_3174969 : CoveredBy scale carrier boxes root_3174969 := by
  apply coveredBy_split_literal root_3174969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3174970 small_3174969_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3174970
  · exact small_3174969_right_covered
#print axioms cover_3174969

def root_3174964 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174964_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3174964_right_fuel : Nat := 1
def small_3174964_right_count : Nat := 1
def small_3174964_right_encoded : String := "00000000"
theorem small_3174964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3174964_right_root small_3174964_right_fuel small_3174964_right_count small_3174964_right_encoded = true := by
  decide +kernel
theorem small_3174964_right_covered : CoveredBy scale carrier boxes small_3174964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3174964_right_root small_3174964_right_fuel small_3174964_right_count small_3174964_right_encoded small_3174964_right_checked

theorem cover_3174964 : CoveredBy scale carrier boxes root_3174964 := by
  apply coveredBy_split_literal root_3174964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.root_3174969 small_3174964_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074.cover_3174969
  · exact small_3174964_right_covered
#print axioms cover_3174964

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0074
