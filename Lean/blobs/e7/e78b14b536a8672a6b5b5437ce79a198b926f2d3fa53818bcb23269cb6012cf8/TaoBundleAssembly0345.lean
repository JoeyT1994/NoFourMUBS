import TaoBundleAssembly0343
import TaoBundleAssembly0344
import TaoBundleChunkBatch0455
import TaoBundleChunkBatch0456
import TaoBundleChunkBatch0457
import TaoBundleChunkBatch0458
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345
def root_4857764 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4857764_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4857764_left_fuel : Nat := 27
def small_4857764_left_count : Nat := 437
def small_4857764_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120700F608A913030000000A12073D0208A912FD0000000A120700FC05000104135D4505000000020000000A0000000A00000003000000010000000012073CF60000000008A913030000000A12073D020000000A000000011152250908A91301120700F608A91303120701020000000108A912FD00000008120700FC000000080000000312073D0208A912FD12073CFC0000000308A9130912070108000000040000000812073D0805000104135D45050000000204548A01138670F60CFD9C03000000080F350D020CFD9BFD000000080F34D0FC000000080000000300000001000000001386ACF6000000000CFD9C030000000A0F350D020CFD9BFD0000000A0F34D0FC0000000A0000000300000001135D810504548A01138670F60CFD9C030000000A0F350D020000000A00000001000000000000000A0000000200000004120700FC08A9130912070108000000040000000812073D0805000104135D45050000000204548A01138670F600000008000000001386ACF6000000000CFD9C030F34D10200000001000000080F350D02045489FD1386ACFC000000030CFD9C09000000080000000A138670FC0CFD9C09000000080F350D080C9A87020F875103000000010C9A87080000000A0000000800000008000000040000000300000001135D810504548A01138670F60CFD9C03000000080F350D02045489FD00000008138670FC0CFD9C09000000080F350D080C9A87020F875103000000010C9A87080000000A0000000800000008000000040000000300000001000000001386ACF6000000000CFD9C030F34D10200000001000000080F350D02045489FD0000000A138670FC0CFD9C090F34D10800000004000000080F350D080000000A000000040000000300000001000000020000000400000003000000010000000012073CF60000000008A91303120701020000000108A912FD12073CFC0000000308A913091207010800000004000000080000000A120700FC08A913091207010800000004000000080000000A0000000312073D0208A912FD12073CFC0000000308A91309120701080000000405000104135D4505000000020CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C030F34D10200000001000000080F350D020CFD9BFD0000000A0F34D0FC0000000A0000000300000001135D81050CFD9C010F34D0F60CFD9C03000000080F350D020CFD9BFD000000080F34D0FC000000080000000300000001000000000F350CF6000000000CFD9C030000000A0F350D020000000A000000010000000212073D0805000104135D4505000000020CFD9C010000000A0000000A0000000A00000004120700FC08A91309120701080000000405000104135D4505000000020CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C030F34D10200000001000000080F350D02045489FD1386ACFC0000000304548A09000000080000000A138670FC04548A0900000008000000060000000300000001135D81050CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C030000000A0F350D02045489FD0000000A138670FC04548A091386710800000004000000060000000600000003000000010000000212073D0805000104135D4505000000020CFD9C010F34D0F60CFD9C030F34D102000000010000000A0F350D02045489FD0000000A138670FC0CFD9C090F34D1080000000400000008000000050000000300000001000000000F350CF6000000000CFD9C030000000A0F350D020000000A00000001135D81050CFD9C010F34D0F60CFD9C030000000A0F350D020000000A00000001000000000000000A00000002000000040000000300000001000000041151E8FD0A0001081151E9090000000408A913010000000A12073CF60000000008A913031207010200000001000000070000000A1152250908A91301120700F608A91303120701020000000108A91309000000080000000612073D0208A91309120701080000000405000104135D450500000002000000080000000912073D0805000104135D450500000002050000FC0000000A0000000A0000000A00000004000000010000000012073CF60000000008A91303120701020000000108A913091207010800000004000000060000000612073D0208A91309120701080000000405000104135D450500000002050000FC135D80FD000000030CFD9C010F34D0F600000006000000000F350CF6000000000000000A135D44FD0CFD9C010F34D0F600000006000000000F350CF6000000000000000A00000003135D8105050000FC0000000A000000060000000212073D080000000A00000004000000010000000400000003"
theorem small_4857764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4857764_left_root small_4857764_left_fuel small_4857764_left_count small_4857764_left_encoded = true := by
  decide +kernel
theorem small_4857764_left_covered : CoveredBy scale carrier boxes small_4857764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4857764_left_root small_4857764_left_fuel small_4857764_left_count small_4857764_left_encoded small_4857764_left_checked

theorem cover_4857764 : CoveredBy scale carrier boxes root_4857764 := by
  apply coveredBy_split_literal root_4857764 small_4857764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1819.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4857764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1819.covered
#print axioms cover_4857764

def root_4857759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4857759_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4857759_right_fuel : Nat := 1
def small_4857759_right_count : Nat := 1
def small_4857759_right_encoded : String := "00000001"
theorem small_4857759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4857759_right_root small_4857759_right_fuel small_4857759_right_count small_4857759_right_encoded = true := by
  decide +kernel
theorem small_4857759_right_covered : CoveredBy scale carrier boxes small_4857759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4857759_right_root small_4857759_right_fuel small_4857759_right_count small_4857759_right_encoded small_4857759_right_checked

theorem cover_4857759 : CoveredBy scale carrier boxes root_4857759 := by
  apply coveredBy_split_literal root_4857759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4857764 small_4857759_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4857764
  · exact small_4857759_right_covered
#print axioms cover_4857759

def root_4854989 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4854989 : CoveredBy scale carrier boxes root_4854989 := by
  apply coveredBy_split_literal root_4854989 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1818.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4857759 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1818.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4857759
#print axioms cover_4854989

def root_4854984 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4854984_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4854984_right_fuel : Nat := 1
def small_4854984_right_count : Nat := 1
def small_4854984_right_encoded : String := "00000000"
theorem small_4854984_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4854984_right_root small_4854984_right_fuel small_4854984_right_count small_4854984_right_encoded = true := by
  decide +kernel
theorem small_4854984_right_covered : CoveredBy scale carrier boxes small_4854984_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4854984_right_root small_4854984_right_fuel small_4854984_right_count small_4854984_right_encoded small_4854984_right_checked

theorem cover_4854984 : CoveredBy scale carrier boxes root_4854984 := by
  apply coveredBy_split_literal root_4854984 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4854989 small_4854984_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4854989
  · exact small_4854984_right_covered
#print axioms cover_4854984

def root_4854983 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4854983_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4854983_right_fuel : Nat := 22
def small_4854983_right_count : Nat := 375
def small_4854983_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD0000000A120700FC08A913091207010800000004050000F6135D810105000102135D45030000000105000104135D4505000000020000000A0000000A135D810305000104135D4505000000020000000A0000000A00000001000000000000000A0000000500000003000000041151E8FD0000000A00000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91305120701040000000208A912FD12073CFC0000000300000008120700FC050000F6135D810105000102135D450300000001000000080000000A00000000000000080000000312073D0408A912FD0000000A00000005000000021152250908A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000912073D08050000F600000009135D45010000000005000102000000080000000A00000004120700FC08A913091207010800000004050000F6000000060000000912073D08050000F6135D810105000102135D45030000000100000009135D810304548A05000000060000000A0000000100000000135D45010000000005000102135D45030000000104548A050000000600000009135D810304548A051386710400000002000000060000000500000001000000040000000312073D0408A912FD12073CFC0000000308A913090000000A12073D08050000F60000000A0000000A00000004120700FC08A913091207010800000004050000F6135D810105000102135D450300000001000000090000000A000000000000000A12073D08050000F6135D810105000102135D4503000000010CFD9C050F34D1040000000200000009000000050000000A00000000135D45010000000005000102135D4503000000010000000500000005000000040000000300000002000000041151E8FD0A0001080000000A115225090000000A000000040000000300000002115225030A0001041151E905000000020A0000FC115224FD000000030A0001081151E909000000040000000A1152250908A91303120701020000000108A912FD0000000A0000000A12073D0208A912FD0000000A120700FC08A913091207010800000004050000F6135D810105000104135D4505000000020CFD9C030000000A0F350D020000000A000000010000000A000000000000000A0000000A0000000300000001000000041151E8FD0A0001081151E9090000000408A913031207010200000001000000070000000A1152250908A91303120701020000000108A913091207010800000004050000F6135D81010000000A000000000000000A12073D08050000F6000000060000000A0000000412073D0208A9130912070108000000040000000A0000000A000000010000000400000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A913050000000712073D0408A912FD000000070000000A0000000212073D0208A91305120701040000000208A912FD000000070000000A12073D040000000A00000002000000011152250908A91303120701020000000108A9130512070104000000020000000A0000000A12073D0208A91305120701040000000208A912FD12073CFC0000000308A913090000000A12073D080000000A00000004120700FC08A913090000000A12073D08050000F6135D81010CFD9C030000000A0000000A00000000135D4501000000000000000A000000040000000312073D0408A912FD0000000A120700FC0000000A000000030000000200000001000000041151E8FD0A0001081151E9090000000408A9130312070102000000010000000712073D0208A913050000000712073D04050000F60000000A0000000800000002000000011152250908A91303120701020000000108A913050000000612073D0408A9130912070108000000040000000600000006000000020000000A00000004000000030000000200000001"
theorem small_4854983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4854983_right_root small_4854983_right_fuel small_4854983_right_count small_4854983_right_encoded = true := by
  decide +kernel
theorem small_4854983_right_covered : CoveredBy scale carrier boxes small_4854983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4854983_right_root small_4854983_right_fuel small_4854983_right_count small_4854983_right_encoded small_4854983_right_checked

theorem cover_4854983 : CoveredBy scale carrier boxes root_4854983 := by
  apply coveredBy_split_literal root_4854983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4854984 small_4854983_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4854984
  · exact small_4854983_right_covered
#print axioms cover_4854983

def root_4840473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4840473 : CoveredBy scale carrier boxes root_4840473 := by
  apply coveredBy_split_literal root_4840473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0344.root_4840474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4854983 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0344.cover_4840474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4854983
#print axioms cover_4840473

def root_4832827 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4832827 : CoveredBy scale carrier boxes root_4832827 := by
  apply coveredBy_split_literal root_4832827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.root_4832828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4840473 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0343.cover_4832828
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4840473
#print axioms cover_4832827

def root_4865457 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4865457_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4865457_right_fuel : Nat := 17
def small_4865457_right_count : Nat := 115
def small_4865457_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E9050000000200000005115225050A0000FC115225070A0000FE1152250908A9130512070104000000020000000A0000000A000000041151E9090000000400000005000000031151E907000000030000000500000002115225030A0001041151E905000000020A0000FC115225070A0000FE1152250908A9130312070102000000010000000900000009000000041151E9090000000400000005000000031151E9070000000300000005115225050A0000FC115225070A0000FE1152250908A91303120701020000000108A91305120701040000000208A913070000000A000000090000000912073D0208A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC0000000308A9130900000009000000050000000200000001000000041151E9090000000408A9130312070102000000010000000A12073D0208A9130512070104000000020000000A0000000500000001000000031151E907000000030A0000FE1152250908A91303120701020000000108A91305000000090000000912073D020000000900000001000000041151E90900000004000000050000000200000001"
theorem small_4865457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4865457_right_root small_4865457_right_fuel small_4865457_right_count small_4865457_right_encoded = true := by
  decide +kernel
theorem small_4865457_right_covered : CoveredBy scale carrier boxes small_4865457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4865457_right_root small_4865457_right_fuel small_4865457_right_count small_4865457_right_encoded small_4865457_right_checked

theorem cover_4865457 : CoveredBy scale carrier boxes root_4865457 := by
  apply coveredBy_split_literal root_4865457 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1821.root small_4865457_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1821.covered
  · exact small_4865457_right_covered
#print axioms cover_4865457

def root_4862731 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4862731 : CoveredBy scale carrier boxes root_4862731 := by
  apply coveredBy_split_literal root_4862731 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1820.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4865457 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1820.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4865457
#print axioms cover_4862731

def root_4868701 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4868701 : CoveredBy scale carrier boxes root_4868701 := by
  apply coveredBy_split_literal root_4868701 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1822.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1823.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1822.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1823.covered
#print axioms cover_4868701

def root_4872964 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4872964 : CoveredBy scale carrier boxes root_4872964 := by
  apply coveredBy_split_literal root_4872964 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1824.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1825.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1824.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1825.covered
#print axioms cover_4872964

def root_4872959 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872959_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872959_right_fuel : Nat := 1
def small_4872959_right_count : Nat := 1
def small_4872959_right_encoded : String := "00000003"
theorem small_4872959_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872959_right_root small_4872959_right_fuel small_4872959_right_count small_4872959_right_encoded = true := by
  decide +kernel
theorem small_4872959_right_covered : CoveredBy scale carrier boxes small_4872959_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872959_right_root small_4872959_right_fuel small_4872959_right_count small_4872959_right_encoded small_4872959_right_checked

theorem cover_4872959 : CoveredBy scale carrier boxes root_4872959 := by
  apply coveredBy_split_literal root_4872959 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872964 small_4872959_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872964
  · exact small_4872959_right_covered
#print axioms cover_4872959

def root_4872958 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872958_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872958_right_fuel : Nat := 11
def small_4872958_right_count : Nat := 31
def small_4872958_right_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A91301120700F608A91305120701040000000208A913090000000712073D0805000102000000070000000500000004000000070000000012073CF60000000008A91305120701040000000208A9130900000007000000050000000500000004"
theorem small_4872958_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872958_right_root small_4872958_right_fuel small_4872958_right_count small_4872958_right_encoded = true := by
  decide +kernel
theorem small_4872958_right_covered : CoveredBy scale carrier boxes small_4872958_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872958_right_root small_4872958_right_fuel small_4872958_right_count small_4872958_right_encoded small_4872958_right_checked

theorem cover_4872958 : CoveredBy scale carrier boxes root_4872958 := by
  apply coveredBy_split_literal root_4872958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872959 small_4872958_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872959
  · exact small_4872958_right_covered
#print axioms cover_4872958

def root_4872953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872953_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872953_right_fuel : Nat := 1
def small_4872953_right_count : Nat := 1
def small_4872953_right_encoded : String := "00000002"
theorem small_4872953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872953_right_root small_4872953_right_fuel small_4872953_right_count small_4872953_right_encoded = true := by
  decide +kernel
theorem small_4872953_right_covered : CoveredBy scale carrier boxes small_4872953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872953_right_root small_4872953_right_fuel small_4872953_right_count small_4872953_right_encoded small_4872953_right_checked

theorem cover_4872953 : CoveredBy scale carrier boxes root_4872953 := by
  apply coveredBy_split_literal root_4872953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872958 small_4872953_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872958
  · exact small_4872953_right_covered
#print axioms cover_4872953

def root_4872669 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872669_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872669_left_fuel : Nat := 22
def small_4872669_left_count : Nat := 135
def small_4872669_left_encoded : String := "1151E905000000020A0000FC115225070A0001081151E90900000004000000051152250908A91301120700F608A91307120700FC08A9130912070108000000040000000712073D0805000102135D45030000000105000104135D45050000000204548A010000000700000005135D810504548A01000000070000000500000002135D810305000104135D45050000000204548A01138670F604548A07138670FC0CFD9C09000000070000000500000003000000050000000000000005135D810504548A01138670F604548A07138670FC0CFD9C09000000070F350D0800000007000000040000000300000007000000001386ACF60000000004548A07138670FC0CFD9C090F34D10800000004000000070000000500000003000000050000000200000001000000040000000312073CFC0000000308A9130900000007000000050000000012073CF60000000008A91307120700FC08A91309120701080000000405000102135D45030000000105000104135D4505000000020CFD9C010000000700000005135D81050CFD9C01000000070000000500000002135D810305000104135D4505000000020CFD9C010F34D0F604548A07138670FC04548A09000000060000000500000003000000050000000000000005135D81050CFD9C010F34D0F600000007000000000F350CF60000000000000005000000020000000100000005000000030000000500000004000000031151E9070000000300000005"
theorem small_4872669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872669_left_root small_4872669_left_fuel small_4872669_left_count small_4872669_left_encoded = true := by
  decide +kernel
theorem small_4872669_left_covered : CoveredBy scale carrier boxes small_4872669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872669_left_root small_4872669_left_fuel small_4872669_left_count small_4872669_left_encoded small_4872669_left_checked

theorem cover_4872669 : CoveredBy scale carrier boxes root_4872669 := by
  apply coveredBy_split_literal root_4872669 small_4872669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872953 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4872669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872953
#print axioms cover_4872669

def root_4872663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872663_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4872663_left_fuel : Nat := 1
def small_4872663_left_count : Nat := 1
def small_4872663_left_encoded : String := "00000001"
theorem small_4872663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4872663_left_root small_4872663_left_fuel small_4872663_left_count small_4872663_left_encoded = true := by
  decide +kernel
theorem small_4872663_left_covered : CoveredBy scale carrier boxes small_4872663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4872663_left_root small_4872663_left_fuel small_4872663_left_count small_4872663_left_encoded small_4872663_left_checked

theorem cover_4872663 : CoveredBy scale carrier boxes root_4872663 := by
  apply coveredBy_split_literal root_4872663 small_4872663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4872669 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4872663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4872669
#print axioms cover_4872663

def root_4885160 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4885160_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4885160_left_fuel : Nat := 25
def small_4885160_left_count : Nat := 249
def small_4885160_left_encoded : String := "0F87510900000004022A458113E1C4F6022A458513E1C50400000002022A45870000000513E200FC000000030DE7CA020E5FD90300000001000000060000000613E20104022A458713E1C4FC0DE7CA020E5FD903000000010B4D44080000000510804D090000000500000004000000060000000313E200FC000000030DE7CA020E5FD903000000010000000600000006000000020000000013E200F600000000022A458513E1C50400000002022A458713E1C4FC0DE7CA020E5FD903000000010B4D44080000000510804D090000000500000004000000070000000313E200FC000000030DE7CA020E5FD903000000010B4D44081080110900000004033F67C10000000613BC30F60000000001152345000000060000000610804D09033F67C113BBF4F6011523450000000513F89504033F67C70000000500000006000000020000000013BC30F6000000000115234513F8590400000002033F67C713BBF4FC000000050000000313BC30FC000000030D4128820EFA110300000001000000080000000613F89504033F67C713BBF4FC0D4128820EFA1103000000010BF3E5881008ED0900000004000000061009290903C9F8E10000000500000009000000040EFA4D030BF3E588000000061009290903C9F8E1000000050000000700000004000000010000000313BC30FC000000030D4128820EFA1103000000010BF3E588000000061009290903C9F8E10000000613A36CF600000000019FB4650000000600000006000000040000000600000002000000040E6015030B4D44080000000610804D09033F67C10000000613BC30F600000000011523450000000713F89504033F67C7000000070000000600000002000000040000000113E20104022A458713E1C4FC0DE7CA020E5FD903000000010B4D44081080110900000004033F67C1000000060000000A10804D09033F67C113BBF4F6033F67C5000000050000000A000000000000000A000000040E6015030000000A000000010000000313E200FC000000030DE7CA020E5FD903000000010B4D440810801109000000040000000610804D09033F67C113BBF4F6033F67C513BBF5040000000200000006000000060000000013BC30F600000000033F67C513BBF50400000002033F67C713BBF4FC0D4128820EFA1103000000010BF3E5880000000A1009290903C9F8E10000000600000009000000040000000A0000000313BC30FC000000030D4128820EFA110300000001000000060000000613BC3104033F67C70000000A13BC30FC000000030D4128820EFA110300000001000000060000000600000002000000040E6015030B4D44080000000610804D09033F67C1000000060000000A000000040000000100000002"
theorem small_4885160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4885160_left_root small_4885160_left_fuel small_4885160_left_count small_4885160_left_encoded = true := by
  decide +kernel
theorem small_4885160_left_covered : CoveredBy scale carrier boxes small_4885160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4885160_left_root small_4885160_left_fuel small_4885160_left_count small_4885160_left_encoded small_4885160_left_checked

theorem cover_4885160 : CoveredBy scale carrier boxes root_4885160 := by
  apply coveredBy_split_literal root_4885160 small_4885160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1830.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4885160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1830.covered
#print axioms cover_4885160

def root_4885155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4885155_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4885155_right_fuel : Nat := 1
def small_4885155_right_count : Nat := 1
def small_4885155_right_encoded : String := "00000001"
theorem small_4885155_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4885155_right_root small_4885155_right_fuel small_4885155_right_count small_4885155_right_encoded = true := by
  decide +kernel
theorem small_4885155_right_covered : CoveredBy scale carrier boxes small_4885155_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4885155_right_root small_4885155_right_fuel small_4885155_right_count small_4885155_right_encoded small_4885155_right_checked

theorem cover_4885155 : CoveredBy scale carrier boxes root_4885155 := by
  apply coveredBy_split_literal root_4885155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4885160 small_4885155_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4885160
  · exact small_4885155_right_covered
#print axioms cover_4885155

def root_4883921 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4883921 : CoveredBy scale carrier boxes root_4883921 := by
  apply coveredBy_split_literal root_4883921 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1829.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4885155 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1829.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4885155
#print axioms cover_4883921

def root_4883916 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883916_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883916_right_fuel : Nat := 1
def small_4883916_right_count : Nat := 1
def small_4883916_right_encoded : String := "00000004"
theorem small_4883916_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4883916_right_root small_4883916_right_fuel small_4883916_right_count small_4883916_right_encoded = true := by
  decide +kernel
theorem small_4883916_right_covered : CoveredBy scale carrier boxes small_4883916_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4883916_right_root small_4883916_right_fuel small_4883916_right_count small_4883916_right_encoded small_4883916_right_checked

theorem cover_4883916 : CoveredBy scale carrier boxes root_4883916 := by
  apply coveredBy_split_literal root_4883916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4883921 small_4883916_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4883921
  · exact small_4883916_right_covered
#print axioms cover_4883916

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345
