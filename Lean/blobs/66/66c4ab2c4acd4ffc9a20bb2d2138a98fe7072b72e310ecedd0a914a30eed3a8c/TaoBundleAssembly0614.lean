import TaoBundleAssembly0613
import TaoBundleChunkBatch0839
import TaoBundleChunkBatch0840
import TaoBundleChunkBatch0841
import TaoBundleChunkBatch0842
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614
def root_8973822 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973822_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973822_left_fuel : Nat := 36
def small_8973822_left_count : Nat := 339
def small_8973822_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A9130112070100000000000000000812073D0008A91303120700F808A912FD00000008120700FC0500010400000008135D810505000108135D450900000004000000080000000800000002000000030000000112073CF80000000100000008000000001152250908A91301120701000000000008A91303120700F808A912FD00000008120700FC08A9130912070108000000040000000800000008000000030000000112073CF80000000108A912FD12073CFC00000003000000080000000812073D0008A91303120700F808A912FD12073CFC0000000308A91309120701080000000405000104135D4505000000020CFD9C010000000800000006135D81050CFD9C010F34D10000000000000000060F350D0004548A03138670F80CFD9BFD000000060F34D0FC04548A090000000500000008000000030000000100000008000000000000000200000008120700FC08A91309120701080000000405000104135D4505000000020CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD00000006138670FC04548A09000000060000000800000003000000011386ACF800000001045489FD000000060000000800000000135D81050CFD9C010F34D1000000000004548A03138670F8045489FD00000006138670FC04548A0900000006000000080000000300000001000000060F350D0004548A03138670F8045489FD1386ACFC0000000304548A09000000061386AD080C9A87000F87510100000000000000080000000800000004138670FC04548A0913867108000000040C9A87000F8751010000000007800104128A41050000000200000006128A7D05022A45830000000513E200F800000001022A457D0000000513E1C4FC022A45890000000513E201080B4D440000000009000000060000000400000003000000020F878D010780010400000006128A7D05022A4583000000050000000600000002000000001386AD080C9A87000F8751010000000007800104128A410500000002022A45830000000700000008128A7D05022A458313E1C4F8022A457D0000000913E1C4FC067ECE8912EA5908000000040B4D44001080110100000000000000070000000700000007000000030000000100000008000000020F878D0100000008000000000000000400000003000000011386ACF800000001045489FD1386ACFC0000000304548A090000000600000008138670FC04548A0913867108000000040C9A87000F8751010000000000000006000000060000000800000003000000000000000212073D080500010400000008135D81050CFD9C010F34D10000000000000000080F350D0004548A03138670F8045489FD00000008138670FC0CFD9C090F34D108000000040000000800000008000000030000000100000008000000000000000200000004000000030000000112073CF80000000108A912FD12073CFC0000000308A9130912070108000000040500010400000006135D8105000000080000000200000008120700FC08A91309120701080000000405000104135D4505000000020CFD9C010000000800000008135D81050CFD9C010F34D10000000000000000060F350D000CFD9C030F34D0F8045489FD000000060000000800000001000000080000000000000002000000080000000300000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000008A913030000000800000006000000081152250908A91301120701000000000008A91303000000080000000612073D0008A91303120700F8000000080000000100000008000000000000000400000003"
theorem small_8973822_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973822_left_root small_8973822_left_fuel small_8973822_left_count small_8973822_left_encoded = true := by
  decide +kernel
theorem small_8973822_left_covered : CoveredBy scale carrier boxes small_8973822_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973822_left_root small_8973822_left_fuel small_8973822_left_count small_8973822_left_encoded small_8973822_left_checked

theorem cover_8973822 : CoveredBy scale carrier boxes root_8973822 := by
  apply coveredBy_split_literal root_8973822 small_8973822_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8974534 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8973822_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8974534
#print axioms cover_8973822

def root_8973817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973817_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973817_right_fuel : Nat := 1
def small_8973817_right_count : Nat := 1
def small_8973817_right_encoded : String := "00000001"
theorem small_8973817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973817_right_root small_8973817_right_fuel small_8973817_right_count small_8973817_right_encoded = true := by
  decide +kernel
theorem small_8973817_right_covered : CoveredBy scale carrier boxes small_8973817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973817_right_root small_8973817_right_fuel small_8973817_right_count small_8973817_right_encoded small_8973817_right_checked

theorem cover_8973817 : CoveredBy scale carrier boxes root_8973817 := by
  apply coveredBy_split_literal root_8973817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8973822 small_8973817_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8973822
  · exact small_8973817_right_covered
#print axioms cover_8973817

def root_8973816 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973816_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973816_right_fuel : Nat := 20
def small_8973816_right_count : Nat := 193
def small_8973816_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000081152250908A91301120701000000000008A912FD00000006120700FC000000080000000312073D0008A912FD12073CFC0000000308A913090000000612073D080000000800000004120700FC08A91309120701080000000400000008000000080000000300000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000000000006000000081152250908A9130112070100000000000000000612073D0008A913090000000612073D08050000F8000000080000000A00000004000000000000000400000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A913051207010400000002000000080000000812073D0008A91305120701040000000208A912FD00000008120700FC050000F8135D810305000108135D4509000000040CFD9C01000000080F350D0000000008000000000000000800000001000000080000000312073D040000000800000002000000001152250908A91301120701000000000008A913050000000812073D04000000080000000212073D0008A91305120701040000000208A912FD00000008120700FC08A91309120701080000000400000008000000080000000312073D0408A912FD12073CFC0000000308A9130912070108000000040000000800000008120700FC08A913091207010800000004050000F8135D81030CFD9C01000000080000000800000001135D4503000000010000000800000008000000030000000200000000000000041151E8FD0A0001081151E9090000000408A91301120701000000000008A913051207010400000002050000F8135D810300000008000000010000000812073D04050000F800000007000000080000000212073D0008A9130512070104000000020000000800000008000000001152250908A91301120701000000000008A913051207010400000002000000070000000700000008000000040000000300000002"
theorem small_8973816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973816_right_root small_8973816_right_fuel small_8973816_right_count small_8973816_right_encoded = true := by
  decide +kernel
theorem small_8973816_right_covered : CoveredBy scale carrier boxes small_8973816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973816_right_root small_8973816_right_fuel small_8973816_right_count small_8973816_right_encoded small_8973816_right_checked

theorem cover_8973816 : CoveredBy scale carrier boxes root_8973816 := by
  apply coveredBy_split_literal root_8973816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8973817 small_8973816_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8973817
  · exact small_8973816_right_covered
#print axioms cover_8973816

def root_8973811 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973811_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8973811_right_fuel : Nat := 1
def small_8973811_right_count : Nat := 1
def small_8973811_right_encoded : String := "00000000"
theorem small_8973811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8973811_right_root small_8973811_right_fuel small_8973811_right_count small_8973811_right_encoded = true := by
  decide +kernel
theorem small_8973811_right_covered : CoveredBy scale carrier boxes small_8973811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8973811_right_root small_8973811_right_fuel small_8973811_right_count small_8973811_right_encoded small_8973811_right_checked

theorem cover_8973811 : CoveredBy scale carrier boxes root_8973811 := by
  apply coveredBy_split_literal root_8973811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8973816 small_8973811_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8973816
  · exact small_8973811_right_covered
#print axioms cover_8973811

def root_8970631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8970631 : CoveredBy scale carrier boxes root_8970631 := by
  apply coveredBy_split_literal root_8970631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8970632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8973811 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8970632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8973811
#print axioms cover_8970631

def root_8968299 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8968299 : CoveredBy scale carrier boxes root_8968299 := by
  apply coveredBy_split_literal root_8968299 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3354.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8970631 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3354.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8970631
#print axioms cover_8968299

def root_8928761 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8928761 : CoveredBy scale carrier boxes root_8928761 := by
  apply coveredBy_split_literal root_8928761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8928762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8968299 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8928762
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8968299
#print axioms cover_8928761

def root_8981126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981126_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981126_right_fuel : Nat := 25
def small_8981126_right_count : Nat := 217
def small_8981126_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0000FE1152250908A9130112070100000000000000000900000009000000041151E9090000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0000FE1152250908A91301120701000000000008A91305120701040000000208A91307120700FC08A91309000000060000000600000003000000070000000912073D0008A91305120701040000000208A91307120700FC08A91309120700FE050000F800000006000000060000000412073CFE00000004050000F8135D81030CFD9C010F34D10000000000000000070F350D0004548A05138671040000000204548A07138670FC0CFD9C0900000007000000090000000300000007000000070000000000000001135D4503000000010CFD9C01000000090F350D0004548A05138671040000000204548A07138670FC0CFD9C09000000060000000600000003000000091386AD040000000900000002000000000000000312073CFC0000000308A91309120700FE00000009000000040000000912073D0408A91307120700FC08A91309120700FE000000060000000412073CFE00000004050000F8135D81030CFD9C01000000090F350D000CFD9C0500000009000000050000000000000001135D4503000000010CFD9C0100000006000000050000000312073CFC0000000308A9130900000007000000050000000200000000000000041151E9090000000408A91301120701000000000008A91305120701040000000208A91307000000070000000712073D04000000090000000212073D0008A91305120701040000000208A91307120700FC050000F8135D8103050000FE135D81090CFD9C01000000070F350D0004548A05138671040000000204548A07138670FC0C9A870000000007000000050000000300000005000000050000000000000004135D4509000000040CFD9C010F34D10000000000000000070000000500000001135D450300000001050000FE135D81090CFD9C010F34D10000000000000000090000000500000004135D4509000000040000000500000003000000050000000500000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000712073D000000000900000000000000041151E909000000040000000500000002"
theorem small_8981126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8981126_right_root small_8981126_right_fuel small_8981126_right_count small_8981126_right_encoded = true := by
  decide +kernel
theorem small_8981126_right_covered : CoveredBy scale carrier boxes small_8981126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8981126_right_root small_8981126_right_fuel small_8981126_right_count small_8981126_right_encoded small_8981126_right_checked

theorem cover_8981126 : CoveredBy scale carrier boxes root_8981126 := by
  apply coveredBy_split_literal root_8981126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3359.root small_8981126_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3359.covered
  · exact small_8981126_right_covered
#print axioms cover_8981126

def root_8981121 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981121_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8981121_right_fuel : Nat := 1
def small_8981121_right_count : Nat := 1
def small_8981121_right_encoded : String := "00000000"
theorem small_8981121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8981121_right_root small_8981121_right_fuel small_8981121_right_count small_8981121_right_encoded = true := by
  decide +kernel
theorem small_8981121_right_covered : CoveredBy scale carrier boxes small_8981121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8981121_right_root small_8981121_right_fuel small_8981121_right_count small_8981121_right_encoded small_8981121_right_checked

theorem cover_8981121 : CoveredBy scale carrier boxes root_8981121 := by
  apply coveredBy_split_literal root_8981121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8981126 small_8981121_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8981126
  · exact small_8981121_right_covered
#print axioms cover_8981121

def root_8979727 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8979727 : CoveredBy scale carrier boxes root_8979727 := by
  apply coveredBy_split_literal root_8979727 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3358.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8981121 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3358.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8981121
#print axioms cover_8979727

def root_8978393 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8978393 : CoveredBy scale carrier boxes root_8978393 := by
  apply coveredBy_split_literal root_8978393 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3357.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8979727 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3357.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8979727
#print axioms cover_8978393

def root_8984482 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8984482 : CoveredBy scale carrier boxes root_8984482 := by
  apply coveredBy_split_literal root_8984482 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3360.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3361.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3360.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3361.covered
#print axioms cover_8984482

def root_8984477 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984477_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984477_right_fuel : Nat := 1
def small_8984477_right_count : Nat := 1
def small_8984477_right_encoded : String := "00000001"
theorem small_8984477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984477_right_root small_8984477_right_fuel small_8984477_right_count small_8984477_right_encoded = true := by
  decide +kernel
theorem small_8984477_right_covered : CoveredBy scale carrier boxes small_8984477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984477_right_root small_8984477_right_fuel small_8984477_right_count small_8984477_right_encoded small_8984477_right_checked

theorem cover_8984477 : CoveredBy scale carrier boxes root_8984477 := by
  apply coveredBy_split_literal root_8984477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8984482 small_8984477_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8984482
  · exact small_8984477_right_covered
#print axioms cover_8984477

def root_8984476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984476_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984476_right_fuel : Nat := 23
def small_8984476_right_count : Nat := 211
def small_8984476_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF08A913070000000612073CFC0000000305000100000000070000000600000004115224FF0000000408A91307120700FC08A912FF12073D0805000100000000070000000600000004120701080000000405000100135D450100000000050000F8135D810305000104135D450500000002000000070000000700000001135D45030000000100000005135D8101050000F8135D810305000104135D4505000000020000000A0000000A00000001135D45030000000105000104135D4505000000020000000500000005000000000000000312073CFC0000000308A912FF12073D0805000100135D450100000000050000F8135D810305000104135D4505000000020CFD9C070000000700000005135D81050CFD9C0700000007000000050000000200000001135D45030000000100000007135D8101050000F8135D810305000104135D4505000000020CFD9C070000000600000005135D81050CFD9C070F34D0FC0CFD9BFF000000060000000500000003000000050000000200000001135D45030000000105000104135D4505000000020CFD9C070F34D0FC000000060000000300000005135D81050CFD9C07000000070000000500000002000000000000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0001081151E8FF0000000700000004115224FF0000000408A9130512070104000000020000000712073D0408A91307120700FC08A912FF000000071207010800000004000000070000000312073CFC0000000308A912FF12073D080500010000000007135D8101050000F8135D81030CFD9C05000000070F350D040CFD9C07000000070F350CFC000000030CFD9BFF00000007000000050000000200000001135D450300000001000000070000000000000004120701080000000405000100000000070000000500000002000000031151E907000000030A0001081151E8FF08A913050000000712073D040500010000000007000000070000000200000004115224FF0000000408A9130512070104000000020000000712073D0408A912FF12073D0805000100135D450100000000000000050000000500000004000000050000000200000002"
theorem small_8984476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984476_right_root small_8984476_right_fuel small_8984476_right_count small_8984476_right_encoded = true := by
  decide +kernel
theorem small_8984476_right_covered : CoveredBy scale carrier boxes small_8984476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984476_right_root small_8984476_right_fuel small_8984476_right_count small_8984476_right_encoded small_8984476_right_checked

theorem cover_8984476 : CoveredBy scale carrier boxes root_8984476 := by
  apply coveredBy_split_literal root_8984476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8984477 small_8984476_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8984477
  · exact small_8984476_right_covered
#print axioms cover_8984476

def root_8984470 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984470_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8984470_left_fuel : Nat := 1
def small_8984470_left_count : Nat := 1
def small_8984470_left_encoded : String := "00000000"
theorem small_8984470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8984470_left_root small_8984470_left_fuel small_8984470_left_count small_8984470_left_encoded = true := by
  decide +kernel
theorem small_8984470_left_covered : CoveredBy scale carrier boxes small_8984470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8984470_left_root small_8984470_left_fuel small_8984470_left_count small_8984470_left_encoded small_8984470_left_checked

theorem cover_8984470 : CoveredBy scale carrier boxes root_8984470 := by
  apply coveredBy_split_literal root_8984470 small_8984470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8984476 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8984470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8984476
#print axioms cover_8984470

def root_8991748 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8991748 : CoveredBy scale carrier boxes root_8991748 := by
  apply coveredBy_split_literal root_8991748 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3364.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3365.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3364.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3365.covered
#print axioms cover_8991748

def root_8991742 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8991742_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8991742_left_fuel : Nat := 1
def small_8991742_left_count : Nat := 1
def small_8991742_left_encoded : String := "00000001"
theorem small_8991742_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8991742_left_root small_8991742_left_fuel small_8991742_left_count small_8991742_left_encoded = true := by
  decide +kernel
theorem small_8991742_left_covered : CoveredBy scale carrier boxes small_8991742_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8991742_left_root small_8991742_left_fuel small_8991742_left_count small_8991742_left_encoded small_8991742_left_checked

theorem cover_8991742 : CoveredBy scale carrier boxes root_8991742 := by
  apply coveredBy_split_literal root_8991742 small_8991742_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8991748 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8991742_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8991748
#print axioms cover_8991742

def root_8990226 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8990226 : CoveredBy scale carrier boxes root_8990226 := by
  apply coveredBy_split_literal root_8990226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3363.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8991742 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3363.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8991742
#print axioms cover_8990226

def root_8990220 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8990220_left_fuel : Nat := 1
def small_8990220_left_count : Nat := 1
def small_8990220_left_encoded : String := "00000000"
theorem small_8990220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8990220_left_root small_8990220_left_fuel small_8990220_left_count small_8990220_left_encoded = true := by
  decide +kernel
theorem small_8990220_left_covered : CoveredBy scale carrier boxes small_8990220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8990220_left_root small_8990220_left_fuel small_8990220_left_count small_8990220_left_encoded small_8990220_left_checked

theorem cover_8990220 : CoveredBy scale carrier boxes root_8990220 := by
  apply coveredBy_split_literal root_8990220 small_8990220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_8990226 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8990220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_8990226
#print axioms cover_8990220

def root_9000536 : ZRayBox := fun j => (#[⟨⟨(12755968), (14107392)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9000536 : CoveredBy scale carrier boxes root_9000536 := by
  apply coveredBy_split_literal root_9000536 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3366.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3367.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3366.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3367.covered
#print axioms cover_9000536

def root_9000531 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000531_right_root : ZRayBox := fun j => (#[⟨⟨(14107392), (15123200)⟩, ⟨(9081120), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000531_right_fuel : Nat := 1
def small_9000531_right_count : Nat := 1
def small_9000531_right_encoded : String := "00000000"
theorem small_9000531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000531_right_root small_9000531_right_fuel small_9000531_right_count small_9000531_right_encoded = true := by
  decide +kernel
theorem small_9000531_right_covered : CoveredBy scale carrier boxes small_9000531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000531_right_root small_9000531_right_fuel small_9000531_right_count small_9000531_right_encoded small_9000531_right_checked

theorem cover_9000531 : CoveredBy scale carrier boxes root_9000531 := by
  apply coveredBy_split_literal root_9000531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_9000536 small_9000531_right_root coord0 false (14107392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_9000536
  · exact small_9000531_right_covered
#print axioms cover_9000531

def root_9000069 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000069_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (9081120)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000069_left_fuel : Nat := 18
def small_9000069_left_count : Nat := 213
def small_9000069_left_encoded : String := "10D1010000000000067ECE8312EA58F80AD3578510D1010400000002067ECE8712EA58FC0000000A000000030000000A10D13D04067ECE8712EA58FC022A457F13E2010809BE354111774100000000000569AC431340D4F80000000500000001134110F8000000010BE879C50000000A0000000611777D000569AC431340D4F80BE879C5000000051011AD04000000050000000200000001134110F8000000010BE879C510117104000000020000000A1011AD040000000600000002000000000000000413E1C5080000000409BE35410000000A11777D000000000A000000000000000312EA94FC00000003022A457F13E2010809BE35410000000911777D000569AC4300000009134110F80000000100000009000000000000000413E1C5080000000409BE35410000000911777D000569AC43000000090000000A00000000000000020000000112EA94F8000000010AD3578510D1010400000002067ECE8712EA58FC0000000A0000000312EA94FC00000003022A457F13E2010809BE35410000000A11777D000793F0C30000000A0000000A00000000000000040000000A10D13D04067ECE8712EA58FC022A457F13E2010809BE354111774100000000000793F0C3128220F800000006000000010000000611777D000793F0C3128220F80BE879C510117104000000020000000A000000060000000100000006000000000000000413E1C5080000000409BE35410000000811777D000793F0C3128220F80000000A0000000100000008000000000000000312EA94FC00000003022A457F13E2010809BE354111774100000000000793F0C30000000912825CF8000000010BE879C5000000090000000911777D000793F0C3128220F80BE879C510117104000000020793F0C7128220FC0000000A00000003000000091011AD0400000009000000020000000112825CF8000000010BE879C510117104000000020793F0C7128220FC0000000A0000000312825CFC00000003000000091011AD040793F0C7000000060000000900000002000000000000000413E1C5080000000409BE354111774100000000000000000A11777D000793F0C3128220F80BE879C50000000A1011AD0400000009000000020000000112825CF8000000010BE879C50000000A1011AD0400000008000000020000000000000002"
theorem small_9000069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000069_left_root small_9000069_left_fuel small_9000069_left_count small_9000069_left_encoded = true := by
  decide +kernel
theorem small_9000069_left_covered : CoveredBy scale carrier boxes small_9000069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000069_left_root small_9000069_left_fuel small_9000069_left_count small_9000069_left_encoded small_9000069_left_checked

theorem cover_9000069 : CoveredBy scale carrier boxes root_9000069 := by
  apply coveredBy_split_literal root_9000069 small_9000069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_9000531 coord0 true (9081120)
  · decide +kernel
  · decide +kernel
  · exact small_9000069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_9000531
#print axioms cover_9000069

def root_9000063 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000063_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9000063_left_fuel : Nat := 1
def small_9000063_left_count : Nat := 1
def small_9000063_left_encoded : String := "00000004"
theorem small_9000063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9000063_left_root small_9000063_left_fuel small_9000063_left_count small_9000063_left_encoded = true := by
  decide +kernel
theorem small_9000063_left_covered : CoveredBy scale carrier boxes small_9000063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9000063_left_root small_9000063_left_fuel small_9000063_left_count small_9000063_left_encoded small_9000063_left_checked

theorem cover_9000063 : CoveredBy scale carrier boxes root_9000063 := by
  apply coveredBy_split_literal root_9000063 small_9000063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.root_9000069 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9000063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614.cover_9000069
#print axioms cover_9000063

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0614
